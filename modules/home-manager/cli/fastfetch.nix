{ config, pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          right = 2;
          left = 1;
          top = 1;
        };
        type = "auto"; 
      };

      display = {
        separator = " ";
      };

      modules = [
        {
          type = "title";
          format = "{user-name-colored}❄️{host-name-colored}";
          outputColor = "cyan";
        }
        {
          type = "custom";
          key = "  ";
        }
        {
          type = "os";
          key = "╭󱄅 »";
          format = "{pretty-name}";
        }
        {
          type = "kernel";
          key = "├ »";
        }
        {
          type = "uptime";
          key = "╰ »";
        }
        {
          type = "custom";
          key = "  ";
        }
        { 
          type = "wm";
          key = "╭ »";
          format = "{pretty-name}";
        }
        {
          type = "shell";
          key = "├ »";
          format = "{pretty-name}";
        }
        {
          type = "terminal";
          key = "├ »";
          format = "{pretty-name}";
        }
        {
          type = "packages";
          key = "╰ »";
        }
        {
          type = "custom";
          key = "  ";
        }
        {
          type = "cpu";
          key = "╭ »";
          format = "{name}";
        }
        {
          type = "gpu";
          key = "├󰮃 »";
          format = "{name}";
        }
        {
          type = "memory";
          key = "├ »";
          format = "{used}/{total}";
        }
        {
          type = "disk";
          key = "├󰋊 »";
          format = "{size-used}/{size-total}";
        }
        {
          type = "monitor";
          key = "╰󰍹 »";
          format = "{width}x{height} px @ {refresh-rate} Hz";
        }
        {
          type = "custom";
          key = "  ";
        }
        {
          type = "media";
          key = "";
          player = "spotify";
          format = "{combined}";
          keyColor = "green";
        }
      ];
    };
  };

  # chafa is still needed for image rendering if you use 'auto' or 'iterm2'
  # home.packages = with pkgs; [ chafa ];
}
