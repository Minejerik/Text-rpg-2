--start Vars
local cmd = require('otherstuff.commands')
local work = require('otherstuff.work')
local fight= require('otherstuff.fight')
local buy = require('otherstuff.buy')
local food = require("otherstuff.food")
local sleepcount = 1
C = require('otherstuff.colors')
VERSION = "1.8.3"
Cycles = 0
math.randomseed(os.time())
local temp = math.random(1,5)
Allergie = Allergies[temp]
Energy = 100
Money = 100
RandomTemp = 0
--end Vars
--This is the main function. It is called once when the program starts.
print(C.red..'You are alergic to the '..Allergie.." food group"..C.none)

function MainLoop()
io.write(C.yellow.."What Would you like to do?\n"..C.none)
Input = string.lower(io.read())

if Input == "sleep" then
if sleepcount >= 25 then
cmd.sleep()
sleepcount = 0
else
print(C.red..'You arent tired you cant sleep!'..C.none)
end
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

if Input == "list_food" then
food.list()
end

if Input == "fight" then
fight.flight()
end

if Input == "buy_food" then
buy.food()
end

if Input == "exit" then
print("exiting!")
os.exit()
end

if Input == "info" then
cmd.info()
end

Cycles = Cycles + 1

if Cycles % 30 == 0 then
print(C.red..'You paid your taxes!')
if Money > 30 then temp = math.random(30,Money) else temp = 5 end
print('You Paid '..temp..' Dollars'..C.none)
Money = Money - temp
end

if Money < 0 then
io.write('\n')
print(C.red..'Your In Debt!')
print('You Lose the game!'..C.none)
print('')
cmd.info()
os.exit()
end

math.randomseed(os.time())
sleepcount = sleepcount +1
MainLoop()
end
MainLoop()