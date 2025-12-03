return {
  'zbirenbaum/copilot.lua',
  enabled = true,
  requires = {
    'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionality
  },
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      copilot_node_command = os.getenv 'HOME' .. '/.local/share/mise/installs/node/latest/bin/node',
      suggestion = { auto_trigger = true },
    }
  end,
}
