local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "tsx" }
}

nvim_lsp.vuels.setup{
  filetypes = { "vue" }
}

nvim_lsp.tailwindcss.setup {
  filetypes = { "vue", "html" }
}

nvim_lsp.pyright.setup {
  filetypes = { "python" }
}

nvim_lsp.html.setup {
  capabilities = capabilities,
  filetypes = { "html" }
}

nvim_lsp.emmet_ls.setup{
  filetypes = { "html", "css" }
}

nvim_lsp.volar.setup {
  filetypes = {'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
   init_options = {
    typescript = {
      serverPath = '/home/ms/.nvm/versions/node/v16.15.0/lib/node_modules/typescript/lib/tsserverlibrary.js'
    }
  }
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '', -- Could be '●', '▎', 'x'
  }
})
