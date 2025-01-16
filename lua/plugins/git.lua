return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = true,
    keys = {
      {
        '<leader>g',
        '<cmd>Neogit<CR>',
        mode = 'n',
        desc = '[G]it Panel',
      },
    },
  },
  {
    'sindrets/diffview.nvim',
    opts = {
      view = {
        merge_tool = {
          layout = 'diff3_mixed',
        },
      },
    },
  },
  { 'lewis6991/gitsigns.nvim', opts = {} },
}
