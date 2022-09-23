local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local RESOURCES = require(ROOT:GetCustomProperty("Resources"))

local SAVE_DATA_KEY = ROOT:GetCustomProperty("SaveDataKey")

local function save_resources(player)
	local data = Storage.GetPlayerData(player)

	if(not data[SAVE_DATA_KEY]) then
		data[SAVE_DATA_KEY] = {}
	end

	for index, row in ipairs(RESOURCES) do
		data[SAVE_DATA_KEY][row.ResourceKey] = player:GetResource(row.ResourceKey)
	end

	Storage.SetPlayerData(player, data)
end

local function load_resources(player)
	local data = Storage.GetPlayerData(player)

	for index, row in ipairs(RESOURCES) do
		if(data[SAVE_DATA_KEY] ~= nil and data[SAVE_DATA_KEY][row.ResourceKey] ~= nil) then
			player:SetResource(row.ResourceKey, data[SAVE_DATA_KEY][row.ResourceKey])
		end
	end
end

Game.playerJoinedEvent:Connect(load_resources)
Game.playerLeftEvent:Connect(save_resources)

Events.ConnectForPlayer("Resources.Save", save_resources)