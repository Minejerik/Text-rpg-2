--start Vars
Cmd = require('commands')
local work = require('work')
Energy = 100
Money = 100
RandomTemp = 0
--end Vars
--This is the main function. It is called once when the program starts.

print("Hello World")
function MainLoop()
Input = io.read()

if Input == "sleep" then
Cmd.sleep()
end

if Input == "work" then
work.work()
end

MainLoop()
end
MainLoop()