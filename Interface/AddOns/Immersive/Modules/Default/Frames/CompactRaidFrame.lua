local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local RAIDFRAME_GROUP_BACKGROUND = "CompactRaidGroup%dMember%dBackground"
local RAIDFRAME_GROUP_HIGHLIGHT = "CompactRaidGroup%dMember%dSelectionHighlight"
local PARTYFRAME_GROUP_BACKGROUND = "CompactPartyFrameMember%dBackground"
local PARTYFRAME_GROUP_HIGHLIGHT = "CompactPartyFrameMember%dSelectionHighlight"
local STATES = { HIDDEN = 0, FADINGOUT = 0.25, FADINGIN = 0.75, SHOWN = 1 }

local Default = Engine:GetModule("Default")
local IsManagerAdded = false
local Throttle = 0

-- Find the specified frame in the collection.
local function find(frames, frame)
	for i = 1, #frames do
		if frames[i] == frame then
			return true
		end
	end
	return false
end

-- Registers the element.
function Default:RegisterRaidFrame()
	local settings = Settings:Get(self.Name).Elements["CompactRaidFrame"]
	local raid = Api:RegisterElement("CompactRaidFrame", settings)
	
	-- Add frames
	raid:AddFrame(CompactRaidFrameContainer)
	for i = 1, 8 do
		for j = 1, 5 do
			raid:AddFrame(_G[string.format(RAIDFRAME_GROUP_BACKGROUND, i, j)])
			raid:AddFrame(_G[string.format(RAIDFRAME_GROUP_HIGHLIGHT, i, j)])

			if i == 1 then
				raid:AddFrame(_G[string.format(PARTYFRAME_GROUP_BACKGROUND, j)])
				raid:AddFrame(_G[string.format(PARTYFRAME_GROUP_HIGHLIGHT, j)])
			end
		end
	end
	
	-- Add conditions
	raid:AddConditionRange(settings.Conditions)
		
	-- Add Hotspots
	raid:AddHotspot(CompactRaidFrameManager:GetRect())

	-- Certain raid frame textures are created on-demand, so we need to rescan
	-- if the group size changes to make sure we are managing anything new
	raid.Animation:RegisterEvent("GROUP_ROSTER_UPDATE")
	raid.Animation:RegisterEvent("GUILD_PARTY_STATE_UPDATED")
	raid.Animation:RegisterEvent("PARTY_CONVERTED_TO_RAID")
	raid.Animation:RegisterEvent("PARTY_MEMBER_DISABLE")
	raid.Animation:RegisterEvent("PARTY_MEMBER_ENABLE")
	raid.Animation:RegisterEvent("PLAYER_REGEN_DISABLED")
	raid.Animation:RegisterEvent("PLAYER_REGEN_ENABLED")
	raid.Animation:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
	raid.Animation:RegisterEvent("RAID_ROSTER_UPDATE")
	raid.Animation:RegisterEvent("PLAYER_ENTERING_WORLD")

	raid.Animation:SetScript("OnEvent", function(self, event)
		if Throttle <= 0 then
			if IsInRaid() or GetCVar("useCompactPartyFrames") == "1" then
				if not IsManagerAdded then
					raid:AddFrame(CompactRaidFrameManager)
					raid:AddHotspot(CompactRaidFrameManager:GetRect())
					raid.State = STATES.SHOWN
					IsManagerAdded = true
				end
				for i = 1, 8 do
					for j = 1, 5 do
						local background = _G[string.format(RAIDFRAME_GROUP_BACKGROUND, i, j)]
						if background ~= nil and not find(raid.Frames, background) then
							raid:AddFrame(background)
						end
						local highlight = _G[string.format(RAIDFRAME_GROUP_HIGHLIGHT, i, j)]
						if highlight ~= nil and not find(raid.Frames, highlight) then
							raid:AddFrame(highlight)
						end

						if i == 1 then
							background = _G[string.format(PARTYFRAME_GROUP_BACKGROUND, j)]
							if background ~= nil and not find(raid.Frames, background) then
								raid:AddFrame(background)
							end
							highlight = _G[string.format(PARTYFRAME_GROUP_HIGHLIGHT, j)]
							if highlight ~= nil and not find(raid.Frames, highlight) then
								raid:AddFrame(highlight)
							end
						end
					end
				end
			else
				raid:RemoveFrame(CompactRaidFrameManager)
				raid:ClearHotspots()
				IsManagerAdded = false
			end
			Throttle = 1
		end
	end)

	raid.Animation:SetScript("OnUpdate", function(self, elapsed)
		Throttle = Throttle - elapsed
		if Throttle < 0 then
			Throttle = 0
		end
	end)
end

-- Unregisters the element.
function Default:UnregisterRaidFrame()
	Api:UnregisterElement("CompactRaidFrame")
end