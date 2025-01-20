return {
  {
    'echasnovski/mini.files',
    version = false,
    opts = {},
    keys = {
      {
        '<leader>f',
        function()
          require('mini.files').open()
        end,
        mode = 'n',
        silent = true,
        desc = '[F]iles',
      },
    },
  },
}
