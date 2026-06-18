{ config, pkgs, ... }:

{
  imports = [
    ./core/default.nix
    ./network/default.nix
  ];
}
