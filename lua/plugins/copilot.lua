return {
  {
    'github/copilot.vim',
    event = 'InsertEnter',
    tag = 'v1.38.0', -- For Node.js 16 compatibility
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    cmd = 'CopilotChat',
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim' },
    },
    build = 'make tiktoken',
    opts = {},
    keys = {
      {
        '<leader>cc',
        '<cmd>CopilotChat<cr>',
        mode = { 'n', 'v' },
        desc = '[C]ode [C]hat',
      },
    },
  },
}
