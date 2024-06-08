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
    'nvim-tree/nvim-tree.lua',
    depencies = { 'nvim-tree/nvim-web-devicons' },
  },

  {
    'christoomey/vim-tmux-navigator'
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
    'terrortylor/nvim-comment',
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    'mfussenegger/nvim-dap',
  },

  {
    "jiaoshijie/undotree",
    dependencies  = { "plenary" }
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  
  {
    'ggandor/leap.nvim',
  },
  
  {
    "williamboman/mason.nvim",
  },
  
  {
    "williamboman/mason-lspconfig.nvim",
  },
  
  {
    "neovim/nvim-lspconfig",
  },

  { 
    'ThePrimeagen/vim-be-good',
  },

  -- Color schemes --
  {
    'Mofiqul/vscode.nvim',
  },

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
