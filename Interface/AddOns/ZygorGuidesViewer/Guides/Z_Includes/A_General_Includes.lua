if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



--------------------------------------------------------------------------------------------------------------------------------------
-- Hearth
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("innkeeper_dwarven",[[
		talk Thaegra Tillstone##44235 |goto Stormwind City,64.9,31.9
]])

ZygorGuidesViewer:RegisterInclude("home_TradeDistrict",[[
		talk Innkeeper Allison##6740
		home Trade District|goto Stormwind City,60.4,75.3
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("home_DwarvenDistrict",[[
		talk Thaegra Tillstone##44235
		home Dwarven District |goto Stormwind City,64.9,31.9
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Spirt_Harmony",[[
		talk Krystel##66678 |goto Vale of Eternal Blossoms/0 84.6,60.4
]])




--------------------------------------------------------------------------------------------------------------------------------------
-- Portals
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("a_begin_pandaria",[[
	step
		In order to get to Pandaria for the first time, you must complete the opening questline to The Jade Forest.
		confirm
	step
		accept The King's Command##29547 |goto Stormwind City 81.3,37.1
		Visit Stormwind Keep |q 29547/1 |goto Stormwind City 81.3,37.1
	step
		talk Rell Nightwind##55789
		turnin The King's Command##29547 |goto 78.8,40.0
		accept The Mission##29548 |goto 78.8,40.0
	step
		Look for a ship in the air. You have to use a flying mount to get to Sky Admiral Rogers.
		talk Sky Admiral Rogers##66292 |goto Eastern Kingdoms 41.46,70.19 //##756
		Tell her:
		<I am ready to depart> |goto The Jade Forest 42.0,92.8 |noway |c |q 29548
	step
		talk Sky Admiral Rogers##66292 //##756
		turnin The Mission##29548 |goto The Jade Forest 42.0,92.8
		accept Unleash Hell##31732 |goto The Jade Forest 42.0,92.8
	step
		clicknpc Skyfire Gyrocopter##66473 |goto 42.0,92.5
		|invehicle |q 31732
	step
		Use the abilities on your bar in order to kill the enemies.
		kill 60 Garrosh'ar Horde |q 31732/1
		kill 8 Garrosh'ar Shredder |q 31732/2
		kill Bladefist Reaper sunk |q 31732/3
		kill Stygian Scar sunk |q 31732/4
	step
		talk Sky Admiral Rogers##66292 //##756
		turnin Unleash Hell##31732 |goto 42.0,92.7
		accept Touching Ground##31733 |goto 42.0,92.7
	step
		click Skyfire Parachute##12345 // need correct ID
		Equip a Skyfire Parachute |q 31733/1 |goto 42.3,92.8
	step
		talk Sully "The Pickle" McLeary##54616
		turnin Touching Ground##31733 |goto 43.6,90.7 //goto 41.4,79.7
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Professions Trainers
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
		talk Lilyssia Nightbreeze##5499 |goto Stormwind City,55.7,86.1
]])

ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
		talk Harrison Jones##44238 |goto Stormwind City,85.8,25.9
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
		talk Therum Deepforge##5511 |goto Stormwind City 63.7,37.0
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		talk Kradu Grimblade##20124 |goto Shattrath City,69.4,43.3
]])

ZygorGuidesViewer:RegisterInclude("trainer_Cooking",[[
		talk Stephen Ryback##5482 |goto Stormwind City,77.3,53.2
]])

ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
		talk Lucan Cordell##1317 |goto Stormwind City,52.9,74.5
]])

ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
		talk Lilliam Sparkspindle##5518 |goto Stormwind City,62.8,32.0
]])

ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
		talk Angela Leifeld##56796 |goto Stormwind City 52.2,45.4
]])

ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
		talk Arnold Leland##5493 |goto Stormwind City 54.8,69.6
]])

ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
		talk Tannysa##5566 |goto Stormwind City 54.3,84.1
]])

ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
		talk Catarina Stanford##30713 |goto Stormwind City,49.8,74.8
]])

ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
		talk Theresa Denman##44582 |goto Stormwind City 63.5,61.8
]])

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		talk Gelman Stonehand##5513 |goto Stormwind City,59.6,37.6
]])

ZygorGuidesViewer:RegisterInclude("trainer_Skinning",[[
		talk Maris Granger##1292 |goto Stormwind City,72.2,62.2
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("trainer_Skinning_IF",[[
		talk Balthus Stoneflayer##6291 |goto Ironforge,39.9,32.6
]])

ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
		talk Georgio Bolero##1346 |goto Stormwind City,53.1,81.3
]])

ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
		talk Simon Tanner##5564 |goto Stormwind City,71.7,63.0
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Supply Vendors
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
		talk Maria Lumere##1313 |goto Stormwind City 55.9,85.6
]])

ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
		talk Kaita Deepforge##5512 |goto Stormwind City 63.3,37.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
		talk Erika Tate##5483 |goto Stormwind City 77.6,53.1
]])

ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
		talk Jessara Cordell##1318 |goto Stormwind City 52.8,74.3
]])

ZygorGuidesViewer:RegisterInclude("vendor_Engineering",[[
		talk Billibub Cogspinner##5519 |goto Stormwind City 63.1,32.0
]])

ZygorGuidesViewer:RegisterInclude("vendor_Fishing",[[
		talk Catherine Leland##5494 |goto Stormwind City 55.0,69.7
]])

ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
		talk Stanly McCormick##30730 |goto Stormwind City 49.6,74.9
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
		talk Terrance Denman##44583 |goto Stormwind City 63.2,61.7
]])
ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting_1",[[
		talk Farrah Facet##56925 |goto Stormwind City 63.8,61.6
]])

ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
		talk Brooke Stonebraid##5514 |goto Stormwind City 59.2,37.5
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("vendor_Skinning",[[
		talk Jillian Tanner##5565 |goto Stormwind City 71.6,62.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
		talk Alexandra Bolero##1347 |goto Stormwind City 53.1,81.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
		talk Jillian Tanner##5565 |goto Stormwind City,71.6,62.8
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking_Dalaran",[[
		talk Katherine Lee##28705 |goto Dalaran 41.6,64.6
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Buying
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		talk Auctioneer Fitch##8719 |goto Stormwind City 61.1,70.6
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("auctioneer_dwarven",[[
		talk Auctioneer Lauffer##43841 |goto Stormwind City 60.1,32.2
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.0,26.5 |only if rep ('The Aldor') >= Friendly
		talk Auctioneer Kalaren##50139 |goto Shattrath City 57.0,63.2 |only if rep ('The Scryers') >= Friendly
]])

-- This don't appear to be used in any of our files. Duplicate include.
ZygorGuidesViewer:RegisterInclude("auctioneer_dwarven",[[
		talk Auctioneer Lauffer##43841 |goto Stormwind City 60.1,32.2
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("goto_shatt_auctioneer",[[
		talk Auctioneer Itoran##50143 |goto Shattrath City 51.0,26.5 |only if rep ('The Aldor') >= Friendly
		talk Auctioneer Kalaren##50139 |goto Shattrath City 57.0,63.2 |only if rep ('The Scryers') >= Friendly
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_stormshield",[[
		talk Kong Brewstep##88522 |goto Stormshield/0 54.7,67.7
		|tip He's inside this building.
]])
ZygorGuidesViewer:RegisterInclude("auctioneer_ironforge",[[
		talk Auctioneer Redmuse##8720 |goto Ironforge 24.3,74.6
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Anvils
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
		Stand next to this anvil |goto Shattrath City 69.7,42.7
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("hell_anvil",[[
		Stand next to this anvil |goto Hellfire Peninsula 56.8,63.8
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("twil_anvil",[[
		Stand next to this anvil |goto Twilight Highlands 79.2,76.3
]])

ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
		Stand next to this anvil |goto Stormwind City 63.6,37.0
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Other
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("cast_campfire",[[
		Create a basic campfire |cast Basic Campfire##818
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("dalaran_enter_sewer",[[
		Enter the Dalaran sewers |goto Dalaran/2 %q%
		'|goto Dalaran/1 60.2,47.7 <0.3 "Sewer entrance" |n %q%
		'|goto Dalaran/1 34.8,45.5 <0.3 "Sewer entrance" |n %q%
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("dalaran_leave_sewer",[[
		Leave the Dalaran sewers |goto Dalaran/1 %q%
		'|goto Dalaran/2 60.2,47.7 <0.3 "Sewer entrance" |n %q%
		'|goto Dalaran/2 34.8,45.5 <0.3 "Sewer entrance" |n %q%
]])





-------------------------
-- Mount File Includes --
-------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("trainTailoring",[[
		talk Magar##3363 |goto Orgrimmar 60.8,59.1
]])
ZygorGuidesViewer:RegisterInclude("TailorSupplies",[[
		talk Alexandra Bolero##1347 |goto Stormwind City 53.1,81.8
]])
ZygorGuidesViewer:RegisterInclude("trainEngineering",[[
		talk Lilliam Sparkspindle##5518 |goto Stormwind City 62.8,32.0
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("EngSupplies",[[
		talk Billibub Cogspinner##5519 |goto Stormwind City 63.1,32.0
]])

ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
		talk Jessara Cordell##1318 |goto Stormwind City 52.8,74.3
]])

ZygorGuidesViewer:RegisterInclude("SWTabard",[[
		talk Captain Lancy Revshon##49877 |only if rep("Stormwind")<Exalted
		buy 1 Stormwind Tabard##45574 |goto Stormwind City 67.6,72.8 |only if rep("Stormwind")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("DarnTabard",[[
		talk Moon Priestess Lasara##50305 |only if rep("Darnassus")<Exalted
		buy 1 Darnassus Tabard##45579 |goto Darnassus 36.6,49.0 |only if rep("Darnassus")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("ExTabard",[[
		talk Kadu##50306 |only if rep("Exodar")<Exalted
		buy 1 Exodar Tabard##45580 |goto The Exodar 54.6,36.8 |only if rep("Exodar")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("GnomTabard",[[
		talk Master Tinker Trini##50308 |only if rep("Gnomeregan")<Exalted
		buy 1 Gnomeregan Tabard##45578 |goto Ironforge 56.2,49.0 |only if rep("Gnomeregan")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("IFTabard",[[
		talk Captain Stonehelm##50309 |only if rep("Ironforge")<Exalted
		buy 1 Ironforge Tabard##45577 |goto Ironforge 55.8,47.8 |only if rep("Ironforge")<Exalted
]])
ZygorGuidesViewer:RegisterInclude("GilTabard",[[
		talk Lord Candren##50307 |only if rep("Gilneas")<Exalted
		buy 1 Gilneas Tabard##64882 |goto Darnassus 37.0,47.8 |only if rep("Gilneas")<Exalted
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

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
]])
ZygorGuidesViewer:RegisterInclude("dailies_rep_mount",[[
		This will require you to be _exalted_ with _%rep%_
		Use the _%rep%_ Dailies section of this guide to become _exalted_ with _%rep%_ |only if rep("%rep%")<Exalted
		_Exalted_ with _%rep%_ |condition rep("%rep%")>=Exalted
]])