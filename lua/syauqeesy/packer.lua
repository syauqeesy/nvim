vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

  use "nvim-treesitter/playground"
end)
