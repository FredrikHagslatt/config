local status_ok, mason, mason_lspconfig, lspconfig

status_ok, mason = pcall(require, "mason")
if not status_ok then
  print("No mason found when configuring..")
  return
end

status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  print("No mason-lspconfig found when configuring..")
  return
end

status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  print("No lspconfig found when configuring..")
  return
end

require("mason").setup()
require("mason-lspconfig").setup
{
  ensure_installed = { "pyright", "clangd" },
}

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
local servers = { "pyright" , "clangd" }
-- local servers = { "ruff", "clangd" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    autostart = false,
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

vim.o.signcolumn = "no"
