call plug#begin()
"'~/.vim/plugged')

" implementation of grep
Plug 'BurntSushi/ripgrep'

" popup Api for neovim
Plug 'nvim-lua/popup.nvim'
" lua abstraction to be used in nvim; needed for telescope
Plug 'nvim-lua/plenary.nvim'

" fuzzy finder that works together with rg, and popup
Plug 'nvim-telescope/telescope.nvim'

" needed for finding object tree
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'p00f/nvim-ts-rainbow'
" theme 
Plug 'gruvbox-community/gruvbox'

" single line git blame
Plug 'zivyangll/git-blame.vim'

" git blame in gutters
Plug 'airblade/vim-gitgutter'

" language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" see what you yanked
Plug 'machakann/vim-highlightedyank'

" tags with language server
Plug 'preservim/tagbar'

" light weight bar at bottom 
Plug 'vim-airline/vim-airline'

" graphic tree structure
Plug 'preservim/nerdtree'

" repeat commands in multiple lines
Plug 'mg979/vim-visual-multi'

" surround visual with any markers
Plug 'tpope/vim-surround'

Plug 'tc50cal/vim-terminal'

Plug 'tpope/vim-commentary'

Plug 'dusans/vim-hardmode'
Plug 'puremourning/vimspector'

Plug 'vim-autoformat/vim-autoformat'
Plug 'tpope/vim-fugitive'
call plug#end()
