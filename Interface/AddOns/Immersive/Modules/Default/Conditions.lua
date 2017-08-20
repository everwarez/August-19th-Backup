local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Condition: Is the player currently marked as AFK?
function Default:IsAFK()
	return IsChatAFK()
end

-- Condition: Is the player holding down the Alt key?
function Default:IsAltDown()
	return IsAltKeyDown()
end

-- Condition: Does the player have 1 or more buffs active?
function Default:IsBuffActive()
	return select(1, UnitBuff("player", 1)) ~= nil
end

-- Condition: Is the player holding down the Control key?
function Default:IsControlDown()
	return IsControlKeyDown()
end

-- Condition: Does the player have 1 or more debuffs active?
function Default:IsDebuffActive()
	return select(1, UnitDebuff("player", 1)) ~= nil
end

-- Condition: Is the player currently marked as DND?
function Default:IsDND()
	return IsChatDND()
end

-- Condition: Is the player flying?
function Default:IsFlying()
	return IsFlying()
end

-- Condition: Does the player have less than full health?
function Default:IsHungry()
	return UnitHealth("player") < UnitHealthMax("player")
end

-- Condition: Is the player in an arena?
function Default:IsInArena()
	return select(2, IsInInstance()) == "arena"
end

-- Condition: Is the player in a battleground?
function Default:IsInBattleground()
	return select(2, IsInInstance()) == "pvp"
end

-- Condition: Is the player in combat?
function Default:IsInCombat()
	return UnitAffectingCombat("player")
end

-- Condition: Is the player indoors?
function Default:IsIndoors()
	return not IsOutdoors()
end

-- Condition: Is the player in a dungeon?
function Default:IsInDungeonInstance()
	return select(2, IsInInstance()) == "party"
end

-- Condition: Is the player in a group?
function Default:IsInParty()
	return IsInGroup()
end

-- Condition: Is the player in a pet battle?
function Default:IsInPetBattle()
	return C_PetBattles.IsInBattle()
end

-- Condition: Is the player in a raid group?
function Default:IsInRaid()
	return IsInRaid()
end

-- Condition: Is the player in a raid?
function Default:IsInRaidInstance()
	return select(2, IsInInstance()) == "raid"
end

-- Condition: Is the player in a scenario?
function Default:IsInScenario()
	return C_Scenario.IsInScenario()
end

-- Condition: Is the player in a vehicle?
function Default:IsInVehicle()
	return UnitInVehicle("player")
end

-- Condition: Is the player moving?
function Default:IsMoving()
	return IsPlayerMoving()
end

-- Condition: Is the player outdoors?
function Default:IsOutdoors()
	return IsOutdoors()
end

-- Condition: Is anyone in the player's party hungry?
function Default:IsPartyHungry()
	if UnitInRaid("player") and GetSpecializationInfo(GetSpecialization()) == "HEALER" then
		for i = 1, 4 do
			local member = "party"..i
			if UnitExists(member) then
				return UnitHealth(member) < UnitHealthMax(member)
			end
		end
	end
	return false
end

-- Condition: Is anyone in the player's raid hungry?
function Default:IsRaidHungry()
	if UnitInRaid("player") and GetSpecializationInfo(GetSpecialization()) == "HEALER" then
		for i = 1, 40 do
			local member = "raid"..i
			if UnitExists(member) then
				return UnitHealth(member) < UnitHealthMax(member)
			end
		end
	end
	return false
end

-- Condition: Is the player currently in a rest area?
function Default:IsResting()
	return IsResting()
end

-- Condition: Is the player a dps?
function Default:IsRoleDamager()
	return GetSpecializationInfo(GetSpecialization()) == "DAMAGER"
end

-- Condition: Is the player a healer?
function Default:IsRoleHealer()
	return GetSpecializationInfo(GetSpecialization()) == "HEALER"
end

-- Condition: Is the player a tank?
function Default:IsRoleTank()
	return GetSpecializationInfo(GetSpecialization()) == "TANK"
end

-- Condition: Is the player holding down the Shift key?
function Default:IsShiftDown()
	return IsShiftKeyDown()
end

-- Condition: Is the player currently not moving?
function Default:IsStationary()
	return not IsPlayerMoving()
end

-- Condition: Is the player stealthed?
function Default:IsStealthed()
	return IsStealthed()
end

-- Condition: Is the player swimming?
function Default:IsSwimming()
	return IsSwimming()
end

-- Condition: Does the player have a target?
function Default:IsTargetAvailable()
	return UnitExists("target")
end

-- Condition: Is the player's target an enemy?
function Default:IsTargetEnemy()
	return UnitIsEnemy("player", "target")
end

-- Condition: Is the player's target hostile?
function Default:IsTargetHostile()
	local reaction = UnitReaction("player", "target")
	return reaction ~= nil and reaction <= 4 -- 4 is Neutral
end

-- Condition: Is the player's target a party member?
function Default:IsTargetInParty()
	return UnitInParty("target")
end

-- Condition: Is the player's target a raid member?
function Default:IsTargetInRaid()
	return UnitInRaid("target")
end

-- Condition: Is the player's target controlled by another player?
function Default:IsTargetPlayer()
	return UnitPlayerControlled("target")
end

-- Condition: Does the player have less than full mana? (Mana classes only)
function Default:IsThirsty()
	if select(1, UnitPowerType("player")) == SPELL_POWER_MANA then
		return UnitPower("player") < UnitPowerMax("player")
	end
	return false
end