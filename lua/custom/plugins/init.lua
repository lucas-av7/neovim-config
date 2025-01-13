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
  --  {
  --   'tpope/vim-fugitive',
  --   opts = {},
  --   keys = {
  --     {
  --       '<leader>gl',
  --       '<cmd>Git log<CR>',
  --       mode = 'n',
  --       desc = '[G]it [L]og',
  --     },
  --   },
  --   config = function() end,
  -- },
  -- {
  --   'akinsho/bufferline.nvim',
  --   event = 'VimEnter',
  --   version = '*',
  --   dependencies = 'nvim-tree/nvim-web-devicons',
  --   opts = {
  --     options = {
  --       show_buffer_close_icons = false,
  --     },
  --   },
  --   keys = {
  --     {
  --       '<Tab>',
  --       function()
  --         require('bufferline').cycle(1)
  --       end,
  --       mode = 'n',
  --     },
  --     {
  --       '<S-Tab>',
  --       function()
  --         require('bufferline').cycle(-1)
  --       end,
  --       mode = 'n',
  --     },
  --   },
  -- },
}
