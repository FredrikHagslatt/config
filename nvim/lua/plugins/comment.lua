local status_ok, plugin = pcall(require, "nvim_comment")
if not status_ok then
  print("No comment plugin found when configuring..")
  return
end

local setup = {
  marker_padding = true,
  line_mapping = "<leader>cc",
  operator_mapping = "<leader>c",
  comment_chunk_text_object = "<leader>cb",
}

plugin.setup(setup)


