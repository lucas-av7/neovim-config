return {
  {
    'echasnovski/mini.files',
    version = false,
    opts = {},
    keys = {
      {
        '<leader>f',
        function()
          require('mini.files').open(vim.api.nvim_buf_get_name(0))
        end,
        mode = 'n',
        silent = true,
        desc = '[F]iles',
      },
    },
  },
}
