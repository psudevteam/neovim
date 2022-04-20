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
  use 'hrsh7th/cmp-nvim-lsp' -- nvim lsp server
  use 'hrsh7th/cmp-buffer' -- nvim buffert catalogy
  use 'hrsh7th/cmp-path' --- nvim detect path
  use 'hrsh7th/cmp-cmdline' --- nvim cmdline
  use 'hrsh7th/cmp-vsnip' --- nvim vsnip
  use 'rebelot/kanagawa.nvim' -- kanagawa colorscheme
  use 'voldikss/vim-floaterm' -- floating terminal
  use 'APZelos/blamer.nvim' -- GitHub Lens
  use 'rinx/nvim-minimap'
	use {
    'ruifm/gitlinker.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = get_config('gitlinker')
	}
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
  use{
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
      require('cokeline').setup()
    end
  }
  use {
  'lukas-reineke/indent-blankline.nvim',
  config = get_config('indent')
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = get_config('null')
  }
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
