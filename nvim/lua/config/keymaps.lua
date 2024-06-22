local map = vim.keymap.set

local opts = {noremap = true, silent = true}

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '

-- LSP --
local lsp_opts = { buffer = bufnr, noremap = true, silent = true }
map('n', 'gD', vim.lsp.buf.declaration, lsp_opts)
map('n', 'gd', vim.lsp.buf.definition, lsp_opts)
map('n', 'K', vim.lsp.buf.hover, lsp_opts)
map('n', 'gi', vim.lsp.buf.implementation, lsp_opts)
map('n', 'gr', vim.lsp.buf.references, lsp_opts)
map('n', '<leader>lt', vim.lsp.buf.type_definition, lsp_opts)
map('n', '<leader>lr', vim.lsp.buf.rename, lsp_opts)
map('n', '<leader>lf', vim.diagnostic.open_float, lsp_opts)
map('n', '<leader>lj', vim.diagnostic.goto_next, lsp_opts)
map('n', '<leader>lk', vim.diagnostic.goto_prev, lsp_opts)
map('n', '<leader>ld', vim.diagnostic.setloclist, lsp_opts)
-- map('n', '<leader>ls', vim.lsp.buf.signature_help, lsp_opts)
-- map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, lsp_opts)
-- map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, lsp_opts)

-- NvimTreeToggle --
-- map("n", "<Leader>e", ':NvimTreeToggle<CR>', opts)

-- NvimTreeToggle --
map("n", "<Leader>e", ':Oil --float<CR>', opts)

-- Telescope --
map('n', '<Leader>f', ':Telescope find_files<CR>', opts)
map('n', '<Leader>F', ":lua require('telescope.builtin').find_files({find_command = { 'fdfind', '--type', 'f', '--no-ignore-vcs'}})<CR>", opts)
map('n', '<Leader>lg', ':Telescope live_grep<CR>', opts)

-- Tmux --
map('n', 'C-h>', ':TmuxNavigateLeft<CR>', opts)
map('n', 'C-l>', ':TmuxNavigateRight<CR>', opts)
map('n', 'C-j>', ':TmuxNavigateDown<CR>', opts)
map('n', 'C-k>', ':TmuxNavigateUp<CR>', opts)

-- Leap --
map({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
map({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
map({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')

--- Swedish keyboard --
map({"n", "v"}, '+', "$", opts)
map({"n", "v", "i"}, "ö", "[", opts)
map({"n", "v", "i"}, "ä", "]", opts)
map({"n", "v", "i"}, "Ö", "{", opts)
map({"n", "v", "i"}, "Ä", "}", opts)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
map("n", "<A-h>", ":bprevious<CR>", opts)
map("n", "<A-l>", ":bnext<CR>", opts)
map("n", "<leader>w", ":bd<CR>", opts)
map("n", "<leader>1", ":JumpBufferByOrdinal 1<CR>", opts)
map("n", "<leader>2", ":JumpBufferByOrdinal 2<CR>", opts)
map("n", "<leader>3", ":JumpBufferByOrdinal 3<CR>", opts)
map("n", "<leader>4", ":JumpBufferByOrdinal 4<CR>", opts)
map("n", "<leader>5", ":JumpBufferByOrdinal 5<CR>", opts)
map("n", "<leader>6", ":JumpBufferByOrdinal 6<CR>", opts)
map("n", "<leader>7", ":JumpBufferByOrdinal 7<CR>", opts)
map("n", "<leader>8", ":JumpBufferByOrdinal 8<CR>", opts)
map("n", "<leader>9", ":JumpBufferByOrdinal 9<CR>", opts)

-- Move text up and down
map("n", "<A-Up>", ":m .-2<CR>==", opts)
map("n", "<A-Down>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("n", "<A-j>", ":m .+1<CR>==", opts)

-- Move text up and down
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
map("n", "<tab>", "v>gv^<esc>", opts)
map("n", "<S-tab>", "v<gv^<esc>", opts)
map("v", "<tab>", ">gv^", opts)
map("v", "<S-tab>", "<gv^", opts)

-- Center PageUp/PageDown
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Misc --
map("n", "<leader>h", ":noh<CR>", opts)

-- Open this file for reference --

map("n", "<leader>km", ":lua keymaps()<CR>")
function keymaps()
  vim.cmd("edit" .. "~/.config/nvim/lua/config/keymaps.lua")
end

map("n", "<leader>kb", ":lua keybinds()<CR>")
function keybinds()
  keymaps()
end


