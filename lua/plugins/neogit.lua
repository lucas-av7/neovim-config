return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'folke/snacks.nvim', -- for picker
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
  },
  opts = {
    graph_style = 'kitty',
    process_spinner = true,
    auto_show_console = false,
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
