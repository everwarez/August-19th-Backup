local Engine, Api, Locale, Settings = unpack(Immersive)

local Configuration = Engine:GetModule("Configuration")

-- Creates a generic FontString widget.
function Configuration:CreateLabel(params)
	params.Panel = params.Panel or UIParent
	params.Name = params.Name or "Label"
	params.Layer = params.Layer or "ARTWORK"
	params.Inherit = params.Inherit or "GameFontHighlightSmall"
	params.JustifyH = params.JustifyH or "LEFT"
	params.JustifyV = params.JustifyV or "TOP"
	params.Text = params.Text or ""

	local label = params.Panel:CreateFontString(params.Name, params.Layer, params.Inherit)
	label:SetJustifyH(params.JustifyH)
	label:SetJustifyV(params.JustifyV)
	label:SetText(params.Text)

	return label
end

-- Creates an interface options title FontString widget.
function Configuration:CreateTitle(params)
	params.Name = params.Name or "Title"
	params.Inherit = params.Inherit or "GameFontNormalLarge"

	local label = Configuration:CreateLabel(params)
	label:SetPoint("TOPLEFT", params.Panel, "TOPLEFT", 16, -16)

	return label
end

-- Creates an interface options subtext FontString widget.
function Configuration:CreateSubText(params)
	params.Name = params.Name or "SubText"
	params.Anchor = params.Anchor or UIParent

	local label = Configuration:CreateLabel(params)
	label:SetPoint("TOPLEFT", params.Anchor, "BOTTOMLEFT", 0, -8)
	label:SetPoint("RIGHT", params.Panel, "RIGHT", -32, 0)

	return label
end

-- Creates a generic CheckButton widget.
function Configuration:CreateCheckBox(params)
	params.Panel = params.Panel or UIParent
	params.Name = params.Name or "CheckBox"
	params.Inherit = params.Inherit or "InterfaceOptionsCheckButtonTemplate"
	params.Checked = params.Checked or false
	params.Text = params.Text or ""
	params.Tooltip = params.Tooltip or ""

	local checkbox = CreateFrame("CheckButton", params.Name, params.Panel, params.Inherit)
	checkbox:SetChecked(params.Checked)
	checkbox.Text:SetText(params.Text)
	checkbox.Tooltip = params.Tooltip
	checkbox:SetScript("OnEnter", function(self)
		if self.Tooltip then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self.Tooltip, nil, nil, nil, nil, true);
		end
	end)

	return checkbox
end

-- Creates a generic CheckButton widget.
function Configuration:CreateButton(params)
	params.Panel = params.Panel or UIParent
	params.Name = params.Name or "Button"
	params.Inherit = params.Inherit or "UIPanelButtonTemplate"
	params.Width = params.Width or 150
	params.Height = params.Height or 25
	params.Text = params.Text or ""
	params.Tooltip = params.Tooltip or ""

	local button = CreateFrame("Button", params.Name, params.Panel, params.Inherit)
	button:SetWidth(params.Width)
	button:SetHeight(params.Height)
	button:SetText(params.Text)
	button:RegisterForClicks("AnyUp")
	button:SetScript("OnEnter", function(self)
		if self.Tooltip then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self.Tooltip, nil, nil, nil, nil, true);
		end
	end)

	return button
end

-- Creates a generic Slider widget.
function Configuration:CreateSlider(params)
	params.Panel = params.Panel or UIParent
	params.Name = params.Name or "Slider"
	params.Inherit = params.Inherit or "OptionsSliderTemplate"
	params.Min = params.Min or 0
	params.Max = params.Max or 100
	params.Value = params.Value or 0
	params.Text = params.Text or ""
	params.Tooltip = params.Tooltip or nil
		
	local slider = CreateFrame("Slider", params.Name, params.Panel, params.Inherit)
	slider:SetMinMaxValues(params.Min, params.Max)
	slider:SetValue(params.Value)
	slider.Text = _G[slider:GetName().."Text"]
	slider.Text:SetText(params.Text)
	slider.tooltipText = params.Tooltip
	slider.tooltipRequirement = nil

	return slider
end

-- Creates a generic DropDownButton widget.
function Configuration:CreateDropDown(params)
	params.Panel = params.Panel or UIParent
	params.Name = params.Name or "DropDownButton"
	params.Inherit = params.Inherit or "UIDropDownMenuTemplate"
	params.Items = params.Items or {}
	params.Value = params.Value or nil
	params.Selected = params.Selected or nil
	params.Text = params.Text or ""
	params.Tooltip = params.Tooltip or ""
	params.Justify = params.Justify or "LEFT"
	params.Width = params.Width or 150
	params.ButtonWidth = params.ButtonWidth or 174

	local dropdown = CreateFrame("Button", params.Name, params.Panel, params.Inherit)
	dropdown:EnableMouse(true)
	dropdown:SetScript("OnEnter", function(self)
		if self.Tooltip then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self.Tooltip, nil, nil, nil, nil, true);
		end
	end)
	dropdown.Label = dropdown:CreateFontString(params.Name.."Label", "BACKGROUND", "GameFontHighlight")
	dropdown.Label:SetPoint("BOTTOMLEFT", dropdown, "TOPLEFT", 16, 3)
	dropdown.Label:SetText(params.Text)
	dropdown.Tooltip = params.Tooltip

	UIDropDownMenu_Initialize(dropdown, function(self, level)
		for k, v in pairs(params.Items) do
			local info = UIDropDownMenu_CreateInfo()
			info.text = v
			info.value = k
			info.func = function(self)
				UIDropDownMenu_SetSelectedValue(dropdown, self.value)
				if dropdown.OnSelected then
					dropdown:OnSelected(self.value)
				end
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end)

	UIDropDownMenu_SetWidth(dropdown, params.Width)
	UIDropDownMenu_SetButtonWidth(dropdown, params.ButtonWidth)
	UIDropDownMenu_SetSelectedValue(dropdown, params.Value)
	UIDropDownMenu_SetText(dropdown, params.Selected)
	UIDropDownMenu_JustifyText(dropdown, params.Justify)

	return dropdown
end