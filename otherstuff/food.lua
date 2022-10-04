--variable hell
local input
local stand = require('otherstuff.standard')
local pro
Hunger = 100

function listfood()
for i = 1, stand.getlength(Foodlist), 1 do
local temp = Foodlist[i]
print("You have "..FoodCount[temp].." of "..temp)
end
end

function listfoode()
for i = 1, stand.getlength(Foodlist), 1 do
local temp = Foodlist[i]
if FoodCount[temp] > 0 then print("You have "..FoodCount[temp].." of "..temp) end
end
end

--BLANK
Foodlist = {}
Foodlist[1] = "beef"
Foodlist[2] = "coke"
Foodlist[3] = "burnt_junk"
Foodlist[4] = "steak"
Foodlist[5] = "pork"
Foodlist[6] = "cooked_pork"
Foodlist[7] = "raw_chicken"
Foodlist[8] = "cooked_chicken"
Foodlist[9] = "brick_of_ramen"
Foodlist[10] = "bowl_of_ramen"
Foodlist[11] = "candy"
Foodlist[12] = "raw_beans"
Foodlist[13] = "cooked_beans"
--BLANK
FoodCount = {}
FoodCount["beef"] = 0
FoodCount["coke"] = 1
FoodCount["burnt_junk"] = 3
FoodCount["steak"] = 0
FoodCount["pork"] = 0
FoodCount["cooked_pork"] = 0
FoodCount["raw_chicken"] = 0
FoodCount["cooked_chicken"] = 0
FoodCount["brick_of_ramen"] = 1
FoodCount["bowl_of_ramen"] = 0
FoodCount["candy"] = 0
FoodCount['raw_beans'] = 0
FoodCount['cooked_beans'] = 0
--BLANK
Cookablefood = {}
Cookablefood["beef"] = 1
Cookablefood["coke"] = 0
Cookablefood["burnt_junk"] = 0
Cookablefood["steak"] = 0
Cookablefood["pork"] = 1
Cookablefood["cooked_pork"] = 0
Cookablefood["raw_chicken"] = 1
Cookablefood["cooked_chicken"] = 0
Cookablefood["brick_of_ramen"] = 1
Cookablefood["bowl_of_ramen"] = 0
Cookablefood['candy'] = 0
Cookablefood['raw_beans'] = 1
Cookablefood['cooked_beans'] = 0
--BLANK
Energyammount = {}
Energyammount["beef"] = 2
Energyammount["coke"] = 5
Energyammount["burnt_junk"] = -2
Energyammount["steak"] = 25
Energyammount["pork"] = 5
Energyammount["cooked_pork"] = 15
Energyammount["raw_chicken"] = 3
Energyammount["cooked_chicken"] = 20
Energyammount["brick_of_ramen"] = 3
Energyammount["bowl_of_ramen"] = 15
Energyammount['candy'] = 5
Energyammount['raw_beans'] = 3
Energyammount['cooked_beans'] = 20
--BLANK
Product = {}
Product["beef"] = "steak"
Product["pork"] = "cooked_pork"
Product["raw_chicken"] = "cooked_chicken"
Product["brick_of_ramen"] = "bowl_of_ramen"
Product['raw_beans'] = "cooked_beans"
--BLANK
FoodCost = {}
FoodCost["beef"] = 20
FoodCost["coke"] = 5
FoodCost["pork"] = 10
FoodCost["raw_chicken"] = 15
FoodCost["brick_of_ramen"] = 10
FoodCost['candy'] = 5 
FoodCost['raw_beans'] = 15
--BLANK
Buyable = {}
Buyable["beef"] = 1
Buyable["coke"] = 1
Buyable["burnt_junk"] = 0
Buyable["steak"] = 0
Buyable["cooked_pork"] = 0
Buyable["pork"] = 1
Buyable["raw_chicken"] = 1
Buyable["cooked_chicken"] = 0
Buyable["brick_of_ramen"] = 1
Buyable["bowl_of_ramen"] = 0
Buyable['candy'] = 1
Buyable['raw_beans'] = 1
Buyable['cooked_beans'] = 0
--end of variable hell
local food = {}

food.cook = function ()
	io.write('\n')
	listfoode()
	io.write('\n')
	io.write("What would you like to cook?\n")
	input = string.lower(io.read())
	if stand.tablecheck(Foodlist,input) then
		if tonumber(FoodCount[input]) >= 1 then
			if Cookablefood[input] == 1 then
			pro = Product[input]
			FoodCount[input] = FoodCount[input] - 1
			FoodCount[pro] = FoodCount[pro] + 1
			print(C.green.."Cooked 1 piece of "..pro..C.none)
			else
			FoodCount[input] = FoodCount[input]-1
			FoodCount["burnt_junk"] = FoodCount["burnt_junk"] + 1
			print(C.red.."You cant cook that, you made burnt junk"..C.none)
			end
		else
		print(C.red.."You dont have any "..input..C.none)
		end
	else
	print(C.red.."That Doesnt Exist!"..C.none)
	end
end







food.eat = function ()
listfoode()
io.write("What would you like to eat?\n")
input = string.lower(io.read())
if stand.tablecheck(Foodlist,input) then
if FoodCount[input] >= 1 then
Energy = Energy + Energyammount[input]
print("You ate a(n) "..input)
print(C.green.."You gained "..Energyammount[input].." Energy!"..C.none)
FoodCount[input] = FoodCount[input] - 1
else
print(C.red.."You dont have any "..input..C.none)
end
else
print(C.red.."Doesnt exist"..C.none)
end
end

food.list = function ()
listfood()
end

return food