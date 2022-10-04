local commands = {}

commands.sleep = function ()
    --sleep has a random chance of a good or bad outcome.
    RandomTemp = math.random(1,10)
    if RandomTemp == 4 or RandomTemp == 5 or RandomTemp == 6 or RandomTemp == 7 or RandomTemp == 8 or RandomTemp == 9 or RandomTemp == 10 then
    if Energy < 100 then
    Energy = Energy + 100 - Energy
    print(C.green.."You Slept Well! Back to full energy!"..C.none)
    elseif Energy == 100 then
    print(C.red.."You Arent Tired!"..C.none)
    end
    end
    if RandomTemp == 2 or RandomTemp == 3 or RandomTemp == 1 then
    if Energy >10 then Energy = Energy - 10;print(C.red.."You didn't sleep well! You lost energy!"..C.none)end
    print("You now have " .. Energy .. " energy!")
    end
end

commands.info = function ()
io.write('Information about your gameplay so far\n')
print('You went to work '..Totalworkcount..' times!')
print('You earned '..Totalmoneyearned.." dollars in total!")
end



return commands