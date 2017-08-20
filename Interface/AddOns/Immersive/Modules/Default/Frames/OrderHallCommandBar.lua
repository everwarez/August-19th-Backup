local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterOrderHallCommandBar()
	local settings = Settings:Get(self.Name).Elements["OrderHallCommandBar"]
	local orderHall = Api:RegisterElement("OrderHallCommandBar", settings)
	
	OrderHall_LoadUI()

	orderHall.Animation:RegisterEvent("ADDON_LOADED")
	orderHall.Animation:RegisterEvent("PLAYER_ENTERING_WORLD")
	orderHall.Animation:SetScript("OnEvent", function(self, event)
		if OrderHallCommandBar == nil then
			OrderHall_LoadUI()
		end

		-- Add frames
		orderHall:AddFrame(OrderHallCommandBar)
	
		-- Add conditions
		orderHall:AddConditionRange(settings.Conditions)
	
		-- Add hotspots
		orderHall:AddHotspot(OrderHallCommandBar:GetRect())

		orderHall:Reset()

		orderHall.Animation:UnregisterEvent("PLAYER_ENTERING_WORLD")
		orderHall.Animation:UnregisterEvent("ADDON_LOADED")
	end)
end

-- Unregisters the element.
function Default:UnregisterOrderHallCommandBar()
	Api:UnregisterElement("OrderHallCommandBar")
end