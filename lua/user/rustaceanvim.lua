vim.g.rustaceanvim = {
  tools = {},
  server = {
		on_attach = require("user.lsp.handlers").on_attach,
    settings = {
      ['rust-analyzer'] = {
        check = {
          command = "clippy"
        }
      }
    }
  }
}
