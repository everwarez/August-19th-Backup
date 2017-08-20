local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local debug = Engine.Core.Debug

local Configuration = Engine:GetModule("Configuration")

-- Registers the profile options.
function Configuration:RegisterProfiles()
	local settings = Settings:Get(self.Name)
	local panel = CreateFrame("Frame", string.format("%s%sOptionsFrame", Engine.AddOnName, self.Name))
	
	panel.name = Locale.CONFIG_OPTIONS_PROFILES_NAME
	panel.parent = Locale.CONFIG_OPTIONS_NAME
	
	-- Description
	local title = Configuration:CreateTitle({ Panel = panel, Text = Locale.CONFIG_OPTIONS_PROFILES_TITLE })
	local subText = Configuration:CreateSubText({ Panel = panel, Anchor = title, Text = Locale.CONFIG_OPTIONS_PROFILES_SUBTEXT })

	local resetSubText = Configuration:CreateLabel({ Panel = panel, Text = Locale.CONFIG_OPTIONS_PROFILES_RESET_TEXT })
	resetSubText:SetPoint("TOPLEFT", subText, "TOPLEFT", 0, -25)

	-- Controls: Reset
	local reset = Configuration:CreateButton({ Panel = panel, Name = string.format("%s%sResetButton", Engine.AddOnName, self.Name), Text = Locale.CONFIG_OPTIONS_PROFILES_RESET_TITLE, Tooltip = Locale.CONFIG_OPTIONS_PROFILES_RESET_TOOLTIP })
	reset:SetPoint("TOPLEFT", resetSubText, "BOTTOMLEFT", -2, -5)
	reset:SetScript("OnClick", function(self)
		StaticPopup_Show("IMMERSIVE_RESETPROFILE_CONFIRM")
	end)

	local profileLabel = Configuration:CreateLabel({ Panel = panel })
	profileLabel:SetPoint("TOPLEFT", reset, "TOPLEFT", 160, -8)
	profileLabel:SetText(string.format(Locale.CONFIG_OPTIONS_PROFILES_RESET_PROFILE, Settings.Database:GetCurrentProfile()))

	local copySubText = Configuration:CreateLabel({ Panel = panel, Text = Locale.CONFIG_OPTIONS_PROFILES_COPY_TEXT })
	copySubText:SetPoint("TOPLEFT", reset, "TOPLEFT", 2, -45)

	-- Controls: Profiles
	local current = Settings.Database:GetCurrentProfile()
	local profiles = {}
	for i, name in ipairs(Settings.Database:GetProfiles()) do
		if name ~= current then
			profiles[name] = name
		end
	end
	
	local profile = Configuration:CreateDropDown({ Panel = panel, Name = string.format("%s%sProfilesDropDown", Engine.AddOnName, self.Name), Items = profiles, Text = Locale.CONFIG_OPTIONS_PROFILES_COPY_TITLE, Tooltip = Locale.CONFIG_OPTIONS_PROFILES_COPY_TOOLTIP })
	profile:SetPoint("TOPLEFT", copySubText, "BOTTOMLEFT", -15, -25)
	profile.OnSelected = function(self, value)
		local dialog = StaticPopup_Show("IMMERSIVE_COPYPROFILE_CONFIRM")
		if (dialog) then
			dialog.data = value
		end
	end

	InterfaceOptions_AddCategory(panel)
end

-- Prompt asking the player to reload the UI.
StaticPopupDialogs["IMMERSIVE_RESETPROFILE_CONFIRM"] = {
	text = Locale.CONFIG_OPTIONS_PROFILES_RESET_CONFIRM,
	button1 = Locale.CONFIG_OPTIONS_PROFILES_RESET_CONFIRM_YES,
	button2 = Locale.CONFIG_OPTIONS_PROFILES_RESET_CONFIRM_NO,
	OnAccept = function (self, data)
		Settings.Database:ResetProfile()
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3
}

-- Prompt asking the player to reload the UI.
StaticPopupDialogs["IMMERSIVE_COPYPROFILE_CONFIRM"] = {
	text = Locale.CONFIG_OPTIONS_PROFILES_COPY_CONFIRM,
	button1 = Locale.CONFIG_OPTIONS_PROFILES_COPY_CONFIRM_YES,
	button2 = Locale.CONFIG_OPTIONS_PROFILES_COPY_CONFIRM_NO,
	OnAccept = function (self, data)
		Settings.Database:CopyProfile(data, true)
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3
}