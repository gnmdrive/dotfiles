return {
  'lukas-reineke/indent-blankline.nvim',
  event = 'BufEnter',
  config = function()
    require('indent_blankline').setup({
      char = '',
      char_list = '',
      space_char_blankline = ' ',
      show_end_of_line = true,
    })
  end,
}
