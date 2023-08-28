local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" }
}

nvim_lsp.pyright.setup {
  filetypes = { "python" }
}

nvim_lsp.html.setup {
  capabilities = capabilities,
  filetypes = { "html" }
}

nvim_lsp.astro.setup {
  capabilities = capabilities,
  filetypes = { "astro" }
}

nvim_lsp.emmet_ls.setup{
  filetypes = { "html", "css" }
}

nvim_lsp.tailwindcss.setup{
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" }
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '',
  }
})
