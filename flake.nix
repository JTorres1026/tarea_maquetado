{
  description = "A flake for cypress";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }@inputs:
    flake-utils.lib.eachSystem [ "x86_64-darwin" "aarch64-darwin" "x86_64-linux" "aarch64-linux" ] (
      system:
      let
        pkgs = import nixpkgs { inherit system; };

        devPackages = with nixpkgs; [
          
          pkgs.nodejs
          pkgs.pnpm
          pkgs.nodePackages.prettier
         
        ];

        postShellHook = '''';
      in
      {

        devShells = {
          default = pkgs.mkShell {
           
            name = "cypress-testing";
            packages = devPackages;
            postShellHook = postShellHook;
          };
        };
      }
    );
}
