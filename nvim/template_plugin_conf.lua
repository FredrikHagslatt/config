local status_ok, plugin = pcall(require, "")
if not status_ok then
  print("Could not find __ when configuring..")
  return
end

local setup = {
}

plugin.setup(setup)
