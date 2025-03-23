local status_ok, plugin = pcall(require, "lualine")
if not status_ok then
  print("Could not find lualine when configuring..")
  return
end

local setup = {
  options = {
    theme = 'seoul256',
  },
}

plugin.setup(setup)
