local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local MIN_PERFORMANCE_MILLISECONDS = 0
local MAX_PERFORMANCE_MILLISECONDS = 1000
local STEP_PERFORMANCE_MILLISECONDS = 50

local Configuration = Engine:GetModule("Configuration")
local IsReloadRequired = false
local Handlers = {}

-- Register the module's configuration options panel.
function Configuration:OnRegisterOptions()
	local panel = self.Component
	
	-- The name of the AddOn or group of configuration options. This is
	-- the text that will display in the AddOn options list.
	panel.name = Locale.CONFIG_OPTIONS_NAME

	-- Name of the parent of the AddOn or group of configuration
	-- options. This identifies "panel" as the child of another category.
	-- If the parent category doesn't exist, "panel" will be displayed as
	-- a regular category.
	panel.parent = nil

	panel.okay = Configuration.OnOkay
	panel.cancel = Configuration.OnCancel
	panel.default = Configuration.OnDefault
	panel.refresh = Configuration.OnRefresh

	-- Description
	local title = Configuration:CreateTitle({ Panel = panel, Text = Locale.CONFIG_OPTIONS_TITLE })
	local subText = Configuration:CreateSubText({ Panel = panel, Anchor = title, Text = Locale.CONFIG_OPTIONS_SUBTEXT })
	
	-- Controls: Debug
	local debugMode = Configuration:CreateCheckBox({ Panel = panel, Name = string.format("%s%sDebugCheckButton", Engine.AddOnName, self.Name), Checked = Settings:Get("DebugMode"), Text = Locale.CONFIG_OPTIONS_DEBUG_TEXT, Tooltip = Locale.CONFIG_OPTIONS_DEBUG_TOOLTIP })
	debugMode:SetPoint("TOPLEFT", subText, "BOTTOMLEFT", -2, -8)
	debugMode:SetScript("OnClick", function(self)
		Configuration:ReloadRequired()
	end)
	debugMode.OnOkay = function(self)
		Settings:Set("DebugMode", self:GetChecked())
	end
	debugMode.OnRefresh = function(self)
		self:SetValue(Settings:Get("DebugMode"))
	end
	Configuration:AddHandler(debugMode)

	-- Controls: Performance
	local api = Settings:Get("Api")
	local performance = Configuration:CreateSlider({ Panel = panel, Name = string.format("%s%sPerformanceSlider", Engine.AddOnName, self.Name), Min = MIN_PERFORMANCE_MILLISECONDS, Max = MAX_PERFORMANCE_MILLISECONDS, Value = api.Performance })
	performance:SetValueStep(STEP_PERFORMANCE_MILLISECONDS)
	performance:SetPoint("TOPLEFT", subText, "BOTTOMLEFT", 4, -60)
	performance.Text:SetText(string.format(Locale.CONFIG_OPTIONS_PERFORMANCE_FORMATTED_TEXT, math.floor(performance:GetValue())))
	performance:SetScript("OnValueChanged", function(self)
		Configuration:ReloadRequired()
		self.Text:SetText(string.format(Locale.CONFIG_OPTIONS_PERFORMANCE_FORMATTED_TEXT, math.floor(self:GetValue())))
	end)
	performance.OnOkay = function(self)
		api.Performance = math.floor(self:GetValue())
	end
	performance.OnRefresh = function(self)
		self:SetValue(api.Performance)
	end
	Configuration:AddHandler(performance)

	-- Controls: Performance Tooltip
	local tooltip = Configuration:CreateSubText({ Panel = panel, Text = Locale.CONFIG_OPTIONS_PERFORMANCE_TOOLTIP })
	tooltip:SetPoint("TOPLEFT", performance, "TOPLEFT", 170, 10)
	tooltip:SetWidth(340)

	-- Controls: Action Cam
	local modes = { off = "Off", basic = "Basic", full = "Full", default = "Default" }
	
	local actionCam = Configuration:CreateDropDown({ Panel = panel, Name = string.format("%s%sActionCamDropDown", Engine.AddOnName, self.Name), Items = modes, Text = Locale.CONFIG_OPTIONS_ACTIONCAM_TITLE, Tooltip = Locale.CONFIG_OPTIONS_ACTIONCAM_TOOLTIP })
	actionCam:SetPoint("TOPLEFT", performance, "BOTTOMLEFT", -20, -55)
	actionCam.OnSelected = function(self, value)
		ConsoleExec(string.format("actioncam %s", value))
	end
	actionCam:Hide()

	-- Controls: Version	
	local version = Configuration:CreateLabel({ Panel = panel, Inherit = "GameFontHighlight", Text = string.format(Locale.CONFIG_OPTIONS_VERSION_TEXT, Engine.Version) })
	version:SetPoint("TOPLEFT", actionCam, "BOTTOMLEFT", 20, 40)
	version:SetWidth(550)

	InterfaceOptions_AddCategory(panel)
end

-- This method will run when the player clicks "okay" in the Interface
-- Options.
function Configuration:OnOkay()
	-- Apply changes to elements
	for i = 1, #Handlers do
		Handlers[i]:OnOkay()
	end

	if IsReloadRequired then
		-- Confirm with player to reload the UI
		StaticPopup_Show("IMMERSIVE_RELOADUI_CONFIRM")
	end
end

-- This method will run when the player clicks "cancel" in the Interface
-- Options. Use this to revert their changes.
function Configuration:OnCancel()
end

-- This method will run when the player clicks "defaults". Use this to
-- revert their changes to your defaults.
function Configuration:OnDefault()
end

-- This method will run when the Interface Options frame calls its OnShow
-- function and after defaults have been applied via the panel.default
-- method described above. Use this to refresh your panel's UI in case
-- settings were changed without player interaction.
function Configuration:OnRefresh()
	for i = 1, #Handlers do
		Handlers[i]:OnRefresh()
	end
end

-- Indicates that a change has been made to the settings that will required
-- the UI to be reloaded.
function Configuration:ReloadRequired()
	IsReloadRequired = true
end

-- Adds an element option category to the cache.
function Configuration:AddHandler(handler)
	table.insert(Handlers, handler)
end

-- Creates a dependency between a control and an enable/disable checkbox.
function Configuration:AddDependency(parent, child)
	if parent.Children == nil then
		parent.Children = {}
		parent:SetScript("OnClick", function(self)
			for i = 1, #self.Children do
				if self:GetChecked() then
					self.Children[i]:Enable()
				else
					self.Children[i]:Disable()
				end
			end
		end)
	end

	table.insert(parent.Children, child)
	if parent:GetChecked() then
		child:Enable()
	else
		child:Disable()
	end
end

-- Prompt asking the player to reload the UI.
StaticPopupDialogs["IMMERSIVE_RELOADUI_CONFIRM"] = {
	text = Locale.CONFIG_OPTIONS_RELOAD_REQUIRED,
	button1 = Locale.CONFIG_OPTIONS_RELOAD_REQUIRED_YES,
	button2 = Locale.CONFIG_OPTIONS_RELOAD_REQUIRED_NO,
	OnAccept = function()
		ReloadUI()
	end,
	timeout = 0,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3
}