local status_ok, plugin = pcall(require, "oil")
if not status_ok then
    print("No oil found when configuring..")
  return
end

local setup = {
  keymaps =
  {
    ["m"] = "actions.parent",
    [","] = "actions.parent",
  },
}

plugin.setup(setup)
