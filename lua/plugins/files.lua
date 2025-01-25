return {
  {
    'stevearc/oil.nvim',
    event = 'VimEnter',
    opts = {
      float = {
        max_width = 0.65,
        max_height = 0.65,
      },
    },
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    keys = {
      {
        '<leader>f',
        '<cmd>Oil<CR>',
        mode = 'n',
        desc = '[F]ile Explore',
      },
    },
  },
}
