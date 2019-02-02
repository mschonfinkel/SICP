{ nixpkgs ? import <nixpkgs> {} }:

with nixpkgs;

stdenv.mkDerivation {
  name = "SICP-env";
  buildInputs = [
    guile
  ];
}
