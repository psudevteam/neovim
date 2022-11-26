function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

local use = require('packer').use

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use 'voldikss/vim-floaterm'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    config = get_config('mason')
  }

  use {
   'kyazdani42/nvim-tree.lua',
    config = get_config('tree')
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = get_config('treesitter')
  }

  use {
    'neovim/nvim-lspconfig',
    config = get_config('lsp')
  }

  use {
    'onsails/lspkind.nvim',
    config = get_config('lspkind')
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-git',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'kyazdani42/nvim-web-devicons',
    },
    config = get_config('cmp')
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = get_config('telescope')
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = get_config('lualine')
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = get_config('indent')
  }

  use {
    'akinsho/bufferline.nvim', tag = "v2.*",
    config = get_config('bufferline')
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'MunifTanjim/prettier.nvim',
    config = get_config('prettier')
  }

  use {
    'rebelot/kanagawa.nvim',
    config = get_config('kanagawa')
  }
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
