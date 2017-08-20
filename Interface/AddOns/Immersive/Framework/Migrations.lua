local Engine, Api, Locale, Settings = unpack(Immersive)

-- Perform database migrations for version 1
function Settings:UpgradeFrom1()
	local chat = Settings.Database.profile.Chat
	local chatframe = Settings.Database.profile.Default.Elements.ChatFrame

	if chatframe ~= nil then
		for _, option in pairs({ "Enabled", "Mode", "DelayTime", "FadeTime", "IsHotspot", "Conditions" }) do
			if chatframe[option] ~= nil then
				chat[option] = chatframe[option]
			end
		end
	end
	
	Settings.Database.profile.Default.Elements.ChatFrame = nil

	return 2
end

-- Perform database migrations for version 2
function Settings:UpgradeFrom2()
	local elements = Settings.Database.profile.Default.Elements
	for element, options in pairs(elements) do
		options.Conditions.IsInDungeonInstance = options.Conditions.IsInDungeon
		options.Conditions.IsInDungeon = nil

		options.Conditions.IsInRaidInstance = options.Conditions.IsInRaid
		options.Conditions.IsInRaid = nil
	end

	local chat = Settings.Database.profile.Chat
	chat.Conditions.IsInDungeonInstance = chat.Conditions.IsInDungeon
	chat.Conditions.IsInDungeon = nil
	
	chat.Conditions.IsInRaidInstance = chat.Conditions.IsInRaid
	chat.Conditions.IsInRaid = nil

	return 3
end