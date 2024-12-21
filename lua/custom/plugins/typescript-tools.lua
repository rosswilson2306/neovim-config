return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
    config = function()
      require('typescript-tools').setup {
        settings = {
          tsserver_format_options = function(ft)
            -- Return nil or an empty table to disable formatting options
            -- This allows formatting to be handled by conform.nvim using prettier
            return nil
          end,
        },
        on_attach = function(client, bufnr)
          -- Disable formatting capability for this LSP client
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end,
      }
    end,
  },
}
