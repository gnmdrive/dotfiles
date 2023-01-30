local syntax = {}
local treesitter = require('configuration.syntax.treesitter')
local hl_args = require('configuration.syntax.highlight-args')
local illuminate = require('configuration.syntax.illuminate')
local sleuth = require('configuration.syntax.sleuth')
local indent_blankline = require('configuration.syntax.indent-blankline')

table.insert(syntax, treesitter)
table.insert(syntax, hl_args)
table.insert(syntax, illuminate)
table.insert(syntax, sleuth)
table.insert(syntax, indent_blankline)

return syntax
