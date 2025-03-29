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
  hook = function()
    local ft = vim.api.nvim_buf_get_option(0, "filetype")
    if ft == "cpp" or ft == "c" then
      vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    elseif ft == "lua" then
      vim.api.nvim_buf_set_option(0, "commentstring", "-- %s")
    end
  end
}

plugin.setup(setup)
