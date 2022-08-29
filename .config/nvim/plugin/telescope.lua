-- default config
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- use fzf with telescope
require('telescope').load_extension('fzf')

-- telescope keybindings
local k = vim.keymap
k.set('n', '<leader>ps', "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ')})<CR>")
k.set('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
k.set('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
k.set('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
k.set('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
k.set('n', '<leader>gb', "<cmd>lua require('telescope.builtin').git_branches()<cr>")
k.set('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status()<cr>")
k.set('n', '<leader>gc', "<cmd>lua require('telescope.builtin').git_commits()<cr>")
k.set('n', '<leader>gf', "<cmd>lua require('telescope.builtin').git_files()<cr>")
