local status_ok, rt = pcall(require, "rust-tools")
if not status_ok then
  return
end

-- rt.setup({
--   server = {
--     on_attach = function(_, bufnr)
--       -- Hover actions
--       vim.keymap.set("n", "gl", rt.hover_actions.hover_actions, { buffer = bufnr })
--       -- Code action groups
--       vim.keymap.set("n", "<Leader>x", rt.code_action_group.code_action_group, { buffer = bufnr })
--     end,
--   },
-- })

rt.setup({
	server = {
		on_attach = function(client, bufnr)
			on_attach(client, bufnr)
			vim.keymap.set('n', 'K', function()
				_G.X.help_float = 1
				rt.hover_actions.hover_actions()
			end, { buffer = bufnr })
			vim.keymap.set('n', 'ga', rt.code_action_group.code_action_group, { buffer = bufnr })

			vim.api.nvim_create_autocmd('BufWritePre', {
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ name = 'rust_analyzer' })
				end,
				desc = 'Auto format on save for rust codes',
			})
		end,
		handlers = {
			['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
				virtual_text = {
					prefix = '',
					spacing = 0,
					format = function(diag)
						if diag.severity == vim.diagnostic.severity.ERROR then
							return diag.message
						end
						return ''
					end,
				},
			}),
		},
	},
})
