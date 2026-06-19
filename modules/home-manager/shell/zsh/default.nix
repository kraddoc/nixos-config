{ config, pkgs, ... }:

{
  imports = [
    ./core.nix
    ./aliases.nix
    ./functions.nix
    ./history.nix
    ./plugins.nix
  ];
}
