{ config, pkgs, ... }:

{
  imports = [
    ./zen/default.nix
    ./telegram.nix
  ];
}
