
call plug#begin()

Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'gruvbox-community/gruvbox'

Plug 'zivyangll/git-blame.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'machakann/vim-highlightedyank'
"Plug 'preservim/tagbar'
"Plug 'vim-airline/vim-airline'

call plug#end()
