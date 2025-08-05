vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.api.nvim_create_augroup("TrimTrailingWhitespace", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "TrimTrailingWhitespace",
  pattern = "*",
  command = [[%s/\s\+$//e]],
})
