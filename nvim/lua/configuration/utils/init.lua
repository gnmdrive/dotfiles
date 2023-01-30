local utils = {}
local hl_lens = require('configuration.utils.highlight-lens')
local maximizer = require('configuration.utils.maximizer')
local null_ls = require('configuration.utils.null-ls')
local impatient = require('configuration.utils.impatient')

table.insert(utils, hl_lens)
table.insert(utils, maximizer)
table.insert(utils, null_ls)
table.insert(utils, impatient)

return utils
