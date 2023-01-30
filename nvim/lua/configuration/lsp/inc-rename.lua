return {
  'smjonas/inc-rename.nvim',
  event = 'VimEnter',
  config = function()
    require('inc_rename').setup({})
  end,
}
