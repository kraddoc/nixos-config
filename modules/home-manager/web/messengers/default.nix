{ config, pkgs, ... }:

{
  imports = [
    ./telegram.nix
    ./session.nix
  ];
}
