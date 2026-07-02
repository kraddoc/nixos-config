{ config, pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    package = pkgs.mpv.override {
      mpv-unwrapped = pkgs.mpv-unwrapped.override {
        waylandSupport = true;
        x11Support = false;
        pipewireSupport = true;
        pulseSupport = false;
        vaapiSupport = true;
        vdpauSupport = false;
        vulkanSupport = true;
        bluraySupport = true;
        cddaSupport = false;
        dvdnavSupport = false;
        openalSupport = false;
        sdl2Support = true;
        javascriptSupport = false;
        archiveSupport = false;
        zimgSupport = false;
      };

      # Scripts are now passed here instead of using a wrapper
      scripts = with pkgs.mpvScripts; [
        sponsorblock-minimal 
        modernz
        autoload
        autodeint
        dynamic-crop
        visualizer
        thumbfast
      ];
    };

    config = {
      profile = "high-quality";
      
      ytdl-format = "bestvideo+bestaudio";
      
      cache-default = 4000000;
      
      hwdec = "vaapi";
      gpu-api = "vulkan";
      vo = "gpu-next";
      
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
      screenshot-directory = "$HOME/Pictures/Screenshots/MPV";
      
      # OSD and interface
      osd-level = 1;
      osd-duration = 2000;
      osd-font-size = 24;
      
      # Window settings
      keepaspect-window = true;
      keep-open = "always";
      border = true;
      title = "mpv";
      
      # Allow remote control via IPC
      input-ipc-server = "/tmp/mpvsocket";
    };
  };
}
