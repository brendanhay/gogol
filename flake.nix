{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/haskell-updates";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let

        pkgs = nixpkgs.legacyPackages.${system};

      in
      {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            # ormolu > 4.0 required due to gogol-gen using OverloadedRecordDot.
            # haskellPackages.ormolu

            # cabal-fmt isn't in top-level nixpkgs and doesn't build with ghc921.
            haskellPackages.cabal-fmt

            nixpkgs-fmt
            parallel
            shellcheck
            shfmt
            stack
          ];
        };
      });
}
