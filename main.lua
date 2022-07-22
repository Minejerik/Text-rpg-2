--start Vars
Cmd = require('other stuff.commands')
local work = require('other stuff.work')
Energy = 100
Money = 100
RandomTemp = 0
--end Vars
--This is the main function. It is called once when the program starts.

print("Hello World")
function MainLoop()
io.write("What Would you like to do?\n")
Input = io.read()

if Input == "sleep" then
Cmd.sleep()
end

if Input == "work" then
work.work()
end

if Input == "askforpromotion" then
work.askpromo()
end

MainLoop()
end
MainLoop()