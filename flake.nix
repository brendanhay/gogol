{
  nixConfig = {
    # For `nix build` stack should download packages directly from stackage and bypass nix.
    # See: https://zimbatm.com/notes/nix-packaging-the-heretic-way
    sandbox = "relaxed";

    # The public build cache which is populated by successful GitHub Action runs.
    # See: https://app.cachix.org/cache/gogol#pull
    extra-substituters = [ "https://gogol.cachix.org" ];
    extra-trusted-public-keys = [ "gogol.cachix.org-1:SaJ8mHVUCv4mXLskv46OTBvmE68IgIPtMnc1jlxD09Q=" ];
  };

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      treefmt-nix,
    }:
    let
      # Setup the various formatter's configuration.
      mkFormatter =
        pkgs:
        treefmt-nix.lib.evalModule pkgs (
          { ... }:
          {
            projectRootFile = "flake.nix";

            programs = {
              cabal-fmt.enable = true;
              nixfmt.enable = true;
              ormolu.enable = true;
              shellcheck.enable = true;
              shfmt.enable = true;
              shfmt.indent_size = 4;
              yamlfmt.enable = true;
              yamlfmt.settings.retain_line_breaks_single = true;
            };

            settings = {
              global.excludes = [
                "CONTRIBUTORS"
                ".github/**.yml"
                "configs/*"
                "**LICENSE"
                "**Makefile"
                "**.gitkeep"
                "*.lhs"
                "*.md"
              ];

              formatter = {
                cabal-fmt.options = [ "--indent=2" ];
              };
            };
          }
        );

      # Create a nix shell for developing the project using the specified GHC version.
      mkShell =
        pkgs: ghcVersion:
        let
          haskellPackages = pkgs.haskell.packages.${ghcVersion};
          ghc = haskellPackages.ghc;

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
        in
        pkgs.mkShell rec {
          name = "gogol-${ghcVersion}-shell";

          # Build inputs required by Haskell libraries built by stack. This corresponds to
          # the total set of Cabal's `build-depends` fields in the package set.
          buildInputs = [
            pkgs.pkg-config
            pkgs.icu
            pkgs.zlib
          ];

          # Tools to make available in the shell.
          nativeBuildInputs = [
            # Tools specific to the GHC version.
            ghc
            haskellPackages.haskell-language-server

            # The stack wrapper that uses the shell's GHC version.
            stack-wrapped

            # Haskell tools that are not tied to the GHC version above.
            pkgs.haskellPackages.cabal-fmt
            pkgs.haskellPackages.hlint
            pkgs.haskellPackages.ormolu

            # Generic tools used by the shell.
            pkgs.cachix
            pkgs.ncurses
          ];

          # The following environment variables is so `stack` builds within the shell
          # matches buildStackProject's behavior.
          #
          # See: https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/haskell-modules/generic-stack-builder.nix

          # Set the implicit stack.yaml to use.
          STACK_YAML = "stack-${ghcVersion}.yaml";

          # Non-NixOS git needs certificate bundle.
          GIT_SSL_CAINFO = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";

          # Fixes https://github.com/commercialhaskell/stack/issues/2358.
          LANG = "en_US.UTF-8";

          # Workaround for https://ghc.haskell.org/trac/ghc/ticket/11042.
          LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;

          # Convenience so `nix-env` works with the current shell's package set.
          NIX_PATH = "nixpkgs=" + pkgs.path;

          # Announce GHC version and STACK_YAML being used when entering the nix shell.
          shellHook = ''
            bold() {
                tput bold
                printf "$@"
                tput sgr0
            }

            printf >&2 'Using %s with %s\n' "$(bold 'GHC ${ghc.version}')" "$(bold $STACK_YAML)"
          '';
        };

      # Create the system-specific flake outputs by running a function per supported system.
      forAllSystems =
        f:
        nixpkgs.lib.genAttrs [
          "x86_64-linux"
          "x86_64-darwin"
          "aarch64-linux"
          "aarch64-darwin"
        ] (system: f nixpkgs.legacyPackages.${system});
    in
    {
      # `nix develop` for the 'default' shell, or `nix develop .#<ghcVersion>` for a specific GHC version.
      #
      # Available GHC versions can be discovered via:
      #   ```
      #   $ nix repl
      #   nix-repl> :load-flake nixpkgs
      #   nix-repl> legacyPackages.x86_64-linux.haskell.packages.<TAB>
      #   ```
      devShells = forAllSystems (pkgs: rec {
        default = ghc910;
        ghc910 = mkShell pkgs "ghc910";
        ghc984 = mkShell pkgs "ghc984";
        ghc966 = mkShell pkgs "ghc966";
      });

      # `nix fmt` to format the entire repository.
      formatter = forAllSystems (pkgs: (mkFormatter pkgs).config.build.wrapper);

      # `nix flake check`.
      checks = {
        formatter = forAllSystems (pkgs: (mkFormatter pkgs).config.build.check self);
      };
    };
}
