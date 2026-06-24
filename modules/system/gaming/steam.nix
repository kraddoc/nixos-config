{ config, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };
  
  # proton settings
  environment.systemPackages = with pkgs ; [
    protonplus
  ];

  programs.gamemode.enable = true;
  programs.gamescope.enable = true;
}
