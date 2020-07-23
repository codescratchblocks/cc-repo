local tArgs = {...}
if tArgs[1] == "install" then
shell.run("wget https://raw.githubusercontent.com/codescratchblocks/cc-repo/master/"..tArgs[2]..".lua /temp.lua")
shell.run("/temp.lua")
fs.delete("/temp.lua")
elseif tArgs[1] == "update"
fs.delete("cc-gp.lua")
shell.run("wget https://raw.githubusercontent.com/codescratchblocks/cc-repo/master/cc-gp.lua")
print("Updated.")
else
print("Usage:")
print("cc-gp install [package name]")
print("cc-gp update")
end
