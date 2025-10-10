const std = @import("std");

// Zig implementation of add_numbers that will be called from C
// This is exported with C calling convention so the C code can call it
pub export fn zig_add_numbers(a: i64, b: i64) callconv(.c) i64 {
    return a + b;
}

// Note: The extension registration and DuckDB C API interaction is handled
// in src/extension.c which uses the DUCKDB_EXTENSION_EXTERN macro.
// This provides access to all DuckDB C API functions at runtime.
