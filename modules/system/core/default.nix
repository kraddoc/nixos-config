{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./fonts.nix
    ./hardware.nix
    ./input.nix
    ./locale.nix
    ./nix.nix
    ./packages.nix
    ./services.nix
    ./sound.nix
    ./swapfile.nix
    ./time.nix
    ./users.nix
    ./version.nix
  ];
}
