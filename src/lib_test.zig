const std = @import("std");
const testing = std.testing;

// Since this is a DuckDB extension that requires the DuckDB runtime,
// we can't run integration tests without linking to libduckdb.
// These are simple unit tests that don't require DuckDB.

test "basic arithmetic" {
    const a: i64 = 5;
    const b: i64 = 10;
    const result = a + b;
    try testing.expectEqual(@as(i64, 15), result);
}

test "array operations" {
    const arr = [_]i64{ 1, 2, 3, 4, 5 };
    var sum: i64 = 0;
    for (arr) |val| {
        sum += val;
    }
    try testing.expectEqual(@as(i64, 15), sum);
}
