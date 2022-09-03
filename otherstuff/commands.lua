local commands = {}

commands.sleep = function ()
    --sleep has a random chance of a good or bad outcome.
    RandomTemp = math.random(1,10)
    if RandomTemp == 1 or RandomTemp == 3 or RandomTemp == 4 or RandomTemp == 5 or RandomTemp == 6 or RandomTemp == 7 or RandomTemp == 8 or RandomTemp == 9 or RandomTemp == 10 then
    if Energy < 100 then
    
    Energy = Energy + 100 - Energy
    print("You Slept Well! Back to full energy!")
    elseif Energy == 100 then
    print("You Arent Tired!")
    end
    end
    
    if RandomTemp == 2 then
    Energy = Energy - 10
    print("You didn't sleep well! You lost energy!")
    print("You now have " .. Energy .. " energy!")
    end
end

return commands