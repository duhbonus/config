local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim') -- plugin intaller
  use('nvim-tree/nvim-web-devicons') -- nerd font icons
  use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use('lukas-reineke/indent-blankline.nvim') -- does those block lines
  use('tpope/vim-fugitive') -- git commands (just use :G) inside neovim
  use('lewis6991/gitsigns.nvim')

  -- undo tree
  use('mbbill/undotree')

  -- coloschemes
  use('aktersnurra/no-clown-fiesta.nvim')

  -- completion
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- commenting 
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep',
        'sharkdp/fd'
      }
  }

  -- harpoon
  use('ThePrimeagen/harpoon')

  if packer_bootstrap then
    require('packer').sync()
  end
end)
