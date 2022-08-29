local k = vim.keymap

-- copy to/from sys clipboard
k.set('n', '<leader>y', '"+y')
k.set('n', '<leader>p', '"+p')

-- disable arrow keys
k.set({'n', 'c', 'i', 'v'}, '<Down>', '<Nop>')
k.set({'n', 'c', 'i', 'v'}, '<Left>', '<Nop>')
k.set({'n', 'c', 'i', 'v'}, '<Right>', '<Nop>')
k.set({'n', 'c', 'i', 'v'}, '<Up>', '<Nop>')

-- disable backspace and delete
k.set('i', '<BS>', '<Nop>')
k.set('i', '<Del>', '<Nop>')

-- quicker changing between splits
k.set('n', '<leader>j', '<c-w>j')
k.set('n', '<leader>k', '<c-w>k')
k.set('n', '<leader>h', '<c-w>h')
k.set('n', '<leader>l', '<c-w>l')

-- https://github.com/numToStr/dotfiles/blob/master/neovim/.config/nvim/lua/numToStr/keybinds.lua
----------------------------------------------------------
-- quicker buffer saving 
k.set('n', '<leader>w', '<cmd>update<cr>')
k.set('n', '<leader>W', '<cmd>wall<cr>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
k.set('n', '<C-j>', '<CMD>move .+1<CR>')
k.set('n', '<C-k>', '<CMD>move .-2<CR>')
k.set('x', '<C-j>', ":move '>+1<CR>gv=gv")
k.set('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Quit neovim
k.set('n', '<C-Q>', '<CMD>q<CR>')

-- Move to the next/previous buffer
k.set('n', '<leader>[', '<CMD>bp<CR>')
k.set('n', '<leader>]', '<CMD>bn<CR>')
----------------------------------------------------------

-- telescope shortcuts
k.set('n', '<leader>ps', "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ')})<CR>")
k.set('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
k.set('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
k.set('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
k.set('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
k.set('n', '<leader>gb', "<cmd>lua require('telescope.builtin').git_branches()<cr>")
k.set('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status()<cr>")
k.set('n', '<leader>gc', "<cmd>lua require('telescope.builtin').git_commits()<cr>")
k.set('n', '<leader>gf', "<cmd>lua require('telescope.builtin').git_files()<cr>")
