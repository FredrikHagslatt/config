local status_ok, plugin = pcall(require, "telescope")
if not status_ok then
    print("No telescope found when configuring..")
  return
end

plugin.setup(
{
  defaults =
  {
    file_ignore_patterns = 
    {
      "__pycache__",
      "%.pyc",
      "%.pyo",
      "%.git/",
      "venv/",
      "build/",
    },
  },
}
)

plugin.load_extension("live_grep_args")
