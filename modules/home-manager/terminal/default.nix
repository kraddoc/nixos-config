{ config, pkgs, ... }:

{
  imports = [
    ./ghostty.nix
    ./zellij.nix
  ];
}
