Energy = 100




function MainLoop()
Input = io.read()

if Input == "sleep" then
if Energy < 100 then
print(Energy - 100)
Energy = Energy - 100
print("You Slept Well! Back to full energy!")
end
end

MainLoop()
end
MainLoop()