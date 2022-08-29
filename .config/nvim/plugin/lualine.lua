local custom_gruvbox = require'lualine.themes.gruvbox'

-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.a.bg = '#a89984'
custom_gruvbox.visual.a.bg = '#d3869b' --'#fe8019'
custom_gruvbox.insert.a.bg = '#83a598'
custom_gruvbox.replace.a.bg = '#8ec07c'

require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = custom_gruvbox, 
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'diff', 'branch', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'tabs'},
    lualine_b = { 'filename'}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
