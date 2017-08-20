local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterVehicleSeatIndicator()
	local settings = Settings:Get(self.Name).Elements["VehicleSeatIndicator"]
	local indicator = Api:RegisterElement("VehicleSeatIndicator", settings)
	
	-- Add frames
	indicator:AddFrame(VehicleSeatIndicator)
	
	-- Add conditions
	indicator:AddConditionRange(settings.Conditions)
	
	-- Add hotspots
	indicator:AddHotspot(VehicleSeatIndicator:GetRect())
end

-- Unregisters the element.
function Default:UnregisterVehicleSeatIndicator()
	Api:UnregisterElement("VehicleSeatIndicator")
end

