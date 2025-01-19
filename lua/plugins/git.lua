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
      mappings = {
        apply = '<leader>ha', -- Stage hunk
        reset = '<leader>hr',
        textobject = '',
      },
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
      'nvim-telescope/telescope.nvim',
    },
    opts = {
      graph_style = 'kitty',
    },
    keys = {
      {
        '<leader>gs',
        '<cmd>Neogit<CR>',
        mode = 'n',
        desc = '[G]it [S]status',
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
    keys = {
      {
        '<leader>gd',
        '<cmd>DiffviewOpen<CR>',
        mode = 'n',
        desc = '[G]it [D]iff',
        silent = true,
      },
      {
        '<leader>bh',
        '<cmd>DiffviewFileHistory %<CR>',
        mode = 'n',
        desc = '[B]uffer Git [H]istory',
        silent = true,
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
