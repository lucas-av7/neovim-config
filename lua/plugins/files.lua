return {
  {
    'echasnovski/mini.files',
    version = false,
    opts = {},
    keys = {
      {
        '<leader>f',
        function()
          local mf = require 'mini.files'
          mf.open(vim.api.nvim_buf_get_name(0))
          mf.reveal_cwd()
        end,
        mode = 'n',
        silent = true,
        desc = '[F]iles',
      },
    },
  },
}
