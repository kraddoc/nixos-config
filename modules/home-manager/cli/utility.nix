{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    procs # process viewer
    dysk # disk usage viewer
    dust # directory disk usage viewer
    sd # sed replacement
  ];
  
  programs = {
    # system monitor
    bottom = {
      enable = true;
      settings = {
        rate = "1s";
        temperature_type = "c";
      };
    };
    
    # ls replacement
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
    
    #cd replacement
    zoxide.enable = true;
    zoxide.enableZshIntegration = true;
    
    # fuzzy finder
    fzf.enable = true;
    fzf.enableZshIntegration = true;
    
    # cat replacement
    bat.enable = true;
    
    # find replacement
    fd.enable = true;
    
    # grep replacement
    ripgrep.enable = true;
    
    # tldr in rust
    tealdeer = {
      enable = true;
      enableAutoUpdates = true;
      settings.compact = true;
      settings.use_pager = true;
      settings.updates = {
        auto_update = true;
        auto_update_interval_hours = 24;
      };
    };
  };
}
