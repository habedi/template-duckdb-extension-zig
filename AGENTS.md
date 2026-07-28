# AGENTS.md

This file provides guidance to coding agents collaborating on this repository.

## Mission

This repository is a template for building DuckDB extensions in Zig.
It is a starting point that other projects copy, rename, and extend, so its value comes from staying small,
buildable, and easy to understand.

It has three thin layers:

1. A C entry point (`src/extension.c`) that uses the DuckDB C extension API to register SQL functions.
2. Zig code (`src/lib.zig`) that implements logic and exports it with the C calling convention.
3. A Zig build system (`build.zig`, wrapped by `Makefile`) that compiles the shared library, appends DuckDB extension
   metadata, and cross-compiles for every supported platform.

Priorities, in order:

1. The template builds, loads into DuckDB, and passes its smoke test on every supported platform.
2. Compatibility with DuckDB 1.2.0 and later through Extension API `v1.2.0`.
3. Minimalism, so that users can read the whole template quickly and replace the example functions with their own.
4. Documentation that matches the build system, since `README.md` is the primary interface for template users.

## Core Rules

- Use English for code, comments, docs, tests, and commit messages.
- Prefer focused fixes over broad refactoring.
- Keep the template minimal. Do not add example functions, abstractions, or dependencies that a template user would have
  to delete.
- Treat `src/duckdb.zig` as generated code. If the DuckDB C API headers change, regenerate it with
  `make duckdb-translate`.
- Do not edit vendored code under `external/`. That directory is the `duckdb/extension-template-c` Git submodule.
- Do not raise `EXTENSION_API_VERSION` above `v1.2.0` without a stated reason, because a higher API version narrows the
  range of DuckDB versions that can load the built extension.
- Keep the extension name configurable. Nothing outside the default value should hardcode `extension` as the name.
- Keep `README.md`, `Makefile`, and `build.zig` consistent with each other. A documented command must exist, and an
  existing command should be documented.
- Do not add new dependencies, network behavior, or background processes unless the requirement clearly calls for them.

## Writing Style

- Use Oxford commas in inline lists: "a, b, and c" not "a, b, c".
- Do not use em dashes. Restructure the sentence, or use a colon or semicolon instead.
- Avoid colorful adjectives, adverbs, and pretentious language. Write "build step" not "blazing build step".
- Prefer noun phrases for checklist items over imperative verbs. Write "metadata step verification" not "verify the
  metadata step".
- Headings in Markdown files must be in title case: "Build from Source" not "Build from source". Minor words
  (a, an, the, and, but, or, for, in, on, at, to, by, of) stay lowercase unless they are the first word.
- Do not bold the lead-in of a list item. Write "Cross-compilation targets: ..." not
  "**Cross-compilation targets**: ...".
- Use sentence case for the lead-in of a list item. Write "Platform detection: ..." not "Platform Detection: ...".
  Proper nouns keep their capitals.
- Capitalize only the first part of a hyphenated compound: "Cross-platform Builds" in a heading, "Cross-compiled" at the
  start of a sentence, and "cross-platform builds" elsewhere. Never write "Cross-Platform".
- Start each sentence with a capital letter, capitalize proper nouns (Zig, DuckDB, Python, GNU Make), and leave common
  nouns lowercase in the middle of a sentence.
- Write correct and complete sentences.
- Avoid made-up words.
- Do not use a colon in place of a verb. Three uses are fine: joining two clauses inside a complete sentence (the
  replacement the em-dash rule above calls for), introducing the gloss of a list item, and introducing an enumeration,
  whether as a list or inline ("Steps: `build-all`, `test-extension`, ..."). What a colon must not do is turn a sentence
  into a label and a definition: write "Appends the DuckDB metadata, then writes the loadable extension file" rather
  than "Metadata step: appends the DuckDB metadata". That shape belongs to a list item, and carrying it into prose (a
  doc comment summary, a paragraph) leaves a fragment where a sentence was required.
- Use participial phrases and abbreviations scarcely.

## Repository Layout

- `build.zig`: Zig build script. It defines the library artifact, build options, platform detection, and every build
  step (`test`, `clean`, `add-metadata`, `build-all`, `test-extension`, `duckdb`, `duckdb-translate`, and `docs`).
- `Makefile`: GNU Make wrapper around `zig build` that adds cross-compilation targets, formatting, and Git hook setup.
- `src/extension.c`: C entry point. It declares the DuckDB API with `DUCKDB_EXTENSION_EXTERN` and registers the SQL
  functions inside `DUCKDB_EXTENSION_ENTRYPOINT`.
- `src/lib.zig`: Zig implementation exported to C. Currently `zig_add_numbers`.
- `src/lib_test.zig`: Zig unit tests. It is a separate root so tests run without the DuckDB runtime.
- `src/duckdb.zig`: Zig bindings translated from the DuckDB C API headers, exposed as the `duckdb` module.
- `external/extension-template-c/`: Git submodule providing `duckdb_capi` headers and the `extension-ci-tools` scripts.
- `.github/workflows/builds.yml`: Cross-platform builds with a load smoke test and artifact upload.
- `.github/workflows/tests.yml`: Zig unit tests through `make test`.
- `.github/workflows/docs.yml`: API documentation publishing to GitHub Pages on tags.
- `flake.nix` and `flake.lock`: Nix development shell and a package build for the extension.
- `.pre-commit-config.yaml`: Formatting on `pre-commit` and tests on `pre-push`.
- `pyproject.toml`: Python environment used only for development tooling such as `pre-commit`.
- `tmp/`: Scratch copies of reference projects. Not source, and not something to modify or build.

## Architecture Notes

### C Layer

`src/extension.c` owns everything that talks to DuckDB: scalar function creation, logical types, parameter and return
types, validity mask handling, registration, and error reporting through `access->set_error`.
The template registers two functions, `add_numbers_zig(bigint, bigint)` returning `bigint`, and `extension_version()`
returning `varchar`.

Because the extension is built against the C extension API, DuckDB symbols are resolved at load time.
`build.zig` sets `linker_allow_shlib_undefined = true` for that reason, so undefined DuckDB symbols in the built library
are expected and not a build error.

### Zig Layer

Zig functions that C calls must be `pub export` with `callconv(.c)` and use C ABI compatible types.
Keep DuckDB vector access in the C layer and keep the Zig layer free of DuckDB types, so that Zig logic stays testable
without the DuckDB runtime.

If Zig code needs the DuckDB C API directly, import the `duckdb` module defined in `build.zig` rather than declaring
`extern` signatures by hand.

### Build Integration

`zig build` produces a plain shared library (`libextension.so`, `libextension.dylib`, or `extension.dll`).
That file is not loadable by DuckDB on its own.
The `add-metadata` step runs `external/extension-template-c/extension-ci-tools/scripts/append_extension_metadata.py`,
which appends the extension name, extension version, platform, and API version, and writes
`zig-out/lib/<extension-name>.duckdb_extension`.
For this reason, `build-all` is the useful build target, `build` alone is not, and Python 3 is a build dependency.

Windows is a special case in two places: the DLL is installed under `bin` rather than `lib`, and it has no `lib` prefix.
`getLibFilename` in `build.zig` handles both.

Cross-compilation targets in the `Makefile` pass `-Dtarget` and `-Dplatform` explicitly, then copy the result into
`zig-out/lib/<platform>/`.
The `-Dplatform` value must be the DuckDB platform string, such as `linux_amd64`, `osx_arm64`, or `windows_amd64`,
not the Zig target triple.
When adding a platform, update `detectPlatform` in `build.zig`, the `Makefile` target, `build-all-platforms`, and
`.github/workflows/builds.yml` together.

### Toolchain

`build.zig` targets Zig 0.16.0, which is the version CI pins and `README.md` documents.
It also builds under 0.15.1 and 0.15.2.

That range works because the C source file, include path, macros, and libc are configured on the module returned by
`b.createModule`, not on the library step returned by `b.addLibrary`.
Zig 0.16.0 removed the `Build.Step.Compile` wrappers for those, including `addCSourceFile`, `addIncludePath`, and
`linkLibC`, while the `Build.Module` methods are identical across all three versions.
Keep the configuration on the module, since moving it back to the library step breaks the 0.16.0 build.

The `Makefile` prefers `$(HOME)/.local/share/zig/0.16.0/zig` when that file exists, and falls back to the `zig` on
`PATH`.
Override it with `make <target> ZIG=/path/to/zig` to check another version.
Zig build API changes between minor versions, so when a `build.zig` step fails to compile, check which Zig version is
running before changing the code.

`nix develop` provides Zig 0.16.0, DuckDB, Python 3, `clang-format`, and `pre-commit`.
It pins `zig_0_16` rather than `zig`, so the shell does not follow nixpkgs when the default Zig moves on.
Inside that shell the `Makefile` still prefers `$(HOME)/.local/share/zig/0.16.0/zig` when it exists, which silently
bypasses the pinned toolchain, so pass `ZIG=$(command -v zig)` to use the version the shell provides.

`nix build` needs the submodules, which a plain flake source does not carry, so run it as `nix build '.?submodules=1'`.
The derivation sets `dontStrip` and `dontPatchELF`, because a DuckDB extension keeps its metadata in a footer after the
ELF image, and both `strip` and `patchelf` rewrite the file and discard that footer.
It also overrides `SHELL`, since the `Makefile` points it at `/usr/bin/env`, which the Nix build sandbox lacks.

## Generated and Derived Files

- `src/duckdb.zig` is generated by `zig translate-c` from the DuckDB C API headers.
- `zig-out/`, `.zig-cache/`, `docs/api/`, and `site/` are build artifacts, not source.
- Do not hand-edit generated artifacts unless the task explicitly requires it, and you explain why.

## Zig Conventions

- Target Zig 0.16.0 as the supported version, and keep `build.zig` building on 0.15.1 and 0.15.2 as well.
- Format with `zig fmt` through `make format`, and check with `make lint`.
- Use 4 space indentation and the line limits in `.editorconfig`.
- Prefer explicit error sets and error unions over panics. Never let a Zig error propagate as a panic across the C
  boundary, because a panic in a loaded extension takes down the DuckDB process.
- Keep exported symbol names stable, since `src/extension.c` forward declares them.

## C Conventions

- Compile against C11, which is the standard set in `build.zig`.
- Format with `clang-format` through `make format`.
- Use the DuckDB C API in `external/extension-template-c/duckdb_capi/duckdb.h` as the reference, not memory of older
  APIs.
- Destroy every DuckDB object you create, including on error paths. Scalar functions and logical types both need their
  matching `duckdb_destroy_*` call.
- Handle validity masks. An input row can be NULL, and the result mask needs
  `duckdb_vector_ensure_validity_writable` before it is written.
- Return `false` from the entry point after calling `access->set_error` when registration fails.

## SQL Conventions

- Write SQL keywords in lowercase everywhere: tests, docs, and examples. Write `select * from t`, not `SELECT * FROM t`.
- Load the extension with `duckdb -unsigned`, since locally built extensions are unsigned.
- Keep user-facing SQL function names and signatures stable unless the task explicitly changes them.

## Required Validation

Run the narrowest relevant checks, then expand if the change crosses layers.

| Area                 | Command                    | Use When                                             |
|----------------------|----------------------------|------------------------------------------------------|
| Formatting           | `make format`              | Any Zig or C code changed                            |
| Format check         | `make lint`                | Any Zig code changed                                 |
| Unit tests           | `make test`                | Zig logic changed                                    |
| Loadable build       | `make build-all`           | C code, `build.zig`, or the metadata step changed     |
| Load smoke test      | `zig build test-extension` | Registration, signatures, or the entry point changed  |
| Interactive check    | `zig build duckdb`         | SQL-facing behavior changed                          |
| Cross-compilation    | `make build-all-platforms` | Platform detection, targets, or linkage changed       |
| Bindings regenerated | `make duckdb-translate`    | The vendored DuckDB C API headers changed            |

Minimum expectations:

- Zig-only logic changes: `make test` and `make lint`.
- C or registration changes: `make build-all` and `zig build test-extension`.
- Build system changes: `make build-all` plus at least one cross-compilation target.
- Documentation changes: no build required, but verify that every command mentioned actually exists.

`zig build test-extension`, `zig build duckdb`, and `make test-sql` need a `duckdb` binary on `PATH` of version 1.2.0 or
later.
If it is missing, say so instead of reporting the check as passed.

## Testing Expectations

- `src/lib_test.zig` holds Zig unit tests and is the right place for logic that does not need DuckDB.
- The load smoke test is the cheapest way to catch registration and metadata regressions, and it is what CI relies on.
- Prefer offline-friendly tests. The only network dependency in CI is the DuckDB CLI download in `builds.yml`.
- If you change the registered SQL surface, extend the smoke test query so a missing or renamed function fails CI.

### Red-green Workflow

For Zig logic in `src/lib.zig`, write the test first and run it before the implementation exists.
`make test` compiles and runs `src/lib_test.zig` in well under a second and needs no DuckDB binary, so there is no cost
argument for skipping the red state.
Confirm that the test fails for the reason you expect, because a test that fails on a compile error has not yet
demonstrated anything about behavior.
Implement, then run `make test` again for the green state.

The C registration layer in `src/extension.c` is exempt from the strict cycle.
Its regressions surface through `zig build test-extension`, which needs a full `build-all` and a `duckdb` binary, and a
failure there is usually a link or metadata error rather than a failing assertion.
The narrower requirement for that layer is to extend the smoke test query in the same commit as the registration change,
so a new function is covered the moment it lands.

Do not delete, skip, or weaken a test to reach green.
If a test blocks a change and the test itself is wrong, fix it as a separate step and say that you did.

## Known Gaps

The `Makefile` currently documents more than the repository provides. Treat these as unimplemented rather than broken
code to work around, and do not present their output as a passing check:

- `test-unit`, `test-property`, and `test-integration` call `zig build` steps that `build.zig` does not define.
- `test-sql` expects `tests/sql/*.sql`, and `bench` expects `benches/run.sh`. Neither directory exists.
- `docs` and `docs-serve` run MkDocs, but there is no `mkdocs.yml`, and `build.zig` has its own `docs` step that emits
  Zig API documentation into `docs/api`. The `docs.yml` workflow publishes `docs/api`, so it depends on the `build.zig`
  behavior, not the MkDocs one.
- The extension version cannot be set through `make`. `make help` names `build.zig.zon` as its source, but that file
  does not exist, and no target references `EXTENSION_VERSION` or passes `-Dextension-version`, even though `README.md`
  documents the variable and `builds.yml` passes it. The metadata therefore always records the `build.zig` default of
  `v0.1.0`. Set it with `zig build build-all -Dextension-version=...` until the `Makefile` forwards it.
- The `Makefile` prefers `$(HOME)/.local/share/zig/0.16.0/zig` over the `zig` on `PATH`, so inside `nix develop` it uses
  the host toolchain instead of the pinned one. See "Toolchain" above.

Note that `duckdb-translate` rewrites `src/duckdb.zig` through a shell redirect, so an interrupted or failing run
truncates the file. Restore it with `git checkout src/duckdb.zig`.

If a task touches one of these, either implement the missing piece or remove the target, and update `README.md` to
match.

## Change Design Checklist

Before coding:

1. Task classification (Zig logic, C registration layer, build system, CI, or docs).
2. Layer boundary check for exported Zig symbols and their C forward declarations.
3. Platform coverage check for `build.zig`, the `Makefile`, and `builds.yml`.
4. Minimalism confirmation, since this is a template that users extend.
5. Failing test selection for any Zig logic change, written and run before the implementation.

Before submitting:

1. Relevant build and test commands pass locally, or any gaps are explicitly called out.
2. Generated files are refreshed if the DuckDB C API headers changed.
3. New or renamed SQL functions are covered by the smoke test and reflected in `README.md`.
4. Documented commands and actual build steps agree.
5. A red state was observed before the implementation for any Zig logic change, and no test was weakened to reach green.

## Commit and PR Hygiene

- Keep commits scoped to one logical change.
- Mention the layer when relevant: for example, "add Zig helper and register it in the C entry point".
- PR descriptions should include:
    1. Behavioral change summary.
    2. Validation runs locally.
    3. Whether the change affects Zig only, the SQL surface, or cross-platform builds.
