local work = {}
local stand = {}
stand = require('otherstuff.standard')
WorkCount = 0
Promolevel = 1
Worktitles ={}
Worktitles[1] = "Assistant to the Intern"
Worktitles[2] = "Intern"
Worktitles[3] = "Assistant to the part time worker"
Worktitles[4] = "Part Time worker"
Worktitles[5] = "worker"
Worktitles[6] = "Assistant to the Programmer"
Worktitles[7] = "Programmer"
Worktitles[8] = "Assistant to the Project Lead"
Worktitles[9] = "Project Lead"
Worktitles[10] = "Software Engineer"
Worktitles[11] = "Hyotum"
Worktitles[12] = "Dwight Shrute"
Worktitles[13] = "Assistant Manager"
Worktitles[14] = "Manager"
Worktitles[15] = "CEO"

--this adds work systems
work.work = function()
if Energy >= 5 then
Money = Money + 5*Promolevel
Energy = Energy - 5
print("You Went to work as a(n) ".. Worktitles[Promolevel].." !")
print("You Earned "..5*Promolevel.." Dollars!")
WorkCount = WorkCount +1

if Promolevel ~= stand.getlength(Worktitles) then
if WorkCount % 5 == 0 then
Promolevel = Promolevel + 1
io.write('\n')
print("YOU GOT PROMOTED")
print("YOU ARE NOW A(n) " .. Worktitles[Promolevel])
print("YOU NOW EARN "..5*Promolevel.." DOLLARS")
end
end
else
print("Eat something or sleep")
end
end


return work