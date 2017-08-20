local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.version={
	nodes_version = 82,  -- Increase this when working on the nodes. Bake the connections using the Debug menu when you're done.
}


-- These are kept strictly unique. Make up bogus names if you need to.
-- If multiple numbers are given, then only the first one is used here; others are used by Pointer to define phasedMaps.
data.MapIDsByName = {
 ['Abyssal Depths']=614,  ['Ahn\'Qiraj']=766,  ['Ahn\'Qiraj: The Fallen Kingdom']=772,  ['Ahn\'kahet: The Old Kingdom']=522,  ['Alterac Valley']=401,  ['Arathi Basin']=461,  ['Arathi Highlands']=16,  ['Ashenvale']=43,  ['Auchenai Crypts']=722,  ['Azjol-Nerub']=533,  ['Azshara']=181,  ['Azuremyst Isle']=464,  ['Badlands']=17,  ['Baradin Hold']=752,  ['Black Temple']=796,  ['Blackfathom Deeps']=688,  ['Blackrock Caverns']=753,  ['Blackrock Depths']=704,  ['Blackrock Spire']=721,  ['Blackwing Descent']=754,  ['Blackwing Lair']=755,  ['Blade\'s Edge Mountains']=475,  ['Blasted Lands']=19,  ['Bloodmyst Isle']=476,  ['Borean Tundra']=486,  ['Burning Steppes']=29,  ['Crystalsong Forest']=510,  ['Dalaran']=504,  ['Darkshore']=42,  ['Darkmoon Island']=823,  ['Darnassus']=381,  ['Deadwind Pass']=32,  ['Deepholm']=640,  ['Desolace']=101,  ['Dire Maul']=699,  ['Dragon Soul']=824,  ['Dragonblight']=488,  ['Drak\'Tharon Keep']=534,  ['Dun Morogh']=27,  ['Durotar']=4,  ['Duskwood']=34,  ['Dustwallow Marsh']=141,  ['Kalimdor']=13, ['Eastern Kingdoms']=14, ['Eastern Plaguelands']=23,  ['Elwynn Forest']=30,  ['End Time']=820,  ['Eversong Woods']=462,  ['Eye of the Storm']=482,  ['Felwood']=182,  ['Feralas']=121,  ['Firelands']=800,  ['Ghostlands']=463,  ['Gilneas City']=611,  ['Gilneas']=545, ['Gilneas 2']=678, ['Gilneas 3']=679,  ['Gnomeregan']=691,  ['Grim Batol']=757,  ['Grizzly Hills']=490,  ['Gruul\'s Lair']=776,  ['Gundrak']=530,  ['Halls of Lightning']=525,  ['Halls of Origination']=759,  ['Halls of Reflection']=603,  ['Halls of Stone']=526,  ['Hellfire Peninsula']=465,  ['Hellfire Ramparts']=797,  ['Hillsbrad Foothills']=24,  ['Howling Fjord']=491,  ['Hour of Twilight']=819,  ['Hrothgar\'s Landing']=541,  ['Hyjal Summit']=775,  ['Icecrown Citadel']=604,  ['Icecrown']=492,  ['Ironforge']=341,  ['Isle of Conquest']=540,  ['Isle of Quel\'Danas']=499,  ['Karazhan']=799,  ['Kelp\'thar Forest']=610,  ['Kezan']=605,  ['Loch Modan']=35,  ['Lost City of the Tol\'vir']=747,  ['Magisters\' Terrace']=798,  ['Magtheridon\'s Lair']=779,  ['Mana-Tombs']=732,  ['Maraudon']=750,  ['Molten Core']=696,  ['Molten Front']=795,  ['Moonglade']=241,  ['Mount Hyjal']=606, ['Mount Hyjal 2']=683,  ['Mulgore']=9,  ['Nagrand']=477,  ['Naxxramas']=535,  ['Netherstorm']=479,  ['Northern Barrens']=11,  ['Northern Stranglethorn']=37,  ['Old Hillsbrad Foothills']=734,  ['Onyxia\'s Lair']=718,  ['Orgrimmar']=321,  ['Pit of Saron']=602,  ['Plaguelands: The Scarlet Enclave']=502,  ['Ragefire Chasm']=680,  ['Razorfen Downs']=760,  ['Razorfen Kraul']=761,  ['Redridge Mountains']=36,  ['Ruins of Ahn\'Qiraj']=717,  ['Ruins of Gilneas City']=685,  ['Ruins of Gilneas']=684,  ['Scarlet Monastery']=762,  ['OLD Scholomance']=763,  ['Searing Gorge']=28,  ['Serpentshrine Cavern']=780,  ['Sethekk Halls']=723,  ['Shadow Labyrinth']=724,  ['Shadowfang Keep']=764,  ['Shadowmoon Valley']=473,  ['Shattrath City']=481,  ['Shimmering Expanse']=615,  ['Sholazar Basin']=493,  ['Silithus']=261,  ['Silvermoon City']=480,  ['Silverpine Forest']=21,  ['Southern Barrens']=607,  ['Stonetalon Mountains']=81,  ['Stormwind City']=301,  ['Strand of the Ancients']=512,  ['Stranglethorn Vale']=689,  ['Stratholme']=765,  ['Sunwell Plateau']=789,  ['Swamp of Sorrows']=38,  ['Tanaris']=161,  ['Teldrassil']=41,  ['Tempest Keep']=782,  ['Terokkar Forest']=478,  ['The Arcatraz']=731,  ['The Bastion of Twilight']=758,  ['The Battle for Gilneas (Old City Map)']=677,  ['The Battle for Gilneas']=736,  ['The Black Morass']=733,  ['The Blood Furnace']=725,  ['The Botanica']=729,  ['The Cape of Stranglethorn']=673,  ['The Culling of Stratholme']=521,  ['The Deadmines']=756,  ['The Exodar']=471,  ['The Eye of Eternity']=527,  ['The Forge of Souls']=601,  ['The Hinterlands']=26,  ['The Lost Isles']=544,  ['The Maelstrom']=737, ['The Maelstrom 2']=751,  ['The Mechanar']=730,  ['The Nexus']=520, ['The Nexus 2']=803,  ['The Obsidian Sanctum']=531,  ['The Oculus']=528,  ['The Ruby Sanctum']=609,  ['The Shattered Halls']=710,  ['The Slave Pens']=728,  ['The Steamvault']=727,  ['The Stockade']=690,  ['The Stonecore']=768,  ['The Storm Peaks']=495,  ['The Temple of Atal\'Hakkar']=687,  ['The Underbog']=726,  ['The Violet Hold']=536,  ['The Vortex Pinnacle']=769,  ['Thousand Needles']=61,  ['Throne of the Four Winds']=773,  ['Throne of the Tides']=767,  ['Thunder Bluff']=362,  ['Tirisfal Glades']=20,  ['Tol Barad Peninsula']=709,  ['Tol Barad']=708,  ['Trial of the Champion']=542,  ['Trial of the Crusader']=543,  ['Twilight Highlands']=700, ['Twilight Highlands 2']=770,  ['Twin Peaks']=626,  ['Uldaman']=692,  ['Ulduar']=529,  ['Uldum']=720, ['Uldum 2']=748,  ['Un\'Goro Crater']=201,  ['Undercity']=382,  ['Utgarde Keep']=523,  ['Utgarde Pinnacle']=524,  ['Vashj\'ir']=613,  ['Vault of Archavon']=532,  ['Wailing Caverns']=749,  ['Warsong Gulch']=443,  ['Well of Eternity']=816,  ['Western Plaguelands']=22,  ['Westfall']=39,  ['Wetlands']=40,  ['Wintergrasp']=501,  ['Winterspring']=281,  ['Zangarmarsh']=467,  ['Zul\'Aman']=781,  ['Zul\'Drak']=496,  ['Zul\'Farrak']=686,  ['Zul\'Gurub']=793,
 ['The Wandering Isle']=808, ['Pandaria']=862, ['Shrine of Seven Stars']=905, ['Shrine of Two Moons']=903, ['Kun-Lai Summit']=809, ['The Jade Forest']=806, ['Vale of Eternal Blossoms']=811, ['Townlong Steppes']=810, ['Dread Wastes']=858, ['Valley of the Four Winds']=807, ['Krasarang Wilds']=857, ['The Veiled Stair']=873, ['Gate of the Setting Sun']=875, ['Scarlet Halls']=871, ['Scarlet Monastery']=874, ['Scholomance']=898, ['Shado-Pan Monastery']=877, ['Siege of Niuzao Temple']=887, ['Stormstout Brewery']=876, ['Temple of the Jade Serpent']=867,['Unga Ingoo']=882, ['Brewmoon Festival']=884, ['A Brewing Storm']=878, ['Crypt of Forgotten Kings']=900, ['Proving Grounds']=899,
 ['Greenstone Village']=880, ['Temple of Kotmogu']=881, ['Assault on Zan\'vess']=883, ['Mogu\'shan Palace']=885, ['Terrace of Endless Spring']=886, ['Mogu\'shan Vaults']=896, ['Heart of Fear']=897, ['A Little Patience'] = 912, ['Dagger in the Dark'] = 914,
 ['Coldridge Valley'] = 866, ['Northshire'] = 864, ['Shadowglen']=888, ['Valley of Trials']=889, ['Camp Narache']=890, ['Echo Isles']=891, ['Deathknell']=892, ['Sunstrider Isle']=893, ['Ammen Vale']=894, ['New Tinkertown']=895,
 ['Silvershard Mines']=860,  ['Deeprun Tram']=922, ['Brawl\'gar Arena']=925, ['Isle of Thunder']=928, ['Isle of Giants']=929,['Throne of Thunder']=930,['Thunder King\'s Citadel']=934,['Deepwind Gorge']=935,['The Secrets of Ragefire']=938,['Battle on the High Seas']=940, ["Timeless Isle"]=951, ["Siege of Orgrimmar"]=953, ["Celestial Tournament"]=955,
 
 -- WoD zones
 ['Draenor']=962, ['Gorgrond']=949, ['Frostfire Ridge']=941, ['Tanaan Jungle']=945, ['Ashran']=978, ['Nagrand D']=950, ['Talador']=946, ['Shadowmoon Valley D']=947, ['Spires of Arak']=948,
 ['Bloodmaul Slag Mines']=964, ['Shadowmoon Burial Grounds']=969, ['Assault on the Dark Portal']=970, ['Lunarfall']=971, ['Lunarfall 2']=973, ['Lunarfall 3']=974, ['Lunarfall 4']=975, ['Frostwall']=976, ['Ashran']=978, ['Frostwall 2']=980, ['Frostwall 3']=981, ['Frostwall 4']=982, ['Defense of Karabor']=983, ['Auchindoun']=984, ['Shattrath City 2']=986, ['Iron Docks']=987, ['Blackrock Foundry']=988, ['Skyreach']=989, ['Frostwall 4']=990, ['Lunarfall 5']=991, ['Blasted Lands 2']=992, ['Grimrail Depot']=993, ['Highmaul']=994, ['Upper Blackrock Spire 2']=995,
 ['Stormshield']=1009, ['Warspear']=1011,
 ['The Everbloom']=1008, ['Hellfire Citadel']=1026, 

 -- TODO: fill in more 990+ IDs here, following the naming scheme.

 -- new ids for old maps? new versions
 ['Azshara L'] = 1038,['Azuremyst Isle L'] = 1092,['Black Temple L'] = 1085,['Deepholm L'] = 1060,['Firelands L'] = 1071,['Icecrown Citadel L'] = 1039,['Karazhan L'] = 1100,['Kun-Lai Summit L'] = 1058,['Temple of the Jade Serpent L'] = 1097,['Terrace of Endless Spring L'] = 1059,['The Exodar L'] = 1091,['The Maelstrom L A'] = 1056, ['The Maelstrom L'] = 1057, ['The Oculus L'] = 1104,['The Violet Hold L'] = 1054,['The Vortex Pinnacle L'] = 1070,['The Wandering Isle L'] = 1044,['Tirisfal Glades L'] = 1062,['Tol Barad L'] = 1090,['Ulduar L'] = 1076,
 -- new legion maps
 ['Abyssal Maw'] = 1075,['Acherus: The Ebon Hold'] = 1101,['Azsuna'] = 1015, ['Black Rook Hold'] = 1081,['Black Rook Hold B'] = 1099,['Broken Isles'] = 1007,['Broken Shore'] = 1021, ['Broken Shore 2']=1031, ['Court of Stars'] = 1087,['Dalaran L']=1014,['Dalaran L1']=924,['Darkheart Thicket'] = 1067,['Dreadscar Rift'] = {1050,1051},['Emerald Dreamway'] = 1048,['Eye of Azshara'] = 1046, ['Eye of Azshara Map'] = 1096,['Gloaming Reef'] = 1084,['Hall of the Guardian'] = 1068,['Halls of Valor'] = 1041,['Helheim'] = 1022,['Helmouth Cliffs'] = 1042,['Helmouth Shallows'] = 1034,['Highmountain'] = 1024,['Malorne\'s Nightmare'] = 1086,['Mardum, the Shattered Abyss C'] = 1028, ['Mardum, the Shattered Abyss'] = 1052,['Neltharion\'s Lair'] = 1065,['Netherlight Temple'] = 1040,['Niskara'] = 1078,['Niskara B'] = 1047,['Shadowgore Citadel'] = 1073,['Shield\'s Rest'] = 1036,['Skyhold'] = 1035,['Skywall'] = 1049,['Stormheim'] = 1017, ['Suramar'] = 1033, ['Suramar 2']=1055, ['The Arcway'] = 1079, ['The Arcway 2']=1102, ['The Beyond'] = 1069,['The Cove of Nashal'] = 1027,['The Dreamgrove'] = 1077,['The Emerald Nightmare'] = 1094,['The Naglfar'] = 1043,['The Nighthold'] = 1088,['Thunder Totem'] = 1080,['Trueshot Lodge'] = 1072,['Twisting Nether'] = 1020,['Ursoc\'s Lair'] = 1082,['Val\'sharah'] = 1018, ['Vault of the Wardens'] = 1032, ['Vault of the Wardens 2']=1045, ['Violet Hold'] = 1066, ['Karazhan L'] = 1115, ['Assault on Broken Shore'] = 1149, ['Felwing Ledge'] = 1152, ['Fields of the Eternal Hunt'] = 1164, ['The Ruby Sanctum'] = 1151, ['The Lost Glacier'] = 1160, ['Halls of Valor'] = 1132, ['Lightless Cavern'] = 1142, ['Val\'sharah Invasion'] = 1158, ['Trial of Valor'] = 1114, ['The Fel Hammer'] = 1165,
 ['Cathedral of Eternal Night'] = 1146, ['Azsuna Invasion'] = 1157, ['Stormheim Invasion'] = 1156, ['Highmountain Invasion'] = 1159, ['Pit of Saron DK'] = 1116, ['Chromie Dragonblight'] = 1177, ['Tomb of Sargeras'] = 1147, ['Azuremyst Scenario']=1174, ['Argus']=1135, ['Deadmines Scenario']=1137, ['Hall of Communion'] = 1172
}
data.MapIDsByNameR = {}
for k,v in pairs(data.MapIDsByName) do 
	if type(v)=="table" then
		for kk,vv in pairs(v) do
			data.MapIDsByNameR[vv]=k 
		end
	else
		data.MapIDsByNameR[v]=k 
	end
end
-- Copy this over to Writer if modified.

-- /run D={}  for i=1,1000 do pcall(EJ_SelectInstance,i) local dunName, description, bgImage, buttonImage, loreImage, lfgImage, dungeonMapId, link = EJ_GetInstanceInfo()  D[dungeonMapId or 0]=true end  ZGV:ShowDump(ZGV:Serialize(D),"")
-- This is used by |goto implementation to detect which maps cannot be positioned anymore.
data.DungeonMaps = {
  [520] = true,
  [521] = true,
  [522] = true,
  [523] = true,
  [524] = true,
  [525] = true,
  [526] = true,
  [527] = true,
  [528] = true,
  [529] = true,
  [530] = true,
  [531] = true,
  [532] = true,
  [533] = true,
  [534] = true,
  [535] = true,
  [536] = true,
  [542] = true,
  [543] = true,
  [601] = true,
  [602] = true,
  [603] = true,
  [604] = true,
  [609] = true,
  [680] = true,
  [686] = true,
  [687] = true,
  [688] = true,
  [690] = true,
  [691] = true,
  [692] = true,
  [696] = true,
  [699] = true,
  [704] = true,
  [710] = true,
  [717] = true,
  [718] = true,
  [721] = true,
  [722] = true,
  [723] = true,
  [724] = true,
  [725] = true,
  [726] = true,
  [727] = true,
  [728] = true,
  [729] = true,
  [730] = true,
  [731] = true,
  [732] = true,
  [733] = true,
  [734] = true,
  [747] = true,
  [749] = true,
  [750] = true,
  [752] = true,
  [753] = true,
  [754] = true,
  [755] = true,
  [756] = true,
  [757] = true,
  [758] = true,
  [759] = true,
  [760] = true,
  [761] = true,
  [764] = true,
  [765] = true,
  [766] = true,
  [767] = true,
  [768] = true,
  [769] = true,
  [773] = true,
  [775] = true,
  [776] = true,
  [779] = true,
  [780] = true,
  [781] = true,
  [782] = true,
  [789] = true,
  [793] = true,
  [796] = true,
  [797] = true,
  [798] = true,
  [799] = true,
  [800] = true,
  [809] = true,
  [816] = true,
  [819] = true,
  [820] = true,
  [824] = true,
  [867] = true,
  [871] = true,
  [874] = true,
  [875] = true,
  [876] = true,
  [877] = true,
  [885] = true,
  [886] = true,
  [887] = true,
  [896] = true,
  [897] = true,
  [898] = true,
  [930] = true,
  [949] = true,
  [953] = true,
  [964] = true,
  [969] = true,
  [984] = true,
  [987] = true,
  [988] = true,
  [989] = true,
  [993] = true,
  [994] = true,
  [995] = true,
  [1008] = true,
  [1026] = true,
  [1041] = true,
  [1042] = true,
  [1045] = true,
  [1046] = true,
  [1065] = true,
  [1066] = true,
  [1067] = true,
  [1079] = true,
  [1081] = true,
  [1087] = true,
  [1088] = true,
  [1094] = true,
  [1114] = true,
  [1115] = true,
  [1147] = true,
}


--[[
	YE OLDE HELP TEXT

	Okay, to clarify, there's multiple ways to write a map link now. It's a mess, but it works.

	The first, simplest way, is two nodes linked, written in plain text (let's hope they're accessible by some means):
		"First Zone/2 11.22,33.44 -x- Second Zone/3 55.66,77.88",

	The "-x-" means it's a crossing, two-way. You can use "-to-" to make a one-way link.


	NODE NAMES:

	Adding @something after the node coordinates gives the node a name, for later reuse.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88 @stormgate",
		"Elwynn 77.77,66.66 -x- @stormgate",

	You can also use @+ to indicate the last node created or mentioned, whether it was named or not.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88",
		"@+ -x- Elwynn 77.77,66.66",

	This allows for easy chaining of nodes.


	ONE NODE?

	You can create just one node:
		"Solitary 11.1,22.2"

	This only makes sense if you @+ link to it later, or give it an explicit @name and refer to that.


	ADDITIONAL NODE DATA:

	Writing <field:value> after a node's coordinates assigns additional data.
		"Stormwind 11.1,22.2 <title:Watch out, dog poo> <radius:5>"

	Data fields include (among others):
		'title' to caption a node,
		'radius' to set the node's player-detection radius,
		'region' to assign a node to a special region,
		'nofly' set to 1 means the node cannot be flown to,
		'dark' set to 1 means the node can only be seen by the player from a small distance, but suffers no penalty when chained between other nodes


	ADDITIONAL LINK DATA:

	Writing {field:value} after both nodes assigns data to their link:
		"Stormwind 11.1,22.2 -x- Elwynn Forest 55.5,66.6 {cost:999}"   -- this is a very time-costly connection


	ADVANCED FORMAT:

	If that's not enough, you can use a "raw" format to write node links:
		{ "@+" , "Orgrimmar/1 11.1,22.2" , template="portalauto", faction="H", cost=123 }

	Within that, you can go even deeper and write the node(s) in raw mode, too:
		{ "@+" , {"Orgrimmar/1 11.1,22.2",title="Something in Orgri",region="whatever"} , oneway=1 }

	Very advanced, messy, "fake zone"-based mapping (Maraudon the Zone of Nightmares) makes extensive use of that.

--]]


data.basenodes = {}

data.basenodes.setup = {
	--"REGION fuselightbtspre Badlands 79.1,31.6 <150",
}



-- These zone pairs see directly into each other, as they share "green" borders.
data.greenborders = {
	{"Elwynn Forest","Duskwood"},
	{"Westfall","Duskwood"},
	{"Eversong Woods","Ghostlands"},

	{"Kelp'thar Forest","Shimmering Expanse"},
	{"Shimmering Expanse","Abyssal Depths"},
	{"Abyssal Depths","Kelp'thar Forest"},
}

data.basenodes.walls = {
	["Tirisfal Glades"] = {
		{ 48.8,50.9, 50.8,50.7, 51.0,56.1, 48.2,56.4, "loop" } -- Calston Lake (example)
	},
	["Eastern Plaguelands"] = {
		{ 90.3,0.1, 84.7,38.2, 80.8,54.1, 84.3,71.8 } -- wall off Scarlet Enclave
	}
}



-- These define zone-wide flags, if that's needed.
data.zoneflags = {
	["Razorfen Kraul"]={dark=1},
}


--[[
	These lines define how each point's text displays, depending on their "situation".
	The keys of this dictionary adhere to a quirky, but logical pattern of "a_b__c_d", which means:
		a = "this type of connection"
		_ = "to"
		b = "this type of point"
		_ = "and"
		_ = "then"
		c = "that type of connection"
		_ = "to"
		d = "that type of point".
	So, a "start" point that you "walk" to (all paths start like that), after which you'll "fly" to a "border" point, is in a situation of "walk_start__fly_border" ("walk to start, and then fly to border").
	You can supply just "a_b", or just "b".
	A point attribute <template:nameoftemplate> overrides the point's basic type for the purpose of this list. Thus, a point can stay a "portal", but have the flavour of "portalclick" if it has a <template:portalclick> attribute and have a special display of "Click portal", matching a "portalclick" type.
	A connection attribute {template:nameoftemplate} overrides the mode of transport for the purpose of this list. Thus, if a connection has {template:portalauto} one can match for "portalauto_*" to show descriptions for that connection, or match for "*_*__portalauto_*" to match for NEXT connection's type and perhaps show an appropriate text on the previous node before a portal.
	A connection attribute that is not found in this list, is looked up in the list above, for easy two-way descriptions.
	Asterisks denote wildcards.
	One can also use the text part of the dictionary to refer to other entries in the list.
	Entries are checked in the file's order. First match gets the cake.

	So, for example: 
		"taxi" - matches points of type "taxi", to display them as "Talk to {npc}\nFly to {next_name}, {next_map}".
		"portalauto" - matches points of template "portalauto", to display them as "Enter portal to {next_map}".
		"*_*__pinkportal" - matches any point AFTER which there's a pinkportal connection.
--]]

data.point_context_templates = {
	{'walk_start',"You are here"},

	{'whistle',"Use Flight Master's Whistle"},
	{'taxi_taxi__taxi_taxi',"passfp"},
	{'forced_taxi__taxi_taxi',"Arrive at {name}, {map}\nFly again to {next_name}, {next_map}"},
	--{'taxi_taxi__taxi_taxi',"arrive"},

	{'*_taxi__taxi_taxi',"taxi"}, {'taxi_taxi',"arrivefp"},
	{'taxi',"Talk to {npc}\nFly to {next_name}, {next_map}"},
	{'taxidumb',"Arrive at your destination"},

	{'*_ship__ship_ship',"Ride the boat to {next_port}"}, {'ship_ship',"arrive"},
	{'*_zeppelin__zeppelin_zeppelin',"Ride the zeppelin to {next_port}"}, {'zeppelin_zeppelin',"arrive"},

	{'*_*__pandarope_*',"Click the rope on the ground\nto swing to {next_map}"},

	{'*_portal__portal_*',"portalclick"}, {'portal*_*',"arrive"},
	{'*_portal__portalauto_*',"portalauto"},-- {'portalauto_X',"arrive"},
	{'*_portal__portalDungeonEnter_*',"portalauto"},-- {'portaldungeon_X',"arrive"},
	{'*_portal__portalDungeonExit_*',"Use the portal to exit {map}"},-- {'portaldungeon_X',"arrive"},
	{'portalauto',"Enter portal to {next_map}"},
	{'portaldungeon',"Enter portal to {next_map}"},
	{'portalclick',"Click portal to {next_map}"},
	{'*_teleportnamed',"Teleport to {next_name}"},
	--{'portal',"Click portal to {next_map}\nTeleport to {next_map}"},
	{'pinkportal',"Go through the pink portal to {next_map}"},
	{'*_*__pinkportal_*',"Go through the pink portal to {next_map}"},
	{'*_*__darkportal_*',"Enter the huge green portal\nTeleport to {next_map}"},
	{'darkportal',"Enter the huge green portal\nTeleport to {next_map}"},
	{'*_*__cityportal_*',"Enter the circular portal\nTeleport to {next_map}"},
	{'cityportal',"Enter the circular portal\nTeleport to {next_map}"},
	{'blackcat',"Talk to the Nightsaber Rider\nto travel {next_name}"},
	{'moltentele',"Talk to Lothos Riftwaker\n Teleport to {next_map}"},
	{'orbofcommand',"Click on Orb of Command\n Teleport to {next_map}"},
	{'dragonrider',"Talk to the dragon\n Arrive at {next_map}"},
	{'*_*__transporter_*',"Enter the transporter"},
	{'transporter_*',"Exit the transporter"},

	{'walk_border',"walk_map"}, {'border_border',"walk_map"},

	{'arrive',"Arrive at {map}"},
	{'arrivefp',"Arrive at {name}, {map}"},
	{'passfp',"Pass {name}, {map}"},

	{'*_tram__tram_tram',"tram"}, {'tram_tram',"arrive"},
	{'tram',"Ride the tram to {next_map}"},

	{'deathgate',"Cast Death Gate to Acherus"},
	{'teleport',"Cast teleport to {map}"},

	{'courtesymage',"Find a Mage to teleport you to {map}\nThere is no direct path"},
	{'courtesywarlock',"There is no path to {map} for you."},
	{'courtesy',"Use a Courtesy!"},

	{'teleport_ask',"Use a Mage Portal to {map}"},
	{'useitem',"Use {item}"},

	{'hearth',"Hearth to {name}"},
	{'ghearth',"Hearth to your Garrison"},
	{'astralrecall',"Cast Astral Recall to {name}"},

	{'*_door',"Click to open the door"},
	{'walk',"Go to {node}"},
	{'swim',"Swim to {node}"},
	{'walk_map',"Go to {bordermap}"},
	{'fly',"Go to {node}"},
	{'travel','walk'},
}


data.connection_templates = {
	['building'] = {
		['title_atob'] = "Enter the building",
		['title_btoa'] = "Leave the building",
	},
	['cave'] = {
		['title_atob'] = "Enter the cave",
		['title_btoa'] = "Leave the cave",
	},
	['mine'] = {
		['title_atob'] = "Enter the mine",
		['title_btoa'] = "Leave the mine",
	},
	['tunnel'] = {
		['title_atob'] = "Enter tunnel",
		['title_btoa'] = "Exit tunnel",
	},
	['longtunnel'] = {
		['title_atob'] = "Enter tunnel",
		['title_btoa'] = "Go through tunnel",
	},
	['barrow'] = {
		['title_atob'] = "Enter barrow",
		['title_btoa'] = "Exit barrow",
	},
	['tomb'] = {
		['title_atob'] = "Enter tomb",
		['title_btoa'] = "Exit tomb",
	},
	['pathup'] = {
		['title_atob'] = "Go up the path",
		['title_btoa'] = "Go down the path",
	},
}





data.ZoneContLev = {
  [4] = { cont=1,level=1 },
  [9] = { cont=1, },
  [11] = { cont=1,level=10 },
  [13] = { cont=1, },
  [14] = { cont=2, },
  [16] = { cont=2,level=25 },
  [17] = { cont=2,level=44 },
  [19] = { cont=2,level=54 },
  [20] = { cont=2,level=1 },
  [21] = { cont=2,level=10 },
  [22] = { cont=2,level=35 },
  [23] = { cont=2,level=40 },
  [24] = { cont=2,level=20 },
  [26] = { cont=2,level=30 },
  [27] = { cont=2,level=1 },
  [28] = { cont=2,level=47 },
  [29] = { cont=2,level=49 },
  [30] = { cont=2,level=1 },
  [32] = { cont=2,level=55 },
  [34] = { cont=2,level=20 },
  [35] = { cont=2,level=10 },
  [36] = { cont=2,level=15 },
  [37] = { cont=2,level=25 },
  [38] = { cont=2,level=52 },
  [39] = { cont=2,level=10 },
  [40] = { cont=2,level=20 },
  [41] = { cont=1,level=1 },
  [42] = { cont=1,level=10 },
  [43] = { cont=1,level=20 },
  [61] = { cont=1,level=40 },
  [81] = { cont=1,level=25 },
  [101] = { cont=1,level=30 },
  [121] = { cont=1,level=35 },
  [141] = { cont=1,level=35 },
  [161] = { cont=1,level=45 },
  [181] = { cont=1,level=10 },
  [182] = { cont=1,level=45 },
  [201] = { cont=1,level=50 },
  [241] = { cont=1,level=55 },
  [261] = { cont=1,level=55 },
  [281] = { cont=1,level=50 },
  [301] = { cont=2, },
  [321] = { cont=1, },
  [341] = { cont=2, },
  [362] = { cont=1, },
  [381] = { cont=1, },
  [382] = { cont=2, },
  [401] = { cont=-1, },
  [443] = { cont=-1, },
  [461] = { cont=-1, },
  [462] = { cont=2,level=1 },
  [463] = { cont=2,level=10 },
  [464] = { cont=1,level=1 },
  [465] = { cont=3,level=58 },
  [466] = { cont=3, },
  [467] = { cont=3,level=60 },
  [471] = { cont=1, },
  [473] = { cont=3,level=67 },
  [475] = { cont=3,level=65 },
  [476] = { cont=1,level=10 },
  [477] = { cont=3,level=64 },
  [478] = { cont=3,level=62 },
  [479] = { cont=3,level=67 },
  [480] = { cont=2, },
  [481] = { cont=3, },
  [482] = { cont=-1, },
  [485] = { cont=4, },
  [486] = { cont=4,level=68 },
  [488] = { cont=4,level=71 },
  [490] = { cont=4,level=73 },
  [491] = { cont=4,level=68 },
  [492] = { cont=4,level=77 },
  [493] = { cont=4,level=76 },
  [495] = { cont=4,level=77 },
  [496] = { cont=4,level=74 },
  [499] = { cont=2, },
  [501] = { cont=4,level=77 },
  [502] = { cont=-1, },
  [504] = { cont=4, },
  [510] = { cont=4,level=77 },
  [512] = { cont=-1, },
  [520] = { cont=-1, },
  [521] = { cont=-1, },
  [522] = { cont=-1, },
  [523] = { cont=-1, },
  [524] = { cont=-1, },
  [525] = { cont=-1, },
  [526] = { cont=-1, },
  [527] = { cont=-1, },
  [528] = { cont=-1, },
  [529] = { cont=-1, },
  [530] = { cont=-1, },
  [531] = { cont=-1, },
  [532] = { cont=-1, },
  [533] = { cont=-1, },
  [534] = { cont=-1, },
  [535] = { cont=-1, },
  [536] = { cont=-1, },
  [539] = { cont=-1, },
  [540] = { cont=-1, },
  [541] = { cont=4,level=77 },
  [542] = { cont=-1, },
  [543] = { cont=-1, },
  [544] = { cont=5,level=1 },
  [545] = { cont=-1,level=1 },
  [601] = { cont=-1, },
  [602] = { cont=-1, },
  [603] = { cont=-1, },
  [604] = { cont=-1, },
  [605] = { cont=5, },
  [606] = { cont=1,level=80 },
  [607] = { cont=1,level=30 },
  [609] = { cont=-1, },
  [610] = { cont=2, },
  [611] = { cont=-1, },
  [613] = { cont=2,level=80 },
  [614] = { cont=2, },
  [615] = { cont=2, },
  [626] = { cont=-1, },
  [640] = { cont=5,level=82 },
  [673] = { cont=2,level=30 },
  [677] = { cont=-1, },
  [678] = { cont=-1,level=1 },
  [679] = { cont=-1,level=1 },
  [680] = { cont=-1, },
  [681] = { cont=5,level=1 },
  [682] = { cont=5,level=1 },
  [683] = { cont=1,level=80 },
  [684] = { cont=2, },
  [685] = { cont=2, },
  [686] = { cont=-1, },
  [687] = { cont=-1, },
  [688] = { cont=-1, },
  [689] = { cont=2,level=25 },
  [690] = { cont=-1, },
  [691] = { cont=-1, },
  [692] = { cont=-1, },
  [696] = { cont=-1, },
  [697] = { cont=-1, },
  [699] = { cont=-1, },
  [700] = { cont=2,level=84 },
  [704] = { cont=-1, },
  [708] = { cont=2,level=84 },
  [709] = { cont=2,level=85 },
  [710] = { cont=-1, },
  [717] = { cont=-1, },
  [718] = { cont=-1, },
  [720] = { cont=1,level=83 },
  [721] = { cont=-1, },
  [722] = { cont=-1, },
  [723] = { cont=-1, },
  [724] = { cont=-1, },
  [725] = { cont=-1, },
  [726] = { cont=-1, },
  [727] = { cont=-1, },
  [728] = { cont=-1, },
  [729] = { cont=-1, },
  [730] = { cont=-1, },
  [731] = { cont=-1, },
  [732] = { cont=-1, },
  [733] = { cont=-1, },
  [734] = { cont=-1, },
  [736] = { cont=-1, },
  [737] = { cont=5, },
  [747] = { cont=-1, },
  [748] = { cont=1,level=83 },
  [749] = { cont=-1, },
  [750] = { cont=-1, },
  [751] = { cont=-1, },
  [752] = { cont=-1, },
  [753] = { cont=-1, },
  [754] = { cont=-1, },
  [755] = { cont=-1, },
  [756] = { cont=-1, },
  [757] = { cont=-1, },
  [758] = { cont=-1, },
  [759] = { cont=-1, },
  [760] = { cont=-1, },
  [761] = { cont=-1, },
  [762] = { cont=-1, },
  [763] = { cont=-1, },
  [764] = { cont=-1, },
  [765] = { cont=-1, },
  [766] = { cont=-1, },
  [767] = { cont=-1, },
  [768] = { cont=-1, },
  [769] = { cont=-1, },
  [770] = { cont=2,level=84 },
  [772] = { cont=1, },
  [773] = { cont=-1, },
  [775] = { cont=-1, },
  [776] = { cont=-1, },
  [779] = { cont=-1, },
  [780] = { cont=-1, },
  [781] = { cont=-1, },
  [782] = { cont=-1, },
  [789] = { cont=-1,level=70 },
  [793] = { cont=-1, },
  [795] = { cont=-1, },
  [796] = { cont=-1, },
  [797] = { cont=-1, },
  [798] = { cont=-1, },
  [799] = { cont=-1, },
  [800] = { cont=-1, },
  [803] = { cont=-1, },
  [806] = { cont=6,level=85 },
  [807] = { cont=6,level=86 },
  [808] = { cont=-1,level=1 },
  [809] = { cont=6,level=87 },
  [810] = { cont=6,level=88 },
  [811] = { cont=6,level=90 },
  [813] = { cont=-1, },
  [816] = { cont=-1, },
  [819] = { cont=-1, },
  [820] = { cont=-1, },
  [823] = { cont=-1, },
  [824] = { cont=-1, },
  [851] = { cont=-1, },
  [856] = { cont=-1, },
  [857] = { cont=6,level=86 },
  [858] = { cont=6,level=89 },
  [860] = { cont=-1, },
  [862] = { cont=6, },
  [864] = { cont=2, },
  [866] = { cont=2, },
  [867] = { cont=-1, },
  [871] = { cont=-1, },
  [873] = { cont=6, },
  [874] = { cont=-1, },
  [875] = { cont=-1, },
  [876] = { cont=-1, },
  [877] = { cont=-1, },
  [878] = { cont=-1, },
  [879] = { cont=-1, },
  [880] = { cont=-1, },
  [881] = { cont=-1, },
  [882] = { cont=-1, },
  [883] = { cont=-1, },
  [884] = { cont=-1, },
  [885] = { cont=-1, },
  [886] = { cont=-1, },
  [887] = { cont=-1, },
  [888] = { cont=1, },
  [889] = { cont=1, },
  [890] = { cont=1, },
  [891] = { cont=1, },
  [892] = { cont=2, },
  [893] = { cont=2, },
  [894] = { cont=1, },
  [895] = { cont=2, },
  [896] = { cont=-1, },
  [897] = { cont=-1, },
  [898] = { cont=-1, },
  [899] = { cont=-1, },
  [900] = { cont=-1, },
  [903] = { cont=6, },
  [905] = { cont=6, },
  [906] = { cont=-1, },
  [907] = { cont=1,level=35 },
  [910] = { cont=6,level=86 },
  [911] = { cont=-1, },
  [912] = { cont=-1, },
  [914] = { cont=-1, },
  [919] = { cont=-1, },
  [920] = { cont=-1, },
  [922] = { cont=-1, },
  [924] = { cont=-1, },
  [925] = { cont=-1, },
  [928] = { cont=6, },
  [929] = { cont=6, },
  [930] = { cont=-1, },
  [933] = { cont=-1, },
  [934] = { cont=-1, },
  [935] = { cont=-1, },
  [937] = { cont=-1, },
  [938] = { cont=-1, },
  [939] = { cont=-1, },
  [940] = { cont=-1, },
  [941] = { cont=7,level=90 },
  [945] = { cont=7,level=100 },
  [946] = { cont=7,level=94 },
  [947] = { cont=7,level=90 },
  [948] = { cont=7,level=96 },
  [949] = { cont=7,level=92 },
  [950] = { cont=7,level=98 },
  [951] = { cont=6, },
  [953] = { cont=-1, },
  [955] = { cont=-1, },
  [962] = { cont=7, },
  [964] = { cont=-1, },
  [969] = { cont=-1, },
  [970] = { cont=-1, },
  [971] = { cont=7,level=90 },
  [973] = { cont=7,level=90 },
  [974] = { cont=7,level=90 },
  [975] = { cont=7,level=90 },
  [976] = { cont=7,level=90 },
  [978] = { cont=7,level=100 },
  [980] = { cont=7,level=90 },
  [981] = { cont=7,level=90 },
  [982] = { cont=7,level=90 },
  [983] = { cont=-1, },
  [984] = { cont=-1, },
  [986] = { cont=-1, },
  [987] = { cont=-1, },
  [988] = { cont=-1, },
  [989] = { cont=-1, },
  [990] = { cont=7,level=90 },
  [991] = { cont=7,level=90 },
  [992] = { cont=2,level=54 },
  [993] = { cont=-1, },
  [994] = { cont=-1, },
  [995] = { cont=-1, },
  [1008] = { cont=-1, },
  [1009] = { cont=7, },
  [1010] = { cont=-1, },
  [1011] = { cont=7, },
}

data.ZoneContLev[614].level=80 -- 3 sub zones in Vashj'ir that returned 0 as their level... Thank you blizzard.  They're just subzones of Vashj'ir #613.
data.ZoneContLev[615].level=80
data.ZoneContLev[610].level=80
data.ZoneContLev[499].level=65 -- Isle of Quel'Danas. Had 0 for whatever reason but FP is learned automatically at 65
--Panda Land Levels hardcoded until GetCurrentMapLevelRange() works for them.
data.ZoneContLev[873].level=87
data.ZoneContLev[929].level=90

for k,v in pairs(data.ZoneContLev) do v.level=v.level or 0 end
local dummy={cont=-1,level=0}
setmetatable(data.ZoneContLev,{__index=function() return dummy end})
