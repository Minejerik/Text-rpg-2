local fight = {}
Lastnames = {}
Firstnames = {}
Lastnames[1] ="Guerrero"
Firstnames[1] ="Jason"




fight.fight = function ()
if Energy >= 10 then
if RandomTemp == 1 then
print("You Won the fight Against"..Firstnames[math.random()],Lastnames[math.random()].."!")
RandomTemp = math.random(100)
print("You Earned "..RandomTemp.." Dollars!")
Money = Money+RandomTemp
RandomTemp = math.random(30)
print("You Lost "..RandomTemp.." Energy!")
Energy = Energy - RandomTemp
end
elseif Energy <= 10 then
print("You dont have enough energy!")
end
end
return fight