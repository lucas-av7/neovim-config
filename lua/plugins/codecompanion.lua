return {
  'olimorris/codecompanion.nvim',
  enabled = false,
  lazy = false,
  config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.nvim',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'gemini',
      },
      inline = {
        adapter = 'gemini',
      },
    },
    display = {
      diff = {
        provider = 'mini_diff',
      },
      chat = {
        window = {
          width = 0.35,
        },
      },
    },
    adapters = {
      gemini = function()
        return require('codecompanion.adapters').extend('gemini', {
          env = {
            api_key = 'cmd:echo $GOOGLE_AI_API_KEY',
          },
        })
      end,
    },
  },
  keys = {
    {
      '\\',
      '<cmd>:CodeCompanionChat Toggle<cr>',
      mode = { 'n', 'v' },
      desc = 'Toggle Code Companion Chat',
    },
  },
}
