local Engine, Api, Locale, Settings = unpack(Immersive)

-- Forward Declaration
local Migrate

-- Initializes a new or existing settings database instance.
function Settings:Initialize()
	-- Setup all defaults
	self.Defaults = {
		profile = {
			DebugMode = false,
			DatabaseVersion = 1
		}
	}

	-- Register defaults for all modules
	for name, module in pairs(Engine.Modules) do
		self.Defaults.profile[name] = module:RegisterDefaults()
	end

	self.Database = LibStub("AceDB-3.0"):New(GetAddOnMetadata(Engine.AddOnName, "X-SavedVariables"), self.Defaults)
	Migrate()
end

-- Gets a per character setting using the specified name.
function Settings:Get(name)
	return self.Database.profile[name]
end

-- Sets a per character setting using the specified name.
function Settings:Set(name, value)
	self.Database.profile[name] = value
end

-- Gets a value indicating if debug mode is enabled
function Settings:IsDebug()
	return self.Database.profile["DebugMode"]
end

-- Run any available and applicable migrations
Migrate = function()
	local dbversion = Settings.Database.profile.DatabaseVersion
	while type(Settings[string.format("UpgradeFrom%d", dbversion)]) == "function" do
		local migration = Settings[string.format("UpgradeFrom%d", dbversion)]
		dbversion = migration()
    end
	Settings.Database.profile.DatabaseVersion = dbversion
end