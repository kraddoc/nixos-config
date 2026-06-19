{ config, pkgs, lib, ... }:

{
  programs.zsh.initContent = lib.mkOrder 1000 ''
    # Quick git add, commit, and push
    gacp() {
      if [ -z "$1" ]; then
        echo "Usage: gacp \"Your commit message here\""
        return 1
      fi
      git add .
      git commit -m "$1"
      git push
    }

    # Quick git add and commit (without push)
    gac() {
      if [ -z "$1" ]; then
        echo "Usage: gac \"Your commit message here\""
        return 1
      fi
      git add .
      git commit -m "$1"
    }
    
    # Display the cheatsheet, optionally search with fzf
    cheat() {
      local cheatsheet="$HOME/.config/cheatsheet.md"
      if [ ! -f "$cheatsheet" ]; then
        echo "Cheatsheet not found at $cheatsheet"
        return 1
      fi

      if [ "$1" = "-s" ] || [ "$1" = "--search" ]; then
        # Search mode: use fzf to filter lines (exclude section headers if you like)
        bat "$cheatsheet" | fzf --preview 'echo {}' --preview-window=up:3 --height=20%
      else
        # Display mode: use bat if available, else cat
        if command -v bat &> /dev/null; then
          bat --style=plain --color=always "$cheatsheet"
        else
          cat "$cheatsheet"
        fi
      fi
    }
    '';
}
