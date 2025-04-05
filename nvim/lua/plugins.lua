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
  { 'christoomey/vim-tmux-navigator', commit ='791dacf'},
  { 'tpope/vim-obsession', commit ='ed9dfc7' },
  { 'terrortylor/nvim-comment', commit ='e9ac16a' },
  { 'ggandor/leap.nvim', commit ='346a16e' },
  { "williamboman/mason.nvim", commit ='fc98833' },
  { "williamboman/mason-lspconfig.nvim", commit ='1a31f82' },
  { "neovim/nvim-lspconfig", commit ='40f120c' },
  { 'ThePrimeagen/vim-be-good'},

  {
    'nvim-lua/plenary.nvim',
    commit = '857c5ac',
    name = 'plenary',
  },

  {
    'nvim-telescope/telescope.nvim',
    commit = 'a4ed825',
    dependencies = { 'plenary', "nvim-telescope/telescope-live-grep-args.nvim" };
  },
   
  {
    'nvim-treesitter/nvim-treesitter',
    commit = '9d80c149',
    build = ':TSUpdate',
  },

  {
    'stevearc/oil.nvim',
    commit = '302bbac',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    'akinsho/bufferline.nvim',
    commit = '655133c',
    dependencies = { 'nvim-tree/nvim-web-devicons', },
  },

  { 'mfussenegger/nvim-dap',
    commit = '7aade9e',
  },

  { "rcarriga/nvim-dap-ui", 
    commit = 'bc81f8d',
    dependencies = 
      {
        "mfussenegger/nvim-dap", 
        "nvim-neotest/nvim-nio"
      } 
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
    commit = '1517caa',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    "jiaoshijie/undotree",
    commit = 'eab459a',
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
