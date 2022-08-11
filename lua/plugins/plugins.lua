vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
  
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Emoji do Terminal Root <3
  use 'terroo/vim-simple-emoji'

  -- Paradas Bonitas
  use 'navarasu/onedark.nvim'
  use 'sheerun/vim-polyglot'
  use 'kyazdani42/nvim-web-devicons'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'windwp/nvim-autopairs'
  use 'tribela/vim-transparent'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Formater
  use 'sbdchd/neoformat'

  -- Git
  use 'airblade/vim-gitgutter'

  -- Statusbar
  use 'tamton-aquib/staline.nvim'

  -- Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Complete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind-nvim'

  -- Discord
  use 'andweeb/presence.nvim'

  -- Golang <3
  use 'crispgm/nvim-go'
end)
