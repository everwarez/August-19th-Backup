local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local debug = Engine.Core.Debug

-- Constants
local INTERVAL = 1.0
local MILLISECONDS_IN_SECOND = 1000.0

local Configuration = Engine:GetModule("Configuration")

local Label = nil
local IsEnabled = false
local Throttle = 0

-- Registers the addon profiler.
function Configuration:RegisterProfiler()
	Label = Configuration:CreateLabel({ Panel = self.Component, Name = "CPUUsage", Layer = "OVERLAY", Inherit = "TextStatusBarText" })
	Label:SetPoint("BOTTOMRIGHT", self.Component, "BOTTOMRIGHT", -10, 10)
end

-- Enables the addon profiler.
function Configuration:EnableProfiler()
	-- Required for CPU profiling to operate
	if GetCVar("scriptProfile") == 0 then
		SetCVar("scriptProfile", 1)
		debug(Locale.CONFIG_RELOAD_REQUIRED)
	end

	self:RegisterScript("OnUpdate", Configuration.OnUpdate)
	IsEnabled = true
end

-- Disables the addon profiler.
function Configuration:DisableProfiler()
	if IsEnabled then
		self:UnregisterScript("OnUpdate")
		IsEnabled = false
	end
end

-- Called during the client frame update.
function Configuration:OnUpdate(elapsed)
	-- Throttle update to run only once per second
	Throttle = Throttle + elapsed
	if Throttle >= INTERVAL then
		Throttle = Throttle - INTERVAL

		-- Calculate the percentage of CPU time used by the addon in a single second
		UpdateAddOnCPUUsage()
		Label:SetText(string.format(Locale.CONFIG_CPU_USAGE, (GetAddOnCPUUsage(Engine.AddOnName) / MILLISECONDS_IN_SECOND) * 100.0))
		ResetCPUUsage()
	end
end