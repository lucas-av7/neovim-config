return {
  'nvim-lualine/lualine.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    tabline = {
      lualine_a = { 'mode' },
      lualine_b = {},
      lualine_c = {},
      lualine_y = { { 'datetime', style = '%H:%M' } },
      lualine_z = { { 'tabs', show_modified_status = false } },
    },
    sections = {
      lualine_a = {
        function()
          local root = require('snacks').git.get_root() or vim.fn.getcwd()
          return root:match '.*/(.*)'
        end,
      },
      lualine_b = { 'branch' },
      lualine_c = {
        'filename',
        'diff',
        'diagnostics',
      },
      lualine_x = { 'filetype' },
    },
  },
}
