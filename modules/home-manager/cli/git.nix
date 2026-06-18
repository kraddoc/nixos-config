{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    
    settings = {
      user.email = "kraddoc";
      user.name = "kraddoc@crawwingmail.anonaddy.me";
      
      init.defaultBranch = "main";
      pull.rebase = true;
      rebase.autosquash = true;
      push.autoSetupRemote = true;
    };
  };
}
