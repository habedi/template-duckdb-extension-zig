const std = @import("std");
const duckdb = @import("duckdb");

// Extension name - must match the library name
const EXTENSION_NAME = "extension";

// The actual entrypoint function that matches the DUCKDB_EXTENSION_ENTRYPOINT pattern
// This function signature mimics what the C macro creates
pub export fn extension_init_c_api(
    info: duckdb.duckdb_extension_info,
    access: [*c]duckdb.duckdb_extension_access,
) callconv(.c) bool {
    _ = info;
    _ = access;

    // For now, just return true to indicate successful initialization
    // We'll register functions when we can properly access the C API
    return true;
}

// This function is also part of the extension API. It provides the version.
pub export fn extension_version() ?[*:0]const u8 {
    // Return a static version string instead of calling duckdb_library_version()
    return "v1.0.0-zig";
}
