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
          return root:match '.*/(.*)' or ''
        end,
      },
      lualine_b = {
        'filename',
        'diff',
        'diagnostics',
      },
      lualine_c = { 'branch' },
      lualine_x = { 'filetype' },
    },
  },
}
