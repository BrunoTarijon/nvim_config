vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "ellisonleao/gruvbox.nvim" }
  use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use 'mbbill/undotree'
  use 'unblevable/quick-scope'
  use 'github/copilot.vim'
  use 'folke/which-key.nvim'

  -- LSP
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim' 
  use 'neovim/nvim-lspconfig' 
  use 'simrat39/rust-tools.nvim'
end)
