local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterPlayerFrame()
	local settings = Settings:Get(self.Name).Elements["PlayerFrame"]
	local player = Api:RegisterElement("PlayerFrame", settings)
	
	-- Add frames
	player:AddFrame(PlayerFrame)
	
	-- Add conditions
	player:AddConditionRange(settings.Conditions)
	
	-- Add hotspots
	player:AddHotspot(PlayerFrame:GetRect())
end

-- Unregisters the element.
function Default:UnregisterPlayerFrame()
	Api:UnregisterElement("PlayerFrame")
end

