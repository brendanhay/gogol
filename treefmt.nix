
{ pkgs, ... }:
{
  projectRootFile = "flake.nix";

  programs = {
    cabal-fmt.enable = true;
    mdsh.enable = true;
    nixfmt.enable = true;
    ormolu.enable = true;
    shellcheck.enable = true;
    shfmt.enable = true;
    shfmt.indent_size = 4;
  };

  settings.formatter = {
    shfmt = {
      includes = [
        "config/rofi/bin/*"
        "scripts/*"
      ];
    };
  };
}
