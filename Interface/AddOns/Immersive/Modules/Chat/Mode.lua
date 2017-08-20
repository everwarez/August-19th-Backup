local Engine, Api, Locale, Settings = unpack(Immersive)

local Chat = Engine:GetModule("Chat")

-- A special mode that supresses the chat frame from appearing and instead
-- presents the player the gems coloured according to the channel receiving
-- messages.
function Chat:ModeGems(element)
	-- If the hotspot setting is disabled then perform the same
	-- hotspot check but only if the frame is shown. This will keep
	-- the frames open if they are being interacted with, but not
	-- display them if they are hidden.
	if not element.IsHotspot and #element.Frames > 0 and element.Frames[1]:IsShown() then
		local x, y = Api:GetCursorPosition()
		for i = 1, #element.Hotspots do
			local left, bottom, width, height = unpack(element.Hotspots[i])
			if x >= left and x <= (left + width) and y >= bottom and y <= (bottom + height) then
				return true
			end
		end
	end

	for i = 1, #element.Conditions do
		-- If at least one condition is true, show the frames
		local condition = element.Conditions[i]
		if (condition.Func()) then
			return true
		end
	end
	return false
end