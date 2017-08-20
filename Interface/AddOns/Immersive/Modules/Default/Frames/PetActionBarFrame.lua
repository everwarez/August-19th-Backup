local Engine, Api, Locale, Settings = unpack(Immersive)

local Default = Engine:GetModule("Default")

-- Registers the element.
function Default:RegisterPetActionBarFrame()
	local settings = Settings:Get(self.Name).Elements["PetActionBarFrame"]
	local pet = Api:RegisterElement("PetActionBarFrame", settings)
	
	-- Add frames
	pet:AddFrame(PetActionBarFrame)
	
	-- Add conditions
	pet:AddConditionRange(settings.Conditions)
	
	-- Add hotspots
	pet:AddHotspot(PetActionBarFrame:GetRect())
	
	pet.Animation:RegisterEvent("UNIT_PET")
	pet.Animation:SetScript("OnEvent", function(self, event, unit)
		if unit == "player" then
			pet:ClearHotspots()
			pet:AddHotspot(PetActionBarFrame:GetRect())
		end
	end)
end

-- Unregisters the element.
function Default:UnregisterPetActionBarFrame()
	Api:UnregisterElement("PetActionBarFrame")
end