{ config, pkgs, ... }:

{
  imports = [
    ./zsh/default.nix
    ./starship.nix
  ];
}
