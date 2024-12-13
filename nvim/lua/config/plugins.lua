-- Ensure lazy.nvim is installed
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazy_path,
  })
end
vim.opt.rtp:prepend(lazy_path)


local plugins = {
  { 'christoomey/vim-tmux-navigator' },
  { 'tpope/vim-obsession' },
  { 'terrortylor/nvim-comment' },
  { 'mfussenegger/nvim-dap' },
  { 'ggandor/leap.nvim' },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { 'ThePrimeagen/vim-be-good' },

  {
    'nvim-lua/plenary.nvim',
    name = 'plenary',
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'plenary' }
  },
   
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', },
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      -- 'hrsh7th/cmp-cmdline',
      -- 'L3MON4D3/LuaSnip',
    },
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    "jiaoshijie/undotree",
    dependencies  = { "plenary" }
  },

  -- {
  --   "windwp/nvim-autopairs",
  --   event = "InsertEnter",
  --   config = true,
  -- },
  
  -- Color schemes --
  { 'Mofiqul/vscode.nvim' },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
}
local opts = {}
require('lazy').setup(plugins, opts)
