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
Promochance = 5
Totalworkcount = 0
Totalmoneyearned = 0

--this adds work systems
work.work = function()
if Energy >= 5 then
Money = Money + 2*Promolevel
Totalmoneyearned = Totalmoneyearned +2*Promolevel
Energy = Energy - 5
print("You Went to work as a(n) ".. Worktitles[Promolevel].." !")
print("You Earned "..2*Promolevel.." Dollars!")
WorkCount = WorkCount +1
Totalworkcount = Totalworkcount+1
if Promolevel ~= stand.getlength(Worktitles) then
if WorkCount % Promochance == 0 then
Promolevel = Promolevel + 1
io.write('\n')
print(C.green.."YOU GOT PROMOTED"..C.none)
print(C.green.."YOU ARE NOW A(n) " .. Worktitles[Promolevel]..C.none)
print(C.green.."YOU NOW EARN "..2*Promolevel.." DOLLARS"..C.none)
Promochance = math.random(5,Promolevel + 10)
WorkCount = 0
end
end
else
print(C.red.."Eat something or sleep"..C.none)
end
end


return work