function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

local use = require('packer').use

require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- package manager
  use 'jiangmiao/auto-pairs' -- auto pairs 
  use 'nvim-treesitter/nvim-treesitter' -- neovim Treesitter
  use 'hrsh7th/vim-vsnip' -- vsnip for snippet
  use 'hrsh7th/vim-vsnip-integ' -- vsnip integration
  use 'rebelot/kanagawa.nvim' -- kanagawa colorscheme
  use 'voldikss/vim-floaterm' -- floating terminal
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use {
    'MunifTanjim/prettier.nvim',
    config = get_config('prettier')
  }  -- neovim prettier
  use {
  'lukas-reineke/indent-blankline.nvim',
  config = get_config('indent')
  }
  use {
     'ms-jpq/coq_nvim',
     branch = 'coq',
     event = "VimEnter",
     config = 'vim.cmd[[COQnow]]'
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = get_config('null')
  }
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
  'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true },
   config = get_config('lualine')
  }
  use {
    'neovim/nvim-lspconfig',
    config = get_config("lsp")
    } -- collection of configurations for the built-in LSP client
  use {
    'hrsh7th/nvim-cmp',
    config = get_config('cmp')
    }
  use {
    'onsails/lspkind-nvim'
    }
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
