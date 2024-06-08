local status_ok, plugin = pcall(require, "vscode")
if not status_ok then
    print("No vscode colorscheme found when configuring..")
  return
end

local setup = {
  italic_comments = true,
  disable_nvimtree_bg = true,
  color_overrides = {
    vscFoldBackground = '#FFFFFF',
    vscBack = '#101010', 
  }
}

plugin.setup(setup)
