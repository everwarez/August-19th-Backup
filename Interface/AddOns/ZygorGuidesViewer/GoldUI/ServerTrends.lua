local name,ZGV=...

local ZGVG=ZGV.Gold

ZGVG.ServerTrends={}

local Trends=ZGVG.ServerTrends

Trends.dumps={}
Trends.olddumps={}

local TRENDS_OLD = 4 * 24 --h

tinsert(ZGV.startups,{"Servertrends",function(self)
	for i,dump in ipairs(Trends.dumps) do
		Trends:DoImport(dump)
	end
	--if not ZGV.db.profile.debug then Trends.dumps=nil end
end})

function Trends:ImportQuick() --DEPRECATED.
	ZGV:ShowDump("","Paste server scan data into the box:\n(DEPRECATED. Will break with full dumps. Use the files, Luke!)")
	local but=ZGV.dumpFrameBasic.OKButton
	but.oldtext = but:GetText()
	but.oldclick = but:GetScript("OnClick")
	but:SetText("IMPORT")
	but:SetScript("OnClick",function(self)
		local text = ZGV.dumpFrameBasic.editBox:GetText()
		Trends:DoImport(text,"loud")

		ZGV.dumpFrameBasic:Hide()

		-- restore old functionality
		but:SetText(but.oldtext)
		but:SetScript("OnClick",but.oldclick)
		but.oldtext,but.oldclick = nil,nil
	end)
end

function Trends:ImportServerPrices(header,data)
	if not data then
		tinsert(Trends.dumps,header) -- old style data
	else
		tinsert(Trends.dumps,{header,data})
	end
end

function Trends:DoImport(dumpdata,loud)
	ZGV:Debug("&trends Server Prices import starting...")

	if type(dumpdata)~="table" then
		Trends:DoOldImport(dumpdata,loud)
		return
	end

	local data = {}

	local inputheader = dumpdata[1]
	local inputdata = dumpdata[2]

	for field,value in pairs(inputheader) do
		data[field]=value
	end

	if not data.columns then
		ZGV:Print("Server Trends import just failed..? No column definitions")
	end

	local columns = {}
	for i,name in pairs(data.columns) do
		columns[i]=name
	end

	data.items = {}

	for itemid,itemdata in pairs(inputdata) do
		if id==itemid then break end -- pet cage, if some unprocessed slipped by
		data[itemid] = {}
		local idata=data[itemid]
		for i,value in pairs(itemdata) do
			idata[columns[i]] = value
		end
	end

	if data.items then
		if data.realm=="GLOBAL" then
			ZGV.Gold.servertrends_global = data
		else
			ZGV.Gold.servertrends = data
			local h_old = floor(time() - (data.date or 0))/3600
			local h_color = h_old<TRENDS_OLD and "|cff44ff00" or "|cffff0000"
			ZGV:Print(("Server Trends for %s imported, %s%d hours old."):format(GetRealmName(), h_color, h_old))
			if h_old<TRENDS_OLD then ZGV:Print("- Status: up to date.") else ZGV:Print("- Status: outdated, please use the Zygor Client to update.") end
		end
		ZGVG:Update()
	else
		ZGV:Print("Server Trends import just failed..? No items found...")
	end
end

function Trends:DoOldImport(text,loud)
	ZGV:Debug("&trends Server Prices import starting...")

	text = text .. "\n"

	local linecount=0

	local data = {}

	local index=1
	while (index<#text) do
		local st,en,line=string.find(text,"(.-)\n",index)
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>100000 then
			ZGV:Print("More than 100000 lines!?")
			break
		end

		--[[
		line = line:gsub("^[%s	]+","")
		line = line:gsub("[%s	]+$","")
		line = line:gsub("//.*$","")
		line = line:gsub("||","|")
		--]]

		if not data.items then
			local cmd,params = line:match("([^%s]*)=(.*)")
			if cmd then data[cmd]=params end
			if cmd=="columns" then
				local columnstxt = data.columns
				data.columns={}
				for s in string.gmatch(columnstxt,"[^,]+") do
					local num=tonumber(s)
					tinsert(data.columns,num or s)
				end
			end
			if data.items then data.items={} end  -- end of header, if this is seen.
		else
			-- header is over, yay or nay?
			if data.realm and data.realm~=GetRealmName() and data.realm~="GLOBAL" then
				ZGV:Debug("&trends Wrong realm! This data is for the "..data.realm.." realm, you're on "..GetRealmName().."!")
				return
			end

			local id
			local n=1
			local itemdata={}
			for i in string.gmatch(line,"%d+") do
				if not id then id=tonumber(i)  else  itemdata[data.columns[n]]=tonumber(i)  n=n+1  end
				if id==82800 --[[pet cage--]] then break end
			end
			if id and next(itemdata) then data.items[id]=itemdata end
		end
	end

	-- realm and faction were checked before, if we're here, then they're fine.

	if type(data)~="table" then
		ZGV:Debug("Server Trends failed to import: no table in:\n".. tostring(data))
	elseif data.items then
		if data.realm=="GLOBAL" then
			ZGV.Gold.servertrends_global = data
		else
			ZGV.Gold.servertrends = data
			local h_old = floor(time() - (data.date or 0))/3600
			local h_color = h_old<TRENDS_OLD and "|cff44ff00" or "|cffff0000"
			ZGV:Print(("Server Trends for %s imported, %s%d hours old."):format(GetRealmName(), h_color, h_old))
			if h_old<TRENDS_OLD then ZGV:Print("- Status: up to date.") else ZGV:Print("- Status: outdated, please use the Zygor Client to update.") end
		end
		ZGV.Goldguide:Update()
	else
		ZGV:Print("Server Trends import just failed..? No items found...")
	end
end