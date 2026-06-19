{ config, pkgs, ... }:

{
  # Enable fastfetch and install it via Home-Manager
  programs.fastfetch = {
    enable = true;

    # This takes a Nix attribute set that gets converted to JSON
    settings = {
      logo = {
        source = "nixos";
        # Use iterm2 inline images for a smooth logo
        type = "iterm2";
      };

      display = {
        color = {
          keys = "#f5c2e7";      # soft pink
          title = "#f9e2af";     # warm yellow
          separator = "#89b4fa"; # blue
        };
        separator = " » ";
      };

      modules = [
        {
          type = "title";
          format = "{user}@{hostname}";
        }
        {
          type = "separator";
        }
        {
          type = "os";
          key = "OS";
          keyColor = "pink";
        }
        {
          type = "kernel";
          key = "Kernel";
        }
        {
          type = "uptime";
          key = "Uptime";
        }
        {
          type = "packages";
          key = "Packages";
          format = "{count} (nix)";
        }
        {
          type = "shell";
          key = "Shell";
          format = "{name} {version}";
        }
        {
          type = "terminal";
          key = "Terminal";
        }
        {
          type = "cpu";
          key = "CPU";
          format = "{name} ({cores} cores)";
        }
        {
          type = "gpu";
          key = "GPU";
          format = "{name}";
        }
        {
          type = "memory";
          key = "Memory";
          format = "{used} / {total}";
        }
        {
          type = "disk";
          key = "Disk (/home)";
          format = "{used} / {total}";
          path = "/home";
        }
        {
          type = "separator";
        }
        {
          type = "custom";
          key = "NixOS";
          format = "❄️  Flakes + Home-Manager";
          keyColor = "blue";
        }
      ];
    };
  };

  # We still need chafa for image rendering (if you want it)
  home.packages = with pkgs; [
    # chafa
  ];
}
