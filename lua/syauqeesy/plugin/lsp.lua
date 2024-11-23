require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua-language-server" }
})

require("lspconfig").lua_ls.setup {}

