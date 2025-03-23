local status_ok, plugin = pcall(require, "telescope")
if not status_ok then
    print("No telescope found when configuring..")
  return
end

plugin.load_extension("live_grep_args")
