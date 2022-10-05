local buy = {}
local stand = require('otherstuff.standard')
local input

buy.food = function ()
io.write("\n")
print("Available to buy:")
for i = 1, stand.getlength(Foodlist), 1 do
if Buyable[Foodlist[i]] == 1 then
print("The cost of "..Foodlist[i].." is "..FoodCost[Foodlist[i]].." and is in the "..FoodType[Foodlist[i]].." Foodgroup")
end
end
io.write("\n")
io.write("What would you like to buy?\n")
input = io.read()
io.write('How Much?\n')
local ammount = io.read()
if stand.tablecheck(Foodlist,input) then
if Money >= tonumber(FoodCost[input]*ammount) then
print(C.green.."You bought "..ammount.." of "..input..C.none)
local temp = tonumber(FoodCost[input]*ammount)
print(C.red.."You spent "..temp.." dollars"..C.none)
--print(temp)
Money = Money - temp
FoodCount[input] = FoodCount[input] + 1*ammount
else
print(C.red.."You cant afford "..ammount.." of ".. input..C.none)
end
else
print(C.red.."That Doesnt Exist!"..C.none)
end
end

return buy