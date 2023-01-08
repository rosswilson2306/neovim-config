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

keymap("n", "<leader>e", ":Lex 30<cr>", opts) -- TODO: remove when using other file explorer

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

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
keymap("x", "<∆>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<˚>", ":move '<-2<CR>gv-gv", opts)

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

-- Telescope
keymap("n", "<c-p>", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<c-f>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<Leader>g", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<Leader>b", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<c-b>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)

-- Nvim Tree
keymap("n", "<c-t>", ":NvimTreeToggle<cr>", opts)

-- TODO: few more in vimscript config related to plugins, look through
