local standard = {}


standard.tablecheck = function (table, element)
    for _, value in pairs(table) do
      if value == element then
        return true
      end
    end
    return false
  end


standard.getlength = function (table)
  local count = 0
  for _ in pairs(table) do count = count + 1 end
  return count
end



return standard