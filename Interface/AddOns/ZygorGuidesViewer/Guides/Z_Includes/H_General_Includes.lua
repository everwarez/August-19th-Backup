if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



--------------------------------------------------------------------------------------------------------------------------------------
-- Hearth Includes
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("home_ValleyofStrength",[[
		talk Innkeeper Gryshka##6929
		home Valley of Strength |goto Orgrimmar 53.6,78.8
]])

ZygorGuidesViewer:RegisterInclude("home_ValleyofHonor",[[
		talk Innkeeper Nufa##46642
		home Valley of Honor |goto Orgrimmar 70.5,49.2
]])

ZygorGuidesViewer:RegisterInclude("home_UC",[[
		talk Innkeeper Norman##6741
		home Trade Quarter |goto Undercity 67.7,37.9
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Spirt_Harmony",[[
		talk Danky##66685 |goto Vale of Eternal Blossoms/0 61.7,21.7
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Portal Includes
--------------------------------------------------------------------------------------------------------------------------------------

--Opening up the portal to Pandaria--
-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("h_begin_pandaria",[[
	step
		In order to get to Pandaria for the first time, you must complete the opening questline to The Jade Forest.
		confirm
	step
		accept The Art of War##29612
		Report to Grommash Hold |q 29612/1 |goto Orgrimmar 49.8,75.3
	step
		talk General Nazgrim##54870
		turnin The Art of War##29612 |goto Orgrimmar 48.6,70.6
		accept All Aboard!##31853 |goto Orgrimmar 48.6,70.6
	step
		Look for a ship in the air. You have to use a flying mount to get to General Nazgrim.
		talk General Nazgrim##55054
		turnin All Aboard!##31853 |goto Kalimdor 61.2,44.6
		accept Into the Mists##29690 |goto Kalimdor 61.2,44.6
	step
		talk General Nazgrim##55054
		Tell him you're ready to go!
		Discover Pandaria |q 29690/1
	step
		talk General Nazgrim##55135
		turnin Into the Mists##29690 |goto The Jade Forest 30.8,10.2
		accept Paint it Red!##31765 |goto The Jade Forest 30.8,10.2
	step
		Follow the steps down here. |goto 31.4,11.3 < 20
		clicknpc Gunship Turret##67032
		invehicle
	step
		Use your abilities on your action bar.
		kill 80 Thunder Hold Troops |q 31765/1
		kill 9 Thunder Hold Cannons |q 31765/2
		modelnpc 66203
		modelnpc 66348
		modelnpc 66506
		modelnpc 66291
	step
		talk Rivett Clutchpop##67250
		turnin Paint it Red!##31765 |goto 31.0,11.0
		accept Touching Ground##31766 |goto 31.0,11.0
	step
		click Rappelling Rope##7548
		Rappel into Honeydew Glade |q 31766/1 |goto 31.5,11.1
	step
		talk General Nazgrim##55135
		turnin Touching Ground##31766 |goto 31.6,11.3
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Professions Trainers
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
		talk Yelmak##3347 |goto Orgrimmar 55.7,45.7
]])

ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
		talk Belloc Brightblade##47571 |goto Orgrimmar 49.0,70.7
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
		talk Rogg##37072 |goto Orgrimmar 44.4,77.3
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		talk Kradu Grimblade##20124 |goto Shattrath City 69.4,43.3
]])

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		talk Gonto##46357 |goto Orgrimmar 44.6,78.4
]])

ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
		talk Muraga##46741 |goto Orgrimmar 54.7,50.5
]])

ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
		talk Nerog##46716 |goto Orgrimmar 55.2,55.7
]])

ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
		talk Roxxik##11017 |goto Orgrimmar 56.9,56.4
]])

ZygorGuidesViewer:RegisterInclude("trainer_Cooking",[[
		talk Arugi##46709 |goto Orgrimmar 56.3,61.5
]])

ZygorGuidesViewer:RegisterInclude("trainer_Cooking_MoP",[[
		talk Sungshin Ironpaw##64231 |goto Valley of the Four Winds 53.6,51.2
]])

ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
		talk Magar##3363 |goto Orgrimmar 60.8,59.1
]])

ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
		talk Krenk Choplimb##45540 |goto Orgrimmar 37.1,87.2
]])

ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
		talk Lumak##3332 |goto Orgrimmar 66.5,41.5
]])

ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
		talk Godan##3345 |goto Orgrimmar 53.4,49.3
]])

ZygorGuidesViewer:RegisterInclude("trainer_Skinning",[[
		talk Thuwd##7088 |goto Orgrimmar 61.1,54.8
]])

ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
		talk Karolek##3365 |goto Orgrimmar 60.9,54.9
]])

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		talk Makaru##3357 |goto Orgrimmar 72.3,35.0
]])

ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
		talk Lugrah##46675 |goto Orgrimmar 72.5,34.5
]])

ZygorGuidesViewer:RegisterInclude("trainer_HerbalismUC",[[
		talk Martha Alliestar##4614 |goto Undercity 54.0,49.6
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("trainer_Mining_mop",[[
		talk Stonebreaker Ruian##66979 |goto The Jade Forest/0 27.9,14.9
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("trainer_Herbalism_mop",[[
		talk Grower Miao##66980 |goto The Jade Forest/0 27.8,15.5
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("home_Herb_Mine_mop",[[
		talk Brewmother Kiki##66236
		home Honeydew Village |goto The Jade Forest/0 28.5,13.3
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Supply Vendors
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
		talk Kor'geld##3348 |goto Orgrimmar 55.4,46.1
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("vendor_Archaeology",[[
]])

ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
		talk Punra##46359 |goto Orgrimmar 45.0,77.1
]])

ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
		talk Gorina##3358 |goto Orgrimmar 72.7,34.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
		talk Moraka##46718 |goto Orgrimmar 55.4,56.0
]])

ZygorGuidesViewer:RegisterInclude("vendor_Engineering",[[
		talk Sovik##3413 |goto Orgrimmar 56.8,56.4
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
		talk Suja##46708 |goto Orgrimmar 56.4,61.3
]])

ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
		talk Borya##3364 |goto Orgrimmar 60.7,58.7
]])

ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
		talk Kithas##3346 |goto Orgrimmar 53.3,48.9
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("vendor_Skinning",[[
		talk Tamar##3366 |goto Orgrimmar 60.5,54.5
]])

ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
		talk Tamar##3366 |goto Orgrimmar 60.3,54.3
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
		talk Marith Lazuria##50482 |goto Orgrimmar 72.4,34.6
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting_1",[[
		talk Taryssa Lazuria##57922 |goto Orgrimmar 72.4,34.6
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting_MoP",[[
		talk Mai the Jade Shaper##65098 |goto The Jade Forest 48.0,35.0
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Buying
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.3
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("auctioneer_alt",[[
		talk Auctioneer Drezbit##46637 |goto Orgrimmar 66.6,36.3
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("auctioneer_dalaran",[[
		talk Brassbolt Mechawrench##35594 |goto Dalaran 38.8,25.1
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.0,26.5 |only if rep('The Aldor')>=Friendly
		talk Auctioneer Lyrsara##50140 |goto Shattrath City 56.8,62.4 |only if rep('The Scryers')>=Friendly
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("goto_shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.0,26.5 |only if rep ('The Aldor') >= Friendly
		talk Auctioneer Kalaren##50139 |goto Shattrath City 57.0,63.2 |only if rep ('The Scryers') >= Friendly
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_warspear",[[
		talk Shei'ann Younghoof##88128 |goto Warspear/0 54.8,25.0
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Anvils
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files. 
ZygorGuidesViewer:RegisterInclude("maincity_forge",[[
		Stand at this forge |goto Orgrimmar 75.9,37.3
]])

ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
		Stand at this Anvil |goto Orgrimmar 44.7,78.0
]])

ZygorGuidesViewer:RegisterInclude("maincity_forge2",[[
		Stand at this forge |goto Orgrimmar 75.7,34.6
]])

		

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("hellanvil",[[
		Stand in this spot |goto Hellfire Peninsula 53.3,38.3
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("twil_anvil",[[
		Stand next to this anvil |goto Twilight Highlands 79.2,76.3
]])

ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
		Stand next to this Anvil |goto Shattrath City 69.4,42.8
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Other
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("cast_campfire",[[
		Create a basic campfire |cast Basic Campfire##818
]])




-------------------------
-- Mount File Includes --
-------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("trainTailoring",[[
		talk Magar##3363 |goto Orgrimmar 60.8,59.1
]])
ZygorGuidesViewer:RegisterInclude("trainEngineering",[[
		talk Roxxik##11017 |goto Orgrimmar 56.9,56.4
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("EngSupplies",[[
		talk Sovik##3413 |goto Orgrimmar 56.8,56.4
]])
ZygorGuidesViewer:RegisterInclude("OrgTabard",[[
		talk Stone Guard Nargol##50488 |only if rep("Orgrimmar")<Exalted
		buy 1 Orgrimmar Tabard##45581 |goto Orgrimmar 50.2,58.3 |only if rep("Orgrimmar")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("BilgeTabard",[[
		talk Frizzo Villamar##50323 |only if rep("Bilgewater Cartel")<Exalted
		buy 1 Bilgewater Cartel Tabard##64884 |goto Orgrimmar 50.2,58.3 |only if rep("Bilgewater Cartel")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("TBTabard",[[
		talk Brave Tuho##50483 |only if rep("Thunder Bluff")<Exalted
		buy 1 Thunder Bluff Tabard##45584 |goto Thunder Bluff 46.8,50.0 |only if rep("Thunder Bluff")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("DSTabard",[[
		talk Champion Uru'zin##50477 |only if rep("Darkspear Trolls")<Exalted
		buy 1 Darkspear Tabard##45582 |goto Orgrimmar 50.2,58.3 |only if rep("Darkspear Trolls")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("SCTabard",[[
		talk Magistrix Nizara##50484 |only if rep("Silvermoon City")<Exalted
		buy 1 Silvermoon City Tabard##45585 |goto Eversong Woods 54.2,50.8  |only if rep("Silvermoon City")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("UCTabard",[[
		talk Captain Donald Adams##50304 |only if rep("Undercity")<Exalted
		buy 1 Undercity Tabard##45583 |goto Undercity 50.2,58.3 |only if rep("Undercity")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("WATabard",[[
		talk Cielstrasza##32533 |only if rep("The Wyrmrest Accord")<Exalted
		buy 1 Tabard of the Wyrmrest Accord##43156 |goto Dragonblight 59.8,53.0 |only if rep("The Wyrmrest Accord")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("RamkahenTabard",[[
		talk Blacksmith Abasi##48617 |only if rep("Ramkahen")<Exalted
		buy 1 Tabard of Ramkahen##65904 |goto Uldum 54.1,33.3 |only if rep("Ramkahen")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("main_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		#include %tabard%
		Use this _tabard_ and _complete dungeons_ with _friends_ or in the _random dungeon finder_ to get to _exalted_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterInclude("misc_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		_Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])
ZygorGuidesViewer:RegisterInclude("dailies_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])