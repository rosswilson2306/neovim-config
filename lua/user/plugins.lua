local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- "folke/which-key.nvim",
  -- { "folke/neoconf.nvim", cmd = "Neoconf" },
  -- "folke/neodev.nvim",
  "nvim-lua/plenary.nvim",
  "tpope/vim-fugitive",
  "tpope/vim-commentary",
  "lewis6991/gitsigns.nvim",
  "christoomey/vim-system-copy",
  "christoomey/vim-tmux-navigator",
  "folke/tokyonight.nvim",
  "windwp/nvim-autopairs",
  "ThePrimeagen/harpoon",
  "ThePrimeagen/git-worktree.nvim",
  "mbbill/undotree",
  "ggandor/leap.nvim",
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-media-files.nvim", -- is this a dependency
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  -- {
  --   'Wansmer/treesj',
  --   keys = { '<Leader>tt', '<space>m' },
  --   dependencies = { 'nvim-treesitter/nvim-treesitter' },
  -- },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },
  -- CMP
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      'rafamadriz/friendly-snippets',
      'dcampos/nvim-snippy',
      'dcampos/cmp-snippy'
    },
  },
  -- LSP
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "simrat39/rust-tools.nvim",
})
