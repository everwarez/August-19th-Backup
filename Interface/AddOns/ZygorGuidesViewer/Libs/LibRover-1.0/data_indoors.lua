local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

-- INDOOR ZONES. Used when there's no map number change.
data.basenodes.indoorzones = {
		-- Kalimdor
			["Ashenvale"] = {
				"Ashenvale/0 78.4,81.5 -x- Ashenvale/0 78.3,81.8 <indoors:Demon Fall Ridge> {template:cave}",
				"Ashenvale/0 75.9,75.4 -x- Ashenvale/0 76.2,75.4 <indoors:The Dor'Danil Barrow Den> {template:cave}",
				"Ashenvale/0 38.3,30.5 -x- Ashenvale/0 38.7,30.6 <indoors:Thistlefur Hold> {template:cave}",
			},
			["Azuremyst Isle"] = {
				"Azuremyst Isle/0 66.5,73.8 -x- Azuremyst Isle/0 66.0,76.1 <indoors:Stagalbog Cave> {template:cave}",
			},
			["Darkshore"] = {
				"Darkshore/0 56.9,31.0 -x- Darkshore/0 57.0,31.6 <indoors:Cliffspring Hollow> {template:cave}",
				"Darkshore/0 44.6,48.7 -x- Darkshore/0 45.4,48.5 <indoors:Moontouched Den> {template:cave}",
				"Darkshore/0 47.0,56.1 -x- Darkshore/0 47.4,55.9 <indoors:Earthshatter Cavern> {template:cave}",
				"Darkshore/0 46.4,83.7 -x- Darkshore/0 46.7,83.9 <indoors:Blackwood Den> {template:cave}",
				"Darkshore/0 33.6,83.6 -x- Darkshore/0 33.1,83.7 <indoors:Nazj'vel> {template:cave}",
			},
			["Desolace"] = {
				"Desolace/0 66.5,73.8 -x- Desolace/0 66.0,76.1 <indoors:Bolgan's Hole> {template:cave}",
				"Desolace/0 38.4,90.7 -x- Desolace/0 38.7,91.7 <indoors:Bolgan's Hole> {template:cave}",
			},
			["Dustwallow Marsh"] = {
				"Dustwallow Marsh/0 38.8,65.7 -x- Dustwallow Marsh/0 38.3,66.3 <indoors:The Den of Flame> {template:cave}",
			},
			["Felwood"] = {
				"Felwood/0 55.4,18.5 -x- Felwood/0 56.0,19.1 <indoors:Irontree Cavern> {template:cave}",
				"Felwood/0 64.2,10.4 -x- Felwood/0 64.5,9.6 <indoors:Timbermaw Hold> {template:cave}",
			},
			["Feralas"] = {
				"Feralas/0 60.7,32.3 -x- Feralas/0 60.5,32.3 <indoors:Dire Maul> {template:cave}",
			},
			["Mount Hyjal"] = {
				"Mount Hyjal/0 52.4,17.4 -x- Mount Hyjal/0 52.8,17.3 <indoors:Hyjal Barrow Dens> {template:mine}",
				"Mount Hyjal/0 27.1,35.9 -x- Mount Hyjal/0 26.8,36.6 <indoors:Gar'gol's Hovel> {template:mine}",
			},
			["Northern Barrens"] = {
				"Northern Barrens/0 66.3,51.9 -x- Northern Barrens/0 65.8,52.6 <indoors:Northern Barrens Cave> {template:cave}",
				"Northern Barrens/0 65.5,12.0 -x- Northern Barrens/0 65.2,11.9 <indoors:Boulder Lode Mine> {template:cave}",
			},
			["Silithus"] = {
				"Silithus/0 58.6,78.3 -x- Silithus/0 58.1,78.8 <indoors:Hive'Regal> {template:cave}",
			},
			["Southern Barrens"] = {
				"Southern Barrens/0 40.3,77.6 -x- Southern Barrens/0 40.3,77.2 <indoors:Frazzlecraz Motherlode> {template:mine}",
			},
			["Stonetalon Mountains"] = {
				"Stonetalon Mountains/0 72.1,61.1 -x- Stonetalon Mountains/0 72.2,61.7 <indoors:Windshear Mine> {template:mine}",
				"Stonetalon Mountains/0 72.0,78.5 -x- Stonetalon Mountains/0 72.3,78.1 <indoors:The Deep Reaches> {template:mine}",
				"Stonetalon Mountains/0 66.5,60.4 -x- Stonetalon Mountains/0 66.3,61.2 <indoors:The Deep Reaches> {template:mine}",
				"Stonetalon Mountains/0 62.4,89.5 -x- Stonetalon Mountains/0 61.9,89.1 <indoors:Boulderslide Cavern> {template:cave}",
			},
			["Thousand Needles"] = {
				"Thousand Needles/0 66.1,86.2 -x- Thousand Needles/0 65.8,86.3 <indoors:Sunken Dig Site> {template:cave}",
				"Thousand Needles/0 91.7,82.9 -x- Thousand Needles/0 92.3,83.3 <indoors:The Admiral's Den> {template:cave}",
				"Thousand Needles/0 43.9,37.6 -x- Thousand Needles/0 44.2,36.7 <indoors:Splithoof Hold> {template:cave}",
			},
			["Uldum"] = {
				"Uldum/0 52.8,45.5 -x- Uldum/0 53.1,44.9 <indoors:Vir'naal Dam> {template:building}",
				"Uldum/0 52.1,40.1 -x- Uldum/0 51.5,40.1 <indoors:Murkdeep Cavern> {template:cave}",
				"Uldum/0 36.9,20.8 -x- Uldum/0 36.4,20.4 <indoors:Chamber of the Moon> {template:tomb}",
			},
			["Un'Goro Crater"] = {
				"Un'Goro Crater/0 63.8,16.4 -x- Un'Goro Crater/0 64.4,16.3 <indoors:Fungal Rock> {template:cave}",
			},
			["Winterspring"] = {
				"Winterspring/0 67.5,54.2 -x- Winterspring/0 67.8,54.0 <indoors:Ice Thistle Hills> {template:cave}",
				--"Winterspring/0 47.1,40.1 -x- Winterspring/0 47.0,40.2 <indoors:Ban'Thallow Barrow Den> {template:cave}", --Causing issues with travel system.
				"Winterspring/0 55.0,64.2 -x- Winterspring/0 54.6,64.3 <indoors:Mazthoril> {template:cave}",
				"Winterspring/0 21.3,46.1 -x- Felwood/0 67.3,7.8 <indoors:Timbermaw Hold> {template:cave}",
			},

		-- Eastern Kingdoms
			["Arathi Highlands"] = {
			},
			["Badlands"] = {
				"Badlands/0 50.4,48.4 -x- Badlands/0 50.4,49.1 <indoors:Tomb of the Watchers> {template:tomb}",
				"Badlands/0 11.9,71.5 -x- Badlands/0 11.9,72.3 <indoors:Dustbelch Grotto> {template:cave}",
			},
			["Blasted Lands"] = {
				"Blasted Lands/0 60.8,29.4 -x- Blasted Lands/0 61.0,29.2 <indoors:Serpent's Coil> {template:cave}",
				"Blasted Lands/0 61.4,62.5 -x- Blasted Lands/0 61.4,61.9 <indoors:Bloodwash Cavern> {template:cave}",
				"Blasted Lands/0 41.9,33.5 -x- Blasted Lands/0 41.2,33.3 <indoors:Dreadmaul Furnace> {template:cave}",
				"Blasted Lands/0 45.0,31.2 -x- Blasted Lands/0 45.1,29.7 <indoors:Rise of the Defiler> {template:cave}",
				"Blasted Lands/0 45.7,38.7 -x- Blasted Lands/0 46.5,39.2 <indoors:Dreadmaul Post> {template:cave}",
				"Blasted Lands/0 50.4,10.4 -x- Blasted Lands/0 51.0,9.7 <indoors:Nethergarde Mines> {template:mine}",
			},
			["Burning Steppes"] = {
				"Burning Steppes/0 71.1,38.1 -x- Burning Steppes/0 70.0,38.8 <indoors:The Skull Warren> {template:cave}",
				"Burning Steppes/0 64.9,46.8 -x- Burning Steppes/0 65.7,46.0 <indoors:Firegut Furnace> {template:cave}",
			},
			["Duskwood"] = {
			},
			["Eastern Plaguelands"] = {
				"Eastern Plaguelands/0 4.3,36.2 -x- Eastern Plaguelands/0 4.6,35.7 <indoors:Terrorweb Tunnel> {template:cave}",
				"Eastern Plaguelands/0 24.2,78.5 -x- Eastern Plaguelands/0 24.2,79.1 <indoors:The Undercroft> {template:cave}",
				"Eastern Plaguelands/0 77.3,50.8 -x- Eastern Plaguelands/0 77.6,50.8 <indoors:Crypt> {template:cave}",
			},
			["Ghostlands"] = {
				"Ghostlands/0 31.6,74.1 -x- Ghostlands/0 31.8,73.0 <indoors:Deatholme> {template:tomb}", --Crypt inside Deathholme
			},
			["Hillsbrad Foothills"] = {
				"Hillsbrad Foothills/0 33.5,72.0 -x- Hillsbrad Foothills/0 33.8,71.8 <indoors:Azurelode Mine> {template:mine}",
				"Hillsbrad Foothills/0 46.6,54.4 -x- Hillsbrad Foothills/0 46.1,53.9 <indoors:Darrow Hill> {template:cave}",
			},
			["Loch Modan"] = {
			},
			["Northern Stranglethorn"] = {
			},
			["Redridge Mountains"] = {
			},
			["Searing Gorge"] = {
				"Searing Gorge/0 21.4,36.0 -x- Searing Gorge/0 20.7,36.0 <indoors:Firewatch Ridge> {template:mine}",
			},
			["Silverpine Forest"] = {
				"Silverpine Forest/0 35.8,14.1 -x- Silverpine Forest/0 35.5,13.1 <indoors:The Skittering Dark> {template:cave}",
			},
			["Swamp of Sorrows"] = {
				"Swamp of Sorrows/0 66.5,73.8 -x- Swamp of Sorrows/0 66.0,76.1 <indoors:Stagalbog Cave> {template:cave}",
			},
			["The Cape of Stranglethorn"] = {
			},
			["The Hinterlands"] = {
			},
			["Twilight Highlands"] = {
				"Twilight Highlands/0 36.4,38.1 -x- Twilight Highlands/0 35.9,37.9 <indoors:The Gullet> {template:cave}",
				"Twilight Highlands/0 18.7,16.6 -x- Twilight Highlands/0 18.1,16.8 <indoors:Vermillion Redoubt> {template:cave}",
				"Twilight Highlands/0 55.8,83.9 -x- Twilight Highlands/0 55.1,83.3 <indoors:Obsidian Lair> {template:cave}",
				"Twilight Highlands/0 40.1,71.2 -x- Twilight Highlands/0 39.5,71.6 <indoors:Den of the Disciples> {template:cave}",
			},
			["Western Plaguelands"] = {
				"Western Plaguelands/0 54.3,80.1 -x- Western Plaguelands/0 54.2,80.5 <indoors:Sorrow Hill Crypt> {template:mine}",
				"Western Plaguelands/0 45.8,12.1 -x- Western Plaguelands/0 45.8,11.5 <indoors:Hearthglen> {template:mine}",
				"Western Plaguelands/0 64.64,38.61 -x- Western Plaguelands/0 64.33,38.34 <indoors:The Weeping Cave> {template:cave}", -- The Weeping Cave
			},
			["Wetlands"] = {
			},

		-- Outland

			["Terokkar Forest"] = {
				"Terokkar Forest/0 47.0,55.5 -x- Terokkar Forest/0 47.0,55.1 <indoors:Tomb of Lights> {template:cave}",
				"Terokkar Forest/0 31.3,52.6 -x- Terokkar Forest/0 31.1,52.7 <indoors:Shadow Tomb> {template:cave}",
			},
			["Blade's Edge Mountains"] = {
				"Blade's Edge Mountains/0 42.4,83.3 -x- Blade's Edge Mountains/0 42.5,83.9 <indoors:Draenethyst Mine> {template:mine}",
			},
			["Nagrand"] = {
				"Nagrand/0 26.8,23.3 -x- Nagrand/0 27.2,23.9 <indoors:Warmaul Hill> {template:mine}",
				"Nagrand/0 27.7,11.2 -x- Nagrand/0 27.1,11.9 <indoors:Warmaul Hill> {template:mine}",
			},
			["Netherstorm"] = {
				"Netherstorm/0 42.4,83.3 -x- Netherstorm/0 42.5,83.9 <indoors:Manaforge B'naar> {template:building}",
			},
			["Hellfire Peninsula"] = {
				"Hellfire Peninsula/0 51.4,31.8 -x- Hellfire Peninsula/0 51.6,31.7 <indoors:Thrallmar Mine> {template:mine}",
			},


		-- Northrend

			["Icecrown"] = {
				"Icecrown/0 51.9,33.0 -x- Icecrown/0 51.9,31.9 <indoors:Aldur'thar: The Desolation Gate> {template:cave}",
				"Icecrown/0 9.5,44.3 -x- Icecrown/0 9.5,45.5 <indoors:The Crimson Cathedral> {template:building}",
				"Icecrown/0 9.2,49.4 -x- Icecrown/0 9.3,48.6 <indoors:The Hidden Hollow> {template:building}",
			},
			["The Storm Peaks"] = {
				"The Storm Peaks/0 40.4,78.3 -x- The Storm Peaks/0 40.4,77.8 <indoors:Crystalweb Cavern> {template:cave}",
			},
			["Howling Fjord"] = {
				"Howling Fjord/0 56.6,49.8 -x- Howling Fjord/0 56.6,48.9 <indoors:Utgarde Catacombs> {template:cave}",
				"Howling Fjord/0 34.7,12.9 -x- Howling Fjord/0 35.0,12.6 <indoors:The Walking Halls> {template:cave}",
			},


		-- Cataclysm

			["Deepholm"] = {
				"Deepholm/0 69.3,68.2 -x- Deepholm/0 69.7,67.8 <indoors:Lower Silvermarsh> {template:cave}",
				"Deepholm/0 58.1,25.3 -x- Deepholm/0 59.7,26.4 <indoors:Avalancha's Vault> {template:cave}",
				"Deepholm/0 68.7,28.2 -x- Deepholm/0 68.6,29.5 <indoors:Fungal Deep> {template:cave}",
			},
			["Kelp'thar Forest"] = {
				"Kelp'thar Forest/0 53.9,34.3 -x- Kelp'thar Forest/0 54.9,32.8 <indoors:Smuggler's Scar> {template:cave}",
				"Kelp'thar Forest/0 60.6,64.7 -x- Kelp'thar Forest/0 61.6,63.2 <indoors:Deepmist Grotto> {template:cave}",
			},
			["Shimmering Expanse"] = {
				"Shimmering Expanse/0 60.6,19.2 -x- Kelp'thar Forest/0 48.6,72.6 <indoors:Damplight Chamber> {template:cave}",
				"Shimmering Expanse/0 50.3,38.5 -x- Shimmering Expanse/0 50.1,39.2 <indoors:Silver Tide Hollow> {template:cave}",
				"Shimmering Expanse/0 46.8,57.5 -x- Shimmering Expanse/0 47.6,57.5 <indoors:Tranquil Wash> {template:cave}",
			},

		-- Pandaria

			["Dread Wastes"] = {
				"Dread Wastes/0 72.8,28.0 -x- Dread Wastes/0 73.1,27.8 <indoors:Terrace of Gurthan> {template:cave}",
				"Dread Wastes/0 66.7,63.5 -x- Dread Wastes/0 66.8,64.1 <indoors:Mistblade Den> {template:cave}",
				"Dread Wastes/0 58.8,59.6 -x- Dread Wastes/0 58.4,59.3 <indoors:Coldbite Burrow> {template:cave}",
				"Dread Wastes/0 46.2,53.4 -x- Dread Wastes/0 46.5,52.8 <indoors:Amberglow Hollow> {template:cave}",
				"Dread Wastes/0 53.6,15.9 -x- Dread Wastes/0 53.5,14.7 <indoors:The Amber Vault> {template:cave}",
				"Dread Wastes/0 45.0,15.5 -x- Dread Wastes/0 44.7,16.1 <indoors:Kor'vess> {template:cave}", --1
				"Dread Wastes/0 43.1,14.2 -x- Dread Wastes/0 43.1,13.6 <indoors:Kor'vess> {template:cave}", --2
				"Dread Wastes/0 47.3,16.8 -x- Dread Wastes/0 46.5,16.8 <indoors:Morrowchamber> {template:cave}",
				"Dread Wastes/0 29.9,31.4 -x- Dread Wastes/0 30.5,31.9 <indoors:The Amber Hibernal> {template:cave}",
			},
			["Isle of Thunder"] = {
				"Isle of Thunder/0 36.3,58.5 <radius:5> -x- Isle of Thunder/0 36.3,59.4 <radius:5> <indoors:Hall of the Exalted> {template:tunnel}",
			},
			["Krasarang Wilds"] = {
				"Krasarang Wilds/0 40.4,53.3 -x- Krasarang Wilds/0 40.4,53.9 <indoors:Temple of the Red Crane> {template:building}",
				"Krasarang Wilds/0 46.1,79.3 -x- Krasarang Wilds/0 46.1,80.5 <indoors:Mortbreath Grotto> {template:cave}",
			},
			["Kun-Lai Summit"] = {
				"Kun-Lai Summit/0 55.8,46.3 -x- Kun-Lai Summit/0 56.0,45.8 <indoors:Tomb of Shadows> {template:tomb}",
				"Kun-Lai Summit/0 53.4,49.2 -x- Kun-Lai Summit/0 53.3,49.5 <indoors:Tomb of Secrets> {template:tomb}",
				"Kun-Lai Summit/0 63.9,50.2 -x- Kun-Lai Summit/0 63.9,49.5 <indoors:Path of Conquerors> {template:cave}",
				"Kun-Lai Summit/0 37.6,78.1 -x- Kun-Lai Summit/0 37.1,77.7 <indoors:Kota Peak> {template:cave}",
			},
			["Townlong Steppes"] = {
				"Townlong Steppes/0 27.2,44.1 -x- Townlong Steppes/0 26.8,44.1 <indoors:Sra'vess Rootchamber> {template:building}",
				"Townlong Steppes/0 47.4,79.0 -x- Townlong Steppes/0 47.1,79.7 <indoors:Sik'vess Lair> {template:building}",
				"Townlong Steppes/0 66.6,83.8 -x- Townlong Steppes/0 67.0,83.4 <indoors:Dusklight Hollow> {template:cave}",
			},
			["The Jade Forest"] = {
				"The Jade Forest/0 31.4,21.7 -x- The Jade Forest/0 31.8,22.0 <indoors:Nook of Konk> {template:mine}",
				"The Jade Forest/0 27.2,31.7 -x- The Jade Forest/0 27.4,32.3 <indoors:Cave of Words> {template:mine}",
				"The Jade Forest/0 66.2,82.2 -x- The Jade Forest/0 66.4,82.2 <indoors:Den of Sorrow> {template:mine}",
			},
			["The Veiled Stair"] = {
				"The Veiled Stair/0 40.4,53.3 -x- The Veiled Stair/0 40.4,53.9 <indoors:Hatescale Burrow> {template:cave}",
			},
			["Valley of the Four Winds"] = {
				"Valley of the Four Winds/0 86.7,28.2 -x- Valley of the Four Winds/0 86.2,28.0 <indoors:Virmen Nest> {template:mine}",
				"Valley of the Four Winds/0 69.0,40.3 -x- Valley of the Four Winds/0 69.1,39.4 <indoors:The Twisted Warren> {template:mine}",
				"Valley of the Four Winds/0 43.4,34.6 -x- Valley of the Four Winds/0 43.5,35.7 <indoors:Springtail Warren> {template:mine}",
				"Valley of the Four Winds/0 53.6,76.4 -x- Valley of the Four Winds/0 53.6,75.5 <indoors:The Dark Hollow> {template:mine}",
				"Valley of the Four Winds/0 21.8,74.4 -x- Valley of the Four Winds/0 22.1,74.4 <indoors:Lair of the Beast> {template:cave}",
			},

		-- Draenor

			["Frostfire Ridge"] = {
				"Frostfire Ridge/0 40.2,60.4 -x- Frostfire Ridge/0 40.2,59.5 <indoors:Raider's Hideout> {template:cave}",
				"Frostfire Ridge/0 40.8,67.6 -x- Frostfire Ridge/0 40.9,67.7 <indoors:Frostcave> {template:cave}",
				"Frostfire Ridge/0 27.7,18.0 -x- Frostfire Ridge/0 27.9,18.2 <indoors:Sleeper's Lair> {template:cave}",
				"Frostfire Ridge/0 64.0,32.5 -x- Frostfire Ridge/0 64.8,31.9 <indoors:Gate of the Breakers> {template:cave}",
				"Frostfire Ridge/0 65.5,36.8 -x- Frostfire Ridge/0 66.1,37.2 <indoors:The Melted Barrow> {template:cave}",
			},
			["Gorgrond"] = {
				"Gorgrond/0 47.7,93.2 -x- Gorgrond/0 47.7,94.5 <indoors:Moira's Bastion> {template:mine}",			
				"Gorgrond/0 38.5,67.4 -x- Gorgrond/0 38.4,67.4 <indoors:Kor'gall's Hovel> {template:cave}",
				"Gorgrond/0 63.8,49.2 -x- Gorgrond/0 63.5,48.4 <indoors:Rangari Hollow> {template:cave}",
				"Gorgrond/0 49.4,53.4 -x- Gorgrond/0 49.5,53.3 <indoors:Cragplume Cauldron> {template:cave}",
				"Gorgrond/0 46.4,45.6 -x- Gorgrond/0 46.4,44.9 <indoors:Gronn Canyon> {template:cave}",
				"Gorgrond/0 44.3,50.8 -x- Gorgrond/0 44.3,50.8 <indoors:Glut's Burrow> {template:cave}",
			},
			["Nagrand D"] = {
				"Nagrand D/0 68.8,10.5 -x- Nagrand D/0 68.8,10.5 <indoors:Magma Cave> {template:cave}",
				"Nagrand D/0 41.8,68.2 -x- Nagrand D/0 41.8,68.2 <indoors:Spirit Grotto> {template:cave}",
				"Nagrand D/0 88.2,55.5 -x- Nagrand D/10 26.2,15.3 <indoors:The Master's Cavern> {template:cave}",
			},
			["Shadowmoon Valley D"] = {
				"Shadowmoon Valley D/0 21.7,27.5 -x- Shadowmoon Valley D/0 21.4,28.0 <indoors:Gul'var> {template:cave}",
				"Shadowmoon Valley D/0 32.8,45.3 -x- Shadowmoon Valley D/0 32.8,45.3 <indoors:Gul'var> {template:mine}",
				"Shadowmoon Valley D/0 35.4,43.8 -x- Shadowmoon Valley D/0 35.4,43.8 <indoors:Ancestor's Grotto> {template:cave}",
				"Shadowmoon Valley D/0 46.3,45.0 -x- Shadowmoon Valley D/0 46.3,45.0 <indoors:Waning Crescent> {template:cave}",
				"Shadowmoon Valley D/0 61.8,28.6 -x- Shadowmoon Valley D/0 61.8,28.6 <indoors:Elodor Dig> {template:cave}",
				"Shadowmoon Valley D/0 48.3,14.0 -x- Shadowmoon Valley D/0 48.3,14.0 <indoors:Dol'mak's Hideout> {template:cave}",
				"Shadowmoon Valley D/0 60.9,87.0 -x- Shadowmoon Valley D/0 60.9,87.3 <indoors:Darktide Roost> {template:cave}",
				"Shadowmoon Valley D/0 66.8,86.7 -x- Shadowmoon Valley D/0 67.0,85.9 <indoors:Darktide Roost> {template:cave}",
			},
			["Spires of Arak"] = {
				"Spires of Arak/0 30.1,33.8 -x- Spires of Arak/0 30.1,34.0 <indoors:The Thorn Pits> {template:cave}",
				"Spires of Arak/0 30.0,31.5 -x- Spires of Arak/0 30.1,31.4 <indoors:The Thorn Pits> {template:cave}",
				"Spires of Arak/0 29.2,32.8 -x- Spires of Arak/0 29.1,32.9 <indoors:The Thorn Pits> {template:cave}",
				"Spires of Arak/0 31.2,32.6 -x- Spires of Arak/0 31.3,32.5 <indoors:The Thorn Pits> {template:cave}",
				"Spires of Arak/0 31.5,43.3 -x- Spires of Arak/0 30.9,43.0 <indoors:The Writhing Mire> {template:cave}",
				"Spires of Arak/0 32.7,26.1 -x- Spires of Arak/0 32.5,25.9 <indoors:Apexis Chamber> {template:cave}",
				"Spires of Arak/0 34.7,25.9 -x- Spires of Arak/0 34.5,25.9 <indoors:Apexis Excavation> {template:cave}",
			},
			["Talador"] = {
				"Talador/0 78.3,35.5 -x- Talador/0 78.3,35.5 <indoors:Aruuna Crystal Mine> {template:mine}",
				"Talador/0 73.2,24.0 -x- Talador/0 75.5,22.1 <indoors:Kuuro's Claim> {template:cave}",
				"Talador/0 53.2,25.9 -x- Talador/0 53.3,26.3 <indoors:Ketya's Hideaway> {template:cave}",
				"Talador/0 59.4,77.0 -x- Talador/0 61.1,84.0 <indoors:Deathweb Hollow> {template:cave}",
				"Talador/0 49.4,57.8 -x- Talador/0 51.1,51.7 <indoors:Jorune Mine> {template:mine}",
				"Talador/0 84.2,28.1 -x- Talador/0 84.2,28.1 <indoors:Assassin's Cove> {template:cave}",
				"Talador/0 32.1,68.9 -x- Talador/0 32.0,69.4 <indoors:Sher'Khaan's Den> {template:cave}",
			},
}

