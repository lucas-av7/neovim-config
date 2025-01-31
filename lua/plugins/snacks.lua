return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    explorer = {
      replace_netrw = true,
    },
  },
  keys = {
    {
      '\\',
      function()
        require('snacks').explorer.open()
      end,
      mode = 'n',
      desc = 'File Explore',
    },
  },
}
