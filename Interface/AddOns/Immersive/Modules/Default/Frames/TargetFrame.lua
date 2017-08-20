local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterTargetFrame()
	local settings = Settings:Get(self.Name).Elements["TargetFrame"]
	local target = Api:RegisterElement("TargetFrame", settings)
	
	-- Add frames
	target:AddFrame(TargetFrame)
	
	-- Add conditions
	target:AddConditionRange(settings.Conditions)
end

-- Unregisters the element.
function Default:UnregisterTargetFrame()
	Api:UnregisterElement("TargetFrame")
end