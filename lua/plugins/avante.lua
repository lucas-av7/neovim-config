return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  enabled = true,
  lazy = false,
  opts = {
    provider = 'gemini',
    openai = {
      model = 'o3-mini',
      reasoning_effort = 'high',
    },
    gemini = {
      model = 'gemini-2.0-flash-001',
      api_key_name = 'GOOGLE_AI_API_KEY',
    },
    vendors = {
      openrouter = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        api_key_name = 'OPENROUTER_API_KEY',
        model = 'google/gemini-2.0-flash-001',
      },
    },
    auto_suggestions_provider = nil,
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
