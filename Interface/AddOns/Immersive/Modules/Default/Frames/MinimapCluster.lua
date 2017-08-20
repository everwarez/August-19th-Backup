local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")
local IsPinged = false

-- Registers the element.
function Default:RegisterMinimapCluster()
	local settings = Settings:Get(self.Name).Elements["MinimapCluster"]
	local minimap = Api:RegisterElement("MinimapCluster", settings)
	
	-- Add frames
	minimap:AddFrame(MinimapCluster)
	
	-- Add conditions
	minimap:AddConditionRange(settings.Conditions)
	minimap:AddCondition(function() return IsPinged end)
	
	minimap.OnFadeIn = function(self, frame, alpha)
		MinimapCluster:Show()
	end
	minimap.OnFadeOut = function(self, frame, alpha)
		-- When the frame has completely faded out, hide the frame
		if alpha < 0.01 then
			-- We do this because the game client adds specials map markers that
			-- do not appear as objects in the frame structure, which means they
			-- do not fade with the parent frame (MinimapCluster)
			Api:ExecuteProtected(function()
				MinimapCluster:Hide()
			end)
		end
	end
	minimap.OnAfterUpdate = function(self, frame)
		-- Report no ping event once frame is fully faded in
		if frame == MinimapCluster and frame:GetAlpha() == 1 then
			IsPinged = false
		end
	end

	-- Add hotspots
	minimap:AddHotspot(MinimapCluster:GetRect())

	self:RegisterEvent("MINIMAP_PING", "OnMinimapUpdated")
	self:RegisterEvent("MINIMAP_UPDATE_TRACKING", "OnMinimapUpdated")
	self:RegisterEvent("MOVIE_RECORDING_PROGRESS", "OnMinimapUpdated")
	self:RegisterEvent("PLAYER_DIFFICULTY_CHANGED", "OnMinimapUpdated")
	self:RegisterEvent("UPDATE_PENDING_MAIL", "OnMinimapUpdated")

end

-- Unregisters the element.
function Default:UnregisterMinimapCluster()
	self:UnregisterEvent("UPDATE_PENDING_MAIL")
	self:UnregisterEvent("PLAYER_DIFFICULTY_CHANGED")
	self:UnregisterEvent("MOVIE_RECORDING_PROGRESS")
	self:UnregisterEvent("MINIMAP_UPDATE_TRACKING")
	self:UnregisterEvent("MINIMAP_PING")

	Api:UnregisterElement("MinimapCluster")
end

-- Occurs when a minimap event is fired.
function Default:OnMinimapUpdated(event)
	IsPinged = true
end