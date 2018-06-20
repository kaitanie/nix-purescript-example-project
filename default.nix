{ pkgs ? import ./pkgs.nix }:

pkgs.stdenv.mkDerivation {
  name = "hello-purescript";
  src = ./.;
  buildInputs = [
    pkgs.purescript
    pkgs.psc-package
    pkgs.nodePackages.bower
#    pkgs.nodePackages.pulp
    pkgs.nodePackages.yarn
    pkgs.nodejs-10_x
  ];
  buildPhase = ''
  '';
  checkPhase = ''
  '';
  installPhase = ''
  '';
}
