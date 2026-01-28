{
  description = "React dev environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            nodejs_20      # Node runtime
            nodePackages.npm
            nodePackages.pnpm
            nodePackages.yarn
            typescript     # tsc
            nodePackages.eslint
            nodePackages.prettier
            git
          ];

          shellHook = ''
            echo "⚛️ React dev shell ready"
            echo "Node: $(node -v)"
            echo "npm:  $(npm -v)"
          '';
        };
      });
}
