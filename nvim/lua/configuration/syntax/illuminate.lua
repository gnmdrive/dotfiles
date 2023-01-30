return {
  'RRethy/vim-illuminate',
  event = 'BufEnter',
  config = function()
    require('illuminate').configure({
      min_count_to_highlight = 2,
      providers = {
        'treesitter',
      },
      filetypes_denylist = {
        'dirvish',
        'fugitive',
      },
    })
  end,
}
