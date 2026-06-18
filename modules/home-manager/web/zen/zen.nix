{ config, pkgs, inputs, ... }:

{  
  imports = [
    inputs.zen-browser.homeModules.beta
  ];

  # check this for additional configs
  # https://github.com/0xc000022070/zen-browser-flake

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
  };
}
