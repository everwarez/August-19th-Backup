local Engine, Api, Locale, Settings = unpack(Immersive)

local Tukui = Engine:GetModule("Tukui")
local Configuration = Engine:GetModule("Configuration")

-- Registers the Tukui options frame
function Tukui:OnRegisterOptions()
	local settings = Settings:Get(self.Name)
	local panel = CreateFrame("Frame", string.format("%s%sOptionsFrame", Engine.AddOnName, self.Name))

	panel.name = Locale.TUKUI_OPTIONS_NAME
	panel.parent = Locale.CONFIG_OPTIONS_NAME

	-- Description
	local title = Configuration:CreateTitle({ Panel = panel, Text = Locale.TUKUI_OPTIONS_TITLE })
	local subText = Configuration:CreateSubText({ Panel = panel, Anchor = title, Text = Locale.TUKUI_OPTIONS_SUBTEXT })

	-- Controls: Notice
	local notice = Configuration:CreateLabel({ Panel = panel, Inherit = "GameFontHighlight", Text = Locale.TUKUI_OPTIONS_NOTICE_TEXT })
	notice:SetPoint("TOPLEFT", subText, "BOTTOMLEFT", 6, -14)

	InterfaceOptions_AddCategory(panel)
end