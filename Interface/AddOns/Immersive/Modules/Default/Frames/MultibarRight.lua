local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local MULTIBAR_ACTION_BUTTON_COOLDOWN = "MultiBarRightButton%dCooldown"

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterMultiBarRight()
	local settings = Settings:Get(self.Name).Elements["MultibarRight"]
	local bar = Api:RegisterElement("MultibarRight", settings)
	
	-- Add frames
	bar:AddFrame(MultiBarRight)
	
	-- Add conditions
	bar:AddConditionRange(settings.Conditions)

	-- Add hotspots
	bar:AddHotspot(MultiBarRight:GetRect())
	
	bar.OnFadeIn = function(self, frame, alpha)
		if not MultiBarRightButton1Cooldown:GetDrawBling() then
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
function Default:UnregisterMultiBarRight()
	Api:UnregisterElement("MultibarRight")
end