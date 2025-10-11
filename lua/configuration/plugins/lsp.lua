local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local cmp = require("cmp")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

mason.setup()
mason_lspconfig.setup {
  ensure_installed = { "clangd", "gopls", "ts_ls", "pylsp" },
}

cmp.setup{
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = { { name = "nvim_lsp" } },
}

local capabilities = cmp_nvim_lsp.default_capabilities()

vim.lsp.config("clangd", { capabilities = capabilities })
vim.lsp.config("gopls",  { capabilities = capabilities })
vim.lsp.config("ts_ls",  { capabilities = capabilities })
vim.lsp.config("pylsp",  { capabilities = capabilities })

vim.lsp.enable({ "clangd", "gopls", "ts_ls", "pylsp" })
