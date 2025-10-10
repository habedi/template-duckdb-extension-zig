# Build System Guide

This project uses Zig's build system (`build.zig`) for all build tasks. The previous bash scripts in the `scripts/` directory are no longer needed for most workflows.

## Available Build Steps

All tasks are now managed through `zig build` commands:

### Core Build Commands

- **`zig build`** - Build the extension library
  - Produces: `zig-out/lib/libextension.so` and `zig-out/lib/extension.duckdb_extension`

- **`zig build -Doptimize=ReleaseFast`** - Build optimized release version
  - Use for production builds

- **`zig build test`** - Run unit tests
  - Runs the Zig unit tests without requiring DuckDB runtime

### Extension Management

- **`zig build build-all`** - Build extension and add DuckDB metadata
  - This is the complete build process for a loadable extension

- **`zig build add-metadata`** - Add DuckDB extension metadata to the built library
  - Adds version info and platform metadata
  - Makes the extension loadable with `LOAD` command in DuckDB

### Testing & Development

- **`zig build test-extension`** - Test the extension with DuckDB
  - Loads the extension in DuckDB and verifies it works

- **`zig build duckdb`** - Start interactive DuckDB with extension pre-loaded
  - Opens an interactive DuckDB session
  - Extension is automatically loaded on startup

### Utilities

- **`zig build clean`** - Remove build artifacts and cache
  - Cleans `zig-out/` and `.zig-cache/` directories

- **`zig build docs`** - Generate API documentation
  - Produces documentation in `docs/api/`

- **`zig build duckdb-translate`** - Regenerate Zig bindings from DuckDB C API
  - Updates `src/duckdb.zig` from the C headers
  - Run this when updating DuckDB versions

## Build Options

- **`-Dtarget=<target>`** - Cross-compile for specific platform
  - Example: `zig build -Dtarget=aarch64-linux`

- **`-Doptimize=<mode>`** - Set optimization level
  - Options: `Debug` (default), `ReleaseSafe`, `ReleaseFast`, `ReleaseSmall`

- **`-j<N>`** - Limit concurrent jobs
  - Example: `zig build -j4` (use 4 CPU cores)

## Common Workflows

### Development Workflow
```bash
# Build and test
zig build
zig build test

# Test with DuckDB
zig build test-extension

# Interactive testing
zig build duckdb
```

### Production Build
```bash
# Clean build with optimization
zig build clean
zig build -Doptimize=ReleaseFast build-all
```

### Cross-Platform Build
```bash
# Build for different platforms
zig build -Dtarget=x86_64-linux -Doptimize=ReleaseSmall
zig build -Dtarget=aarch64-linux -Doptimize=ReleaseSmall
zig build -Dtarget=x86_64-macos -Doptimize=ReleaseSmall
```

## Migration from Scripts

The following script commands have been replaced:

| Old Script | New Command | Notes |
|------------|-------------|-------|
| `./scripts/build.sh` | `zig build` | Direct replacement |
| `./scripts/build-all.sh` | `zig build build-all` | Builds and adds metadata |
| `./scripts/test.sh` | `zig build test-extension` | Tests with DuckDB |
| `./scripts/clean.sh` | `zig build clean` | Removes artifacts |
| `./scripts/duckdb.sh` | `zig build duckdb` | Interactive session |
| `make duckdb-zig` | `zig build duckdb-translate` | Generate bindings |

The `scripts/` directory can now be considered deprecated for build tasks.

## Makefile Integration

The Makefile still provides convenient shortcuts that call `zig build`:

- `make build` → `zig build`
- `make test` → `zig build test`
- `make clean` → `zig build clean` (plus extra cleanup)
- `make docs` → `zig build docs`

Use either `make` or `zig build` depending on your preference.

## Requirements

- Zig 0.15.1 (located at `~/.local/share/zig/0.15.1/zig`)
- Python 3 (for metadata generation)
- DuckDB (for extension testing)

## Troubleshooting

### Extension doesn't load in DuckDB
Make sure you ran `zig build build-all` to add the metadata, not just `zig build`.

### Python script not found
Ensure the git submodules are initialized:
```bash
git submodule update --init --recursive
```

### Zig not found
Update the `ZIG` variable in the Makefile or ensure Zig 0.15.1 is in your PATH.

