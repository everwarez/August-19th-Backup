local Engine, Api, Locale, Settings = unpack(Immersive)

Engine.Core = {}

-- Outputs a message to the default chat window when in debug mode.
Engine.Core.Debug = function (message, ...)
	message = message or ""
	if Settings:IsDebug() then
		print("|cffffbb00DEBUG: |cffffffff" .. message, ...)
	end
end

-- Calculates the number of properties in a table.
Engine.Core.Length = function(t)
	local count = 0
	for _ in pairs(t) do
		count = count + 1
	end
	return count
end

-- Outputs a message to the default chat window.
Engine.Core.Output = function (message, ...)
	message = message or ""
	print("|cffffbb00" .. Engine.AddOnName .. ": |cffffffff" .. message, ...)
end

-- Packs a variable number of parameters into a table array.
Engine.Core.Pack = function(...)
	return { n = select("#", ...), ... }
end

-- Sorted table pairs iterator
Engine.Core.SPairs = function(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a, b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end