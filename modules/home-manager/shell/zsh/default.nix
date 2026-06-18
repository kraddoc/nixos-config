{ config, pkgs, ... }:

{
  imports = [
    ./core.nix
    ./aliases.nix
    ./history.nix
    ./plugins.nix
  ];
}
