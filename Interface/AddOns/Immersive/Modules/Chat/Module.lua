local Engine, Api, Locale, Settings = unpack(Immersive)

-- Registration
local Chat = Engine:RegisterModule("Chat")

-- Initialize the module.
function Chat:OnInitialize()
	-- Register glabally accessible 'Gems' mode and restrict it to the chat frame
	local mode = Api:RegisterMode("GEMS", self.ModeGems, Locale.CHAT_MODE_GEMS_TITLE)
	mode.Restrictions = { "ChatFrame" }
end

-- Called when the module is enabled.
function Chat:OnEnable()
	self:RegisterChatFrame()
end

-- Called when the module is disabled.
function Chat:OnDisable()
	self:UnregisterChatFrame()
end

-- Register the default settings for the module.
function Chat:OnRegisterDefaults()
	return {
		Enabled = true,
		Mode = "GEMS",
		Anchor = "BOTTOMLEFT",
		Direction = "HORIZONTAL",
		DelayTime = 30.0,
		FadeTime = 1.0,
		IsHotspot = false,
		IsMoving = true,
		Conditions = {
			IsInArena = true,
			IsInBattleground = true
		}
	}
end