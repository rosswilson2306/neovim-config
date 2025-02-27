local bufnr = vim.api.nvim_get_current_buf()
-- vim.keymap.set("n", "<leader>a", function()
-- 	vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
-- 	-- or vim.lsp.buf.codeAction() if you don't want grouping.
-- end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "K", function()
  vim.cmd.RustLsp { "hover", "actions" }
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "ge", function()
  vim.cmd.RustLsp "explainError"
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "gl", function()
  vim.cmd.RustLsp "renderDiagnostic"
end, { silent = true, buffer = bufnr })

vim.g.rustaceanvim = {
  server = {
    on_attach = function(client, bufnr)
      -- you can also put keymaps in here
    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {
        procMacro = {
          ignored = {
            leptos_macro = {
              -- optional: --
              -- "component",
              "server",
            },
          },
        },
      },
    },
  },
}
