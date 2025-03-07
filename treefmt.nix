{ pkgs, ... }:

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
  };

  settings = {
    global.excludes = [
      "CONTRIBUTORS"
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
