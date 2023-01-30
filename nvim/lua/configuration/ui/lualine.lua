return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  event = 'VimEnter',
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = false,
        disabled_filetypes = { 'neo-tree' },
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        global_status = true,
      },
      sections = {
        lualine_a = { {
          'mode',
          fmt = function()
            return ''
          end,
        } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filename', path = 1, color = { gui = 'bold' } } },
        lualine_x = { { 'filetype', color = { gui = 'bold' }, icons_enabled = true } },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    })
  end,
}
