local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local MULTIBAR_ACTION_BUTTON_COOLDOWN = "MultiBarBottomRightButton%dCooldown"

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterMultiBarBottomRight()
	local settings = Settings:Get(self.Name).Elements["MultibarBottomRight"]
	local bar = Api:RegisterElement("MultibarBottomRight", settings)
	
	-- Add frames
	bar:AddFrame(MultiBarBottomRight)
	
	-- Add conditions
	bar:AddConditionRange(settings.Conditions)

	-- Add hotspots
	bar:AddHotspot(MultiBarBottomRight:GetRect())
	
	bar.OnFadeIn = function(self, frame, alpha)
		if not MultiBarBottomRightButton1Cooldown:GetDrawBling() then
			for i = 1, 12 do
				local cooldown = _G[string.format(MULTIBAR_ACTION_BUTTON_COOLDOWN, i)]
				cooldown:SetDrawBling(true)
			end
		end
	end
	bar.OnFadeOut = function(self, frame, alpha)
		if alpha < 0.01 then
			for i = 1, 12 do
				local cooldown = _G[string.format(MULTIBAR_ACTION_BUTTON_COOLDOWN, i)]
				cooldown:SetDrawBling(false)
			end
		end
	end
end

-- Unregisters the element.
function Default:UnregisterMultiBarBottomRight()
	Api:UnregisterElement("MultibarBottomRight")
end