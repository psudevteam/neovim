local tree = require('nvim-treesitter.configs')

tree.setup {
  ensure_installed = { "c", "lua", "vim", "tsx", "typescript", "html", "css", "javascript", "nix" },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
}
