local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local length = Engine.Core.Length
local spairs = Engine.Core.SPairs

Engine.Modules = {}

-- Initialize the engine.
function Engine:OnInitialize()
	Settings:Initialize()

	-- Initialize all modules
	for name, module in spairs(self.Modules, ByPriority) do
		module:Initialize()
	end

	Engine:InitializeBuild()
end

-- Called when the addon is enabled.
function Engine:OnEnable()
	-- Enable modules in priority order
	for name, module in spairs(self.Modules, ByPriority) do
		local settings = Settings:Get(name)
		if settings.Enabled then
			module:Enable()
		end
	end
end

-- Called when the addon is disabled.
function Engine:OnDisable()
	-- Disable modules
	for name, module in pairs(Engine.Modules) do
		module:Disable()
	end
end

-- Get an existing module instance.
function Engine:GetModule(name)
	return self.Modules[name]
end

-- Initializes and registers an engine module instance.
-- Optionally attach to an existing table instance.
function Engine:RegisterModule(name, instance)
	local module = instance or {}

	module.Name = module.Name or name
	module.Priority = module.Priority or length(self.Modules)
	if module.IsImmediate == nil then
		module.IsImmediate = true
	end

	module.Enabled = false
	module.Component = CreateFrame("Frame", string.format("%s%sFrame", Engine.AddOnName, name))

	-- Register the module instance
	self.Modules[name] = module
	
	-- Activity registration
	module.Initialize = function(self)
		if self.IsImmediate then
			if type(self.OnInitialize) == "function" then
				self:OnInitialize()
			end
		else
			module.Component:RegisterEvent("PLAYER_ENTERING_WORLD")
			module.Component:SetScript("OnEvent", function(self, event)
				if type(module.OnInitialize) == "function" then
					module:OnInitialize()
				end

				local settings = Settings:Get(module.Name)
				if settings.Enabled then
					module.Enabled = true
					if type(module.OnEnable) == "function" then
						module:OnEnable()
					end
				end

				module.Component:UnregisterEvent("PLAYER_ENTERING_WORLD")
			end)
		end
	end
	module.Enable = function(self)
		if self.IsImmediate and not self.Enabled then
			self.Enabled = true
			if type(self.OnEnable) == "function" then
				self:OnEnable()
			end
		end
	end
	module.Disable = function(self)
		if self.Enabled then
			self.Enabled = false
			if type(self.OnDisable) == "function" then
				self:OnDisable()
			end
		end
	end

	-- Defaults registration
	module.RegisterDefaults = function(self)
		if type(self.OnRegisterDefaults) == "function" then
			return self:OnRegisterDefaults()
		end
		return {}
	end

	-- Options registration
	module.RegisterOptions = function(self)
		if type(self.OnRegisterOptions) == "function" then
			self:OnRegisterOptions()
		end
	end
	
	-- Script registration
	module.Component.Scripts = {}
	module.RegisterScript = function(self, event, func)
		self.Component.Scripts[event] = func
		self.Component:SetScript(event, func)
	end
	module.UnregisterScript = function(self, event)
		self.Component.Scripts[event] = nil
		self.Component:SetScript(event, nil)
	end
	module.UnregisterAllScripts = function(self)
		for name, _ in pairs(self.Component.Scripts) do
			self.Component:SetScript(name, nil)
		end
		self.Component.Scripts = {}
	end

	-- Event registration
	module.Component.Events = {}
	module:RegisterScript("OnEvent", function(self, event, ...)
		local func = module.Component.Events[event]
		if type(module[func]) == "function" then
			module[func](module, event, ...)
		end
	end)
	module.RegisterEvent = function(self, event, func)
		self.Component.Events[event] = func or event
		self.Component:RegisterEvent(event)
	end
	module.UnregisterEvent = function(self, event)
		self.Component.Events[event] = nil
		self.Component:UnregisterEvent(event)
	end
	module.UnregisterAllEvents = function(self)
		self.Component.Events = {}
		self.Component:UnregisterAllEvents()
	end

	return module
end

-- Calculates a comparable build number for use in modules. This
-- number can be stored in a module's settings to determine if a
-- new version is running and migrate data if necessary.
-- e.g. Version 1.2.3 will become Build 102030
function Engine:InitializeBuild()
	self.Build = 0

	-- Parse the version string into segments
	local i = 1
	local segments = {}
	for segment in string.gmatch(self.Version, "([^.]+)") do
		segments[i] = tonumber(segment)
		i = i + 1
	end

	-- Calculate the build number
	local build = 0
	for i = 1, #segments do
		self.Build = self.Build + (segments[i] * math.pow(10, 7 - (i * 2)))
	end
end

-- SPairs function that sorts by module priority.
local function ByPriority(t, a, b)
	return t[a].Priority < t[b].Priority
end