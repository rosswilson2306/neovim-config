local bufnr = vim.api.nvim_get_current_buf()
-- vim.keymap.set("n", "<leader>a", function()
-- 	vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
-- 	-- or vim.lsp.buf.codeAction() if you don't want grouping.
-- end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "K", function()
	vim.cmd.RustLsp { 'hover', 'actions' }
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "ge", function()
  vim.cmd.RustLsp('explainError')
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "gl", function()
  vim.cmd.RustLsp('renderDiagnostic')
end, { silent = true, buffer = bufnr })
