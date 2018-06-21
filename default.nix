{ pkgs ? import ./pkgs.nix }:

let nodejs = pkgs.nodejs-10_x;
    nodePackages = pkgs.nodePackages.override { inherit nodejs; };
    yarn = pkgs.yarn.override { inherit nodejs; };
in pkgs.stdenv.mkDerivation {
  name = "hello-purescript";
  src = ./.;
  buildInputs = [
    pkgs.purescript
    pkgs.psc-package
    nodePackages.bower
#    pkgs.nodePackages.pulp
    yarn
    nodejs
  ];
  buildPhase = ''
  '';
  checkPhase = ''
  '';
  installPhase = ''
  '';
}
