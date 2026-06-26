{ config, pkgs, ... }:

{
  imports = [
    ./zen/default.nix
    ./messengers/default.nix
    ./superseedr.nix
  ];
}
