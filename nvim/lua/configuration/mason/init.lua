local mason = {}

local mason_setup = {
  'williamboman/mason.nvim',
  cmd = 'VimEnter',
  config = true,
}
local mason_lspconfig = require('configuration.mason.mason-lspconfig')
local mason_null_ls = require('configuration.mason.mason-null-ls')

table.insert(mason, mason_setup)
table.insert(mason, mason_lspconfig)
table.insert(mason, mason_null_ls)

return mason
