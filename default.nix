{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  gems = bundlerEnv {
    name = "sns-site";
    inherit ruby;
    gemdir = ./.;
  };

in stdenv.mkDerivation {
  name = "sns-site";
  buildInputs = [ gems ruby ];
  builder = writeText "builder.sh" ''
    source ${stdenv}/setup
    cp -r $src/* .
    jekyll build
    mkdir -p $out
    cp -r _site/* $out/
    '';
  src = ./.;
}
