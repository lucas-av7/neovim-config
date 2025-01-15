-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'dracula/vim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'dracula'
    end,
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
    'nvim-tree/nvim-tree.lua',
    opts = {},
    keys = {
      {
        '\\',
        '<cmd>NvimTreeToggle<CR>',
        mode = 'n',
        desc = 'Toggle Explore',
      },
      {
        '<C-\\>',
        '<cmd>NvimTreeFindFile<CR>',
        mode = 'n',
        desc = 'Show file in expore',
      },
    },
  },
  {
    'akinsho/bufferline.nvim',
    event = 'VimEnter',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        show_buffer_close_icons = false,
      },
    },
    keys = {
      {
        '<Tab>',
        function()
          require('bufferline').cycle(1)
        end,
        mode = 'n',
      },
      {
        '<S-Tab>',
        function()
          require('bufferline').cycle(-1)
        end,
        mode = 'n',
      },
    },
  },
}
