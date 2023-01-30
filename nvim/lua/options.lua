-- Highlight On Yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 200,
    })
  end,
  group = highlight_group,
  pattern = '*',
})

vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError', linehl = 'ErrorLine' })
vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn', linehl = 'WaringLine' })
vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo', linehl = 'InfoLine' })
vim.fn.sign_define('DiagnosticSignHint', { text = ' ', texthl = 'DiagnosticSignHint', linehl = 'HintLine' })

-- LSP Servers
vim.g.lsp_servers = {
  clangd = {},
  -- pyright = {},
  -- tsserver = {},
  -- rust_analyzer = {},
  sumneko_lua = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
}

-- NullLs Sources
vim.g.null_ls_sources = {
  stylua = {},
  autopep8 = {},
  rustfmt = {},
  clang_format = {},
  prettier = {},
  eslint_d = {},
}

local opt = vim.opt
opt.iskeyword:append('-')

-- Numbers
opt.number = true
opt.relativenumber = true

-- Searchin
opt.hlsearch = true
opt.incsearch = true

opt.timeout = true
opt.timeoutlen = 500

-- Various
opt.mouse = 'a'
opt.ignorecase = true
opt.smartcase = true
opt.undofile = true
opt.wrap = false
opt.autoread = true
vim.bo.autoread = true
opt.updatetime = 50

-- Appearance
opt.guicursor = ''
opt.cursorline = true
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'number'
opt.colorcolumn = '100'

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Folding
opt.foldcolumn = '1'
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

opt.splitbelow = true
opt.splitright = true

opt.scrolloff = 7
opt.sidescrolloff = 15

-- Encoding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.list = true
opt.listchars = {}
opt.listchars:append('eol:↴')

-- Completion
opt.pumheight = 6
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.backspace = { 'indent', 'eol', 'start' }
