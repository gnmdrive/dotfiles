local cmp = {}
local snippets = require('configuration.cmp.snippets')
local cmp_setup = require('configuration.cmp.cmp-setup')

table.insert(cmp, snippets)
table.insert(cmp, cmp_setup)

return cmp
