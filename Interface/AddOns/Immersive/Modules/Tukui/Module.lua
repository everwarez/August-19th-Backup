local Engine, Api, Locale, Settings = unpack(Immersive)

-- Registration
local Tukui = Engine:RegisterModule("Tukui", { IsImmediate = false })

-- Initialize the module.
function Tukui:OnInitialize()
end

-- Called when the module is enabled.
function Tukui:OnEnable()
	-- Unregister any elements added by the Default module
	-- that interfere or are not used.
end

-- Called when the module is disabled.
function Tukui:OnDisable()
end

-- Register the default settings for the module.
function Tukui:OnRegisterDefaults()
	return { Enabled = false }
end