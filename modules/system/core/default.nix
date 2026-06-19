{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./fonts.nix
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
    ./zsh.nix
  ];
}
