local fight = {}
local stand = require('otherstuff.standard')
Lastnames = {}
Firstnames = {}
Lastnames[1] =" Guerrero"
Firstnames[1] ="Jason"
Lastnames[2]=" Foedisch"
Firstnames[2]="Jaan-Erik"



fight.flight = function ()
	if Energy >= 10 then
	RandomTemp = math.random(5)
	if RandomTemp == 1 then
		print("You Won the fight Against "..Firstnames[math.random(stand.getlength(Firstnames))]..Lastnames[math.random(stand.getlength(Lastnames))].." !")
		RandomTemp = math.random(100)
		print("You Earned "..RandomTemp.." Dollars!")
		Money = Money+RandomTemp
		RandomTemp = math.random(30)
		print("You Lost "..RandomTemp.." Energy!")
		Energy = Energy - RandomTemp
	else
	print("You lost!")
	end
		else
			print("You dont have enough energy! Come back later! - "..Firstnames[math.random(stand.getlength(Firstnames))],Lastnames[math.random(stand.getlength(Lastnames))].."!")
		RandomTemp = math.random(100)
		end
	end
return fight