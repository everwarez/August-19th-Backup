local ZGV=ZygorGuidesViewer
if not ZGV then return end

local Pointer = {}
ZGV.Pointer = Pointer

local  _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe,abs,ceil =
	_G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe,abs,ceil

local L=ZGV.L

local BZL=ZGV.BZL
local BZR=ZGV.BZR

Pointer.nummanual = 0

Pointer.waypoints = {}

Pointer.antphase=0

local HBD = ZGV.HBD
local HBDPins = ZGV.HBDPins

local unusedMarkers = {}
Pointer.unusedMarkers = unusedMarkers

local lastminimapdist=99999
local minimapcontrol_suspension=0
local minimap_lastset = 0

local last_distance=0
local last_speed=0
local speeds={}
local stoptime=0
local avgspeed=0
local eta_elapsed=0

local cuedinged=nil

local inscale = 300

local zone_aliases = {
	-- Mount Hyjal
	[606]=606,
	[683]=606,
	-- The Maelstrom
	[737]=737,
	[751]=737,
	-- Twilight Highlands
	[700]=700,
	[770]=700,
	-- Uldum
	[720]=720,
	[748]=720,
	-- Zul'Gurub
	--[697]=697,
	--[793]=697,
}


local submap_cache = nil

local MapFloorCountCache


local hardcoded_defaults = {
	[1014] = 10, -- thank you blizzard for making legion dala have default floor not being the lowest
	[1090] = 0,  -- warlock scenario tolbarad
	[32] = 0,  -- deadwind pass
	}

function ZGV:SanitizeMapFloor(map,flr,is_current)
	local mapData = HBD.mapData[map]

	if not mapData then return flr or 0 end

	if flr and mapData.floors and mapData.floors[flr] then return flr end
	if flr and flr>0 then return flr end
	if flr==0 and mapData.numFloors==0 then return flr end

	local lowest

	if hardcoded_defaults[map] then
		lowest = hardcoded_defaults[map]
	else
		if mapData.floors then for i,v in pairs(mapData.floors) do
		    if not lowest or i<lowest then lowest=i end
		end end
	end
        return lowest or 0
end

function Pointer:Startup()
	self:SetArrowSkin(ZGV.db.profile.arrowskin)

	if ZGV.db.profile.frame_positions and ZGV.db.profile.frame_positions.ZygorGuidesViewerPointer_ArrowCtrl then
		ZygorGuidesViewerPointer_ArrowCtrl:ClearAllPoints()
		ZygorGuidesViewerPointer_ArrowCtrl:SetPoint(unpack(ZGV.db.profile.frame_positions.ZygorGuidesViewerPointer_ArrowCtrl))
	end

	self.Icons:SetAntColorsFromOptions()

	--[[
	self.EventFrame = CreateFrame("FRAME")
	self.EventFrame:Show()
	self.EventFrame:SetScript("OnEvent",PointerEventFrame_OnEvent)
	self.EventFrame:RegisterEvent("WORLD_MAP_UPDATE")
	--]]

	self.OverlayFrame = ZGV.ChainCall(CreateFrame("FRAME","ZygorGuidesViewerPointerOverlay",WorldMapButton))
		:SetAllPoints(true)
		--:SetSize(1002,668)
		--:SetFrameStrata("DIALOG")
		--:SetFrameLevel(WorldMapButton:GetFrameLevel()+1)
		--:SetScript("OnMouseUp",self.Overlay_OnClick)
		--:EnableMouse(true)
		:SetScript("OnEvent",self.Overlay_OnEvent)
		:SetScript("OnUpdate",self.Overlay_OnUpdate)
		:RegisterEvent("PLAYER_ENTERING_WORLD")
		:RegisterEvent("PLAYER_ALIVE")
		:RegisterEvent("PLAYER_UNGHOST")
		:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		:RegisterEvent("WORLD_MAP_UPDATE")
		.__END

	if ZGV.DEV then
		self.OverlayFrame.ZygorCoordsDEV = ZGV.ChainCall(WorldMapFrame.UIElementsFrame:CreateFontString(nil,"ARTWORK","GameFontHighlight")) :SetPoint("BOTTOMLEFT") :SetWidth(300) :SetJustifyH("LEFT") :Hide() .__END 
		self.OverlayFrame.LibRoverButton = ZGV.ChainCall(CreateFrame("BUTTON","ZGVLibRoverButton",WorldMapFrame.UIElementsFrame,"UIPanelButtonTemplate"))
		:SetPoint("TOPLEFT")
		:SetSize(100,30)
		:SetText("Travel nodes")
		:SetScript("OnClick",LibRover.ShowDebugMenu)
		--:RegisterForClicks("AnyUp")
		:Hide()
		.__END
		self.OverlayFrame.PointerDebugButton = ZGV.ChainCall(CreateFrame("BUTTON","ZGVPointerDebugButton",WorldMapFrame.UIElementsFrame,"UIPanelButtonTemplate"))
		:SetPoint("TOPLEFT",0,-30)
		:SetSize(100,30)
		:SetText("Free zoom")
		:SetScript("OnClick",function() Pointer:Debug_FreeWorldMapScale() end)
		--:RegisterForClicks("AnyUp")
		:Hide()
		.__END

		if ZGV.db.profile.debug_display then
			self.OverlayFrame.ZygorCoordsDEV:Show()
			self.OverlayFrame.LibRoverButton:Show()
			self.OverlayFrame.PointerDebugButton:Show()
		end
	end

	--hooksecurefunc("WorldMapButton_OnClick",ZGV.Pointer.hook_WorldMapButton_OnClick)

	ZGV:ScheduleRepeatingTimer(function()  if not WorldMapFrame:IsVisible() then SetMapToCurrentZone() end  end, 10.0)   -- to help the current zone cache

	if ZGV.db.profile.autotravel then
		ZGV:ScheduleRepeatingTimer(function()  Pointer:DoAutoTravel() end, 0.01)
	end

	--[[
	local texture = overlay:CreateTexture("ZygorGuidesViewerPointerOverlayTexture","OVERLAY")
	texture:SetAllPoints(true)
	--texture:SetTexture(ZGV.DIR .. "\\Maps\\deadmines")
	texture:SetTexCoord(0,0.975,0,0.65)
	texture:Hide()
	overlay.texture = texture

	local youarehere = overlay:CreateTexture("ZygorGuidesViewerPointerOverlayYouarehere","OVERLAY")
	youarehere:SetTexture(ZGV.DIR .. "\\Skins\\minimaparrow-green-dot")
	overlay.youarehere = youarehere
	--]]

	self:UpdateArrowVisibility()

	--hooksecurefunc("WorldMapFrame_OnShow",ZGV.Pointer.hook_WorldMapFrame_OnShow)


	--WorldMapFrame.PlayerCoord = WorldMapFrame:CreateFontString(nil,"ARTWORK","GameFontHighlightSmall")
	--WorldMapFrame.CursorCoord = WorldMapFrame:CreateFontString(nil,"ARTWORK","GameFontHighlightSmall")

	--WorldMapFrame.PlayerCoord:SetText("Player")
	--WorldMapFrame.CursorCoord:SetText("Cursor")

	--ZGV.ScheduleRepeatingTimer(self,"FixMapLevel", 1.0)

	
	self:SetMinimapPlayerTexture()

	self.ready = true

	if WorldMapQuestPOI_OnClick then -- WorldMapQuestPOI_OnClick doesn't exist in WoD beta.
		hooksecurefunc("WorldMapQuestPOI_OnClick",Pointer.QuestPOI_PointToMe)
	end


	self:DoCorpseCheck("startup")

	Pointer:RefreshDynamicValues()

	-- Karazhan Catacombs coord fix
	ZGV.HBD.mapData[32].numFloors=1
	ZGV.HBD.mapData[32].floors[1] = {[1]=337.5, [2]=225, [3]=-1731.25, [4]=-10810, instance=0}

	ZGV.HBD.mapData[20].numFloors=2
	ZGV.HBD.mapData[20].floors[0] = {[1]=ZGV.HBD.mapData[20][1], [2]=ZGV.HBD.mapData[20][2], [3]=ZGV.HBD.mapData[20][3], [4]=ZGV.HBD.mapData[20][4], instance=0}
	ZGV.HBD.mapData[20].floors[2] = {[1]=649, [2]=433, [3]=2579.5, [4]=2200.5, instance=0}

	--hooksecurefunc("WatchFrameQuestPOI_OnClick",Pointer.QuestWatchPOI_PointToMe)
end


Pointer.iconScale = 1
Pointer.iconScaleBase = 0.7
Pointer.Icons = {
	greendot = { tex=ZGV.DIR.."\\Skins\\minimaparrow-green-dot", size=30, minisize=25, rotates=false, edgetex=ZGV.DIR.."\\Skins\\minimaparrow-green-edge", edgesize=60, spinner=true, onminimap="always" },
	graydot = { tex=ZGV.DIR.."\\Skins\\minimaparrow-green-dot", size=30, minisize=25, rotates=false, edgetex=ZGV.DIR.."\\Skins\\minimaparrow-green-edge", edgesize=60, spinner=true, desat=1, onminimap="always" },
	arrow = { tex=ZGV.DIR.."\\Skins\\minimaparrow-path", size=70, minisize=60, rotates=true, edgetex=ZGV.DIR.."\\Skins\\minimaparrow-path", edgesize=50 },
	
	ant =	{ tex=ZGV.DIR.."\\Skins\\minimaparrow-ant", alpha=0.8, size=30, minisize=20, rotates=false, edgetex=nil, edgesize=1 },
	ant_taxi =   { tex=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=0.4, g=1,   b=0, alpha=0.8, size=30, minisize=20, rotates=false, edgetex=nil, edgesize=1 },
	ant_ship =   { tex=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=0,   g=0.7, b=1, alpha=0.8, size=30, minisize=20, rotates=false, edgetex=nil, edgesize=1 },
	ant_portal = { tex=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=0.8, g=0.3, b=1, alpha=0.8, size=30, minisize=20, rotates=false, edgetex=nil, edgesize=1 },
	ant_flying = { tex=ZGV.DIR.."\\Skins\\minimaparrow-ant", r=1,   g=0.8, b=0, alpha=0.8, size=30, minisize=20, rotates=false, edgetex=nil, edgesize=1 },

	-- Dynamic values are handled in RefreshDynamicValues()
	treasure    = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,				coords={0,   1/8, 0,   1/2} },
	treasure_on = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,				coords={0,   1/8, 1/2, 1  } },
	rare    = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, minimap_alpha=0.5, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,		coords={1/8, 2/8, 0,   1/2} },
	rare_on = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, minimap_alpha=0.5, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,		coords={1/8, 2/8, 1/2, 1  } },
	battlepet    = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,				coords={2/8, 3/8, 0,   1/2} },
	battlepet_on = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,				coords={2/8, 3/8, 1/2, 1  } },
	achievement    = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, minimap_alpha=0.5, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,		coords={3/8, 4/8, 0,   1/2} },
	achievement_on = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, minimap_alpha=0.5, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,		coords={3/8, 4/8, 1/2, 1  } },
	questobjective    = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, minimap_alpha=0.5, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,	coords={4/8, 5/8, 0,   1/2} },
	questobjective_on = { tex=ZGV.DIR.."\\Skins\\poi_icons", alpha=1, minimap_alpha=0.5, size=20, minisize=20, rotates=false, edgetex=nil, edgesize=1,	coords={4/8, 5/8, 1/2, 1  } },

	none = { tex="", alpha=0.0, size=1, minisize=1, rotates=false, edgetex=nil, edgesize=1 },

	-- placeholder values to grab defaults from. NOT real icons.
	ant_walk_default   = { r=1,   g=1,   b=1, alpha=0.8 },
	ant_taxi_default   = { r=0.4, g=1,   b=0, alpha=0.8 },
	ant_ship_default   = { r=0,   g=0.7, b=1, alpha=0.8 },
	ant_portal_default = { r=0.8, g=0.3, b=1, alpha=0.8 },
	ant_flying_default = { r=1,   g=0.8, b=0, alpha=0.8 },
	ant_default = {r=0.03, g=1, b=0.06, alpha=0.8 }, -- { r=1, g=1, b=1, alpha=0.8 }  -- Options.lua uses this as default color!

	SetAntColorsFromOptions = function(self)
		local function setrgb(colortable,savedcolors)
			if not colortable then return end
			colortable.r,colortable.g,colortable.b,colortable.alpha = savedcolors.r,savedcolors.g,savedcolors.b,savedcolors.alpha or savedcolors.a  -- we use alpha, options use a
		end

		if ZGV.db.profile.multicolorants then
			setrgb(self.ant_taxi,   ZGV.db.profile.colorantstaxi)
			setrgb(self.ant_ship,   ZGV.db.profile.colorantsship)
			setrgb(self.ant_portal, ZGV.db.profile.colorantsportal)
			setrgb(self.ant_flying, ZGV.db.profile.colorantsfly)
			setrgb(self.ant,        ZGV.db.profile.colorantsother)
		else
			setrgb(self.ant_taxi,   ZGV.db.profile.singlecolorantscolor)
			setrgb(self.ant_ship,   ZGV.db.profile.singlecolorantscolor)
			setrgb(self.ant_portal, ZGV.db.profile.singlecolorantscolor)
			setrgb(self.ant_flying, ZGV.db.profile.singlecolorantscolor)
			setrgb(self.ant,        ZGV.db.profile.singlecolorantscolor)
		end
	end
}
setmetatable(Pointer.Icons,{__index=function(k) return Pointer.Icons.greendot end})
for k,v in pairs(Pointer.Icons) do if type(v)=="table" then __CLASS[v]="PointerIcon_"..k end end

function Pointer:RefreshDynamicValues()
	Pointer.Icons.treasure.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.treasure.size = ZGV.db.profile.poisize
	Pointer.Icons.treasure.minisize = ZGV.db.profile.poisize

	Pointer.Icons.treasure_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.treasure_on.size = ZGV.db.profile.poisize
	Pointer.Icons.treasure_on.minisize = ZGV.db.profile.poisize

	Pointer.Icons.rare.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.rare.size = ZGV.db.profile.poisize
	Pointer.Icons.rare.minisize = ZGV.db.profile.poisize

	Pointer.Icons.rare_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.rare_on.size = ZGV.db.profile.poisize
	Pointer.Icons.rare_on.minisize = ZGV.db.profile.poisize

	Pointer.Icons.battlepet.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.battlepet.size = ZGV.db.profile.poisize
	Pointer.Icons.battlepet.minisize = ZGV.db.profile.poisize

	Pointer.Icons.battlepet_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.battlepet_on.size = ZGV.db.profile.poisize
	Pointer.Icons.battlepet_on.minisize = ZGV.db.profile.poisize

	Pointer.Icons.achievement.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.achievement.size = ZGV.db.profile.poisize
	Pointer.Icons.achievement.minisize = ZGV.db.profile.poisize

	Pointer.Icons.achievement_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.achievement_on.size = ZGV.db.profile.poisize
	Pointer.Icons.achievement_on.minisize = ZGV.db.profile.poisize


	for k,w in pairs(ZGV.Pointer.waypoints) do w:SetIcon() end
end

--[[
local numlevels=0
local oldlevel=1
function Pointer.FixMapLevel()
	local x,y = GetPlayerMapPosition("player")
	if x<=0 and y<=0 then
		-- perhaps wrong floor indeed.
		numlevels = GetNumDungeonMapLevels()
		if numlevels>1 then
			oldlevel = GetCurrentMapDungeonLevel()
			for lev=1,numlevels do
				if lev~=oldlevel and GetPlayerMapPosition("player")>0 then
					GetCurrentMapDungeonLevel()
			end
		end
end
--]]

--[[
	data elements:
	title - guess
	type - 'way' 'poi' 'manual' 'corpse' 'path'
	icon - texture path
	onminimap - 'always' 'zone'
	overworld - show on world map
	persistent - don't hide when arrived at
--]]

local phasedBases={}
local phasedMaps = {}
-- grab pairs from LibRover
for name,ids in pairs(LibRover.data.MapIDsByName) do
	if type(ids)=="table" then for i,id in ipairs(ids) do phasedMaps[id]=name end end
end
setmetatable(phasedMaps,{__index=function(t,map) return map and type(map)=="number" and 10000+map or 0 end})
for id,group in pairs(phasedMaps) do phasedBases[group]=phasedBases[group] or id end
ZGV.Pointer.phasedMaps = phasedMaps

-- initialize phase bases with... something from the phase maps. This might suck, beware.
--for map,num in pairs(phasedMaps) do phasedBases[num]=phasedBases[num] or map end -- hardcoded the bases in because they were not getting assigned correctly here.

function Pointer:IsEnvironmentPhased(target_map)
	-- Assumption: if the player is/was in a map which is known to be phased, the best fit map is the current one
	-- WARNING Blizz works in mysterious ways. If something's broken with phased terrain corpse display, please look here
	-- keywords: worgen arrow not working qq

	-- No no no! Such extensive setmapping seems to cause lag...
	--[[
	local _mm,_ff=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	SetMapToCurrentZone()
	local mm,ff=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	SetMapByID(_mm) SetDungeonMapLevel(_ff)
	--]]
	local mm=ZGV.CurrentMapID
	if mm then
		return rawget(phasedMaps,mm) and phasedMaps[target_map]==phasedMaps[mm]
	end
end

-- Save this map as its group's base phase. Do it with map ids obtained fresh from GetCurrentMapAreaID() calls, NEVER from any ID you happen to think of.
function Pointer:SetBasePhase(map)
	local group = phasedMaps[map]
	if not group then return end
	phasedBases[group] = phasedBases[group] and map
end

function Pointer:SanitizePhase(map)
	return phasedBases[phasedMaps[map] or 0] or map
end


local function waypoint_tostring(waypoint)
	if not waypoint then return "nil" end
	if type(waypoint)~="table" then return tostring(waypoint) end
	return waypoint:tostring()
end
Pointer.waypoint_tostring = waypoint_tostring


local waypoints_ants = {}
setmetatable(waypoints_ants,{__index=function(t,i)
	local waypoint={}
	waypoint.type="ant"
	Pointer:MakeMarkerFrames(waypoint,"Ant")

	--waypoint.frame_minimap.icon:SetRotation(icon.rotates and data.angle or 0)
	local icon=Pointer.Icons.ant
	-- SetTexture is done in SetWaypoint_Ant.
	waypoint.frame_minimap.self_updating=true
	waypoint.frame_minimap.icon:SetSize(icon.minisize,icon.minisize)
	waypoint.frame_minimap.icon:SetDesaturated(icon.desat)
	waypoint.frame_minimap.icon:SetAlpha(icon.minimap_alpha or icon.alpha or 1)
	waypoint.frame_minimap.arrow:SetTexture(icon.edgetex)
	waypoint.frame_minimap.arrow:SetSize(1,1) --hide?
	--waypoint.frame_worldmap.icon:SetRotation(icon.rotates and data.angle or 0)
	waypoint.frame_worldmap:SetSize(icon.size*Pointer.iconScale*Pointer.iconScaleBase,icon.size*Pointer.iconScale*Pointer.iconScaleBase)
	waypoint.frame_worldmap.icon:SetDesaturated(icon.desat)
	waypoint.frame_worldmap.icon:SetAlpha(icon.alpha or 1)
	waypoint.frame_worldmap.icon:SetRotation(0)  -- without this, TexCoord is somehow -0.2...1.2

	waypoint.frame_taximap.icon:SetSize(icon.size*0.7,icon.size*0.7)
	waypoint.frame_taximap.icon:SetDesaturated(icon.desat)
	waypoint.frame_taximap.icon:SetAlpha(icon.alpha or 1)

	waypoint.onminimap="always"
	waypoint.overworld=true
	waypoint.showonedge=false
	
	waypoint.GetTitle = function() end
	waypoint.GetArrowTitle = function() end

	__CLASS[waypoint]="WaypointAnt"

	rawset(t,i,waypoint)
	return waypoint
end})
Pointer.waypoints_ants = waypoints_ants

-- SPECIAL setwaypoint, optimized for ants
local icons=Pointer.Icons
function Pointer:SetWaypoint_ant (m,f,x,y,num,icon, ant)  -- ant is here for one-time lookup! don't reuse!!
	m = zone_aliases[m] or m

	-- phasing? meh.
	local waypoint = waypoints_ants[num]
	waypoint.m=m
	waypoint.f=f
	waypoint.x=x
	waypoint.y=y
	waypoint.c = HBD:GetMapContinent(m)

	-- clone some data to make a smarter, more aware ant
	waypoint.p0,waypoint.p1,waypoint.p2,waypoint.p3 = ant.p0,ant.p1,ant.p2,ant.p3
	waypoint.p1m,waypoint.p2m,waypoint.p1f,waypoint.p2f = ant.p1m,ant.p2m,ant.p1f,ant.p2f
	waypoint.ant_dist=ant.ant_dist

	waypoint.frame_minimap.waypoint = waypoint
	waypoint.frame_worldmap.waypoint = waypoint
	waypoint.frame_taximap.waypoint = waypoint

	if not icon then icon=icons.ant end
	if waypoint.icon~=icon then
		waypoint.frame_minimap.icon:SetTexture(icon.tex)
		waypoint.frame_worldmap.icon:SetTexture(icon.tex)
		waypoint.frame_taximap.icon:SetTexture(icon.tex)
		waypoint.icon=icon
	end

	local r,g,b = icon.r or 1,icon.g or 1,icon.b or 1
	waypoint.frame_minimap.icon:SetVertexColor(r,g,b)
	waypoint.frame_worldmap.icon:SetVertexColor(r,g,b)
	waypoint.frame_taximap.icon:SetVertexColor(r,g,b)

	waypoint.passive=true
	waypoint.is_on = true

	local lm,lf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	waypoint:UpdateWorldMapIcon(lm,lf)
	waypoint:UpdateMiniMapIcon(lm,lf)
	if TaxiFrame:IsShown() then
		waypoint.frame_taximap.icon:SetVertexColor(icon.r or 1,icon.g or 1,icon.b or 1)
		waypoint:UpdateTaxiMapIcon()
	end

	Pointer.frame_minimap_functions.OnUpdate(waypoint.frame_minimap,1000)

	return waypoint
end

function Pointer:ClearWaypoints_ant(active)
	for i=active+1,#waypoints_ants do
		local waypoint = waypoints_ants[i]
		HBDPins:RemoveMinimapIcon(Pointer,waypoint.frame_minimap)
		waypoint.frame_minimap:Hide()
		waypoint.frame_minimap.waypoint=nil  -- so that they don't reappear
		waypoint.frame_worldmap:Hide()
		waypoint.frame_worldmap.waypoint=nil
		waypoint.frame_taximap:Hide()
		waypoint.is_on = false
	end
end

local tmp_data = {}
local function add_default_data(data)
	wipe(tmp_data)
	for k,v in pairs(data) do tmp_data[k]=v end
	--if not data.title then data.title="Waypoint" end
	if not tmp_data.type then tmp_data.type="way" end
	if not tmp_data.icon then tmp_data.icon=Pointer.Icons.greendot end
	return tmp_data
end

function Pointer:SetWaypoint (m,f,x,y,data,arrow)
	m = zone_aliases[m] or m

	local data = add_default_data(data)  -- Clone! so this is tmp_data from above, basically.

	if data.cleartype and data.type then  self:ClearWaypoints(data.type)  end

	-- Let's see if this is evil. If current map is phased, remember it and use it to de-phase other maps of the same group.

	--local mapm,mapf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	--self:SetBasePhase(mapm)  -- Assuming nobody in their right mind is viewing a wrong-phase map. Calling SetMapByID(phasedmap) WILL break this...

	if not m then
		--m,f=mapm,mapf  -- Use fresh values, NOT the cached crap. No map means put markers on CURRENTLY DISPLAYED map, not the player's current.
		m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	else
		--m=self:SanitizePhase(m)  -- de-phase map!
	end

	if not f then f=ZGV:SanitizeMapFloor(m,f) end

	local waypoint = self:GetMapMarker (m,f or 0,x,y,data)
	--Pointer:Debug("Adding waypoint type "..data.type.." in "..c..","..z..","..x..","..y)
	if not waypoint then return end

	waypoint.title=data.maplabel or data.title or data.arrowtitle or ("%s %d,%d"):format(Pointer.GetMapNameByID2(waypoint.m or 0,waypoint.f) or "?",waypoint.x*100,waypoint.y*100)
	waypoint.ant_icon = data.ant_icon
	waypoint.noskip = data.noskip

	--waypoint.type=data.type
	--waypoint.angle=data.angle	-- not needed, as that's set in GetMapMarker from data

	if waypoint.type=="manual" then
		self.nummanual = self.nummanual + 1
	end

	tinsert(self.waypoints,waypoint)


	waypoint:SetIcon(waypoint.icon)
	if ZGV.DEV and ZGV.db.profile.debug_display and waypoint.goal then
		waypoint.frame_worldmap.label:SetText("   " .. (waypoint.goal and waypoint.goal.num..". " or "")  ..  waypoint:GetTitle()  ..  ("  %.1f,%.1f"):format(waypoint.x*100,waypoint.y*100))
		waypoint.frame_worldmap.label:SetFont("Fonts\\ARIALN.TTF",5)
	end
	Pointer.frame_minimap_functions.OnUpdate(waypoint.frame_minimap,1000)


	if arrow==nil then arrow=true end
	if arrow and (waypoint.type=="manual" or waypoint.type=="way" or waypoint.type=="route" or waypoint.type=="corpse") then
		self.DestinationWaypoint = waypoint
		self:ShowArrow(waypoint)
	end

	--if waypoint and waypoint.type~="ant" then Pointer:Debug("Waypoint set to map:"..waypoint.m.." floor:"..waypoint.f) end

	--[[
		if waypoint.find_path then
			Pointer:Debug("Starting travel, since waypoint was find_path")
			self:FindTravelPath(waypoint)
		end
	--]]

	if data.findpath and ZGV.db.profile.pathfinding then
		ZGV:Debug("SetWaypoint calling FindTravelPath.")
		self:FindTravelPath(waypoint)
	end

	return waypoint
end

function Pointer:ShowWaiting(phase)
	self.ArrowFrame.WaitingPhase = phase
end

local tmp_tab={}
function Pointer:GetMapMarker (m,f,x,y,data)
	--Pointer:Debug("Internal GetMapMarker: "..tostring(c).." "..tostring(z).." "..tostring(x).." "..tostring(y).." "..tostring(title))
	if not m and not f then
		m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	end
	m = zone_aliases[m] or m
	--Pointer:Debug("Internal GetMapMarker nums: "..tostring(c).." "..tostring(z).." "..tostring(x).." "..tostring(y).." "..tostring(title))

	if not m or not f or not x or not y then
		Pointer:Debug("GetMapMarker bailing out; map=%s/%d %.2f %.2f",m,f or -1,x or -99,y or -99)
		return
	end

	--if x>1 or y>1 then x,y=x/100,y/100 end

	local waypoint = self:GetUnusedMarker()
	--local c = LibRover.ContinentsByID[m] or -1
	local c = HBD:GetMapContinent(m)
	waypoint.m=m
	waypoint.f=f
	waypoint.x=x
	waypoint.y=y
	waypoint.c=c

	table.zygor_join(waypoint,data)
	-- TODO: add callbacks for distance detection

	waypoint.frame_minimap.waypoint = waypoint
	waypoint.frame_worldmap.waypoint = waypoint
	waypoint.frame_taximap.waypoint = waypoint

	waypoint.frame_minimap:EnableMouse(not waypoint.passive)
	waypoint.frame_worldmap:EnableMouse(not waypoint.passive)

	local lm,lf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	waypoint:UpdateWorldMapIcon(lm,lf)
	waypoint:UpdateMiniMapIcon(lm,lf)
	if TaxiFrame:IsShown() then waypoint:UpdateTaxiMapIcon() end

	return waypoint
end

local dont_setwaypoint=false
function Pointer:ClearWaypoints (waytype)
	Pointer:Debug("ClearWaypoints %s",waytype or "all?")
	if waytype=="ant" then return Pointer:ClearWaypoints_ant(0) end
	local n=0
	local w=1
	dont_setwaypoint=true
	while w<=#self.waypoints do
		if not waytype or self.waypoints[w].type==waytype then
			n=n+1
			self:RemoveWaypoint(w)
		else
			w=w+1
		end
	end
	dont_setwaypoint=false
	--if waytype=="path" then
	--	Pointer.TempWaypath = nil
	--end
	return n
end

function Pointer:RemoveWaypoint(waypoint)
	local wayn
	if type(waypoint)=="number" then  wayn=waypoint  waypoint=self.waypoints[wayn]  end
	if not waypoint then return end -- let's just play nice --assert(waypoint,"Waypoint not found")
	assert(__CLASS[waypoint]=="Waypoint")
	if not wayn and type(waypoint)=="table" then for w=1,#self.waypoints do if self.waypoints[w]==waypoint then wayn=w end end end
	if not wayn then return end -- let's just play nice assert(wayn,"No waypoint number found")

	--Pointer:Debug("Removing waypoint %d=%d",waypoint.num,wayn)

	HBDPins:RemoveMinimapIcon(Pointer,waypoint.frame_minimap)
	HBDPins:RemoveWorldMapIcon(Pointer,waypoint.frame_worldmap)
	--waypoint.frame_minimap:Hide()
	waypoint.frame_minimap.waypoint=nil
	--waypoint.frame_worldmap:Hide()
	waypoint.frame_worldmap.waypoint=nil
	waypoint.frame_taximap:Hide()

	--if waypoint.type~="ant" then print("Removing way "..waypoint.type) end

	if waypoint.type=="manual" then
		self.nummanual = max(0,self.nummanual - 1)
	end

	if waypoint.in_set then self:RemoveWaypointFromSets(waypoint) end

	for k,v in pairs(waypoint) do if not k:match("frame_.+") then waypoint[k]=nil end end  -- clear everything but frame_minimap, frame_worldmap, frame_taximap
	unusedMarkers[waypoint]=1
	table.remove(self.waypoints,wayn)

	-- Now for extra cleanups:

	if self.ArrowFrame.waypoint==waypoint then self:HideArrow() end
	if self.DestinationWaypoint==waypoint then
		Pointer:Debug("Removed DestinationWaypoint")
		self.DestinationWaypoint=nil  self.TempWaypath=nil
		self:ClearSet("route")
	end

end

function Pointer:RemoveWaypointFromSets(waypoint)
	local set = self.pointsets[waypoint.in_set]
	if not set then return end
	for pi,point in ipairs(set.points) do if point==waypoint then tremove(set,pi) return end end
end

function Pointer:HideArrow()
	self.ArrowFrame.waypoint = nil
	self:ResetMinimapZoom() -- to perhaps reset the zoom
	--self.ArrowFrame:Hide()
end

local lastbeeptime
local lastforcedupdate

function Pointer:ShowArrow(waypoint)
	self.initialdist = nil
	if not waypoint then return self:HideArrow() end
	assert(__CLASS[waypoint]=="Waypoint")
	--if waypoint.type~="manual" then self:ClearWaypoints("manual") end

	-- fix for "arrow stuck to cursor", probably
	ZygorGuidesViewerPointer_ArrowCtrl:StopMovingOrSizing()
	self.ArrowFrame.dragging=nil

	-- bandaid: prevent showing if coords are missing
	if not waypoint.m or not waypoint.x or not waypoint.y then 
		Pointer:Debug("No coords for waypoint.")
		return 
	end

	local waypoint_f = waypoint.f
	if waypoint.type=="ant" then waypoint_f=nil end -- use no floor to make ants show up between floors and in dala/orgi
	HBDPins:AddMinimapIconMF(Pointer, waypoint.frame_minimap, waypoint.m, waypoint_f, waypoint.x, waypoint.y)
	
	self.ArrowFrame.waypoint = waypoint

	self.ArrowFrame.WaitingPhase = nil

	last_distance=0
	last_speed=0
	lastbeeptime=GetTime()+3
	cuedinged=nil

	lastminimapdist=99999

	self.current_waypoint = waypoint

	self:SetFontSize(ZGV.db.profile.arrowfontsize)

	--self.ArrowFrame.temporarilyhidden = true
	--self.ArrowFrame:Show()
end

--[[
function Pointer:GetWaypointBearings(way)
	--local dx,dy =
	if type(way)==number then way=self.waypoints[way] end

end
--]]

local markerproto = {}
local markermeta = {__index=markerproto}
local nummarkers=0

function Pointer:MakeMarkerFrames(marker,markertype)
	setmetatable(marker,markermeta)

	markertype=markertype or "Marker"

	nummarkers=nummarkers+1

	marker.frame_minimap = CreateFrame(markertype=="Ant" and "FRAME" or "BUTTON", "ZGVMarker"..nummarkers.."Mini", Minimap, "ZygorGuidesViewerPointerMinimap".. markertype)
	if markertype~="Ant" then
		ZGV.ChainCall(marker.frame_minimap)
		:SetScript("OnEnter",ZGV.Pointer.frame_minimap_functions.OnEnter)
		:SetScript("OnLeave",ZGV.Pointer.frame_minimap_functions.OnLeave)
		:SetScript("OnClick",ZGV.Pointer.frame_minimap_functions.OnClick)
			:RegisterForClicks("LeftButtonUp")
		--:SetScript("OnEvent",ZGV.Pointer.frame_minimap_functions.OnEvent)
	end
	marker.frame_minimap:SetScript("OnUpdate",ZGV.Pointer.frame_minimap_functions.OnUpdate)
	marker.frame_minimap.isZygorWaypoint=true -- marking the marker to be protected by substituted Minimap:GetChildren() call.
	--marker.frame_minimap.icon:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-dot")
	--marker.frame_minimap.arrow:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-edge")

	marker.frame_worldmap = CreateFrame(markertype=="Ant" and "FRAME" or "BUTTON", "ZGVMarker"..nummarkers.."World", self.OverlayFrame, "ZygorGuidesViewerPointerWorldMap".. markertype)
	if markertype~="Ant" then
		ZGV.ChainCall(marker.frame_worldmap)
		:SetScript("OnEnter",ZGV.Pointer.frame_worldmap_functions.OnEnter)
		:SetScript("OnLeave",ZGV.Pointer.frame_worldmap_functions.OnLeave)
		--:SetScript("OnUpdate",ZGV.Pointer.frame_worldmap_functions.OnUpdate)
		:SetScript("OnClick",ZGV.Pointer.frame_worldmap_functions.OnClick)
			:RegisterForClicks("RightButtonUp","LeftButtonUp")
		:SetScript("OnEvent",ZGV.Pointer.frame_worldmap_functions.OnEvent)
			:RegisterEvent("PLAYER_ENTERING_WORLD")
			:RegisterEvent("WORLD_MAP_UPDATE")
			:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		:SetScript("OnMouseWheel",ZGV.Pointer.frame_worldmap_functions.OnMouseWheel)
		marker.frame_worldmap.spinner:SetTexture(ZGV.DIR.."\\Skins\\loading")
	else
		--[[
		marker.frame_worldmap:SetScript("OnEvent",ZGV.Pointer.frame_worldmap_functions.OnEvent)
			:RegisterEvent("PLAYER_ENTERING_WORLD")
			:RegisterEvent("WORLD_MAP_UPDATE")
			:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		--]]
	end
	--print(markertype=="Ant" and ("MEDIUM" and WorldMapFrame:GetFrameStrata() ~= "HIGH") or "HIGH")
	
	--[[
	local strataLayer = nil
	if markertype == "Ant" and WorldMapFrame:GetFrameStrata() ~= "HIGH" then
		strataLayer = "MEDIUM"
	elseif markertype == "Ant" then
		strataLayer = "HIGH"
	end
	marker.frame_worldmap:SetFrameStrata(strataLayer or "HIGH")
	--]]

	marker.frame_worldmap:SetFrameLevel((markertype=="Ant" and 608 or 609)+WorldMapFrame:GetFrameLevel())  -- built-in POIs (taxis, pet trainers) are 500-ish, so 600 should suffice.

	--[[
	if Nx then -- Attempt to support Carbonite map, doesn't work.
		--print(Nx.Map:GetMap(1))
		local map = Nx.Map:GetMap (1)
		local win = map.Win
		Spoo(nil, nil, win.Frm)
		if win:IsSizeMax() then
			marker.frame_worldmap:SetParent(win.Frm)
			Spoo(nil, nil, win.Frm)
			--print("Y")
		else
			marker.frame_worldmap:SetParent(win.Frm)
			--marker.frame_worldmap:SetParent(self.OverlayFrame)
			--print("N")
		end
	end -- End attempt to support carbonite map.
	]]--
	
	marker.frame_taximap = CreateFrame("FRAME", "ZGVMarker"..nummarkers.."Taxi", TaxiFrame, "ZygorGuidesViewerPointerTaxiMap".. markertype)
	marker.frame_taximap:SetFrameStrata(markertype=="Ant" and "MEDIUM" or "HIGH")
	marker.frame_taximap:SetScript("OnEvent",ZGV.Pointer.frame_taximap_functions.OnEvent)
	marker.frame_taximap:RegisterEvent("TAXIMAP_OPENED")
	
	--marker.frame_worldmap.icon:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-dot")

	return marker
end

function Pointer:GetUnusedMarker()
	local marker = next(unusedMarkers)
	if marker then
		unusedMarkers[marker]=nil
		return marker
	end

	-- create a new marker
	marker = self:MakeMarkerFrames({visible=true})
	assert(marker.frame_minimap)

	__CLASS[marker]="Waypoint"

	return marker
end

function markerproto:Hide()
	self.frame_minimap:Hide()
	self.frame_worldmap:Hide()
	self.frame_taximap:Hide()
	self.visible = false
end

function markerproto:Show()
	self.frame_minimap:Show()
	self.frame_worldmap:Show()
	if TaxiFrame:IsShown() then self.frame_taximap:Show() end
	self.visible = true
end

function markerproto:SetIcon(icon)  -- leave icon empty to just reset the current icon
	icon = icon or self.icon
	local newalpha = self.alpha or icon.alpha or 1

	self.showonedge=(icon.edgesize~=1)

	self.frame_minimap.icon:SetTexture(icon.tex)
	if icon.coords then
		self.frame_minimap.icon:SetTexCoord(unpack(icon.coords))
	else
		self.frame_minimap.icon:SetRotation(icon.rotates and self.angle or 0)
	end
	local size = self.minisize or self.size or icon.minisize or 30
	self.frame_minimap.icon:SetSize(size,size)
	self.frame_minimap.icon:SetDesaturated(icon.desat)
	self.frame_minimap.icon:SetVertexColor(icon.r or 1,icon.g or 1,icon.b or 1)
	self.frame_minimap.icon:SetAlpha(icon.minimap_alpha or newalpha)
	self.frame_minimap.arrow:SetTexture(icon.edgetex or icon.tex)
	self.frame_minimap.arrow:SetSize(icon.edgesize or size,icon.edgesize or size)
	self.frame_minimap.arrow:SetDesaturated(icon.desat)
	if self.truesize then
		local data = HBD.mapData[self.m]
		local floordata = rawget(data,self.f or 0)
		data = data or floordata
		local width = data.width
		local yd_per_px = width / WorldMapDetailFrame:GetWidth() -- horizontally AND vertically; maps may be 0..1 0..1 with a 2:3 ratio, but pixels are 1:1. Hopefully.
		self.truesize_px = self.truesize / yd_per_px * 3.4  -- wtf?
	end
	local size = self.truesize_px or self.size or icon.size or size
	local sized = size*Pointer.iconScale*Pointer.iconScaleBase
	self.frame_worldmap:SetSize(30,30)
	self.frame_worldmap.icon:SetSize(sized,sized)
	self.frame_worldmap.icon:SetTexture(self.customs and self.customs.icon or icon.tex)
	if icon.coords and not (self.customs and self.customs.icon) then
		self.frame_worldmap.icon:SetTexCoord(unpack(icon.coords))
	elseif self.customs and self.customs.coords then
		self.frame_worldmap.icon:SetTexCoord(unpack(self.customs.coords))
	else
		self.frame_worldmap.icon:SetRotation(icon.rotates and self.angle or 0)
	end
	self.frame_worldmap.icon:SetDesaturated(icon.desat)
	self.frame_worldmap.icon:SetVertexColor(icon.r or 1,icon.g or 1,icon.b or 1)
	self.frame_worldmap.icon:SetAlpha(newalpha)
	if self.frame_worldmap.spinner then self.frame_worldmap.spinner:Hide() end
	self.frame_taximap.icon:SetTexture(icon.tex)
	self.frame_taximap.icon:SetRotation(icon.rotates and self.angle or 0)
	self.frame_taximap.icon:SetSize(size/2,size/2)
	self.frame_taximap.icon:SetVertexColor(icon.r or 1,icon.g or 1,icon.b or 1)
	self.frame_taximap.icon:SetAlpha(newalpha)
	--if icon.spinner then self.frame_worldmap.spinner:Show() else self.frame_worldmap.spinner:Hide() end
	self.icon = icon
end

local mix4=ZGV.mix4
function markerproto:UpdateWorldMapIcon(m,f)
	-- bandaid: prevent updates if coords are missing
	if not self.m or not self.x or not self.y then return end

	-- hide markers that are zone limited, and we are viewing something else
	if (self.onworldmap=="zone" and phasedMaps[m]~=phasedMaps[self.m]) then self:Hide() return end

	-- convert to world coordinates
	local xCoord, yCoord, instanceID = HBD:GetWorldCoordinatesFromZone(self.x, self.y, self.m, self.f)
	if not xCoord then return end

	HBDPins:AddWorldMapIconWorld(Pointer, self.frame_worldmap, instanceID, xCoord, yCoord)

	if self.type=="ant" then
		if not m then m,f=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel() end
		m = zone_aliases[m] or m
		-- fuck. Ants are system-mapped. Check their parents?
		local phm_m=phasedMaps[m]
		if phasedMaps[self.p1m]==phm_m and phasedMaps[self.p2m]==phm_m then
			local p1f,p2f=self.p1f,self.p2f
			-- gradual fading, if one of floors is current
			if p1f==f and p2f~=f then
				self.frame_worldmap:SetAlpha(1-self.ant_dist*0.7)  -- fade out
			elseif p1f~=f and p2f==f then
				self.frame_worldmap:SetAlpha(0.3+self.ant_dist*0.7)  -- fade in
			elseif p1f==f and p2f==f then
				self.frame_worldmap:SetAlpha(1.0)  -- same floor, full vis
			else
				self.frame_worldmap:SetAlpha(0.3)  -- other floor, transparent
			end
		else
			self.frame_worldmap:SetAlpha(1.0)  -- another map, full
		end
	else
		-- normal waypts
		self.frame_worldmap:SetAlpha((phasedMaps[self.m]==phasedMaps[m] and self.f~=f) and 0.3 or 1.0)
	end
end

function markerproto:UpdateMiniMapIcon(m,f)
	if not m then m,f=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel() end
	m = zone_aliases[m] or m

	if not self.hidden
	--and not (GetInstanceInfo()==BZL["Deeprun Tram"])
	and
	(
	 self.onminimap=="always" or
	 ZGV.Pointer.ArrowFrame.waypoint==self or
	 ((self.onminimap=="zone" or self.onminimap=="zonedistance") and phasedMaps[m]==phasedMaps[self.m])
	) then
		if not self.m or not self.x or not self.y then return end
		-- convert to world coordinates
		local xCoord, yCoord, instanceID = HBD:GetWorldCoordinatesFromZone(self.x, self.y, self.m, self.f)
		if not xCoord then return end

		local r = HBDPins:AddMinimapIconWorld(Pointer, self.frame_minimap, instanceID, xCoord, yCoord, self.showonedge)
	else
		HBDPins:RemoveMinimapIcon(Pointer,self.frame_minimap)
	end
end

function markerproto:tostring()
	return ("%s #%d /%d %.1f,%.1f"):format(GetMapNameByID(self.m),self.m,self.f,self.x*100,self.y*100)
end

local function Astrolabe_PlaceIconOnWorldMap2( taxiBgFrame, icon, taximapID, mapID, mapFloor, xPos, yPos )
	local nX, nY = HBD:TranslateZoneCoordinates(xPos, yPos, mapID, mapFloor, taximapID, 0)
	-- anchor and :Show() the icon if it is within the boundry of the current map, :Hide() it otherwise
	if ( nX and nY and (0 < nX and nX <= 1) and (0 < nY and nY <= 1) ) then
		--icon:ClearAllPoints();
		icon:SetPoint("CENTER", taxiBgFrame, "TOPLEFT", nX * taxiBgFrame:GetWidth(), -nY * taxiBgFrame:GetHeight())
		icon:Show();
	else
		icon:Hide();
	end
	return nX, nY
end

function markerproto:UpdateTaxiMapIcon()
	if not TaxiFrame:IsShown() and not (FlightMapFrame and FlightMapFrame:IsShown()) then return end

	local show=true

	local taxitexture = Pointer.taxitexture

	if not taxitexture then
		Pointer:Debug("No map for taxi! texture is '%s'",TaxiFrame.InsetBg:GetTexture())
		return
	end

	local continent = HBD:GetMapContinent(taxitexture)
	if not HBD:GetMapContinent(continent) then -- systemParent
		Pointer:Debug("No map for taxi! map num is %d",taxitexture)
		return
	end

	if show and not self.overworld then
		show=false
	end

	if show and not self.overworld then
		if self.m~=m then show=false end
	end

	if self.onworldmap=="zone" then -- hide zone specific icons
		show=false
	end	

	if show then
		local hostframe,hostparent
		if taxitexture==3007 then
			hostframe=FlightMapFrame.ScrollContainer.Child
			hostparent=FlightMapFrame.ScrollContainer.Child
			self.frame_taximap.icon:SetSize(60,60)
		else
			hostframe=TaxiFrame.InsetBg
			hostparent=TaxiFrame
			self.frame_taximap.icon:SetSize(25,25)
		end
		self.frame_taximap:SetParent(hostparent)
		local x,y = Astrolabe_PlaceIconOnWorldMap2(hostframe, self.frame_taximap, taxitexture, self.m, self.f, self.x, self.y)
		if not x or not y
		or x<0 or y<0 or x>1 or y>1
		then
			show=false
		end
	end

	self.frame_taximap:EnableMouse(false)
end


function markerproto:GetTitle()
	if self.goal then return self.goal:GetText(true,false,false)  -- WITH progress, WITHOUT brief, WITHOUT totals
	else return self.title
	end
end
function markerproto:GetArrowTitle()
	if self.goal then return self.goal:GetText(true,false,false)
	else return self.arrowtitle
	end
end
function markerproto:ToString()
	return "aa"
end


if DEBUG_ROGUE_DATA_IN_WAYPOINTS then
	-- THESE ARE JUST FOR DEBUGGING. Real "valid waypoint fields" are in copy_fields.
	local valids={passive=1,hidden=1,minisize=1,size=1,alpha=1,OnUpdate=1,OnEvent=1,truesize=1,truesize_px=1,hideminimap=1,angle=1,radius=1, pathnode=1, icon=1,ant_icon=1,curve_accuracy=1,actionicon=1, goal=1,
	player=1,  -- important for ant start
	waypoint_zone=1, waypoint_realzone=1, waypoint_subzone=1, waypoint_minizone=1, waypoint_region=1, waypoint_indoors=1, -- these are set in a goal, to pinpoint the waypoint location
	poiNum=1, nearRange=1,OnNear=1,OnFar=1,isNear=1,
	x=1,y=1,m=1,f=1,gx=1,gy=1,
	}
	setmetatable(markerproto,{__index=function(k,v) if not valids[v] then print(v.."  in  "..debugstack(2,1,0)) end end})
end


local function FormatDistance(dist)
	if not dist then return "" end
	if ZGV.db.profile.arrowunit==2 then
		local mdist = dist * 0.9144
		if mdist>1000 then
			return L['dist_km']:format(mdist/1000)
		else
			return L['dist_m']:format(mdist)
		end
	elseif ZGV.db.profile.arrowunit==1 then
		if dist>1760 then
			return L['dist_mi']:format(dist/1760)
		else
			return L['dist_yd']:format(dist)
		end
	else
		-- Fall back to yards.
		if dist>1760 then
			return L['dist_mi']:format(dist/1760)
		else
			return L['dist_yd']:format(dist)
		end
	end
end
ZGV.FormatDistance=FormatDistance

---------------
function Pointer:CreateArrowFrame()
	if not self.ArrowFrameCtrl then
		self.ArrowFrameCtrl = ZygorGuidesViewerPointer_ArrowCtrl
		self.ArrowFrameCtrl:SetScript("OnUpdate",self.ArrowFrameControl_OnUpdate)
		--self.ArrowFrameCtrl:SetPoint("CENTER",UIParent,"BOTTOMLEFT",ZGV.db.profile.arrowposx,ZGV.db.profile.arrowposy)
		--self.ArrowFrameCtrl:SetMovable(1)
		--self.ArrowFrameCtrl:Show()
	end

	if not self.CurrentArrowSkin then
		self:SetArrowSkin(ZGV.db.profile.arrowskin)
	end

	self:SetupArrow()
end

local CHAIN = ZGV.ChainCall

function Pointer:SetupArrow()
	self.ArrowFrame = self.CurrentArrowSkin:CreateFrame()

	--self.ArrowFrame:SetScript("OnMouseUp",ZygorGuidesViewer.Pointer.ArrowFrame_OnMouseDown) -- messes with EnableMouse below! Do this first.
	--self.ArrowFrame:SetScript("OnMouseDown",ZygorGuidesViewer.Pointer.ArrowFrame_OnMouseUp)
	self.ArrowFrame:SetScript("OnClick",ZygorGuidesViewer.Pointer.ArrowFrame_OnClick)

	-- freeze
	self.ArrowFrame:RegisterForDrag(not ZGV.db.profile.arrowfreeze and "LeftButton")
	self.ArrowFrame:RegisterForClicks(not ZGV.db.profile.arrowfreeze and "AnyUp")
	self.ArrowFrame:EnableMouseWheel(not ZGV.db.profile.arrowfreeze)
	self.ArrowFrame:EnableMouse(not ZGV.db.profile.arrowfreeze)

	-- scale
	local scale = ZGV.db.profile.arrowscale
	if not scale then return end
	self.ArrowFrame:SetScale(scale)
	self:SetFontSize(ZGV.db.profile.arrowfontsize)

	-- opacity
	self.ArrowFrame:SetAlpha(ZGV.db.profile.arrowalpha)

	local iconScale = 38*ZGV.db.profile.arrowscale
	if not self.ArrowFrame.ArrowIcon then
		self.ArrowFrame.ArrowIcon = CHAIN(CreateFrame("Button","ZygorGuidesViewerPointerArrow_Icon",self.ArrowFrameCtrl,"SecureActionButtonTemplate"))
			:SetPoint("CENTER",self.ArrowFrame,"CENTER",0,-1)
			:RegisterForClicks("LeftButtonUp")
			:SetFrameLevel(self.ArrowFrame:GetFrameLevel()+2)
			:RegisterForDrag(not ZGV.db.profile.arrowfreeze and "LeftButton")
			:Hide()
			:SetScript("OnDragStart",self.ArrowFrame:GetScript("OnDragStart"))
			:SetScript("OnDragStop",self.ArrowFrame:GetScript("OnDragStop"))
			:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
			:SetPushedTexture("Interface\\Buttons\\CheckButtonHilight")
			.__END
		self.ArrowFrame.ArrowIcon:GetPushedTexture():SetBlendMode("ADD")
		self.ArrowFrame.ArrowIcon.texture = self.ArrowFrame.ArrowIcon:CreateTexture("ZygorGuidesViewerPointerArrow_IconTexture","BACKGROUND")
		self.ArrowFrame.ArrowIcon.cooldown = CHAIN(CreateFrame("Cooldown","",self.ArrowFrame.ArrowIcon,"CooldownFrameTemplate")) :SetAllPoints() :Show() .__END
	end
	--Set Scale and opacity of the icon over the arrow.
	self.ArrowFrame.ArrowIcon:SetSize(iconScale,iconScale)
	self.ArrowFrame.ArrowIcon.texture:SetAlpha(ZGV.db.profile.arrowalpha)
end

local insanity=0
-- makes sure we're not using a waypoint from an old/wrong goal or guide or poi
function Pointer:ResetWaypointIfOrphaned()
	--[[ unreachable code
	local function IsStepVisible(step)
		for k,sf in ipairs(ZGV.stepframes) do  if sf:IsShown() and sf.step==step then return true end  end
		return false
		-- Keep in mind this ACTUALLY checks if the step in question is DISPLAYED. If somehow a step is displayed when it shouldn't, or otherwise, it'll break this. But that would be insane.
	end
	--]]

	local way = self.ArrowFrame and self.ArrowFrame.waypoint
	local goal = way and (way.goal or (way.pathnode and way.pathnode.waypoint and way.pathnode.waypoint.goal))
	
	if not goal then return end

	--[[	--failed attempts' graveyard
		local guide = step.parentGuide
		or (guide==ZGV.Poi.Guide and (not ZGV.Poi.ActivePoiStep or ZGV.Poi.ActivePoiStep~=goal.parentStep))  -- this is a goal for a POI, but NOT the currently selected one
		or (guide~=ZGV.Poi.Guide and (
			(guide~=ZGV.CurrentGuide) -- well WHAT guide is this goal for!?
			or (goal.parentStep~=ZGV.CurrentStep and not goal.parentStep.is_sticky)
		or (goal.parentStep~=
	--]]
	if (goal.condition_visible and not goal:IsVisible())  -- it went invisible for whatever reason
	--or not IsStepVisible(goal.parentStep)
	or not goal.parentStep.isFocused
	then
		insanity=insanity+1
		if insanity>5 then ZGV:Debug("Pointer keeps resetting! ZGV:ShowWaypoints keeps making a waypoint for a bad goal..?") end
		self:Debug("Waypoint was orphaned. Euthanize it.")
		ZGV:ShowWaypoints()  -- make sure this NEVER EVER creates waypoints for bad goals.
	else
		insanity=0
	end
end

function Pointer:UpdateWaypoints()
	-- worldmap updates only, so far
	local m,f=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	for w,way in ipairs(self.waypoints) do
		way:UpdateWorldMapIcon(m,f)
		way:UpdateMiniMapIcon(m,f)
		way:UpdateTaxiMapIcon(m,f)
	end

	self:ResetWaypointIfOrphaned()
end

function Pointer:SetFontSize(size)
	local f=self.ArrowFrame.title:GetFont()
	self.ArrowFrame.title:SetFont(f,size)
	--[[
	self.ArrowFrame.dist:SetFont(f,size)
	self.ArrowFrame.eta:SetFont(f,size)

	self.ArrowFrame.title:SetHeight(size)
	self.ArrowFrame.dist:SetHeight(size)
	self.ArrowFrame.eta:SetHeight(size)
	--]]
end



function Pointer:MinimapZoomChanged()
	if ZGV.db.profile.minimapzoom then
		--minimapcontrolled = true
	else
		--minimapcontrolled = false
		Minimap:SetZoom(0)
		MinimapZoomOut:Disable()
		MinimapZoomIn:Enable()
	end
end

function Pointer:ResetMinimapZoom()
	if ZGV.db.profile.minimapzoom then
		Minimap:SetZoom(0)
		MinimapZoomOut:Disable()
		MinimapZoomIn:Enable()
	end
	--minimap_lastset = 0
end

local function ShowTooltip(button,tooltip)
	if not button.waypoint or not button.waypoint.title or button.waypoint.passive then return end
	tooltip:SetOwner(button,"ANCHOR_TOP")
	tooltip:ClearLines()
	local showtooltip = true

	if button.waypoint.tooltipdata then
		local tooltipdata
		if type(button.waypoint.tooltipdata) == "function" then
			tooltipdata = button.waypoint:tooltipdata()
		else
			tooltipdata = button.waypoint.tooltipdata
		end
		if tooltipdata.ZGV_OPTIONS.REFRESH then
			showtooltip = false
			ZGV:ScheduleTimer(function() if button:IsMouseOver() then ShowTooltip(button,tooltip) end end,0.1)
		end
		if ZGV.Poi.ModelTooltip then
			if tooltipdata.ZGV_OPTIONS.MODEL then
				ZGV.Poi.ModelTooltip:DisplayCreature(tooltipdata.ZGV_OPTIONS.MODEL)
				ZGV.Poi.ModelTooltip:Attach(tooltip)
				ZGV.Poi.ModelTooltip:Show()
			else
				ZGV.Poi.ModelTooltip:Hide()
			end
		end

		for i,line in pairs(tooltipdata) do if i~="ZGV_OPTIONS" then
			if type(line)=="string" then tooltip:AddLine(line,1,1,1,1,1) end
			if line.text then tooltip:AddLine(line.text,1,1,1,1,line.nowrap or 1) end
			if line.icon then tooltip:AddTexture(line.icon) end
			if line.indent then tooltip:AddTexture(ZGV.DIR .. "\\Skins\\blank") end
		end end
	else
		tooltip:SetText(button.waypoint:GetTitle())
	end
	if button.waypoint.OnEnter then
		local r = button.waypoint:OnEnter(tooltip)
		if r==false then return end
	end
	--GameTooltip:SetFrameStrata("TOOLTIP")
	if showtooltip then
		tooltip:Show()
	else
		tooltip:Hide()
	end
end

Pointer.frame_minimap_functions = {}
Pointer.frame_worldmap_functions = {}
Pointer.frame_taximap_functions = {}

function Pointer.frame_minimap_functions.OnEnter(self,arg,tip)
	if self.waypoint.passive then return end
	if self.waypoint and (self.icon:IsVisible() or (self.arrow and self.arrow:IsVisible())) then
		tip = tip or GameTooltip
		ShowTooltip(self,tip)
		if not self.waypoint.tooltipdata then
			tip:AddLine(L['waypoint_tip_distance']:format(FormatDistance(self.dist or self.dist_tmp)))
		end

		if self.waypoint.type=="manual" or self.waypoint.surrogate_for and self.waypoint.surrogate_for.type=="manual" then
			tip:AddLine(L['waypoint_tip_clearmanual'])
		end

		if ZGV.db.profile.debug_display then
			if self.waypoint.type=="route" and self.waypoint.pathnode.type~="end" then
				tip:AddLine("|cffff0000DEBUG:|r |cffddff00Right-click|cff00ff00 for menu")
			end
			if Spoo then
				tip:AddLine("|cffff0000DEBUG:|r |cffddff00Ctrl-Alt-click|cff00ff00 to save map button to ZGV.MAPBUT (+Shift to Spoo)")
			else
				tip:AddLine("|cffff0000DEBUG:|r |cffddff00Ctrl-Alt-click|cff00ff00 to save map button to ZGV.MAPBUT")
			end
		end

		tip:Show()
		if Minimap:IsMouseOver(-2,-2,2,2) then
			tip:ClearAllPoints()
			tip:SetPoint("TOPRIGHT",Minimap,"TOPLEFT",0,0)
		end
		self.hastooltip=true
	end
end

function Pointer.frame_minimap_functions.OnLeave(self)
	if self.waypoint.passive then return end
	GameTooltip:Hide()
	if ZGV.Poi.ModelTooltip then
		ZGV.Poi.ModelTooltip:Hide()
	end
	self.hastooltip=false
end

local MinimapSize = {
	indoor = {
		[0] = inscale, -- scale
		[1] = inscale*0.8, -- 1.25
		[2] = inscale*0.6, -- 5/3
		[3] = inscale*0.4, -- 2.5
		[4] = inscale*0.26666,  -- 3.75
		[5] = inscale*0.16666,  -- 6
	},
	outdoor = {
		[0] = 466 + 2/3, -- scale
		[1] = 400,       -- 7/6
		[2] = 333 + 1/3, -- 1.4
		[3] = 266 + 2/6, -- 1.75
		[4] = 200,       -- 7/3
		[5] = 133 + 1/3, -- 3.5
	},
}
local oldfacing=-1
function Pointer.frame_minimap_functions.OnUpdate(self,elapsed)
	if not self.waypoint then return end
	local way = self.waypoint

	local c = self.minimap_count or 0
	c = c + elapsed
	if c < 0.1 then
		self.minimap_count = c
		return
	end
	elapsed = c
	self.minimap_count = 0

	--if GetInstanceInfo()==BZL['Deeprun Tram']
	--[[
	if not ZGV.db.profile.minicons
	then -- We're in a mapless place. Tough luck.
		self.icon:Hide() self.arrow:Hide() return
	end
	--]]

	local dist,x,y = HBDPins:GetDistanceToIcon(self)  -- ADDED by our own HBDragons.lua
	if not dist --[[or IsInInstance()--]] then self.icon:Hide() self.arrow:Hide() return end

	self.lastdist=self.dist
	self.dist = dist
	if way.OnUpdate then way:OnUpdate(elapsed) end
	if not self.waypoint then return end -- we may have lost this waypoint during update. Freak case?

	if way.hidden or way.hideminimap then
		self.icon:Hide()
		self.arrow:Hide()
		return
	end

	local edge = HBDPins:IsMinimapIconOnEdge(self)
	self.is_on_edge = edge

	if edge then
		if self.waypoint.showonedge
		or ZGV.Pointer.ArrowFrame.waypoint==way
		then
			self.icon:Hide()
			self.arrow:Show()

			local angle = HBDPins:GetDirectionToIcon(self)
			--angle = angle + 2.356194  -- rad(135)

			local rotate_minimap = GetCVar("rotateMinimap")=="1"
			if rotate_minimap then
				angle = angle - (GetPlayerFacing() or 0)
			end

			--local sin,cos = math.sin(angle)*0.71, math.cos(angle) * 0.71
			--self.arrow:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
			self.arrow:SetRotation(angle)
		else
			self.icon:Hide()
			self.arrow:Hide()
		end
	else
		self.icon:Show()
		self.arrow:Hide()
		if self.waypoint.angle and self.waypoint.icon.rotates then
			local facing = GetPlayerFacing() or 0
			local rotate_minimap = GetCVar("rotateMinimap")=="1"
			self.icon:SetRotation(self.waypoint.angle - (rotate_minimap and facing or 0))
		end
	end
	--oldfacing=facing
	
	-- handle tooltip distance updates
	if self.lastdist~=self.dist and self.hastooltip then
		ZGV.Pointer.frame_minimap_functions.OnEnter(self)
	end

	-- minimap autozoom
	if Pointer.ArrowFrame.waypoint==way and ZGV.db.profile.minimapzoom then
		local Minimap = Minimap
		local getzoom = Minimap:GetZoom()
		if getzoom~=minimap_lastset then
			-- user playing with minimap; suspend our activities for a while
			minimapcontrol_suspension = 5.0
			minimap_lastset = getzoom
		end

		if minimapcontrol_suspension>0 then
			minimapcontrol_suspension = minimapcontrol_suspension - elapsed
		else
			local old_minimap_lastset=minimap_lastset
			local dist = dist*2
			if dist~=lastminimapdist then
				local mapsizes = MinimapSize[IsIndoors() and 'indoor' or 'outdoor']

				minimap_lastset=0
				for i=1,Minimap:GetZoomLevels()-1 do
					if dist<mapsizes[i]*0.7 then minimap_lastset=i end
				end

				if old_minimap_lastset~=minimap_lastset then
					-- sanitise buttons
					if(minimap_lastset == (Minimap:GetZoomLevels() - 1)) then MinimapZoomIn:Disable() else MinimapZoomIn:Enable() end
					if(minimap_lastset == 0) then MinimapZoomOut:Disable() else MinimapZoomOut:Enable() end

					Minimap:SetZoom(minimap_lastset)
				end
			end
			lastminimapdist=dist
		end
	end
end

function Pointer.frame_minimap_functions.OnClick(self,button)
	if self.is_on_edge and not self.waypoint.showonedge then return end  -- in other words: isn't really visible, is probably using an blank(ish) edge arrow. Ignore clicks on that.
	-- note: this handler serves both frame_minimaps and frame_worldmaps - but only frame_minimaps can be is_on_edge.

	if self.waypoint.OnClick then self.waypoint.OnClick(self,button) return end
		
	if button=="RightButton" or (IsShiftKeyDown() and not IsControlKeyDown() and not IsAltKeyDown()) then
		--if ZGV.Pointer.ArrowFrame.waypoint==self.waypoint then ZGV.Pointer:HideArrow() end
		if self.waypoint.type=="manual" then ZGV.Pointer:RemoveWaypoint(self.waypoint)
		elseif self.waypoint.surrogate_for and self.waypoint.surrogate_for.type=="manual" then ZGV.Pointer:RemoveWaypoint(self.waypoint.surrogate_for)
		elseif self.waypoint.type=="route" then
			-- if we're debugging, allow for banning a node
			if ZGV.db.profile.debug_display and self.waypoint.pathnode and ZGV.Pointer.ArrowFrame.waypoint.pathnode and button=="RightButton" then
				ZGV.LibRover.ShowNodeDebugMenu(self,self.waypoint.pathnode)
				return
			else
				-- it's on the route, but we're not debugging? just recalc. And kill manuals if it's a manual.
				ZGV.Pointer:ClearWaypoints("manual")
			end
		elseif self.waypoint.type=="way" then return
		end
		ZGV:ShowWaypoints()
		return
	end

	if ZGV.db.profile.debug_display and IsControlKeyDown() and IsAltKeyDown() then
		ZGV.MAPBUT=self
		ZGV:Print("Map button saved to ZGV.MAPBUT")
		if IsShiftKeyDown() then
			DoSpoo(ZGV.MAPBUT)
		end
		return
	end

	Pointer:Debug("Clicked way %d type %s",self.waypoint.num,self.waypoint.type)
	if self.waypoint.type=="way" or self.waypoint.type=="path" then ZGV.Pointer:ClearWaypoints("manual") end
	ZGV.Pointer:FindTravelPath(self.waypoint)
end

-- temporarily unused
function Pointer.frame_minimap_functions.OnEvent(self,event,...)
	Pointer:Debug("MINIMAP ONEVENT "..event)
	if not self.waypoint then self:Hide() return end

	if event == "PLAYER_ENTERING_WORLD" then
		local way = self.waypoint

		if way then
			way:UpdateMiniMapIcon()
		end
	end
end

function Pointer.frame_worldmap_functions.OnEnter(self,arg)
	if self.waypoint and self.waypoint.passive then return end
	if self.waypoint and (self.icon:IsVisible() or self.arrow:IsVisible()) then
		WorldMapPOIFrame.old_allowBlobTooltip = WorldMapPOIFrame.allowBlobTooltip
		WorldMapPOIFrame.allowBlobTooltip = false

		self.dist_tmp = self.waypoint.frame_minimap.dist
		Pointer.frame_minimap_functions.OnEnter(self,arg,WorldMapTooltip)
	end
end

function Pointer.frame_worldmap_functions.OnLeave(self)
	if self.waypoint and self.waypoint.passive then return end
	WorldMapTooltip:Hide()

	WorldMapPOIFrame.allowBlobTooltip = WorldMapPOIFrame.old_allowBlobTooltip
	WorldMapPOIFrame.old_allowBlobTooltip = nil
end

Pointer.frame_worldmap_functions.OnClick = Pointer.frame_minimap_functions.OnClick

function Pointer.frame_worldmap_functions.OnEvent(self,event,...)
	local way = self.waypoint

	--ZGV:Print("WORLDMAP ONEVENT "..event)
	if event == "PLAYER_ENTERING_WORLD" or event=="ZONE_CHANGED_NEW_AREA" then
		if way then way:UpdateMiniMapIcon() end
	end
end

function Pointer.frame_worldmap_functions.OnMouseWheel(self,delta,...)
	if ZGV.db.profile.debug_display and self.waypoint.truesize then
		self.waypoint.truesize = (self.waypoint.truesize or 50) * (delta>0 and 1.1 or 0.909090)
		--print("waypoint",self.waypoint.title,"truesize",self.waypoint.truesize)
		self.waypoint:SetIcon()
	end
end


function Pointer.frame_taximap_functions.OnEvent(self,event,...)
	local way = self.waypoint

	--ZGV:Print("WORLDMAP ONEVENT "..event)
	if event == "TAXIMAP_OPENED" then
		if TaxiFrame:IsShown() then
			local texture = TaxiFrame.InsetBg:GetTexture()   if type(texture)~="string" then error("Pointer doesn't recognize taxi texture at all.") end
			local taxinum = tonumber(texture:match("TAXIMAP(%d+)"))   if not taxinum then error("Pointer doesn't recognize taxi texture number in "..texture) end
			Pointer.taxitexture = taxinum+2000
		elseif FlightMapFrame:IsShown() then -- broken isles. Hardcode for Legion for now. Later maybe try something with /dump FlightMapFrame.ScrollContainer.Child.TiledBackground:GetTexture()
		-- try the new FlightMapFrame, too!
			Pointer.taxitexture = 3007
		end
		--if way then way:UpdateMiniMapIcon() end -- removed 2015-01-13 01:07:29
	end
end


function Pointer:IsCorpseArrowNeeded() -- small utility against bulky ifs, NB: waypointer-independent
	return ZGV.db.profile.corpsearrow and UnitIsDeadOrGhost("player") and select(2, IsInInstance()) ~= "pvp" and not IsActiveBattlefieldArena()
end

function Pointer.Overlay_OnEvent(self,event,...)
	if event == "WORLD_MAP_UPDATE" then
		if ZGV.db.profile.waypointaddon=="internal" then
			--[[
				-- VERY OBSOLETE. This was supposed to show plain "YOU ARE HERE" markers on artificial instance maps, for lack of coordinates.

				if not WorldMapFrame:IsVisible() then
					return

				elseif IsInInstance() and GetPlayerMapPosition("player")==0 then
					--magic!
					local inst = instancemaps[GetZoneText()]
					if inst then
						ZGV.Pointer.OverlayFrame.texture:SetTexture(ZGV.DIR .. "\\Maps\\" ..inst.map)
						ZGV.Pointer.OverlayFrame.texture:Show()
						ZGV.Pointer.OverlayFrame:EnableMouse(true)

						local room = inst.rooms and inst.rooms[GetMinimapZoneText()]
						if room then
							--ZGV:Print("room")
							self.youarehere:SetPoint("CENTER",self,"TOPLEFT",room.x*self:GetWidth(),-room.y*self:GetHeight())
							self.youarehere:Show()
						else
							self.youarehere:Hide()
						end

						WorldMapFrameTitle:SetText(GetZoneText())
						WorldMapFrameAreaLabel:SetAlpha(0)
					end

					for way,w in pairs(ZGV.Pointer.waypoints) do
						way:Hide()
					end

				else
					--magic!
					-- hide instance overlay
					ZGV.Pointer.OverlayFrame.texture:Hide()
					ZGV.Pointer.OverlayFrame:EnableMouse(false)
					WorldMapFrameAreaLabel:SetAlpha(1)

					--ZGV:Print("showing...")
				end
			 --]]

			local m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
			local count=0
			for w,way in ipairs(ZGV.Pointer.waypoints) do
				way:UpdateWorldMapIcon(m,f)
				if way.frame_worldmap:IsShown() and way.OnEvent then way:OnEvent(event,...) end
			end

			-- force ants update
			Pointer:AnimateAnts()
		end

	elseif (event=="PLAYER_ALIVE" or event=="PLAYER_ENTERING_WORLD" or event=="ZONE_CHANGED_NEW_AREA")
			and ZGV.db.profile.waypointaddon=="internal" then
		ZGV.Pointer:DoCorpseCheck(event)

		--[[
		for way,w in pairs(ZGV.Pointer.waypoints) do
			way:UpdateMiniMapIcon()
		end
		--]]

	elseif event=="PLAYER_UNGHOST" then
		Pointer:Debug("Player unghosted!")
		ZGV.Pointer:ClearWaypoints("corpse")
		ZGV.Pointer.corpsearrow = nil
		ZGV:ShowWaypoints()
	end
end
------------------------------------------- ARROW -----------------


--[[
function Pointer.ArrowFrame_OnEvent(self,event,...)
	if event=="WORLD_MAP_UPDATE" then
		ZGV.Pointer:UpdateWaypoints()
	end
end
--]]



local arrowctrl_elapsed=0
local arrowfps = 1/60
local forceupdate_elapsed = 0

function Pointer.ArrowFrameControl_OnUpdate(self,elapsed)
	arrowctrl_elapsed = arrowctrl_elapsed + elapsed
	if arrowctrl_elapsed >= arrowfps then   -- 20fps MAX
		-- update skin IF WE HAVE ONE ON only, dammit
		if Pointer.ArrowFrame then Pointer.ArrowFrame_OnUpdate_Common(Pointer.ArrowFrame,arrowctrl_elapsed) end
		arrowctrl_elapsed = 0
	end

	local icon=Pointer.ArrowFrame.ArrowIcon
	if icon and icon:IsVisible() and not ZGV.Pointer.ArrowFrame:IsVisible() then Pointer.ArrowFrame_HideSpellArrow(self) end

	-- update waypoints periodically, in case some get stuck on player-out-of-map,-go-away state
	forceupdate_elapsed = forceupdate_elapsed + elapsed
	if forceupdate_elapsed > 3 then
		Pointer:UpdateWaypoints()
		forceupdate_elapsed = 0
	end

	if Pointer.ArrowFrame.OnUpdate then Pointer.ArrowFrame:OnUpdate(elapsed) end
end

-- And we have an onupdating frame even if hidden. Yay!

-- map perc as: t1..t2 to 0.0..0.5  t3..t4 to 0.5..1.0
function Pointer.CalculateDirectionTiers(perc,t1,t2,t3,t4)
	if perc<t1 then return 0 , 1
	elseif perc<t2 then return (perc-t1)/(t2-t1)*0.5 , 2
	elseif perc<t3 then return 0.5 , 3
	elseif perc<t4 then return ((perc-t3)/(t4-t3)*0.5) + 0.5 , 4
	else return 1.0 , 5 end
end

local oldangle = 0

local title,disttxt,etatxt

local lastbeeptime=GetTime()
local lastturntime=lastbeeptime
local laststoptime=lastbeeptime
local lastmovetime=lastbeeptime

local msin,mcos,mabs=math.sin,math.cos,math.abs

function Pointer:GetDefaultStepDist()
	return IsFlying("player") and 15 or 5
end

local pathfindlockout = 0

local function TableFind(table,val)  -- unused, yeah
	for k,v in pairs(table) do if v==val then return k end end
end

--- Find 2 values in a table
-- @return key1,key2
local function TableFind2(table,val1,val2)
	local k1,k2
	for k,v in pairs(table) do  if v==val1 then k1=k end  if v==val2 then k2=k end  end
	return k1 or -1,k2 or -1
end

-- Floor orderings:
-- 1 = "floors" (higher number is above lower)
-- -1 = "dungeons" (higher number is below lower)
-- 0 = same floor always, no message, disable upstairs/downstairs messages
-- table - order your floors from TOP to BOTTOM.
-- function(map,f1,f2) - return a custom value
-- upstairs, downstairs
local FloorUpDowns = {
	[721] = 1, --Blackrock Spire
	[753] = -1, --Blackrock Spire
	[321] = -1, --Orgrimmar
	[504] = -1, --Dalaran
	[691] = -1, --Gnomeregan
	[688] = {2,1,3},
	[679] = 1, -- Gileas
	[903] = 1,
	[922] = -1,
	[941] = 0,
	[30] = function (map,f1,f2)  if f1==21 or f2==21 then return 0 else return -1 end  end
}
-- For very specific crossing descriptions, see Localization/Core_enUS.lua, entries "pointer_floors_29_14_16" etc.

-- return: >0=upstairs  <0=downstairs  0=same
local function FloorOrder(map,a,b)
	local order = FloorUpDowns[map]
	if type(order)=="function" then order=order(map,a,b) end
	order = order or -1
	if type(order)=="number" then return order*(b-a) end
	if type(order)=="table" then
		if order[1] then
			-- plain ordering
			a,b=TableFind2(order,a,b)
			return a-b
		end
		-- "2_3" ordering
		return order[a.."_"..b] or -1
	end
	return order
end
Pointer.FloorOrder=FloorOrder

local function L_or_nil(id)
	local l = L[id]
	if l==id then return nil else return l end
end

local function GetPreciseFloorCrossingText(map,f_from,f_to)
	-- try explicit first
	local explicit_text = L_or_nil('pointer_floors_'..map..'_'..f_from..'_'..f_to)
					or L_or_nil('pointer_floors_'..map..'_'..f_from..'_*')
					or L_or_nil('pointer_floors_'..map..'_*_'..f_to)
					or L_or_nil('pointer_floors_'..map)
	if explicit_text and explicit_text:sub(1,1)=="*" then -- *something - look up in pointer_floors_something
		explicit_text = L_or_nil('pointer_floors_'..explicit_text:sub(2))
	end
	if explicit_text then return explicit_text end

	-- assume outdoors are caves (for now)
	-- NOT ANYMORE. We have cave entrances; use those.
	--[[
	if ZoneIsOutdoor(map) then -- overworld, assuming we're in/out of a cave or mine.
		if f_from==0 then return L['pointer_floors_downstairs'] end
		if f_to==0 then return L['pointer_floors_upstairs'] end
	end
	--]]

	-- use floor ordering, perhaps?
	local floororder=FloorOrder(map,f_from,f_to)
	if floororder then return (floororder>0 and L['pointer_floors_up']) or (floororder<0 and L['pointer_floors_down']) or nil end
end


local cache_throttle=0
local were_in_unknown_location

function Pointer.ArrowFrame_HideSpellArrow(self)
	local icon = Pointer.ArrowFrame.ArrowIcon

	if icon.item then
		local name,link,_,_,_,_,_,_,equipslot,texture = ZGV:GetItemInfo(icon.item or 0)

		if equipslot and equipslot:find("^INV") then
			local slot = GetInventorySlotInfo(ZGV.ItemScore:GetItemSlot(equipslot))
			local curItemlinkInSlot = ZGV.ItemScore:GetItemInSlot(equipslot) or 0
			local oldCurItem = icon.curItemInSlot -- 0 means the slot was empty

			if curItemlinkInSlot:find(":"..icon.item..":") then -- They have the item to teleport equipped.
				if oldCurItem == 0 then --They had no item equipped before the tp. So take off their item.

					local RemoveItem = function(slot) --functioned so that we can just return once a open slot is found instead of break break breaking
						local bag,bagslot
						for bag=0, NUM_BAG_SLOTS do
							for bagslot=1, GetContainerNumSlots(bag) do
								local itemid=GetContainerItemID(bag,bagslot)
								if not itemid then
									PickupInventoryItem(slot) --Pickup the quest item
									PickupContainerItem(bag,bagslot) --put it in an empty slot
									return
								end
							end
						end
					end

					RemoveItem(slot)

				elseif oldCurItem ~= curItemlinkInSlot then -- They had a different item equipped. Equip that one.
					ZGV:Print(L['pointer_reequip_item']:format(link))
					EquipItemByName(oldCurItem)
				end --else they had the tp item equipped. So leave it.
			end
		end
	end

	icon.item = nil
	icon.curItemInSlot = nil

	icon:Hide()
end

function Pointer.ArrowFrame_ShowSpellArrow(self,waypoint)
	local icon = Pointer.ArrowFrame.ArrowIcon
	local safe =  not InCombatLockdown() and not UnitIsDeadOrGhost("player")
	local found,name,_,texture,equipslot

	local node = waypoint.pathnode
	local link = node and node.parentlink
	local mode = link and link.mode
	-- now mode contains mode of transport!

	local spell = node.spell or (node.link and node.link.spell)
	local item = node.item or (node.link and node.link.item)
	local cdFunc = spell and GetSpellCooldown or GetItemCooldown
	local cooltime,cooldur,coolcharges = cdFunc(item or spell or 0)

	if not mode then return end

	if safe then
		if mode=="hearth" then
				name,_,_,_,_,_,_,_,_,texture = ZGV:GetItemInfo(6948) --Yes, get local name for hearthstone then cast it by item name. Casting by spell doesn't work
				icon:SetAttribute("type","item")
				icon:SetAttribute("item",name)
		elseif spell then
				name,_,texture = GetSpellInfo(spell)
				icon:SetAttribute("type","spell")
				icon:SetAttribute("spell",name)
		elseif item and GetItemCount(item or 0)>0 then
				name,_,_,_,_,_,_,_,equipslot,texture = ZGV:GetItemInfo(item)
				icon:SetAttribute("type","item")
				icon:SetAttribute("item",name)
		end
		if cooltime then icon.cooldown:SetCooldown(cooltime,cooldur,coolcharges)  end
	end
	if texture then
		icon:Show()
		icon.item = node.item or nil

		if equipslot then -- We need to equip this item to use it
			local curItemlink = ZGV.ItemScore:GetItemInSlot(equipslot) or 0

			if not icon.curItemInSlot or --nothing set.
			 (icon.curItemInSlot ~= curItemlink and curItemlink ~= icon.item)
			 then
				icon.curItemInSlot = curItemlink
			end

		end
		icon.texture:SetAllPoints(true)
		icon.texture:SetTexture(texture)

		self:ShowNothing()
		local pretext

		if cooltime>0 then
			local time = Pointer.FormatTime(cooltime+cooldur-GetTime())
			pretext = L['pointer_arrow_itemcooldown']:format(time,item and ZGV:GetItemInfo(item) or GetSpellInfo(spell)) .. "\n"
			--else
			--	pretext = L['pointer_arrow_itemuse']:format(ZGV:GetItemInfo(item)) .. "\n"
		end

		self:ShowText(pretext or waypoint:GetArrowTitle() or waypoint:GetTitle())
		return true
	end
end

local noskip_time=0

local idle_dots = {".","..","...","....","....."}

local ptn_elapsed=0
function Pointer:PointToNextTimer(elapsed)
	ptn_elapsed = ptn_elapsed + elapsed  -- upval
	if ptn_elapsed < 0.2 then  return  end  ---- OUT

	local waypoint = self.ArrowFrame.waypoint

	local pathfollow = waypoint.in_set and self.pointsets[waypoint.in_set].follow

	-- Periodic "next in path" updates. Not all follow systems need those - namely, "strict" never does that. Find #00pathfollowing for details.
	if (pathfollow=="smart" or pathfollow=="loose" or pathfollow=="smart2" or pathfollow=="smart3")
	and waypoint.m==ZGV.CurrentMapID  -- Try to point-to-next only on current map..? desperate. ~sinus 2015-03-06 19:55 
	then
		ZGV:Debug("Pointing to next from PointToNextTimer")
		local newway = self:PointToNextInPath(waypoint.in_set)
		if newway~=waypoint and self.pointsets['route'] then LibRover:Abort("nextinpath") self:ClearSet("route") end
	end

	ptn_elapsed=0
end

local speedtable_limit,speedtable_minlimit=30,5
function Pointer:CalculateSpeed(elapsed,dist)
	local speed = (last_distance-dist) / elapsed
	if last_distance == 0 then speed = 0 end
	if last_distance==dist then stoptime=stoptime+elapsed else stoptime=0 end

	--speed=tonumber(("%.2f"):format(speed))
	--ZGV:Print(("dist %.2f  chg %.2f  speed %.2f  thr %.2f"):format(dist,last_distance-dist,speed,eta_elapsed))
	--ZGV:Debug(stoptime)

	if speed>=0 and stoptime<2 then
		table.insert(speeds,1,speed)
		if #speeds>speedtable_limit then table.remove(speeds) end
	else
		speed=0
		wipe(speeds)
	end

	-- Speed meter. Perhaps one day.
	--[[
		ZGV.db.profile.arrowshowspeed = true
		if ZGV.db.profile.arrowshowspeed then
			local spd
			if ZGV.db.profile.arrowmeters then
				spd=("%.02f km/h"):format(speed) --*3.6
			else
				spd=("%.02f mph"):format(speed) --*2.0454
			end
			print(spd)
			self.eta:SetText(spd)
		end
	--]]
	--ZGV:Print(eta_elapsed)

	last_speed = speed

	return speed
end

local lastplayerangle
function Pointer:DoAudioCues(targetangle,playerangle,dist)
	local t=GetTime()
	if lastplayerangle~=playerangle then lastturntime=t end
	if GetUnitSpeed("player")==0 then laststoptime=t else lastmovetime=t end
	if t-lastmovetime<=1 and t-laststoptime>3 and t-lastturntime>5 then
		-- if flying, basically.
		-- and beelining for the last 3 seconds.

		-- ZGV:Debug(("will cue; dist=%d initial=%d lastbeep=%d"):format(dist,initialdist,GetTime()-lastbeeptime))
		if dist<=100 and not cuedinged then
			PlaySoundFile("Sound\\Doodad\\BoatDockedWarning.wav")
			-- lastwayding=waypoint  -- DO NOT COMPARE WAYPOINTS. They come from a POOL and are REUSED!
			cuedinged=true
			--ZGV:Debug("dinging")
		else
			--ZGV:Debug("not dinging, dist="..dist..", lastway="..(lastwayding and lastwayding.t or "nil"))
		end
		--ZGV:Debug("cuedinged "..tostring(cuedinged))

		-- warning beeps
		if self.ArrowFrame.arrow:IsVisible()  then
			local perc = mabs(1-angle*0.3183)  -- 1/pi
			if perc<=0.9 then
				if t-lastbeeptime>2 then
					--PlaySoundFile( [[Sound\Item\Weapons\Ethereal\Ethereal2H3.wav]] )
					PlaySoundFile("Sound\\Interface\\RaidWarning.ogg")

					if self.ArrowFrame.ShowWarning then self.ArrowFrame:ShowWarning() end

					lastbeeptime=t
				end
			end
		end
	end
	lastplayerangle=playerangle
end

local etacalc_elapsed=0
local last_eta=0
function Pointer:CalculateETA(speed,dist,elapsed)
	etacalc_elapsed = etacalc_elapsed + elapsed
	if etacalc_elapsed < 0.9 then  return last_eta end

	local eta

	local avg=speed or 0
	for i=2,#speeds do avg=avg+speeds[i] end
	avg=avg/max(#speeds,1)

	--ZGV:Debug("eta: #speeds="..#speeds)
	if #speeds>=speedtable_minlimit and avg>0 then
		eta = math.abs(dist / avg)
	else
		local spd,mntspd,flyspd,swimspd = GetUnitSpeed("player")
		spd = IsSwimming() and swimspd or (LibRover.maxspeedinzone[ZGV.CurrentMapID][1]*7) -- *7 is for recalc from multiplier to yds/s  -- or max(mntspd,flyspd)
		eta = math.abs(dist / spd)
	end
	etacalc_elapsed = 0

	last_eta = eta

	return eta

end


local ARROW_FPS=1/30
local arrow_elapse_sum=0

local throttle=0
local throttle_freq = 1/5--sec

function Pointer.ArrowFrame_OnUpdate_Common(self,elapsed)
	-- player in dungeon, but we are on combat lockdown
	--if not GetPlayerFacing() then self:Hide() return end

	-- our preview got closed by something unexpected, and we did not clean up.
	if ZGV.PointerMap.PreviewVisible and not WorldMapFrame:IsVisible() then
		ZGV.PointerMap:RestoreMapSettings()
	end
	
	arrow_elapse_sum=arrow_elapse_sum+elapsed
	if arrow_elapse_sum<ARROW_FPS then return end
	elapsed=arrow_elapse_sum
	arrow_elapse_sum=0

	-- NASTY. Replace master object, Indy Jones-style.
	local ArrowFrame = self
	self=Pointer


	if LibRover.initializing and not LibRover.ready then
		ArrowFrame:ShowText("Travel System is initializing...",nil,nil,("%d%%"):format((LibRover.init_progress or 0)*100))  -- idle_dots[LibRover.initframes%5+1]
		Pointer:ShowWaiting(0)
		return
	end


	--[[ blue "taxis assumed" notice removed per request.
		if Pointer.tmp_taxis_assumed then  ArrowFrame:SetNotice(L['pointer_arrow_noflightdata'])
		else  ArrowFrame:SetNotice()
		end
	--]]


	local waypoint = ArrowFrame.waypoint
	
	if not waypoint
	or not ZGV.db.profile.arrowshow
	or not UIParent:IsVisible()
	or PetBattleFrame:IsVisible()
	or (not ZGV.Frame:IsVisible() and ZGV.db.profile.hidearrowwithguide and waypoint.type~="manual")
	then
		if not InCombatLockdown() then
			ArrowFrame:Hide()
		end
		if not WorldMapFrame:IsVisible() and self.waypoints and #self.waypoints > 0 and not ZGV.Frame:IsVisible() then self:ClearSets() end -- Hide waypoints and ants if we are not looking at the world map.
		return
	end
	if not InCombatLockdown() then ArrowFrame:Show() end
	--if GetCurrentMapContinentAndZone()~=waypoint.c then end

	cache_throttle = cache_throttle + elapsed
	if cache_throttle > 1.0 then
		cache_throttle = 0
		ZGV:CacheCurrentMapID()
	end


	local safe =  not InCombatLockdown()


	local icon = ArrowFrame.ArrowIcon

	-- adding icons over arrow for different types of teleports
	-- sequential digging in, safe and pretty fast
	--local node = (Pointer.TempWaypath and Pointer.TempWaypath.coords[2]) or (Pointer.pointsets.route and Pointer.pointsets.route.points[2])

	-- Handle spell icons
	if waypoint.pathnode and Pointer.ArrowFrame_ShowSpellArrow(ArrowFrame,waypoint) then
		if MouseIsOver(icon) and IsMouseButtonDown("RightButton") then
			Pointer.ArrowFrame_OnClick(nil,"RightButton") --***Is possible for it to not work if click goes up and down without OnUpdate running***
		end
		return
	else
		if safe then Pointer.ArrowFrame_HideSpellArrow(ArrowFrame) end
	end

	-- normal operation...


	local dist,x,y
	local errortxt
	local cm,cf,cc = ZGV.CurrentMapID,ZGV.CurrentMapFloor,HBD:GetMapContinent(ZGV.CurrentMapID or 0) --,LibRover.ContinentsByID[ZGV.CurrentMapID]

	--if IsInInstance() and cm~=waypoint.m then ArrowFrame:Hide() return end

	if not HBD:GetPlayerZonePosition(true) then
		if GetUnitSpeed("player")>0 then
		-- we're in an unknown location, and moving - our location is totally unknown now. DON'T display distances.
			were_in_unknown_location = true
		end
	else
		were_in_unknown_location = false
	end


	-- Calculate distance, or at least get a fake one

	dist,x,y = HBDPins:GetDistanceToIcon(waypoint.frame_minimap)

	local transcontinental
	if waypoint.c~=cc then
		dist=nil
		transcontinental = true
	end


	if were_in_unknown_location and GetPlayerFacing() then
		dist=nil
		if WorldMapFrame:IsVisible() then
			errortxt = L['pointer_close_map']
		else
			errortxt = "(current position unknown)"
		end
	end


	dist=dist or 99999999  -- this means FAR or UNKNOWN or whatever. Causes "zone, continent" display.

	-- trigger rover update if we got 100yd away from current target (are we lost?)
	if self.initialdist and ZGV.db.profile.pathfinding then
		self.closingdist = min(self.initialdist,self.closingdist or 9999)
		lastforcedupdate=lastforcedupdate or 0
		if dist-self.closingdist>100 and GetTime()-lastforcedupdate>120 then
			LibRover:UpdateNow(true)
			lastforcedupdate = GetTime()
		end
	end


	
	local show_stairs

	local samemap = (waypoint.m==cm or phasedMaps[waypoint.m]==phasedMaps[cm])   -- same map, just maybe different phase

	-- TODO: clean this shit up properly. Decide actions first, then strings to display, etc., not randomly like this. ~sinus

	--if samemap or waypoint.c==cc then   -- why check dist here..?
		-- same map, or at least same (sane) continent.
		-- can point, but might be wrong map or floor.
		if samemap and waypoint.f~=cf
		and not (waypoint.pathnode and waypoint.pathnode.flooring)  -- don't show "upstairs" lines for hardwired cave entries.
		then
			errortxt = GetPreciseFloorCrossingText(cm,cf,waypoint.f)
			show_stairs = nil --We are trying to enter a cave, point to the location inside the cave

			--TODO show_stairs should show the special arrow for going up and down between floors,
			--as of 12/5/12 it was not working properly for me(Erich) because it was not appearing at all.
			--Instead of showing no arrow, pointing straight toward the location is better.

			--if ZoneIsOutdoor(waypoint.m) then errortxt,show_stairs=nil end  -- Don't warn about floors on outdoor maps. TODO: remove later.
				-- diff floor? prepare to do floor warnings.
		end
		-- Otherwise just point. No funny stuff here.
	--else
	--	errortxt = "far"
	--end

	-- Safety measure, make sure self.badfloortxt is updated to reflect current surroundings
	ArrowFrame.errortxt = errortxt


	local override_dist,override_eta,override_text


	-- okay, we're live. 3, 2, 1, action!

	if safe then ArrowFrame:Show() end

	local playerangle = GetPlayerFacing() or 0
	local angle=0

	local going_up
	if errortxt then
		local plusminus,err2=errortxt:match("([+-])(.*)")
		if plusminus then  going_up=(plusminus=="+") and 1 or -1  errortxt=err2  end
	end

	if show_stairs
	then
		-- wrong floor, omg
		if ArrowFrame.ShowStairs then ArrowFrame:ShowStairs(going_up) end

	elseif dist <= (waypoint.radius or self:GetDefaultStepDist()) and waypoint.f==cf  -- close, and same floor
	and not waypoint.player  -- don't ever "arrive" on player waypoint
	and not (waypoint.pathnode and	(
			(waypoint.pathnode.zone and waypoint.pathnode.zone~=BZR[GetZoneText()])
		or	(waypoint.pathnode.realzone and waypoint.pathnode.realzone~=BZR[GetRealZoneText()])
		or	(waypoint.pathnode.subzone and waypoint.pathnode.subzone~=BZR[GetSubZoneText()])
		or	(waypoint.pathnode.minizone and waypoint.pathnode.minizone~=BZR[GetMinimapZoneText()])
		or	(waypoint.pathnode.indoors and IsOutdoors())
		-- don't arrive on wrong map zone
							)
		)
	and not UnitOnTaxi("player") 

	then

		-- ARRIVED! -----------

		if not waypoint.arrived then  waypoint.arrived = true  end

		-- remove waypoint when standing on the destination for a bit
		if waypoint.clearonarrival then
			-- clear-on-arrival waypoints? who uses these?
			self.heretime = (self.heretime or 0) + elapsed
			if self.heretime>1 then
				self:RemoveWaypoint(waypoint)
				return
			end
		end
		---------------------------------------------------

		if waypoint.arrived then  -- last sanity check! avoid single-frame "arrived" blinks, when arriving and skipping to next.
			ArrowFrame:ShowArrived()
		end

		-- pick next in path
		if waypoint.type=="path"
		or (waypoint.pathnode and waypoint.pathnode.waypoint and waypoint.pathnode.waypoint.type=="path")
		--or (waypoint.in_set and self.pointsets[waypoint.in_set].follow=="strict")))
		then
			if GetTime()<pathfindlockout then
				ZGV:Debug("Would skip to next point - but timeout...",pathfindlockout-GetTime())
			else
				ZGV:Debug("Pointing to next from OnUpdate_Common arrival")
				local nextway = self:PointToNextInPath(waypoint.in_set or (waypoint.pathnode and waypoint.pathnode.waypoint and waypoint.pathnode.waypoint.in_set))
				if nextway~=waypoint then
					if self.pointsets['route'] then LibRover:Abort("arrival") self:ClearSet("route") end  -- UGLY to call it here, but Travel needs to GTFO when next-in-path waypoints reign.
				end  -- don't try to pathfind sooner than in 0.5 secs
				pathfindlockout = GetTime()+0.5
			end
			--return
			-----------------------------------------------

		elseif waypoint.type=="route" then
			if waypoint.noskip
			and not (waypoint.pathnode and waypoint.pathnode.waypoint and (waypoint.pathnode.waypoint.in_set=="path" or waypoint.pathnode.waypoint.in_set=="farm"))  -- NOT unless it's a pathpoint!! Arrive on those!
			then
				if GetTime()-noskip_time>3 then
					ZGV:Debug("Arrived, but point is route noskip.")
					noskip_time = GetTime()
				end
			else
				-- arrived on a route midpoint - recalculate path immediately. This might take time, so just drop the initial point first.
				local nextway = self:GetNextInPath("route")
				if type(nextway)=="table" and nextway~=waypoint then
					self:RemoveWaypoint(waypoint)
					self:ShowArrow(nextway)
					if nextway.pathnode and not nextway.pathnode.dark then
						-- If the next node is dark then updating will cause this node to be lost. Just continue using old path until a non-dark node is encountered.
						ZGV:Debug("Forcing LibRover to update quietly")
						if not LibRover.UnitOnTaxiRecalced then
							ZGV.LibRover:UpdateNow("quiet")
						end
					end
					--return
				end
			end
			-------------------------------------------------
		end

		-- removing returns; we DO still need to update the text, after all this just handles the icon. ~sinus 2013-02-27

	elseif ArrowFrame.WaitingPhase then

		if ArrowFrame.ShowWaiting then
			ArrowFrame:ShowWaiting(ArrowFrame.WaitingPhase)
		end

	else

		waypoint.arrived = false

		self.heretime=0

		--self.eta:Show()
		--self.dist:Show()


		--[[ angle ]]--

		if waypoint.arrowicon=="error" then

			ArrowFrame:ShowError()
			override_dist=""
			override_eta=""

		elseif waypoint.arrowicon=="blank" then

			ArrowFrame:ShowNothing()
			override_dist=""
			override_eta=""

		elseif waypoint.arrowicon=="hide" then

			ArrowFrame:Hide()

		elseif ZGV.db.char.fakeinstance or not GetPlayerFacing() then
			if not ZGV.PointerMap.PreviewVisible then
				ArrowFrame:ShowInstance()
				if ZGV.db.profile.preview_control=="manual" and not ZGV.db.char.previewhidden then
					ZGV.PointerMap:ShowPreview()
				end
			else
				ArrowFrame:HideInstance()
				local _,_,m,f = ZGV.HBD:GetPlayerZonePosition()
				local cm = GetCurrentMapAreaID()
				local cf = GetCurrentMapDungeonLevel()
				if m~=cm then SetMapByID(m) end
				if f~=cf then SetDungeonMapLevel(f) end
			end
		elseif waypoint.actionicon then

			if waypoint.actionicon=="upstairs" then ArrowFrame:ShowStairs(true)
			elseif waypoint.actionicon=="downstairs" then ArrowFrame:ShowStairs(false)
			end
			showstairs=true  -- after all!

		else
			-- show direction arrow

			angle = HBDPins:GetDirectionToIcon(waypoint.frame_minimap)
			local angle_error
			if not angle or errortxt=="far" then
				angle=3.1415
				angle_error=true
			else
				--local player = ZGV.db.profile.arrowcam and cam_yaw - (is_moving and GetPlayerFacing() or 0) or GetPlayerFacing()
				angle = angle - playerangle
			end
			while angle<0 do angle=angle+6.28319 end

			--angle = angle + 2.356194  -- rad(135)

			if ZGV.db.profile.arrowsmooth and not angle_error and self.CurrentArrowSkin and self.CurrentArrowSkin.features.smooth then
				local dif = angle-oldangle
				if dif>0.001 or dif<0.001 then
					while dif>3.14159 do dif=dif-6.28319 end
					while dif<-3.14159 do dif=dif+6.28319 end

					angle = angle-dif/(1+elapsed*20) --speed!

					--local newdif = newangle-oldangle
					--while newdif>3.14159 do newdif=newdif-6.28319 end
					--while newdif<-3.14159 do newdif=newdif+6.28319 end

					--if newdif*dif>0 then  -- no jittering
					--	angle=newangle
					while angle>6.28319 do angle=angle-6.28319 end
					while angle<0 do angle=angle+6.28319 end
					--end
				end
				oldangle=angle
			end

			if not angle_error then
				ArrowFrame:ShowTraveling(elapsed,angle,dist)
			else
				ArrowFrame:ShowError()
			end

		end

		--


		-------------

		--[[ -- direction coloring
			local perc = mabs(1-angle*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
			local t1,t2,t3,t4,t5 = 0.7,0.75,0.95,1.0
			if perc<t1 then perc=0
			elseif perc<t2 then perc=(t2-perc)/(t2-t1)*0.5
			elseif perc<t3 then perc=0.5
			elseif perc<t4 then perc=(t4-perc)/(t4-t3)*0.5 + 0.5
			else perc=1.0 end

			ArrowFrame:ShowTraveling(elapsed,angle,dist)

			local cell

			local perc = math.abs((math.pi - math.abs(angle)) / math.pi)

			local gr,gg,gb = unpack(TomTom.db.ZGV.db.profile.arrow.goodcolor)
			local mr,mg,mb = unpack(TomTom.db.ZGV.db.profile.arrow.middlecolor)
			local br,bg,bb = unpack(TomTom.db.ZGV.db.profile.arrow.badcolor)
			local r,g,b = ColorGradient(perc, br, bg, bb, mr, mg, mb, gr, gg, gb)
			arrow:SetVertexColor(r,g,b)

			cell = floor(angle / twopi * 108 + 0.5) % 108
			local column = cell % 9
			local row = floor(cell / 9)

			local xstart = (column * 56) / 512
			local ystart = (row * 42) / 512
			local xend = ((column + 1) * 56) / 512
			local yend = ((row + 1) * 42) / 512
			arrow:SetTexCoord(xstart,xend,ystart,yend)
		--]]
	end

	local speed

	throttle = throttle+elapsed
	if throttle>=throttle_freq then

		Pointer:PointToNextTimer(throttle)  -- what is this doing in an arrow display update!?

		--Pointer:Debug(("dist %.2f  chg %.2f  speed %.2f  ela %.2f"):format(dist,last_distance-dist,speed,eta_elapsed))

		speed = Pointer:CalculateSpeed(throttle,dist)

		if ZGV.db.profile.audiocues and IsFlying() then
			Pointer:DoAudioCues(angle,playerangle,dist)
		end
	
		last_distance = dist
		throttle = 0
	end

	--ZGV:Print(table.concat(speeds,"  "))

	local eta = Pointer:CalculateETA(speed,dist,elapsed)

	-- Grab current goal text, if it exists
	local step = ZGV.CurrentGuide and ZGV.CurrentGuide:GetCurStep()
	local goaltext = nil

	--[[
		local goaltext
		if step and waypoint then
			if waypoint.in_set and not waypoint.surrogate_for then
				goaltext = waypoint.title
			elseif waypoint.surrogate_for then
				if waypoint.surrogate_for.num then
					goaltext = step.goals[waypoint.surrogate_for.num]:GetText()
				else
					goaltext = waypoint.surrogate_for.text
				end
			elseif waypoint.num and step.goals[waypoint.num] then -- not in set, not surrogate
				goaltext = step.goals[waypoint.num]:GetText()
			end
		end
	--]]

	local text = override_text or waypoint:GetArrowTitle() or waypoint:GetTitle() or waypoint.arrowtitle or waypoint.title

	if ZGV.db.profile.debug_display then
		text = (text or "")..("\n|cffff55dd[rad: %s%s%s%s%s%s]"):format(
			waypoint.radius or "",
			waypoint.radius and "" or ("%d (def)"):format(self:GetDefaultStepDist()),
			waypoint.noskip and ", noskip" or "",
			waypoint.pathnode and ", node#"..waypoint.pathnode.num or "",
			waypoint.goal and ", goal#"..waypoint.goal.num or "",
			(self.DestinationWaypoint and self.DestinationWaypoint~=waypoint and ("\nTo: ".. (self.DestinationWaypoint.title or "(untitled)")
				.. (self.DestinationWaypoint.goal and self.DestinationWaypoint.goal.num and " (goal#".. self.DestinationWaypoint.goal.num..")" or "")) or "")
			)
	end

	if waypoint.errortext then
		errortxt = (errortxt and errortxt.."\n" or "").."|cffff4400"..waypoint.errortext.."|r"
	end

	if ZGV.db.char.fakeinstance or not GetPlayerFacing() then
		if ZGV.PointerMap.PreviewVisible then
			errortxt=(errortxt and errortxt.."\n" or "").."Click to hide Map Preview"
		else
			errortxt=(errortxt and errortxt.."\n" or "").."Click to show Map Preview"
		end
	end

	-- spew it out.
	ArrowFrame:ShowText(
		text,
		override_dist or dist,
		override_eta or eta,
		errortxt)

end

-- The function! It does nothing!
function Pointer.ArrowFrame_Proto_ShowText(frame)
end

function Pointer.ArrowFrame_Proto_GetFarText(self)
	local way = self.waypoint
	if not way then return end
	local m = way.m or 0

	local lastm = HBD:GetPlayerZone()
	local lastc = HBD:GetMapContinent(lastm)
	return (Pointer.GetMapNameByID2(way.m,way.f) or ("(bad map #%d)"):format(way.m))
		  .. (way.c and way.c~=lastc and way.c>0 and way.c~=way.m and (", " .. (Pointer.GetMapNameByID2(way.c) or "?")) or "")  -- continent, if applicable
end

function Pointer.ArrowFrame_Proto_GetDistTxt(self,dist)
	if not dist or dist=="far" or ((tonumber(dist or 0) or 0)>9999998) then return Pointer.ArrowFrame_Proto_GetFarText(self)
	elseif type(dist)=="string" then return dist
	else  return ZGV.FormatDistance(dist)
	end
end

local mfloor=math.floor
function Pointer.FormatTime(eta)
	return ("%01d:%02d|r"):format(eta / 60, eta % 60)
end

function Pointer.ArrowFrame_Proto_GetETATxt(self,eta)
	if eta and tonumber(eta) and eta<7200 and eta>0 then
		local subsec=GetTime()%1
		local etacolor = (eta<10 and GetUnitSpeed("player")>0 and subsec>0.7) and "ffff7700" or "ffffbb00"
		return ("  |c".. etacolor .. Pointer.FormatTime(eta) .. "|r")
	elseif type(eta)=="string" then
		return eta
	end
end

function Pointer.ArrowFrame_OnShow(frame)
	lastturntime=GetTime()
end

--[[
function Pointer.ArrowFrame_OnMouseDown(frame,button)
	--if button=="RightButton" then
	--	ZGV.Pointer.prev_cameraYawMoveSpeed = GetCVar("cameraYawMoveSpeed")
	--end
end
--]]

function Pointer.ArrowFrame_OnClick(frame,button)
	if ZGV.db.profile.arrowfreeze then return end  -- how did we get the OnClick event, anyway?
	if UnitOnTaxi("player") then return end -- no recalcs while we are flying

	if button=="LeftButton" then
		if not frame.dragging then -- and ZGV.db.profile.pathfinding and self.waypoint.pathfollow=="pathfind" then
			if ZGV.db.char.fakeinstance or not GetPlayerFacing() then
				if not ZGV.PointerMap.PreviewVisible then
					ZGV.PointerMap:ShowPreview()
				else
					ZGV.PointerMap:HidePreview("manual")
				end
			else
				--LibRover:UpdateNow()
				ZGV:ShowWaypoints()
			end
		end
	elseif button=="RightButton" then
		Pointer.ArrowFrame_ShowMenu()
	end
end

function Pointer.ArrowFrame_ShowMenu()
	local self=ZGV.Pointer.ArrowFrame
	if not self.menuframe then self.menuframe = CreateFrame("FRAME",self:GetName().."Menu",self,"UIDropDownForkTemplate") end

	UIDropDownFork_SetAnchor(self.menuframe, 0, 0, "TOP", self, "BOTTOM")

	--local backdrop = DropDownList1:GetBackdrop()
	--backdrop.edgeSize=16
	--DropDownList1:SetBackdrop(backdrop)
	local menu = {}

	local simpleway = not ZGV.db.profile.pathfinding
	if simpleway then

		tinsert(menu,{
				text = self.waypoint:GetArrowTitle(),  isTitle = true,notCheckable=true,
			})

		local cont = self.waypoint.c>0 and select(self.waypoint.c,GetMapContinents())
		if cont then tinsert(menu,{
				text = ("%s, %s/%d %.1f;%.1f"):format(cont,Pointer.GetMapNameByID2(self.waypoint.m,self.waypoint.f),self.waypoint.f,self.waypoint.x*100,self.waypoint.y*100),
				isTitle = true, notCheckable=true,
		}) else tinsert(menu,{
				text = ("%.1f;%.1f"):format(self.waypoint.x*100,self.waypoint.y*100),
				isTitle = true, notCheckable=true,
		}) end

		if self.waypoint.type=="manual" then
			tinsert(menu,{
					text = L['pointer_arrowmenu_removeway'],
					func = function() ZGV.Pointer:RemoveWaypoint(self.waypoint) ZGV:ShowWaypoints() end,
					notCheckable=true,
				})
		end

		tinsert(menu,{
				text = L['pointer_arrowmenu_route_enable'],
				tooltipTitle = L['pointer_arrowmenu_route_enable'],
				tooltipText = L['pointer_arrowmenu_route_enable_desc'],
				tooltipOnButton=1,
				--checked = function() return ZGV.db.profile.pathfinding end,
				func = function() ZGV:SetOption("Navi","pathfinding on") end,
				notCheckable=1,
				isNotRadio=1,
			})

	else  -- pathfinding

		local list=menu
		--[[
		local list = {}
		tinsert(menu,{
				text = L['pointer_arrowmenu_route'],
				hasArrow=true,
				menuList = list
		})
		--]]
		local route = Pointer.pointsets.route
		if route then  -- no path plotted, but might have been attempted.
			local CPT = ZGV.Pointer.DestinationWaypoint or (route.coords and route.coords[1]) or (route.points and route.points[1])
			tinsert(list,{
				text = L['pointer_arrowmenu_route_destination']:format(CPT and CPT:GetArrowTitle() or "waypoint",Pointer.GetMapNameByID2(CPT.m or CPT.map,CPT.f),CPT.x*100,CPT.y*100),
				isTitle=true, notCheckable=true,
			})
			local points = route.coords or route.points
			local n=1 --ugly second counter >_<
			local start=2
			if ZGV.DEV then n=0 start=1 end
			for i=start,#points do
				local node=points[i].pathnode
				if node and not (node.is_arrival and LibRover.cfg.strip_arrivals and not ZGV.DEV) then
					local text = (node.text or "?"):gsub("\n","; ")
					tinsert(list,{
						text = L['pointer_arrowmenu_route_node'..(n==1 and '1' or '')]:format(n,text),
						isTitle=true, notCheckable=true,
					})
					if ZGV.db.profile.debug_display then
						tinsert(list,{
							text = "|cffff8800 = " .. node:tostring(),
							isTitle=true, notCheckable=true,
						})
					end
					n=n+1
				end
			end
			local last=points[#points].pathnode
			tinsert(list,{
				text = L['pointer_arrowmenu_route_est']:format(floor(last.time/60),last.time%60),
				isTitle=true, notCheckable=true,
			})
			if ZGV.db.profile.debug_display then
				if next(LibRover.RESULTS_SKIPPED_START or {}) then
					tinsert(list,{ text = "|cffff8800 Removed at start:", isTitle=true, notCheckable=true })
					for ni,nn in ipairs(LibRover.RESULTS_SKIPPED_START) do
						tinsert(list,{ text = "|cffff8800 " .. nn[2] .. " : " .. nn[1]:tostring(), isTitle=true, notCheckable=true })
					end
				end
				if next(LibRover.RESULTS_SKIPPED_END or {}) then
					tinsert(list,{ text = "|cffff8800 Removed at end:", isTitle=true, notCheckable=true })
					for ni,nn in ipairs(LibRover.RESULTS_SKIPPED_END) do
						tinsert(list,{ text = "|cffff8800 " .. nn[2] .. " : " .. nn[1]:tostring(), isTitle=true, notCheckable=true })
					end
				end
			end
		end

		if Pointer.DestinationWaypoint then
			if Pointer.DestinationWaypoint.type=="manual" then
				tinsert(menu,{
						text = L['pointer_arrowmenu_removeway'],
						func = function() Pointer:ClearWaypoints("manual")  ZGV:ShowWaypoints()  end,
						notCheckable=true,
						isNotRadio=1,
					})
			end
			if self.waypoint.type=="route" and self.waypoint.pathnode.type=="taxi" then
				tinsert(menu,{
						text = L['opt_autotaxi'],
						func = function() ZGV:SetOption("Navi","autotaxi") end,
						checked = function() return ZGV.db.profile.autotaxi end,
						isNotRadio=1,
					})
			end
			tinsert(list,{
					text = L['pointer_arrowmenu_route_retry'],
					tooltipTitle = L['pointer_arrowmenu_route_retry'],
					tooltipText = L['pointer_arrowmenu_route_retry_desc'],
					tooltipOnButton=1,
					notCheckable=true,
					func = function()
						--LibRover:UpdateNow()
						ZGV:ShowWaypoints()
					end,
			})
		end

		if ZGV.db.profile.debug_display and self.waypoint.pathnode then
			tinsert(menu,{
					text = L["Ban this point |cffff0000[DEV]|r"],
					func = function() LibRover.banned_nodes[self.waypoint.pathnode]=1  LibRover:UpdateNow() end,
					notCheckable=1,
					isNotRadio=1,
				})
			tinsert(menu,{
					text = L["Unban all points |cffff0000[DEV]|r"],
					func = function() LibRover.banned_nodes={}  LibRover:UpdateNow() end,
					notCheckable=1,
					isNotRadio=1,
				})
			tinsert(menu,{
					text = L["Inspect found path |cffff0000[DEV]|r"],
					func = function() if not Spoo then ZGV:Error("Spoo not found") return end  Spoo(nil,nil,LibRover.RESULTS) end,
					notCheckable=1,
					isNotRadio=1,
				})
		end

		tinsert(menu,{
				text = L['pointer_arrowmenu_route_disable'],
				tooltipTitle = L['pointer_arrowmenu_route_disable'],
				tooltipText = L['pointer_arrowmenu_route_disable_desc'],
				tooltipOnButton=1,
				--checked = function() return ZGV.db.profile.pathfinding end,
				func = function() ZGV:SetOption("Navi","pathfinding off") end,
				notCheckable=1,
				isNotRadio=1,
			})

	end
	--end

	local arrowoptions = {}
	tinsert(menu,{
			text = L['pointer_arrowmenu_arrowheader'],
			hasArrow=true,
			menuList = arrowoptions,
			notCheckable=true,
		})

	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_hide'],
			tooltipTitle = L['pointer_arrowmenu_hide'],
			tooltipText = L['pointer_arrowmenu_hide_desc'],
			tooltipOnButton=1,
			func = function() ZGV:SetOption("Navi","arrowshow off") end,
			notCheckable=1,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_freeze'],
			tooltipTitle = L['pointer_arrowmenu_freeze'],
			tooltipText = L['pointer_arrowmenu_freeze_desc'],
			tooltipOnButton=1,
			checked = function() return ZGV.db.profile.arrowfreeze end,
			func = function()  ZGV:SetOption("Navi","arrowfreeze "..(ZGV.db.profile.arrowfreeze and "off" or "on"))  end,
			notCheckable=1,
		})

	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_scale'],
			hasArrow = true,
			menuList = {
				{ text = L["opt_framescale_s_small"], checked = function() return (ZGV.db.profile.arrowscale==0.8) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=1 },
				{ text = L["opt_framescale_s_normal"], checked = function() return (ZGV.db.profile.arrowscale==1) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=2 },
				{ text = L["opt_framescale_s_large"], checked = function() return (ZGV.db.profile.arrowscale==1.6) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=5 },
			},
			notCheckable=1,
		})
	tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_options'],
			func = function() ZGV.GuideMenu:Show("Options","navi") end,
			notCheckable=1,
		})
		
	EasyFork(menu,self.menuframe,nil,0,0,"MENU",10)
	UIDropDownFork_SetWidth(self.menuframe, 300)
end

function Pointer.ArrowFrame_SetAlpha(but,v)
	ZGV:SetOption("Navi","arrowalpha "..v)
end

function Pointer.ArrowFrame_SetScale(but,v)
	ZGV:SetOption("Navi","arrowscale_s "..v)
	ZGV.Pointer:SetupArrow()
end

local leftbutdown,downx,downy
local rightbutdown
local old_c,old_z
local zonechangecount=0

local oldzone,zone

local old_wmdf_scale=0
function Pointer.Overlay_OnUpdate(frame,but,...)
	-- zone change behaviour is out

	--[[
	local c,z = GetCurrentMapContinentAndZone()
	local zonechanged
	if c~=old_c or z~=old_z then zonechangecount=1 end
	old_c,old_z=c,z
	if zonechangecount>0 then
		if not IsMouseButtonDown("LeftButton") then leftbutdown=false end
		if not IsMouseButtonDown("RightButton") then rightbutdown=false end
		zonechangecount=zonechangecount-1
		return
	end
	--]]

	-- set waypoints by shift-leftclicking the world map

	if frame.ZygorCoordsDEV then
		local mx,my = GetCursorPosition()
		mx=(mx-(frame:GetLeft()*frame:GetEffectiveScale()))/(frame:GetWidth()*frame:GetEffectiveScale())
		my=(my-(frame:GetBottom()*frame:GetEffectiveScale()))/(frame:GetHeight()*frame:GetEffectiveScale())
		my=1-my
		local m,f = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
		local px, py, pm, pf = HBD:GetPlayerZonePosition(true)
		px, py, pm, pf, m, f = (px or 0), (py or 0), (pm or 0), (pf or 0), (m or 0), (f or 0)
		frame.ZygorCoordsDEV:SetText(("Zone: \"%s\" %d / %d\n Player: %.1f,%.1f\nCursor: %.1f,%.1f\nDistance: %.1f yd"):format(ZGV.Pointer.GetMapNameByID2(m),m,f,px*100,py*100,mx*100,my*100,HBD:GetZoneDistance(pm, pf,px, py,m,f,mx,my) or 0))
	end

	if IsMouseButtonDown("LeftButton") and (IsShiftKeyDown() and not IsControlKeyDown() and not IsAltKeyDown() or ZGV.db.profile.no_shift_for_waypoints) then
		-- okay, clicked, but aren't we on a waypoint?
--		for w,way in Pointer.waypoints do
--			if
--		end
		leftbutdown=true
		oldzone=GetCurrentMapAreaID()
		downx,downy = GetCursorPosition()
	else
		repeat  -- left click handling
			if not leftbutdown then break end
			leftbutdown=nil

			local map = GetCurrentMapAreaID()
			if map<1 then break end  -------------------------- OUT: no sane map found.
			if map~=oldzone then break end  -------------- OUT! map changed with the click! Don't put any notes here.

			local x,y=GetCursorPosition()
			if math.abs(downx-x)>10 or math.abs(downy-y)>10 then break end  -------------------- OUT! moved between mousedown and mouseup

			-- these are processed AFTER click procs. Necessary to IGNORE (not DELAY) clicks.
			local foc,foundWF=GetMouseFocus(),nil
			while foc do if foc==WorldMapButton then foundWF=true end foc=foc:GetParent() end
			if not foundWF then break end  ---------------------- OUT: we're not on WorldMapButton

			x=(x-(frame:GetLeft()*frame:GetEffectiveScale()))/(frame:GetWidth()*frame:GetEffectiveScale())
			y=(y-(frame:GetBottom()*frame:GetEffectiveScale()))/(frame:GetHeight()*frame:GetEffectiveScale())
			y=1-y
			if x<0 or x>1 or y<0 or y>1 then break end  -------------------------- OUT: where the hell did you click?

			--ZGV.Pointer:ClearWaypoints("manual")
			--ZGV.Pointer:SetWaypoint(nil,nil,x*100,y*100,{title=WorldMapFrameAreaLabel:GetText(),type="manual",clearonarrival=true,overworld=true,onminimap="always"})
			local txt = WorldMapFrameAreaLabel:GetText()
			local fmt = ZGV.db.profile.debug_display and "%s %.1f,%.1f /%d" or "%s %d,%d"

			--Pointer:ClearWaypoints("manual")
			local way = Pointer:SetWaypoint(nil,nil,x,y,{
				title=(txt and txt.." ("..fmt..")" or fmt):format(Pointer.GetMapNameByID2(map,GetCurrentMapDungeonLevel()),x*100,y*100,GetCurrentMapDungeonLevel()),
				type="manual",
				cleartype=not IsControlKeyDown(),
				icon=Pointer.Icons.graydot,
				onminimap="always",
				overworld=true,
				showonedge=true,
				findpath=true
			})

			-- put coords in chat editbox
			if ChatFrame1EditBox:HasFocus() then
				ChatFrame1EditBox:SetText(ChatFrame1EditBox:GetText()..("%s/%s %.1f,%.1f"):format(Pointer.GetMapNameByID2(oldzone),GetCurrentMapDungeonLevel(),x*100,y*100))
				ChatFrame1EditBox:SetFocus(true)
			elseif ZygorGuidesWriterFrame and ZygorGuidesWriterFrame:IsVisible() then
				ZGW.MapClickedF=GetCurrentMapDungeonLevel()
				ZGW.MapClickedX=x
				ZGW.MapClickedY=y
			end

		until true
	end

	--[[
	-- debug button raising
	if ZGVLibRoverButton and not ZGVLibRoverButton.raised then
		ZGVLibRoverButton:SetFrameLevel(WorldMapButton:GetFrameLevel()+1)
		ZGVLibRoverButton.raised=true
	end
	--]]

	local wmdf_scale = WorldMapDetailFrame:GetEffectiveScale()
	if wmdf_scale ~= old_wmdf_scale then
		old_wmdf_scale = wmdf_scale
		Pointer.iconScale = 1/wmdf_scale
		for wi,way in ipairs(Pointer.waypoints) do way:SetIcon() end
		for wi,way in ipairs(Pointer.waypoints_ants) do way:SetIcon() end
	end
end

local function GenerateSubmapCache()
	if not submap_cache then submap_cache={} end
	local system
	-- FIXME that's ugly
	for i=0,2000 do
		system=HBD:GetMapContinent(i)
		if system then -- make HBD do the research if such a map exists
			if not submap_cache[system] then submap_cache[system]={} end
			table.insert(submap_cache[system],i)
		end
	end
end

function Pointer:DoCorpseCheck(event)
	if self:IsCorpseArrowNeeded() then
		ZGV:Debug("DoCorpseCheck (%s) (dead)",event or "no event")
		-- corpse arrow
		if not self.corpsearrow then self:FindCorpseArrow() end
	else
		ZGV:Debug("DoCorpseCheck (%s) (not dead)",event or "no event")
		self.corpsearrow = nil
		local n=self:ClearWaypoints("corpse")
		if n>0 then ZGV:ShowWaypoints() end
	end
end

function Pointer:SetCorpseArrow(m,f,x,y)
	self:ClearWaypoints("corpse")
	m = zone_aliases[m] or m

	Pointer:Debug("SetCorpseArrow: *** Pointing to corpse at: |cffffffff%s %d/%d %.1f,%.1f",Pointer.GetMapNameByID2(m),m,f,x*100,x*100)
	local way = Pointer:SetWaypoint(m,f,x,y,{
		title= ZGV.db.profile.corpsearrowjokes and L["pointer_corpselabel"..math.random(L["pointer_corpselabel#"])] or L["pointer_corpselabel"],
		type="corpse",
		icon=Pointer.Icons.greendot,
		onminimap="always",
		overworld=true,
		showonedge=true,
	})

	--if way then Pointer:FindTravelPath(way) end  -- DON'T Travel.

	self.corpsearrow=true
end

local function RestartCorpseSearch(where) -- made it a func not to duplicate code
	-- WTF, no corpse?
	Pointer:Debug("FindCorpseArrow, corpse not found anywhere [%s], will retry",where)
	ZGV:ScheduleTimer(function() ZGV.Pointer:FindCorpseArrow(true) end,10.0)
end

function Pointer:FindCorpseArrow(reset)

	if self.corpsearrow and not reset then return end
	if not UnitIsDeadOrGhost("player") then Pointer:Debug("FindCorpseArrow: not dead!") return end

	local origm,origf = GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
	local origx,origy = GetCorpseMapPosition()
	-- some magic here...

	-- Gilneas is stupid.
	if origm==678 then return self:SetCorpseArrow(origm,origf,origx,origy) end


	Pointer:Debug("FindCorpseArrow, current map %d/%d, corpse %.1f,%.1f",origm,origf,origx*100,origy*100)

	-- If submap cache is not ready, recreate it
	if not submap_cache then
		GenerateSubmapCache()
		RestartCorpseSearch("generating submap cache") return -- FIXME temporary workaround the bug giving the body in Dalaran Crater
	end

	-- We probably want to put a dot on all maps where the corpse is seen, just to look consistent
	local mapcandidates = {}

	-- Locating the player on the parent level map
	local system=HBD:GetMapContinent(origm)
	if not system then RestartCorpseSearch("HBD doesn't know the system you're in") return end

	ZGV.WMU_Suspend()
	SetMapByID(system)
	--SetDungeonMapLevel(0) -- sanity
	local sysx,sysy=GetCorpseMapPosition()
	if sysx>0 then
		Pointer:Debug("FindCorpseArrow, Corpse found in system %s (%s) at %.1f,%.1f",system,Pointer.GetMapNameByID2(system),sysx*100,sysy*100)
		Pointer:Debug("FindCorpseArrow, Searching the best fit among its "..#submap_cache[system].." maps")

		-- Right, so what our criteries are in the order of descending importance
		-- • The body is seen within the map
		-- • Map is small(for example Darnassus in Teldrassil)
		local smallestarea,bestmap,bestfloor,bestx,besty
		smallestarea=9999

		-- This is madness. Apparently SetMapByID(x) followed by GetCurrentMapAreaID() doesn't always return x. Well... trying a few times DOES work! Insane, eh?

		for i,id in ipairs(submap_cache[system]) do repeat -- Also each map includes self in the list
			for retry=1,3 do
				SetMapByID(id)
				if GetCurrentMapAreaID()==id then break end  -- map set!
			end
			if GetCurrentMapAreaID()~=id then
				Pointer:Debug("Couldn't set map to %d (%s)",id,(GetMapNameByID(id) or "?"))
				break
			end  -- map not set! skip :(

			local gndml = {GetNumDungeonMapLevels()}
			tinsert(gndml,0)
			tinsert(gndml,1)
			local minlev = min(unpack(gndml))
			local maxlev = max(unpack(gndml))

			Pointer:Debug("Corpse check on map %d (%s), levels %d-%d",id,(GetMapNameByID(id) or "?"),minlev,maxlev)
			--for l=levels>0 and 1 or 0,levels do -- perusing the current map dungeon levels  --sinus: 1..max   or just 0
			for i,l in ipairs(gndml) do repeat -- legion gndml is an array
				SetDungeonMapLevel(l)  if GetCurrentMapDungeonLevel()~=l then break end  -- can't zoom there? skip.
				local _x, _y = GetCorpseMapPosition()
				Pointer:Debug("Corpse check on map: %d/%d = %.1f,%.1f",id,l,_x*100,_y*100)
				if _x>0 -- aha, we can see the body on that map, let's note it
				and (id==origm or _x~=origx) -- AND it's not the SAME position that we saw on "our" map!!!! IMPORTANT!!!   /run SetMapByID(666) print(GetCorpseMapPosition())   you'll see magic happen, it'll return CURRENT map's corpse positions
				then
					table.insert(mapcandidates,{mapid=id,floor=l,x=_x,y=_y})
					local _w,_h=HBD:GetZoneSize(id,l)
					Pointer:Debug("Corpse Candidate on map: %d/%d %.1f,%.1f (size:%d)",id,l,_x*100,_y*100,_w)
					if not bestmap or smallestarea>_w then -- alex: little overhead here is okay, we don't get more that 4 maps anyway
						smallestarea=_w
						bestmap,bestfloor,bestx,besty=id,l,_x,_y
						--bestfloor=l -- this whole thing is excessive for phased maps, but they aren't numerous in a system set
						Pointer:Debug("^--- best so far")
					end -- TODO if somebody wishes to it can be removed for them with some checks
				end
			until true end

		until true end


		if #mapcandidates==0 then   -- -- sinus>alex: #table can't be <0, can it..?
			RestartCorpseSearch("no corpses found on maps")
		else
			-- Now we have a list of maps where the body is seen and the id of the smallest one
			self:SetCorpseArrow(bestmap,bestfloor,bestx,besty)
		end
	else
		RestartCorpseSearch("not in system")
	end
		--[[
		if not m then
			-- failed! set a flag
			self.corpsewait=true
		end
		--]]

	-- Clean up
	SetMapToCurrentZone()
	ZGV.WMU_Resume()
end


Pointer.ArrowSkins = {}

local function _new_skin(id,name)
	local skin = {id=id or "skin", name=name or "unnamed skin",styles={} }
	return skin
end

function Pointer:AddArrowSkin(id,name, order)
	local skin = _new_skin(id,name)
	self.ArrowSkins[id] = skin
	self.ArrowSkins[id].order = order
	return skin
end

function Pointer:GetSkinPath(skin)
	if not skin then skin=ZGV.db.options.arrowskin end
	return ZGV.DIR .. "\\Arrows\\" .. skin .. "\\"
end

function Pointer:SetArrowSkin(skin)
	-- no style? grab default
	if not skin then
		skin = next(self.ArrowSkins)
		assert(skin,"No arrow skin to fall back to!")
		return self:SetArrowSkin(skin)
	end
	local skindata = self.ArrowSkins[skin]
	if not skindata then
		ZGV:Print("Unknown arrow skin '"..skin.."', falling back to default")
		return self:SetArrowSkin()
	end

	local way
	if self.CurrentArrowSkin then
		way = self.ArrowFrame.waypoint
		self.ArrowFrame:Hide()
	end

	ZGV.db.profile.arrowskin = skin

	self.CurrentArrowSkin = skindata
	self.ArrowSkinDir = self:GetSkinPath(skin,style)

	self:CreateArrowFrame()

	self.ArrowFrame.waypoint = way
end

function Pointer:UpdateArrowVisibility()
	if not self.ArrowFrame then return end
	if ZGV.db.profile.arrowshow then self.ArrowFrame:Show() else self.ArrowFrame:Hide() end
end

function Pointer:SetMinimapPlayerTexture()
	Minimap:SetPlayerTexture(ZGV.DIR.."\\skins\\minimaparrow-player")
end

function Pointer:PointToNextInPath(pathname)
	local way = self:GetNextInPath(pathname or "farm")
	if type(way)=="table" then  -- OK, waypoint
		ZGV:Debug("PointToNext: #%d '%s' %.1f,%.1f",way.num,way.title or "(untitled)",way.x,way.y)
		self:ShowArrow(way)
		if LibRover.updating then LibRover:Abort("ptnip") end  -- BAD PLACE :(
		return way
	else
		ZGV:Debug("PointToNext %s: to %s ?",pathname,tostring(way))
	end
end

-- find the next point for the current position.
-- Can it base on the current point..? Doubtful, it can run continuously, but perhaps it can be safeguarded.
-- return true  to stay on the current point.

-- #00pathfollowing
-- Each following mode is described in its code below.

function Pointer:GetNextInPath(pathname,testway)
	local pointset = self.pointsets[pathname or ""] or self.pointsets["farm"] or self.pointsets["path"]
	if not pointset then return true end

	local pathfollow = pointset.follow or "loose"
	local pathpoints = pointset.points

	Pointer:Debug("GetNextInPath mode %s",pathfollow or "?")

	local curway = self.ArrowFrame.waypoint
	curway=(curway and curway.pathnode and curway.pathnode.waypoint) or curway

	if pathfollow == "smart" then

		--[[ SMART: Try to simulate a "drainage basin" here. 
			- At any time, point to the NEXT point in the "current segment" that the player is closest to.
		--]]
		

		--[==[ let's try a completely different approach

			-- establish nearest point
			local neardist=9999999999
			local nearnum
			for w,way in ipairs(pathwaypoints) do
				if way.frame_minimap and way.frame_minimap.dist<neardist then
					neardist=way.frame_minimap.dist
					nearnum=w
				end
			end
			local nearway=pathpoints[nearnum]

			-- establish next point
			local nextnum=nearnum+1
			if nextnum>#pathpoints then
				if pointset.loop then nextnum=1 else return true end
			end
			local nextway=pathpoints[nextnum]

			-- if we're "on" the current point, give the next.
			if neardist<smart_path_dist then return nextway end -----------------------

			local nextdist = nextway.frame_minimap.dist
			local nearnextdist = HDM:GetZoneDistance(nearway.m,nearway.f,nearway.x,nearway.y,nextway.m,nextway.f,nextway.x,nextway.y)
			if not nearnextdist then
				return nearway
			else

				--[=[
				-- if we ever need angles here...

				-- GetDist:
					local dist,xd,yd = HBD:GetZoneDistance(node1.m,node1.f,node1.x,node1.y,node2.m,node2.f,node2.x,node2.y)
					if dist==0 and node1.c~=node2.c or (node1.c==node2.c and node1.c==-1 and node1.m~=node2.m) then dist=nil end   -- the latter condition shouldn't matter anymore, since we moved to Astrolabe systems instead of continents
					return dist or 99999999,xd,yd
				--

				local dist,xd,yd = GetDist(self,node2)
				if not xd then return end
				local dir = atan2(xd, -yd)
				return dir%360
				--]=]

				-- fun part. Are we near the straight line..?
				if neardist+nextdist < nearnextdist*1.2 then return nextway else return nearway end
			end
		--]==]

		--[==[
			local tempway = self.tempway
			if not tempway then
				local m,f = ZGV.CurrentMapID,ZGV.CurrentMapFloor
				if testway then m,f=testway.m,testway.f end
				tempway = self:SetWaypoint(m,f,0,0,{title="Follow farm path",overworld=true,type="path"})
				self.tempway = tempway
			end
		--]==]

		local smart_path_dist = pointset.smarttight or pointset.dist or 50
		-- establish least pulled segment
		local min_pull=9999
		local min_pull_second=9999
		local min_pull_third=9999
		local min_pull_w,min_pull_nextw=0,0
		local good_next_way

		local nearest_dist=9999
		local nearest_way

		for w,way in ipairs(pathpoints) do  if way.frame_minimap then
			local dist = way.frame_minimap.dist or 9999
			if testway then dist=HBD:GetZoneDistance(way.m,way.f,way.x,way.y,testway.m,testway.f,testway.x,testway.y) or 9999 end
			
			local nextw = w+1
			if nextw>#pathpoints then
				if not pointset.loop then  break  else  nextw=1  end
			end
			local nextway = pathpoints[nextw]

			local nextdist = nextway.frame_minimap.dist or 9999
			if testway then nextdist=HBD:GetZoneDistance(nextway.m,nextway.f,nextway.x,nextway.y,testway.m,testway.f,testway.x,testway.y) or 9999 end
			
			local dist_between = HBD:GetZoneDistance(way.m,way.f,way.x,way.y,nextway.m,nextway.f,nextway.x,nextway.y)

			-- don't bother with segments too short
			if dist_between>smart_path_dist*0.5 then
				--local pull = (dist+nextdist) / dist_between
				local pull = (dist+nextdist) - dist_between

				if dist<(way.radius or smart_path_dist) then pull=0 end  -- zero pull at start point of each segment!
				if nextdist<smart_path_dist then pull=10 end  -- lousy pull at end point

				-- find segment with minimum pull, point to its endpoint.
				if (pull<=min_pull)
				--or (pull-min_pull<0.2)
				then
					--min_pull_third = min_pull_second  min_pull_second = min_pull
					min_pull = pull
					good_next_way = nextway
				end
				--print(("%d-%d: %d + %d / %d = %.2f"):format(w,nextw,dist,nextdist,dist_between,pull))
			end

			-- Store nearest waypoint just in case.
			--if dist<nearest_dist then 	nearest_dist,nearest_way=dist,way end
		end  end

		--[[
		-- Abandoned: point to nearest if we're far away. Flaw: could start doing that BETWEEN points.
		if nearest_dist>50 then return nearest_way end
		--]]

		--[[
		-- Abandoned: trying to get out of a case when the middle of a circular path becomes a vortex.
		print("min_pull_third",min_pull_third,"min_pull_second",min_pull_second,"min_pull",min_pull,"diff",abs(min_pull_second-min_pull),"diff2",abs(min_pull_third-min_pull_second))
		if abs(min_pull_second-min_pull)<10 and abs(min_pull_third-min_pull_second)<10 then  -- we have three almost identical pulls..? That's not good. Just point to the nearest point.
			return nearest_way
		end
		--]]

		-- how far are we along the line?
		-- perhaps later.
		--[[
			do
				local way1,way2 = waypoints[min_pull_w],waypoints[min_pull_nextw]

				local dist1 = way1.frame_minimap.dist
				local dist2 = way2.frame_minimap.dist
				if testway then dist1=HBD:GetZoneDistance(way1.m,way1.f,way1.x,way1.y,testway.m,testway.f,testway.x,testway.y) end
				if testway then dist2=HBD:GetZoneDistance(way2.m,way2.f,way2.x,way2.y,testway.m,testway.f,testway.x,testway.y) end
				local dist_between = HBD:GetZoneDistance(way1.m,way1.f,way1.x,way1.y,way2.m,way2.f,way2.x,way2.y)

				local pull2 = (dist+nextdist) / dist_between  -- 1..inf
				local along = .........
			end

			local progress_band = 500
			local progress = 1 - (min(progress_band,pull)/progress_band)
			tempway.x = way.x + (nextway.x-way.x)*progress
			tempway.y = way.y + (nextway.y-way.y)*progress


			tempway:SetIcon(tempway.icon)
			return tempway
		--]]

		return good_next_way

	elseif pathfollow == "smart2" then ----------------------------------------

		--[[ SMART2 : no idea how this works. Could analyze, but meh.
		--]]
		-- broken with ants
		local neardist=9999999999
		local nears={}
		local nearnum
		for w,way in ipairs(pathpoints) do  if way.frame_minimap and way.frame_minimap.dist<neardist then  neardist=way.frame_minimap.dist  nearnum=w  end  end
		tinsert(nears,nearnum)
		repeat
			local neardistmin=neardist
			neardist=neardist*1.1
			for w,way in ipairs(pathpoints) do  if way.frame_minimap and way.frame_minimap.dist>=neardistmin and way.frame_minimap.dist<neardist then  tinsert(nears,w)  end  end
		until #nears>=3 or #nears==#pathpoints
		Pointer:Debug("smart2: %d nears (%s)",#nears,table.concat(nears,","))

		local minnum = min(unpack(nears))
		local maxnum = max(unpack(nears))
		local size = #self.waypoints
		local halfway = floor(size/2)
		if maxnum-minnum>halfway then -- first and last choice span more than half the path?
			--for i in ipairs(nears) do  if way.frame_minimap and way.frame_minimap.dist<neardist then  neardist=way.frame_minimap.dist  nearnum=w  end  end
			for i=1,#nears do nears[i]=nears[i]-halfway  if nears[i]<0 then nears[i]=nears[i]+size end  end
			maxnum = max(unpack(nears))
			Pointer:Debug("nears fix",unpack(nears))
		end
		Pointer:Debug("maxnum",maxnum)

		return pathpoints[maxnum]

	elseif pathfollow == "smart3" then

		--[[ SMART3 : best for "inline travel"

		--]]

	elseif pathfollow == "strict"  then ----------------------------------------

		--[[ STRICT: Require the player to walk through the points in the order described, with neither shortcuts nor smartassery.
			- Initially, point to the FIRST point.
			- When the CURRENT point is stepped on, point to the NEXT point.
			- At any time, stick to the current point.
			- Periodic checks are pointless.
		--]]

		--
			if not curway then return pathpoints[1] end

			local default_radius = Pointer:GetDefaultStepDist()
			for w,way in ipairs(pathpoints) do
				if way==curway  -- this is the current waypoint
				and way.frame_minimap and way.frame_minimap.dist<(way.radius or default_radius)  -- and we're standing on top of it
				then  -- return next point
					return pathpoints[w+1] or (pointset.loop and pathpoints[1]) or curway
				end
			end
			return curway
		--

	elseif pathfollow == "loose" then ----------------------------------------

		--[[ LOOSE: Let the player walk through the points, recognizing skipping when a further points is reached.
			- Initially, point to the NEAREST point.
			- When ANY point is stepped on, point to the NEXT point.
			- At any time, stick to the current point.
			- Periodic checks are pointless.
		--]]

		--
			if not curway then -- default to closest
				local nearest_dist,nearest_way=9999,nil
				for w,way in ipairs(pathpoints) do if way.frame_minimap and way.frame_minimap.dist and way.frame_minimap.dist<nearest_dist then nearest_dist,nearest_way=way.frame_minimap.dist,way end end
				return nearest_way
			end

			local default_radius = Pointer:GetDefaultStepDist()
			local stopatnextway
			for w,way in ipairs(pathpoints) do
				if stopatnextway then return way end
				local mf = way.frame_minimap
				local dist = mf and mf.dist or 9999
				if dist<=(way.radius or default_radius)
				then  -- return next point
					return pathpoints[w+1] or (pointset.loop and pathpoints[1]) or true
				end
			end
			return true
		--

	elseif pathfollow == "route" then ----------------------------------------

		--[[ ROUTE: this is a special case, showing always the 3rd point ([1] is current player position, [2] is currently next point, so [3] is proper "yet next" target to skip to.
		--]]
		if self.pointsets.route then
			Pointer:Debug("GetNextInPath 'route', hell yeah")
			if #self.pointsets.route.points>=3 then return self.pointsets.route.points[3] 
			else return true -- keep!
			end
		else return true end
		--LibRover.updating = true
		--LibRover:UpdateNow()
		--ZGV:ShowWaypoints() -- UGLY. TODO. Clears manual path, that's bad.
	end
end

local colors={}
local defaultcolor={1,1,1,1}
function Pointer:TestGetNextInPathOne(x,y)
	local way = Pointer:SetWaypoint(GetCurrentMapAreaID(),GetCurrentMapDungeonLevel(),x,y,{
					type="manual",
					icon=Pointer.Icons.arrow,
					onminimap="always",
					overworld=true,
					showonedge=false,
					angle=0
				})
	--self.pointsets['farm'].follow="smart"
	local nextway = self:GetNextInPath("farm",way)

	if not nextway or type(nextway)~="table" then return end

	way.angle = math.atan2(nextway.x-x,(y-nextway.y)*0.66)
	if way.angle>0 then way.angle=6.2831-way.angle else way.angle=-way.angle end
	way.title = "To "..nextway.title
	way:SetIcon(way.icon)
	way.frame_worldmap.icon:SetVertexColor(unpack(colors[nextway] or defaultcolor))
end

Pointer.colors=colors
function Pointer:TestGetNextInPath(n)
	self:ClearWaypoints("manual")
	table.wipe(colors)
	for wi,way in ipairs(self.pointsets.farm.points) do
		colors[way] = {random(),random(),random(),1}
	end
	for x=0,1,1/n do  for y=0,1,1/n/0.66 do
		self:TestGetNextInPathOne(x,y)
	end end
end

--[[
function Pointer.GetMapName(id)
	local map,floor = Pointer.UnwrapMapFloor(mapfloor)
	local mapname = GetMapNameByID(map)
end
-- TODO later.
--]]

local extramaps = {
	[-1]="Azeroth",
	[0]="Azeroth",
	[906]="Theramore"
	}
function Pointer.GetMapNameByID2(id,floor)
	if not id then return "no map" end
	if floor and HBD.mapData[id] then
		floor = ZGV:SanitizeMapFloor(id,floor)
		local mapFile = HBD.mapData[id].mapFile
		if id==321 then floor=floor-1 end
		local floorName = _G['DUNGEON_FLOOR_'..mapFile:upper()..floor]
		if floorName then return floorName end
	end
	return extramaps[id] or GetMapNameByID(id or 0) or "(map "..(id or "nil")..")"
end


local flash_interval=0.25

local ant_interval=0.001
local ant_speed = 1.0  -- ant steps per second

local flash=nil
function Pointer:MinimapNodeFlash(s)
	flash=not flash
	if flash then
		Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIcons")
	else
		Minimap:SetBlipTexture(ZGV.DIR.."\\Skins\\objecticons_off")
	end
end
function Pointer:MinimapNodeFlashOff()
	Minimap:SetBlipTexture("INTERFACE\\MINIMAP\\OBJECTICONS")
end

local q=0

do
	local F = CreateFrame("FRAME","ZGVPointerExtraFrame")
	local ant_last=GetTime()
	local flash_last=GetTime()
	F:SetScript("OnUpdate",function(self,elapsed)
		if not ZGV.db then error("WTF? No ZGV.db when there's already OnUpdates running!?") end
		local t=GetTime()
		
		-- ant_last and flash_last need to be increments of their respective intervals
		
		local antspeed = ZGV.db.profile.antspeed or 0.033

		ant_interval = (antspeed>900) and 0.001 or (antspeed==0) and 999 or (1/antspeed)

		if t-ant_last>=ant_interval then
			if ZGV.db.profile.waypointaddon=="internal" then
				ZGV.Pointer:AnimateAnts()
			end
			ant_last=t-(t-ant_last)%ant_interval  -- make sure ant_last advances in exactly ant_interval increments.
		end

		-- Flashing node dots. Prettier than the standard, too. And slightly bigger.  Also, s/ode do/ude ti/.
		--[[ Disabled in 7.0.3 due to changes in minimap icons display
		if ZGV.db.profile.flashmapnodes then
			if t-flash_last>=flash_interval then
				ZGV.Pointer:MinimapNodeFlash()
				flash_last=t-(t-flash_last)%flash_interval
			end
		end
		--]]
	end)
	
	local CHAIN = ZGV.ChainCall
	F:SetPoint("CENTER",UIParent)
	F:Show()

	-- these make sure the flashing dots don't blink-glitch when their texture changes.
	CHAIN(F:CreateTexture("ZGVPointerDotOn","OVERLAY")) :SetTexture("Interface\\MINIMAP\\ObjectIcons") :SetSize(50,50) :SetPoint("RIGHT") :SetNonBlocking(true) :Show()
	CHAIN(F:CreateTexture("ZGVPointerDotOff","OVERLAY")) :SetTexture(ZGV.DIR.."\\Skins\\objecticons_off") :SetSize(50,50) :SetPoint("RIGHT") :SetNonBlocking(true) :Show()
end




-- Some small utilities which may be useful to several waypointing backends
-- Moved 'em out of Internal waypointer so that TomTom, for example,
-- may equally enjoy the pleasures of nettles^W path-based navigation ~aprotas

local curve_spacing = 200  -- overwritten with antspacing from options anyway
Pointer.curve_spacing = 200
local max_ants_per_segment = 40

local function calc_catmull_rom(t,t2,t3,p0,p1,p2,p3)
	return 0.5 * ( (2*p1.gx) + (-p0.gx+p2.gx)*t + (2*p0.gx-5*p1.gx+4*p2.gx-p3.gx) * t2 + (-p0.gx+3*p1.gx-3*p2.gx+p3.gx) * t3),
		   0.5 * ( (2*p1.gy) + (-p0.gy+p2.gy)*t + (2*p0.gy-5*p1.gy+4*p2.gy-p3.gy) * t2 + (-p0.gy+3*p1.gy-3*p2.gy+p3.gy) * t3)
	-- kept separate just in case. Inlined below for optimization.
end
Pointer.calc_catmull_rom=calc_catmull_rom

local function calc_angles(points,do_loop,recalc)
	local atan2=math.atan2
	for k,point in ipairs(points) do
		if recalc then point.angle=nil end
		if not point.angle and point.gx then
			local nextpoint = points[k+1]
			if not nextpoint then
				if do_loop then nextpoint=points[1] else break end
			end
			if nextpoint and nextpoint.gm==point.gm and nextpoint.gx then
				local angle = atan2(nextpoint.gx-point.gx,(point.gy-nextpoint.gy)*0.66)
				if angle>0 then angle=6.2831-angle else angle=-angle end
				point.angle = angle
			end
		end
	end
end
Pointer.calc_angles=calc_angles

local function calc_angles_curved(points,do_loop,recalc)
	local atan2=math.atan2
	for i=1,#points do
		local point=points[i]
		if recalc then point.angle=nil end
		if not point.angle and point.gx then
			local p0i,p1i,p2i,p3i = i-1,i,i+1,i+2
			if p0i<1 then p0i = do_loop and p0i+#points or 1 end
			if p2i>#points then p2i = do_loop and p2i-#points or #points end
			if p3i>#points then p3i = do_loop and p3i-#points or #points end
			local p0,p1,p2,p3=points[p0i],points[p1i],points[p2i],points[p3i]
			local x,y = calc_catmull_rom(0.2,0.04,0.008,p0,p1,p2,p3)
			if x then
				local angle = atan2(x-point.gx,(point.gy-y)*0.66)
				if angle>0 then angle=6.2831-angle else angle=-angle end
				point.angle = angle
			end
		end
	end
end
Pointer.calc_angles_curved=calc_angles_curved



-- optimization madness: localize EVERYTHING

local antpoints = {}
Pointer.antpoints = antpoints

local def_ant_icon = ZGV.Pointer.Icons.ant

local widths_cache = {}
setmetatable(widths_cache,{__index=function(t,mapid) 
	if not mapid or not HBD.mapData[mapid] then return 1 end
	local w=HBD.mapData[mapid][1]  
	if w==0 then 
		local nextf=next(HBD.mapData[mapid].floors)
		w=HBD.mapData[mapid].floors[nextf] and HBD.mapData[mapid].floors[nextf][1]
	end  
	t[mapid]=w  
	return w  
end})

Pointer.widths_cache = widths_cache

local function spawn_curve_ants(points,loop,phase)
	if #points<3 then return end
	--print("curving!!")
	local abs=abs
	local ceil=ceil

	local antpoints_num = 0

	local np=#points
	for i=1,np do  while true do
		--tinsert(antpoints,points[i])
		local p0i,p1i,p2i,p3i = i-1,i,i+1,i+2
		if p0i<1 then p0i = loop and p0i+#points or 1 end
		if p2i>#points then p2i = loop and p2i-#points or #points end
		if p3i>#points then p3i = loop and p3i-#points or #points end

		local p0,p1,p2,p3=points[p0i],points[p1i],points[p2i],points[p3i]

		local p0gx,p0gy,p1gx,p1gy,p2gx,p2gy,p3gx,p3gy=p0.gx,p0.gy,p1.gx,p1.gy,p2.gx,p2.gy,p3.gx,p3.gy
		if not p0gx or not p1gx or not p2gx or not p3gx then break end

		local curve_accuracy = p1.curve_accuracy
		if not curve_accuracy then
			--local dist = HBD:GetZoneDistance(p1.map,p1.floor,p1.x/100,p1.y/100,p2.map,p2.floor,p2.x/100,p2.y/100)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
			local dist
			if false then -- use straight dist
				dist = HBD:GetZoneDistance(p1.gm,p1.gf,p1.gx,p1.gy,p2.gm,p2.gf,p2.gx,p2.gy)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
			else
				dist=0
				local lx,ly=p1gx,p1gy
				for t=0.1,1,0.1 do
					local t2 = t*t
					local t3 = t*t*t
					local x = 0.5 * ( (2*p1gx) + (-p0gx+p2gx)*t + (2*p0gx-5*p1gx+4*p2gx-p3gx) * t2 + (-p0gx+3*p1gx-3*p2gx+p3gx) * t3)
					local y = 0.5 * ( (2*p1gy) + (-p0gy+p2gy)*t + (2*p0gy-5*p1gy+4*p2gy-p3gy) * t2 + (-p0gy+3*p1gy-3*p2gy+p3gy) * t3)
					dist=dist+(x-lx)*(x-lx)+(y-ly)*(y-ly)*0.66
					lx,ly=x,y
				end
				dist=sqrt(dist)*widths_cache[p1.gm]*3
			end
			if not dist or dist<1 then dist=1 end
			curve_accuracy = ceil(dist/curve_spacing)
			if curve_accuracy>max_ants_per_segment then curve_accuracy=max_ants_per_segment end
			curve_accuracy = 1/curve_accuracy
			p1.curve_accuracy = curve_accuracy
		end

		--print("acc",curve_accuracy)
		--for t=phase*curve_accuracy,1-(1-phase)*curve_accuracy,curve_accuracy*0.999 do
		for t=phase*curve_accuracy,0.9999,curve_accuracy*0.999 do
			local t2 = t*t
			local t3 = t*t*t

			-- Catmull-Rom
			--local x,y = calc_catmull_rom(t,t2,t3,p0,p1,p2,p3)
			local x = 0.5 * ( (2*p1gx) + (-p0gx+p2gx)*t + (2*p0gx-5*p1gx+4*p2gx-p3gx) * t2 + (-p0gx+3*p1gx-3*p2gx+p3gx) * t3)
			local y = 0.5 * ( (2*p1gy) + (-p0gy+p2gy)*t + (2*p0gy-5*p1gy+4*p2gy-p3gy) * t2 + (-p0gy+3*p1gy-3*p2gy+p3gy) * t3)

			--local x = 0.5 * ( (2*p1.gx) + (-p0.x+p2.x)*t + (2*p0.x-5*p1.x+4*p2.x-p3.x) * t2 + (-p0.x+3*p1.x-3*p2.x+p3.x) * t3)
			--local y = 0.5 * ( (2*p1.gy) + (-p0.y+p2.y)*t + (2*p0.y-5*p1.y+4*p2.y-p3.y) * t2 + (-p0.y+3*p1.y-3*p2.y+p3.y) * t3)

			--if (abs(x-p1.x)+abs(y-p1.y)>0.1) and (abs(x-p2.x)+abs(y-p2.y)>0.1) then

			antpoints_num = antpoints_num+1
			local ant = antpoints[antpoints_num]
			if not ant then
				ant = {}
				antpoints[antpoints_num]=ant
			end

			ant.map,ant.floor,ant.x,ant.y=p1.gm,p1.gf,x,y
			ant.sub=i+t
			ant.icon = p2.ant_icon or def_ant_icon   -- ant_icon is contained in the DESTINATION waypoint of the pair.
			ant.p0,ant.p1,ant.p2,ant.p3=p0,p1,p2,p3
			ant.p1f,ant.p2f=p1.f,p2.f
			ant.p1m,ant.p2m=p1.m,p2.m
			ant.ant_dist=t

			--print(("%d/%.2f: [%.1f,%.1f]->[%.1f,%.1f] = [%.1f,%.1f]"):format(i,t,p1.x,p1.y,p2.x,p2.y,x,y))
			--end
		end
		break
	end end
	return antpoints,antpoints_num
end
Pointer.spawn_curve_ants = spawn_curve_ants


local function spawn_straight_ants(points,loop,phase)
	if #points<2 then return end
	--print("curving!!")
	local abs=abs
	local ceil=ceil

	local antpoints_num = 0

	local np=#points
	local breakall
	for i=1,np do  while true do
		local p0 = points[i-1]
		local p1 = points[i]
		local p2 = points[i+1]
		local p3 = points[i+2]
		if not p2 then  if loop then p2=points[1] else breakall=true break end  end
		if not p3 and loop then p3=points[2] end

		local base_t=0

		-- NEW CHECK. Points are supposedly on global maps. If points do NOT share a global map, NO ANTS BETWEEN THEM.
		if p1.gm
		and p1.gm==p2.gm
		--and p1.gf==p2.gf
		then

			local curve_accuracy = p1.curve_accuracy
			if not curve_accuracy then
				--local dist = HBD:GetZoneDistance(p1.map,p1.floor,p1.x/100,p1.y/100,p2.map,p2.floor,p2.x/100,p2.y/100)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
				local dist = HBD:GetZoneDistance(p1.gm,p1.gf,p1.gx,p1.gy,p2.gm,p2.gf,p2.gx,p2.gy)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
				--print(i,"/",#points,dist)
				if not dist or dist<1 then dist=1 end  -- correct for the above exaggeration
				curve_accuracy = ceil(dist/curve_spacing)
				--curve_accuracy = dist/curve_spacing
				if curve_accuracy>max_ants_per_segment then curve_accuracy=max_ants_per_segment end
				curve_accuracy = 1/curve_accuracy
				p1.curve_accuracy = curve_accuracy
				--print(curve_accuracy)
			end

			--print("acc",curve_accuracy)
			for t=base_t+phase*curve_accuracy,1,curve_accuracy*0.999 do
				-- straight line
				local x = p1.gx + t*(p2.gx-p1.gx)
				local y = p1.gy + t*(p2.gy-p1.gy)

				antpoints_num = antpoints_num+1
				local ant = antpoints[antpoints_num]
				if not ant then
					ant = {}
					antpoints[antpoints_num]=ant
				end

				ant.map,ant.floor,ant.x,ant.y=p1.gm,p1.gf,x,y
				ant.sub=i+t
				ant.icon = p2.ant_icon or def_ant_icon   -- ant_icon is contained in the DESTINATION waypoint of the pair.
				ant.p0,ant.p1,ant.p2,ant.p3=p0,p1,p2,p3
				ant.p1f,ant.p2f=p1.f,p2.f
				ant.p1m,ant.p2m=p1.m,p2.m
				ant.ant_dist=t

				--base_t=t

				--tinsert(antpoints,{map=0,floor=0,x=x,y=y,sub=i+t,icon=ZGV.Pointer.Icons.ant})
			end

			--base_t=(base_t+curve_accuracy) % 1
		end
		break
	end  if breakall then break end  end
	return antpoints,antpoints_num
end
Pointer.spawn_straight_ants = spawn_straight_ants



local function update_ant_waypoints(points)  -- optimized for ants
	for k,point in ipairs(points) do
		local way = point.pointer_way
		if way then
			way.map,way.floor,way.x,way.y=point.map,point.floor,point.x,point.y
		end
	end
end

local temp_setwaypoint_data={}
-- I hate this. This is a list of fields that need to be skipped when filling the waypoint with data from goals.
-- Ideally, we'd have a "make waypoint FROM GOAL SPECIFICALLY" function...
--local ignored_fields = { action=1,dirtytext=1,indent=1,L=1,macro=1,macroicon=1,macrosrc=1 }  
-- Bah, screw it.
-- keywords: valid data fields
local copy_fields = {title=1,arrowtitle=1,arrowicon=1,text=1,pathnode=1,map=1,["floor"]=1,x=1,y=1,["type"]=1,icon=1,pathnode=1,radius=1,
	waypoint_zone=1, waypoint_realzone=1, waypoint_subzone=1, waypoint_minizone=1, waypoint_region=1, waypoint_indoors=1, player=1, ant_icon=1,noskip=1,
	poiNum=1,OnNear=1,OnFar=1,OnUpdate=1,isNear=1,nearRange=1, OnClick=1, onminimap=1, onworldmap=1, tooltipdata=1, storedData=1, customs=1 }
local dont_copy_Goal_fields = { OnClick=1 } -- I hate myself for this.
	
local function set_waypoints(points,worldsize,minisize,ptype,setname)
	local arrowpoint,farmpoint
	local pathmode = (ptype=="path")
	local farmmode = (ptype=="farm")

	local step = ZGV.CurrentStep or ZGV:GetFocusedStep() or {}

	Pointer:Debug("set_waypoints: %d points, type=%s",#points,ptype)
	
	for k,point in ipairs(points) do
		if not point.force_noway and point.x then

			local data = temp_setwaypoint_data
			wipe(data)
			data.overworld = not farmmode
			data.onminimap=not farmmode and "always"
			data.showonedge=not pathmode and not farmmode
			data.type=ptype
			data.in_set = setname
			if point.waypoint_icon then
				data.icon = point.waypoint_icon 
			end
			if point.waypoint_type then
				data.type = point.waypoint_type
			end


			--data.persistent=true
			data.title = (title
					or point.waytitle or point.title
					or (pathmode and (step and step.waypath and step.waypath.title and step.waypath.title or "Path").." ("..k..")")
					or (point.parentStep and point.parentStep:GetWayTitle())
					--or (step and step:GetWayTitle())
					or (point.map and point.x and ("%s %d,%d"):format(ZGV.Pointer.GetMapNameByID2(point.map),point.x*100,point.y*100))
					or L['waypoint_step']:format(ZGV.CurrentStepNum)
					) -- This is slowly becoming obsolete, thanks to :GetTitle and :GetArrowTitle
			data.num=k

			data.goal = point.action and point  -- it's a goal, make it smart

			data.radius = point.dist or point.radius

			-- Copy point vars to waypoint
			-- DON'T. This makes a fucking mess. Clean it up PROPERLY.
			--for k,v in pairs(point) do if k~="map" and k~="floor" and k~="x" and k~="y" then data[k]=v end end
			for k in pairs(copy_fields) do if point[k]~=nil and not (point.parentStep and dont_copy_Goal_fields[k]) then data[k]=point[k] end end

			if data.player then data.passive = true end

			local way = Pointer:SetWaypoint (point.map,point.floor,point.x,point.y, data, false)
			--Pointer:Debug("set_waypoints: point %d/%d, way=%s",k,#points,tostring(way))

			point.waypoint=way

			if way then

				if not point.player or point.arrow or ptype=="manual"
				then
					arrowpoint = arrowpoint or way  ---or way.surrogate_for or way
					farmpoint = arrowpoint or way
					--pathpoint = pathpoint or way  -- in case they ARE different somehow
					
					-- override to show the CURRENT one, not first come first serve.
					if way.goal and way.goal.num==step.current_waypoint_goal_num then  arrowpoint=way  end
				end


				-- or (step.waypath and step.waypath.current==point)

				if setname then  -- add to set
					local set = Pointer.pointsets[setname]
					if not set then set={points={}} __CLASS[set]="PointSet" Pointer.pointsets[setname]=set end
					tinsert(set.points,way)
					--Pointer:Debug("Added point to set %s, now storing %d",setname,#set.points)
				end
			else
				--self:Print(("Unabmle to create waypoint: %s/%d %.2f %.2f"):format(point.map,point.floor,point.x,point.y))
			end

		end
	end
	Pointer:Debug("set_waypoints: arrowpoint=%s, farmpoint=%s",waypoint_tostring(arrowpoint),waypoint_tostring(farmpoint))

	return arrowpoint,farmpoint
end
Pointer.set_waypoints = set_waypoints

local function set_waypoints_ants(ants,num,start_at,worldsize,minisize)
	for k=1,num do
		local ant=ants[k]
		Pointer:SetWaypoint_ant (ant.map,ant.floor,ant.x,ant.y, k+start_at, ant.icon, ant)
	end
end

local function move_point_to_global(point)
	if not point then return end
	local m = point.m	if not m or not point.x then point.gx,point.gy=nil,nil return end
	local data = HBD.mapData[m]
	local mastermap = HBD:GetMapContinent(m)
	local masterfloor = ZGV:SanitizeMapFloor(mastermap,0) -- even if it's the same map, remap to be able to work with bare coords

	--if Astrolabe.WorldMapSize[point.map].system==466 then mastermap=466 end  -- outland, do NOT translate onto Azeroth
	--if Astrolabe.WorldMapSize[point.map].system==640 then mastermap=640 end  -- deepholm, do NOT translate onto Azeroth
	--if point.c==-1 then mastermap=Astrolabe.WorldMapSize[point.map].system end  -- instances, do NOT translate onto Azeroth
	--print("a",m,mastermap,point.f,masterfloor,point.type)

	if m~=mastermap or point.f~=masterfloor then
		point.gx,point.gy = HBD:TranslateZoneCoordinates(point.x, point.y, m, point.f, mastermap, masterfloor)
	end
	if point.gx then
		point.gm,point.gf=mastermap,masterfloor
	else
		point.gm,point.gf=point.m,point.f
		point.gx,point.gy=point.x,point.y
	end

	--print("b",m,mastermap,point.f,masterfloor,point.type)
end


function Pointer:SetAntSpacing(spacing)
	curve_spacing = spacing
	Pointer.curve_spacing = spacing
	--ZGV:Debug("ant spacing %.1f",spacing)
end

-- Display (time-phased) ants between all .ants -enabled sets in Pointer.pointsets .
local mapsizeratio = {[-1]=10}

setmetatable(mapsizeratio,{__index=function(t,mapid) 
	if not mapid or not HBD.mapData[mapid] then return 1 end
	local r=HBD.mapData[mapid][1]/2000
	if r==0 then 
		local nextf=next(HBD.mapData[mapid].floors)
		r=HBD.mapData[mapid].floors[nextf] and HBD.mapData[mapid].floors[nextf][1]/2000
	end  
	t[mapid]=r
	return r  
end})

Pointer.mapsizeratio = mapsizeratio

local ants_optimized_which_isnt_implemented=false
function Pointer:AnimateAnts()
	local ant_speed = ant_speed
	if (ant_interval>0.2) then ant_speed=0.3 end
	local phase = (GetTime()*ant_speed)%1

	-- Set ant spacing properly for overworld maps
	local map = GetCurrentMapAreaID()
	--local overworld = (map==13 or map==14 or map==0 or map==689 or map==-1 or map==485 or map==466 or map==862 or map==962)
	local ratio = mapsizeratio[map]
	local antspacing = ZGV.db.profile.antspacing

	--self:SetAntSpacing((overworld and antspacing*7) or (TaxiFrame:IsShown() and antspacing*5) or antspacing*ratio)
	self:SetAntSpacing((TaxiFrame:IsShown() and antspacing*5) or antspacing*ratio)

	local total_ants = 0

	for name,pointset in pairs(self.pointsets) do
		if pointset.ants and curve_spacing>0
		--and only_type=="ant"
		then --and not step.waypath_curved
			--step.waypath_curved = true

			for pi,wp in ipairs(pointset.points) do
				wp.curve_accuracy=nil  -- clear this cached value, we might change accuracy.

				if wp.player then
					-- point is player? get new location
					local x,y,m,f = HBD:GetPlayerZonePosition(true)
					wp.m,wp.f,wp.x,wp.y = m,f,x,y
					wp.gx,wp.gy,wp.gm,wp.gf = nil,nil,nil,nil
				end

				move_point_to_global(wp)

				--ZGV.Pointer:SetWaypoint (wp.map,wp.floor,wp.x,wp.y,nil,nil)--data,arrow)
				--ants=spawn(waypath)
				--show(waypath, ants)
			end

			local antpoints,num
			--print("spawning, player = "..waypath.coords[1].x)
			if pointset.ants=="straight" or #pointset.points<3 then
				antpoints,num = spawn_straight_ants(pointset.points,pointset.loop,phase)
			else
				antpoints,num = spawn_curve_ants(pointset.points,pointset.loop,phase)
			end

			--calc_angles(antpoints,pointset.loop)
			if antpoints then
				--Pointer:Debug("Ants: %d %s spawned for set %s",num,pointset.ants,name)
				if ants_optimized_which_isnt_implemented then
					if Pointer.ants_set then
						update_ant_waypoints(antpoints)
					else
						set_waypoints_ants(antpoints,num,35,30)
						Pointer.ants_set=true
					end
				else
					set_waypoints_ants(antpoints,num,total_ants,35,30)
				end
			else
				--Pointer:Debug("Ants: No ants spawned for set %s",name)
			end

			if num then total_ants = total_ants + num end
		end
	end

	self:ClearWaypoints_ant(total_ants)

end


Pointer.pointsets = {}

function Pointer:ClearSets()
	for k,v in pairs(self.pointsets) do
		self:ClearSet(k)
	end
end

local lv=0
function Pointer:ClearSet(name)
	local t1=debugprofilestop()
	lv=lv+1
	local set = self.pointsets[name]
	if not set then
		--Pointer:Debug("Clearing set %s, but none present",name)
		lv=lv-1
		return
	end
	--Pointer:Debug("Clearing set %s, %d points",name,#set.points)
	for pi,point in ipairs(set.points) do
		--Pointer:Debug("Removing point %d from set %s",pi,name)
		point.in_set = nil  -- so that it's not attempted to remove from set again
		self:RemoveWaypoint(point)
	end
	self.pointsets[name]=nil
	assert(lv<=3,"No nesting ClearSet too deep!")
	--Pointer:Debug("Cleared set %s",name)
	lv=lv-1

	self:AnimateAnts()  --force

	Pointer:Debug("ClearSet %s + ants [%.2f ms]",name,debugprofilestop()-t1)
end

-- Show a series of points as a path. TODO: make this add ants on all segments.

function Pointer:ShowSet(waypath,name)
	if self.pointsets[name] then self:ClearSet(name) end

	local t1=debugprofilestop()

	if waypath and waypath.coords and #waypath.coords>1 then  -- show ants, or just the path, anyway.

		-- SHOW IT NOW, please. Also add it to set.
		set_waypoints(waypath.coords,nil,nil,waypath.coords[1].type or "path",name)

		-- calculate global map coords

		local points = self.pointsets[name] and self.pointsets[name].points
		if not points then ZGV:Debug("No points in set!") return end  -- there were none to begin with? what?


		-- let's handle these proper waypoints now

		--globalize position! fill gm,gx,gy with world-global values. Otherwise ants can't travel over zone crossings.
		for wpi,wp in ipairs(points) do
			if not wp.gx and wp.m then  move_point_to_global(wp)  end
			if (wpi%50==0) and Pointer.showset_timer and coroutine.running() then coroutine.yield() end
		end

		-- calculate path arrow angles
		if waypath.ants=="curved" then
			calc_angles_curved(points,waypath.loop)
		elseif waypath.ants=="straight" then
			calc_angles(points,waypath.loop)
		else
			-- no ants! Just points!
		end

		-- set up icons based on angles/loops
		local markers = waypath.markers or "auto"
		if markers=="auto" then markers = waypath.loop and "none" or "arrow" end
		if markers=="arrows" then markers = "arrow" end
		if markers=="dots" then markers = "dot" end
		for k,point in ipairs(points) do
			local icon
			local marker=markers
			if k==1 and waypath['start'] then marker=waypath['start']
			elseif k==#points and waypath['end'] then marker=waypath['end'] end
			if point.player or marker=="none" or (point.pathnode and point.pathnode.a_b__c_d) == "taxi_taxi__taxi_taxi" then
				icon = self.Icons.none
			elseif point.angle and marker=="arrow" then
				icon=self.Icons.arrow
			else
				icon=point.icon or self.Icons.greendot
			end
			point:SetIcon(icon)
			if (k%50==0) and Pointer.showset_timer and coroutine.running() then coroutine.yield() end
		end

		-- Get all the other fields
		for k,v in pairs(waypath) do if k~="coords" then self.pointsets[name][k]=v end end

	end

	local t2=debugprofilestop()
	self:AnimateAnts()  --force
	Pointer:Debug("ShowSet %s ends [%.2f ms] + ants [%.2f ms]",name,t2-t1,debugprofilestop()-t2)

	return self.pointsets[name]
end

function Pointer:Thread_ShowSet(waypath,name)
	if Pointer.showset_timer then ZGV:CancelTimer(Pointer.showset_timer) end
	local thread = coroutine.create(function() Pointer:ShowSet(waypath,name) end)
	Pointer.showset_timer = ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(thread)
		if not ok then Pointer:Debug("Showing set failed: "..ret) end
		if coroutine.status(thread)=="dead" then ZGV:CancelTimer(Pointer.showset_timer) end
	end,
	0.01)
end


local PATHFOUND_TO_MANUAL, PATHFINDING_TARGET

local oldpathtarget
--local FAILED_PATH
local function PathFoundHandler(state,path,ext,reason)
	if ZGV.Pointer.corpsearrow then return end

	if state~="progress" then Pointer:Debug("&_PUSH PathFoundHandler! state=%s",state) end

	if state=="success" then
		if ext and ext.token and ext.token~=ZGV.Pointer.DestinationWaypoint then Pointer:Debug("&_POP Found wrong path!") return end
		Pointer:ClearSet("route")
		local future_waypoints = {--[[follow="pathfind",--]]loop=false,ants="straight",coords={},follow="route"}

		Pointer.tmp_taxis_assumed = false
		local first=true
		for i,node in ipairs(path) do
			local icon
			if not node.player and node.type~="end" then icon=Pointer.Icons.arrow else icon=Pointer.Icons.none end  -- start and end nodes are HIDDEN.
			--if w.node==LibRover.endnode then break end -- don't add the last one! add it separately. WHY!??
			local wayp = {map=node.m,floor=node.f,x=node.x,y=node.y, title=node.maplabel, arrowtitle=node:GetTextAsItinerary(),player=node.player, type="route", icon=icon, pathnode=node}
			-- force_noway=node.player,

			if node.type=="end" then wayp.noskip = true end

			if first and not node.player then first=false  wayp.arrow=true  end

			wayp.radius = node.radius  -- will account for flying
			
			if node.type=="taxi" then
				-- source taxi: never complete waypoint
				-- destination taxi: early complete waypoint, let LibRover wait for touchdown
				if node.link.mode~="taxi" then
					--start
					wayp.radius = wayp.radius or 5
					wayp.noskip = true
				end
				if node.known==nil then
					Pointer.tmp_taxis_assumed = true
				end
			elseif node.type=="portal" then
				if node.link.mode~="portal" then
					wayp.radius = wayp.radius or 5
					wayp.noskip = true
				end
			elseif node.type=="ship" or node.type=="zeppelin" then
				if node.link.mode~="ship" and node.link.mode~="zeppelin" then
					wayp.radius = wayp.radius or 5
					wayp.noskip = true
				else
					wayp.radius = wayp.radius or 100
				end
			elseif node.noskip then -- let's allow forcing this.
				wayp.radius = 5
				wayp.noskip = true
			end

			wayp.radius = wayp.radius or ZGV.Pointer:GetDefaultStepDist()

			local mode = node.link and node.link.mode
			if mode=="taxi" then wayp.ant_icon = ZGV.Pointer.Icons.ant_taxi
			elseif mode=="ship" or mode=="zeppelin" then wayp.ant_icon = ZGV.Pointer.Icons.ant_ship
			elseif mode=="portal" or mode=="teleport" or mode=="hearth" or mode=="ghearth" or mode=="astralrecall" or mode=="courtesy" or mode=="useitem" then wayp.ant_icon = ZGV.Pointer.Icons.ant_portal
			elseif mode=="fly" then wayp.ant_icon = ZGV.Pointer.Icons.ant_flying
			else wayp.ant_icon = ZGV.Pointer.Icons.ant
			end

			wayp.actionicon = node:GetActionIcon(path[i-1],path[i+1])

			if node.wayp_override_text then wayp.arrowtitle=node.wayp_override_text end
			if node.wayp_override_icon or node.arrow_icon then wayp.arrowicon=node.wayp_override_icon or node.arrow_icon end

			-- OMG if it's the LAST waypoint in a travel path, point DIRECTLY, instead of at the placeholder.
			if node.type=="end" then 
				if ext.foundnpcs then  -- this is a result of searching for NPCs
					for _,npcdata in pairs(ext.foundnpcs) do
						if npcdata.m == node.m and npcdata.x == node.x and npcdata.y == node.y then
							wayp.arrowtitle = ZGV.L['stepgoal_talk to']:format(ZGV.Localizers:GetTranslatedNPC(tonumber(npcdata.id)))
							if node.learnfpath then wayp.arrowtitle = wayp.arrowtitle.."|n"
									..("at the %s Flight Path"):format(node.name) .. "|n"
									..("to update your Flight Map data") end
							wayp.onminimap="always"
							wayp.overworld=true
							wayp.showonedge=true
							wayp.icon=Pointer.Icons.graydot
							wayp.type="manual"
						end
					end
				end
				wayp.surrogate_for=ZGV.Pointer.DestinationWaypoint 
			end

			tinsert(future_waypoints.coords, wayp)
		end

		--[[
		if ZGV.Pointer.CurrentPathTarget then
			local w = ZGV.Pointer.CurrentPathTarget
			tinsert(ZGV.Pointer.TempWaypath.coords, {map=w.m,floor=w.f,x=w.x,y=w.y,title=w.title,force_noway=true})
		end
		--]]

		Pointer.ArrowFrame.waypoint = nil -- clear arrow, so that it updates around line 804 this file. We :SetWaypoint right under here.
		--FAILED_PATH = nil
		Pointer:ShowSet(future_waypoints,"route") -- clear none, just refresh

		Pointer:ShowArrow(Pointer.pointsets.route.points[2])  -- point 1 is player

	elseif state=="failure" then
		Pointer:ClearSet("route")
		--FAILED_PATH = ZGV.Pointer.DestinationWaypoint

		reason = reason or "Destination unreachable."

		if reason and ZGV.Pointer.DestinationWaypoint then
			ZGV.Pointer.DestinationWaypoint.errortext = reason
		end
		Pointer:ShowArrow(ZGV.Pointer.DestinationWaypoint)

		--ZGV:ShowWaypoints(nil,nil,nil,"path",{dontcleartemp=true}) -- clear none, just refresh

	-- Causing the Lovely arrow problems ~Errc
	-- Well let's cure, not amputate ;) ~sin
	elseif state=="arrival" then
		Pointer:ClearSet("route")
		--LibRover:Abort("PFH, state=arrival")
		Pointer:Debug("Arrived at destination!")
		--FAILED_PATH = ZGV.Pointer.CurrentPathTarget
		Pointer:ShowArrow(ZGV.Pointer.DestinationWaypoint)
	elseif state=="progress" then
		-- DON'T clear anything.
		Pointer:ShowWaiting(ext and ext.progress or 0)
	end
	--ZGV:ShowWaypoints() -- clear none, just refresh
	if state~="progress" then Pointer:Debug("&_POP PathFoundHandler done.") end
end
Pointer.PathFoundHandler = PathFoundHandler

function Pointer:ResetFollowing()
	-- deprecated
end

-- Finds an optimal travel route. Or, just a beeline, if options say so.
function Pointer:FindTravelPath(way)
	if not way then return end
	if way.pathnode and way.pathnode.player then return end -- no routing to parts of a route

	if not ZGV.db.profile.pathfinding then  -- no travel, beeline!
		self.DestinationWaypoint = way
		self:ShowArrow(way)
		return
	end

	if type(way)=="table" then
		--self:ShowArrow(way) --#optimizetravel
		if way.type=="route" then return end
		self.DestinationWaypoint = way
		local display_zone = way.waypoint_minizone or way.waypoint_subzone
		ZGV:Debug("&pointer FindTravelPath to %s",waypoint_tostring(way))
		LibRover:Abort("before QFP","quiet")
		LibRover:QueueFindPath(0,0,0,0,way.m,way.f,way.x,way.y, PathFoundHandler,
			{title=way.title .. (display_zone and ("\n(in %s)"):format(display_zone) or ""), waypoint=way, direct=not ZGV.db.profile.pathfinding or (way.goal and way.goal.waypoint_notravel),
			waypoint_zone=way.waypoint_zone, waypoint_realzone=way.waypoint_realzone, waypoint_subzone=way.waypoint_subzone, waypoint_minizone=way.waypoint_minizone,
			waypoint_region=way.waypoint_region, waypoint_indoors = way.waypoint_indoors
			}
			)
	elseif type(way)=="string" then
		-- show a set!
		local setname=way
		local set=self.pointsets[setname] and self.pointsets[setname].points
		if not set then ZGV:Debug("No set '%s'",setname) return end
		if not set[1] then ZGV:Debug("No points in set '%s'",setname) return end
		way=set[1]

		--[[
		-- NEW: if points are in this zone, STOP waypointing. I don't really like this solution, but let's try it for now... -- ~sinus 2015-01-08 19:53:15
		if GetCurrentMapAreaID()==way.m then
			Pointer:Debug("Pointset '%s' in current zone, pointing with GetNextInPath.",setname)
			local nextway = self:GetNextInPath()
			if nextway and type(nextway)=="table" and nextway~=waypoint then self:ShowArrow(nextway) end
			return
		end
		-- otherwise findpath to closest point.
		--]]

		ZGV:Debug("&pointer FindTravelPath to pointset '%s'",setname)
		ZGV.Pointer.DestinationWaypoint = way
		local more_points = {}
		for i=2,#set do
			local w=set[i]
			more_points[#more_points+1]={m=w.m,f=w.f,x=w.x,y=w.y,title=w.title}
		end
		LibRover:Abort("before QFP 2")
		LibRover:QueueFindPath(0,0,0,0,way.m,way.f,way.x,way.y, PathFoundHandler, {title=way.title, waypoint=way, direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points })
	end
end



function Pointer:DoAutoTravel()
	if ZGV.db.profile.autotravel then
		if not Pointer.AutoTravelFrame then
			Pointer.AutoTravelFrame = CHAIN(CreateFrame("FRAME","ZygorGuidesViewerPointer_AutoTravelFrame"))
				:SetPoint("TOPLEFT",UIParent,"TOPLEFT")
				:SetSize(1,1)
				.__END
			Pointer.AutoTravelFrame.t1 = CHAIN(Pointer.AutoTravelFrame:CreateTexture(nil,"OVERLAY"))
				:SetPoint("TOPLEFT",Pointer.AutoTravelFrame,"TOPLEFT",0,0)
				:SetColorTexture(1,1,1)
				:SetSize(5,5)
				.__END
			Pointer.AutoTravelFrame.t2 = CHAIN(Pointer.AutoTravelFrame:CreateTexture(nil,"OVERLAY"))
				:SetPoint("TOPLEFT",Pointer.AutoTravelFrame,"TOPLEFT",5,0)
				:SetColorTexture(0,1,0)
				:SetSize(5,5)
				.__END
			Pointer.AutoTravelFrame.t3 = CHAIN(Pointer.AutoTravelFrame:CreateTexture(nil,"OVERLAY"))
				:SetPoint("TOPLEFT",Pointer.AutoTravelFrame,"TOPLEFT",10,0)
				:SetColorTexture(1,0,1)
				:SetSize(5,5)
				.__END
			print("creating autotravel frame")
		end

		local angle = Pointer.ArrowFrame.arrow.angle
		if angle then
			if angle>0.2 and angle<3.1415 then Pointer.AutoTravelFrame.t1:SetColorTexture(0,1,0) --green:left
			elseif angle>=3.1415 and angle<6.083 then Pointer.AutoTravelFrame.t1:SetColorTexture(1,0,0) --red:right
			else Pointer.AutoTravelFrame.t1:SetColorTexture(0,0,0) --black:none
			end

			-- TODO distance
		end
	end
end

function Pointer.QuestPOI_PointToMe(poiBut,args)
	if not ZGV.db.profile.point_to_pois then return end
	local _
	if not poiBut.questId then _,poiBut = poiBut:GetPoint() end  -- the "Swap Frame", whatever that is... Dig the quest POI button out of it.
	--local _,_,_,x,y=poiBut:GetPoint(1)
	--local parent = poiBut:GetParent()
	--x= x/parent:GetWidth()/poiBut:GetEffectiveScale()*1.409
	--y=-y/parent:GetHeight()/poiBut:GetEffectiveScale()*1.409
	local questId = poiBut.questId or poiBut.quest.questId
	_,x,y=QuestPOIGetIconInfo(questId)
	Pointer:ClearWaypoints("manual")
	--Pointer:SetWaypoint(nil,nil,x,y,{title=ZGV.questsbyid[poiBut.questId].title,type="manual"},true)
	Pointer:SetWaypoint(nil,nil,x,y,{title=ZGV.questsbyid[questId].title,type="manual",onminimap="always",overworld=true,showonedge=true,findpath=true},true)
end
--[[
function Pointer.QuestWatchPOI_PointToMe(poiBut,args)
	do return end
	if not ZGV.db.profile.point_to_pois then return end
	local _
	if not poiBut.questId then _,poiBut = poiBut:GetPoint() end  -- the "Swap Frame", whatever that is... Dig the quest POI button out of it.
	local _,_,_,x,y=poiBut:GetPoint(1)
	local parent = poiBut:GetParent()
	x= x/parent:GetWidth()/poiBut:GetEffectiveScale()*1.409
	y=-y/parent:GetHeight()/poiBut:GetEffectiveScale()*1.409
	Pointer:ClearWaypoints("manual")
	--Pointer:SetWaypoint(nil,nil,x,y,{title=ZGV.questsbyid[poiBut.questId].title,type="manual"},true)
	local way = Pointer:SetWaypoint(nil,nil,x,y,{title=ZGV.questsbyid[poiBut.questId or poiBut.quest.questId].title,type="manual",onminimap="always",overworld=true,showonedge=true},true)
	Pointer:FindTravelPath(way)
end
--]]

-- WAYPOINT CYCLING
function Pointer:CycleWaypoint(delta,nocycle,step)
	delta=delta or 1
	ZGV:Debug("Cycling waypoint "..(delta>0 and "forward" or "back"))
	--if lastCycleMilli==GetFrameTimeMilliseconds() then lastCycles=lastCycles+1 end  if lastCycles>10 then return end
	--lastCycleMilli=GetFrameTimeMilliseconds()  lastCycles=0

	--local CS=ZGV.CurrentStep
	--local CW = ZGV.Pointer.current_waypoint
	local CW = ZGV.Pointer.DestinationWaypoint
	local CS = step
		or (CW and CW.goal and CW.goal.parentStep)
		or (CW and CW.pathnode and CW.pathnode.waypoint and CW.pathnode.waypoint.goal and CW.pathnode.waypoint.goal.parentStep)
		or ZGV:GetFocusedStep()

	if not CS then ZGV:Debug("CycleWaypoint: no step, sorry") return end
	CS.current_waypoint_goal_num = CS.current_waypoint_goal_num or (delta>1 and 0 or #CS.goals)
	
	
	-- -- "numberMappedGoals" removed from here. Not needed. There's a cycles check later anyway.

	local old_goal_num = CS.current_waypoint_goal_num
	local goal
	local cycles=0
	repeat
		cycles=cycles+1
		if cycles>50 then ZGV:Debug("CycleWaypoint: cycling forever, out.") return end  --cycling forever? out.
		
		CS.current_waypoint_goal_num = CS.current_waypoint_goal_num + delta

		-- do cycle, or not
		if nocycle then CS.current_waypoint_goal_num = min(max(CS.current_waypoint_goal_num,1),#CS.goals) end
		if CS.current_waypoint_goal_num>#CS.goals then CS.current_waypoint_goal_num=1 end
		if CS.current_waypoint_goal_num<1 then CS.current_waypoint_goal_num=#CS.goals end
		
		if CS.current_waypoint_goal_num==old_goal_num then ZGV:Debug("CycleWaypoint: went full cycle, out.") return end --full cycle or no change at all, abort
		
		goal=CS.goals[CS.current_waypoint_goal_num]
		if not goal then ZGV:Debug("CycleWaypoint: went out of goals!!!") return end

	until goal and goal.x and not goal.force_noway and goal:IsVisible()

	ZGV:Debug("CycleWaypoint: cycling to goal [%d]: %s, way at [%.1f %.1f]",goal.num,goal:GetText(),goal.x*100,goal.y*100) 

	-- if we have existing waypoints (we should!!)...
	if self.waypoints then
		for wi,way in ipairs(self.waypoints) do
			if way.goal==goal then
				self:FindTravelPath(way)
				if WorldMapFrame:IsShown() and (GetCurrentMapAreaID()~=way.m or GetCurrentMapDungeonLevel()~=way.f) then SetMapByID(way.m) SetDungeonMapLevel(way.f or 1) end
				break
			end
		end
	else
		local CG = CS.goals[CS.current_waypoint_goal_num] -- Current Goal
		ZGV:Debug("CycleWaypoint: setting new waypoint, no waypoints were found.")
		self:SetWaypoint(CG.map, CG.floor, CG.x, CG.y, {title=CG:GetText(),arrowtitle=CG:GetText(),arrow=true,findpath=true,type="way"}, true)
		if WorldMapFrame:IsShown() then SetMapByID(CG.map) SetDungeonMapLevel(CG.floor or 1) end
	end
	
		
	--ZGV:ShowWaypoints("goal",CS.goals[CS.current_waypoint_goal_num])
	
	--CS.goals[CS.current_waypoint_goal_num]
	--ZGV:ShowWaypoints(CS.current_waypoint_goal_num)
	--ZGV:DelayedRun("OnUpdate", function() ZGV.Viewer:Update() end)
	--zo_callLater(function() ZGV.Viewer:Update() end,1)
end

-- Cycle to given goal num... or past it, if there's no coords in it.
function Pointer:CycleWaypointTo(goalnum)
	local CS
	if type(goalnum)=="table" and goalnum.parentStep then  local goal=goalnum  CS=goal.parentStep  goalnum=goal.num  end
	CS = CS or (ZGV.Pointer.current_waypoint and ZGV.Pointer.current_waypoint.goal and ZGV.Pointer.current_waypoint.goal.parentStep) or ZGV.CurrentStep
	self:Debug("CycleWaypointTo %d",goalnum or 0)
	if not CS then return end
	CS.current_waypoint_goal_num=goalnum and (goalnum-1) or 0
	Pointer:CycleWaypoint(1,"nocycle",CS) -- Force waypoint to cycle to first one.
end

function Pointer:CycleWaypointFrom(goalnum,step)
	step.current_waypoint_goal_num = goalnum
	self:CycleWaypoint(1,"nocycle",step)
end

function Pointer:SetWaypointToGoal(goal)
	-- try to use an existing waypoint
	for wi,way in ipairs(self.waypoints) do  if way.goal and way.goal==goal then
		self:Debug("SetWaypointToGoal %d found existing way %d",goal.num,wi)
		self:CycleWaypointTo(goal)
		return
	end  end

	-- otherwise, make a manual one.
	self:Debug("SetWaypointToGoal %d had to make a new waypoint",goal.num)
	self:SetWaypoint(goal.map,goal.floor,goal.x,goal.y, goal, true)
end

function Pointer:SetArrowToFirstCompletableGoal()
	local CSg=ZGV.CurrentStep and ZGV.CurrentStep.goals
	if not CSg or #CSg==0 or #self.waypoints==0 then return end
	for wi,way in ipairs(self.waypoints) do -- show first incomplete goal
		if way.goal and way.goal.status=="incomplete" and way.goal:IsVisible() then
			return self:ShowArrow(way)
		end
	end
	for wi,way in ipairs(self.waypoints) do -- if there are no incompletes, show first not hidden one. handles passives and such
		if way.goal and way.goal:IsVisible() then
			return self:ShowArrow(way)
		end
	end

	return self:ShowArrow(self.waypoints[1]) -- still here, return first one just in case
end

function Pointer:SetWaypointByCommandLine(input)
	local map,mapid,floor,x,y

	if not input then return end
	
	map,floor,x,y = input:match("^(.-)%s*/%s*(%d+)%s+([0-9%.]+)[ ,;:]+([0-9%.]+)$")
	if not map then map,x,y = input:match("^(.-)%s+([0-9%.]+)[ ,;:]+([0-9%.]+)$") end
	if not map then map,floor = input:match("^(.-)%s*/%s*(%d+)$") end
	if not map then map=input end

	if map=="Shadowmoon Valley" and ZGV:GetPlayerPreciseLevel()>=90 then map="Shadowmoon Valley D" end
	if map=="Nagrand" and ZGV:GetPlayerPreciseLevel()>=90 then map="Nagrand D" end

	-- just a few random aliases
	if map:upper()=="SW" then  map = "Stormwind City" end
	if map:upper()=="IF" then  map = "Ironforge"  end
	if map:upper()=="ORG" then  map = "Orgrimmar"  end
	if map:upper()=="UC" then  map = "Undercity"  end
	if map:upper()=="ELWYNN" then  map = "Elwynn Forest"  end
	if map=="Stormwind" then  map = "Stormwind City" end
	if map=="Goldshire" then  map,x,y = "Elwynn Forest",42,66  end

	if not map then
		mapid=GetCurrentMapAreaID()
		floor=GetCurrentMapDungeonLevel()
	end

	if not mapid then
		-- we should have all the data now, if there is any. Localize and ID the map.
		local lmap=BZR[map] or map
		mapid=ZGV.LibRover.data.MapIDsByName[lmap]
		if tonumber(lmap) then mapid=tonumber(lmap) end
		if type(mapid)=="table" then mapid=mapid[1] end -- phases suck
		if not mapid then ZGV:Print("Unknown map: "..map) return end
	end

	if mapid and not x and not y then  x=50 y=50  end   -- default to centers of maps. Ugly, but what the heck.

	if mapid and x and y then
		ZGV.Pointer:SetWaypoint(mapid,tonumber(floor),tonumber(x)/100,tonumber(y)/100,{findpath=true,type="manual",cleartype=true,icon=ZGV.Pointer.Icons.graydot,onminimap="always",overworld=true,showonedge=true},true)
	else
		ZGV:Print("Unknown destination map.")
		--ZGV:Print("    /zygor way Stormwind 12.3 56.7")
		return
	end
end

--tinsert(ZGV.startups,function(self)
--	Pointer:SetWaypointToFirst()
--end)

function Pointer:Debug(msg,...)
	ZGV:Debug("&_SUB &pointer ".. msg, ...)
end

function Pointer:Debug_FreeWorldMapScale()
	-- Evil, evil, evil.
	local MAX_ZOOM = 30
	local function WorldMapScrollFrame_OnMouseWheel_Free(self, delta)
		local scrollFrame = WorldMapScrollFrame;
		local oldScrollH = scrollFrame:GetHorizontalScroll();
		local oldScrollV = scrollFrame:GetVerticalScroll();

		-- get the mouse position on the frame, with 0,0 at top left
		local cursorX, cursorY = GetCursorPosition();
		local relativeFrame;
		if ( WorldMapFrame_InWindowedMode() ) then
			relativeFrame = UIParent;
		else
			relativeFrame = WorldMapFrame;
		end
		local frameX = cursorX / relativeFrame:GetScale() - scrollFrame:GetLeft();
		local frameY = scrollFrame:GetTop() - cursorY / relativeFrame:GetScale();

		local oldScale = WorldMapDetailFrame:GetScale();
		local newScale = oldScale * ((delta>0) and 1.2 or 1/1.2)
		newScale = max(WORLDMAP_SETTINGS.size, newScale);
		newScale = min(MAX_ZOOM, newScale);
		WorldMapDetailFrame:SetScale(newScale);
		QUEST_POI_FRAME_WIDTH = WorldMapDetailFrame:GetWidth() * newScale;  -- These are locals in WorldMapFrame. No way to reach them, but no reason to - it only breaks anchoring of quest POIs. But this is a debug-only zoom function.
		QUEST_POI_FRAME_HEIGHT = WorldMapDetailFrame:GetHeight() * newScale;

		scrollFrame.maxX = QUEST_POI_FRAME_WIDTH - 1002 * WORLDMAP_SETTINGS.size;
		scrollFrame.maxY = QUEST_POI_FRAME_HEIGHT - 668 * WORLDMAP_SETTINGS.size;
		scrollFrame.zoomedIn = abs(WorldMapDetailFrame:GetScale() - WORLDMAP_SETTINGS.size) > 0.05;
		scrollFrame.continent = GetCurrentMapContinent();
		scrollFrame.mapID = GetCurrentMapAreaID();

		-- figure out new scroll values
		local scaleChange = newScale / oldScale;
		local newScrollH = scaleChange * ( frameX + oldScrollH ) - frameX;
		local newScrollV = scaleChange * ( frameY + oldScrollV ) - frameY;
		-- clamp scroll values
		newScrollH = min(newScrollH, scrollFrame.maxX);
		newScrollH = max(0, newScrollH);
		newScrollV = min(newScrollV, scrollFrame.maxY);
		newScrollV = max(0, newScrollV);
		-- set scroll values
		scrollFrame:SetHorizontalScroll(newScrollH);
		scrollFrame:SetVerticalScroll(newScrollV);

		WorldMapFrame_Update();
		WorldMapScrollFrame_ReanchorQuestPOIs();
		WorldMapBlobFrame_ResetHitTranslations();
		WorldMapBlobFrame_DelayedUpdateBlobs();
	end


	WorldMapScrollFrame:SetScript("OnMouseWheel",WorldMapScrollFrame_OnMouseWheel_Free)

	ZGV:Print("World Map Zooming is unlocked! Feel free to zoom in to 1000% if you like.")
end

function Pointer:TestPOIs()
	print ("Adding known POIs.")

	self:ShowSet(
		{
			coords=ZGV.Poi.Waypoints,
			ants=nil
		},
		"poi"
	)
end
