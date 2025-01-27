return {
  {
    'github/copilot.vim',
    event = 'InsertEnter',
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
