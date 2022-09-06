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

standard.getstringlength = function (string)
  return string.len(string)
end

standard.printtable = function (table)
  for i = 1, standard.getlength(table), 1 do
    io.write(table[i]"\n")
  end
end

standard.getkeys = function (table)
  local keys={}
  for key,_ in pairs(table) do
    table.insert(keys, key)
  end
  return keys
end

standard.senderror = function (errmsg,quit,location)
	io.write("\n")
	io.write("FATAL ERROR\n")
	io.write(errmsg.."\n")
	io.write(location.."\n")
	if quit then
	os.exit()
end
end



return standard