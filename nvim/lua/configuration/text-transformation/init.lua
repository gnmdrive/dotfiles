local text_transformation = {}
local autopairs = require('configuration.text-transformation.autopairs')
local sorround = require('configuration.text-transformation.sorround')
local visual_multi = require('configuration.text-transformation.visual-multi')

table.insert(text_transformation, autopairs)
table.insert(text_transformation, sorround)
table.insert(text_transformation, visual_multi)

return text_transformation
