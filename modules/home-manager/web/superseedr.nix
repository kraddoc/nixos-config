{ config, pkgs, inputs, ... }:

{  
  imports = [
    superseedr.homeManagerModules.default
  ];

  programs.superseedr.enable = true;
}
