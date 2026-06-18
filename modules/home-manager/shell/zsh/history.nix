{ config, pkgs, ... }:

{
  programs.zsh.history = {
    size = 10000;
    path = "$HOME/.cache/.zsh_history";
    ignorePatterns = ["rm *" "pkill *" "cp *"];
    append = true;
    extended = true;
    ignoreAllDups = true;
  };
}
