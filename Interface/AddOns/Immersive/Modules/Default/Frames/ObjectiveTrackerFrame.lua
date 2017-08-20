local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")
local IsTrackerUpdated = false
local IsZoneChange = false

-- Registers the element.
function Default:RegisterObjectiveTrackerFrame()
	local settings = Settings:Get(self.Name).Elements["ObjectiveTrackerFrame"]
	local tracker = Api:RegisterElement("ObjectiveTrackerFrame", settings)
	
	-- Add frames
	tracker:AddFrame(ObjectiveTrackerFrame)
	
	-- Add conditions
	tracker:AddConditionRange(settings.Conditions)	
	tracker:AddCondition(function() return IsTrackerUpdated end)

	tracker.OnAfterUpdate = function(self, frame)
		-- Report no tracker update once frame is fully faded in
		if frame == ObjectiveTrackerFrame and frame:GetAlpha() == 1 then
			IsTrackerUpdated = false
		end
	end

	-- Add hotspots
	tracker:AddHotspot(ObjectiveTrackerFrame:GetRect())

	tracker.Animation:RegisterEvent("ZONE_CHANGED")
	tracker.Animation:RegisterEvent("ZONE_CHANGED_INDOORS")
	tracker.Animation:RegisterEvent("QUEST_ACCEPT_CONFIRM")
	tracker.Animation:RegisterEvent("QUEST_LOG_UPDATE")
	tracker.Animation:RegisterEvent("QUEST_WATCH_UPDATE")
	tracker.Animation:RegisterEvent("QUEST_WATCH_LIST_CHANGED")
	tracker.Animation:RegisterEvent("QUEST_WATCH_OBJECTIVES_CHANGED")
	tracker.Animation:SetScript("OnEvent", function(self, event)
		if event == "ZONE_CHANGED" or event == "ZONE_CHANGED_INDOORS" then
			IsZoneChange = true
		else
			if IsZoneChange then
				IsZoneChange = false
			else
				IsTrackerUpdated = true
			end
		end
	end)
end

-- Unregisters the element.
function Default:UnregisterObjectiveTrackerFrame()
	Api:UnregisterElement("ObjectiveTrackerFrame")
end