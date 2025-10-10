# DuckDB Extension Version Compatibility Guide

## ⚠️ Important: Extension is NOT Version Agnostic

**The extension is NOT version agnostic by default.** Each build targets a specific DuckDB version and includes that version in the extension metadata. This means:

- ❌ An extension built for DuckDB v1.2.0 **will NOT load** in DuckDB v1.3.0 without rebuilding
- ❌ An extension built for DuckDB v1.3.0 **will NOT load** in DuckDB v1.2.0 without rebuilding
- ✅ You **must rebuild** the extension for each DuckDB version you want to support

## Why This Limitation Exists

DuckDB extensions include metadata that specifies the target DuckDB version. This ensures:
1. **ABI Compatibility**: Different DuckDB versions may have incompatible C API changes
2. **Safety**: Prevents loading extensions built for incompatible versions
3. **Stability**: Ensures the extension works correctly with the target version

## How to Build for Different Versions

### Building for a Specific Version

```bash
# Build for DuckDB v1.3.0
make build-all DUCKDB_VERSION=v1.3.0

# Build for DuckDB v1.2.0 (default)
make build-all DUCKDB_VERSION=v1.2.0

# Build for DuckDB v1.1.0
make build-all DUCKDB_VERSION=v1.1.0
```

### Building for Multiple Versions at Once

```bash
# Build for both v1.2.0 and v1.3.0
make build-multi-version
```

This creates:
- `zig-out/lib/extension-v1.2.0.duckdb_extension`
- `zig-out/lib/extension-v1.3.0.duckdb_extension`

### Using zig build Directly

```bash
# Build for specific version
zig build build-all -Dduckdb-version=v1.3.0

# Build with custom extension version
zig build build-all \
  -Dduckdb-version=v1.3.0 \
  -Dextension-version=v2.0.0 \
  -Dplatform=linux_amd64
```

## Configuration Options

### DuckDB Version (`DUCKDB_VERSION` or `-Dduckdb-version`)
- **Default**: `v1.2.0`
- **Format**: `vX.Y.Z` (e.g., `v1.3.0`, `v1.2.1`)
- **Purpose**: Specifies which DuckDB version the extension is built for

### Extension Version (`EXTENSION_VERSION` or `-Dextension-version`)
- **Default**: `v1.0.0`
- **Format**: `vX.Y.Z`
- **Purpose**: Your extension's version number

### Platform (`PLATFORM` or `-Dplatform`)
- **Default**: Auto-detected from build target
- **Options**: `linux_amd64`, `linux_arm64`, `osx_amd64`, `osx_arm64`, `windows_amd64`
- **Purpose**: Target platform for the extension

## Checking Extension Metadata

To verify which version an extension was built for:

```bash
# View metadata (last 256 bytes contain version info)
tail -c 256 zig-out/lib/extension.duckdb_extension | strings
```

## Deployment Strategy

### Option 1: Single Version Support
Build for your target DuckDB version and deploy only that:

```bash
make build-all DUCKDB_VERSION=v1.3.0
# Deploy zig-out/lib/extension.duckdb_extension
```

### Option 2: Multi-Version Support
Build for all versions you need to support:

```bash
# Build for multiple versions
make build-all DUCKDB_VERSION=v1.2.0
mv zig-out/lib/extension.duckdb_extension extensions/extension-v1.2.0.duckdb_extension

make build-all DUCKDB_VERSION=v1.3.0
mv zig-out/lib/extension.duckdb_extension extensions/extension-v1.3.0.duckdb_extension

# Users load the appropriate version:
# LOAD 'extensions/extension-v1.3.0.duckdb_extension';
```

### Option 3: Automated Multi-Version Build
Use the provided target:

```bash
make build-multi-version
```

## CI/CD Integration

Example GitHub Actions workflow for building multiple versions:

```yaml
name: Build Extension
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        duckdb-version: [v1.2.0, v1.3.0]
    steps:
      - uses: actions/checkout@v2
      - name: Build extension
        run: |
          make build-all DUCKDB_VERSION=${{ matrix.duckdb-version }}
          mv zig-out/lib/extension.duckdb_extension \
             extension-${{ matrix.duckdb-version }}.duckdb_extension
      - name: Upload artifact
        uses: actions/upload-artifact@v2
        with:
          name: extension-${{ matrix.duckdb-version }}
          path: extension-${{ matrix.duckdb-version }}.duckdb_extension
```

## Testing Different Versions

```bash
# Test with v1.2.0
make build-all DUCKDB_VERSION=v1.2.0
duckdb -unsigned -c "LOAD 'zig-out/lib/extension.duckdb_extension'; SELECT extension_version();"

# Test with v1.3.0
make build-all DUCKDB_VERSION=v1.3.0
duckdb -unsigned -c "LOAD 'zig-out/lib/extension.duckdb_extension'; SELECT extension_version();"
```

## Future: Making Extensions More Version-Agnostic

To make an extension work across multiple versions without rebuilding, you would need to:

1. **Use only stable C API functions** that don't change between versions
2. **Avoid version-specific features** or conditionally compile them
3. **Set a version range** instead of a specific version (if DuckDB supports it)
4. **Dynamic API version detection** at runtime (advanced)

However, **this is not recommended** because:
- It's difficult to maintain
- Risk of subtle bugs across versions
- DuckDB's extension API is still evolving
- Loss of type safety guarantees

## Recommendation

**Build separate extension binaries for each DuckDB version you want to support.** This ensures:
- ✅ Maximum compatibility
- ✅ Type safety
- ✅ Predictable behavior
- ✅ Easy to test and maintain

## Summary

| Approach | Version Agnostic? | Rebuild Required? | Recommended? |
|----------|-------------------|-------------------|--------------|
| Single version build | ❌ No | ✅ Yes | ✅ Yes (simple deployments) |
| Multi-version build | ❌ No | ✅ Yes | ✅ Yes (production) |
| Version-agnostic code | ⚠️ Partial | ❌ No | ❌ No (too risky) |

**Bottom Line**: Build your extension for each DuckDB version you need to support. Use `make build-multi-version` or CI/CD pipelines to automate this process.

