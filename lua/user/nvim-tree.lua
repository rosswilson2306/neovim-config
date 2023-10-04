local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Up'))
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Up'))
end

nvim_tree.setup({
    disable_netrw = true,
    hijack_netrw = true,
    -- auto_close = true,
    open_on_tab = false,
    hijack_cursor = false,
    update_cwd = true,
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 500,
    },
    view = {
        width = 30,
        -- height = 30,
        side = "left",
        -- auto_resize = true,
        -- mappings = {
        --     custom_only = false,
        --     list = {
        --     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        --     { key = "h", cb = tree_cb "close_node" },
        --     { key = "v", cb = tree_cb "vsplit" },
        --     },
        -- },
        number = false,
        relativenumber = false,
    },
    actions = {
        -- quit_on_open = true,
    },
    renderer = {
        highlight_git = true,
        root_folder_modifier = ":t",
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",
                    untracked = "U",
                    ignored = "◌",
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
            }
        }
    },
    on_attach = on_attach
})

