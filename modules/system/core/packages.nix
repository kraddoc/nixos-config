{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    libnotify
  ];
  
  # Disable default packages:
  environment.defaultPackages = [];
  documentation.doc.enable = false;
  programs.nano.enable = false;
  services.xserver.excludePackages = [ pkgs.xterm ];
}
