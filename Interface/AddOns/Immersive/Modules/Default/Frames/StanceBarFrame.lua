local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterStanceBarFrame()
	local settings = Settings:Get(self.Name).Elements["StanceBarFrame"]
	local stance = Api:RegisterElement("StanceBarFrame", settings)
	
	-- Add frames
	stance:AddFrame(StanceBarFrame)
	
	-- Add conditions
	stance:AddConditionRange(settings.Conditions)
	
	-- Add hotspots
	stance.Animation:RegisterEvent("PLAYER_ENTERING_WORLD")
	stance.Animation:SetScript("OnEvent", function()
		stance:AddHotspot(StanceBarFrame:GetRect())

		for i = 1, NUM_STANCE_SLOTS do
			stance:AddHotspot(_G["StanceButton"..i]:GetRect())
		end

		if not MultiBarBottomLeft:IsShown() then
			stance:AddHotspot(StanceBarLeft:GetRect())
			stance:AddHotspot(StanceBarRight:GetRect())
			stance:AddHotspot(StanceBarMiddle:GetRect())
		end 

		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
	end)
end

-- Unregisters the element.
function Default:UnregisterStanceBarFrame()
	Api:UnregisterElement("StanceBarFrame")
end