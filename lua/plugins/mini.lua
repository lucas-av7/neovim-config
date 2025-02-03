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
        apply = '<leader>gha', -- stage hunk
        reset = '<leader>ghr', -- undo hunk
        textobject = '<leader>gha', -- Hunk range textobject to be used inside operator
      },
    }
    require('mini.git').setup {}
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
