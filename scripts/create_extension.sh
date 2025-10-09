#!/bin/bash
# Script to create a loadable DuckDB extension from the Zig-built shared library
# This adds the necessary metadata that DuckDB requires

set -e

# Configuration
EXTENSION_NAME="extension"
ZIG_LIB="zig-out/lib/libextension.so"
OUTPUT_FILE="zig-out/lib/${EXTENSION_NAME}.duckdb_extension"
DUCKDB_VERSION="v1.3.2"
PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

echo "Creating DuckDB extension with metadata..."
echo "  Source: $ZIG_LIB"
echo "  Output: $OUTPUT_FILE"

# Copy the shared library
cp "$ZIG_LIB" "$OUTPUT_FILE"

# Add DuckDB extension metadata
# The metadata format is:
# - Magic bytes: "DUCK" (4 bytes)
# - Extension name length (4 bytes, little-endian)
# - Extension name (variable length)
# - DuckDB version length (4 bytes, little-endian)
# - DuckDB version string (variable length)
# - Platform length (4 bytes, little-endian)
# - Platform string (variable length)

# Create metadata file
METADATA_FILE=$(mktemp)

# Write magic bytes "DUCK"
printf "DUCK" > "$METADATA_FILE"

# Write extension name
EXTENSION_NAME_LEN=${#EXTENSION_NAME}
printf "\\x$(printf '%02x' $((EXTENSION_NAME_LEN & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((EXTENSION_NAME_LEN >> 8) & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((EXTENSION_NAME_LEN >> 16) & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((EXTENSION_NAME_LEN >> 24) & 0xFF)))" >> "$METADATA_FILE"
printf "%s" "$EXTENSION_NAME" >> "$METADATA_FILE"

# Write DuckDB version
DUCKDB_VERSION_LEN=${#DUCKDB_VERSION}
printf "\\x$(printf '%02x' $((DUCKDB_VERSION_LEN & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((DUCKDB_VERSION_LEN >> 8) & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((DUCKDB_VERSION_LEN >> 16) & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((DUCKDB_VERSION_LEN >> 24) & 0xFF)))" >> "$METADATA_FILE"
printf "%s" "$DUCKDB_VERSION" >> "$METADATA_FILE"

# Write platform
PLATFORM_STR="${PLATFORM}_${ARCH}"
PLATFORM_LEN=${#PLATFORM_STR}
printf "\\x$(printf '%02x' $((PLATFORM_LEN & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((PLATFORM_LEN >> 8) & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((PLATFORM_LEN >> 16) & 0xFF)))" >> "$METADATA_FILE"
printf "\\x$(printf '%02x' $(((PLATFORM_LEN >> 24) & 0xFF)))" >> "$METADATA_FILE"
printf "%s" "$PLATFORM_STR" >> "$METADATA_FILE"

# Append metadata to the extension file
cat "$METADATA_FILE" >> "$OUTPUT_FILE"
rm "$METADATA_FILE"

echo "✓ Extension created successfully: $OUTPUT_FILE"
echo ""
echo "To test the extension, run:"
echo "  duckdb -unsigned"
echo "  D LOAD '$OUTPUT_FILE';"
echo "  D SELECT add_numbers_zig(5, 10);"

