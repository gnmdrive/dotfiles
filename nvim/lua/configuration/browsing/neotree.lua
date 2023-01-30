return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'kyazdani42/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  init = function()
    require('neo-tree').setup({
      enable_modified_markers = false,
      popup_border_style = 'solid',
      use_popups_for_input = false,
      default_component_configs = {
        icon = {
          folder_empty = '',
        },
      },
      window = {
        mappings = {
          ['/'] = 'noop',
        },
      },
      filesystem = {
        filtered_items = {
          hide_by_name = {
            'node_modules',
          },
          always_show = {
            '.gitignored',
          },
        },
      },
    })
  end,
}
