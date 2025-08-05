vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-web-devicons")
require("nvim-tree").setup()

vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })

vim.keymap.set("n", "<C-b>", ":NvimTreeFindFileToggle<CR>")
