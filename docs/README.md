# DuckDB Extension in Zig

A template for building DuckDB extensions using the Zig programming language (v0.15.1).

## 📋 Overview

This project demonstrates how to create a DuckDB extension using Zig.
The extension uses DuckDB's C API to register custom functions that can be called from SQL queries.

## 🚀 Quick Start

### Prerequisites

- Zig 0.15.1 or later
- DuckDB installed
- Python 3 (for metadata generation)
- Linux/macOS (Windows may require adjustments)

### Build and Test

```bash
# Build the complete extension (one command does it all!)
./scripts/build-all.sh

# Test the extension
./scripts/test.sh

# Or start an interactive DuckDB session with the extension loaded
./scripts/duckdb.sh
```

That's it! Your extension is built and ready to use.

## 📁 Project Structure

```
.
├── src/
│   ├── lib.zig           # Main extension code
│   ├── lib_test.zig      # Unit tests
│   └── duckdb.zig        # DuckDB C API bindings
├── scripts/              # Helper scripts (see below)
├── build.zig             # Zig build configuration
├── Makefile              # Alternative build interface
└── zig-out/
    └── lib/
        ├── libextension.so              # Raw shared library
        └── extension.duckdb_extension   # Final extension file
```

## 🛠️ Available Scripts

All scripts are in the `scripts/` directory and are ready to use:

### Main Commands

| Script | Description |
|--------|-------------|
| `./scripts/build-all.sh` | **Build everything** - Compiles extension and adds metadata |
| `./scripts/test.sh` | **Test the extension** - Loads extension in DuckDB to verify it works |
| `./scripts/duckdb.sh` | **Interactive session** - Opens DuckDB with extension pre-loaded |

### Development Commands

| Script | Description |
|--------|-------------|
| `./scripts/build.sh` | Build the extension (without metadata) |
| `./scripts/add-metadata.sh` | Add DuckDB metadata to extension |
| `./scripts/test-zig.sh` | Run Zig unit tests |
| `./scripts/clean.sh` | Clean build artifacts |

## 📖 How It Works

### 1. Building the Extension

The build process has two stages:

#### Stage 1: Compile to Shared Library
```bash
./scripts/build.sh
```

This compiles your Zig code into a shared library (`libextension.so`). However, this library alone cannot be loaded by DuckDB yet.

#### Stage 2: Add DuckDB Metadata
```bash
./scripts/add-metadata.sh
```

DuckDB requires special metadata at the end of extension files for security and validation. This script:
- Copies the shared library
- Appends metadata containing:
  - Extension name
  - DuckDB API version (v1.2.0)
  - Platform information
  - Extension version

The result is `extension.duckdb_extension` which DuckDB can load.

### 2. Extension Entrypoint

Your extension must export a function named `<extension_name>_init_c_api`:

```zig
pub export fn extension_init_c_api(
    info: duckdb.duckdb_extension_info,
    access: [*c]duckdb.duckdb_extension_access,
) callconv(.c) bool {
    // Initialize your extension here
    // Register functions, etc.
    return true;  // Return true if successful
}
```

DuckDB calls this function when loading your extension. The `access` parameter provides function pointers to the DuckDB C API.

### 3. Loading the Extension in DuckDB

```sql
-- Load the extension
LOAD 'zig-out/lib/extension.duckdb_extension';

-- Now you can use extension functions
-- (Currently this is a minimal template - add your functions in src/lib.zig)
```

## 🔧 Development Workflow

### Making Changes

1. **Edit your extension code** in `src/lib.zig`
2. **Rebuild**: `./scripts/build-all.sh`
3. **Test**: `./scripts/test.sh`

### Testing Interactively

```bash
# Start DuckDB with your extension loaded
./scripts/duckdb.sh

# Inside DuckDB, you can now test your functions:
D SELECT 'Hello from Zig!' as message;
```

### Running Unit Tests

```bash
# Run Zig unit tests
./scripts/test-zig.sh
```

Unit tests are in `src/lib_test.zig` and don't require DuckDB to run.

## 🐛 Troubleshooting

### Extension Won't Load

**Error: "The file is not a DuckDB extension"**

This means the metadata is missing or invalid. Solution:
```bash
./scripts/add-metadata.sh
```

**Error: "undefined symbol: duckdb_connect"**

This means you're calling DuckDB C API functions directly. Extensions must use function pointers from the `access` parameter. The current template avoids this issue by not calling DuckDB functions yet.

### Build Errors

**"error: expected type ... found '*const ..."**

You're passing a const variable where a mutable pointer is needed. Change `const` to `var`:
```zig
// ❌ Wrong
const func = duckdb.duckdb_create_scalar_function();
defer duckdb.duckdb_destroy_scalar_function(&func);  // Error!

// ✅ Correct
var func = duckdb.duckdb_create_scalar_function();
defer duckdb.duckdb_destroy_scalar_function(&func);  // Works!
```

### Clean Start

If things get weird, try a clean rebuild:
```bash
./scripts/clean.sh
./scripts/build-all.sh
```

## 📚 Adding Your Own Functions

The current template is minimal and doesn't register any functions. To add a custom function:

1. Define your function implementation in `src/lib.zig`
2. Register it in `extension_init_c_api` using the DuckDB C API
3. Access the C API functions through the `access` parameter

**Note**: Accessing DuckDB C API functions from Zig is complex because they must be retrieved as function pointers from the API struct. This is an advanced topic - see the C extension template in `external/extension-template-c/` for examples.

## 🔍 Understanding the Metadata

The metadata added to your extension contains:

| Field | Value | Purpose |
|-------|-------|---------|
| Extension Name | `extension` | Identifies your extension |
| DuckDB Version | `v1.2.0` | Which DuckDB API version to use |
| Platform | `linux_amd64` | OS and architecture |
| Extension Version | `v1.0.0` | Your extension's version |
| ABI Type | `C_STRUCT` | How the C API is structured |

DuckDB validates this metadata before loading to ensure compatibility.

## 🎯 What's Next?

This template successfully:
- ✅ Builds a Zig shared library
- ✅ Adds proper DuckDB metadata
- ✅ Loads successfully in DuckDB
- ✅ Exports the required entrypoint function

To make it useful, you'll need to:
- [ ] Extract DuckDB C API function pointers from the `access` struct
- [ ] Register your custom SQL functions
- [ ] Implement the function logic

The complexity lies in properly extracting and using the C API function pointers, which requires understanding the C struct layout.

## 📖 Additional Resources

- [DuckDB Extensions Documentation](https://duckdb.org/docs/extensions/overview)
- [C Extension Template](external/extension-template-c/) - See how the C version works
- [Zig Documentation](https://ziglang.org/documentation/0.15.1/)

## 🤝 Contributing

This is a template project. Feel free to:
- Add more helper scripts
- Improve the build process
- Add example functions
- Enhance documentation

## 📄 License

See [LICENSE](LICENSE) file for details.

---

**Happy DuckDB Extension Development with Zig! 🦆⚡**

