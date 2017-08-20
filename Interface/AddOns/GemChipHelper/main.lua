local ChipColors = {
	[1379182] = "Blue",
	[1379183] = "Green",
	[1379184] = "Orange",
	[1379185] = "Purple",
	[1379186] = "Red",
	[1379188] = "Yellow",
}

local UseFelslateForDefault = {
	['Blue'] = false,
	['Green'] = false,
	['Orange'] = false,
	['Purple'] = false,
	['Red'] = false,
	['Yellow'] = false,
}

local ores = {
		["Leystone Ore"]	= 123918,
		["Felslate"]		= 123919
}
local ResetOreDefault = ores['Leystone Ore']

local _, L = ...;
local frame, eventFrame = CreateFrame("Frame", "GemChipHelperFrame", UIParent)
local show, showQueue, showCombat, reset, currentChip, useFelslate, inCombat = false, nil, nil, false, nil, false, false
local prospectingName = GetSpellInfo(31252) --Prospecting spell

frame:SetBackdrop({
      bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
      edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
      tile=1, tileSize=32, edgeSize=32, 
      insets={left=11, right=12, top=12, bottom=11}
})
frame:SetWidth(200)
frame:SetHeight(200)
frame:SetPoint("CENTER",UIParent)
frame:EnableMouse(true)
frame:SetMovable(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
frame:SetScript("OnShow", registerGemEvents)
frame:SetScript("OnHide", unregisterGemEvents)
frame:SetFrameStrata("FULLSCREEN_DIALOG")
frame:Hide()

frame.close = CreateFrame("Button", "gch_close", frame, "UIPanelCloseButton")
frame.close:SetWidth(25)
frame.close:SetHeight(25)
frame.close:SetPoint("TOPRIGHT", -3, -3)
frame.close:SetScript("OnClick", function(self) frame:toggleFrame() end)
--frame.close:SetPoint("TOPLEFT", 4, -4)

local button = CreateFrame("BUTTON","gch_button", frame, "SecureActionButtonTemplate")
button:SetPoint("LEFT", 25, 0)
button:SetSize(64, 64)
button:EnableMouse(true)
button:RegisterForClicks("AnyUp")
button:SetAttribute("type1", "macro")
button:Disable()
 
button.icon = button:CreateTexture(nil,"OVERLAY",nil,7)
button.icon:SetSize(64, 64)
button.icon:SetPoint("LEFT")
button.icon:SetTexture(1,1,0)

local resetOreText = frame:CreateFontString()
resetOreText:SetPoint("TOPRIGHT", -35, -15)
resetOreText:SetFontObject(GameFontNormalSmall)
resetOreText:SetText(L["Reset Ore"] .. ":")


--Reset ore dropdown
local dropdownResetOre = CreateFrame("Button", "DropDownResetOre", frame, "UIDropDownMenuTemplate");
dropdownResetOre:ClearAllPoints();
dropdownResetOre:SetPoint("TOPRIGHT", -0, -30);

UIDropDownMenu_SetWidth(dropdownResetOre, 65);

UIDropDownMenu_Initialize(dropdownResetOre, function(self, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	for k, v in pairs(ores) do
		local itemName = GetItemInfo(v)
		
		info.text = itemName
		info.value = v
		info.func = SetResetOre
		info.checked = false
		info.arg1 = v
		UIDropDownMenu_AddButton(info)
	end
end)

function SetResetOre(v, arg1)
	ResetOre = arg1;
	UIDropDownMenu_SetSelectedID(dropdownResetOre, v:GetID());
end

-- Blue Checkbox
checkbuttonBlue = CreateFrame("CheckButton", "CheckbuttonBlue", frame, "UICheckButtonTemplate")
checkbuttonBlue:ClearAllPoints()
checkbuttonBlue:SetPoint("BOTTOM", dropdownResetOre, "BOTTOM", -30, -25)
_G[checkbuttonBlue:GetName() .. "Text"]:SetText(L["Blue"])
checkbuttonBlue:SetScript("OnClick", function()
	UseFelslateFor["Blue"] = not UseFelslateFor["Blue"]
end);

-- Green Checkbox
checkbuttonGreen = CreateFrame("CheckButton", "CheckbuttonGreen", frame, "UICheckButtonTemplate")
checkbuttonGreen:ClearAllPoints()
checkbuttonGreen:SetPoint("BOTTOM", checkbuttonBlue, "BOTTOM", 0, -20)
_G[checkbuttonGreen:GetName() .. "Text"]:SetText(L["Green"])
checkbuttonGreen:SetScript("OnClick", function()
	UseFelslateFor["Green"] = not UseFelslateFor["Green"]
end);

-- Orange Checkbox
checkbuttonOrange = CreateFrame("CheckButton", "CheckbuttonOraneg", frame, "UICheckButtonTemplate")
checkbuttonOrange:ClearAllPoints()
checkbuttonOrange:SetPoint("BOTTOM", checkbuttonGreen, "BOTTOM", 0, -20)
_G[checkbuttonOrange:GetName() .. "Text"]:SetText(L["Orange"])
checkbuttonOrange:SetScript("OnClick", function()
	UseFelslateFor["Orange"] = not UseFelslateFor["Orange"]
end);

-- Purple Checkbox
checkbuttonPurple = CreateFrame("CheckButton", "CheckbuttonPurple", frame, "UICheckButtonTemplate")
checkbuttonPurple:ClearAllPoints()
checkbuttonPurple:SetPoint("BOTTOM", checkbuttonOrange, "BOTTOM", 0, -20)
_G[checkbuttonPurple:GetName() .. "Text"]:SetText(L["Purple"])
checkbuttonPurple:SetScript("OnClick", function()
	UseFelslateFor["Purple"] = not UseFelslateFor["Purple"]
end);

-- Red Checkbox
checkbuttonRed = CreateFrame("CheckButton", "CheckbuttonRed", frame, "UICheckButtonTemplate")
checkbuttonRed:ClearAllPoints()
checkbuttonRed:SetPoint("BOTTOM", checkbuttonPurple, "BOTTOM", 0, -20)
_G[checkbuttonRed:GetName() .. "Text"]:SetText(L["Red"])
checkbuttonRed:SetScript("OnClick", function()
	UseFelslateFor["Red"] = not UseFelslateFor["Red"]
end);

-- Yellow Checkbox
checkbuttonYellow = CreateFrame("CheckButton", "CheckbuttonYellow", frame, "UICheckButtonTemplate");
checkbuttonYellow:ClearAllPoints();
checkbuttonYellow:SetPoint("BOTTOM", checkbuttonRed, "BOTTOM", 0, -20)
checkbuttonYellow:RegisterForClicks("AnyUp");
_G[checkbuttonYellow:GetName() .. "Text"]:SetText(L["Yellow"]);
checkbuttonYellow:SetScript("OnClick", function()
	UseFelslateFor["Yellow"] = not UseFelslateFor["Yellow"]
end);

function frame:setCheckboxes()
	for k,v in pairs(UseFelslateFor) do
		_G["checkbutton" .. k]:SetChecked(v);
	end
end

function frame:setMacroButton(itemID)
	if (InCombatLockdown()) then
		print("Gem Chip Helper: This addon will NOT work in combat.")
		return
	end
	local _, _, _, _, _, _, _, _, _, texture = GetItemInfo(itemID)
	button:SetAttribute("macrotext", "/cast ".. prospectingName .. "\n/use item:" .. itemID)
	button.icon:SetTexture(texture)
end

function registerGemEvents()
	frame:RegisterEvent("LOOT_READY");
end

function unregisterGemEvents()
	frame:UnregisterEvent("LOOT_READY");
end

frame:RegisterEvent("ADDON_LOADED");
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:RegisterEvent("PLAYER_REGEN_DISABLED")
local function eventHandler(self, event, arg1)
	if (event == "ADDON_LOADED" and arg1 == "GemChipHelper") then
		if (UseFelslateFor == nil) then
			UseFelslateFor = UseFelslateForDefault;
		end
		if (ResetOre == nil) then
			ResetOre = ResetOreDefault;
		end
		frame:setCheckboxes()
		UIDropDownMenu_SetSelectedValue(dropdownResetOre, ResetOre);
		frame:setMacroButton(ResetOre);
	end
	if (event ==  "PLAYER_REGEN_DISABLED") then
		inCombat = true
		if (show == true) then
			showCombat = true
		end
		frame:hideFrame()
	end
	if (event == "PLAYER_REGEN_ENABLED") then
		if (showCombat == true) then
			frame:showFrame()
			showCombat = nil
		end
	end
	if (event == "LOOT_READY") then
		reset = false;
		lootInfo = GetLootInfo();
		
		for k,v in pairs(lootInfo) do
			texture = v.texture
			if (ChipColors[texture] ~= nil) then
				currentChip = ChipColors[texture];
			else
				-- Not a chip, must be a gem so reset
				reset = true;
				useFelslate = false;
				frame:setMacroButton(ResetOre);
			end
		end
		if (reset == false) then
			if (UseFelslateFor[currentChip]) then
				useFelslate = true;
				frame:setMacroButton(ores["Felslate"]);
			else
				frame:setMacroButton(ores["Leystone Ore"]);
			end
		end
	end
end
frame:SetScript("OnEvent", eventHandler);

function frame:showFrame()
	show = true
	registerGemEvents()
	frame:Show()
	button:Enable()
end
function frame:hideFrame()
	show = false
	unregisterGemEvents()
	frame:Hide()
	button:Disable()
end
function frame:toggleFrame()
	if (InCombatLockdown()) then
		print("Gem Chip Helper: You cannot perform actions during combat.")
	else
		show = not show
		if show then
			frame:showFrame()
		else
			frame:hideFrame()
		end
	end
end
SLASH_CHIPPROSPECT1, SLASH_CHIPPROSPECT2 = '/gemchiphelper', '/gch';
function SlashCmdList.CHIPPROSPECT(msg, editbox)
		frame:toggleFrame()
end