local status_ok, treejs = pcall(require, "treesj")
if not status_ok then
  return
end

treejs.setup({
  max_join_length = 300,
  use_default_keymaps = false,
})
