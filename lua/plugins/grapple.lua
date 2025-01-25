return {
  'cbochs/grapple.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  opts = {
    scope = 'git',
    win_opts = {
      border = 'rounded',
    },
  },
  keys = {
    { '<leader>tt', '<cmd>Grapple toggle<cr>', desc = '[T]oggle [T]ag' },
    { '\\', '<cmd>Grapple toggle_tags<cr>', desc = 'Toggle tags window' },
    { '<Tab>', '<cmd>Grapple cycle_tags next<cr>', desc = 'Cycle next tag' },
    { '<S-Tab>', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Cycle previous tag' },
  },
}
