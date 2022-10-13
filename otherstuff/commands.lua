local commands = {}

commands.sleep = function ()
--sleep has a random chance of a good or bad outcome.
local randomtemp = math.random(1,100)
if randomtemp >=50 then
print(C.green.."You Slept Well!")
print('You Gained '..randomtemp..' Energy!'..C.none)
Energy = Energy + randomtemp
else
print(C.red..'You Didnt Sleep Well')
print('You Only Gained '..randomtemp..' Energy!'..C.none)
Energy = Energy+randomtemp
end
end

commands.info = function ()
io.write('Information about your gameplay so far\n')
print('You went to work '..Totalworkcount..' times!')
print('You earned '..Totalmoneyearned.." dollars in total!")
print("You Have "..Money.." dollars right now!")
print('You have completed '..Cycles..' Cycles!')
print('You won '..Wins..' fights!')
print('You lost '..Losses..' fights!')
print('You Paid '..Taxesammount.." in taxes!")
print('You Have '..Mordayleft.." Days left of rent")
print('Game Version: '..VERSION)
end



return commands