local lsp = {}

local lsp_setup = require('configuration.lsp.lsp-setup')
local lsp_kind = require('configuration.lsp.lsp-kind')
local inc_rename = require('configuration.lsp.inc-rename')

table.insert(lsp, lsp_setup)
table.insert(lsp, lsp_kind)
table.insert(lsp, inc_rename)

return lsp
