local ZGV=ZygorGuidesViewer
if not ZGV then return end

local HBD=ZGV.HBD
local pins=ZGV.HBDPins
local mapData=HBD.mapData


local hbd_continents = {GetMapContinents()}
HBD.Continents={}
local conts = {GetMapContinents()}
for i=1,#conts,2 do
	HBD.Continents[(i+1)/2]=conts[i]
end

--- Get the map id of continent for given map
-- @param mapID - map id foe checking
-- @return mapID - continent mapID if exists, or current map
function HBD:GetMapContinent(mapID)
	-- overrides. UGLY!!!
	if mapID==1037 then return 1007 end
	local hbd_continent
	if mapData[mapID] then hbd_continent = mapData[mapID].C end

	return HBD.Continents[hbd_continent] or mapID
end

function HBD:FixPhasedContinents()
	mapData[1037].C = 8
end

local PI2 = math.pi * 2

function pins:GetDirectionToIcon( icon )
	-- TODO : rework to use real values
	local data = pins.minimapPins[icon];
	if ( data ) then
		local x, y, instance = HBD:GetPlayerWorldPosition()
		return HBD:GetWorldVector(instance, x, y, data.x, data.y)
	end
end

function pins:GetDistanceToIcon( icon )
	local data = pins.minimapPins[icon];
	if ( data ) then
		local oX, oY, instanceID = HBD:GetPlayerWorldPosition()
		if not oX then return end
		local dist, detalx, deltay = HBD:GetWorldDistance(instanceID, oX, oY, data.x, data.y)
		return dist, detalx, deltay
	end
end

--- Bug fixing
-- Maelstorm dimensions
-- for i=1,4 do mapData[751][i]=mapData[737][i] end
