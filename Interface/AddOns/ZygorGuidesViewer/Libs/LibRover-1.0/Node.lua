LibRover_Node = {}

local Node=LibRover_Node

local
	setmetatable,ipairs,pairs,table,tremove,next,type,assert,error,tonumber,unpack
	=
	setmetatable,ipairs,pairs,table,tremove,next,type,assert,error,tonumber,unpack

-- IMPORTANT OBSERVATION.
-- Nodes are (almost) ALWAYS separated by "walk"/"fly"

local Node_meta={__index=Node}
local Node_n_meta={__mode="k"}
function Node:New(data)
	local new=data or {}
	setmetatable(new,Node_meta)
	new.n={}  -- prepare neighbours
	new.n_iftype={}
	setmetatable(new.n,Node_n_meta)
	return new
end


local Lib
local Lib_GetDist

local ZGV



local default_maxspeedinzone = {1,1,1}

--[[
function Node:AddNeigh(node,meta)
	self.n[node]=meta
end

function Node:RemoveNeigh(node)
	self.n[node]=nil
end

function Node:IterNeighs()
	return pairs(self.n)
end
--]]

function Node:AddNeigh(node,meta)
	self.n[#self.n+1]={node,meta}
	assert(node.type,"Node "..node.num.." has no type? wtf?")
	self.n_iftype[node.type]=1
end

--[[
function Node:RemoveNeigh(node_or_type,type2,type3)
	if not self.n_if[node_or_type] then return end
	local n=self.n
	for i=1,#n do
		while 1 do
			local nod=n[i]
			if nod and (nod[1]==node or nod[1].type==node_or_type) then tremove(n,i) else break end
		end
	end
end
--]]

function Node:RemoveNeighType(type1,type2,type3)
	if not self.n_iftype[type1] and not self.n_iftype[type2] and not self.n_iftype[type3] then return end
	local neighs=self.n
	local i=1
	local node=neighs[i]
	while node do
		local typ=node[1].type
		if (typ==type1 or typ==type2 or typ==type3) then tremove(neighs,i) else i=i+1 end
		node=neighs[i]
	end
	self.n_iftype[type1]=nil
	if type2 then self.n_iftype[type2]=nil end
	if type3 then self.n_iftype[type3]=nil end
end

function Node:IterNeighs()
	local k=0
	local n=self.n
	return function()
		k=k+1
		local data=n[k]
		if data then return unpack(data) else return end
	end
end

function Node:GetNeigh(node,num)
	if type(node)=="number" then node=Lib.nodes.all[node] end
	local mynum=0
	for n,meta in self:IterNeighs() do
		if n==node then
			mynum=mynum+1
			if not num or mynum==num then
				return meta
			end
		end
	end
end


-- ONE WAY. Run twice to do two-way.
-- Checks if n1 sees n2, and - if yes - adds it to neighbours.
-- node.m = map id
-- node.ms[mapid] = "does node see nodes in mapid as visible" (crossable borders)
-- node.c = cont id

-- This is called about 400000 times during Travel startup.
function Node:DoLinkage(n2)
	local n1=self

	if n1.type=="end" then return false,false,"src is end" end
	if n2.type=="start" or n2.type=="inn" then return false,false,"dest is start or inn" end

	-- NO pathfinding, only direct routes?
	if n1.type=="start" and n2.type=="end" and Lib.extradata and Lib.extradata.direct then -- let's shoot ourselves in the foot! yeah!
		n1:AddNeigh(n2,{mode="walk",cost=Lib.COST_FORCED})
		return true,true,"direct"
	end

	if n1.c~=n2.c then return false,false,"different continents" end  -- different continents don't link.
	if n1.onlyhardwire then return false,false,"src is onlyhardwire" end
	if n2.onlyhardwire and not n1.player then return false,false,"dest is onlyhardwire" end


	local canwalk,canfly,reasonwalk,reasonfly
	
	canfly,reasonfly = n1:CanFlyTo(n2)

	local meta
	if canfly then
		-- use flying mount connections to end node, if flight is available.
		-- This means let all nodes on the continent see each other, unless some special cases.

		meta = {mode="fly",implicit=true}
	else

		if reasonfly=="dest is a border" then return false,false,"dest is a border",reasonfly end  -- don't try to walk, if flight is possible

		canwalk,reasonwalk = n1:CanWalkTo(n2)
		if canwalk then
			-- do ground connections

			meta = {mode="walk",implicit=true,reason=reasonwalk}

			-- clear neighs cache
			--local neighs=n1.neighs
			--if not neighs then neighs={} n1.neighs=neighs else wipe(neighs) end

			--DEBUG
			--[[
			if n1.debug or n2.debug then
				Lib:Debug(n1:tostring().."  --WALK--  "..n2:tostring())
				Lib:Debug("n2.dark: "..tostring(n2.dark).."  startnode? "..tostring(n1==Lib.startnode))
			end
			--]]

			-- MEMORY HOG: store costs NOW.
		end
	end

	if meta then

		n1:AddNeigh(n2,meta)

		--if n2.type=="end" and n1.status=="closed" then n1.status="canopen"  end  --##start_end_optimization: off

		if n1.dark or n2.dark then
			if n1==Lib.startnode then
				meta.mud=10  -- let's be a little bit lenient on the starts
			elseif n2.type=="end" then
				meta.mud=100  -- ends better be damn close.
			end
			-- This difference causes routes to have easy starts, but precise endings.
		end

		-- The "dark" nodes can still see start/end nodes, but through a "mud" penalty.
		-- This guarantees that starts/ends within some special low-visibility areas get connected to the closest explicit node only, with no excessive beelining.
		if n1.dark or n2.dark then
			if n1==Lib.startnode then
				meta.mud=10  -- let's be a little bit lenient on the starts
			elseif n2.type=="end" then
				meta.mud=100  -- ends better be damn close.
			end
			-- This difference causes routes to have easy starts, but precise endings.
		end

	end

	--debuggy return:
	return canwalk,canfly,reasonwalk,reasonfly,meta and meta.mode

	--[[
	for t,to in pairs(n1.taxi) do
		if (#to==2 and to[1]==n2.l[1] and to[2]==n2.l[2]) -- they see us using "see all zone"
		or ((type(to)==number or type(to)==string) and n2.id==to) -- direct link to us
		then
			n1.n[i]=WAY_TAXI
		end
	end
	--]]
end
--DNL=DoNodeLinkage  --global


function Node:GetActionTitle(prevnode,nextnode)
	--if self.title_a and prevnode=self and nextnode=self.border then return self.title_a end
	--if self.title_b and prevnode=self and nextnode=self.border then return self.title_a end
	local atitle = self.actiontitle
	if type(atitle)=="function" then atitle=atitle(self,prevnode,nextnode) end
	if atitle then return Lib.L[atitle] end
end

function Node:GetActionIcon(prevnode,nextnode)
	local icon = self.actionicon
	if type(icon)=="function" then icon=icon(self,prevnode,nextnode) end
	return icon
end


function Node:GetTextAsItinerary()
	if self.waypoint and self.waypoint.goal then return self.waypoint:GetTitle() end  -- DISPLAY WAYPOINT TEXT AT FINAL NODE when it's goal-bound.
	return self.text  -- baked itinerary form
		or self:GetText()
end

-- Run as node:GetText().
-- Additional params allow for contextualization - give a node its predecessor and successor, and get proper "ship from..." display.
function Node:GetText(prevnode,nextnode,dir)
	local MapName = Lib.MapName
	local prevstep,nextstep
	if prevnode and prevnode.node then prevstep,prevnode = prevnode,prevnode.node end
	if nextnode and nextnode.node then nextstep,nextnode = nextnode,nextnode.node end

	local function FromTo(strfrom,strto)
		if prevnode and prevnode==self.border then return strfrom else return strto end
	end

	local title = self.title
	if type(title)=="function" then title=title(self,prevnode,nextnode) end
	if title then return Lib.L[title] end

	if Lib.debug_verbose_nodes then
		return ("[%d] %s %d %d,%d (%s)"):format(self.num,GetMapNameByID(self.m or 0) or "world",self.m,self.x*100,self.y*100,self.type)

	elseif self.type=="border" then
		--if fromnode and fromnode.n[node] and fromnode.n[node].border then
			--local border = fromnode.n[node].border
			--return ("%s border"):format(GetMapNameByID(fromnode:GetText()) or dstmap)
		--else
			--return ("%s/%s border"):format(GetMapNameByID(self.border[1]) or self.border[1],GetMapNameByID(self.border[2]) or self.border[2])
		--end
		return ("%s/%s border"):format(MapName(self),MapName(self.border or self.ms and next(self.ms)))
	elseif self.type=="taxi" then
		return ("%s flight point"):format(self.name)
	elseif self.type=="ship" then
		local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
		return FromTo("Ship from %s","Ship to %s"):format(destportname)
	elseif self.type=="zeppelin" then
		local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
		return FromTo("Zeppelin from %s","Zeppelin to %s"):format(destportname)
	elseif self.type=="tram" then
		--local dest=self.border.port or (nextnode.m~=self.m and nextnode) or (prevnode.m~=self.m and prevnode)
		local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
		return FromTo("Tram from %s","Tram to %s"):format(destportname)
	elseif self.type=="portal" then
		if self.border and self.m==self.border.m then
			return ("Portal")
		elseif self.border and self.border~="multi" then -- should have one! though portals tend to have common destination points, account for that too.
			local destportname = self.border.port and ("%s, %s"):format(self.border.port,MapName(self.border)) or self.border.name or MapName(self.border)
			return FromTo("Portal from %s","Portal to %s"):format(destportname)
		elseif prevnode then
			local destportname = prevnode.port or prevnode.name or MapName(prevnode)
			return FromTo("Portal from %s","Portal to %s"):format(destportname)
		else
			return "Portal destination"
		end
		--if not srcmap then
			--return ("%s/%s portal"):format(GetMapNameByID(self.n[fromnode]border[1]),GetMapNameByID(self.border[2]))
		--else
		--	local dstmap = self.border[1]==srcmap and dstmap or srcmap
		--	return ("Portal %s %s"):format(dir=="src" and "to" or "from",GetMapNameByID(dstmap))
		--end
	elseif self.type=="inn" then
		return self.name or "Unknown Inn"
	elseif self.type=="garrison_inn" then
		return "Garrison Inn"
	else
		return ("%s %d,%d"):format(MapName(self),self.x*100,self.y*100)
	end
end

function Node:tostring(withneighs)
	local ret = ("[%d] %s\"%s\" = %s %d /%d %.1f,%.1f [%s]"):format(self.num, (self.id and "@"..self.id.." " or ""), self:GetText() or "\"#"..self.num.."\"", Lib.MapName(self.m), self.m, self.f, self.x*100,self.y*100, self.type or "type?")
	if self.is_arrival then  ret = ret .. " (arrival)" end
	ret = ret .. (" (%s)"):format(self.status or "untouched")
	if self.border_optimization then local bo=self.border_optimization  ret = ret .. (" (b/o:%s)|r"):format((bo=="border" and "|cffff4400bd|r") or (bo=="taxi" and "|cff88ff00tx|r") or (bo=="ignore" and "|cff0088ffig|r"))  end
	if self.region then  ret = ret .. (" (REG:|cff0088ff%s|r)"):format(self.region)  end
	if self.type=="taxi" then  ret = ret .. (" |cff8899aa(taxi %s|cff8899aa)"):format((self.known==true and "|cff00ff00known") or (self.known==false and "|cffff0000unknown") or "|cffffaa00?")  end
	if self.parentlink then  ret = ret .. (" |cff8899aa(mode:|cffffffff%s|cff8899aa from [|cffffffff%d|cff8899aa])"):format(self.parentlink.mode,self.parent.num)  end
	if (self.a_b__c_d and self.a_b__c_d~="") then ret = ret .. (" |cff888888(context:|cff00aa55%s|cff888888)"):format(self.a_b__c_d)
	elseif (self.a_b and self.a_b~="") then ret = ret .. (" |cff888888(context:|cff00aa55%s|cff888888)"):format(self.a_b) end
	if self.mytime then ret = ret .. (" |cff888888[my t=|cff55aa00%.1f|cff888888/|cff77ee00%.1f|cff888888]"):format(self.mytime or -1,self.mycost or -1) end
	if self.time then ret = ret .. (" |cff888888(t=|cff00aa55%.1f|cff888888/|cff00ee77%.1f|cff888888"):format(self.time or -1,self.cost or -1) end
	if self.score and self.score~=self.cost then  -- heuristics get detailed displays
		ret = ret .. (", score=|cff00ee77%.1f|cff888888)"):format(self.score or -1)
	else
		ret = ret .. ")"
	end
	if self.costdesc and self.costdesc~="" then  ret = ret .. " COST DEBUG: " .. self.costdesc  end

	if self.waypoint then ret = ret .. " (waypt: " .. (self.waypoint:GetTitle() or self.waypoint.num or "?") .. ")" end

	if withneighs then
		local neighs = ""
		for n,link in self:IterNeighs() do neighs=neighs.." ".. n:tostring().." <"..(link.mode or "?")..">\n" end
		ret = ret .. "\nLinks:\n"..neighs
	end
	return ret
end

local atan2=atan2
function Node:GetAngleTo(node2)
	local dist,xd,yd = Lib_GetDist(self,node2)
	if not xd then return end
	local dir = atan2(xd, -yd)
	return dir%360
end

-- Checks if player can walk towards the destination. If this returns true, DoLinkage will create a "walk"-type connection.
local ZGV_Pointer_phasedMaps
local Lib_data_basenodes_FloorCrossings
local neighbourhood_cache
function Node:CanWalkTo(dest,debugmode)
	--if type(dest)=="number" then dest=Lib.nodes.all[dest] end

	local n1=self
	local n2=dest

	if n1==n2 then return false,"same node" end

	local n1_m=n1.m
	local n2_m=n2.m

	-- use the cache!
	if neighbourhood_cache then
		local n1hood = neighbourhood_cache[n1.num]
		if n1hood then
			local n12hood = n1hood and n1hood[n2.num]
			if n12hood then  return n12hood==1 or n12hood==3,"cached"  end
		end
	end


	local reason=""
	if (debugmode) then
		if n1.m==n2.m then reason=reason.."same map; "
		elseif (ZGV_Pointer_phasedMaps[n1.m]==ZGV_Pointer_phasedMaps[n2.m]) then reason=reason.."same phased map; "
		end
		if n1.region==n2.region then reason=reason.."same region; " end
		if (n2.ms and n2.ms[n1.m]) then reason=reason.."n2 visible from n1.ms; " end
		if Lib.greenborders:CanCross(n1.m,n2.m) then reason=reason.."greenborder cancross: "..n1.m.." "..n2.m.."; " end
		if (n1.regionobj and n1.regionobj:HasGreenBorder(n2.m,n2.f)) then reason=reason.."n1.regionobj has green border to n2.m "..n2.m.."; " end
		if (n2.regionobj and n2.regionobj:HasGreenBorder(n1.m,n1.f)) then reason=reason.."n2.regionobj has green border to n1.m "..n1.m.."; " end
	end

	if (n1.type~="start" and n1.type~="end" and n2.type~="start" and n2.type~="end" and (n1.dark or n2.dark)) then return false,"nodes in dark zone: ["..(n1.dark and "src" or "")..(n2.dark and "dst" or "").."]" end -- don't connect in dark; startnode and endnode ARE allowed to connect, though - we'll just run a "mud" penalty for beelines later.
	if (n2.m==41 and n2.f==0 and (n1.y-0.8)*(n2.y-0.8)<0) then return false,"stupid rut'theran hack" end -- Darnassus! Unwalkable to Rut'n! TEMPORARY... --TODO: make this a region.

	if Lib.greenborders:CanCross(n1.m,n2.m) then return true,"green border" end
	-- or any of the nodes is in a green-bordered region; these are parts of zones that somehow logically belong to another zone, NOT their true zone.
	
	-- for i,nodemeta in ipairs(self.n) do if nodemeta[1]==dest and nodemeta[2].hardwired then return false,"hardwired" end end
	-- added when designing the "override" system, but didn't work because "walk" connections were created earlier, implicitly. May come in handy to prevent additional implicit walk connections...

	if n1.regionobj and n1.regionobj:HasGreenBorder(n2_m,n2.f) then return true,"green region 1" end
	if n2.regionobj and n2.regionobj:HasGreenBorder(n1_m,n1.f) then return true,"green region 2" end

	if ( -- same map, at least phase-wise, or the points are set as "guests" on the other map
		-- Checking this last, as there are many more NOT same-map dots to rule out first.
		(
		 n1_m==n2_m
		 -- or same phased map
		 or (ZGV_Pointer_phasedMaps[n1_m]==ZGV_Pointer_phasedMaps[n2_m])  -- same phased map
		 --or (n1.ms and n1.ms[n2_m])  -- same "surrogate" map, one way or another
		 or (n2.ms and n2.ms[n1_m])
		)
		-- and same floor, if that matters
		and ((n1.f==n2.f) or not Lib_data_basenodes_FloorCrossings[n1_m])
		-- and same region
		and (n1.region==n2.region)
	) then return true,reason
	else return false,reason
	end
end

local flightinzone
-- Checks if player can fly in a beeline towards the destination.

function Node:CanFlyTo(dest)
	local m=self.m
	local Lib=Lib

	-- use the cache!
	if neighbourhood_cache then
		local n1hood = neighbourhood_cache[self.num]
		if n1hood then
			local n12hood = n1hood and n1hood[dest.num]
			if n12hood then  return n12hood>=2,"cached"  end
		end
	end

	local dest_m = dest.m
	local dest_c = dest.c

	--if type(dest)=="number" then dest=Lib.nodes.all[dest] end

	-- is flight even possible for the player? check so late because it's costly.
	-- or is it...
	local flyspeed = flightinzone[m]
	if not flyspeed then return false,"can't fly in",m end

	if not dest_c then return false,"no dest continent!?" end
	if not (dest_c==self.c and dest_c>=0) then return false,"not same cont" end

	if dest==self then return false,"same node" end
	if self.onlyhardwire then return false,"src is onlyhardwire" end
	if dest.onlyhardwire and not self.player then return false,"dest is onlyhardwire" end
	if (dest.f==21 and dest_m==30 and self.c==14) or (self.f==21 and m==30 and dest.c==14) then return true,"dest is Dalaran Deadwind #30/21" end  -- LEGION temp? Dalaran is flying over Deadwind Pass, but it registers as Elwynn /21.
	if not (dest.c==self.c and dest.c>=0) then return false,"not same cont" end
	if self.type=="border" and not self.border_in_flight then return false,"src is a border" end
	if dest.type=="border" and not dest.border_in_flight then return false,"dest is a border" end
	if dest.nofly or self.nofly then return false,"either is nofly" end
	if Lib.zone_is_exo_or_belf[dest_m] then return false,"dest is exo or belf" end
	if (dest.type~="border" or dest.border_in_flight) and not Lib.zone_same_eastern_part(dest_m,m) then return false,"not same eastern part" end  -- DO save SOME borders for flight, like Ironforge entry
	if not Lib.zone_is_barad[dest_m]==Lib.zone_is_barad[m] then return false,"either is barad" end
	if not Lib.zone_is_vash[dest_m]==Lib.zone_is_vash[m] then return false,"either is vash" end
	--if ((dest_m==321 and dest.f==2) or (m==321 and self.f==2))  then return false,"dest is orgri cleft" end
	--if ((dest_m==504 and dest.f==2) or (m==504 and self.f==2)) then return false,"dest is dala sewer" end

	--[[
	if (m==504 and self.f==2)  -- Orgri or Dala  -- 2015-07-27 sinus: CAN fly in Orgri Cleft (321/2) for some time now.
	or (dest_m==504 and dest.f==2)
		then return false,"origin or destination is Dala underground" end
	--]]

	if m==928 or m==933 or dest_m==928 or dest_m==933 then return false,"Isle of Thunder no flying there!" end
	if m==929 then return false,"Isle of Giants" end --Can fly into this area, but not fly out of it, or around it
	if m==951 then return false,"Timeless Isle" end --Can fly into this area, but not fly out of it, or around it
	if m==499 or dest_m==499 then return false,"Isle of Quel'Danas no flying there!" end

	local m1,m2,f1,f2=m,dest.m,self.f,dest.f
	for i=1,2 do  -- "both ways"
		if m1==321 then -- Orgri -x- outdoor areas defaulting to non-0 floor
			if f1==1 and m1~=m2 and f2==0 then return true,"Orgri, fly in/out." end
		end
		if m1==504 then -- Dala: same
			if f1==1 and m1~=m2 and f2==0 then return true,"Dala N, fly in/out." end
		end
		if m1==1014 then -- Dala: same
			if f1==10 and m1~=m2 and f2==0 then return true,"Dala L, fly in/out." end
		end
		m1,m2,f1,f2=m2,m1,f2,f1 -- swap, retry
	end
	--if m==1014 and self.f==dest.f then return true,"Dala Legion, fly within your floor." end   -- TODO LEGION: maybe.

	if self.f>0 or dest.f>0 then return false,"No flying on floors. TODO sometime by supplying a list of flyable floors." end
	
	if m==dest_m and self.f~=dest.f then return false,"no flying between floors" end

	return true
end

function Node:CanConnectTo(dest)
	if type(dest)=="number" then dest=Lib.nodes.all[dest] end
	for neigh,neighmeta in self:IterNeighs() do
		if neigh==dest then return neighmeta end
	end
end

function Node:AssignRegion(regionobj)
	-- handle {indoors}
	if type(self.indoors)=="string"
	and self.type~="start" -- don't add new regions for every subzone the player walks into...
	then
		local err
		regionobj,err = Lib.NodeRegions:AddNewRegion{name=self.indoors,mapzone=self.m,zonematch="*/*/*/".. self.indoors,indoors=self.indoors and 1,nofly=1}
		if err then
			error(err or "wtf? oddly bad simpleregion definition: ".. self.indoors)
		end
		self.indoors=not not self.indoors
	end

	if not regionobj then
		Lib.NodeRegions:Assign(self)
	else
		self.region = regionobj.name
		self.regionobj = regionobj
		self.dark = self.dark or regionobj.dark
		self.nofly = self.nofly or regionobj.nofly
		self.minizone = self.minizone or regionobj.minizone  -- will be there after zonematch is parsed
		if regionobj.indoors then self.indoors = true end
	end
end

function Node:AssignSpecialMap()
	Lib.SpecialMapNodeData:Assign(self)
end

function Node:Parse(text)
	local _
	if not text then return end
	local dat
	if type(text)=="table" then
		-- Hardcore, aren't we? we have an advanced node here!
		-- Expecting something like   {"Map/12 33,44", foo="bar", fee="fum"}
		-- Start by extracting the plain string from the table.
		dat=text
		text=text[1]
		dat[1]=nil
	else
		dat={}
	end

	-- advanced or not, treat it as a normal all-string parsable node.
	local function grab_dat(s)
		s=s:gsub("%%GT%%",">")
		local k,v = s:match("(.-):(.+)")
		dat[k]=v
		return ""
	end
	text=text:gsub("%s*<(.-)>",grab_dat)

	-- now extract map and coords.
	text=text:match("^%s*(.-)%s*$") or text  --trim
	local rest,id = text:match("^(.-)%s*@(%S+)$")  -- "Map/1 12,34 @id"
	if id and rest=="" then -- just id!
		if id:sub(1,1)=="!" then
			-- COPY the old node! This is wasteful, but necessary, as special spell/item nodes can't handle multiple arrivals yet.
			id=id:sub(2)
			local node = Lib.nodes.id[id]
			if node then return node.m,node.f,node.x,node.y,id,dat end
		end
		return nil,nil,nil,nil,id
	end
	text=rest~="" and rest or text
	local m,x,y = text:match("^(.-)[%s,]+(%-?[0-9%.]+),(%-?[0-9%.]+)$")
	local f
	if m then -- split /floor from map
		_,f = m:match("^(.-)%s*/%s*(%d+)$")
		m = _ or m
	end
	m=m or text  -- could be just the zone, after all.
	m = tonumber(m) or Lib.data.MapIDsByName[m] -- pure numeric zone? supported!
	if type(m)=="table" then m=m[1] end

	assert(m,"Bad map in Node:Parse('"..text.."')")

	return m,tonumber(f) or 0,x and tonumber(x)/100,y and tonumber(y)/100,id,dat
end

function Node:GetDebugNeighs()
	local t={}
	for neigh,meta in self:IterNeighs() do t[meta]=neigh end
	return t
end



function Node:InterfaceWithLib(lib)
	Lib=lib
	Lib_GetDist = Lib.GetDist
	ZGV=ZygorGuidesViewer
	ZGV_Pointer_phasedMaps=	ZGV.Pointer.phasedMaps
	Lib_data_basenodes_FloorCrossings=Lib.data.basenodes.FloorCrossings
end
function Node:CacheMaxSpeeds()
	flightinzone={}
	for z,zd in pairs(Lib.maxspeedinzone) do flightinzone[z] = zd[3] end
end
function Node:NeighbourhoodCache_Localize()
	neighbourhood_cache = Lib.data.neighbourhood
end
function Node:NeighbourhoodCache_Kill()
	neighbourhood_cache = nil
end
