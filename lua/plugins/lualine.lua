return {
  'nvim-lualine/lualine.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    tabline = {
      lualine_a = {
        function()
          local cwd = vim.fn.getcwd()
          local project_name = cwd:match '([^/]+)$'
          return project_name
        end,
      },
      lualine_b = { 'branch' },
      lualine_c = {},
      lualine_y = { { 'datetime', style = '%H:%M' } },
      lualine_z = { { 'tabs', show_modified_status = false } },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'filename' },
      lualine_c = {
        'diff',
        'diagnostics',
        'grapple',
      },
    },
  },
}
