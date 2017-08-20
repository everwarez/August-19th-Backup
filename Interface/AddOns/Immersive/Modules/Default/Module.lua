local Engine, Api, Locale, Settings = unpack(Immersive)

-- Extensions
local output = Engine.Core.Output

-- Registration
local Default = Engine:RegisterModule("Default")

-- Initialize the module.
function Default:OnInitialize()
	-- Register glabally accessible conditions, these can be use by any
	-- module for any element
	Api:RegisterCondition("IsAFK", Default.IsAFK, Locale.DEFAULT_AFK_CONDITION_TITLE, Locale.DEFAULT_AFK_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsAltDown", Default.IsAltDown, Locale.DEFAULT_ALT_DOWN_CONDITION_TITLE, Locale.DEFAULT_ALT_DOWN_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsBuffActive", Default.IsBuffActive, Locale.DEFAULT_BUFF_ACTIVE_CONDITION_TITLE, Locale.DEFAULT_BUFF_ACTIVE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsControlDown", Default.IsControlDown, Locale.DEFAULT_CONTROL_DOWN_CONDITION_TITLE, Locale.DEFAULT_CONTROL_DOWN_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsDebuffActive", Default.IsDebuffActive, Locale.DEFAULT_DEBUFF_ACTIVE_CONDITION_TITLE, Locale.DEFAULT_DEBUFF_ACTIVE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsDND", Default.IsDND, Locale.DEFAULT_DND_CONDITION_TITLE, Locale.DEFAULT_DND_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsFlying", Default.IsFlying, Locale.DEFAULT_FLYING_CONDITION_TITLE, Locale.DEFAULT_FLYING_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsHungry", Default.IsHungry, Locale.DEFAULT_HUNGRY_CONDITION_TITLE, Locale.DEFAULT_HUNGRY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInArena", Default.IsInArena, Locale.DEFAULT_IN_ARENA_CONDITION_TITLE, Locale.DEFAULT_IN_ARENA_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInBattleground", Default.IsInBattleground, Locale.DEFAULT_IN_BATTLEGROUND_CONDITION_TITLE, Locale.DEFAULT_IN_BATTLEGROUND_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInCombat", Default.IsInCombat, Locale.DEFAULT_IN_COMBAT_CONDITION_TITLE, Locale.DEFAULT_IN_COMBAT_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsIndoors", Default.IsIndoors, Locale.DEFAULT_INDOORS_CONDITION_TITLE, Locale.DEFAULT_INDOORS_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInDungeonInstance", Default.IsInDungeonInstance, Locale.DEFAULT_IN_DUNGEON_INSTANCE_CONDITION_TITLE, Locale.DEFAULT_IN_DUNGEON_INSTANCE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInParty", Default.IsInParty, Locale.DEFAULT_IN_PARTY_CONDITION_TITLE, Locale.DEFAULT_IN_PARTY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInPetBattle", Default.IsInPetBattle, Locale.DEFAULT_IN_PET_BATTLE_CONDITION_TITLE, Locale.DEFAULT_IN_PET_BATTLE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInRaid", Default.IsInRaid, Locale.DEFAULT_IN_RAID_CONDITION_TITLE, Locale.DEFAULT_IN_RAID_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInRaidInstance", Default.IsInRaidInstance, Locale.DEFAULT_IN_RAID_INSTANCE_CONDITION_TITLE, Locale.DEFAULT_IN_RAID_INSTANCE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInScenario", Default.IsInScenario, Locale.DEFAULT_IN_SCENARIO_CONDITION_TITLE, Locale.DEFAULT_IN_SCENARIO_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsInVehicle", Default.IsInVehicle, Locale.DEFAULT_IN_VEHICLE_CONDITION_TITLE, Locale.DEFAULT_IN_VEHICLE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsMoving", Default.IsMoving, Locale.DEFAULT_MOVING_CONDITION_TITLE, Locale.DEFAULT_MOVING_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsOutdoors", Default.IsOutdoors, Locale.DEFAULT_OUTDOORS_CONDITION_TITLE, Locale.DEFAULT_OUTDOORS_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsPartyHungry", Default.IsPartyHungry, Locale.DEFAULT_PARTY_HUNGRY_CONDITION_TITLE, Locale.DEFAULT_PARTY_HUNGRY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsRaidHungry", Default.IsRaidHungry, Locale.DEFAULT_RAID_HUNGRY_CONDITION_TITLE, Locale.DEFAULT_RAID_HUNGRY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsResting", Default.IsResting, Locale.DEFAULT_RESTING_CONDITION_TITLE, Locale.DEFAULT_RESTING_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsRoleDamager", Default.IsRoleDamager, Locale.DEFAULT_ROLE_DAMAGER_CONDITION_TITLE, Locale.DEFAULT_ROLE_DAMAGER_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsRoleHealer", Default.IsRoleHealer, Locale.DEFAULT_ROLE_HEALER_CONDITION_TITLE, Locale.DEFAULT_ROLE_HEALER_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsRoleTank", Default.IsRoleTank, Locale.DEFAULT_ROLE_TANK_CONDITION_TITLE, Locale.DEFAULT_ROLE_TANK_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsShiftDown", Default.IsShiftDown, Locale.DEFAULT_SHIFT_DOWN_CONDITION_TITLE, Locale.DEFAULT_SHIFT_DOWN_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsStationary", Default.IsStationary, Locale.DEFAULT_STATIONARY_CONDITION_TITLE, Locale.DEFAULT_STATIONARY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsStealthed", Default.IsStealthed, Locale.DEFAULT_STEALTHED_CONDITION_TITLE, Locale.DEFAULT_STEALTHED_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsSwimming", Default.IsSwimming, Locale.DEFAULT_SWIMMING_CONDITION_TITLE, Locale.DEFAULT_SWIMMING_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsTargetAvailable", Default.IsTargetAvailable, Locale.DEFAULT_TARGET_AVAILABLE_CONDITION_TITLE, Locale.DEFAULT_TARGET_AVAILABLE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsTargetEnemy", Default.IsTargetEnemy, Locale.DEFAULT_TARGET_ENEMY_CONDITION_TITLE, Locale.DEFAULT_TARGET_ENEMY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsTargetHostile", Default.IsTargetHostile, Locale.DEFAULT_TARGET_HOSTILE_CONDITION_TITLE, Locale.DEFAULT_TARGET_HOSTILE_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsTargetInParty", Default.IsTargetInParty, Locale.DEFAULT_TARGET_IN_PARTY_CONDITION_TITLE, Locale.DEFAULT_TARGET_IN_PARTY_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsTargetInRaid", Default.IsTargetInRaid, Locale.DEFAULT_TARGET_IN_RAID_CONDITION_TITLE, Locale.DEFAULT_TARGET_IN_RAID_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsTargetPlayer", Default.IsTargetPlayer, Locale.DEFAULT_TARGET_PLAYER_CONDITION_TITLE, Locale.DEFAULT_TARGET_PLAYER_CONDITION_TOOLTIP)
	Api:RegisterCondition("IsThirsty", Default.IsThirsty, Locale.DEFAULT_THIRSTY_CONDITION_TITLE, Locale.DEFAULT_THIRSTY_CONDITION_TOOLTIP)
end

-- Called when the module is enabled.
function Default:OnEnable()
	self:RegisterBuffFrame()
	self:RegisterRaidFrame()
	self:RegisterMainMenuBar()
	self:RegisterMinimapCluster()
	self:RegisterMultiBarBottomLeft()
	self:RegisterMultiBarBottomRight()
	self:RegisterMultiBarLeft()
	self:RegisterMultiBarRight()
	self:RegisterObjectiveTrackerFrame()
	self:RegisterOrderHallCommandBar()
	self:RegisterPartyFrame()
	self:RegisterPetActionBarFrame()
	self:RegisterPlayerFrame()
	self:RegisterStanceBarFrame()
	self:RegisterTargetFrame()
	self:RegisterVehicleLeaveButton()
	self:RegisterVehicleSeatIndicator()

	output(string.format(Locale.DEFAULT_DEBUG_WELCOME, RAID_CLASS_COLORS[Engine.Class].colorStr, Engine.Name))
end

-- Called when the module is disabled.
function Default:OnDisable()
	self:UnregisterVehicleSeatIndicator()
	self:UnregisterVehicleLeaveButton()
	self:UnregisterTargetFrame()
	self:UnregisterStanceBarFrame()
	self:UnregisterPlayerFrame()
	self:UnregisterPetActionBarFrame()
	self:UnregisterPartyFrame()
	self:UnregisterOrderHallCommandBar()
	self:UnregisterObjectiveTrackerFrame()
	self:UnregisterMultiBarRight()
	self:UnregisterMultiBarLeft()
	self:UnregisterMultiBarBottomRight()
	self:UnregisterMultiBarBottomLeft()
	self:UnregisterMinimapCluster()
	self:UnregisterMainMenuBar()
	self:UnregisterRaidFrame()
	self:UnregisterBuffFrame()
end

-- Register the default settings for the module.
function Default:OnRegisterDefaults()
	return {
		Enabled = true,
		Elements = {
			BuffFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsDebuffActive = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			CompactRaidFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 20.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsTargetInRaid = true,
					IsRaidHungry = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			MainMenuBar = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInPetBattle = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			MinimapCluster = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 30.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInArena = true,
					IsInBattleground = true
				}
			},
			MultibarBottomLeft = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			MultibarBottomRight = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			MultibarLeft = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			MultibarRight = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			ObjectiveTrackerFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 30.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInScenario = true
				}
			},
			OrderHallCommandBar = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true
				}
			},
			PartyMemberFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 20.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsTargetInParty = true,
					IsPartyHungry = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			PetActionBarFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			PlayerFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsHungry = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			StanceBarFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			TargetFrame = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInCombat = true,
					IsTargetInRaid = true,
					IsTargetPlayer = true,
					IsTargetEnemy = true,
					IsTargetHostile = true,
					IsInArena = true,
					IsInBattleground = true
				}
			},
			VehicleLeaveButton = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
					IsInVehicle = true,
				}
			},
			VehicleSeatIndicator = {
				Enabled = true,
				Mode = "ANY",
				DelayTime = 1.0,
				FadeTime = 1.0,
				IsHotspot = true,
				Conditions = {
				}
			}
		}
	}
end