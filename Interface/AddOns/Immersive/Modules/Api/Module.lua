local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local output = Engine.Core.Output
local pack = Engine.Core.Pack

-- Constants
local INTERVAL = 0.1

-- Registration
Api = Engine:RegisterModule("Api", Api)
Api.Elements = {}
Api.Conditions = {}
Api.Modes = {}
Api.Queue = {}

Api.DelayTime = 1.0
Api.FadeTime = 1.0
Api.IsHotspot = true
Api.IsPanic = false

local Scale = 0
local Throttle = 0

-- Initialize the module.
function Api:OnInitialize()
	self:RegisterMode("ALL", Api.ModeAll, Locale.API_MODE_ALL_TITLE)
	self:RegisterMode("ANY", Api.ModeAny, Locale.API_MODE_ANY_TITLE)
	self:RegisterMode("HIDDEN", Api.ModeHidden, Locale.API_MODE_HIDDEN_TITLE)
end

-- Called when the module is enabled.
function Api:OnEnable()
	local settings = Settings:Get(self.Name)
	self.DelayTime = settings.DelayTime
	self.FadeTime = settings.FadeTime

	Scale = UIParent:GetEffectiveScale()
	
	INTERVAL = settings.Performance / 1000
	self:RegisterScript("OnUpdate", Api.OnUpdate)
	
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "OnExitCombat")
end

-- Called when the module is disabled.
function Api:OnDisable()
	self:UnregisterScript("OnUpdate")
end

-- Register the default settings for the module.
function Api:OnRegisterDefaults()
	return {
		Enabled = true,
		DelayTime = 1.0,
		FadeTime = 1.0,
		Performance = 100
	}
end

-- Executes a function that can be blocked by the Blizzard UI.
function Api:ExecuteProtected(func)
	if UnitAffectingCombat("player") then
		table.insert(Api.Queue, func)
	else
		func()
	end
end

-- Gets the scaled position of the cursor.
function Api:GetCursorPosition()
	local x, y = GetCursorPosition()
	x = x / Scale
	y = y / Scale

	return x, y
end

-- Gets the scaled position of the cursor.
function Api:GetContainableRect(...)
	local frames = pack(...)
	local left, bottom, width, height = frames[1]:GetRect()
	for i = 1, frames.n do
		local l, b, w, h = frames[i]:GetRect()
		left = math.min(left, l)
		bottom = math.min(bottom, b)
		if l + w > left + width then
			width = (l + w) - left
		end
		if b + h > bottom + height then
			height = (b + h) - bottom
		end
	end
	return left, bottom, width, height
end

-- Called during the client frame update.
function Api:OnUpdate(elapsed)
	if not Api.IsPanic then -- Do not update while in panic mode
		Throttle = Throttle + elapsed
		if Throttle >= INTERVAL then
			Throttle = Throttle - INTERVAL
			for name, element in pairs(Api.Elements) do
				element:Update(elapsed)
			end
		end
	end
end

-- Called when the player exits combat.
function Api:OnExitCombat()
	for i = 1, table.getn(Api.Queue) do
		local func = Api.Queue[i]
		func()
	end
	Api.Queue = {}
end

-- This method is global so it can be called from the bindings xml.
function TimeToPanic()
	if not Api.IsPanic then
		-- Player has activated Panic mode! disable all element fading.
		Api.IsPanic = true
		for name, element in pairs(Api.Elements) do
			element:Reset()
		end
		output(Locale.FRAMEWORK_PANIC_MODE_ACTIVATE)
	else
		-- Player has deactivated Panic mode. Enable elements and allow the Api update to run again.
		Api.IsPanic = false
		output(Locale.FRAMEWORK_PANIC_MODE_DEACTIVATE)
	end
end