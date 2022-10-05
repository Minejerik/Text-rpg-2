local fight = {}
Wins = 0
Losses = 0
local stand = require("otherstuff.standard")
Lastnames = {}
Firstnames = {}
--last name needs space infront of it!
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
Firstnames[6] = "James"
Lastnames[6] = " Smith"

fight.flight = function()
	io.write('\n')
    if Energy >= 10 then
        RandomTemp = math.random(4)
        if RandomTemp == 1 then
            print(
                C.green.."You Won the fight against " ..
                    Firstnames[math.random(stand.getlength(Firstnames))] ..
                        Lastnames[math.random(stand.getlength(Lastnames))] .. " !"
            )
            RandomTemp = math.random(100)
						Totalmoneyearned = Totalmoneyearned + RandomTemp
						Wins = Wins+1
            print("You Earned " .. RandomTemp .. " Dollars!"..C.none)
            Money = Money + RandomTemp
            RandomTemp = math.random(30)
            print(C.red.."You Lost " .. RandomTemp .. " Energy!"..C.none)
            Energy = Energy - RandomTemp
        else
            print(C.red.."You lost against "..Firstnames[math.random(stand.getlength(Firstnames))] ..
                    Lastnames[math.random(stand.getlength(Lastnames))] .. "!")
            RandomTemp = math.random(30)
            print("You Lost " .. RandomTemp .. " Energy!"..C.none)
						Losses = Losses + 1
            Energy = Energy - RandomTemp
        end
    else
        print(
            C.red.."You dont have enough energy! Come back later! - " ..
                Firstnames[math.random(stand.getlength(Firstnames))] ..
                    Lastnames[math.random(stand.getlength(Lastnames))] .. "!"..C.none
        )
        RandomTemp = math.random(100)
    end
end
return fight
