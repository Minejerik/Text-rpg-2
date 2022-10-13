local buy = {}
local stand = require("otherstuff.standard")
local input

buy.food = function()
    io.write("\n")
    print("Available to buy:")
    for i = 1, stand.getlength(Foodlist), 1 do
        if Buyable[Foodlist[i]] == 1 then
            print(
                "The cost of " ..
                    Foodlist[i] ..
                        " per 100 grams is " .. FoodCost[Foodlist[i]]*100 .. " and is in the " .. FoodType[Foodlist[i]] .. " food group"
            )
        end
    end
    io.write("\n")
    io.write("What would you like to buy?\n")
    input = io.read()
    io.write("How Many Grams?\n")
    local ammount = io.read()
    if stand.tablecheck(Foodlist, input) then
			--print(FoodCost[input]*ammount)
        if Money >= tonumber(FoodCost[input] * ammount) then
            print(C.green .. "You bought " .. ammount .. " Grams of " .. input .. C.none)
            local temp = tonumber(FoodCost[input] * ammount)
            print(C.red .. "You spent " .. temp .. " dollars" .. C.none)
            Money = Money - temp
            FoodCount[input] = FoodCount[input] + ammount
        else
            print(C.red .. "You cant afford " .. ammount .. " grams of " .. input .. C.none)
        end
    else
        print(C.red .. "That Doesnt Exist!" .. C.none)
    end
end

return buy