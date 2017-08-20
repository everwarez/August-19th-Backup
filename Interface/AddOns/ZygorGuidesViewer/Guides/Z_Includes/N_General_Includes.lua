if UnitFactionGroup("player")~="Neutral" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
	You need to pick faction before accessing any auctioneers.
]])