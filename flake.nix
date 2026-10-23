{
  description = "A template for creating DuckDB extensions in Zig";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

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
              zig_0_17
              gnumake
              python3
              clang-tools
              duckdb
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
            src = ./.;
            nativeBuildInputs = [ pkgs.zig_0_17 pkgs.gnumake pkgs.python3 ];
            dontConfigure = true;
            dontStrip = true;
            dontPatchELF = true;

            buildPhase = ''
              runHook preBuild
              export ZIG_GLOBAL_CACHE_DIR=$(mktemp -d)
              # Use the `release` target rather than `build-all`, because a packaged artifact should be
              # optimized; `build-all` leaves the build.zig default of Debug in place.
              # SHELL is overridden because the Makefile points it at /usr/bin/env, which does not exist
              # in the Nix build sandbox. ZIG is passed explicitly so the Makefile does not have to
              # resolve it with `which`.
              make release \
                SHELL=${pkgs.bash}/bin/bash \
                ZIG=${pkgs.zig_0_17}/bin/zig \
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
