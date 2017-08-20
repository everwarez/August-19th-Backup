local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local length = Engine.Core.Length
local spairs = Engine.Core.SPairs

-- Constants
local X_CONTROL_LEFT_COLUMN = -2
local X_CONTROL_RIGHT_COLUMN = 289
local Y_CONTROL_OFFSET = 20
local MIN_ANIM_SECONDS = 0
local MAX_ANIM_SECONDS = 60
local CONTROL_TITLES = {
	BuffFrame = Locale.DEFAULT_BUFF_FRAME_TITLE,
	CompactRaidFrame = Locale.DEFAULT_COMPACT_RAID_FRAME_TITLE,
	MainMenuBar = Locale.DEFAULT_MAIN_MENU_BAR_TITLE,
	MinimapCluster = Locale.DEFAULT_MINIMAP_CLUSTER_TITLE,
	MultibarBottomLeft = Locale.DEFAULT_MULTIBAR_BOTTOM_LEFT_TITLE,
	MultibarBottomRight = Locale.DEFAULT_MULTIBAR_BOTTOM_RIGHT_TITLE,
	MultibarLeft = Locale.DEFAULT_MULTIBAR_LEFT_TITLE,
	MultibarRight = Locale.DEFAULT_MULTIBAR_RIGHT_TITLE,
	ObjectiveTrackerFrame = Locale.DEFAULT_OBJECTIVE_TRACKER_FRAME_TITLE,
	OrderHallCommandBar = Locale.DEFAULT_ORDER_HALL_COMMAND_BAR_TITLE,
	PartyMemberFrame = Locale.DEFAULT_PARTY_MEMBER_FRAME_TITLE,
	PetActionBarFrame = Locale.DEFAULT_PET_ACTION_BAR_FRAME_TITLE,
	PlayerFrame = Locale.DEFAULT_PLAYER_FRAME_TITLE,
	StanceBarFrame = Locale.DEFAULT_STANCE_BAR_FRAME_TITLE,
	TargetFrame = Locale.DEFAULT_TARGET_FRAME_TITLE,
	VehicleLeaveButton = Locale.DEFAULT_VEHICLE_LEAVE_BUTTON_TITLE,
	VehicleSeatIndicator = Locale.DEFAULT_VEHICLE_SEAT_INDICATOR_TITLE
}

local Default = Engine:GetModule("Default")
local Configuration = Engine:GetModule("Configuration")

-- Registers the Default options panel
function Default:OnRegisterOptions()
	local settings = Settings:Get(self.Name)
	local panel = CreateFrame("Frame", string.format("%s%sOptionsFrame", Engine.AddOnName, self.Name))
	
	panel.name = Locale.DEFAULT_OPTIONS_NAME
	panel.parent = Locale.CONFIG_OPTIONS_NAME

	panel.okay = Default.OnOkay
	panel.cancel = Default.OnCancel
	panel.default = Default.OnDefault
	panel.refresh = Default.OnRefresh

	-- Description
	local title = Configuration:CreateTitle({ Panel = panel, Text = Locale.DEFAULT_OPTIONS_TITLE })
	local subText = Configuration:CreateSubText({ Panel = panel, Anchor = title, Text = Locale.DEFAULT_OPTIONS_SUBTEXT })

	-- Controls: Enable
	local enabled = Configuration:CreateCheckBox({ Panel = panel, Name = string.format("%s%sEnableCheckButton", Engine.AddOnName, self.Name), Checked = settings.Enabled, Text = Locale.DEFAULT_OPTIONS_ENABLED_TEXT, Tooltip = Locale.DEFAULT_OPTIONS_ENABLED_TOOLTIP })
	enabled:SetPoint("TOPLEFT", subText, "BOTTOMLEFT", -2, -8)
	enabled:SetScript("OnClick", function(self)
		Configuration:ReloadRequired()
	end)
	enabled.OnOkay = function(self)
		settings.Enabled = self:GetChecked()
	end
	enabled.OnRefresh = function(self)
		self:SetChecked(settings.Enabled)
	end
	Configuration:AddHandler(enabled)

	-- Controls: ScrollFrame
	local scrollframe = CreateFrame("ScrollFrame", nil, panel)
	scrollframe:SetPoint("TOPLEFT", subText, "BOTTOMLEFT", 0, -40)
	scrollframe:SetPoint("BOTTOMRIGHT", -10, 10)
	scrollframe:EnableMouseWheel(true)

	-- Controls: ScrollBar 
	local scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate")
	scrollbar:SetPoint("TOPRIGHT", panel, "TOPRIGHT", -8, -24)
	scrollbar:SetPoint("BOTTOMRIGHT", panel, "BOTTOMRIGHT", -8, 24)
	scrollbar:SetValueStep(1)
	scrollbar.scrollStep = 40
	scrollbar:SetWidth(16)
	scrollbar:SetScript("OnValueChanged", function(self, value)
		self:GetParent():SetVerticalScroll(value)
	end)

	-- Controls: Element Container
	local container = CreateFrame("Frame", nil, scrollframe)
	container:SetPoint("TOPLEFT", scrollframe, "TOPLEFT")
	container:SetPoint("BOTTOMRIGHT", scrollframe, "BOTTOMRIGHT")

	scrollframe:SetScrollChild(container)
	scrollframe:SetScript("OnMouseWheel", function(self, delta)
		local min, max = scrollbar:GetMinMaxValues()
		local value = math.max(0, math.min(self:GetVerticalScroll() + (delta * scrollbar.scrollStep * -1), max))
		self:SetVerticalScroll(value)
		scrollbar:SetValue(value)
	end)
	
	self:OnRegisterElementOptions(container)

	scrollbar:SetMinMaxValues(0, container:GetHeight())
	scrollbar:SetValue(0)

	InterfaceOptions_AddCategory(panel)
end

-- This method will run when the player clicks "okay" in the Interface
-- Options.
function Default:OnOkay()
end

-- This method will run when the player clicks "cancel" in the Interface
-- Options. Use this to revert their changes.
function Default:OnCancel()
end

-- This method will run when the player clicks "defaults". Use this to
-- revert their changes to your defaults.
function Default:OnDefault()
end

-- This method will run when the Interface Options frame calls its OnShow
-- function and after defaults have been applied via the panel.default
-- method described above. Use this to refresh your panel's UI in case
-- settings were changed without player interaction.
function Default:OnRefresh()
end

-- Registers the Default options panel
function Default:OnRegisterElementOptions(parent)
	local settings = Settings:Get(self.Name)
	local y = 0

	-- Controls: Elements
	for element, options in spairs(settings.Elements) do
		-- Controls: Enable
		local control = Configuration:CreateCheckBox({ Panel = parent, Name = string.format("%s%s%sEnableCheckButton", Engine.AddOnName, self.Name, element), Checked = options.Enabled, Text = CONTROL_TITLES[element], Tooltip = string.format(Locale.DEFAULT_OPTIONS_ELEMENT_ENABLED_TOOLTIP, CONTROL_TITLES[element]) })
		control:SetPoint("TOPLEFT", parent, "TOPLEFT", X_CONTROL_LEFT_COLUMN, -y)
		control:SetScript("OnClick", function(self)
			Configuration:ReloadRequired()
		end)
		control.OnOkay = function(self)
			options.Enabled = self:GetChecked()
		end
		control.OnRefresh = function(self)
			self:SetChecked(options.Enabled)
		end
		Configuration:AddHandler(control)

		-- Controls: Delay Time
		local delay = Configuration:CreateSlider({ Panel = parent, Name = string.format("%s%s%sDelaySlider", Engine.AddOnName, self.Name, element), Min = MIN_ANIM_SECONDS, Max = MAX_ANIM_SECONDS, Value = options.DelayTime })
		delay:SetPoint("TOPLEFT", control, "BOTTOMLEFT", 24, -15)
		delay.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_DELAY_TEXT, math.floor(delay:GetValue())))
		delay:SetScript("OnValueChanged", function(self)
			Configuration:ReloadRequired()
			self.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_DELAY_TEXT, math.floor(self:GetValue())))
		end)
		delay.OnOkay = function(self)
			options.DelayTime = math.floor(self:GetValue())
			if Api.Elements[element] then
				Api.Elements[element].DelayTime = options.DelayTime
				Api.Elements[element]:Apply()
			end
		end
		delay.OnRefresh = function(self)
			self:SetValue(options.DelayTime)
		end
		Configuration:AddHandler(delay)
		Configuration:AddDependency(control, delay)

		-- Controls: Fade Time
		local fade = Configuration:CreateSlider({ Panel = parent, Name = string.format("%s%s%sFadeSlider", Engine.AddOnName, self.Name, element), Min = MIN_ANIM_SECONDS, Max = MAX_ANIM_SECONDS, Value = options.FadeTime })
		fade:SetPoint("TOPLEFT", control, "BOTTOMLEFT", 24, -50)
		fade.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_FADE_TEXT, math.floor(fade:GetValue())))
		fade:SetScript("OnValueChanged", function(self)
			Configuration:ReloadRequired()
			self.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_FADE_TEXT, math.floor(self:GetValue())))
		end)
		fade.OnOkay = function(self)
			options.FadeTime = math.floor(self:GetValue())
			if Api.Elements[element] then
				Api.Elements[element].FadeTime = options.FadeTime
				Api.Elements[element]:Apply()
			end
		end
		fade.OnRefresh = function(self)
			self:SetValue(options.FadeTime)
		end
		Configuration:AddHandler(fade)
		Configuration:AddDependency(control, fade)

		-- Controls: Mode
		local modes = {}
		for _, m in ipairs(Api:GetAvailableModes(Api.Elements[element])) do modes[m.Name] = m.Title end
	
		local mode = Configuration:CreateDropDown({ Panel = parent, Name = string.format("%s%s%sModeDropDown", Engine.AddOnName, self.Name, element), Items = modes, Value = options.Mode, Selected = Api.Modes[options.Mode].Title, Text = Locale.DEFAULT_OPTIONS_MODE_TITLE, Tooltip = Locale.DEFAULT_OPTIONS_MODE_TOOLTIP })
		mode:SetPoint("TOPLEFT", control, "BOTTOMLEFT", 4, -100)
		mode.OnOkay = function(self)
			options.Mode = UIDropDownMenu_GetSelectedValue(self)
			if Api.Elements[element] then
				Api.Elements[element].Mode = options.Mode
			end
		end
		mode.OnRefresh = function(self)
			UIDropDownMenu_SetSelectedValue(self, options.Mode)
			UIDropDownMenu_SetText(self, Api.Modes[options.Mode].Title)
		end
		Configuration:AddHandler(mode)
		Configuration:AddDependency(control, mode)

		-- Controls: Is Hotspot Active
		local hotspot = Configuration:CreateCheckBox({ Panel = parent, Name = string.format("%s%s%sHotspotCheckButton", Engine.AddOnName, self.Name, element), Checked = options.IsHotspot, Text = Locale.DEFAULT_OPTIONS_HOTSPOT_TEXT, Tooltip = Locale.DEFAULT_OPTIONS_HOTSPOT_TOOLTIP })
		hotspot:SetPoint("TOPLEFT", control, "BOTTOMLEFT", 18, -135)
		hotspot:SetScript("OnClick", function(self)
			Configuration:ReloadRequired()
		end)
		hotspot.OnOkay = function(self)
			options.IsHotspot = self:GetChecked()
			if Api.Elements[element] then
				Api.Elements[element].IsHotspot = options.IsHotspot
			end
		end
		hotspot.OnRefresh = function(self)
			self:SetChecked(options.IsHotspot)
		end
		Configuration:AddHandler(hotspot)
		Configuration:AddDependency(control, hotspot)
		
		-- Controls: Conditions
		for name, condition in spairs(Api.Conditions) do
			local conditional = Configuration:CreateCheckBox({ Panel = parent, Name = string.format("%s%s%s%sConditionCheckButton", Engine.AddOnName, self.Name, element, name), Checked = options.Conditions[name] or false, Text = condition.Title, Tooltip = condition.Tooltip })
			conditional:SetPoint("TOPLEFT", parent, "TOPLEFT", X_CONTROL_RIGHT_COLUMN, -y)
			conditional:SetScript("OnClick", function(self)
				Configuration:ReloadRequired()
			end)
			conditional.OnOkay = function(self)
				options.Conditions[name] = self:GetChecked()
			end
			conditional.OnRefresh = function(self)
				self:SetChecked(options.Conditions[name] or false)
			end
			Configuration:AddHandler(conditional)
			Configuration:AddDependency(control, conditional)
			
			y = y + Y_CONTROL_OFFSET
		end
		
		y = y + Y_CONTROL_OFFSET
	end

	parent:SetSize(128, y - 460)
end