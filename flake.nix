{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let

        pkgs = nixpkgs.legacyPackages.${system};

      in {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            nixpkgs-fmt
            ormolu
            shellcheck
            shfmt
            stack
          ];
        };
      });
}

