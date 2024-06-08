require('config.options')
require('config.keymaps')
require('config.plugins')
require('config.plugins_conf')

-- Automatically reload Neovim whenever you save the configuration files
vim.cmd([[
  augroup ConfigReload
    autocmd!
    autocmd BufWritePost ~/.config/nvim/*.lua source <afile>
  augroup END
]])

--vim.cmd('colorscheme vscode')
vim.cmd('colorscheme tokyonight-night')
