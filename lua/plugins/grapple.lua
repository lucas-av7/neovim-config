return {
  'cbochs/grapple.nvim',
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope.nvim',
  },
  opts = {
    scope = 'git',
    win_opts = {
      border = 'rounded',
    },
  },
  keys = {
    { '<leader>tt', '<cmd>Grapple toggle<cr>', desc = '[T]oggle [T]ag' },
    { '\\', '<cmd>Telescope grapple tags<cr>', desc = 'Open tags window' },
    { '<Tab>', '<cmd>Grapple cycle_tags next<cr>', desc = 'Cycle next tag' },
    { '<S-Tab>', '<cmd>Grapple cycle_tags prev<cr>', desc = 'Cycle previous tag' },
  },
  config = function()
    require('telescope').load_extension 'grapple'
  end,
}
