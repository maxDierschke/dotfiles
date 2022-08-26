call plug#begin()
"'~/.vim/plugged')

" theme 
Plug 'gruvbox-community/gruvbox'

"Tools for better vim interacton
"===================================

" see what you yanked
Plug 'machakann/vim-highlightedyank'

" surround visual with any markers
Plug 'tpope/vim-surround'

" shortcut to comment code
Plug 'tpope/vim-commentary'

" repeat commands in multiple lines
" Plug 'mg979/vim-visual-multi'

"===================================

" Git integration
"===================================

" Git plugin so good it should be illegal
Plug 'tpope/vim-fugitive'

" single line git blame
" Plug 'zivyangll/git-blame.vim'

" git blame in gutters
" Plug 'airblade/vim-gitgutter'
"===================================

" Searching functionality
"===================================

" implementation of grep
Plug 'BurntSushi/ripgrep'

" popup Api for neovim
Plug 'nvim-lua/popup.nvim'

" lua abstraction to be used in nvim; needed for telescope
Plug 'nvim-lua/plenary.nvim'

" fuzzy finder that works together with rg, and popup
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"===================================

" IDE capabilities
"===================================

" auto formatting
Plug 'vim-autoformat/vim-autoformat'

" needed for finding object tree
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" debugger
Plug 'puremourning/vimspector'

"linting
"===================================

" IDE apperarence
"===================================

" light weight bar at bottom 
Plug 'vim-airline/vim-airline'

" graphic tree structure
Plug 'preservim/nerdtree'

" terminal in vim
Plug 'tc50cal/vim-terminal'

" visually different brace colors
Plug 'p00f/nvim-ts-rainbow'

" tags with language server
Plug 'preservim/tagbar'
"===================================

Plug 'dusans/vim-hardmode'
call plug#end()
