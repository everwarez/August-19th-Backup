local AddOnName, AddOn = ...
local Engine = LibStub("AceAddon-3.0"):NewAddon(AddOnName, "AceConsole-3.0")

-- Initialize engine instance
Engine.AddOnName = AddOnName
Engine.Version = GetAddOnMetadata(AddOnName, "Version")
Engine.Title = GetAddOnMetadata(AddOnName, "Title")

Engine.Api = { Priority = -100 }
Engine.Locale = LibStub("AceLocale-3.0"):GetLocale(AddOnName)
Engine.Settings = {}

Engine.Class = select(2, UnitClass("player"))
Engine.Name = UnitName("player")
Engine.Realm = GetRealmName()

-- Create a globally accessible addon instance
AddOn[1] = Engine -- Engine
AddOn[2] = Engine.Api -- Api
AddOn[3] = Engine.Locale -- Locale
AddOn[4] = Engine.Settings -- Settings
_G[AddOnName] = AddOn