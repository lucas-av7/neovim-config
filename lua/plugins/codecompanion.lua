return {
  'olimorris/codecompanion.nvim',
  lazy = false,
  config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.diff',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'anthropic',
      },
      inline = {
        adapter = 'anthropic',
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
