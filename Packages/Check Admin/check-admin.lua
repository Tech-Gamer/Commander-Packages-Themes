local module = {
	Name = "Check Admin",
	Description = "Check if a player is a admin or not.",
	Location = "Player"
}

module.Execute = function(Client, Type, Attachment)
	local target = module.API.getPlayerWithName(Attachment)
	if module.API.checkAdmin(target.UserId) then
		module.Remotes.Event:FireClient(Client, "newHint", "", {From = "System", Content = Attachment .. " is a admin.", Duration = 5})
	else
		module.Remotes.Event:FireClient(Client, "newHint", "", {From = "System", Content = Attachment .. " is not a admin.", Duration = 5})
	end
end

return module
