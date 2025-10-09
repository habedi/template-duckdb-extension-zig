#!/bin/bash
# Interactive DuckDB session with the extension pre-loaded
set -e

EXTENSION_FILE="zig-out/lib/extension.duckdb_extension"

if [ ! -f "$EXTENSION_FILE" ]; then
    echo "❌ Error: Extension file not found."
    echo "   Run './scripts/build-all.sh' first to build the extension."
    exit 1
fi

echo "🦆 Starting DuckDB with extension loaded..."
echo ""
echo "The extension is automatically loaded for you."
echo "Type SQL queries or '.help' for help."
echo "Press Ctrl+D or type '.quit' to exit."
echo ""

# Create a temporary init file that loads the extension
INIT_FILE=$(mktemp)
echo "LOAD '$EXTENSION_FILE';" > "$INIT_FILE"
echo "SELECT '✅ Extension loaded successfully!' as status;" >> "$INIT_FILE"

# Start DuckDB with the init file
duckdb -unsigned -init "$INIT_FILE"

# Clean up
rm "$INIT_FILE"

