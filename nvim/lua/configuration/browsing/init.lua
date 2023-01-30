local browsing = {}
local telescope = require('configuration.browsing.telescope')
local neotree = require('configuration.browsing.neotree')

table.insert(browsing, telescope)
table.insert(browsing, neotree)

return browsing
