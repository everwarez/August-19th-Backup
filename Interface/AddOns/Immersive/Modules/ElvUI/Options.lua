local Engine, Api, Locale, Settings = unpack(Immersive)

local ElvUI = Engine:GetModule("ElvUI")
local Configuration = Engine:GetModule("Configuration")

-- Registers the ElvUI options frame
function ElvUI:OnRegisterOptions()
	local settings = Settings:Get(self.Name)
	local panel = CreateFrame("Frame", string.format("%s%sOptionsFrame", Engine.AddOnName, self.Name))

	panel.name = Locale.ELVUI_OPTIONS_NAME
	panel.parent = Locale.CONFIG_OPTIONS_NAME

	-- Description
	local title = Configuration:CreateTitle({ Panel = panel, Text = Locale.ELVUI_OPTIONS_TITLE })
	local subText = Configuration:CreateSubText({ Panel = panel, Anchor = title, Text = Locale.ELVUI_OPTIONS_SUBTEXT })

	-- Controls: Enable
	local enabled = Configuration:CreateCheckBox({ Panel = panel, Name = string.format("%s%sEnableCheckButton", Engine.AddOnName, self.Name), Checked = settings.Enabled, Text = Locale.ELVUI_OPTIONS_ENABLED_TEXT, Tooltip = Locale.ELVUI_OPTIONS_ENABLED_TOOLTIP })
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
	
	InterfaceOptions_AddCategory(panel)
end