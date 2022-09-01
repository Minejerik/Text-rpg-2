--variable hell
local input
local pro
Hunger = 100
--BLANK
Foodlist = {}
Foodlist[1] = "beef"
Foodlist[2] = "coke"
Foodlist[3] = "burnt_junk"
Foodlist[4] = "steak"
--BLANK
FoodCount = {}
FoodCount["beef"] = 1
FoodCount["coke"] = 0
FoodCount["burnt_junk"] = 0
FoodCount["steak"] = 0
--BLANK
Cookablefood = {}
Cookablefood["beef"] = 1
Cookablefood["coke"] = 0
Cookablefood["burnt_junk"] = 0
Cookablefood["steak"] = 0
--BLANK
Hungerammount = {}
Hungerammount["beef"] = 5
Hungerammount["coke"] = 15
Hungerammount["burnt_junk"] = -2
Hungerammount["steak"] = 30
--BLANK
Product = {}
Product["beef"] = "steak"
--BLANK
FoodCost = {}
FoodCost["beef"] = 20
FoodCost["coke"] = 15
--BLANK
Buyable = {}
Buyable["beef"] = 1
Buyable["coke"] = 1
Buyable["burnt_junk"] = 0
Buyable["steak"] = 0
--end of variable hell
local stand = require('otherstuff.standard')
local food = {}

food.cook = function ()
	io.write("What would you like to cook?\n")
	input = io.read()
	if stand.tablecheck(Cookablefood,input) then
	if tonumber(Foodlist[input]) == 1 then
		if FoodCount[input] >= 1 then
		FoodCount[input] = FoodCount[input] - 1
		pro = Product[input]
		FoodCount[pro] = FoodCount[pro] + 1
		print("Cooked 1 piece of "..pro)
 			else
			print("You dont have any "..input)		
			end
		else
		FoodCount[input] = FoodCount[input]-1
		FoodCount["burnt_junk"] = FoodCount["burnt_junk"] + 1
		print("You cant cook that, you made burnt junk")
	end
	else
	print("That Doesnt Exist!")
	end
end

food.eat = function ()
io.write("What would you like to eat?\n")
input = io.read()
if FoodCount[input] >= 1 then
Hunger = Hunger + Hungerammount[input]
print("You ate a(n) "..input)
print("You gained "..Hungerammount[input].." Hunger!")
else
print("You dont have any "..input)
end
end

food.list = function ()
for i = 1, 4, 1 do
local temp = Foodlist[i]
print("You have "..FoodCount[temp].." of "..temp)
end
end

return food