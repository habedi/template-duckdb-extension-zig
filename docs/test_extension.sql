-- Test script for the Zig DuckDB extension
-- Note: This extension needs to be installed using INSTALL, not LOAD
-- because it doesn't have the metadata that LOAD requires

-- First, try installing from the local file
INSTALL 'zig-out/lib/libextension.so';

-- Load the extension
LOAD extension;

-- Test the add_numbers_zig function
SELECT add_numbers_zig(5, 10) as result;

-- Test with multiple rows
SELECT
    i as a,
    i * 2 as b,
    add_numbers_zig(i, i * 2) as sum
FROM generate_series(1, 10) as t(i);

