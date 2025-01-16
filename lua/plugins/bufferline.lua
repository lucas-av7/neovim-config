return {
  {
    'akinsho/bufferline.nvim',
    event = 'VimEnter',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        show_buffer_close_icons = false,
      },
    },
    keys = {
      {
        '<Tab>',
        function()
          require('bufferline').cycle(1)
        end,
        mode = 'n',
      },
      {
        '<S-Tab>',
        function()
          require('bufferline').cycle(-1)
        end,
        mode = 'n',
      },
    },
  },
}
