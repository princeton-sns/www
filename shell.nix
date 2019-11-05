
{ pkgs ? import <nixpkgs> {} }:

with pkgs;
stdenv.mkDerivation {
  name = "sns-site";
  buildInputs = [ jekyll ruby bundler ];
}
