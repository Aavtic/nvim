vim.api.nvim_create_user_command(
  'Compile',
  function(opts)
    local command = opts.args
    if command == "" then
      print("No command specified")
      return
    end
    vim.cmd('15 sp')
    vim.cmd('terminal! ' .. command)
  end,
  { nargs = 1 } -- This specifies that the command takes exactly 1 argument
)


vim.api.nvim_create_user_command(
  'Trun',
  function(opts)
    local command = opts.args
    if command == "" then
      print("No command specified")
      return
    end
    vim.cmd('15 sp')
    vim.cmd('terminal! ' .. command)
  end,
  { nargs = 1 } -- This specifies that the command takes exactly 1 argument
)
