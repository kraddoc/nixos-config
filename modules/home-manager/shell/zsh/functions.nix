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
    
    # Smart Zellij attach with ripgrep and fzf picker
    zattach() {
      if [ -z "$ZELLIJ" ]; then
        sessions=$(zellij list-sessions -rns 2>/dev/null)
        if [ -n "$sessions" ]; then
          if echo "$sessions" | wc -l | rg -q '^1$'; then
            zellij attach -c
          else
            chosen=$(echo "$sessions" | fzf --prompt="Select Zellij session: " --height=10)
            if [ -n "$chosen" ]; then
              zellij attach -c "$chosen"
            else
              zellij
            fi
          fi
        else
          zellij
        fi
      fi
    }
    '';
}
