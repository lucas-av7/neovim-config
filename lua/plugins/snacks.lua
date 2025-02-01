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
    indent = {
      indent = {
        only_scope = true,
        only_current = true,
      },
      animate = {
        enabled = false,
      },
      scope = {
        enabled = false,
      },
    },
  },
  keys = {
    -- Explorer
    {
      '<leader>e',
      function()
        require('snacks').explorer.open()
      end,
      mode = 'n',
      desc = '[E]xplorer',
    },
    -- Picker
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
    -- Bufdelete
    {
      '<leader>bq',
      function()
        require('snacks').bufdelete()
      end,
      mode = 'n',
      desc = '[B]uffer [D]elete',
    },
    {
      '<leader>wd',
      function()
        require('snacks').bufdelete.all()
      end,
      mode = 'n',
      desc = '[W]orkspace [D]elete buffers',
    },
    -- Indent
    {
      '<leader>ti',
      function()
        local snacks = require 'snacks'
        if snacks.indent.enabled then
          snacks.indent.disable()
        else
          snacks.indent.enable()
        end
      end,
      mode = 'n',
      desc = '[T]oggle [I]ndent Guides',
    },
  },
}
