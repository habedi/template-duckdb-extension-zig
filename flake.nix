{
  description = "A template for creating DuckDB extensions in Zig";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      # Note: x86_64-darwin is absent because nixpkgs 26.11 dropped support for it, so the shell and the
      # package cannot even evaluate there. This limits the Nix host systems only. Building the extension
      # for Intel macOS still works through `make build-macos-amd64`, which cross-compiles.
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

      # DuckDB platform strings for the extension metadata. They do not match Nix system names.
      # The Makefile leaves PLATFORM empty so build.zig detects it, and passing it here keeps the package
      # independent of that detection.
      duckdbPlatforms = {
        "x86_64-linux" = "linux_amd64";
        "aarch64-linux" = "linux_arm64";
        "aarch64-darwin" = "osx_arm64";
      };
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              # Build. zig_0_16 is pinned rather than zig, so the shell does not drift when nixpkgs
              # moves the default to 0.17.
              zig_0_16
              gnumake

              # Required by append_extension_metadata.py, which the add-metadata step runs
              python3

              # Formatting, for the clang-format half of `make format`
              clang-tools

              # Testing and interactive use
              duckdb

              # Git hooks
              pre-commit
              git
            ];
          };
        }
      );

      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.stdenv.mkDerivation {
            pname = "duckdb-extension-zig";
            version = "0.1.0";

            # Note: the vendored DuckDB headers and the metadata script live in Git submodules under
            # external/, which a plain flake source does not include. Build with
            # `nix build '.?submodules=1'`.
            src = ./.;

            nativeBuildInputs = [ pkgs.zig_0_16 pkgs.gnumake pkgs.python3 ];

            dontConfigure = true;

            # A DuckDB extension carries its metadata in a footer appended after the ELF image. Both
            # patchelf and strip rewrite the file and drop that footer, after which DuckDB rejects the
            # extension with "The metadata at the end of the file is invalid". Neither is needed here,
            # since DuckDB resolves the undefined DuckDB symbols itself at load time.
            dontStrip = true;
            dontPatchELF = true;

            buildPhase = ''
              runHook preBuild
              export ZIG_GLOBAL_CACHE_DIR=$(mktemp -d)
              # SHELL is overridden because the Makefile points it at /usr/bin/env, which does not exist
              # in the Nix build sandbox. ZIG is passed explicitly so the Makefile does not have to
              # resolve it with `which`.
              make build-all \
                SHELL=${pkgs.bash}/bin/bash \
                ZIG=${pkgs.zig_0_16}/bin/zig \
                PLATFORM=${duckdbPlatforms.${system}}
              runHook postBuild
            '';

            installPhase = ''
              runHook preInstall
              mkdir -p $out/lib
              find zig-out/lib -maxdepth 1 -name "*.duckdb_extension" -exec cp {} $out/lib/ \;
              runHook postInstall
            '';

            meta = with pkgs.lib; {
              description = "DuckDB extension built from the Zig template";
              license = licenses.mit;
              platforms = builtins.attrNames duckdbPlatforms;
            };
          };
        }
      );
    };
}
