{ config, pkgs, ... }:

{
  programs.onlyoffice = {
    enable = true;
    settings = {
      editorWindowMode = false;
      titlebar = "custom";
      UITheme = "theme-contrast-dark";
    };
  };
}
