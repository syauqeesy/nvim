require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua-language-server", "typescript-language-server" }
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities
}
require("lspconfig").ts_ls.setup {
  capabilites = capabilities
}


