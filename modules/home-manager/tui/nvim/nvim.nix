{ config, pkgs, inputs, ... }:

{
  imports = [ inputs.nvf.homeManagerModules.default ];
  
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  
  programs.nvf = {
    enable = true;
    
    options = {
      tabstop = 2;
      shiftwidth = 0;
    };
    
    settings.vim = {
      viAlias = true;
      vimAlias = true;
      lsp.enable = true;

      treesitter.enable = true;
      telescope.enable = true;
      statusline.lualine.enable = true;
      autocomplete.nvim-cmp.enable = true;

      languages = {
        enableTreesitter = true;
        enableFormat = true;

        nix.enable = true;
      };
    };
  };
}
