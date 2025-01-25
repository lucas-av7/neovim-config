return {
  { 'tpope/vim-sleuth' }, -- Detect tabstop and shiftwidth automatically
  {
    'folke/todo-comments.nvim', -- Highlight todo, notes, etc in comments
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  -- Better Around/Inside textobjects
  --
  -- Examples:
  --  - va)  - [V]isually select [A]round [)]paren
  --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
  --  - ci'  - [C]hange [I]nside [']quote
  { 'echasnovski/mini.ai', opts = { n_lines = 500 } },
  -- Add/delete/replace surroundings (brackets, quotes, etc.)
  --
  -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
  -- - sd'   - [S]urround [D]elete [']quotes
  -- - sr)'  - [S]urround [R]eplace [)] [']
  { 'echasnovski/mini.surround', opts = {} },
  {
    'nvim-lualine/lualine.nvim', -- Status line
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      tabline = {
        lualine_a = {
          function()
            local cwd = vim.fn.getcwd()
            local project_name = cwd:match '([^/]+)$'
            return project_name
          end,
        },
        lualine_b = { 'branch' },
        lualine_c = {},
        lualine_y = { { 'datetime', style = '%H:%M' } },
        lualine_z = { { 'tabs', show_modified_status = false } },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = {
          'diff',
          'diagnostics',
          'grapple',
        },
      },
    },
  },
}
