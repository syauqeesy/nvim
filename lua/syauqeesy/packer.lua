vim.cmd("packadd packer.nvim")
return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"


  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use "nvim-treesitter/nvim-treesitter"

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  use "rebelot/kanagawa.nvim"

  use {
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons"
  }

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
end)
