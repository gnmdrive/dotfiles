return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      'j-hui/fidget.nvim',
      opts = {
        window = {
          blend = 0,
        },
      },
    },
    -- {
    --   'folke/neodev.nvim',
    --   config = true,
    -- },
  },
  event = 'VimEnter',
  config = function()
    local on_attach = function(_, bufnr)
      local nmap = function(keys, func)
        vim.keymap.set('n', keys, func, { noremap = true, silent = true, buffer = bufnr })
      end
      nmap('K', vim.lsp.buf.hover)
      nmap('gd', vim.lsp.buf.definition)
      nmap('gD', vim.lsp.buf.declaration)
      nmap('gi', vim.lsp.buf.implementation)
      nmap('<leader>D', vim.lsp.buf.type_definition)
      nmap('gr', require('telescope.builtin').lsp_references)
      nmap('<leader>rn', vim.lsp.buf.rename)
      nmap('<leader>ca', vim.lsp.buf.code_action)

      -- Formatting Buffer
      vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format({
          filter = function(client)
            return client.name == 'null-ls'
          end,
          bufnr = bufnr,
        })
      end, {})
    end

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    local mason_lspconfig = require('mason-lspconfig')
    local lspconfig = require('lspconfig')
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          settings = vim.g.lsp_servers[server_name],
        })
      end,
    })
  end,
}
