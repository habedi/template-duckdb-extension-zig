#!/bin/bash
# Clean build artifacts
set -e

echo "🧹 Cleaning build artifacts..."

rm -rf zig-out .zig-cache

echo "✓ Clean complete!"

