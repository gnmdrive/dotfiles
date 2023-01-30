return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = { 'windwp/nvim-ts-autotag', 'JoosepAlviste/nvim-ts-context-commentstring' },
  build = ':TSUpdate',
  init = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'c', 'cpp', 'rust', 'lua', 'python', 'tsx', 'json', 'typescript', 'help', 'vim' },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      context_commentstring = {
        enable = true,
      },
    })
  end,
}
