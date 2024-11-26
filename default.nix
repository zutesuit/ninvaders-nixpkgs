{
  pkgs ? import <nixpkgs> {}
}:

let
  callPackage = pkgs.lib.callPackageWith pkgs;

in
{
  inherit pkgs;

  # Add your custom packages here:
  games = {
    ninvaders = callPackage ./package.nix {};
  };
}
