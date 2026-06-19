{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    procs # process viewer
    duf # disk usage viewer
  ];
  
  programs = {
    bottom = {
      enable = true;
      settings = {
        rate = "1s";
        temperature_type = "c";
      };
    };
    
    eza = {
      enable = true;
      enableZshIntegration = true;
      git = true;
      icons = "auto";
      extraOptions = [
        "--group-directories-first"
        "--header"
      ];
    };
    
    zoxide.enable = true;
    zoxide.enableZshIntegration = true;
    
    fzf.enable = true;
    fzf.enableZshIntegration = true;
    
    bat.enable = true;
  };
}
