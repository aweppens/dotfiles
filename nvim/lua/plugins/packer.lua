local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- CODE
  use 'Mofiqul/vscode.nvim'

  -- LUALINE
  use 'nvim-lualine/lualine.nvim'

  -- ICONS
  use 'kyazdani42/nvim-web-devicons'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- TOGGLE TERMINAL
  use {"akinsho/toggleterm.nvim"}

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
