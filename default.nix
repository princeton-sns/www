{ devel ? false }:

let pkgs = import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixpkgs-25.05";
  url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/25.05.tar.gz";
}) {};
in with pkgs;
let
  gitignoreSource = (
    import (
      pkgs.fetchFromGitHub {
        owner = "hercules-ci";
        repo = "gitignore.nix";
        rev = "9e21c80adf67ebcb077d75bd5e7d724d21eeafd6";
        sha256 = "sha256-vky6VPK1n1od6vXbqzOXnekrQpTL4hbPAwUhT5J9c9E=";
      }
    ) {
      inherit (pkgs) lib;
    }
  ).gitignoreSource;

  gems = bundlerEnv {
    name = "sns-site-gems";
    ruby = ruby_3_2;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };

in stdenv.mkDerivation {
  name = "amitlevy-www";
  buildInputs = [ gems ruby_3_2 ] ++ (lib.optional devel rubyPackages_3_2.webrick);
  builder = writeText "builder.sh" ''
    source ${stdenv}/setup
    cp -r $src/* .
    JEKYLL_ENV=production jekyll build
    mkdir -p $out
    cp -r _site/* $out/
    '';
  src = gitignoreSource ./.;
}
