# ################################################################################
# # Configuration and Variables
# ################################################################################
ZIG    ?= $(shell which zig || echo ~/.local/share/zig/0.15.1/zig)
BUILD_TYPE    ?= Debug
BUILD_OPTS      =
JOBS          ?= $(shell nproc || echo 2)
SRC_DIR       := src
BENCHMARKS_DIR:= benches
BUILD_DIR     := zig-out
CACHE_DIR     := .zig-cache
RELEASE_MODE := ReleaseFast
TEST_FLAGS := --summary all #--verbose
JUNK_FILES := *.o *.obj *.dSYM *.dll *.so *.dylib *.a *.lib *.pdb temp/
EXTENSION_FILE := $(BUILD_DIR)/lib/extension.duckdb_extension

# DuckDB version configuration (can be overridden)
DUCKDB_VERSION ?= v1.2.0
EXTENSION_VERSION ?= v1.0.0
PLATFORM ?= linux_amd64

SHELL         := /usr/bin/env bash
.SHELLFLAGS   := -eu -o pipefail -c

################################################################################
# Targets
################################################################################

.PHONY: all help build build-all rebuild test test-extension release clean lint format docs serve-docs install-deps duckdb-translate duckdb
.DEFAULT_GOAL := help

help: ## Show the help messages for all targets
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*## .*$$' Makefile | \
	awk 'BEGIN {FS = ":.*## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'
	@echo ""
	@echo "Configuration Variables:"
	@echo "  DUCKDB_VERSION    DuckDB version to target (default: $(DUCKDB_VERSION))"
	@echo "  EXTENSION_VERSION Extension version (default: $(EXTENSION_VERSION))"
	@echo "  PLATFORM          Target platform (default: $(PLATFORM))"
	@echo ""
	@echo "Examples:"
	@echo "  make build-all DUCKDB_VERSION=v1.3.0"
	@echo "  make build-all DUCKDB_VERSION=v1.2.0 EXTENSION_VERSION=v2.0.0"

all: build test  ## Build and test (use 'make build-all' for extension with metadata)

build: ## Build extension library
	@echo "Building DuckDB extension with $(JOBS) concurrent jobs..."
	@$(ZIG) build $(BUILD_OPTS) -j$(JOBS)

build-all: ## Build extension with DuckDB metadata (ready to load)
	@echo "Building DuckDB extension for DuckDB $(DUCKDB_VERSION)..."
	@$(ZIG) build build-all $(BUILD_OPTS) \
		-Dduckdb-version=$(DUCKDB_VERSION) \
		-Dextension-version=$(EXTENSION_VERSION) \
		-Dplatform=$(PLATFORM) \
		-j$(JOBS)

rebuild: clean build-all  ## Clean and build with metadata

test: ## Run Zig unit tests
	@echo "Running unit tests..."
	@$(ZIG) build test $(BUILD_OPTS) -j$(JOBS) $(TEST_FLAGS)

test-extension: build-all  ## Test extension loading in DuckDB
	@echo "Testing extension in DuckDB..."
	@$(ZIG) build test-extension \
		-Dduckdb-version=$(DUCKDB_VERSION) \
		-Dextension-version=$(EXTENSION_VERSION) \
		-Dplatform=$(PLATFORM)

release: ## Build in ReleaseFast mode with metadata
	@echo "Building extension in Release mode for DuckDB $(DUCKDB_VERSION)..."
	@$(ZIG) build build-all \
		-Doptimize=ReleaseFast \
		-Dduckdb-version=$(DUCKDB_VERSION) \
		-Dextension-version=$(EXTENSION_VERSION) \
		-Dplatform=$(PLATFORM) \
		-j$(JOBS)

clean: ## Remove build artifacts, cache, and generated docs
	@echo "Removing build artifacts, cache, and junk files..."
	@$(ZIG) build clean
	@rm -rf $(JUNK_FILES) docs/api public

lint: ## Check code style and formatting of Zig files
	@echo "Running code style checks..."
	@$(ZIG) fmt --check $(SRC_DIR)

format: ## Format Zig and C files
	@echo "Formatting Zig files..."
	@$(ZIG) fmt $(SRC_DIR)
	@echo "Formatting C files..."
	@if command -v clang-format &> /dev/null; then \
		find $(SRC_DIR) -name "*.c" -o -name "*.h" | xargs clang-format -i; \
	else \
		echo "clang-format not found, skipping C formatting"; \
	fi

docs: ## Generate API documentation
	@echo "Generating API documentation..."
	@$(ZIG) build docs

serve-docs: docs  ## Serve the generated documentation on a local server
	@echo "Serving API documentation at http://localhost:8000"
	@cd docs/api && python3 -m http.server 8000

duckdb-translate: ## Regenerate Zig bindings from DuckDB C API headers
	@echo "Generating DuckDB Zig bindings..."
	@$(ZIG) build duckdb-translate

duckdb: build-all  ## Start interactive DuckDB with extension loaded
	@echo "Starting DuckDB with extension pre-loaded..."
	@$(ZIG) build duckdb \
		-Dduckdb-version=$(DUCKDB_VERSION) \
		-Dextension-version=$(EXTENSION_VERSION) \
		-Dplatform=$(PLATFORM)

install-deps: ## Install system dependencies (for Debian-based systems)
	@echo "Installing system dependencies..."
	@sudo apt-get update
	@sudo apt-get install -y build-essential python3 python3-pip clang-format
	@echo "Note: Install zig separately or use the version in ~/.local/share/zig/0.15.1/"

# Build for multiple DuckDB versions
.PHONY: build-multi-version
build-multi-version: ## Build for multiple DuckDB versions (v1.2.0 and v1.3.0)
	@echo "Building for DuckDB v1.2.0..."
	@$(MAKE) build-all DUCKDB_VERSION=v1.2.0
	@mv $(BUILD_DIR)/lib/extension.duckdb_extension $(BUILD_DIR)/lib/extension-v1.2.0.duckdb_extension
	@echo "Building for DuckDB v1.3.0..."
	@$(MAKE) build-all DUCKDB_VERSION=v1.3.0
	@mv $(BUILD_DIR)/lib/extension.duckdb_extension $(BUILD_DIR)/lib/extension-v1.3.0.duckdb_extension
	@echo "Done! Extensions built for multiple versions."

