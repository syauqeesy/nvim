local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local cmp = require("cmp")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup{
  ensure_installed = { "clangd" },
  automatic_installation = true,
}

cmp.setup{
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
  }
}

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig.clangd.setup{
  capabilities = capabilities,
}
