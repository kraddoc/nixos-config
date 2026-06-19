{ config, pkgs, ... }:

{
  programs.zsh.enable = true;
  
  environment.shellAliases = {
    l = null;
    ls = null;
    run-help = null;
    which-command = null;
  }
}
