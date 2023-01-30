return {
  'williamboman/mason-lspconfig.nvim',
  event = 'VimEnter',
  opts = {
    ensure_installed = vim.tbl_keys(vim.g.lsp_servers),
  },
}
