{
  nixConfig = {
    # For `nix build` stack should download packages directly from Stackage and bypass Nix.
    # See: https://zimbatm.com/notes/nix-packaging-the-heretic-way
    sandbox = "relaxed";
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      treefmt-nix,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        treefmt = treefmt-nix.lib.evalModule pkgs ./treefmt.nix;

        # Adapted from https://www.tweag.io/blog/2022-06-02-haskell-stack-nix-shell/
        stack-wrapped = pkgs.symlinkJoin {
          name = "stack";
          paths = [ pkgs.stack ];
          buildInputs = [ pkgs.makeWrapper ];
          postBuild = ''
            wrapProgram $out/bin/stack \
                --add-flags "\
                    --no-nix \
                    --no-install-ghc \
                    --system-ghc \
                "
          '';
        };

        # Set of build inputs for any Haskell libraries that will be built by stack.
        buildInputs = [
          pkgs.pkg-config
          pkgs.icu
          pkgs.zlib
        ];

        # Create a nix expression to build the project for the specified GHC version.
        mkProject =
          haskellPackages:
          let
            ghc = haskellPackages.ghc;
          in

          pkgs.haskell.lib.buildStackProject {
            inherit ghc buildInputs;
            name = "gogol-${ghc.version}";
            src = ./.;
            stack = stack-wrapped;

            STACK_YAML = "stack-${ghc.version}.yaml";
          };

        # Create a nix shell used for developing the project using the specified GHC version.
        mkShell =
          haskellPackages:
          let
            ghc = haskellPackages.ghc;
          in
          pkgs.mkShell {
            inherit buildInputs;
            name = "gogol-${ghc.version}";
            nativeBuildInputs = [
              ghc
              haskellPackages.cabal-fmt
              haskellPackages.ormolu

              pkgs.shellcheck
              pkgs.shfmt

              stack-wrapped
            ];

            LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
            NIX_PATH = "nixpkgs=" + pkgs.path;
            STACK_YAML = "stack-${ghc.version}.yaml";
          };

        # GHC version can be discovered via:
        #
        # ```
        # $ nix repl
        # nix-repl> :load-flake nixpkgs
        # nix-repl> legacyPackages.x86_64-linux.haskell.packages.<TAB>
        # ```
        ghc910Packages = pkgs.haskell.packages.ghc910;
        ghc966Packages = pkgs.haskell.packages.ghc966;
      in
      {
        # `nix build` for the 'default' package, or `nix build .#<package-name>`.
        packages = rec {
          default = ghc910;
          ghc910 = mkProject ghc910Packages;
          ghc966 = mkProject ghc966Packages;
          gen = ghc966.overrideAttrs (
            _finalAttrs: _prevAttrs: {
              name = "gogol-gen";
              STACK_YAML = "gen/stack.yaml";
            }
          );
        };

        # `nix develop` for the 'default' package, or `nix develop .#<shell-name>`
        devShells = rec {
          default = ghc910;
          ghc910 = mkShell ghc910Packages;
          ghc966 = mkShell ghc966Packages;
          gen = ghc966.overrideAttrs (
            _finalAttrs: _prevAttrs: {
              name = "gogol-gen";
              STACK_YAML = "gen/stack.yaml";
            }
          );
        };

        # `nix fmt` to format the entire repository.
        formatter = treefmt.config.build.wrapper;

        # `nix flake check`.
        checks.formatter = treefmt.config.build.check self;
      }
    );
}
