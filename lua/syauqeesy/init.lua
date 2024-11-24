require("syauqeesy.remap")
require("syauqeesy.set")
require("syauqeesy.plugin.telescope")
require("syauqeesy.plugin.treesitter")
require("syauqeesy.plugin.lsp")
require("syauqeesy.plugin.kanagawa")
require("syauqeesy.plugin.nvim-tree")
require("syauqeesy.plugin.completion")

-- trim trailing whitespace
vim.api.nvim_create_augroup("TrimTrailingWhitespace", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "TrimTrailingWhitespace",
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

