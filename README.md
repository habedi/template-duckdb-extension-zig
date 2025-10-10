<div align="center">
  <picture>
    <img alt="Project Logo" src="logo.svg" height="20%" width="20%">
  </picture>
<br>

<h2>DuckDB Extension Template for Zig</h2>

[![Tests](https://img.shields.io/github/actions/workflow/status/habedi/template-duckdb-extension-zig/tests.yml?label=tests&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-duckdb-extension-zig/actions/workflows/tests.yml)
[![Benchmarks](https://img.shields.io/github/actions/workflow/status/habedi/template-duckdb-extension-zig/benches.yml?label=benches&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-duckdb-extension-zig/actions/workflows/benches.yml)
[![CodeFactor](https://img.shields.io/codefactor/grade/github/habedi/template-duckdb-extension-zig?label=quality&style=flat&labelColor=282c34&logo=codefactor)](https://www.codefactor.io/repository/github/habedi/template-duckdb-extension-zig)
[![Docs](https://img.shields.io/badge/docs-view-blue?style=flat&labelColor=282c34&logo=read-the-docs)](https://CogitatorTech.github.io/ordered/)
[![Examples](https://img.shields.io/badge/examples-view-green?style=flat&labelColor=282c34&logo=zig)](https://github.com/habedi/template-duckdb-extension-zig/tree/main/examples)
[![Zig Version](https://img.shields.io/badge/Zig-0.15.1-orange?logo=zig&labelColor=282c34)](https://ziglang.org/download/)
[![Release](https://img.shields.io/github/release/habedi/template-duckdb-extension-zig.svg?label=release&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-duckdb-extension-zig/releases/latest)
[![License](https://img.shields.io/badge/license-MIT-007ec6?label=license&style=flat&labelColor=282c34&logo=open-source-initiative)](https://github.com/habedi/template-duckdb-extension-zig/blob/main/LICENSE)

A DuckDB extension template for Zig

</div>

---

This is a DuckDB extension template for Zig that provides a starting point for creating DuckDB extensions in Zig.
It includes a basic structure for a DuckDB extension, including a build script and a test suite.

### Features

- **Pure Zig build system** - All build tasks managed through `build.zig` (no dependency on shell scripts)
- **Easy development workflow** - Simple commands for building, testing, and debugging
- **Cross-platform support** - Built-in support for cross-compilation via Zig
- **DuckDB integration** - Full C API bindings and metadata support
- **Unit testing** - Comprehensive test suite with Zig's test framework
- **Documentation generation** - Automatic API documentation

> [!IMPORTANT]
> The template is in early development, so bugs and breaking API changes are expected.
> Please use the [issues page](https://github.com/habedi/template-duckdb-extension-zig/issues) to report bugs or request
> features.

---

### Getting Started

#### Prerequisites

- Zig 0.15.1 (installed at `~/.local/share/zig/0.15.1/` or in your PATH)
- Python 3 (for metadata generation)
- DuckDB (for testing the extension)
- Git (for submodule management)

#### Quick Start

1. **Clone the repository with submodules:**
   ```bash
   git clone --recursive https://github.com/habedi/template-duckdb-extension-zig.git
   cd template-duckdb-extension-zig
   ```

2. **Build the extension:**
   ```bash
   zig build build-all
   ```

3. **Run tests:**
   ```bash
   zig build test
   zig build test-extension
   ```

4. **Try it interactively:**
   ```bash
   zig build duckdb
   ```

#### Available Commands

All build tasks are managed through `zig build`:

- `zig build` - Build the extension
- `zig build build-all` - Build with DuckDB metadata
- `zig build test` - Run unit tests
- `zig build test-extension` - Test with DuckDB
- `zig build duckdb` - Interactive DuckDB session
- `zig build clean` - Clean build artifacts
- `zig build docs` - Generate documentation

For a complete list of commands and detailed usage, see [BUILD_GUIDE.md](BUILD_GUIDE.md).

---

### Documentation

- **[Build System Guide](BUILD_GUIDE.md)** - Complete guide to building and managing the project
- **API Documentation** - Run `zig build docs` and open `docs/api/index.html`

### Project Structure

```
├── build.zig              # Zig build configuration (all build tasks)
├── Makefile               # Convenience wrapper around zig build
├── src/
│   ├── lib.zig           # Main extension code
│   ├── lib_test.zig      # Unit tests
│   └── duckdb.zig        # DuckDB C API bindings
├── external/             # Git submodules (DuckDB C API)
└── scripts/              # Legacy scripts (deprecated)
```

---

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to make a contribution.

### License

This project is licensed under the MIT License (see [LICENSE](LICENSE)).

### Acknowledgements

* The logo is from [SVG Repo](https://www.svgrepo.com/svg/117247/duck-footprints) with some modifications.
