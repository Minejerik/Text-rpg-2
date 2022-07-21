--start Vars
Cmd = require('commands')
Energy = 30
RandomTemp = 0
--end Vars
--This is the main function. It is called once when the program starts.

print("Hello World")
function MainLoop()
Input = io.read()

if Input == "sleep" then
Cmd.sleep()
end


MainLoop()
end
MainLoop()