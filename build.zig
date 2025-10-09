const std = @import("std");

pub fn build(b: *std.Build) void {
    // Add standard options for target and optimization mode.
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{
        .preferred_optimize_mode = .ReleaseFast,
    });

    const duckdb_module = b.addModule("duckdb", .{
        .root_source_file = b.path("src/duckdb.zig"),
    });

    const root_module = b.createModule(.{
        .root_source_file = b.path("src/lib.zig"),
        .target = target,
        .optimize = optimize,
    });
    root_module.addImport("duckdb", duckdb_module);

    const lib = b.addLibrary(.{
        .name = "extension",
        .root_module = root_module,
        .linkage = .dynamic,
    });

    lib.install_name = "extension.duckdb_extension";

    b.installArtifact(lib);

    // Create a copy with .duckdb_extension suffix for DuckDB
    const copy_extension = b.addSystemCommand(&[_][]const u8{
        "cp",
        "-f",
        b.getInstallPath(.lib, "libextension.so"),
        b.getInstallPath(.lib, "extension.duckdb_extension"),
    });
    copy_extension.step.dependOn(&lib.step);
    b.getInstallStep().dependOn(&copy_extension.step);

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

    // The documentation step remains unchanged.
    const docs_step = b.step("docs", "Generate API documentation");
    const doc_install_path = "docs/api";
    const gen_docs_cmd = b.addSystemCommand(&[_][]const u8{
        b.graph.zig_exe,
        "build-lib",
        "src/lib.zig",
        "-femit-docs=" ++ doc_install_path,
    });
    const mkdir_cmd = b.addSystemCommand(&[_][]const u8{
        "mkdir", "-p", doc_install_path,
    });
    gen_docs_cmd.step.dependOn(&mkdir_cmd.step);
    docs_step.dependOn(&gen_docs_cmd.step);
}
