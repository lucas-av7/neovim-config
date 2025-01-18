return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'echasnovski/mini.icons' },
  keys = {
    { '<leader>o', '<cmd>Oil<CR>', mode = 'n', desc = '[O]il', silent = true },
  },
  lazy = false,
}
