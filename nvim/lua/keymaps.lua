local all_modes = { '', '!', 'l', 't' }
local map = function(mode, key, action, desc)
  vim.keymap.set(mode, key, action, { silent = true, noremap = true, desc = desc })
end

-- General Keymaps
map(all_modes, '<C-c>', '<Esc>', '')
map('i', 'jk', '<Esc>', 'Exit Insert Mode With <jk>')
map('n', '<CR>', 'o<Esc>', 'Create New Line Under Cursor')
map('n', '<C-CR>', 'O<Esc>', 'Create New Line Above Cursor')
map('n', '<leader>h', ':nohlsearch<CR>', 'Remove Word Highlighting')
map('n', '<c-a>', 'ggVG', 'Select All Lines')
map('n', 'X', '^D', 'Delete String on the Line')

-- Manage Window
map('n', '<leader>s', ':vsplit<cr>', 'Split Window Vertically')
map('n', '<leader>q', ':bdelete<cr>', 'Close Current Window')

-- Resize Window With Arrows
map('n', '<up>', ':resize -2<cr>', '')
map('n', '<down>', ':resize +2<cr>', '')
map('n', '<left>', ':vertical resize -2<cr>', '')
map('n', '<right>', ':vertical resize +2<cr>', '')

-- Move Through Windows
map('n', '<c-h>', '<c-w>h', 'Move Cursor Left')
map('n', '<c-j>', '<c-w>j', 'Move Cursor Down')
map('n', '<c-k>', '<c-w>k', 'Move Cursor Up')
map('n', '<c-l>', '<c-w>l', 'Move Cursor Right')

-- Move Block Of Code
map('v', '<A-k>', ":m '<-2<cr>gv=gv", 'Move Selected Lines To Previous Line')
map('v', '<A-j>', ":m '>+1<cr>gv=gv", 'Move Selected Lines To Next Line')
map('v', '>', '>gv', '')
map('v', '<', '<gv', '')

-- Reduce Disorientation When Moving Through File
map('n', '<C-d>', '<C-d>zz', '')
map('n', '<C-u>', '<C-u>zz', '')
map('n', 'n', 'nzzzv', '')
map('n', 'N', 'Nzzzv', '')
map('n', '}', '}zz', '')
map('n', '{', '{zz', '')

-- Clipboard Related Keymaps
map('v', 'p', '"_dP', '')
map({ 'x', 'v' }, '<leader>p', '"_dP', 'Paste On Selected Text')
map({ 'n', 'v' }, '<leader>y', '"+y', 'Copy In Both System && Nvim Clipboard')
map({ 'n', 'v' }, 'x', '"_x', 'Delete Char Without Yanking It')
map({ 'n', 'v' }, '<leader>d', '"_d', 'Delete Without Yanking')

-- Diagnostic Keymaps
-- map('n', '[d', vim.diagnostic.goto_prev, '')
-- map('n', ']d', vim.diagnostic.goto_next, '')
-- map('n', '<leader>dl', vim.diagnostic.setloclist, "List Of Current Buffer's Diagnostics")

-- NeoTree
map('n', '<leader>n', ':Neotree toggle current reveal_force_cwd<cr>', 'Toggle Neotree Fullscreen')
map('n', '<leader>e', ':Neotree toggle reveal_force_cwd<cr>', 'Toggle Neotree Side window')
map('n', '<leader>t', ':Neotree float git_status<cr>', '')

-- VimMaximizer
map('n', '<leader>m', ':MaximizerToggle<cr>', 'Maximize Current Window')

-- Telescope
local builtin = require('telescope.builtin')
map('n', '<leader>f', builtin.find_files, 'Find Files')
map('n', '<leader>g', builtin.live_grep, 'Search String Globally')
map('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
    previewer = false,
  }))
end, 'Fuzzy Find Buffer')
