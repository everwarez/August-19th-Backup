local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")
local Interval = 1.0

-- Registers the element.
function Default:RegisterVehicleLeaveButton()
	local settings = Settings:Get(self.Name).Elements["VehicleLeaveButton"]
	local leave = Api:RegisterElement("VehicleLeaveButton", settings)
	
	-- Add frames
	leave:AddFrame(MainMenuBarVehicleLeaveButton)
	
	-- Add conditions
	leave:AddConditionRange(settings.Conditions)
	
	-- Add hotspots
	leave:AddHotspot(MainMenuBarVehicleLeaveButton:GetRect())

	MainMenuBarVehicleLeaveButton:HookScript("OnUpdate", function(self, elapsed)
		Interval = Interval + elapsed
		if CanExitVehicle() and Interval > 1.0 then
			Interval = Interval - 1.0

			leave:ClearHotspots()
			leave:AddHotspot(MainMenuBarVehicleLeaveButton:GetRect())
		end
	end)
end

-- Unregisters the element.
function Default:UnregisterVehicleLeaveButton()
	Api:UnregisterElement("VehicleLeaveButton")
end

