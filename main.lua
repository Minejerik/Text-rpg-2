Energy = 30
RandomTemp = 0


print("Hello World")
function MainLoop()
Input = io.read()

if Input == "sleep" then
RandomTemp = math.random(1,3)
if RandomTemp == 1 or 2 then
if Energy < 100 then

Energy = Energy + 100 - Energy
print("You Slept Well! Back to full energy!")
end
end

if RandomTemp == 3 then
Energy = Energy - 10
print("You didn't sleep well! You lost energy!")
end
end

MainLoop()
end
MainLoop()