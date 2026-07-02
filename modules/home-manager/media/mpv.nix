{ config, pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    # --- Package Configuration ---
    # Use the unwrapped mpv to customize support for different systems
    package = (pkgs.mpv-unwrapped.wrapper {
      # Add scripts from nixpkgs
      scripts = with pkgs.mpvScripts; [ 
        sponsorblock-minimal 
        modernz
        builtins.autoload
        dynamic-crop # shift+c to toggle mode
      ];
      
      # Override the base mpv package to enable specific features
      mpv = pkgs.mpv-unwrapped.override {
        waylandSupport = true;
        pipewireSupport = true; 
        
        vaapiSupport = true;    # For Intel/AMD GPUs

        bluraySupport = true; 
        cddaSupport = false; 
        dvdnavSupport = false; 
        openalSupport = false;
        sdl2Support = true;
        javascriptSupport = false;
        archiveSupport = false;
        zimgSupport = false;
      };
    });

    config = {
      profile = "high-quality";
      
      ytdl-format = "bestvideo+bestaudio";
      
      cache-default = 4000000;
      
      hwdec = "auto-safe";
      
      ontop = false;
      
      save-position-on-quit = false;
      
      # Video settings
      video-sync = "display-resample";
      interpolation = true;
      tscale = "oversample";
      
      # Audio settings
      audio-device = "auto";
      audio-channels = "stereo";
      volume = 100;
      volume-max = 150;
      
      # Subtitles
      sub-auto = "fuzzy";
      sub-file-paths = "subs";
      slang = "en,eng,ru,rus";
      
      # Screenshots
      screenshot-format = "png";
      screenshot-template = "mpv-%F_%T";
      screenshot-directory = "$HOME/Pictures/Screenshots/MPV"
      
      # OSD and interface
      osd-level = 1;
      osd-duration = 2000;
      osd-font-size = 24;
      
      # Window settings
      keepaspect-window = true;
      keep-open = "always";
      border = true;
      title = "mpv";
      
      # Performance
      demuxer-max-bytes = 400M;
      demuxer-max-back-bytes = 200M;
      
      # Allow remote control via IPC
      input-ipc-server = "/tmp/mpvsocket";
    };
  };
}
