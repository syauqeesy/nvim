require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua-language-server", "typescript-language-server", "gopls"}
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("i", "<C-k>", vim.lsp.buf.hover, opts)
end

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach
}
require("lspconfig").ts_ls.setup {
  capabilites = capabilities,
  on_attach = on_attach
}

require("lspconfig").gopls.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("GoFormatting", { clear = true }),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end

    on_attach(client, bufnr)
  end,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

