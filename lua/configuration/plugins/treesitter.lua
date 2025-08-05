local tree = require("nvim-treesitter.configs")

tree.setup{
  ensure_installed = { "c" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
