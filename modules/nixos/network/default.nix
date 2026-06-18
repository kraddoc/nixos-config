{ config, pkgs, ... }:

{
  imports = [
    ./zapret-discord-youtube.nix
    ./networking.nix
    ./firewall.nix
  ];
}
