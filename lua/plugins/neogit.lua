return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'sindrets/diffview.nvim',
      opts = {
        opts = {
          view = {
            merge_tool = {
              layout = 'diff3_mixed',
            },
          },
        },
      },
    },
    'folke/snacks.nvim', -- for picker
  },
  opts = {
    graph_style = 'kitty',
  },
  keys = {
    {
      '<leader>g',
      '<cmd>Neogit<CR>',
      mode = 'n',
      desc = '[G]it',
    },
  },
}
