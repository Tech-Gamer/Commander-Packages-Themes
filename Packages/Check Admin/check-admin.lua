local module = {
	Name = "Check Admin",
	Description = "Check if a player is a admin or not.",
	Location = "Player"
}

module.Execute = function(Client, Type, Attachment)
	if Type == "command" then
	local target = module.API.getPlayerWithName(Attachment)
	if module.API.checkAdmin(target.UserId) then
			module.API.Players.notify(Client, 'System', Attachment .. ' is a admin.')
	else
			module.API.Players.notify(Client, 'System', Attachment .. ' is not a admin.')
		end
		return false
	end
end

return module
