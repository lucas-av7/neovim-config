return {
  'echasnovski/mini.nvim',
  version = false,
  event = 'VeryLazy',
  config = function()
    require('mini.diff').setup {
      view = {
        style = 'sign',
        signs = { add = '+', change = '~', delete = '-' },
      },
      mappings = {
        apply = '',
        reset = '',
        textobject = '',
      },
    }
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup {}
  end,
  keys = {
    {
      '<leader>td',
      function()
        require('mini.diff').toggle_overlay(0)
      end,
      mode = 'n',
      desc = '[T]oggle [D]iff Overlay',
    },
  },
}
