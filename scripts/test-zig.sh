#!/bin/bash
# Run Zig tests
set -e

echo "🧪 Running Zig tests..."
echo ""

zig build test --summary all

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ All tests passed!"
else
    echo ""
    echo "❌ Some tests failed"
    exit 1
fi

