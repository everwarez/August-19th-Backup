local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local MULTIBAR_ACTION_BUTTON_COOLDOWN = "MultiBarBottomLeftButton%dCooldown"

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterMultiBarBottomLeft()
	local settings = Settings:Get(self.Name).Elements["MultibarBottomLeft"]
	local bar = Api:RegisterElement("MultibarBottomLeft", settings)
	
	-- Add frames
	bar:AddFrame(MultiBarBottomLeft)
	
	-- Add conditions
	bar:AddConditionRange(settings.Conditions)

	-- Add hotspots
	bar:AddHotspot(MultiBarBottomLeft:GetRect())
	
	bar.OnFadeIn = function(self, frame, alpha)
		if not MultiBarBottomLeftButton1Cooldown:GetDrawBling() then
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
function Default:UnregisterMultiBarBottomLeft()
	Api:UnregisterElement("MultibarBottomLeft")
end