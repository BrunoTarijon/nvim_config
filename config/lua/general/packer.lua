vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use "savq/melange-nvim"
  use 'mbbill/undotree'
  use 'unblevable/quick-scope'
  use 'folke/which-key.nvim'
  use 'Raimondi/delimitMate'
  use 'chentoast/marks.nvim'
  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  } 
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'eandrju/cellular-automaton.nvim'

  -- Git integration
  use 'lewis6991/gitsigns.nvim'

  -- LSP
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim' 
  use 'neovim/nvim-lspconfig'
	use 'echasnovski/mini.completion'

  -- IA tools
  use { "zbirenbaum/copilot.lua" }
  use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
})
end)
