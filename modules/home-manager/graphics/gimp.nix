{ config, pkgs, inputs, ... }:

{
  home.packages = [
    pkgs.gimp-with-plugins
  ];
}
