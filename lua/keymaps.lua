-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

local opts = { noremap = true, silent = true }

-- Visual --
-- Stay in indent mode
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)

-- Visual Block --
-- Move text up and down
vim.keymap.set('x', 'J', ":move '>+1<CR>gv-gv", opts)
vim.keymap.set('x', 'K', ":move '<-2<CR>gv-gv", opts)
vim.keymap.set('x', '∆', ":move '>+1<CR>gv-gv", opts)
vim.keymap.set('x', '˚', ":move '<-2<CR>gv-gv", opts)

-- Insert
vim.keymap.set('i', '<C-h>', '<esc>ha', opts)
vim.keymap.set('i', '<C-j>', '<esc>ja', opts)
vim.keymap.set('i', '<C-k>', '<esc>ka', opts)
vim.keymap.set('i', '<C-l>', '<esc>la', opts)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>T', '<C-w>T', { desc = 'Send to tab' })
vim.keymap.set('n', '<leader>gt', '<C-w>gt', { desc = 'Cycle tabs' })

-- Resize splits
vim.keymap.set('n', '≠', ':resize +2<CR>', opts)
vim.keymap.set('n', '–', ':resize -2<CR>', opts)
vim.keymap.set('n', '≥', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '≤', ':vertical resize +2<CR>', opts)

-- Navigate buffers
vim.keymap.set('n', '¬', ':bnext<CR>', opts)
vim.keymap.set('n', '˙', ':bprevious<CR>', opts)

vim.keymap.set('n', '<Leader>tr', ':set relativenumber!<CR>', opts)
vim.keymap.set('n', '<Leader>tw', ':set nowrap!<CR>', opts)
vim.keymap.set('n', '∆', ':m .+1<CR>==', opts)
vim.keymap.set('n', '˚', ':m .-2<CR>==', opts)
vim.keymap.set('n', '<Leader>tt', ':TSJToggle<CR>', opts)
vim.keymap.set('n', '<Leader>j', ':cnext<CR>', opts)
vim.keymap.set('n', '<Leader>k', ':cprev<CR>', opts)
vim.keymap.set('n', '<Leader>cb', ":let @+=expand('%')<CR>", opts)
vim.keymap.set('n', '<Leader>ce', 'v$hcp', { noremap = false, silent = true }) -- needed to be recursive to use plugin mapping

-- Fugitive
vim.keymap.set('n', '<c-g>', ':vertical G<cr>', opts)

-- Leap
vim.keymap.set('n', 'z', '<Plug>(leap-forward)')
vim.keymap.set('n', 'Z', '<Plug>(leap-backward)', opts)
vim.keymap.set('n', '<Leader>z', '<Plug>(leap-forward-till)', opts)
vim.keymap.set('n', '<Leader>Z', '<Plug>(leap-backward-till)', opts)

-- UndoTree
vim.keymap.set('n', '<Leader>u', '<cmd>UndotreeToggle<cr>', opts)

-- Harpoon
vim.keymap.set('n', '<Leader>h', ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
vim.keymap.set('n', '<Leader>a', ":lua require('harpoon.mark').add_file()<CR>", opts)
vim.keymap.set('n', '<Leader>1', ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
vim.keymap.set('n', '<Leader>2', ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
vim.keymap.set('n', '<Leader>3', ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
vim.keymap.set('n', '<Leader>4', ":lua require('harpoon.ui').nav_file(4)<CR>", opts)
vim.keymap.set('n', '<Leader>5', ":lua require('harpoon.ui').nav_file(5)<CR>", opts)

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
