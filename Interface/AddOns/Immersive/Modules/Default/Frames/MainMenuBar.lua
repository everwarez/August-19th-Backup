local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local MAINMENUBAR_ACTION_BUTTON_COOLDOWN = "ActionButton%dCooldown"

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterMainMenuBar()
	local settings = Settings:Get(self.Name).Elements["MainMenuBar"]
	local bar = Api:RegisterElement("MainMenuBar", settings)
	
	-- Add frames
	-- MainMenuBar encapsulates all the multibar frames including the
	-- side bars. Instead we will only add the parts that make up the
	-- main multibar, the micromenu, the backpacks and the XP/Rep bars.
	bar:AddFrame(CharacterMicroButton)
	bar:AddFrame(SpellbookMicroButton)
	bar:AddFrame(TalentMicroButton)
	bar:AddFrame(AchievementMicroButton)
	bar:AddFrame(QuestLogMicroButton)
	bar:AddFrame(GuildMicroButton)
	bar:AddFrame(LFDMicroButton)
	bar:AddFrame(EJMicroButton)
	bar:AddFrame(CollectionsMicroButton)
	bar:AddFrame(MainMenuMicroButton)
	bar:AddFrame(HelpMicroButton)
	bar:AddFrame(StoreMicroButton)
	bar:AddFrame(ActionButton1)
	bar:AddFrame(ActionButton2)
	bar:AddFrame(ActionButton3)
	bar:AddFrame(ActionButton4)
	bar:AddFrame(ActionButton5)
	bar:AddFrame(ActionButton6)
	bar:AddFrame(ActionButton7)
	bar:AddFrame(ActionButton8)
	bar:AddFrame(ActionButton9)
	bar:AddFrame(ActionButton10)
	bar:AddFrame(ActionButton11)
	bar:AddFrame(ActionButton12)
	bar:AddFrame(ActionBarUpButton)
	bar:AddFrame(ActionBarDownButton)
	bar:AddFrame(MainMenuBarBackpackButton)
	bar:AddFrame(CharacterBag0Slot)
	bar:AddFrame(CharacterBag1Slot)
	bar:AddFrame(CharacterBag2Slot)
	bar:AddFrame(CharacterBag3Slot)
	bar:AddFrame(MainMenuExpBar)
	bar:AddFrame(ReputationWatchBar)
	bar:AddFrame(ArtifactWatchBar)
	bar:AddFrame(HonorWatchBar)

	bar:AddFrame(MainMenuBarLeftEndCap)
	bar:AddFrame(MainMenuBarRightEndCap)
	bar:AddFrame(MainMenuBarTexture0)
	bar:AddFrame(MainMenuBarTexture1)
	bar:AddFrame(MainMenuBarTexture2)
	bar:AddFrame(MainMenuBarTexture3)
	bar:AddFrame(MainMenuBarPageNumber)
	bar:AddFrame(MainMenuMaxLevelBar0)
	bar:AddFrame(MainMenuMaxLevelBar1)
	bar:AddFrame(MainMenuMaxLevelBar2)
	bar:AddFrame(MainMenuMaxLevelBar3)
	
	-- Add conditions
	bar:AddConditionRange(settings.Conditions)

	-- Add hotspots
	bar:AddHotspot(MainMenuBar:GetRect())

	bar.OnFadeIn = function(self, frame, alpha)
		if not ActionButton1Cooldown:GetDrawBling() then
			for i = 1, 12 do
				local cooldown = _G[string.format(MAINMENUBAR_ACTION_BUTTON_COOLDOWN, i)]
				cooldown:SetDrawBling(true)
			end
		end
	end
	bar.OnFadeOut = function(self, frame, alpha)
		if alpha < 0.01 then
			for i = 1, 12 do
				local cooldown = _G[string.format(MAINMENUBAR_ACTION_BUTTON_COOLDOWN, i)]
				cooldown:SetDrawBling(false)
			end
		end
	end

	-- Disable ITEM_PUSH animation
	hooksecurefunc("ItemAnim_OnEvent", function(self, event, ...)
		if event == "ITEM_PUSH" then
			local arg1, arg2 = ...
			local id = self:GetID()

			if id == arg1 then
				Api:ExecuteProtected(function()
					self.animIcon:Hide()
				end)
				self.flyin:Stop()
			end
		end
	end)

	GameMenuFrame:HookScript("OnShow", function()
		if bar.State == 0 and StoreMicroButton:GetAlpha() > 0 then -- 0 = HIDDEN
			StoreMicroButton:SetAlpha(0)
		end
	end)
end

-- Unregisters the element.
function Default:UnregisterMainMenuBar()
	Api:UnregisterElement("MainMenuBar")
end