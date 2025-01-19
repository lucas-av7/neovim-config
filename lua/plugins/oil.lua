return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'echasnovski/mini.icons' },
  keys = {
    { '<leader>f', '<cmd>Oil<CR>', mode = 'n', desc = '[F]iles', silent = true },
  },
  lazy = false,
}
