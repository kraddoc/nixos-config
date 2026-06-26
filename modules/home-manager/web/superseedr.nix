{ config, pkgs, inputs, ... }:

{  
  imports = [
    inputs.superseedr.homeManagerModules.default
  ];

  programs.superseedr.enable = true;
}
