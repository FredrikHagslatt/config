local status_ok, plugin = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("No treesitter found when configuring..")
  return
end

local setup = {
  ensure_installed = { "c", "cpp", "python", "lua", "vimdoc"},
  highlight = {
    enable = true,
  },
}

plugin.setup(setup)
