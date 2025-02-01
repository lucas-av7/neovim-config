return {
  {
    'echasnovski/mini.diff',
    event = 'VimEnter',
    version = false,
    opts = {
      view = {
        style = 'sign',
        signs = { add = '+', change = '~', delete = '-' },
      },
      mappings = {},
    },
    keys = {
      {
        '<leader>td',
        function()
          require('mini.diff').toggle_overlay(0)
        end,
        mode = 'n',
        desc = '[T]oggle [D]iff Overlay',
      },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
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
  {
    'FabijanZulj/blame.nvim',
    opts = {},
    keys = {
      {
        '<leader>tb',
        '<cmd>BlameToggle<CR>',
        mode = 'n',
        desc = '[T]oggle [B]lame',
        silent = true,
      },
    },
  },
}
