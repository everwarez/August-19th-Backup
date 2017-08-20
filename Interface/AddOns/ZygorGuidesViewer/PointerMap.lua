local ZGV=ZygorGuidesViewer
if not ZGV then return end

local PointerMap = {}
ZGV.PointerMap = PointerMap

local PREVIEW_ALPHA = 0.5
local PREVIEW_SCALE = 0.5

-- list of elements we do not want visible in our preview mode
-- we will toggle their visibility when showing/hiding preview
local map_display_elements = {
	WorldMapFrameTitle,
	WorldMapFrameMiniBorderLeft,
	WorldMapFrameMiniBorderRight,
	WorldMapFrameSizeUpButton,
	WorldMapFrameSizeDownButton,
	WorldMapFrameCloseButton,
	WorldMapShowDropDown,
	WorldMapFrameAreaLabel,
	WorldMapTrackQuest,
	WorldMapFrame.BorderFrame,
	WorldMapFrame.NavBar,
	WorldMapFrame.UIElementsFrame,
	WorldMapFrame.MainHelpButton,
	WorldMapFrameTutorialButton,
	QuestMapFrame
	}

function PointerMap:UpdateSettings()
	if not PointerMap.PreviewVisible then return end

	if GetCVarBool("miniWorldMap") then WorldMapFrame:SetScale(ZGV.db.profile.preview_scale) end
	WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha)

	if PointerMap.HideTimer then
		ZGV:CancelTimer(PointerMap.HideTimer)
	end
	if ZGV.db.profile.preview_duration>0 then
		PointerMap.HideTimer = ZGV:ScheduleTimer(function() PointerMap:HidePreview("timer") end, ZGV.db.profile.preview_duration) 
	end
end

function PointerMap:DelayShowPreview()
	if PointerMap.DelayTimer then
		ZGV:CancelTimer(PointerMap.DelayTimer)
	end
	PointerMap.DelayTimer = ZGV:ScheduleTimer(function() PointerMap:ShowPreview() end, 1) 
end

local function do_nothing() end

-- switch world map into zygor preview mode
function PointerMap:ShowPreview()
	if InCombatLockdown() then 
		PointerMap:DelayShowPreview()
		return 
	end
	if QuestFrame:IsVisible() or GossipFrame:IsVisible() then 
		PointerMap:DelayShowPreview()
		return 
	end

	if not ZGV.CurrentStep or not ZGV.CurrentStep.map then return end

	-- if user already has map out, don't change stuff
	if WorldMapFrame and WorldMapFrame:IsVisible() and not PointerMap.PreviewVisible then return end

	if ZGV.db.profile.preview_control=="manual" then ZGV.db.char.previewhidden=nil end

	if not GetCVarBool("closedInfoFrames") then SetCVarBitfield( "closedInfoFrames", LE_FRAME_TUTORIAL_WORLD_MAP_FRAME, true ) end			

	if not GetCVarBool("miniWorldMap") then 
		ZGV.db.char.restoreFullMap = true
		WorldMap_ToggleSizeDown()
	end

	for i,v in pairs(map_display_elements) do v:Hide() end

	Blizzard_WorldMapFrame_AnimAlphaIn = WorldMapFrame_AnimAlphaIn
	Blizzard_WorldMapFrame_AnimAlphaOut = WorldMapFrame_AnimAlphaOut
	WorldMapFrame_AnimAlphaIn = do_nothing
	WorldMapFrame_AnimAlphaOut = do_nothing


	-- Make map not interactive
	WorldMapButton:EnableMouse(false)

	PointerMap.PreviewVisible=true

	WorldMapFrame:Show()

	PointerMap:UpdateSettings()
	WorldMapFrame:EnableMouse(false)


end

-- restore world map into regular blizzard mode
function PointerMap:HidePreview(manual)
	WorldMapFrame:Hide()
	PointerMap:RestoreMapSettings(manual)
end

function PointerMap:RestoreMapSettings(manual)
	if not PointerMap.PreviewVisible then return end

	if ZGV.db.profile.preview_control=="manual" and manual then ZGV.db.char.previewhidden=true end

	for i,v in pairs(map_display_elements) do v:Show() end
	
	if ZGV.db.char.restoreFullMap then 
		ZGV.db.char.restoreFullMap = false
		SetCVar("miniWorldMap",0,true)
	end

	-- Make map interactive
	WorldMapButton:EnableMouse(true)

	if PointerMap.HideTimer then
		ZGV:CancelTimer(PointerMap.HideTimer)
	end

	WorldMapFrame_AnimAlphaIn = Blizzard_WorldMapFrame_AnimAlphaIn
	WorldMapFrame_AnimAlphaOut = Blizzard_WorldMapFrame_AnimAlphaOut

	WORLD_MAP_MAX_ALPHA=1
	WorldMapFrame:SetScale(1)
	WorldMapFrame:SetAlpha(1)
	WorldMapFrame:EnableMouse(true)
	PointerMap.PreviewVisible = false
end

function PointerMap:FadeOut() 
	if not PointerMap.PreviewVisible then return end
	WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha/2) 
end

function PointerMap:FadeIn() 
	if not PointerMap.PreviewVisible then return end
	WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha) 
end

function PointerMap.EventHandler(self,event)
	if event=="PLAYER_STARTED_MOVING" then
		PointerMap:FadeOut()
	elseif event=="PLAYER_STOPPED_MOVING" then
		PointerMap:FadeIn()
	end
end

tinsert(ZGV.startups,{"Map preview",function(self)
	hooksecurefunc("ToggleWorldMap",function() PointerMap:RestoreMapSettings("manual") end)
	hooksecurefunc(GossipFrame,"Show",function() PointerMap:HidePreview() end)
	hooksecurefunc(QuestFrame,"Show",function() PointerMap:HidePreview() end)
	PointerMap.TrackerFrame = ZGV.ChainCall(CreateFrame("FRAME"))
		:SetScript("OnEvent",PointerMap.EventHandler)
		:RegisterEvent("PLAYER_STARTED_MOVING")
		:RegisterEvent("PLAYER_STOPPED_MOVING")
	.__END
end})