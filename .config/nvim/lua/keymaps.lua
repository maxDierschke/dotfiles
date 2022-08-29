local k = vim.keymap

-- package specific keybindings are in their specific setup file 
--  in the path ../plugin/<package>.lua

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

-- quicker navigation between tabs 
k.set('n', '<leader>1', '1gt')
k.set('n', '<leader>2', '2gt')
k.set('n', '<leader>3', '3gt')
k.set('n', '<leader>4', '4gt')
k.set('n', '<leader>5', '5gt')
k.set('n', '<leader>6', '6gt')
k.set('n', '<leader>7', '7gt')
k.set('n', '<leader>8', '8gt')
k.set('n', '<leader>9', '9gt')
k.set('n', '<leader>0', '<CMD>tablast<cr>')

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


