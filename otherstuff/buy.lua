local buy = {}
local stand = require('otherstuff.standard')
local input

buy.food = function ()
io.write("\n")
print("Available to buy:")
for i = 1, stand.getlength(Foodlist), 1 do
if Buyable[Foodlist[i]] == 1 then
print("The cost of "..Foodlist[i].." is "..FoodCost[Foodlist[i]])
end
end
io.write("\n")
io.write("What would you like to buy?\n")
input = io.read()
if stand.tablecheck(Foodlist,input) then
if Money >= tonumber(FoodCost[input]) then
print("You bought a(n) "..input)
local temp = tonumber(FoodCost[input])
print("You spent "..temp.." dollars")
--print(temp)
Money = Money - temp
FoodCount[input] = FoodCount[input] + 1
else
print("You cant afford ".. input)
end
else
print("That Doesnt Exist!")
end
end

return buy