local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local spairs = Engine.Core.SPairs

-- Constants
local X_CONTROL_RIGHT_COLUMN = 289
local Y_CONTROL_OFFSET = 20
local MIN_ANIM_SECONDS = 0
local MAX_ANIM_SECONDS = 60
local ANCHORS = { ["TOPLEFT"] = Locale.CHAT_OPTIONS_ANCHOR_TOPLEFT, ["TOPRIGHT"] = Locale.CHAT_OPTIONS_ANCHOR_TOPRIGHT, ["BOTTOMLEFT"] = Locale.CHAT_OPTIONS_ANCHOR_BOTTOMLEFT, ["BOTTOMRIGHT"] = Locale.CHAT_OPTIONS_ANCHOR_BOTTOMRIGHT }
local DIRECTIONS = { ["HORIZONTAL"] = Locale.CHAT_OPTIONS_DIRECTION_HORIZONTAL, ["VERTICAL"] = Locale.CHAT_OPTIONS_DIRECTION_VERTICAL }

local Chat = Engine:GetModule("Chat")
local Configuration = Engine:GetModule("Configuration")

-- Registers the Chat settings panel
function Chat:OnRegisterOptions()
	local settings = Settings:Get(self.Name)
	local panel = CreateFrame("Frame", string.format("%s%sOptionsFrame", Engine.AddOnName, self.Name))
	local element = Api:GetElement("ChatFrame")
	
	panel.name = Locale.CHAT_OPTIONS_NAME
	panel.parent = Locale.CONFIG_OPTIONS_NAME

	panel.okay = Chat.OnOkay
	panel.cancel = Chat.OnCancel
	panel.default = Chat.OnChat
	panel.refresh = Chat.OnRefresh

	-- Description
	local title = Configuration:CreateTitle({ Panel = panel, Text = Locale.CHAT_OPTIONS_TITLE })
	local subText = Configuration:CreateSubText({ Panel = panel, Anchor = title, Text = Locale.CHAT_OPTIONS_SUBTEXT })

	-- Controls: Enable
	local enabled = Configuration:CreateCheckBox({ Panel = panel, Name = string.format("%s%sEnableCheckButton", Engine.AddOnName, self.Name), Checked = settings.Enabled, Text = Locale.CHAT_OPTIONS_ENABLED_TEXT, Tooltip = Locale.CHAT_OPTIONS_ENABLED_TOOLTIP })
	enabled:SetPoint("TOPLEFT", subText, "BOTTOMLEFT", -2, -8)
	enabled:SetScript("OnClick", function(self)
		Configuration:ReloadRequired()
		settings.Enabled = self:GetChecked()
	end)
	enabled.OnOkay = function(self)
		settings.Enabled = self:GetChecked()
	end
	enabled.OnRefresh = function(self)
		self:SetValue(settings.Enabled)
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
	
	local settings = Settings:Get(self.Name)
	local y = 0

	-- Controls: Delay Time
	local delay = Configuration:CreateSlider({ Panel = container, Name = string.format("%s%sDelaySlider", Engine.AddOnName, self.Name), Min = MIN_ANIM_SECONDS, Max = MAX_ANIM_SECONDS, Value = settings.DelayTime })
	delay:SetPoint("TOPLEFT", container, "TOPLEFT", 24, -15)
	delay.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_DELAY_TEXT, math.floor(delay:GetValue())))
	delay:SetScript("OnValueChanged", function(self)
		Configuration:ReloadRequired()
		self.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_DELAY_TEXT, math.floor(self:GetValue())))
	end)
	delay.OnOkay = function(self)
		settings.DelayTime = math.floor(self:GetValue())
		element.DelayTime = settings.DelayTime
		element:Apply()
	end
	delay.OnRefresh = function(self)
		self:SetValue(settings.DelayTime)
	end
	Configuration:AddHandler(delay)
	Configuration:AddDependency(enabled, delay)

	-- Controls: Fade Time
	local fade = Configuration:CreateSlider({ Panel = container, Name = string.format("%s%sFadeSlider", Engine.AddOnName, self.Name), Min = MIN_ANIM_SECONDS, Max = MAX_ANIM_SECONDS, Value = settings.FadeTime })
	fade:SetPoint("TOPLEFT", container, "TOPLEFT", 24, -50)
	fade.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_FADE_TEXT, math.floor(fade:GetValue())))
	fade:SetScript("OnValueChanged", function(self)
		Configuration:ReloadRequired()
		self.Text:SetText(string.format(Locale.CONFIG_SLIDER_FORMATTED_TEXT, Locale.CONFIG_SLIDER_TYPE_FADE_TEXT, math.floor(self:GetValue())))
	end)
	fade.OnOkay = function(self)
		settings.FadeTime = math.floor(self:GetValue())
		element.FadeTime = settings.FadeTime
		element:Apply()
	end
	fade.OnRefresh = function(self)
		self:SetValue(settings.FadeTime)
	end
	Configuration:AddHandler(fade)
	Configuration:AddDependency(enabled, fade)

	-- Controls: Mode
	local modes = {}
	for _, m in ipairs(Api:GetAvailableModes(element)) do modes[m.Name] = m.Title end
	
	local mode = Configuration:CreateDropDown({ Panel = container, Name = string.format("%s%sModeDropDown", Engine.AddOnName, self.Name), Items = modes, Value = settings.Mode, Selected = Api.Modes[settings.Mode].Title, Text = Locale.CHAT_OPTIONS_MODE_TITLE, Tooltip = Locale.CHAT_OPTIONS_MODE_TOOLTIP })
	mode:SetPoint("TOPLEFT", container, "TOPLEFT", 4, -100)
	mode.OnOkay = function(self)
		settings.Mode = UIDropDownMenu_GetSelectedValue(self)
		element.Mode = settings.Mode
	end
	mode.OnRefresh = function(self)
		UIDropDownMenu_SetSelectedValue(self, settings.Mode)
		UIDropDownMenu_SetText(self, Api.Modes[settings.Mode].Title)
	end
	Configuration:AddHandler(mode)
	Configuration:AddDependency(enabled, mode)

	-- Controls: Anchor
	local anchor = Configuration:CreateDropDown({ Panel = container, Name = string.format("%s%sAnchorDropDown", Engine.AddOnName, self.Name), Items = ANCHORS, Value = settings.Anchor, Selected = ANCHORS[settings.Anchor], Text = Locale.CHAT_OPTIONS_ANCHOR_TITLE, Tooltip = Locale.CHAT_OPTIONS_ANCHOR_TOOLTIP })
	anchor:SetPoint("TOPLEFT", container, "TOPLEFT", 4, -150)
	anchor.OnOkay = function(self)
		settings.Anchor = UIDropDownMenu_GetSelectedValue(self)
	end
	anchor.OnRefresh = function(self)
		UIDropDownMenu_SetSelectedValue(self, settings.Anchor)
		UIDropDownMenu_SetText(self, ANCHORS[settings.Anchor])
	end
	Configuration:AddHandler(anchor)
	Configuration:AddDependency(enabled, anchor)

	-- Controls: Direction
	local direction = Configuration:CreateDropDown({ Panel = container, Name = string.format("%s%sDirectionDropDown", Engine.AddOnName, self.Name), Items = DIRECTIONS, Value = settings.Direction, Selected = DIRECTIONS[settings.Direction], Text = Locale.CHAT_OPTIONS_DIRECTION_TITLE, Tooltip = Locale.CHAT_OPTIONS_DIRECTION_TOOLTIP })
	direction:SetPoint("TOPLEFT", container, "TOPLEFT", 4, -200)
	direction.OnOkay = function(self)
		settings.Direction = UIDropDownMenu_GetSelectedValue(self)
	end
	direction.OnRefresh = function(self)
		UIDropDownMenu_SetSelectedValue(self, settings.Direction)
		UIDropDownMenu_SetText(self, DIRECTIONS[settings.Direction])
	end
	Configuration:AddHandler(direction)
	Configuration:AddDependency(enabled, direction)

	-- Controls: Is Hotspot Active
	local hotspot = Configuration:CreateCheckBox({ Panel = container, Name = string.format("%s%sHotspotCheckButton", Engine.AddOnName, self.Name), Checked = settings.IsHotspot, Text = Locale.CHAT_OPTIONS_HOTSPOT_TEXT, Tooltip = Locale.CHAT_OPTIONS_HOTSPOT_TOOLTIP })
	hotspot:SetPoint("TOPLEFT", container, "TOPLEFT", 18, -235)
	hotspot:SetScript("OnClick", function(self)
		Configuration:ReloadRequired()
		settings.Enabled = self:GetChecked()
	end)
	hotspot.OnOkay = function(self)
		settings.IsHotspot = self:GetChecked()
		element.IsHotspot = settings.IsHotspot
	end
	hotspot.OnRefresh = function(self)
		self:SetChecked(settings.IsHotspot)
	end
	Configuration:AddHandler(hotspot)
	Configuration:AddDependency(enabled, hotspot)

	-- Controls: Is Moving Active
	local moving = Configuration:CreateCheckBox({ Panel = panel, Name = string.format("%s%sMovingCheckButton", Engine.AddOnName, self.Name), Checked = settings.IsMoving, Text = Locale.CHAT_OPTIONS_MOVING_TEXT, Tooltip = Locale.CHAT_OPTIONS_MOVING_TOOLTIP })
	moving:SetPoint("TOPLEFT", container, "TOPLEFT", 18, -260)
	moving:SetScript("OnClick", function(self)
		Configuration:ReloadRequired()
		settings.IsMoving = self:GetChecked()
	end)
	moving.OnOkay = function(self)
		settings.IsMoving = self:GetChecked()
	end
	moving.OnRefresh = function(self)
		self:SetValue(settings.IsMoving)
	end
	Configuration:AddHandler(moving)
	Configuration:AddDependency(enabled, moving)

	-- Controls: Conditions
	for name, condition in spairs(Api.Conditions) do
		local conditional = Configuration:CreateCheckBox({ Panel = container, Name = string.format("%s%s%sConditionCheckButton", Engine.AddOnName, self.Name, name), Checked = settings.Conditions[name] or false, Text = condition.Title, Tooltip = condition.Tooltip })
		conditional:SetPoint("TOPLEFT", container, "TOPLEFT", X_CONTROL_RIGHT_COLUMN, -y)
		conditional:SetScript("OnClick", function(self)
			Configuration:ReloadRequired()
		end)
		conditional.OnOkay = function(self)
			settings.Conditions[name] = self:GetChecked()
		end
		conditional.OnRefresh = function(self)
			self:SetChecked(settings.Conditions[name] or false)
		end
		Configuration:AddHandler(conditional)
		Configuration:AddDependency(enabled, conditional)
			
		y = y + Y_CONTROL_OFFSET
	end

	container:SetSize(128, y - 460)

	scrollbar:SetMinMaxValues(0, container:GetHeight())
	scrollbar:SetValue(0)

	InterfaceOptions_AddCategory(panel)
end

-- This method will run when the player clicks "okay" in the Interface
-- Options.
function Chat:OnOkay()
end

-- This method will run when the player clicks "cancel" in the Interface
-- Options. Use this to revert their changes.
function Chat:OnCancel()
end

-- This method will run when the player clicks "defaults". Use this to
-- revert their changes to your defaults.
function Chat:OnChat()
end

-- This method will run when the Interface Options frame calls its OnShow
-- function and after defaults have been applied via the panel.default
-- method described above. Use this to refresh your panel's UI in case
-- settings were changed without player interaction.
function Chat:OnRefresh()
end