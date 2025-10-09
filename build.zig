const std = @import("std");
const fs = std.fs;

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const lib_source = b.path("src/lib.zig");
    const lib_module = b.addModule("extension", .{
        .root_source_file = lib_source,
        .target = target,
        .optimize = optimize,
    });
    const lib = b.addLibrary(.{
        .name = "extension",
        .root_module = lib_module,
    });
    b.installArtifact(lib);
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
    const lib_unit_tests = b.addTest(.{
        .root_module = lib_module,
    });
    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);
}
