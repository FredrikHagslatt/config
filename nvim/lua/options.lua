vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

local set = vim.opt

set.mouse = ""
set.number = true
set.relativenumber = true
set.expandtab = true
set.shiftwidth = 4
set.tabstop = 4
set.smartindent = true
set.wrap = false
set.termguicolors = true


-- Autocmd to set tab witdh to 2 spaces for .lua files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

--vim.api.nvim_create_autocmd("FileType", {
--  pattern = { "c", "cpp" },
--  callback = function()
--    vim.opt_local.tabstop = 3
--    vim.opt_local.shiftwidth = 3
--  end,
--})
