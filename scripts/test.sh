#!/bin/bash
# Test the DuckDB extension
set -e

EXTENSION_FILE="zig-out/lib/extension.duckdb_extension"

if [ ! -f "$EXTENSION_FILE" ]; then
    echo "❌ Error: Extension file not found."
    echo "   Run './scripts/build-all.sh' first to build the extension."
    exit 1
fi

echo "🧪 Testing DuckDB extension..."
echo ""

# Test 1: Load the extension
echo "Test 1: Loading extension..."
duckdb -unsigned -c "LOAD '$EXTENSION_FILE'; SELECT 'Extension loaded successfully' as status;" 2>&1

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Extension loaded successfully!"
else
    echo ""
    echo "❌ Extension failed to load"
    exit 1
fi

