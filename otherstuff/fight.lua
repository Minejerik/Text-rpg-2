local fight = {}
local stand = require("otherstuff.standard")
Lastnames = {}
Firstnames = {}
Lastnames[1] = " Guerrero"
Firstnames[1] = "Jason"
Firstnames[3] = "Luke"
Lastnames[2] = " Foedisch"
Firstnames[2] = "Jaan-Erik"
Lastnames[3] = " Pelloski"
Lastnames[4] = " Sagini"
Firstnames[4] = "Joshua"
Firstnames[5] = "Blake"
Lastnames[5] = " Shelton"

fight.flight = function()
	io.write('\n')
    if Energy >= 10 then
        RandomTemp = math.random(2)
        if RandomTemp == 1 then
            print(
                "You Won the fight against " ..
                    Firstnames[math.random(stand.getlength(Firstnames))] ..
                        Lastnames[math.random(stand.getlength(Lastnames))] .. " !"
            )
            RandomTemp = math.random(100)
            print("You Earned " .. RandomTemp .. " Dollars!")
            Money = Money + RandomTemp
            RandomTemp = math.random(30)
            print("You Lost " .. RandomTemp .. " Energy!")
            Energy = Energy - RandomTemp
        else
            print("You lost against "..Firstnames[math.random(stand.getlength(Firstnames))] ..
                    Lastnames[math.random(stand.getlength(Lastnames))] .. "!")
            RandomTemp = math.random(30)
            print("You Lost " .. RandomTemp .. " Energy!")
            Energy = Energy - RandomTemp
        end
    else
        print(
            "You dont have enough energy! Come back later! - " ..
                Firstnames[math.random(stand.getlength(Firstnames))] ..
                    Lastnames[math.random(stand.getlength(Lastnames))] .. "!"
        )
        RandomTemp = math.random(100)
    end
end
return fight
