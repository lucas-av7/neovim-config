return {
  {
    'github/copilot.vim',
    cmd = 'Copilot',
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
        '\\',
        '<cmd>CopilotChatToggle<cr>',
        mode = { 'n', 'v' },
        desc = 'Copilot Chat',
      },
    },
  },
}
