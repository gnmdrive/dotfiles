vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
vim.g.maplocalleader = vim.g.mapleader

require('options')
require('plugins')
require('keymaps')

vim.cmd.colorscheme('onedark')

-- TODO: Configure:
-- - https://github.com/glepnir/lspsaga.nvim
-- - https://github.com/folke/trouble.nvim
-- - https://github.com/kdheepak/lazygit.nvim
