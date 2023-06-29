pkgs: devInputs: devInputs // {
  nativeBuildInputs = with pkgs; with pkgs.haskellPackages;
  [
    cabal-install
    haskellPackages.cabal-fmt
    nixpkgs-fmt
    ormolu
    parallel
    shellcheck
    shfmt
    stack
  ];
}
