{ config, pkgs, ... }:

{
  imports = [
    ./nh.nix
    ./git.nix
    ./utility.nix
  ];
}
