local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- theme
  use 'gruvbox-community/gruvbox'
  
  --Tools for better vim interacton
  --===================================
  
  -- see what you yanked
  use 'machakann/vim-highlightedyank'
  
  -- surround visual with any markers
  use 'tpope/vim-surround'
  
  -- shortcut to comment code
  use 'tpope/vim-commentary'
  
  -- repeat commands in multiple lines
  -- use 'mg979/vim-visual-multi'
  
  --===================================
  
  -- Git integration
  --===================================
  
  -- Git plugin so good it should be illegal
  use 'tpope/vim-fugitive'
  
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  -- single line git blame
  -- use 'zivyangll/git-blame.vim'
  
  -- git blame in gutters
  -- use 'airblade/vim-gitgutter'
  --===================================
  
  -- Searching functionality
  --===================================
  
  -- implementation of grep
  use 'BurntSushi/ripgrep'
  
  -- popup Api for neovim
  use 'nvim-lua/popup.nvim'

  -- fuzzy finder that works together with rg, and popup
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  --===================================
  
  -- IDE capabilities
  --===================================
  -- startup screen
  -- use {
  --  "goolord/alpha-nvim",
  --  config = function()
  --     require("alpha").setup()
  --  end,
  -- }
  -- auto formatting
  use 'vim-autoformat/vim-autoformat'
  
  -- needed for finding object tree
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    } 
  
  -- language server
  use {'neoclide/coc.nvim', branch = 'release'}
  
  -- debugger
  use 'puremourning/vimspector'
  
  --linting
  --===================================
  
  -- IDE apperarence
  --===================================
  
  -- light weight bar at bottom 
 -- use 'vim-airline/vim-airline'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } 
  -- graphic tree structure
  --use 'preservim/nerdtree'
  
  -- terminal in vim
  --  use 'tc50cal/vim-terminal'
  
  -- visually different brace colors
  --use 'p00f/nvim-ts-rainbow'
  
  -- tags with language server
  --use 'preservim/tagbar'
  --===================================
  -- performance  
  use 'lewis6991/impatient.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
