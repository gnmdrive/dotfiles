return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      },
    },
    init = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')
      local prev = actions.move_selection_previous
      local next = actions.move_selection_next

      telescope.setup({
        defaults = {
          path_display = { 'smart' },
          mappings = {
            i = {
              ['<C-u>'] = false,
              ['<C-d>'] = false,
              ['<S-Tab>'] = prev,
              ['<Tab>'] = next,
              ['<C-k>'] = prev,
              ['<C-j>'] = next,
              ['<esc>'] = actions.close,
            },
            n = {
              ['<S-Tab>'] = prev,
              ['<Tab>'] = next,
              ['<C-[>'] = actions.close,
              ['<C-c>'] = actions.close,
            },
          },
        },
        layout_config = {
          horizontal = {
            preview_cutoff = 100,
            preview_width = 0.6,
          },
        },
        pickers = {
          find_files = {
            theme = 'dropdown',
            previewer = false,
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = 'smart_case',
          },
        },
      })

      telescope.load_extension('fzf')
    end,
  },
}
