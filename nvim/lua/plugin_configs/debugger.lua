local dap_status_ok, dap = pcall(require, "dap")
local dap_ui_status_ok, dap_ui = pcall(require, "dapui")
local dap_python_status_ok, dap_python = pcall(require, "dap-python")

if not dap_status_ok then
  print("No dap found when configuring..")
  return
end

if not dap_ui_status_ok then
  print("No dapui found when configuring..")
  return
end

if not dap_python_status_ok then
  print("No dap-python found when configuring..")
  return
end

-- Setup adapters for gdb
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" }
}

-- Setup configurations
dap.configurations.c = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  }
}

dap_python.test_runner = 'pytest'
dap_ui.setup()

-- Open UI automatically when debugging starts
dap.listeners.after.event_initialized["dapui_config"] = function()
  dap_ui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dap_ui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dap_ui.close()
end
