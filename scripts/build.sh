#!/bin/bash
# Build the DuckDB extension
set -e

echo "🔨 Building DuckDB extension..."
zig build

echo "✓ Build complete!"
echo "  Output: zig-out/lib/libextension.so"

