require 'options'
require 'keymaps'
require 'autocmd'

if vim.g.vscode then
  -- VSCode extension
else
  -- ordinary Neovim
  require 'config.lazy'
end
