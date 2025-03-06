{
  nixConfig = {
    # For `nix build` stack should download packages directly from stackage and bypass nix.
    # See: https://zimbatm.com/notes/nix-packaging-the-heretic-way
    sandbox = "relaxed";
  };

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    flake-utils = {
      url = "github:numtide/flake-utils";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      treefmt-nix,
      git-hooks,
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

        # Build inputs required by Haskell libraries built by stack. This corresponds to
        # the total set of Cabal's `build-depends` fields in the package set.
        buildInputs = [
          pkgs.pkg-config
          pkgs.icu
          pkgs.zlib
        ];

        # Create a nix derivation to build the project using the specified GHC version.
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

        # Create a nix shell for developing the project using the specified GHC version.
        mkShell =
          haskellPackages:
          let
            ghc = haskellPackages.ghc;
          in
          pkgs.mkShell {
            inherit buildInputs;
            name = "gogol-${ghc.version}";
            nativeBuildInputs = [
              # The GHC version used for development.
              ghc
              haskellPackages.haskell-language-server

              # A stack wrapper that uses the GHC version above.
              stack-wrapped

              # Haskell tools that are not tied to the GHC version above.
              pkgs.haskellPackages.cabal-fmt
              pkgs.haskellPackages.ormolu

              # Generic tools used by the shell.
              pkgs.ncurses
            ];

            shellHook =
              # Setup a git pre-commit hook to ensure the commit files are formatted.
              (git-hooks.lib.${system}.run {
                src = ./.;
                hooks = {
                  treefmt = {
                    enable = true;
                    package = treefmt.config.build.wrapper;
                  };
                };
              }).shellHook
              # Announce GHC version and STACK_YAML being used when entering the nix shell.
              + ''
                bold() {
                    tput bold
                    printf "$@"
                    tput sgr0
                }

                printf >&2 'direnv: using %s with %s\n' "$(bold 'GHC ${ghc.version}')" "$(bold $STACK_YAML)"
              '';

            LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
            NIX_PATH = "nixpkgs=" + pkgs.path;
            STACK_YAML = "stack-${ghc.version}.yaml";
          };

        # Create an attrset by applying `f` to every GHC version's package set.
        #   ```
        #   ghcAttrs (haskellPackages: haskellPackages.ghc) == {
        #     ghc910 = pkgs.haskell.packages.ghc910.ghc;
        #     ...
        #   };
        #   ```
        #
        # Available GHC versions can be discovered via:
        #   ```
        #   $ nix repl
        #   nix-repl> :load-flake nixpkgs
        #   nix-repl> legacyPackages.x86_64-linux.haskell.packages.<TAB>
        #   ```
        ghcAttrs =
          f:
          pkgs.lib.genAttrs [ "ghc910" "ghc984" "ghc966" ] (
            ghcVersion: f pkgs.haskell.packages.${ghcVersion}
          );

        packages = ghcAttrs mkProject;
        devShells = ghcAttrs mkShell;
      in
      {
        # `nix build` for the 'default' package, or `nix build .#<ghcVersion>`.
        packages = packages // {
          default = packages.ghc910;
        };

        # `nix develop` for the 'default' package, or `nix develop .#<ghcVersion>`.
        devShells = devShells // {
          default = devShells.ghc910;
        };

        # `nix fmt` to format the entire repository.
        formatter = treefmt.config.build.wrapper;

        # `nix flake check`.
        checks = {
          formatter = treefmt.config.build.check self;
        };
      }
    );
}
