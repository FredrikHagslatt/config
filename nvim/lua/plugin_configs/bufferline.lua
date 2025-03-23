local status_ok, plugin = pcall(require, "bufferline")
if not status_ok then
  print("No bufferline found when configuring..")
  return
end

local setup = {
  highlights = {
    buffer_selected = {
      bold = true,
      italic = true,
    },
  },
  options = {
    close_command = "bdelete! %d",
    buffer_close_icon = '',
    indicator = {
      style = 'underline',
    },
    numbers = "ordinal",
    modified_icon = '●',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    diagnostics = "false",
    tab_size = 18,
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
    show_buffer_icons = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "slant",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_at_end',
  }
}

plugin.setup(setup)
-- Lua function to jump to buffer by ordinal number
local function jump_to_buffer_by_ordinal(ordinal)
  require('bufferline').go_to_buffer(tonumber(ordinal), true)
end

-- Register the Lua function as a Vim command
vim.api.nvim_create_user_command(
  'JumpBufferByOrdinal',
  function(opts)
    jump_to_buffer_by_ordinal(opts.args)
  end,
  { nargs = 1 }
)
