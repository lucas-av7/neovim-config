return {
  'FabijanZulj/blame.nvim',
  cmd = 'BlameToggle',
  keys = {
    {
      '<leader>tb',
      '<cmd>BlameToggle<CR>',
      mode = 'n',
      desc = '[T]oggle [B]lame',
      silent = true,
    },
  },
  opts = {},
}
