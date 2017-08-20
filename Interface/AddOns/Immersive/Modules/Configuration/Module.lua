local Engine, Api, Locale, Settings = unpack(Immersive)

-- Registration
local Configuration = Engine:RegisterModule("Configuration", { Priority = 100, IsImmediate = false })

-- Initialize the module.
function Configuration:OnInitialize()
	-- Register module options, force Configuration to run first
	Configuration:RegisterOptions()
	
	-- Delay the registration of module options until after all modules are registered
	for name, module in pairs(Engine.Modules) do
		if name ~= "Configuration" then
			module:RegisterOptions()
		end
	end

	Configuration:RegisterProfiles()

	-- Register the debug profiler, this component was necessary in the early days of
	-- Immersive as the fading animation was done manually, this meant the validation
	-- event which checks every frame added ran once per frame (checking hundreds
	-- of frames 60+ times per second!! MADNESS!!). Immersive was reworked to
	-- utilise the Animation widget which is a far better approach. We'll leave this
	-- here incase performace ever becomes an issue in the future and debugging is
	-- necessary
	self:RegisterProfiler()
end

-- Called when the module is enabled.
function Configuration:OnEnable()
	if Settings:IsDebug() then
		self:EnableProfiler()
	end
end

-- Called when the module is disabled.
function Configuration:OnDisable()
	Configuration:DisableProfiler()
end

-- Register the default settings for the module.
function Configuration:OnRegisterDefaults()
	return { Enabled = true }
end