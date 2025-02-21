return {
  'yetone/avante.nvim',
  enabled = false,
  event = 'VeryLazy',
  lazy = false,
  opts = {
    provider = 'claude',
    auto_suggestions_provider = 'claude',
    behaviour = {
      auto_apply_diff_after_generation = true,
    },
  },
  build = 'make',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
  keys = {
    {
      '\\',
      '<cmd>AvanteChat<cr>',
      mode = { 'n', 'v' },
      desc = 'Open Avante Chat',
    },
  },
}
