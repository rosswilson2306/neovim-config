-- taken from chris@machine
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Zoom buffer
keymap("n", "<Leader>-", ":wincmd _<cr>:wincmd \\|<cr>", opts)
keymap("n", "<Leader>=", ":wincmd =<cr>", opts)

-- Navigate buffers
keymap("n", "¬", ":bnext<CR>", opts)
keymap("n", "˙", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts) -- TODO: not working
keymap("v", "<A-k>", ":m .-2<CR>==", opts) -- TODO: not working
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- my mappings
--
-- Insert
keymap("i", "<C-h>", "<esc>ha", opts)
keymap("i", "<C-j>", "<esc>ja", opts)
keymap("i", "<C-k>", "<esc>ka", opts)
keymap("i", "<C-l>", "<esc>la", opts)

-- Normal
keymap("n", "<Leader>rs", ":let @/ = ''<CR>", opts)
keymap("n", "<Leader>tr", ":set relativenumber!<CR>", opts)
keymap("n", "<Leader>tw", ":set nowrap!<CR>", opts)
keymap("n", "∆", ":m .+1<CR>==", opts)
keymap("n", "˚", ":m .-2<CR>==", opts)
keymap("n", "<Leader>ce", "v$hcp", { noremap = false, silent = true }) -- needed to be recursive to use plugin mapping
keymap("n", "]]", "<plug>(signify-next-hunk)", opts)
keymap("n", "[[", "<plug>(signify-prev-hunk)", opts)
keymap("n", "<Leader>tb", ":BlamerToggle<CR>", opts)
keymap("n", "<Leader>ct", ":NvimTreeCollapse<CR>", opts)
keymap("n", "<Leader>f", ":Format<CR>", opts)

-- Command
-- keymap("c", "so<CR>", ":source ~/.config/nvm/init.lua<CR>", opts)

-- Telescope
keymap("n", "<c-p>", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<c-f>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<Leader>g", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<Leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<c-b>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n", "<Leader>rf", "<cmd>Telescope lsp_references<cr>", opts)

-- Nvim Tree
keymap("n", "<Leader>e", ":NvimTreeToggle<cr>", opts)

-- Harpoon
keymap("n", "<Leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<Leader>a", ":lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<Leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<Leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<Leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<Leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)

-- UndoTree
keymap("n", "<Leader>u", "<cmd>UndotreeToggle<cr>", opts)

-- TODO: few more in vimscript config related to plugins, look through
