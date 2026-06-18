{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      format = "$username$hostname$directory$git_branch$git_status$cmd_duration$line_break$character";

      add_newline = true;

      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[✗](bold red)";
        vicmd_symbol = "[❮](bold purple)";
      };

      username = {
        show_always = true;
        style_user = "blue bold";
        style_root = "red bold";
        format = "[$user]($style)";
        disabled = false;
      };

      hostname = {
        ssh_only = false;
        ssh_symbol = "🌏";
        format = "[@$ssh_symbol$hostname](bold blue) ";
        disabled = false;
      };

      # --- Directory ---
      directory = {
        truncation_length = 3;
        truncation_symbol = "…/";
        style = "bold cyan";
        format = "in [$path]($style) ";
      };

      # --- Git ---
      git_branch = {
        symbol = " ";
        style = "bold purple";
        format = "on [$symbol$branch]( $style) ";
      };

      git_status = {
        style = "bold yellow";
        format = "([$all_status$ahead_behind]( $style)) ";
        conflicted = "🏴";
        ahead = "⇡$count";
        behind = "⇣$count";
        diverged = "⇡$ahead_count⇣$behind_count";
        up_to_date = "✓";
        untracked = "?";
        stashed = "$";
        modified = "!";
        staged = "+";
        renamed = "»";
        deleted = "✘";
      };

      # --- Command duration (only show if > 2 sec) ---
      cmd_duration = {
        min_time = 2000;
        format = "took [$duration](bold yellow) ";
      };

      # --- Line break before prompt ---
      line_break = {
        disabled = false;
      };
    };
  };
}
