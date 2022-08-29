source ~/.config/nvim/vim/.variables.vim
source ~/.config/nvim/vim/.plugins.vim
source ~/.config/nvim/vim/.disable_arrows.vim

let mapleader = " "

colorscheme gruvbox
highlight Normal guibg=none


nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files()<cr>

nnoremap <Leader>b :<C-u>call gitblame#echo()<CR>

source ~/.config/nvim/vim/.coc_configuration.vim
source ~/.config/nvim/vim/.vimspector.vim

source ~/.config/nvim/vim/.nerdtree.vim
source ~/.config/nvim/vim/.auto_formatting.vim
"use space y to copy to sys clipboard.
nnoremap <leader>y "+y
nnoremap <leader>p "+p

" enable hard mode by default
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" used by gitgutter to display additional gutter
set signcolumn=yes
" lua require('init')
" lua require('telescope').load_extension('fzf')
