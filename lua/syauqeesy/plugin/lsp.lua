require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua-language-server", "typescript-language-server" }
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").ts_ls.setup {}

