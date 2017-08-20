local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local pack = Engine.Core.Pack

-- Constants
local MODES = { ANY = "ANY", ALL = "ALL", HIDDEN = "HIDDEN" }
local STATES = { HIDDEN = 0, FADINGOUT = 0.25, FADINGIN = 0.75, SHOWN = 1 }

-- Get an existing element instance.
function Api:GetElement(name)
	return self.Elements[name]
end

-- Initializes and registers an element instance.
function Api:RegisterElement(name, params)
	local settings = params or {}
	if settings.Enabled == nil then
		settings.Enabled = true
	end
	if settings.IsHotspot == nil then
		settings.IsHotspot = self.IsHotspot
	end

	local element = {}
	element.Name = name
	
	element.Enabled = settings.Enabled
	element.DelayTime = settings.DelayTime or self.DelayTime
	element.FadeTime = settings.FadeTime or self.FadeTime
	element.IsHotspot = settings.IsHotspot
	element.Mode = settings.Mode or MODES.ANY

	element.State = STATES.SHOWN

	-- Register the element instance
	self.Elements[name] = element

	-- Frame registration
	element.Frames = {}
	element.AddFrame = function(self, frame)
		self.Frames[#self.Frames + 1] = frame
	end
	element.RemoveFrame = function(self, frame)
		for i = 1, #self.Frames do
			if (self.Frames[i] == frame) then
				table.remove(self.Frames, i)
			end
		end
	end
	
	-- Condition registration
	element.Conditions = {}
	element.AddCondition = function(self, func)
		if type(func) == "string" then
			-- Add a single pre-registered condition
			self.Conditions[#self.Conditions + 1] = Api:GetCondition(func)
		elseif type(func) == "function" then
			-- Create a mock condition instance
			local condition = { Name = string.format("Custom (%s)", tostring(func)), Func = func }
			self.Conditions[#self.Conditions + 1] = condition
		end
		return self.Conditions[#self.Conditions]
	end
	element.AddConditionRange = function(self, range)
		-- Add all pre-registered conditions based on specified settings
		for name, value in pairs(range) do
			local condition = Api:GetCondition(name)
			if condition ~= nil and value == true then
				self.Conditions[#self.Conditions + 1] = condition
			end
		end
	end
	element.RemoveCondition = function(self, func)
		for i = 1, #self.Conditions do
			if type(func) == "string" and self.Conditions[i].Name == func then
				table.remove(self.Conditions, i)
			elseif type(func) == "function" and self.Conditions[i].Func == func then
				table.remove(self.Conditions, i)
			end
		end
	end
	
	-- Hotspot registration
	element.Hotspots = {}
	element.AddHotspot = function(self, left, bottom, width, height)
		left = left or -1
		bottom = bottom or -1
		width = width or 0
		height = height or 0

		self.Hotspots[#self.Hotspots + 1] = pack(left, bottom, width, height)
	end
	element.RemoveHotspot = function(self, left, bottom, width, height)
		for i = 1, #self.Hotspots do
			local l, b, w, h = unpack(self.Hotspots[i])
			if left == l and bottom == b and width == w and height == h then
				table.remove(self.Hotspots, i)
			end
		end
	end
	element.ClearHotspots = function(self)
		self.Hotspots = {}
	end

	-- Validate element based on conditions
	element.Validate = function(self)
		-- If any hotspot is active, show the frame
		if self.IsHotspot then
			local x, y = Api:GetCursorPosition()
			for i = 1, #self.Hotspots do
				local left, bottom, width, height = unpack(self.Hotspots[i])
				if x >= left and x <= (left + width) and y >= bottom and y <= (bottom + height) then
					return true
				end
			end
		end

		-- Validate element based on current mode
		return Api.Modes[self.Mode]:Validate(self)
	end

	-- Updates all child frames contained within the element
	element.Update = function(self, elapsed)
		-- Only update if enabled
		if self.Enabled then
			self:BeforeUpdate()
			if self:Validate() then
				-- The validate succeeded then we need to fade in the frames
				if self.State == STATES.HIDDEN then
					self.Animation.FadeIn:Play()
					self.State = STATES.FADINGIN
				elseif self.State == STATES.FADINGOUT then
					self.Animation.FadeOut:Pause()
				
					self.Animation.FadeIn.Alpha:SetFromAlpha(self.Animation:GetAlpha())
					self.Animation.FadeIn:Play()
				end
			else
				-- The conditions for display were not met, fade out the frames
				if self.State == STATES.SHOWN then
					self.Animation.FadeOut:Play()
					self.State = STATES.FADINGOUT
				elseif self.State == STATES.FADINGIN then
					self.Animation.FadeIn:Pause()
				
					self.Animation.FadeOut.Alpha:SetFromAlpha(self.Animation:GetAlpha())
					self.Animation.FadeOut.Alpha:SetStartDelay(0)
					self.Animation.FadeOut:Play()
				end
			end
			self:AfterUpdate()
		end
	end

	-- Stops all animations and resets the opacity of all frames
	element.Reset = function(self)
		self.State = STATES.SHOWN

		self.Animation.FadeIn:Stop()
		self.Animation.FadeIn.Alpha:SetFromAlpha(0)
		self.Animation.FadeIn.Alpha:SetToAlpha(1)
		
		self.Animation.FadeOut:Stop()
		self.Animation.FadeOut.Alpha:SetFromAlpha(1)
		self.Animation.FadeOut.Alpha:SetToAlpha(0)

		for i = 1, #self.Frames do
			self.Frames[i]:SetAlpha(1)
			self:FadeIn(self.Frames[i], 1)
		end
	end

	-- Events that are triggered when an element's child frame alpha is changed
	element.FadeIn = function(self, frame, alpha)
		if type(self.OnFadeIn) == "function" then
			self:OnFadeIn(frame, alpha)
		end
	end
	element.FadeOut = function(self, frame, alpha)
		if type(self.OnFadeOut) == "function" then
			self:OnFadeOut(frame, alpha)
		end
	end

	-- Event that is triggered before each element update
	element.BeforeUpdate = function(self)
		if type(self.OnBeforeUpdate) == "function" then
			for i = 1, #element.Frames do
				self:OnBeforeUpdate(element.Frames[i])
			end
		end
	end

	-- Event that is triggered after each element update
	element.AfterUpdate = function(self)
		if type(self.OnAfterUpdate) == "function" then
			for i = 1, #element.Frames do
				self:OnAfterUpdate(element.Frames[i])
			end
		end
	end
	
	-- Events triggered during an animation update or when it finishes
	element.OnFadeInUpdate = function(elapsed)
		local alpha = element.Animation:GetAlpha()
		for i = 1, #element.Frames do
			element.Frames[i]:SetAlpha(alpha)
			element:FadeIn(element.Frames[i], alpha)
		end
	end
	element.OnFadeOutUpdate = function(elapsed)
		local alpha = element.Animation:GetAlpha()
		for i = 1, #element.Frames do
			element.Frames[i]:SetAlpha(alpha)
			element:FadeOut(element.Frames[i], alpha)
		end
	end
	element.OnFadeInFinished = function()
		element.Animation.FadeOut:Stop()

		element.State = STATES.SHOWN
		element.Animation.FadeIn.Alpha:SetFromAlpha(0)
	end
	element.OnFadeOutFinished = function()
		element.Animation.FadeIn:Stop()

		element.State = STATES.HIDDEN
		element.Animation.FadeOut.Alpha:SetStartDelay(element.DelayTime)
		element.Animation.FadeOut.Alpha:SetFromAlpha(1)
	end

	-- Create animation handlers
	element.Animation = CreateFrame("Frame", string.format("%sElementFrame", name))

	element.Animation.FadeIn = element.Animation:CreateAnimationGroup(string.format("%sFadeIn", name))
	element.Animation.FadeIn:SetScript("OnUpdate", element.OnFadeInUpdate)
	element.Animation.FadeIn:SetScript("OnFinished", element.OnFadeInFinished)

	element.Animation.FadeIn.Alpha = element.Animation.FadeIn:CreateAnimation("Alpha")
	element.Animation.FadeIn.Alpha:SetDuration(0.1)
	element.Animation.FadeIn.Alpha:SetFromAlpha(0)
	element.Animation.FadeIn.Alpha:SetToAlpha(1)
	
	element.Animation.FadeOut = element.Animation:CreateAnimationGroup(string.format("%sFadeOut", name))
	element.Animation.FadeOut:SetScript("OnUpdate", element.OnFadeOutUpdate)
	element.Animation.FadeOut:SetScript("OnFinished", element.OnFadeOutFinished)

	element.Animation.FadeOut.Alpha = element.Animation.FadeOut:CreateAnimation("Alpha")
	element.Animation.FadeOut.Alpha:SetDuration(element.FadeTime)
	element.Animation.FadeOut.Alpha:SetStartDelay(element.DelayTime)
	element.Animation.FadeOut.Alpha:SetFromAlpha(1)
	element.Animation.FadeOut.Alpha:SetToAlpha(0)
	
	-- Applies changes made to the settings of an element
	element.Apply = function(self)
		local alpha = self.Animation.FadeOut.Alpha
		if alpha:GetStartDelay() ~= element.DelayTime then
			alpha:SetStartDelay(element.DelayTime)
		end
		if alpha:GetDuration() ~= element.FadeTime then
			alpha:SetDuration(element.FadeTime)
		end
	end
	
	return element
end

-- Unregisters an element instance.
function Api:UnregisterElement(name)
	self.Elements[name] = nil
end

-- Unregisters all element instances.
function Api:UnregisterAllElements()
	local elements = Api.Elements
	for name, element in pairs(elements) do
		self:UnregisterElement(name)
	end
end