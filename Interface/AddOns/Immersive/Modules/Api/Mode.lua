local Engine, Api, Locale, Settings = unpack(Immersive)

-- Get all available modes for specified element
function Api:GetAvailableModes(element)
	local modes = {}
	for name, mode in pairs(self.Modes) do
		if #mode.Restrictions > 0 and element ~= nil then
			-- There are restrictions in place for this mode, ensure the
			-- element is marked as compatible
			for i = 1, #mode.Restrictions do
				if mode.Restrictions[i] == element.Name then
					table.insert(modes, mode)
				end
			end
		else
			table.insert(modes, mode)
		end
	end
	return modes
end

-- Get an existing mode handler.
function Api:GetMode(name)
	return self.Modes[name]
end

-- Initializes and registers a mode handler.
function Api:RegisterMode(name, validate, title)
	local mode = {}
	mode.Name = name
	mode.Validate = validate
	mode.Title = title or name
	mode.Restrictions = {}

	self.Modes[name] = mode
	
	return mode
end

-- Specifies a mode where all conditions must be met before
-- activating a frame.
function Api:ModeAll(element)
	-- If all conditions are true, show the frames
	for i = 1, #element.Conditions do
		local condition = element.Conditions[i]
		if (not condition.Func()) then
			return false
		end
	end
	return true
end

-- Specifies a mode where any condition can be met before
-- activating a frame.
function Api:ModeAny(element)
	-- If at least one condition is true, show the frames
	for i = 1, #element.Conditions do
		local condition = element.Conditions[i]
		if (condition.Func()) then
			return true
		end
	end
	return false
end

-- Specifies a mode where the element will not activate
-- on any condition.
function Api:ModeHidden(element)
	-- If mode is hidden, hide the frame
	return false
end
