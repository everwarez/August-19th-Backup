local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT = ZGV.Font
local CHAIN = ZGV.ChainCall
local L=ZGV.L

local Poi = {}
ZGV.Poi = Poi
ZGV.Poi.Guide = nil
ZGV.Poi.ActivePoiStepNum = nil

local ITEM_LEVEL_FILTER = string.gsub(ITEM_LEVEL,"%%d","(.*)")
local ITEM_MIN_LEVEL_FILTER = string.gsub(ITEM_MIN_LEVEL,"%%d","(.*)")
local ITEM_SLOTS_ARRAY = {INVTYPE_2HWEAPON, INVTYPE_AMMO, INVTYPE_BAG, INVTYPE_BODY, INVTYPE_CHEST, INVTYPE_CLOAK, INVTYPE_FEET, INVTYPE_FINGER, INVTYPE_HAND, INVTYPE_HEAD, INVTYPE_HOLDABLE, INVTYPE_LEGS, INVTYPE_NECK, INVTYPE_QUIVER, INVTYPE_RANGED, INVTYPE_RANGEDRIGHT, INVTYPE_RELIC, INVTYPE_ROBE, INVTYPE_SHIELD, INVTYPE_SHOULDER, INVTYPE_TABARD, INVTYPE_THROWN, INVTYPE_TRINKET, INVTYPE_WAIST, INVTYPE_WEAPON, INVTYPE_WEAPONMAINHAND, INVTYPE_WEAPONMAINHAND_PET, INVTYPE_WEAPONOFFHAND, INVTYPE_WRIST}

local POI_TYPES = {
	[1] = {keyword="achievement",display="Achievements"},
	[2] = {keyword="battlepet",display="Battle pets"},
	[3] = {keyword="rare",display="Rares"},
	[4] = {keyword="treasure",display="Treasures"},
	[5] = {keyword="questobjective",display="Quest Objective"},
	}

Poi.OwnedTypes = {}

local poisteps={}

function Poi:RegisterPoiGuide()
	if not ZGV.db.profile.poienabled then return end

	Poi.Guides = {}

	for i,guide in pairs(ZGV.registeredguides) do
		if guide.poi then
			if not guide.fully_parsed then
				guide:Parse(true)
			end
			table.insert(Poi.Guides,guide) 
		end
	end

	ZGV:SendMessage("ZYGOR_POI_REGISTERED_GUIDE", "done")
end

function Poi:CheckValidity(poistep,register)
	if ZGV.db.profile.hideguide[poistep.poitype] then
		return false -- poi type hidden
	end

	if poistep.poitype == "battlepet" then
		return not ZGV.PetBattle:HasPetByDisplay(poistep.poipet)
	elseif poistep.poitype=="treasure" or poistep.poitype=="rare" then
		return not IsQuestFlaggedCompleted(poistep.poiquest)
	elseif poistep.poitype=="achievement" then
		if poistep.poisubachieve then
			if GetAchievementNumCriteria(poistep.poiachieve) < poistep.poisubachieve then -- Causes errors when blizzard changes crap.
				ZGV:Print("POI for %d/%d cannot load - subachive missing.",poistep.poiachieve,poistep.poisubachieve)
				return false
			end
			return not (select(3,GetAchievementCriteriaInfo(poistep.poiachieve,poistep.poisubachieve)))
		else
			-- full achievement
			local temp = {GetAchievementInfo(poistep.poiachieve)}
			return not (select(4,GetAchievementInfo(poistep.poiachieve)))
		end
	elseif poistep.poitype=="questobjective" then
		if register then 
			-- we want to register the poi regardless of what guide is loaded
			return true
		else
			-- but after that, it is valid if its parent guide is active
			return poistep.parentGuide.title==ZGV.CurrentGuide.title
		end
	else
		return true
	end
end


function Poi:RegisterPoints()
	Poi.Points = {}

	local previndex=1

	for j,guide in pairs(Poi.Guides) do
		for i,step in pairs(guide.steps) do
			if step.poiname then
				local valid_poi = Poi:CheckValidity(step,true)
				if not step:AreRequirementsMet() then valid_poi = false end

				Poi.OwnedTypes[step.poitype]=true
				
				if valid_poi then
					step.is_poi = true
					--[[
					if ZGV.Poi.ActivePoiWasFocused and ZGV.Poi.ActivePoiStepNum and ZGV.Poi.ActivePoiStepNum==step.num then
						step.isFocused = true
					end
					--]]
					if step.poipet then Poi.ModelTooltip:SetCreature(step.poipet) end -- request model from server

					if step.poitype=="questobjective" then 
						-- default quest markers to switch guide to proper step, rather than show poi as sticky
						step.poiquestmode = step.poiquestmode or "inline"
					end

					step.stepstart = i
					step.stepend = i
					step.ident = j.."_"..i

					Poi.Points[j.."_"..i] = step

					previndex = j.."_"..i
				else
					ZGV.db.char.ActivatedPois[i] = nil
					previndex = false
				end
			else
				if previndex and Poi.Points[previndex] then
					Poi.Points[previndex].stepend = i
				end
			end
		end
	end
	ZGV:SendMessage("ZYGOR_POI_REGISTERED_POINTS", "done")
end

function Poi:RefreshMapIcons()
	local cdb = ZGV.db.char
	for i,point in pairs(ZGV.Pointer.waypoints) do
		if point.poiNum and point.storedData then
			local active = (cdb.ActivatedPois[point.poiNum] or cdb.ActivatedInlinePois[point.poiNum]) and "_on" or ""	
			point:SetIcon(ZGV.Pointer.Icons[(ZGV.Poi.Points[point.poiNum].poitype)..active]) 

			if not Poi:CheckValidity(point.storedData) then
				cdb.ActivatedPois[point.poiNum] = nil
				cdb.ActivatedInlinePois[point.poiNum] = nil
				ZGV.Pointer:RemoveWaypoint(point)
			end
		end
	end
end

function Poi.Waypoint_OnClick(way,button)
	if UnitAffectingCombat("player") then return end

	local poi = way.waypoint.storedData

	if button=="LeftButton" then
		-- deactive all current pois
		if poi.poitype=="questobjective" and poi.poiquestmode=="inline" then
			table.wipe(ZGV.db.char.ActivatedInlinePois)
		else
			table.wipe(ZGV.db.char.ActivatedPois)
		end

		local currentState = way.waypoint.isActivated
		for i,point in pairs(ZGV.Pointer.pointsets["zgv_poi_"..Poi.DisplayedPoiSet].points) do
			point.isActivated = false
		end

		way.waypoint.isActivated = not currentState

		if poi.poitype=="questobjective" and poi.poiquestmode=="inline" then
			ZGV.db.char.ActivatedInlinePois[way.waypoint.poiNum]=way.waypoint.isActivated 
			if way.waypoint.isActivated then
				ZGV:FocusStep(poi.stepstart)
				way.waypoint:SetIcon(ZGV.Pointer.Icons.questobjective_on)
			else
				ZGV:FocusStep(1)
				way.waypoint:SetIcon(ZGV.Pointer.Icons.questobjective)
			end
		else
			ZGV.db.char.ActivatedPois[way.waypoint.poiNum]=way.waypoint.isActivated 
			if way.waypoint.isActivated then
				ZGV:SetStepFocus(way.waypoint.storedData)
				way.waypoint:SetIcon(ZGV.Pointer.Icons[way.waypoint.storedData.poitype.."_on"])
			elseif not way.waypoint.isNear then
				ZGV.Poi.Points[way.waypoint.poiNum].is_expanded = false
				way.waypoint:SetIcon(ZGV.Pointer.Icons[way.waypoint.storedData.poitype])
			end
		end
		Poi:RefreshMapIcons()
		ZGV:UpdateFrame(true)
	end
end

function Poi.Waypoint_GetTooltipData(way)
	local newpoi = Poi.Points[way.poiNum]

	local tooltipdata = {}
	tooltipdata.ZGV_OPTIONS = {}
	if newpoi.poitype=="treasure" then	
		table.insert(tooltipdata,"|cffffffffTreasure: "..newpoi.poiname) 
	end
	if newpoi.poitype=="rare" then 
		table.insert(tooltipdata,"|cffffffffRare: "..newpoi.poiname) 
		if newpoi.poilvl-UnitLevel("player")>3 then
			table.insert(tooltipdata,"|cffee0000Warning: This NPC will be hard to solo at your level") 
		end
	end
	if newpoi.poitype=="battlepet" then 
		table.insert(tooltipdata,"|cffffffffPet: "..newpoi.poiname) 
		table.insert(tooltipdata,"|cffffffffLevel: "..newpoi.poipetlevel) 
		if newpoi.poilvl-UnitLevel("player")>3 then
			table.insert(tooltipdata,"|cffee0000Warning: Mobs in this area will be hard to solo at your level") 
		end
		if newpoi.poipet then
			tooltipdata.ZGV_OPTIONS.MODEL = newpoi.poipet
		end
		if newpoi.poiachievename then
			table.insert(tooltipdata,"|cffffffffSource: Reward for "..newpoi.poiachievename)
		elseif newpoi.poinpc then
			table.insert(tooltipdata,"|cffffffffSource: Sold by "..newpoi.poinpc)
		else
			table.insert(tooltipdata,"|cffffffffSource: Capture")
		end
	end
	if newpoi.poitype=="achievement" then 
		local achievename = "|cffffffffAchievement: "..newpoi.poiachievename
		if newpoi.poisubachievename then
			achievename = achievename.." ("..newpoi.poisubachievename..")"
		end
		table.insert(tooltipdata,achievename) 
		if newpoi.poilvl-UnitLevel("player")>3 then
			table.insert(tooltipdata,"|cffee0000Warning: Mobs in this area will be hard to solo at your level") 
		end
	end

	local itemtooltip = {}
	if newpoi.poiitemid then
		table.insert(itemtooltip,"|cffffffffReward:")
		
		for _,itemdata in pairs(newpoi.poiitemdata) do
			if itemdata.item == "RANDOM" then
				_,_,_,color = GetItemQualityColor(2)
				table.insert(itemtooltip,{text=	((itemdata.value and itemdata.value.." ") or "")..("|c"..(color or "ffffffff")).."Random green"..(tonumber(itemdata.value or 1) > 1 and "s" or ""), icon=ZGV.DIR.."\\Skins\\poirandomgreen"})
			else
				local first_line = #itemtooltip+1
				MyScanningTooltip:SetOwner(UIParent, "ANCHOR_NONE")
				MyScanningTooltip:SetItemByID(itemdata.item)

				local ilvl, minlevel, slot = nil, nil, nil
				local name, link, _, _, _, _, _, _, _, icon = ZGV:GetItemInfo(tonumber(itemdata.item))


				for i=1,MyScanningTooltip:NumLines() do
					local toolline=_G["MyScanningTooltipTextLeft"..i] 
					if toolline then
						local skip = false
						local r, g, b, a = toolline:GetTextColor()
						local color = ("|c%02x%02x%02x%02x"):format(a*255,r*255,g*255,b*255)
						local text = toolline:GetText()
						if string.match(text, ITEM_LEVEL_FILTER) then ilvl = string.match(text, ITEM_LEVEL_FILTER) skip = true end -- item level, store for later
						if string.match(text, ITEM_MIN_LEVEL_FILTER) then minlevel = string.match(text, ITEM_MIN_LEVEL_FILTER) skip = true end -- min level, store for later
						if text==ITEM_BIND_ON_PICKUP then skip=true end -- bop info, skip
						for _,STRING in pairs(ITEM_SLOTS_ARRAY) do -- item slot, store for later
							if text==STRING then slot = text skip = true end
						end

						if string.match(text, '"') and color=="|cfefed100" then skip=true end -- flavour text, skip

						if not skip then table.insert(itemtooltip,{text=color..text,indent=true}) end
					end
				end
				local details = nil
				if minlevel then details = (details or "|cffffffff") .. LEVEL.." "..minlevel end
				if ilvl then details = (details or "|cffffffff") .." i"..ilvl end
				if slot then details = (details or "|cffffffff") .." "..slot end

				if itemdata.value then -- if we have info on how many items, attach that to item name
					itemtooltip[first_line].text = itemtooltip[first_line].text.. "|r x "..itemdata.value
				end
				
				if details then table.insert(itemtooltip,first_line+1,{text=details,indent=true}) end
				--if icon then itemtooltip[first_line].icon = icon end -- disabled in 7.0.3 - tooltips do not support numeric textures, and there is no way to get string texture
				--if not icon then tooltipdata.ZGV_OPTIONS.REFRESH=true end
				if not name then tooltipdata.ZGV_OPTIONS.REFRESH=true end
			end
			table.insert(itemtooltip,"|cffffffff|r")
		end
	end

	local currencytooltip = {}
	if newpoi.poicurrencydata and #newpoi.poicurrencydata>0 and (newpoi.poitype=="treasure" or newpoi.poitype=="rare") then
		table.insert(currencytooltip,"|cffffffffCurrency:")

		for _,currency in pairs(newpoi.poicurrencydata) do
			table.insert(currencytooltip,{text="|cffffffff".."|T"..currency.icon..":0|t "..currency.type})
		end
		table.insert(currencytooltip,"|cffffffff|r")
	end
	if newpoi.poicurrencydata and #newpoi.poicurrencydata>0 and (newpoi.poitype=="battlepet") then
		local data = {}

		for _,currency in pairs(newpoi.poicurrencydata) do
			table.insert(data,"|cffffffff"..(currency.value and currency.value.." " or "").."|T"..currency.icon..":0|t")
		end
		table.insert(currencytooltip,"|cffffffffCost: "..table.concat(data,", ").."|cffffffff|r")
	end

	for i,v in pairs(itemtooltip) do table.insert(tooltipdata,v) end
	for i,v in pairs(currencytooltip) do table.insert(tooltipdata,v) end

	if ZGV.db.char.ActivatedPois[newpoi.stepstart] and not way.isNear then
		table.insert(currencytooltip,"|cffffffff|r")
		table.insert(tooltipdata,"|cffffaa00Click to remove from Guide Viewer|r") 
	else
		table.insert(currencytooltip,"|cffffffff|r")
		table.insert(tooltipdata,"|cffffaa00Click to send to Guide Viewer|r") 
	end

	return tooltipdata
end

function Poi:RegisterWaypoints()
	Poi.Waypoints = {}
	local collectedt = 0
	local collectedr = 0
	Poi.DoneLoadingPoints = false

	for i,poi in pairs(Poi.Points) do  repeat
		if (ZGV.db.profile.poitype==1 and poi.access=="Quick") or  -- quick mode
		   (ZGV.db.profile.poitype==2)  -- complete mode, ignore access type
		   then
			if Poi:CheckValidity(poi) then -- we do not care about pois that are already completed
				local newway = {}
				newway.map = poi.starts_m
				newway.floor = poi.starts_f or 0
				newway.x = poi.starts_x
				newway.y = poi.starts_y
				if not ZGV.softassert(newway.map and newway.x and newway.y,"No map/x/y in POI #"..i.." "..(poi.name or "unnamed")) then break end  --continue

				newway.title = poi.name


				if ZGV.db.char.ActivatedPois[i] then
					newway.icon = ZGV.Pointer.Icons[poi.poitype.."_on"]
				else
					newway.icon = ZGV.Pointer.Icons[poi.poitype]
				end

				newway.OnClick = ZGV.Poi.Waypoint_OnClick

				newway.tooltipdata = ZGV.Poi.Waypoint_GetTooltipData

				newway.isNear=false
				newway.onminimap = "zone"
				newway.onworldmap = "zone"
				newway.storedData = poi

				newway.poiNum = i
				
				Poi.Waypoints[newway.map] = Poi.Waypoints[newway.map] or {}
				table.insert(Poi.Waypoints[newway.map],newway)
				--Poi.Waypoints[i] = newway
			end --/quest
		end --/type
	until true  end

	ZGV:SendMessage("ZYGOR_POI_REGISTERED_WAYS", "done")
end

function Poi:DisplayPois(forceRefresh)
	--if not ZGV.DEV then ZGV.Poi.Waypoints={} return end  --devwall
	if not ZGV.db.profile.poienabled then return end
	if not ZGV.Poi.Waypoints then return end

	Poi.Ready = true

	local mapid,_ = GetCurrentMapAreaID()

	if not Poi.Waypoints[mapid] and not forceRefresh then return end

	if Poi.DisplayedPoiSet~=mapid or forceRefresh then
		ZGV.Pointer:ClearSet("zgv_poi_"..Poi.DisplayedPoiSet)

		Poi.DisplayedPoiSet = mapid
		ZGV.Pointer:Thread_ShowSet(
			{
				coords=ZGV.Poi.Waypoints[Poi.DisplayedPoiSet],
				ants=nil
			},
			"zgv_poi_"..Poi.DisplayedPoiSet
		)
		Poi.DoneLoadingPoints = true
	end
end

Poi.NearPois = {}
Poi.CachedCombatPoi = {}
function Poi:GetNearPois()
	table.wipe(Poi.NearPois)
	if not ZGV.db.profile.poienabled then return Poi.NearPois end
	--if not ZGV.Pointer.pointsets.poi then return {} end
	--if UnitOnTaxi("player") then return {} end
	if UnitIsGhost("player") then return Poi.NearPois end

	--if not ZGV.DEV then return {} end  --devwall point.subachieve

	local ActivePoiNum = nil

	for i,v in pairs(ZGV.db.char.ActivatedPois) do
		if v and Poi.Points[i] then
			if not Poi:CheckValidity(Poi.Points[i]) then
				i=nil
				--Poi:RefreshMapIcons()
			else
				ActivePoiNum = i
			end
		end
	end

	-- if player is in combar, Keep active poi visible no matter what.
	if UnitAffectingCombat("player") then
		if ActivePoiNum then 
			if not Poi.CachedCombatPoi[ActivePoiNum] then
				Poi.CachedCombatPoi[ActivePoiNum] = Poi.Points[ActivePoiNum]
			end
		end
		return Poi.CachedCombatPoi
	else
		table.wipe(Poi.CachedCombatPoi)
	end

	if not ActivePoiNum then return Poi.NearPois end
	if not Poi:CheckValidity(Poi.Points[ActivePoiNum]) then return Poi.NearPois end

	table.insert(Poi.NearPois,Poi.Points[ActivePoiNum])

	return Poi.NearPois
end

function Poi:GetPoisAtPlayer()
	return {}
end

function Poi:GetListOfPois()
	table.wipe(poisteps)

	if not ZGV.db.profile.poienabled then return poisteps end
	if not Poi.DoneLoadingPoints then return poisteps end


	local nearpois = Poi:GetNearPois()
	--local poimode = ZGV.db.profile.poimode or 1
	--local poimax = ZGV.db.profile.poimax or 1
	local poiindex = 1

	for nearpoisindex,poi in pairs(nearpois) do
		--if poiindex > poimax then
		--	break -- we are only showing poimax steps
		--end

		local announce_index = poi.stepstart
		local announce_ident = poi.ident
		local announce_guide = poi.parentGuide

		for index=poi.stepstart,poi.stepend do -- find first not completed poi step
			if not announce_guide.steps[index]:IsComplete() then
				announce_index = index
				announce_ident = announce_guide.steps[index].ident
				break
			end
		end

		Poi.Points[announce_ident].is_expanded = true
		poisteps[poiindex] = announce_guide.steps[announce_index]

		poiindex = poiindex + 1
	end

	local prevPoint = Poi.ActivePoiStepNum
	Poi.ActivePoiStepSet = false
	Poi.ActivePoiStepNum = nil
	--ZGV:Debug("&poi Cleared ActivePoiStepSet")


	for _,poi in ipairs(poisteps) do
		if Poi.Points[poi.ident].is_expanded then
			--ZGV:Debug("&poi Setting ActivePoiStepSet (#%d, \"%s\")",poi.num,poi.poiname)
			Poi.ActivePoiStepSet = true
			Poi.ActivePoiStep = poi
			Poi.ActivePoiStepNum = poi.ident
		end
	end

	if Poi.ActivePoiStepSet and prevPoint ~= Poi.ActivePoiStep.ident then 
	-- we have a new active poi, show its goto dots, hide old ones
		ZGV:Debug("&poi We have a new active poi, show its goto dots, hide old ones.")
		--ZGV.Pointer:ClearWaypoints("poigoto") -- sinus: Waypoints:ShowWaypoints now does this.
		--Poi.ActivePoiStepDisplayed = false
		ZGV:ShowWaypoints()
	end
	if Poi.ActivePoiStepSet and prevPoint == Poi.ActivePoiStep.ident and not Poi.ActivePoiStepDisplayed then 
	-- prevent setwaypoint called from step focus from readding existing dots
		ZGV:Debug("&poi Poi step displayed.")
		Poi.ActivePoiStepDisplayed = true
	end
		
	if not Poi.ActivePoiStepSet and prevPoint then
	-- no active poi, hide goto dots and reset waypoint to default
		ZGV:Debug("&poi no active poi, hide goto dots and reset waypoint to default.")
		ZGV.Pointer:ClearWaypoints("poigoto")
		ZGV:ScheduleTimer(function() ZGV:ShowWaypoints() end,0)
	end

	if not Poi.ActivePoiStepSet and (ZGV.CurrentStep and not ZGV.CurrentStep.isFocused) then
	-- no active poi, return focus to main step
		ZGV:SetStepFocus(ZGV.CurrentStep)
	end

	Poi.CurrentPoiSteps = poisteps
	return poisteps
end

function Poi:ChangeState(enable)
	--if not ZGV.DEV then enable=false end  --devwall

	if ZGV.Poi.ActivePoiStep and ZGV.Poi.ActivePoiStep.isFocused then
		ZGV.Poi.ActivePoiWasFocused=true
	end

	if enable then 
		Poi:Thread_RegisterPoiGuide() 
	else
		ZGV.Pointer:ClearSet("zgv_poi_"..Poi.DisplayedPoiSet)
		Poi.Points = {}
	end
end

function Poi:ShowMapButtons()
	if not WorldMapFrame then return end
	if Poi.MapButtonFrame then return end

	--if not ZGV.DEV then return end  --devwall

	Poi.MapButtonFrame = CHAIN(CreateFrame("FRAME","ZygorPoiMapButtonFrame",ZGV.Pointer.OverlayFrame))
		:SetPoint("BOTTOMLEFT",WorldMapScrollFrame,"BOTTOMLEFT",5,-20)
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:Show()
	.__END

	Poi.MapButton = CHAIN(CreateFrame("Button", "ZygorPoiMapButton" , Poi.MapButtonFrame))
		:SetSize(20,20)
		:SetPoint("TOPLEFT", Poi.MapButtonFrame, "TOPLEFT", 5, -5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\zglogo-back"})
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() Poi:ShowMapMenu() end)
		:Show()
	.__END
	Poi.MapButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)
end

function Poi:ShowMapMenu()
	--if not ZGV.DEV then return end  --devwall

	local self=ZGV.Poi.MapButtonFrame 
	if not self.menu then self.menu = CreateFrame("FRAME",self:GetName().."Menu",self,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(self.menu, 0, 0, "BOTTOMLEFT", self, "BOTTOMRIGHT")
	local menu = {}

	if ZGV.db.profile.poienabled then 
		tinsert(menu,{
				text = L['opt_poidisable'],
				tooltipTitle = L['opt_poidisable'],
				tooltipText = L['opt_poidisable_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Poi","poienabled off") ZGV.Poi:ChangeState(false) end,
				notCheckable=0,
			})
	--[[
		tinsert(menu,{
				text = L['opt_poirange'],
				tooltipTitle = L['opt_poirange'],
				tooltipText = L['opt_poirange_desc'],
				hasArrow = true,
				menuList = {
					{ text = L['opt_poirange_50'], checked = function() return (ZGV.db.profile.poirange==50) end, func = function() ZGV.db.profile.poirange=50 end },
					{ text = L['opt_poirange_100'], checked = function() return (ZGV.db.profile.poirange==100) end, func = function() ZGV.db.profile.poirange=100 end },
					{ text = L['opt_poirange_150'], checked = function() return (ZGV.db.profile.poirange==150) end, func = function() ZGV.db.profile.poirange=150 end },
					{ text = L['opt_poirange_200'], checked = function() return (ZGV.db.profile.poirange==200) end, func = function() ZGV.db.profile.poirange=200 end },
					{ text = L['opt_poirange_250'], checked = function() return (ZGV.db.profile.poirange==250) end, func = function() ZGV.db.profile.poirange=250 end },
					{ text = L['opt_poirange_300'], checked = function() return (ZGV.db.profile.poirange==300) end, func = function() ZGV.db.profile.poirange=300 end },
				},
				notCheckable=1,
			})
	--]]

		local poiTypeList = {}
		for i=1,#POI_TYPES do
			local keyword,display = POI_TYPES[i].keyword,POI_TYPES[i].display
			if Poi.OwnedTypes[keyword] then
				tinsert(poiTypeList,
						{ text = display,
						keepShownOnClick=true, 
						checked = function() return not ZGV.db.profile.hideguide[keyword] end, 
						func = function() 
							if ZGV.db.profile.hideguide[keyword] then
								ZGV.db.profile.hideguide[keyword] = nil
							else
								ZGV.db.profile.hideguide[keyword] = true
							end
							ZGV.Poi:ChangeState(true) 
							UIDropDownFork_Refresh(self.menu) 
						end }
				)
			end
		end

		tinsert(menu,{
				text = L['opt_poishow'],
				tooltipTitle = L['optpoishow_'],
				tooltipText = L['opt_poishow__desc'],
				hasArrow = true,
				menuList = poiTypeList,
				notCheckable=1,
			})


		tinsert(menu,{
				text = L['opt_poitype'],
				tooltipTitle = L['opt_poitype'],
				tooltipText = L['opt_poitype_desc'],
				hasArrow = true,
				menuList = {
					{ text = L['opt_poitype_quick'], 
					keepShownOnClick=true, 
					checked = function() return (ZGV.db.profile.poitype==1) end, 
					func = function() 
						ZGV.db.profile.poitype=1 
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end },
					{ text = L['opt_poitype_complete'], 
					keepShownOnClick=true, 
					checked = function() return (ZGV.db.profile.poitype==2) end, 
					func = function() 
						ZGV.db.profile.poitype=2 
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end },
				},
				notCheckable=1,
			})
		tinsert(menu,{
				text = L['opt_poioptions'],
				tooltipTitle = L['opt_poioptions'],
				tooltipText = L['opt_poioptions_desc'],
				tooltipOnButton=1,
				func = function() ZGV:OpenOptions("poi") end,
				notCheckable=0,
			})
	
	else
		tinsert(menu,{
				text = L['opt_poienabled'],
				tooltipTitle = L['opt_poienabled'],
				tooltipText = L['opt_poienabled_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Poi","poienabled on") ZGV.Poi:ChangeState(true) end,
				notCheckable=0,
			})
		tinsert(menu,{
				text = L['opt_poioptions'],
				tooltipTitle = L['opt_poioptions'],
				tooltipText = L['opt_poioptions_desc'],
				tooltipOnButton=1,
				func = function() ZGV:OpenOptions("poi") end,
				notCheckable=0,
			})
	end
	
	EasyFork(menu,self.menu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(self.menu, 300)
end


function Poi:HideMapButtons()
end

function Poi:Thread_RegisterPoiGuide()
	local thread = coroutine.create(function() Poi:RegisterPoiGuide() end)
	Poi.registration_timer = ZGV:ScheduleRepeatingTimer(function()
		coroutine.resume(thread)
		if coroutine.status(thread)=="dead" then ZGV:CancelTimer(Poi.registration_timer) end
	end,
	0.01)
end

local function EventHandler(self, event, ...)
	if event=="ZYGOR_GUIDES_PARSED" then Poi:Thread_RegisterPoiGuide() end
	if event=="ZYGOR_POI_REGISTERED_GUIDE" then Poi:RegisterPoints() end
	if event=="ZYGOR_POI_REGISTERED_POINTS" then Poi:RegisterWaypoints() end
	if event=="ZYGOR_POI_REGISTERED_WAYS" then Poi:DisplayPois("forceRefresh") end
	if event=="WORLD_MAP_UPDATE" then Poi:DisplayPois() end

	if event=="QUEST_LOG_UPDATE" 
	or event=="LOOT_READY" 
	or event=="LOOT_SLOT_CLEARED" 
	or event=="LOOT_CLOSED" 
	or event=="ENCOUNTER_LOOT_RECEIVED" 
	or event=="CHAT_MSG_CURRENCY" then 
		ZGV:ScheduleTimer(function() 
			Poi:GetListOfPois()
			ZGV:UpdateFrame(true)
			Poi:RefreshMapIcons() 
		end,0)
		ZGV:ScheduleTimer(function() 
			Poi:GetListOfPois()
			ZGV:UpdateFrame(true)
			Poi:RefreshMapIcons() 
		end,0.5)
	end
end

function Poi:CreateModelTooltip()
	Poi.ModelTooltip = CHAIN(CreateFrame("PlayerModel","temp_model",GameTooltip))
        :SetPoint("TOPLEFT",GameTooltip,"BOTTOMLEFT")
        :SetPoint("TOPRIGHT",GameTooltip,"BOTTOMRIGHT")
	:SetHeight(200)
	:SetBackdrop({
	    bgFile="Interface\\Tooltips\\UI-Tooltip-Background",
	    edgeFile="Interface\\Tooltips\\UI-Tooltip-Border",
	    tile = true, 
	    edgeSize=16,--16 
	    tileSize = 16, 
	    insets = { left = 5, right = 5, top = 5, bottom = 5 }
	    })
	:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b)
	:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b)
	:Hide()
	.__END
	function Poi.ModelTooltip:Attach(tooltip)
		Poi.ModelTooltip:SetParent(tooltip)
		Poi.ModelTooltip:SetPoint("TOPLEFT",tooltip,"BOTTOMLEFT")
		Poi.ModelTooltip:SetPoint("TOPRIGHT",tooltip,"BOTTOMRIGHT")
	end

	function Poi.ModelTooltip:DisplayCreature(creatureid)
		Poi.ModelTooltip:SetCreature(creatureid)

		local extra_data = ZygorGuidesViewer.NPCModelsExtra[creatureid]
		if not extra_data then extra_data = {cx=0,cy=0,cz=0,scale=1,camscale=1} end

		Poi.ModelTooltip:SetPosition(extra_data.cx or 0,extra_data.cy or 0,extra_data or 0)
		Poi.ModelTooltip:SetModelScale(extra_data.scale or 1)
	end
end

local function ModelTooltip_ClearTooltipData(tooltip, ...)
	Poi.ModelTooltip:Hide()
end


tinsert(ZGV.startups,{"POI hooks",function(self)
	ZGV.db.char.ActivatedPois = ZGV.db.char.ActivatedPois or {}
	ZGV.db.char.ActivatedInlinePois = ZGV.db.char.ActivatedInlinePois or {}
	ZGV.db.profile.hideguide = ZGV.db.profile.hideguide or {}
	ZGV:AddMessage("ZYGOR_GUIDES_PARSED",EventHandler)
	ZGV:AddMessage("ZYGOR_POI_REGISTERED_GUIDE",EventHandler)
	ZGV:AddMessage("ZYGOR_POI_REGISTERED_POINTS",EventHandler)
	ZGV:AddMessage("ZYGOR_POI_REGISTERED_WAYS",EventHandler)
	CreateFrame( "GameTooltip", "MyScanningTooltip", nil, "GameTooltipTemplate" )
	Poi.Events = CreateFrame("Frame")
	Poi.Events:RegisterEvent("QUEST_LOG_UPDATE")
	Poi.Events:RegisterEvent("LOOT_READY")
	Poi.Events:RegisterEvent("LOOT_CLOSED")
	Poi.Events:RegisterEvent("CHAT_MSG_CURRENCY")
	Poi.Events:RegisterEvent("ENCOUNTER_LOOT_RECEIVED")
	Poi.Events:RegisterEvent("WORLD_MAP_UPDATE")
	Poi.Events:SetScript("OnEvent",EventHandler)
	Poi:ShowMapButtons()
	Poi:CreateModelTooltip()
	GameTooltip:HookScript("OnTooltipCleared", ModelTooltip_ClearTooltipData)
	WorldMapTooltip:HookScript("OnTooltipCleared", ModelTooltip_ClearTooltipData)

	Poi.DisplayedPoiSet=0

end})
