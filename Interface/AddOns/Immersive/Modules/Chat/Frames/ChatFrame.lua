local Engine, Api, Locale, Settings = unpack(Immersive)

-- Constants
local CHATFRAME_NAME = "ChatFrame%d"
local CHATFRAME_TAB_NAME = "ChatFrame%dTab"

local Chat = Engine:GetModule("Chat")

-- Registers the element.
function Chat:RegisterChatFrame()
	local settings = Settings:Get(self.Name)
	if settings.Mode == "GEMS" then
		self:RegisterGemsMode()
	else
		self:RegisterClassicMode()
	end
end

-- Unregisters the element.
function Chat:UnregisterChatFrame()
	local settings = Settings:Get(self.Name)
	if settings.Mode == "GEMS" then
		self:UnregisterGemsMode()
	else
		self:UnregisterClassicMode()
	end
end

function Chat:RegisterChatFrameHotspots(element)
	element:AddHotspot(Api:GetContainableRect(ChatFrame1, ChatFrame1Tab, QuickJoinToastButton, ChatFrameMenuButton))
	for i = 2, NUM_CHAT_WINDOWS do
		-- Create seperate hotspots per chat frame, it's ok that all chat frames will fade in for now
		local frame = _G[string.format(CHATFRAME_NAME, i)]
		local tab = _G[string.format(CHATFRAME_TAB_NAME, i)]
		if frame:IsShown() or tab:IsShown() then
			element:AddHotspot(Api:GetContainableRect(frame, tab))
		end
	end
end

function Chat:UnregisterChatFrameHotspots(element)
	element:ClearHotspots()
end