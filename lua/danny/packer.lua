-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- for easily changing a line to comment
	use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Color scheme vs-code dark modern (need treesitter for full effect)
  use 'Mofiqul/vscode.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'

  -- Fugitive is like vs code git source control - another option is lazygit
  use 'tpope/vim-fugitive'
  -- Blamer gives git commit info on each line of code - same as git lense
  use 'APZelos/blamer.nvim'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from Neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- LSP Support
      'neovim/nvim-lspconfig',
      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    }
  }

  --**********************
  -- non vs-code style plugins
  -- *********************
  use 'mbbill/undotree'
  use 'github/copilot.vim'
  use {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { 'nvim-lua/plenary.nvim' }
  }
end)
