local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local CHATFRAME_NAME = "ChatFrame%d%s"

local Chat = Engine:GetModule("Chat")
local IsMessageReceived = false

-- Registers the element in classic mode.
function Chat:RegisterClassicMode()
	local settings = Settings:Get(self.Name)
	local chat = Api:RegisterElement("ChatFrame", settings)

	-- Add frames
	for i = 1, NUM_CHAT_WINDOWS do
		for _, type in pairs({ "", "Tab"}) do
			chat:AddFrame(_G[string.format(CHATFRAME_NAME, i, type)])
		end
	end
	chat:AddFrame(QuickJoinToastButton)
	chat:AddFrame(ChatFrameMenuButton)
	
	-- Add conditions
	chat:AddConditionRange(settings.Conditions)
	chat:AddCondition(function() return IsMessageReceived end)
	chat:AddCondition(function() return (GetCVar("chatStyle") == "classic" and ChatFrame1EditBox:IsShown()) or (GetCVar("chatStyle") == "im" and ChatFrame1EditBoxFocusLeft:IsShown()) end)
	
	chat.OnFadeIn = function(self, frame, alpha)
		if alpha > 0 and frame.wasShown then
			frame.Show = frame.wasShown
			frame.wasShown = nil
			frame:Show()
			if ChatFrame1EditBoxFocusLeft:IsShown() then
				ChatFrame1EditBox:SetFocus()
			end
		end
		if alpha == 1 then
			IsOpenRequested = false
		end
	end
	chat.OnFadeOut = function(self, frame, alpha)
		if alpha == 0 and frame:IsShown() then
			frame.wasShown = frame.Show
			frame.Show = function() end
			frame:Hide()
		end
	end

	-- Add hotspots
	self:RegisterChatFrameHotspots(chat)

	self:RegisterEvent("CHAT_MSG_BN_WHISPER", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_GUILD", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_INSTANCE_CHAT", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_INSTANCE_CHAT_LEADER", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_OFFICER", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_PARTY", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_PARTY_LEADER", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_RAID", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_RAID_LEADER", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_RAID_WARNING", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_SAY", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_WHISPER", "OnClassicMessage")
	self:RegisterEvent("CHAT_MSG_YELL", "OnClassicMessage")
end

-- Unregisters the element.
function Chat:UnregisterClassicMode()
	self:UnregisterEvent("CHAT_MSG_YELL")
	self:UnregisterEvent("CHAT_MSG_WHISPER")
	self:UnregisterEvent("CHAT_MSG_SAY")
	self:UnregisterEvent("CHAT_MSG_RAID_WARNING")
	self:UnregisterEvent("CHAT_MSG_RAID_LEADER")
	self:UnregisterEvent("CHAT_MSG_RAID")
	self:UnregisterEvent("CHAT_MSG_PARTY_LEADER")
	self:UnregisterEvent("CHAT_MSG_PARTY")
	self:UnregisterEvent("CHAT_MSG_OFFICER")
	self:UnregisterEvent("CHAT_MSG_INSTANCE_CHAT_LEADER")
	self:UnregisterEvent("CHAT_MSG_INSTANCE_CHAT")
	self:UnregisterEvent("CHAT_MSG_GUILD")
	self:UnregisterEvent("CHAT_MSG_BN_WHISPER")
end

function Chat:OnClassicMessage(event, message)
	IsMessageReceived = true
	return false -- Must return false so the chat message is not filtered
end