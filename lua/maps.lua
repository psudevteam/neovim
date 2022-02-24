local map = vim.api.nvim_set_keymap

default_options = {noremap = true, silent = true}
expr_options = {noremap = true, expr = true, silent = true}

map("n", "<Space>", "<NOP>", default_options)
vim.g.mapleader = " "

map("n", "<C-s>", "<cmd>Telescope find_files<CR>", {noremap = true})
map("n", "<C-g>", "<cmd>NvimTreeToggle<CR>", {noremap = true})

vim.cmd([[let g:floaterm_keymap_toggle = '<F12>']])
