return {
  'jay-babu/mason-null-ls.nvim',
  event = 'VimEnter',
  opts = {
    ensure_installed = vim.tbl_keys(vim.g.null_ls_sources),
    automatic_setup = true,
  },
}
