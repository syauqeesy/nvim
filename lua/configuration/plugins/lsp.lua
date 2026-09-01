local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local cmp = require("cmp")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

mason.setup()
mason_lspconfig.setup {
  ensure_installed = { "clangd", "gopls", "ts_ls", "pylsp", "cssls", "svelte" },
}

cmp.setup{
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = { { name = "nvim_lsp" } },
}

local capabilities = cmp_nvim_lsp.default_capabilities()
local function on_attach(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    local group = vim.api.nvim_create_augroup("LspFormat." .. bufnr, {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

vim.lsp.config("clangd", { capabilities = capabilities, on_attach = on_attach })
vim.lsp.config("gopls",  { capabilities = capabilities, on_attach = on_attach })
vim.lsp.config("ts_ls",  { capabilities = capabilities, on_attach = on_attach })
vim.lsp.config("pylsp",  { capabilities = capabilities, on_attach = on_attach })
vim.lsp.config("cssls",  { capabilities = capabilities, on_attach = on_attach })
vim.lsp.config("svelte",  { capabilities = capabilities, on_attach = on_attach })

vim.lsp.enable({ "clangd", "gopls", "ts_ls", "pylsp", "cssls", "svelte" })
