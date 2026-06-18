{ config, pkgs, ... }:

{
  programs.nh = {
    enable = true;

    flake = "/home/nergal/nixos#default";
    
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 5";
  };
}
