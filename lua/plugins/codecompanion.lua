return {
  'olimorris/codecompanion.nvim',
  version = 'v17.33.0',
  enabled = true,
  config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.nvim',
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'copilot',
      },
      inline = {
        adapter = 'copilot',
      },
    },
    display = {
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
