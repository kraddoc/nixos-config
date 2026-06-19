{ config, pkgs, ... }:

{
  programs.zellij = {
    enable = true;
    # enableZshIntegration = true; - using my own zsh startup
    # attachExistingSession = true;
  };
}
