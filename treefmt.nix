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
  };

  settings.global.excludes = [
    "CONTRIBUTORS"
    "LICENSE"
    "Makefile"
    "*.md"
    "*.yaml"
    "*.yml"
    ".gitkeep"
    "configs/*"
    "examples/*"
    "gen/*"
    "lib/*"
  ];
}
