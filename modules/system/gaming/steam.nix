{ config, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    extraCombatPackages = with pkgs; [
      proton-ge-bin
      
    ];
  };
  programs.gamemode.enable = true;
}
