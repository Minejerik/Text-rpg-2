--start Vars
Cmd = require('otherstuff.commands')
local work = require('otherstuff.work')
local fight= require('otherstuff.fight')
local buy = require('otherstuff.buy')
local food = require("otherstuff.food")
local stand = require('otherstuff.standard')
Energy = 100
CookingGasLeft = 5
Money = 100
RandomTemp = 0
--end Vars
--This is the main function. It is called once when the program starts.

function MainLoop()
io.write("\n")
io.write("What Would you like to do?\n")
Input = io.read()


if Input == "sleep" then
Cmd.sleep()
end

if Input == "work" then
work.work()
end

if Input == "eat" then
food.eat()
end

if Input == "cook" then
food.cook()
end

if Input == "listfood" then
food.list()
end
	
if Input == "askforpromotion" then
print("working")
work.askpromo()
end

if Input == "fight" then
fight.flight()
end

if Input == "buy_food" then
buy.food()
end

Hunger = Hunger - math.random(5)
MainLoop()
end
MainLoop()