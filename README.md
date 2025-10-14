<div align="center">
  <picture>
    <img alt="Project Logo" src="logo.svg" height="20%" width="20%">
  </picture>
<br>

<h2>DuckDB Extension Template for Zig</h2>

[![Tests](https://img.shields.io/github/actions/workflow/status/habedi/template-duckdb-extension-zig/tests.yml?label=tests&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-duckdb-extension-zig/actions/workflows/tests.yml)
[![CodeFactor](https://img.shields.io/codefactor/grade/github/habedi/template-duckdb-extension-zig?label=code%20quality&style=flat&labelColor=282c34&logo=codefactor)](https://www.codefactor.io/repository/github/habedi/template-duckdb-extension-zig)
[![Zig Version](https://img.shields.io/badge/Zig-0.15.2-orange?logo=zig&labelColor=282c34)](https://ziglang.org/download/)
[![Release](https://img.shields.io/github/release/habedi/template-duckdb-extension-zig.svg?label=release&style=flat&labelColor=282c34&logo=github)](https://github.com/habedi/template-duckdb-extension-zig/releases/latest)
[![License](https://img.shields.io/badge/license-MIT-007ec6?label=license&style=flat&labelColor=282c34&logo=open-source-initiative)](https://github.com/habedi/template-duckdb-extension-zig/blob/main/LICENSE)

A template for creating DuckDB extensions in Zig

</div>

---

This is a DuckDB extension template for Zig that provides a starting point for creating DuckDB extensions in Zig
programming language.
It uses the DuckDB's extension API ([C version](https://github.com/duckdb/extension-template-c/tree/main/duckdb_capi))
and supports multi-platform builds using Zig's cross-compilation features.

I'm sharing this template here in case it can be useful to others.

### Features

- All build tasks can be managed using `build.zig` or `Makefile` (if you prefer GNU Make)
- Built-in support for cross-compilation (for Linux, macOS, and Windows; ARM and AMD)
- Very fast builds; no need to build DuckDB from source
- Built extensions are version-agnostic and work with DuckDB 1.2.0 and later

> [!IMPORTANT]
> The template is in early development, so bugs and breaking API changes are expected.
> Please use the [issues page](https://github.com/habedi/template-duckdb-extension-zig/issues) to report bugs or request
> features.

---

### Getting Started

#### Prerequisites

- Zig 0.15.2
- Python 3
- DuckDB 1.2.0 or later (recommended for testing the extension)
- GNU Make (optional, for convenience)
- A C compiler
- Git

#### Quick Start

1. **Clone the repository with submodules:**
   ```bash
   git clone --recursive https://github.com/habedi/template-duckdb-extension-zig.git
   cd template-duckdb-extension-zig
   ```

2. **Configure your extension name (optional):**

   The template uses "extension" as the default name. To use your own name, either:

    - Set it in the Makefile:
      ```makefile
      EXTENSION_NAME ?= my_custom_extension
      ```

    - Or pass it as a parameter:
      ```bash
      make build-all EXTENSION_NAME=my_custom_extension
      ```

    - Or use zig build directly:
      ```bash
      zig build build-all -Dextension-name=my_custom_extension
      ```

3. **Build the extension:**
   ```bash
   make build-all
   # Or with a custom name:
   make build-all EXTENSION_NAME=my_custom_extension
   ```

4. **Run tests:**
   ```bash
   zig build test
   zig build test-extension -Dextension-name=my_custom_extension
   ```

5. **Try it interactively:**
   ```bash
   zig build duckdb -Dextension-name=my_custom_extension
   ```

#### Configuration Variables

The build system supports several configurable variables:

- `EXTENSION_NAME` - Name of the extension (default: "extension")
- `EXTENSION_API_VERSION` - DuckDB Extension API version (default: "v1.2.0"; normally you don't need to change this)
- `EXTENSION_VERSION` - Your extension version (default: "v1.0.0")
- `PLATFORM` - Target platform (default: auto-detected)

Example:

```bash
make build-all \
  EXTENSION_NAME=my_extension \
  EXTENSION_API_VERSION=v1.2.0 \
  EXTENSION_VERSION=v2.0.0
```

For GitHub Actions, update the environment variables in `.github/workflows/builds.yml`:

```yaml
env:
    EXTENSION_NAME: my_custom_extension
    EXTENSION_API_VERSION: v1.2.0
    EXTENSION_VERSION: v1.0.0
```

#### Available Commands

All build tasks are managed through `zig build` or `make`:

- `make build` or `zig build` - Build the extension
- `make build-all` or `zig build build-all` - Build with DuckDB metadata added to the extension
- `make test` or `zig build test` - Run unit tests
- `make test-extension` or `zig build test-extension` - Test with DuckDB
- `zig build duckdb` - Start an interactive DuckDB session (with the extension loaded)
- `make clean` or `zig build clean` - Clean build artifacts and unnecessary files
- `zig build docs` - Generate documentation (Zig API docs)
- `make build-all-platforms` - Build for all supported platforms (OSes and hardware architectures)

---

### Documentation

- **API Documentation** - Run `zig build docs` and open `docs/api/index.html`

#### Project Structure

```
├── build.zig             # Zig build configuration
├── Makefile              # Wrapper around `zig build` that extends its functionality (optional)
├── src/
│   ├── lib.zig           # Main extension code
│   ├── lib_test.zig      # Unit tests for the extension
│   ├── extension.c       # C entry point for the extension
│   └── duckdb.zig        # DuckDB extension API (translated to Zig from C)
└── external/             # External depencies like Git submodules (extension API)
```

---

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to make a contribution.

### License

This project is licensed under the MIT License ([LICENSE](LICENSE) or https://opensource.org/license/MIT).

### Acknowledgements

* The logo is from [SVG Repo](https://www.svgrepo.com/svg/117247/duck-footprints) with some modifications.
