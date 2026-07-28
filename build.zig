const std = @import("std");

pub fn build(b: *std.Build) void {
    // Add standard options for target and optimization mode.
    const target = b.standardTargetOptions(.{});
    // Do not set preferred_optimize_mode here. It replaces the -Doptimize option with -Drelease,
    // which breaks `make release` and every other caller that passes -Doptimize=ReleaseFast.
    const optimize = b.standardOptimizeOption(.{});

    // Build options for DuckDB Extension configuration
    const extension_name = b.option([]const u8, "extension-name", "Extension name (default: extension)") orelse "extension";
    const extension_api_version = b.option([]const u8, "api-version", "DuckDB Extension API version (default: v1.2.0)") orelse "v1.2.0";
    const extension_version = b.option([]const u8, "extension-version", "Extension version (default: v0.1.0)") orelse "v0.1.0";
    const platform = b.option([]const u8, "platform", "Target platform (e.g., linux_amd64, linux_arm64)") orelse detectPlatform(target);

    const duckdb_module = b.addModule("duckdb", .{
        .root_source_file = b.path("src/duckdb.zig"),
    });

    const root_module = b.createModule(.{
        .root_source_file = b.path("src/lib.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    root_module.addImport("duckdb", duckdb_module);

    // Add the C source file that handles DuckDB API integration
    root_module.addCSourceFile(.{
        .file = b.path("src/extension.c"),
        .flags = &.{"-std=c11"},
    });

    // Add include path for DuckDB headers
    root_module.addIncludePath(b.path("external/extension-template-c/duckdb_capi"));

    // Add C macro for extension name
    root_module.addCMacro("DUCKDB_EXTENSION_NAME", extension_name);
    root_module.addCMacro("DUCKDB_BUILD_LOADABLE_EXTENSION", "1");

    const lib = b.addLibrary(.{
        .name = extension_name,
        .root_module = root_module,
        .linkage = .dynamic,
    });

    const extension_filename = b.fmt("{s}.duckdb_extension", .{extension_name});
    lib.install_name = extension_filename;

    // Allow undefined symbols - they will be provided by DuckDB at runtime
    lib.linker_allow_shlib_undefined = true;

    // Install the library artifact
    const lib_install = b.addInstallArtifact(lib, .{});
    b.getInstallStep().dependOn(&lib_install.step);

    // Test configuration - use a separate test file that doesn't require DuckDB runtime
    const test_module = b.createModule(.{
        .root_source_file = b.path("src/lib_test.zig"),
        .target = target,
        .optimize = optimize,
    });

    const lib_unit_tests = b.addTest(.{
        .root_module = test_module,
    });

    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);

    // Clean step - removes build artifacts and cache
    const clean_step = b.step("clean", "Remove build artifacts and cache");
    const clean_cmd = b.addSystemCommand(&[_][]const u8{
        "rm",
        "-rf",
        "zig-out",
        ".zig-cache",
    });
    clean_step.dependOn(&clean_cmd.step);

    // Detect the library file extension based on target OS
    const lib_filename = getLibFilename(b, target, extension_name);
    // Windows DLLs go to bin/, other platforms go to lib/
    const os_tag = target.result.os.tag;
    const lib_path = if (os_tag == .windows)
        b.getInstallPath(.bin, lib_filename)
    else
        b.getInstallPath(.lib, lib_filename);

    // Add metadata step - adds DuckDB extension metadata for proper loading (name, version, platform, API version)
    // Note: we will be using DuckDB extension API version (v1.2.0) so the extension will be compatible with DuckDB versions >= 1.2.0
    const add_metadata_step = b.step("add-metadata", "Add DuckDB extension metadata");
    const metadata_cmd = b.addSystemCommand(&[_][]const u8{
        "python3",
        "external/extension-template-c/extension-ci-tools/scripts/append_extension_metadata.py",
        "-l",
        lib_path,
        "-n",
        extension_name,
        "-o",
        b.getInstallPath(.lib, extension_filename),
        "-dv",
        extension_api_version,
        "-ev",
        extension_version,
        "-p",
        platform,
    });
    metadata_cmd.step.dependOn(b.getInstallStep());
    add_metadata_step.dependOn(&metadata_cmd.step);

    // Test extension with DuckDB step
    const test_ext_step = b.step("test-extension", "Test the extension with DuckDB");
    // Note: build the path from the install prefix, so a non-default --prefix still loads the file that
    // the metadata step actually wrote.
    const installed_extension_path = b.getInstallPath(.lib, extension_filename);
    const test_load_cmd = b.fmt("LOAD '{s}'; SELECT 'Extension loaded successfully' as status;", .{installed_extension_path});
    const test_ext_cmd = b.addSystemCommand(&[_][]const u8{
        "duckdb",
        "-unsigned",
        "-c",
        test_load_cmd,
    });
    test_ext_cmd.step.dependOn(&metadata_cmd.step);
    test_ext_step.dependOn(&test_ext_cmd.step);

    // Interactive DuckDB session with extension loaded
    const duckdb_step = b.step("duckdb", "Start interactive DuckDB session with extension loaded");

    // Create the init file through a WriteFile step rather than a shell redirect.
    // That keeps the step working on Windows.
    const init_sql = b.fmt("LOAD '{s}'; SELECT 'Extension loaded successfully!' as status;\n", .{installed_extension_path});
    const init_sql_file = b.addWriteFiles().add("duckdb_init.sql", init_sql);

    const run_duckdb = b.addSystemCommand(&[_][]const u8{
        "duckdb",
        "-unsigned",
        "-init",
    });
    run_duckdb.addFileArg(init_sql_file);
    run_duckdb.stdio = .inherit;
    run_duckdb.step.dependOn(&metadata_cmd.step);
    duckdb_step.dependOn(&run_duckdb.step);

    // Generate DuckDB Zig bindings from C API
    const gen_bindings_step = b.step("duckdb-translate", "Generate Zig bindings from DuckDB C API");
    const translate_cmd = b.addSystemCommand(&[_][]const u8{
        "sh",
        "-c",
        b.fmt("\"{s}\" translate-c -I external/extension-template-c/duckdb_capi " ++
            "external/extension-template-c/duckdb_capi/duckdb_extension.h > src/duckdb.zig", .{b.graph.zig_exe}),
    });
    gen_bindings_step.dependOn(&translate_cmd.step);

    // Build all: build + add metadata
    const build_all_step = b.step("build-all", "Build extension and add metadata");
    build_all_step.dependOn(b.getInstallStep());
    build_all_step.dependOn(add_metadata_step);

    // The documentation step remains unchanged.
    const docs_step = b.step("docs", "Generate API documentation");
    const doc_install_path = "docs/api";
    const gen_docs_cmd = b.addSystemCommand(&[_][]const u8{
        b.graph.zig_exe,
        "build-lib",
        "src/lib.zig",
        // Note: without -fno-emit-bin this drops a multi-megabyte liblib.a in the repository root.
        "-fno-emit-bin",
        "-femit-docs=" ++ doc_install_path,
    });
    const mkdir_cmd = b.addSystemCommand(&[_][]const u8{
        "mkdir", "-p", doc_install_path,
    });
    gen_docs_cmd.step.dependOn(&mkdir_cmd.step);
    docs_step.dependOn(&gen_docs_cmd.step);
}

fn detectPlatform(target: std.Build.ResolvedTarget) []const u8 {
    const os_tag = target.result.os.tag;
    const cpu_arch = target.result.cpu.arch;

    if (cpu_arch == .x86_64) {
        if (os_tag == .linux) return "linux_amd64";
        if (os_tag == .macos) return "osx_amd64";
        if (os_tag == .windows) return "windows_amd64";
        if (os_tag == .freebsd) return "freebsd_amd64";
    } else if (cpu_arch == .aarch64) {
        if (os_tag == .linux) return "linux_arm64";
        if (os_tag == .macos) return "osx_arm64";
        if (os_tag == .windows) return "windows_arm64";
        if (os_tag == .freebsd) return "freebsd_arm64";
    }

    std.debug.panic(
        "cannot detect the DuckDB platform for {s}-{s}, pass it with -Dplatform=<platform>",
        .{ @tagName(cpu_arch), @tagName(os_tag) },
    );
}

fn getLibExtension(target: std.Build.ResolvedTarget) []const u8 {
    const os_tag = target.result.os.tag;

    return switch (os_tag) {
        .windows => ".dll",
        .macos => ".dylib",
        else => ".so",
    };
}

// Note that the name must follow -Dextension-name, because that is what the compiler emits.
fn getLibFilename(b: *std.Build, target: std.Build.ResolvedTarget, name: []const u8) []const u8 {
    const lib_extension = getLibExtension(target);
    const os_tag = target.result.os.tag;

    // Note: Windows DLLs don't use "lib" prefix, but other platforms do
    if (os_tag == .windows) {
        return b.fmt("{s}{s}", .{ name, lib_extension });
    } else {
        return b.fmt("lib{s}{s}", .{ name, lib_extension });
    }
}
