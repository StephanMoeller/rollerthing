local M = {} -- M stands for module, a naming convention

function M.setup()
   print("hello")
  -- Create a command, ':DoTheThing'
  vim.api.nvim_create_user_command(
    'DoTheThing',
    function(input)
        print "Something should happen here..."
    end,
    {bang = true, desc = 'a new command to do the thing'}
)
end

return M
