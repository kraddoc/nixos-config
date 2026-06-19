{ config, pkgs, ... }:

{
  imports = [
    ./telegram.nix
    ./signal.nix
  ];
}
