local Engine, Api, Locale, Settings = unpack(Immersive)

-- Forward Declaration
local GetRect

-- Extensions
local pack = Engine.Core.Pack

local Default = Engine:GetModule("Default")
local IsMouseOver = false

-- Registers the element.
function Default:RegisterBuffFrame()
	local settings = Settings:Get(self.Name).Elements["BuffFrame"]
	local buff = Api:RegisterElement("BuffFrame", settings)

	-- Add frames
	buff:AddFrame(BuffFrame)
	buff:AddFrame(ConsolidatedBuffs)

	-- Add conditions
	buff:AddConditionRange(settings.Conditions)		

	-- Add hotspots
	buff:AddHotspot(GetRect())
end

-- Unregisters the element.
function Default:UnregisterBuffFrame()
	Api:UnregisterElement("BuffFrame")
end

-- Calculate the containable rectangle of the BuffFrame, this
-- frame is only used as an anchor point, so the width and height
-- are not indicative of how the buffs/debuffs are placed.
GetRect = function()
	local left, bottom, width, height = BuffFrame:GetRect()
	local right = left + width
	local top = bottom + height

	left = left - ((BUFFS_PER_ROW - 1) * (BUFF_BUTTON_HEIGHT + math.abs(BUFF_HORIZ_SPACING)))
	bottom = bottom - ((BUFF_MAX_DISPLAY / BUFFS_PER_ROW) * (BUFF_BUTTON_HEIGHT + BUFF_ROW_SPACING))
	return left, bottom, right - left, top - bottom
end