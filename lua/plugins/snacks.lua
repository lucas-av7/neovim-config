return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    explorer = {
      replace_netrw = true,
    },
    picker = {
      sources = {
        explorer = {
          jump = { close = true },
          layout = { preset = 'default', preview = true },
        },
      },
    },
  },
  keys = {
    {
      '<leader>e',
      function()
        require('snacks').explorer.open()
      end,
      mode = 'n',
      desc = '[E]xplorer',
    },
    {
      '<leader>f',
      function()
        require('snacks').picker.smart()
      end,
      mode = 'n',
      desc = '[F]inder',
    },
    {
      '<leader>s',
      function()
        require('snacks').picker.grep()
      end,
    },
    {
      '<leader>bl',
      function()
        require('snacks').picker.git_log_file()
      end,
      mode = 'n',
      desc = '[B]uffer Git [L]og',
    },
  },
}
