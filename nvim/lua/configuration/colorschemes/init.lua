local colorschemes = {}
local onedark = require('configuration.colorschemes.onedark')
local gruvbox = require('configuration.colorschemes.gruvbox')
local tokyonight = require('configuration.colorschemes.tokyonight')
local sonokai = require('configuration.colorschemes.sonokai')
local melange = require('configuration.colorschemes.melange')
local everforest = require('configuration.colorschemes.everforest')

table.insert(colorschemes, onedark)
table.insert(colorschemes, tokyonight)
table.insert(colorschemes, gruvbox)
table.insert(colorschemes, sonokai)
table.insert(colorschemes, melange)
table.insert(colorschemes, everforest)

return colorschemes
