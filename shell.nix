{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc822" }:

let
  inherit (nixpkgs) pkgs;

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  drv = haskellPackages.callPackage (import ./numerals.nix) {};

in if pkgs.lib.inNixShell then drv.env else drv
