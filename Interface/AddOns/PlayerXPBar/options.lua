function PlayerXPBarOptions_OnShow()
	PlayerXPBarOptionsFrameEventFrames = { };
	PlayerXPBarOptionsFrameEventFrames [1]  = { text = PXPBAR_CHECK_TEXT1, tooltipText = PXPBAR_CHECK_TOOLTIPTEXT1, PlayerXPBarVar = "XPBAR"};
	PlayerXPBarOptionsFrameEventFrames [2]  = { text = PXPBAR_CHECK_TEXT2, tooltipText = PXPBAR_CHECK_TOOLTIPTEXT2, PlayerXPBarVar = "TEXTXP"};
	PlayerXPBarOptionsFrameEventFrames [3]  = { text = PXPBAR_CHECK_TEXT3, tooltipText = PXPBAR_CHECK_TOOLTIPTEXT3, PlayerXPBarVar = "AUTOREMAIN"};
	PlayerXPBarOptionsFrameEventFrames [4]  = { text = PXPBAR_CHECK_TEXT4, tooltipText = PXPBAR_CHECK_TOOLTIPTEXT4, PlayerXPBarVar = "RESTXP"};
	PlayerXPBarOptionsFrameEventFrames [5]  = { text = PXPBAR_CHECK_TEXT5, tooltipText = PXPBAR_CHECK_TOOLTIPTEXT5, PlayerXPBarVar = "TOOLTIP"};

	PlayerXPBarOptionsFrameSliders = { };
	PlayerXPBarOptionsFrameSliders [1] = { text = PXPBAR_SLIDER_TEXT1, minValue = 0.0, maxValue = 1.0, valueStep = 1.0, minText=PXPBAR_SLIDER_MINTEXT1, maxText=PXPBAR_SLIDER_MAXTEXT1, tooltipText = PXPBAR_SLIDER_TOOLTIPTEXT1, PlayerXPBarVar = "STYLEXP"};
	PlayerXPBarOptionsFrameSliders [2] = { text = PXPBAR_SLIDER_TEXT2, minValue = 0.0, maxValue = 1.0, valueStep = 1.0, minText=PXPBAR_SLIDER_MINTEXT2, maxText=PXPBAR_SLIDER_MAXTEXT2, tooltipText = PXPBAR_SLIDER_TOOLTIPTEXT2, PlayerXPBarVar = "TYPEXP"};

	local button, string, checked;

	for key, value in pairs(PlayerXPBarOptionsFrameEventFrames) do
		local string = getglobal("PlayerXPBarOptionsFrame_CheckButton"..key.."Text");
		local button = getglobal("PlayerXPBarOptionsFrame_CheckButton"..key);
		
		if ( value.PlayerXPBarVar ) then
			if ( PlayerXPBar_Player[value.PlayerXPBarVar] == 1 ) then
				checked = true;
			else
				checked = false;
			end
		else
			checked = false;
		end
--		OptionsFrame_EnableCheckBox(button);
		button:SetChecked(checked);
		string:SetText(value.text);
		button.tooltipText = value.tooltipText;
	end

	local slider, string, low, high, getvalue	

	--Set Sliders
	for key, value in pairs(PlayerXPBarOptionsFrameSliders) do
		slider = getglobal("PlayerXPBarOptionsFrame_Slider"..key);
		string = getglobal("PlayerXPBarOptionsFrame_Slider"..key.."Text");
		low = getglobal("PlayerXPBarOptionsFrame_Slider"..key.."Low");
		high = getglobal("PlayerXPBarOptionsFrame_Slider"..key.."High");
		getvalue = PlayerXPBar_Player[value.PlayerXPBarVar];
--		OptionsFrame_EnableSlider(slider);
		slider:SetMinMaxValues(value.minValue, value.maxValue);
		slider:SetValueStep(value.valueStep);
		slider:SetValue(getvalue);
		string:SetText(value.text);
		low:SetText(value.minText);
		high:SetText(value.maxText);
		slider.tooltipText = value.tooltipText;
	end
end

function PlayerXPBar_OptionsCheckButtonOnClick(self)
	local button;

	--loop thru checkbox array to find current one, then update its value
	for key, value in pairs(PlayerXPBarOptionsFrameEventFrames) do
		if (self:GetName() == "PlayerXPBarOptionsFrame_CheckButton"..key) then
			button = getglobal("PlayerXPBarOptionsFrame_CheckButton"..key);
			if ( button:GetChecked() ) then
				value.value = 1;
			else
				value.value = 0;
			end
			if ( PlayerXPBar_Player[value.PlayerXPBarVar] ) then
				PlayerXPBar_Player[value.PlayerXPBarVar] = value.value;
			end
		end
	end
	PlayerXPBarShow();
end

function PlayerXPBar_OptionsSliderOnValueChanged(self)
	local slider;
	--loop thru slider array to find current one, then update its value	
	for key, value in pairs(PlayerXPBarOptionsFrameSliders) do
		if (self:GetName() == "PlayerXPBarOptionsFrame_Slider"..key) then
			slider = getglobal("PlayerXPBarOptionsFrame_CheckButton"..key);
			if ( value.PlayerXPBarVar ) then
				PlayerXPBar_Player[value.PlayerXPBarVar] = self:GetValue();
			end
		end
	end
	PlayerXPBarShow();
end

function PlayerXPBarOptions_OnLoad()
	UIPanelWindows["PlayerXPBarOptions"] = {area = "center", pushable = 0};
end

function PlayerXPBarOptions_OnHide(self)

	if (UnitLevel("player") == PlayerXPBar_MaxLevel) then
		PlayerXPBar:Hide();
	end
	-- Check if the options frame was opened by myAddOns
	if (MYADDONS_ACTIVE_OPTIONSFRAME == self) then
		ShowUIPanel(myAddOnsFrame);
	end
end
