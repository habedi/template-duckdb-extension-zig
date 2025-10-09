#!/bin/bash
# Build the extension and add metadata in one step
set -e

echo "🚀 Building complete DuckDB extension..."
echo ""

# Build the extension
./scripts/build.sh
echo ""

# Add metadata
./scripts/add-metadata.sh
echo ""

echo "✅ All done! Extension is ready to use."
echo ""
echo "To test it, run:"
echo "  ./scripts/test.sh"

