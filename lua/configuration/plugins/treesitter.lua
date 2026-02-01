local ts = require("nvim-treesitter")

ts.setup({
  install_dir = vim.fn.stdpath("data") .. "/site"
})

ts.install({ "c", "go", "typescript", "python" })
