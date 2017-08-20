-- PlayerXPBar.lua

-- Global Variables

PlayerXPBarVersion = GetAddOnMetadata("PlayerXPBar", "Version");
REST_COLOR = "|cff20ff20";
TOOLTIP_COLOR = "|cffffffff";
TOOLTIP_COLOR1 = "|cffa6a6ff";
PlayerXPBar_Player = {};
PlayerXPBar_MaxLevel = 0;

local default_config = {
		["STYLEXP"] = 1,
		["TYPEXP"] = 1,
		["AUTOREMAIN"] = 1,
		["TEXTXP"] = 1,
		["XPBAR"] = 1,
		["RESTXP"] = 1,
		["TOOLTIP"] = 1,
		};

-- Command parser
function PlayerXPBar_Command(msg)
	if( msg == "reset" ) then
		PlayerXPBar:ClearAllPoints();
		PlayerXPBar:SetPoint("TOPLEFT", "UIParent", "TOPLEFT", 82, -66 );
	else
		PlayerXPBarOptions:Show();
	end
end

-- Initialize

function PlayerXPBar_OnLoad(self)
	self:RegisterEvent("PLAYER_XP_UPDATE");
	self:RegisterEvent("UPDATE_EXHAUSTION");
	self:RegisterEvent("PLAYER_LEVEL_UP");
	self:RegisterEvent("ADDON_LOADED");
	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	self:SetFrameLevel(0);

	tinsert(UISpecialFrames,"PlayerXPBarOptions");

	-- Set slash command
	SlashCmdList["PLAYERXPBAR"] = function (msg)
		PlayerXPBar_Command(msg);
	end
	SLASH_PLAYERXPBAR1 = "/playerxpbar";
	SLASH_PLAYERXPBAR2 = "/xpbar";
end

-- Catch Events

function PlayerXPBar_OnEvent(self,event,...)
	local arg1 = ...;
	if (event == "PLAYER_XP_UPDATE" or event == "UPDATE_EXHAUSTION" or event == "PLAYER_ENTERING_WORLD") then
		PlayerXPBarCalc();
	end

	if (event == "PLAYER_LEVEL_UP") then
		PlayerXPBarCalc();
		ZoneTextString:SetText(PXPBAR_GRATS);
		ZoneTextString:SetTextColor(1, 1, 0);
		SubZoneTextString:SetText(PXPBAR_LEVELUP .. (UnitLevel("player")+1) .. ".");
		SubZoneTextString:SetTextColor(0, 1, 0);
		ZoneTextFrame.startTime=GetTime();
		SubZoneTextFrame.startTime=GetTime();
		ZoneTextFrame:Show();
		SubZoneTextFrame:Show();
		return;
	end

	if(event == "ADDON_LOADED" and arg1 == "PlayerXPBar") then
		if(myAddOnsList) then
			myAddOnsList.PlayerXPBar = {name = "PlayerXPBar", description = "Display a little XP Bar in your Player Frame", version = PlayerXPBarVersion, category = MYADDONS_CATEGORY_OTHERS, frame = "PlayerXPBar", optionsframe = "PlayerXPBarOptions"};
		end
		name = UnitName("player").." of "..GetRealmName();
		if( not PlayerXPBar_Config ) then
			PlayerXPBar_Config = {};
		end
		for k,v in pairs(default_config) do
			if (PlayerXPBar_Config[name] == nil) then
				PlayerXPBar_Config[name] = default_config;
			elseif (PlayerXPBar_Config[name][k] == nil) then
				PlayerXPBar_Config[name][k] = default_config[k];
			end
		end
		PlayerXPBar_Player = PlayerXPBar_Config[name];
		PlayerXPBar_MaxLevel = GetMaxPlayerLevel();
		return PlayerXPBar_Player;
	end

end

-- Display stuff
function PlayerXPBarCalc()
	local currXP = UnitXP("player");
	local needXP = UnitXPMax("player");

	if (UnitLevel("player") == PlayerXPBar_MaxLevel) then
		PlayerXPBarExpBar:SetMinMaxValues(0,1);
		PlayerXPBarExpBar:SetValue(1);
		PlayerXPBarExpBar:SetStatusBarColor(0.85, 0.65, 0.0);
		PlayerXPBar_Amount:SetText(PXPBAR_DONE);
		PlayerXPBar:Hide();
		return;
	else
		PlayerXPBarExpBar:SetMinMaxValues(min(0, currXP), needXP);
		PlayerXPBarExpBar:SetValue(currXP);

		local exhaustionStateID = GetRestState();

		if(exhaustionStateID ~= nil) then
			if (exhaustionStateID == 1) then
				PlayerXPBarExpBar:SetStatusBarColor(0.0, 0.39, 0.88, 1.0);			
			elseif (exhaustionStateID == 2) then
				PlayerXPBarExpBar:SetStatusBarColor(0.58, 0.0, 0.55, 1.0);			
			end
		end
		PlayerXPBarShow();
	end
end


function PlayerXPBarShow()

	if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["XPBAR"] == 0) then
		PlayerXPBar:Hide();
		return;
	else
		PlayerXPBar:Show();
	end

	if (UnitLevel("player") == PlayerXPBar_MaxLevel) then
		PlayerXPBar_Amount:SetText(PXPBAR_DONE);
		return;
	end
	
	local currXP = UnitXP("player");
	local needXP = UnitXPMax("player");
	local restXP = GetXPExhaustion();
	local str = format(TEXT(" %.1f %% "), ((currXP / needXP) * 100));
	local str_remain =  format(TEXT(" %.1f %% "), (100 - ((currXP / needXP) * 100)));
	local text_xp = "XP:";

	if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["TEXTXP"] == 1) then
		text_xp = "XP:";
	end
	if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["STYLEXP"] == 0) then
		text_xp = "XPToGo:";
	end
	if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["AUTOREMAIN"] == 1) and (100 - ((currXP / needXP) * 100) < 10) then
		text_xp = "XPToGo:";
	end
	if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["TEXTXP"] == 0) then
		text_xp = "";
	end

	if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["STYLEXP"] == 0) then
		if(restXP == nil or PlayerXPBar_Player["RESTXP"] == 0) then
			if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["TYPEXP"] == 0) then
				PlayerXPBar_Amount:SetText(text_xp .. " " .. (needXP - currXP));
			else
				PlayerXPBar_Amount:SetText(text_xp .. str_remain);
			end
		else
			local rest_str = (tonumber(restXP)/2);
			if (rest_str > 9999) then
				rest_str = (math.floor(rest_str/1000)).."k";
			end
			if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["TYPEXP"] == 0) then
				PlayerXPBar_Amount:SetText(text_xp .. " " .. (needXP - currXP) .. REST_COLOR .. " (+" .. rest_str .. ")");
			else
				PlayerXPBar_Amount:SetText(text_xp .. str_remain .. REST_COLOR .. "(+" .. rest_str .. ")");
			end
		end
	else
		if(restXP == nil or PlayerXPBar_Player["RESTXP"] == 0) then
			if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["TYPEXP"] == 0) then
				if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["AUTOREMAIN"] == 1) and (100 - ((currXP / needXP) * 100) < 10) then
					PlayerXPBar_Amount:SetText(text_xp .. " " .. (needXP - currXP));
				else
					PlayerXPBar_Amount:SetText(text_xp .. " " .. currXP);
				end
			else
				if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["AUTOREMAIN"] == 1) and (100 - ((currXP / needXP) * 100) < 10) then
					PlayerXPBar_Amount:SetText(text_xp .. str_remain);
				else
					PlayerXPBar_Amount:SetText(text_xp .. str);
				end
			end
		else
			local rest_str = (tonumber(restXP)/2);
			if (rest_str > 9999) then
				rest_str = (math.floor(rest_str/1000)).."k";
			end
			if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["TYPEXP"] == 0) then
				if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["AUTOREMAIN"] == 1) and (100 - ((currXP / needXP) * 100) < 10) then
					PlayerXPBar_Amount:SetText(text_xp .. " " .. (needXP - currXP) .. REST_COLOR .. " (+" .. rest_str .. ")");
				else
					PlayerXPBar_Amount:SetText(text_xp .. " " .. currXP .. REST_COLOR .. " (+" .. rest_str .. ")");
				end
			else
				if (PlayerXPBar_Player ~= nil) and (PlayerXPBar_Player["AUTOREMAIN"] == 1) and (100 - ((currXP / needXP) * 100) < 10) then
					PlayerXPBar_Amount:SetText(text_xp .. str_remain .. REST_COLOR .. "(+" .. rest_str .. ")");
				else
					PlayerXPBar_Amount:SetText(text_xp .. str .. REST_COLOR .. "(+" .. rest_str .. ")");
				end
			end
		end
	end
end

function PlayerXPBarButton_OnLoad(self)
	self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
end

-- Print text to the chat edit frame

function PlayerXPBarButton_OnClick(button)

	local currXP = UnitXP("player");
	local needXP = UnitXPMax("player");
	local currlevel = UnitLevel("player");
	local nextlevel = (UnitLevel("player")) + 1;

	if (IsShiftKeyDown() and ChatFrame1EditBox:IsVisible()) then
		if (button == "LeftButton") then
			ChatFrame1EditBox:Insert(PXPBAR_CURRXP .. currXP .. "/" .. needXP .. format(TEXT(" (%.1f%% through level "..currlevel..") "), ((currXP / needXP) * 100)));
		else
			ChatFrame1EditBox:Insert(PXPBAR_NEEDXP .. (needXP - currXP) .. format(TEXT(" (%.1f%% until level "..nextlevel..") "), (100 - ((currXP / needXP) * 100))));
		end
	end

end

-- Mouse Rollover

function PlayerXPBarButton_Leave()

	GameTooltip:Hide();
end

function PlayerXPBarButton_Enter(self)

	if (PlayerXPBar_Player["TOOLTIP"] == 1) then
		if (UnitLevel("player") == PlayerXPBar_MaxLevel) then
			GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
			GameTooltip:SetText("Player XP Bar",0.25,0.25,1);
			GameTooltip:AddLine(PXPBAR_TOOLTIP_DONE);
			GameTooltip:Show();
			return;
		end

		local currXP = UnitXP("player");
		local needXP = UnitXPMax("player");
		local restXP = GetXPExhaustion();	

		GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT");
		GameTooltip:SetText("Player XP Bar",0.25,0.25,1);
		GameTooltip:AddDoubleLine(PXPBAR_CURRXP, TOOLTIP_COLOR .. currXP .. "/" .. needXP .. TOOLTIP_COLOR1 .. format(TEXT(" (%.1f%%)"), ((currXP / needXP) * 100)), "", 1, 1, 1);
		GameTooltip:AddDoubleLine(PXPBAR_NEEDXP, TOOLTIP_COLOR .. (needXP - currXP) .. TOOLTIP_COLOR1 .. format(TEXT(" (%.1f%%)"), (100 - ((currXP / needXP) * 100))), "", 1, 1, 1);

		if(restXP ~= nil) then
			GameTooltip:AddDoubleLine("----------------","-----",0.4,0.4,0.4,0.4,0.4,0.4);
			GameTooltip:AddDoubleLine(PXPBAR_RESTXP, REST_COLOR .. (tonumber(restXP)/2), "", 1, 1, 1);
		end

		GameTooltip:AddLine("");
		GameTooltip:AddLine("Shift&left/right click for chat editbox functions",1,1,0);
		GameTooltip:AddLine("Ctrl-click to move",1,1,0);
		GameTooltip:Show();
	end
end

function clone(t)             -- return a copy of the table t
  local new = {};             -- create a new table
  local i, v = next(t, nil);  -- i is an index of t, v = t[i]
  while i do
  	if type(v)=="table" then 
  		v=clone(v);
  	end 
    new[i] = v;
    i, v = next(t, i);        -- get next index
  end
  return new;
end
