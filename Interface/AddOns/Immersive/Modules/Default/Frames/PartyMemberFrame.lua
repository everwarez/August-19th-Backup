local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local PARTY_MEMBER_FRAME = "PartyMemberFrame%d"
local STATES = { HIDDEN = 0, FADINGOUT = 0.25, FADINGIN = 0.75, SHOWN = 1 }

local Default = Engine:GetModule("Default")
local IsManagerAdded = false

-- Registers the element.
function Default:RegisterPartyFrame()
	local settings = Settings:Get(self.Name).Elements["PartyMemberFrame"]
	local party = Api:RegisterElement("PartyMemberFrame", settings)

	-- Add frames
	for i = 1, 4 do
		party:AddFrame(_G[string.format(PARTY_MEMBER_FRAME, i)])
	end

	-- Add conditions
	party:AddConditionRange(settings.Conditions)
		
	party.Animation:RegisterEvent("GROUP_ROSTER_UPDATE")
	party.Animation:RegisterEvent("RAID_ROSTER_UPDATE")
	party.Animation:SetScript("OnEvent", function(self, event)
		if IsInGroup() and not IsInRaid() then
			if not IsManagerAdded then
				party:AddFrame(CompactRaidFrameManager)
				party:AddHotspot(CompactRaidFrameManager:GetRect())
				party.State = STATES.SHOWN
				IsManagerAdded = true
			end
		else
			party:RemoveFrame(CompactRaidFrameManager)
			party:ClearHotspots()
			IsManagerAdded = false
		end
	end)
end

-- Unregisters the element.
function Default:UnregisterPartyFrame()
	Api:UnregisterElement("PartyMemberFrame")
end