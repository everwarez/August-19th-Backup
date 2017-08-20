local Engine, Api, Locale, Settings = unpack(Immersive)

-- Forward Declaration
local CreateGem, LayoutGems, LayoutGemsGrow

-- Extensions
local debug = Engine.Core.Debug

-- Constants
local CHATFRAME_NAME = "ChatFrame%d%s"

local GEM_WIDTH = 30
local GEM_HEIGHT = 5
local GEM_MARGIN = 3
local GEM_ANCHOR = "BOTTOMLEFT"
local GEM_DIRECTION = "HORIZONTAL"
local GEM_GROW_DIRECTION = 1

local Chat = Engine:GetModule("Chat")
local Gems = {}
local IsLayoutRequired = true
local IsOpenRequested = false
local IsPlayerMoving = false

local Element = nil
local Background = nil
local Controller = nil

-- Registers the element in gems mode.
function Chat:RegisterGemsMode()
	local settings = Settings:Get(self.Name)
	Element = Api:RegisterElement("ChatFrame", settings)

	-- Update constants
	GEM_ANCHOR = settings.Anchor
	GEM_DIRECTION = settings.Direction
	if settings.Direction == "HORIZONTAL" then
		-- Reverse the growth direction for right aligned anchors
		if settings.Anchor == "TOPRIGHT" or settings.Anchor == "BOTTOMRIGHT" then
			GEM_GROW_DIRECTION = -1
		end
	else
		-- Adjust gem dimensions for the Y axis
		local width = GEM_WIDTH
		GEM_WIDTH = GEM_HEIGHT
		GEM_HEIGHT = width
		
		-- Reverse the growth direction for top aligned anchors
		if settings.Anchor == "TOPLEFT" or settings.Anchor == "TOPRIGHT" then
			GEM_GROW_DIRECTION = -1
		end
	end

	-- Add frames
	for i = 1, NUM_CHAT_WINDOWS do
		for _, type in pairs({ "", "Tab"}) do
			Element:AddFrame(_G[string.format(CHATFRAME_NAME, i, type)])
		end
	end
	Element:AddFrame(QuickJoinToastButton) -- SOCIAL_QUEUE_UPDATE
	Element:AddFrame(ChatFrameMenuButton)
	
	-- Add conditions
	Element:AddConditionRange(settings.Conditions)
	Element:AddCondition(function() return IsOpenRequested end)
	Element:AddCondition(function() return (GetCVar("chatStyle") == "classic" and ChatFrame1EditBox:IsShown()) or (GetCVar("chatStyle") == "im" and ChatFrame1EditBoxFocusLeft:IsShown()) end)
	
	Element.OnFadeIn = function(self, frame, alpha)
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
	Element.OnFadeOut = function(self, frame, alpha)
		if alpha == 0 and frame:IsShown() then
			frame.wasShown = frame.Show
			frame.Show = function() end
			frame:Hide()
		end
	end
	local x, y = 0, 0
	if settings.Direction == "HORIZONTAL" then
		x = GEM_WIDTH * GEM_GROW_DIRECTION
	else
		y = GEM_HEIGHT * GEM_GROW_DIRECTION
	end

	Background = CreateFrame("Frame", string.format("%s%sGemBackground", Engine.AddOnName, self.Name), UIParent)
	Background:SetPoint(GEM_ANCHOR, UIParent, GEM_ANCHOR, x, y)
	Background:SetSize(GEM_WIDTH, GEM_HEIGHT)
	Background:SetScript("OnUpdate", function()
		if IsLayoutRequired then
			-- Update the gems layout
			LayoutGems()
		end
	end)

	Controller = CreateFrame("Button", string.format("%s%sGemButton", Engine.AddOnName, self.Name), Background)
	Controller:SetSize(GEM_WIDTH, GEM_HEIGHT)
	Controller:SetPoint(GEM_ANCHOR, Background, GEM_ANCHOR)
	Controller:EnableMouse(true)

	Controller.Texture = Controller:CreateTexture(nil, "ARTWORK")
	Controller.Texture:SetColorTexture(1, 1, 0, 0.25)
	Controller.Texture:SetSize(GEM_WIDTH, GEM_HEIGHT)
	Controller.Texture:SetPoint("TOPLEFT")

	Controller:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self)
		GameTooltip:SetText(Locale.CHAT_MODE_GEMS_CONTROLLER_TOOLTIP)
        GameTooltip:Show()
	end)
	Controller:SetScript("OnLeave", function(self)
		GameTooltip_Hide()
	end)
	Controller:SetScript("OnClick", function(self)
		IsOpenRequested = true
	end)

	-- Add hotspots
	self:RegisterChatFrameHotspots(Element)
	
	self:RegisterEvent("CHAT_MSG_BN_WHISPER", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_GUILD", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_INSTANCE_CHAT", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_INSTANCE_CHAT_LEADER", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_OFFICER", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_PARTY", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_PARTY_LEADER", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_RAID", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_RAID_LEADER", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_RAID_WARNING", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_SAY", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_WHISPER", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_YELL", "OnGemMessage")
	self:RegisterEvent("CHAT_MSG_CHANNEL", "OnGemMessage")

	if settings.IsMoving then
		-- Register a special element that will fade the chat gems while the player is moving
		local background = Api:RegisterElement("ChatFrameGemsModeBackground", { DelayTime = 0, FadeTime = 1, IsHotspot = true })
		background:AddFrame(Background)
		background:AddCondition("IsStationary")
		background:AddHotspot(Background:GetRect())

		background.Animation.FadeIn.Alpha:SetDuration(1.0)
		background.Animation.FadeOut.Alpha:SetDuration(0.25)
	end
end

-- Creates a gem which represents a chat type / channel.
function Chat:UnregisterGemsMode()
	self:UnregisterEvent("CHAT_MSG_CHANNEL")
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

-- Chat message handler.
-- message - The message thats received (string)
-- sender - The sender's username. (string)
-- language - The language the message is in. (string)
-- channelString - The full name of the channel, including number. (string)
-- target - The username of the target of the action. Not used by all events. (string)
-- flags - The various chat flags. Like, DND or AFK. (string)
-- unknown1 - This variable has an unknown purpose, although it may be some sort of internal channel id. That however is not confirmed. (number)
-- channelNumber - The numeric ID of the channel. (number)
-- channelName - The full name of the channel, does not include the number. (string)
-- unknown2 - This variable has an unknown purpose although it always seems to be 0. (number)
-- counter - This variable appears to be a counter of chat events that the client recieves. (number)
-- guid - GUID of the person who sent this message. (string)
function Chat:OnGemMessage(event, message, sender, language, channelString, target, flags, unknown1, channelNumber, channelName, unknown2, counter, guid)
	if not ChatFrame1:IsShown() then
		local gem = Gems[event]
		if gem == nil then
			gem = CreateGem(event, channelNumber, channelName)
		end
		gem:Increment()
		IsLayoutRequired = true
	end
end

-- Creates a channel gem to notify the player of a pending chat message.
CreateGem = function(event, index, name)
	local gem  = {}
	gem.Channel = event
	gem.Counter = 0

	gem.Name = string.sub(event, string.len("CHAT_MSG_") + 1)
	if gem.Name == "CHANNEL" then
		gem.Name = gem.Name .. index
		gem.Title = name
	else
		gem.Title = Locale[event]
	end
	gem.R, gem.G, gem.B = GetMessageTypeColor(gem.Name)

	gem.IsActive = function(self)
		return self.Counter > 0
	end
	gem.Increment = function(self)
		self.Counter = self.Counter + 1
	end
	gem.Reset = function(self)
		self.Counter = 0
	end

	gem.Component = CreateFrame("Button", string.format("%s%sGemButton", Engine.AddOnName, Chat.Name), Background)

	local component = gem.Component
	component:SetSize(GEM_WIDTH, GEM_HEIGHT)
	component:SetPoint(GEM_ANCHOR, Background, GEM_ANCHOR)
	component:EnableMouse(true)

	component.Texture = component:CreateTexture(nil, "ARTWORK")
	component.Texture:SetColorTexture(gem.R, gem.G, gem.B, 0.25)
	component.Texture:SetSize(GEM_WIDTH, GEM_HEIGHT)
	component.Texture:SetPoint("TOPLEFT")

	component:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self)
		GameTooltip:SetText(gem.Title)
		if gem.Counter > 0 then
			GameTooltip:AddLine(string.format(Locale.CHAT_MODE_GEMS_CHANNEL_TOOLTIP_UNREAD, gem.Counter), 1, 1, 1, true)
		else
			GameTooltip:AddLine(Locale.CHAT_MODE_GEMS_CHANNEL_TOOLTIP_READ, 1, 1, 1, true)
		end
        GameTooltip:Show()
	end)
	component:SetScript("OnLeave", function(self)
		GameTooltip_Hide()
	end)
	component:SetScript("OnClick", function(self)
		for name, gem in pairs(Gems) do
			gem:Reset()
		end
		IsOpenRequested = true
		IsLayoutRequired = true
	end)

	Gems[event] = gem
	
	return gem
end

-- Updates and renders the gems to the screen.
LayoutGems = function()
	IsLayoutRequired = false
	local x, y, count = 0, 0, 0
	for name, gem in pairs(Gems) do
		local component = gem.Component
		if gem:IsActive() then
			component:Show()
			component:SetPoint(GEM_ANCHOR, Background, GEM_ANCHOR, x, y)
			x, y = LayoutGemsGrow(x, y)
			count = count + 1
		else
			component:Hide()
			component:SetPoint(GEM_ANCHOR, Background, GEM_ANCHOR, 0, 0)
		end
	end
	if count == 0 then
		count = 1
		Controller:Show()
	else
		Controller:Hide()
	end
end

-- Grows the x, y positions based on user settings
LayoutGemsGrow = function(x, y)
	if GEM_DIRECTION == "HORIZONTAL" then
		x = x + ((GEM_WIDTH + GEM_MARGIN) * GEM_GROW_DIRECTION)
	else
		y = y + ((GEM_HEIGHT + GEM_MARGIN) * GEM_GROW_DIRECTION)
	end
	return x, y
end