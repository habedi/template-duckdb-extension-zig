#!/bin/bash
# Add DuckDB extension metadata to make it loadable
set -e

EXTENSION_NAME="extension"
INPUT_LIB="zig-out/lib/libextension.so"
OUTPUT_FILE="zig-out/lib/${EXTENSION_NAME}.duckdb_extension"
DUCKDB_VERSION="v1.2.0"
EXTENSION_VERSION="v1.0.0"
PLATFORM="linux_amd64"

echo "📦 Adding DuckDB extension metadata..."

if [ ! -f "$INPUT_LIB" ]; then
    echo "❌ Error: $INPUT_LIB not found. Run './scripts/build.sh' first."
    exit 1
fi

python3 external/extension-template-c/extension-ci-tools/scripts/append_extension_metadata.py \
    -l "$INPUT_LIB" \
    -n "$EXTENSION_NAME" \
    -o "$OUTPUT_FILE" \
    -dv "$DUCKDB_VERSION" \
    -ev "$EXTENSION_VERSION" \
    -p "$PLATFORM"

echo "✓ Extension ready!"
echo "  Output: $OUTPUT_FILE"

