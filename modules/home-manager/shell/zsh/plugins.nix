{ config, pkgs, ... }:

{
  programs.zsh.antidote = {
    enable = true;
    plugins = [ ''
      zsh-users/zsh-autosuggestions
      zsh-users/zsh-syntax-highlighting
      zsh-users/zsh-completions
      zsh-users/zsh-history-substring-search
      MichaelAquilina/zsh-auto-notify
      hlissner/zsh-autopair
    ''];
  };
}
