{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";
    flake-utils.url = "github:numtide/flake-utils";
    git-ignore-nix.url = github:hercules-ci/gitignore.nix/master;
    xmonad.url = github:xmonad/xmonad;
  };
    outputs = { self, flake-utils, nixpkgs, git-ignore-nix, xmonad }:
  with xmonad.lib;
  let
    hoverlay = final: prev: hself: hsuper: {
      gogol = hself.callCabal2nix "gogol"
         (git-ignore-nix.lib.gitignoreSource ./lib/gogol) { };
      gogol-core = hself.callCabal2nix "gogol-core"
        (git-ignore-nix.lib.gitignoreSource ./lib/gogol-core) { };
    };
    defComp = if builtins.pathExists ./comp.nix
      then import ./comp.nix
      else { };
    overlay = fromHOL hoverlay defComp;
    overlays = [ overlay ];
  in flake-utils.lib.eachDefaultSystem (system:
  let
    pkgs = import nixpkgs { inherit system overlays; };
    hpkg = pkgs.lib.attrsets.getAttrFromPath (hpath defComp) pkgs;
    modifyDevShell =
      if builtins.pathExists ./develop.nix
      then import ./develop.nix
      else import ./default-develop.nix;
  in
  rec {
    devShell = hpkg.shellFor (modifyDevShell pkgs {
      packages = p: [ p.gogol ];
      nativeBuildInputs = with pkgs; [
        cabal-install
      ];
    });
    defaultPackage = hpkg.gogol;
  }) // { inherit hoverlay overlay overlays nixosModule nixosModules; } ;
}
