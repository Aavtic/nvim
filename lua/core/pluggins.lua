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
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'

  use 'nvim-treesitter/nvim-treesitter'
  use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
        
  }

  use 'mbbill/undotree'

  use {
    'vonheikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- uncomment these if you want to manage lsp servers from neovim
      -- {'williamboman/mason.nvim'},
      -- {'williamboman/mason-lspconfig.nvim'},
  
      -- lsp support
      {'neovim/nvim-lspconfig'},
      -- autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'l3mon4d3/luasnip'},
    }
  }

  use({'williamboman/mason.nvim'})
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")

  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  
  -- debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  use 'ryanoasis/vim-devicons'


  use 'rust-lang/rust.vim'



  -- my plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
