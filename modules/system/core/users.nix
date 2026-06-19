{ config, pkgs, ... }:

{
  users.users."nergal" = {
    isNormalUser = true;
    description = "nergal";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}
