local comments = {}
local todo_comments = require('configuration.comments.todo-comment')
local commenting = require('configuration.comments.commenting')

table.insert(comments, todo_comments)
table.insert(comments, commenting)

return comments
