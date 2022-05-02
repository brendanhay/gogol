{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let

        pkgs = nixpkgs.legacyPackages.${system};

        ghc = pkgs.haskell.packages.ghc922.ghcWithPackages (hs: [
          hs.zlib
          hs.cabal-install
          hs.ormolu
        ]);

      in
      {
        devShell = pkgs.mkShell {
          nativeBuildInputs = [
            ghc
            pkgs.git
            pkgs.haskellPackages.cabal-fmt
            pkgs.nixpkgs-fmt
            pkgs.parallel
            pkgs.shellcheck
            pkgs.shfmt
          ];
        };
      });
}
