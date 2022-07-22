local work = {}
Promolevel = 1
Worktitles ={}
Worktitles[1] = "Assistant to the Intern"
Worktitles[2] = "Intern"
Worktitles[3] = "Part Time worker"
Worktitles[4] = "Assistant to the Programmer"
Worktitles[5] = "Programmer"
Worktitles[6] = "Assistant to the Project Lead"
Worktitles[7] = "Project Lead"
Worktitles[8] = "Software Engineer"
Worktitles[9] = "Hyotum"
Worktitles[10] = "Dwight Shrute"
Worktitles[11] = "Assistant Manager"
Worktitles[12] = "Manager"
Worktitles[13] = "CEO"
--this adds work systems
work.work = function()
if Energy >= 5 then
Money = Money + 5*Promolevel
Energy = Energy - 5
print("You Went to work as a(n) ".. Worktitles[Promolevel].." !")
print("You Earned "..5*Promolevel.." Dollars!")
else
print("You Dont Have Enough Energy!")
print("Get Some Sleep!")
end
end
--this adds the promotion system
work.askpromo = function()
if Energy >= 15 then
Energy = Energy - 15
RandomTemp = math.random(0,Promolevel)
if RandomTemp == 0 then
Promolevel = Promolevel+1
print("You Got Promoted to "..Worktitles[Promolevel].."!")
print("You Now Earn "..5*Promolevel.." Dollars!")
end
if not RandomTemp == 0 then
print("You Didnt Get Promoted!")
end
elseif Energy <= 15 then
print("You Are to Tired to Ask for a promotion")
end
end
return work
