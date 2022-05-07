local tree = require('nvim-treesitter.configs')

tree.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "vue",
    "javascript",
    "lua",
    "typescript",
    "html",
    "css",
    "scss",
    "tsx",
  }
}
