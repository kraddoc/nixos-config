{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
    liberation_ttf
    corefonts
    vista-fonts
    nerd-fonts.jetbrains-mono
  ];
}
