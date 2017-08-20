local Engine, Api, Locale, Settings = unpack(Immersive)

-- Get an existing condition.
function Api:GetCondition(name)
	return self.Conditions[name]
end

-- Initializes and registers a condition.
function Api:RegisterCondition(name, func, title, tooltip)
	local condition = {}
	condition.Name = name
	condition.Func = func
	condition.Title = title or name
	condition.Tooltip = tooltip or ""

	self.Conditions[name] = condition
	
	return condition
end

-- Unregisters an condition.
function Api:UnregisterCondition(name)
	self.Conditions[name] = nil
end

-- Unregisters all conditions.
function Api:UnregisterAllConditions()
	local conditions = Api.Conditions
	for name, condition in pairs(conditions) do
		self:UnregisterCondition(name)
	end
end