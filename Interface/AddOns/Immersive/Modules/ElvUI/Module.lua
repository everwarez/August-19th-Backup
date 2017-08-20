local Engine, Api, Locale, Settings = unpack(Immersive)

-- Registration
local ElvUI = Engine:RegisterModule("ElvUI", { IsImmediate = false })

-- Initialize the module.
function ElvUI:OnInitialize()
end

-- Called when the module is enabled.
function ElvUI:OnEnable()
	-- Register additional frames, hotspots etc.
	local player = Api:GetElement("PlayerFrame")
	player:ClearHotspots()
	player:AddFrame(ElvUF_Player)
	player:AddHotspot(ElvUF_Player:GetRect())

	local target = Api:GetElement("TargetFrame")
	target:AddFrame(ElvUF_Target)

	local buff = Api:GetElement("BuffFrame")
	buff:ClearHotspots()
	buff:AddFrame(ElvUIPlayerBuffs)
	buff:AddFrame(ElvUIPlayerDebuffs)
	buff:AddHotspot(ElvUIPlayerBuffs:GetRect())
	buff:AddHotspot(ElvUIPlayerDebuffs:GetRect())

	local minimap = Api:GetElement("MinimapCluster")
	minimap:ClearHotspots()
	minimap:AddFrame(BNET)
	minimap:AddFrame(MinimapCluster)
	--minimap:AddFrame(MinimapButtonBar)
	minimap:AddHotspot(MinimapCluster:GetRect())
	--minimap:AddHotspot(MinimapButtonBar:GetRect())

	local tracker = Api:GetElement("ObjectiveTrackerFrame")
	tracker:ClearHotspots()

	local bar1 = Api:GetElement("MainMenuBar")
	bar1:ClearHotspots()
	bar1:AddFrame(ElvUI_Bar1)
	bar1:AddFrame(ElvUI_Bar2)
	bar1:AddFrame(ElvUI_Bar6)
	bar1:AddFrame(ElvUI_BottomPanel)
	--bar1:AddFrame(Actionbar1DataPanel)
	--bar1:AddFrame(Actionbar3DataPanel)
	--bar1:AddFrame(Actionbar5DataPanel)
	bar1:AddHotspot(ElvUI_Bar1:GetRect())
	bar1:AddHotspot(ElvUI_Bar2:GetRect())
	bar1:AddHotspot(ElvUI_Bar6:GetRect())
	--bar1:AddHotspot(Actionbar1DataPanel:GetRect())
	--bar1:AddHotspot(Actionbar3DataPanel:GetRect())
	--bar1:AddHotspot(Actionbar5DataPanel:GetRect())

	local bar2 = Api:GetElement("MultibarBottomLeft")
	bar2:ClearHotspots()
	bar2:AddFrame(ElvUI_Bar5)
	bar2:AddHotspot(ElvUI_Bar5:GetRect())

	local bar3 = Api:GetElement("MultibarBottomRight")
	bar3:ClearHotspots()
	bar3:AddFrame(ElvUI_Bar3)
	bar3:AddHotspot(ElvUI_Bar3:GetRect())

	local bar4 = Api:GetElement("MultibarLeft")
	bar4:ClearHotspots()

	local bar5 = Api:GetElement("MultibarRight")
	bar5:ClearHotspots()
	bar5:AddFrame(ElvUI_Bar4)
	bar5:AddHotspot(ElvUI_Bar4:GetRect())

	local party = Api:GetElement("PartyMemberFrame")
	party:ClearHotspots()
	party:AddFrame(ElvUF_Party)
	party:AddHotspot(ElvUF_Party:GetRect())

	local pet = Api:GetElement("PetActionBarFrame")
	pet:ClearHotspots()
	pet:AddFrame(PetAB)
	pet:AddHotspot(PetAB:GetRect())

	local raid = Api:GetElement("CompactRaidFrame")
	raid:ClearHotspots()
	raid:AddFrame(ElvUF_Raid)
	raid:AddFrame(ElvUF_Raidpet)
	raid:AddFrame(ElvUF_Assist)
	raid:AddFrame(ElvUF_Tank)
	raid:AddHotspot(ElvUF_Raid:GetRect())
	raid:AddHotspot(ElvUF_Raidpet:GetRect())
	raid:AddHotspot(ElvUF_Assist:GetRect())
	raid:AddHotspot(ElvUF_Tank:GetRect())

	local stance = Api:GetElement("StanceBarFrame")
	stance:ClearHotspots()
	stance:AddFrame(ElvUI_StanceBar)
	stance:AddHotspot(ElvUI_StanceBar:GetRect())

	local chat = Api:GetElement("ChatFrame")
	chat:ClearHotspots()
	chat:AddFrame(LeftChatPanel)
	chat:AddFrame(ElvUI_ExperienceBar)
	chat:AddFrame(RightChatPanel)
	chat:AddFrame(ElvUI_ReputationBar)
	chat:AddFrame(LeftChatToggleButton)
	chat:AddFrame(RightChatToggleButton)
end

-- Called when the module is disabled.
function ElvUI:OnDisable()
end

-- Register the default settings for the module.
function ElvUI:OnRegisterDefaults()
	return { Enabled = false }
end