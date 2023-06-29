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
    servicesFilepath = ./lib/services;
    serviceNames = builtins.attrNames (builtins.readDir servicesFilepath);
    mkOverride = hself: serviceName: {
      name = serviceName;
      value = hself.callCabal2nix serviceName
         (git-ignore-nix.lib.gitignoreSource servicesFilepath + ("/" + serviceName)) { };
    };
    hoverlay = final: prev: hself: hsuper: (builtins.listToAttrs (map (mkOverride hself) serviceNames)) // {
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
    mkPackage = name: {
      name = name;
      value = hpkg.${name};
    };
    allPackages = serviceNames ++ ["gogol" "gogol-core"];
  in
  rec {
    devShell = hpkg.shellFor (modifyDevShell pkgs {
      packages = p: [ p.gogol ];
      nativeBuildInputs = with pkgs; [
        cabal-install
      ];
    });
    packages = builtins.listToAttrs (map mkPackage allPackages);
    defaultPackage = self.packages.${system}.gogol;
  }) // {
    inherit hoverlay overlay;
    overlays = { gogol = overlay; };
  };
}
