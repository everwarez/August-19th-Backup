local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.transit = {
	-- == SHIPS/ZEPPELINS == --

		"Orgrimmar 43.0,64.9 -x- Thunder Bluff 15.2,25.8 {fac:H} {mode:ZEPPELIN}",
		"Orgrimmar 52.5,53.1 -x- Northern Stranglethorn 37.2,52.4 {fac:H} {mode:ZEPPELIN}",
		"Orgrimmar 50.8,55.9 -x- Tirisfal Glades 60.7,58.8 {fac:H} {mode:ZEPPELIN}",
		"Orgrimmar 44.7,62.3 -x- Borean Tundra 41.4,53.6 {fac:H} {mode:ZEPPELIN}",

		"Tirisfal Glades 59.1,59.0 <port:Undercity> -x- Howling Fjord 77.7,28.3 {fac:H} {mode:ZEPPELIN}",
		"Tirisfal Glades 61.9,59.1 <port:Undercity> -x- Northern Stranglethorn 37.5,50.9 {fac:H} {mode:ZEPPELIN}",

		"Stormwind City 18.0,25.8 -x- Borean Tundra 59.7,69.4 {fac:A} {mode:SHIP} {cost:177}  {cond:not ZGV.IsLegionBoatLock()}", -- ship turnaround = 275, ~40s waiting; 275/2+40 = 177.5
		"Stormwind City 22.5,55.8 -x- Teldrassil 55.0,93.7 <port:Darnassus> {fac:A} {mode:SHIP}  {cond:not ZGV.IsLegionBoatLock()}",
		"Teldrassil 52.3,89.5 <port:Darnassus> -x-  Azuremyst Isle 21.3,54.0 {fac:A} {mode:SHIP}  {cond:not ZGV.IsLegionBoatLock()}", --TODO the map is a little strange between Azuremyst and the actual ship.

		--"Stormwind City 70.5,30.0 @tramsw <dark:1> -x- Deeprun Tram/1 99,45 {fac:A} {mode:TRAM}",   "Stormwind City 66.4,35.0 -x- @tramsw {fac:A} {dontsetborder:1}",
		"Stormwind City 69.44,31.29 -x- Deeprun Tram/1 42.8,19.5 @deeprun_sw {mode:PORTAL} {title_atob:Enter Stormwind Deeprun Tram portal\nTake tram to Ironforge} {title_btoa:Exit Stormwind Deeprun Tram through portal}", -- SW entry
		"Ironforge 76.43,51.08 -x- Deeprun Tram/1 98,45 @deeprun_if {mode:PORTAL} {title_atob:Enter Ironforge Deeprun Tram portal\nTake tram to Stormwind} {title_btoa:Take tram to Ironforge\nExit Ironforge Deeprun Tram through portal}", -- IF entry
		"@deeprun_sw -x- @deeprun_if {mode:TRAM} {cost:30} {dontsetborder:1}", -- TRAM
		--"Deeprun Tram/1 88,45 @deeprun_sw_track -x- Deeprun Tram/1 99,45 @deeprun_if_track {mode:TRAM}", -- IF entry

		"Wetlands 6.4,62.2 <port:Menethil Harbor> -x- Dustwallow Marsh 71.5,56.3 {fac:A} {mode:SHIP}",
		"Wetlands 5.1,55.7 <port:Menethil Harbor> -x- Howling Fjord 61.3,62.6 <port:Valgarde> {fac:A} {mode:SHIP}", --,cost=300}, --ship turnaround is 450, but takes forever to depart/arrive

		-- NEUTRAL SHIPS
		"The Cape of Stranglethorn 39.0,67.0 <port:Booty Bay> -x- Northern Barrens 70.2,73.3 <port:Ratchet> {mode:SHIP}", -- booty-ratchet
		"Borean Tundra 78.9,53.6 <port:Unu'pe> -x- Dragonblight 48.0,78.8 <port:Moa'ki Harbor> {mode:SHIP} {template:turtle}", -- unu'pe-moa'ki
		"Dragonblight 49.6,78.4 -x- Howling Fjord 23.5,57.8 <port:Kamagua> {mode:SHIP} {template:turtle}", -- moa'ki-kamagua


	"Eastern Plaguelands 54.5,8.4 <subtype:darkportal> -x- Ghostlands 52.1,97.6 <subtype:darkportal> {mode:PORTAL}",

	-- Stormwind teleport target
	"Stormwind City 49.6,86.5 @sw_tp_dst",
	"Dalaran 55.86,46.81 @dala_tp_dst",
	"Orgrimmar/2 48.3,64.7 <region:cleftofshadow> @org_tp_dst",

	-- WoD ground travel aids
	"Talador 65.4,48.0 -x- Talador 67.6,45.3 {cost:0}",
	"Talador 60.0,41.1 -x- Talador 59.3,44.9 {cost:0}",
	"Talador 64.5,41.1 -x- Talador 66.7,42.0 {cost:0}",

	

---------------
--- PORTALS ---
---------------
-- LEGION
    -----------------	
    ---  DALARAN  ---
    -----------------
	-- Chamber of the Guardian Entrance
		"Dalaran L/10 49.31,47.60 -to- Dalaran L/12 63.38,23.87 {mode:PORTAL} {title:Enter the Chamber of the Guardian} {cond:ZGV.IsLegionOn()}",

	-- Chamber of the Guardian Exit
		"Dalaran L/12 64.92,21.07 -to- Dalaran L/10 49.04,48.04 {mode:PORTAL} {title:Leave the Chamber of the Guardian} {cond:ZGV.IsLegionOn()}",

	-- The Violet Hold Entrance
		"Dalaran L/10 67.76,70.29 -to- Violet Hold/1 50.95,69.90 {mode:PORTAL} {title:Click the Violet Hold Gate and Walk into the Swirling Portal to the Violet Hold}"..
			"{cond:ZGV.IsLegionOn()}",

	-- The Violet Hold Exit
		"Violet Hold/1 50.98,83.81 -to- Dalaran L/10 65.57,67.39 {mode:PORTAL} {title:Walk into the Swirling Portal to Dalaran} {cond:ZGV.IsLegionOn()}",

	-- Portal to Caverns of Time
		"Dalaran L/12 38.67,79.72 -to- Tanaris/17 54.60,28.30 {mode:PORTAL} {title:Click the Portal to Caverns of Time} {cond:ZGV.IsLegionOn()}",

	-- DRAENOR
		"Stormshield/0 36.4,41.1 -to- Tanaan Jungle/0 57.5,60.3 {fac:A} {mode:PORTAL} {cond:IsQuestFlaggedCompleted(38445)}",
		"Tanaan Jungle/0 57.4,60.5 -to- Stormshield/0 31.7,52.5 {fac:A} {mode:PORTAL} {cond:IsQuestFlaggedCompleted(38445)}",
		
	-- Portal to Shattrath
		"Dalaran L/12 35.57,85.44 -to- Shattrath City/0 54.97,40.23 {mode:PORTAL} {title:Click the Portal to Shattrath} {cond:ZGV.IsLegionOn()}",

	-- Portal to Wyrmrest Temple
		"Dalaran L/12 30.71,84.32 -to- Dragonblight/0 59.72,52.87 {mode:PORTAL} {title:Click the Portal to Wyrmrest Temple} {cond:ZGV.IsLegionOn()}",

	-- Portal to Dalaran Crater
		"Dalaran L/12 28.73,77.36 -to- Hillsbrad Foothills/0 30.91,36.34 {mode:PORTAL} {title:Click the Portal to Dalaran Crater} {cond:ZGV.IsLegionOn()}",

	-- Portal to Karazhan
		"Dalaran L/12 31.98,71.53 -to- Deadwind Pass/0 47.24,75.40 {mode:PORTAL} {title:Click the Portal to Karazhan} {cond:ZGV.IsLegionOn()}",

	-- Margoss's Retreat (Fishing Reputation - Floating Island Next to Dalaran)
		"Dalaran L/10 23.10,-11.40 <region:dalaran_margosss_retreat> -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title:Talk to |cffaaffaaConjurer Margoss|r\n\nTell him |cfff0e081\"Please teleport me\nback to Dalaran.\"|r}"..
			"{cond:ZGV.IsLegionOn()}",



	---------------------------------
	---  DALARAN (ALLIANCE ONLY)  ---
	---------------------------------
	-- Portal to Stormwind (Alliance)
		"Dalaran L/10 39.55,63.22 -to- Stormwind City/0 49.59,86.53 {fac:A} {mode:PORTAL} {title:Click the Portal to Stormwind inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Portal to Ironforge (Alliance)
		"Dalaran L/10 38.91,64.42 -to- Ironforge/0 25.51,8.43 {fac:A} {mode:PORTAL} {title:Click the Portal to Ironforge inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Portal to Darnassus (Alliance)
		"Dalaran L/10 38.29,65.57 -to- Darnassus/0 43.47,78.68 {fac:A} {mode:PORTAL} {title:Click the Portal to Darnassus inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Portal to Exodar (Alliance)
		"Dalaran L/10 37.63,66.79 -to- The Exodar/0 47.62,59.82 {fac:A} {mode:PORTAL} {title:Click the Portal to Exodar inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",

	-- Portal to Vale of Eternal Blossoms (Alliance)
		"Dalaran L/10 36.53,67.04 -to- Vale of Eternal Blossoms/0 86.30,61.06 {fac:A} {mode:PORTAL} {title:Click the Portal to Vale of Eternal Blossoms inside Greyfang Enclave} {cond:ZGV.IsLegionOn()}",		
		
		
		
	---------------------------------
	---  DALARAN (HORDE ONLY)  ---
	---------------------------------
	-- Portal to Vale of Eternal Blossoms (Horde)
		"Dalaran L/10 54.98,25.59 -to- Vale of Eternal Blossoms/0 62.50,21.82 {fac:H} {mode:PORTAL} {title:Click the Portal to Vale of Eternal Blossoms inside Windrunner's Sanctuary}"..
			"{cond:ZGV.IsLegionOn()}",

	-- Portal to Orgrimmar (Horde)
		"Dalaran L/10 55.25,23.93 -to- Orgrimmar/2 48.28,64.53 {fac:H} {mode:PORTAL} {title:Click the Portal to Orgrimmar inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",

	-- Portal to Undercity (Horde)
		"Dalaran L/10 55.92,22.71 -to- Undercity/0 84.59,16.33 {fac:H} {mode:PORTAL} {title:Click the Portal to Undercity inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",
		--"Stormwind City 75.2,18.8 -to- Shadowmoon Valley D 27.0,8.0 {fac:A} {mode:PORTAL} {cond:IsQuestFlaggedCompleted(34575)}",
		--"Orgrimmar 51.1,36.8 -to- Frostfire Ridge 40.6,67.2 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}",

	-- Portal to Thunder Bluff (Horde)
		"Dalaran L/10 56.90,21.95 -to- Thunder Bluff/0 22.21,16.87 {fac:H} {mode:PORTAL} {title:Click the Portal to Thunder Bluff inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",

	-- Portal to Silvermoon (Horde)
		"Dalaran L/10 57.94,21.73 -to- Silvermoon City/0 58.26,19.24 {fac:H} {mode:PORTAL} {title:Click the Portal to Silvermoon inside Windrunner's Sanctuary} {cond:ZGV.IsLegionOn()}",



    ---------------------------------
    ---  DEATH KNIGHT ORDER HALL  ---
    ---------------------------------
	-- Teleport pads moved to FloorCrossings
	-- Portal to Dalaran
		"Broken Shore/2 24.78,33.70 -to- Dalaran L/10 60.92,44.72 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39757)}",



    -------------------------
    ---  MAGE ORDER HALL  ---
    -------------------------
	-- Portal to Dalaran
		"Hall of the Guardian/1 57.32,90.51 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(41036)}",



    ----------------------------
    ---  WARRIOR ORDER HALL  ---
    ----------------------------
	-- Dalaran: Jump to Skyhold
		"Dalaran L/10 75.23,47.22 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} {cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Stormheim: Jump to Skyhold
		"Stormheim/0 60.18,52.23 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} {cond:PlayerCompletedQuest(39803) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Azsuna: Jump to Skyhold
		"Azsuna/0 47.58,28.08 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} {cond:PlayerCompletedQuest(38443) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Val'sharah: Jump to Skyhold
		"Val'sharah/0 54.71,74.89 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} {cond:PlayerCompletedQuest(38384) and select(2,UnitClass('player'))=='WARRIOR'}",
		
	-- Highmountain: Jump to Skyhold
		"Thunder Totem/0 39.73,42.11 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} {cond:PlayerCompletedQuest(38907) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Suramar: Jump to Skyhold
		"Suramar/0 33.08,48.20 -to- Skyhold/1 58.92,36.29 {mode:PORTAL} {title:Use the Jump to Skyhold ability} {cond:PlayerCompletedQuest(42229) and select(2,UnitClass('player'))=='WARRIOR'}",	
	
	-- Skyhold: Jump to Dalaran
		"Skyhold/1 58.34,24.98 -to- Dalaran L/10 72.42,46.00 {mode:PORTAL} {title:Talk to Aerylia and Choose Dalaran} {cond:PlayerCompletedQuest(42815) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Skyhold: Jump to Stormheim
		"Skyhold/1 58.34,24.98 -to- Stormheim/0 60.42,51.05 {mode:PORTAL} {title:Talk to Aerylia and Choose Stormheim} {cond:PlayerCompletedQuest(39803) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Skyhold: Jump to Azsuna
		"Skyhold/1 58.34,24.98 -to- Azsuna/0 47.55,27.87 {mode:PORTAL} {title:Talk to Aerylia and Choose Azsuna} {cond:PlayerCompletedQuest(38443) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Skyhold: Jump to Val'sharah
		"Skyhold/1 58.34,24.98 -to- Val'sharah/0 55.01,72.49 {mode:PORTAL} {title:Talk to Aerylia and Choose Val'sharah} {cond:PlayerCompletedQuest(38384) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Skyhold: Jump to Highmountain
		"Skyhold/1 58.34,24.98 -to- Thunder Totem/0 41.57,44.02 {mode:PORTAL} {title:Talk to Aerylia and Choose Highmountain} {cond:PlayerCompletedQuest(38907) and select(2,UnitClass('player'))=='WARRIOR'}",

	-- Skyhold: Jump to Suramar
		"Skyhold/1 58.34,24.98 -to- Suramar/0 33.82,49.38 {mode:PORTAL} {title:Talk to Aerylia and Choose Suramar} {cond:PlayerCompletedQuest(42229) and select(2,UnitClass('player'))=='WARRIOR'}",



    ---------------------------
    ---  SHAMAN ORDER HALL  ---
    ---------------------------
	-- Dalaran Portal to the Maelstrom
		"Dalaran L/10 67.03,48.18 -to- The Maelstrom L/0 30.75,53.07 {mode:PORTAL} {title:Click the Portal to the Maelstrom} {cond:PlayerCompletedQuest(39746)}",

	-- Portal to Dalaran
		"The Maelstrom L/0 29.78,51.98 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(39746)}",

	-- Portal to Vortex Pinnacle
		"The Maelstrom L/0 26.71,41.32 -to- The Vortex Pinnacle L/1 54.14,16.85 {mode:PORTAL} {title:Click the Vortex Pinnacle Portal} {cond:PlayerCompletedQuest(43002)}",

	-- Vortex Pinnacle Portal to the Maelstrom
		"The Vortex Pinnacle L/1 53.59,16.00 -to- The Maelstrom L/0 26.79,41.48 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(43002)}",

	-- Portal to the Firelands
		"The Maelstrom L/0 31.08,61.02 -to- Firelands L/0 25.79,89.25 {mode:PORTAL} {title:Click the Firelands Portal} {cond:PlayerCompletedQuest(42208)}",

	-- Firelands Portal to the Maelstrom
		"Firelands L/0 25.02,92.64 -to- The Maelstrom L/0 30.54,59.78 {mode:PORTAL} {title:Walk into the Swirling Portal to the Maelstrom} {cond:PlayerCompletedQuest(42208)}",



    ---------------------------
    ---  HUNTER ORDER HALL  ---
    ---------------------------
	-- Dalaran Flight to Trueshot Lodge
		"Dalaran L/10 72.85,41.21 -to- Trueshot Lodge/0 33.25,49.43 {mode:PORTAL} {title:Talk to Talua and Fly to Trueshot Lodge} {cond:PlayerCompletedQuest(40953)}",

	-- Trueshot Lodge Portal to Dalaran
		"Trueshot Lodge/0 48.63,43.50 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL} {title:Click the Portal to Dalaran Upstairs Inside the Building} {cond:PlayerCompletedQuest(40953)}",



    ----------------------------
    ---  WARLOCK ORDER HALL  ---
    ----------------------------
	-- Portal from Dalaran to Dreadscar Rift
		"Dalaran L/11 27.85,44.50 -to- Dreadscar Rift/0 72.52,37.47 {mode:PORTAL}"..
			"{title:Click the Portal to Dreadscar Rift} {cond:PlayerCompletedQuest(40729)}",

	-- Portal from Dreadscar Rift to Dalaran
		"Dreadscar Rift/0 74.16,38.35 -to- Dalaran L/11 29.20,43.97 {mode:PORTAL}"..
			"{title:Walk into the Portal to Dalaran} {cond:PlayerCompletedQuest(40729)}",



    ----------------------------
    ---  PALADIN ORDER HALL  ---
    ----------------------------
	-- Portal from Dalaran to Sanctum of Light (ALLIANCE)
		"Dalaran L/10 32.59,69.96 -to- Eastern Plaguelands/20 39.42,61.46 {fac:A} {mode:PORTAL}"..
			"{title:Click the Portal to Sanctum of Light inside Greyfang Enclave}"..
			"{cond:PlayerCompletedQuest(38566)}",

	-- Portal from Sanctum of Light to Dalaran (ALLIANCE)
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 33.69,68.01 {fac:A} {mode:PORTAL}"..
			"{title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",

	-- Portal from Dalaran to Sanctum of Light (HORDE)
		"Dalaran L/10 61.92,13.49 -to- Eastern Plaguelands/20 39.42,61.46 {fac:H} {mode:PORTAL}"..
			"{title:Click the Portal to Sanctum of Light inside Windrunner's Sanctuary}"..
			"{cond:PlayerCompletedQuest(38566)}",

	-- Portal from Sanctum of Light to Dalaran (HORDE)
		"Eastern Plaguelands/20 37.57,64.10 -to- Dalaran L/10 61.27,14.82 {fac:H} {mode:PORTAL}"..
			"{title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(38566)}",



    ---------------------------------
    ---  DEMON HUNTER ORDER HALL  ---
    ---------------------------------
	-- Portal from Dalaran to the Fel Hammer
		"Dalaran L/10 98.02,69.27 -to- Mardum, the Shattered Abyss/2 59.18,85.75 {mode:PORTAL}"..
			"{title:Glide to the Floating Island and Click the Illidari Gateway}"..
			"{cond:PlayerCompletedQuest(42872)}",

	-- Portal from the Fel Hammer to Dalaran
		"Mardum, the Shattered Abyss/2 59.23,91.93 -to- Dalaran L/10 77.11,49.61 {mode:PORTAL}"..
			"{title:Click the Illidari Gateway} {cond:PlayerCompletedQuest(42872)}",



    --------------------------
    ---  ROGUE ORDER HALL  ---
    --------------------------
	-- Kocker to Dalaran #1
		"Dalaran L/4 39.67,21.52 -to- Dalaran L/10 54.20,32.68 {mode:PORTAL}"..
			"{title:Click the Kocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",

	-- Kocker to Dalaran #2
		"Dalaran L/4 29.48,22.02 -to- Dalaran L/10 46.44,26.01 {mode:PORTAL}"..
			"{title:Click the Kocker} {cond:PlayerIsOnQuest(40832) or PlayerCompletedQuest(40832)}",



    ---------------------------
    ---  PRIEST ORDER HALL  ---
    ---------------------------
	-- Portal from Dalaran to Netherlight Temple (ALLIANCE)
		"Dalaran L/10 39.61,57.24 -to- Netherlight Temple/1 49.64,75.50 {fac:A} {mode:PORTAL}"..
			"{title:Click the Portal to Netherlight Temple upstairs inside Greyfang Enclave}"..
			"{cond:PlayerCompletedQuest(40938)}",

	-- Portal from Netherlight Temple to Dalaran (ALLIANCE)
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 38.73,57.39 {fac:A} {mode:PORTAL}"..
			"{title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",

	-- Portal from Dalaran to Netherlight Temple (HORDE)
		"Dalaran L/10 63.00,17.70 -to- Netherlight Temple/1 49.64,75.50 {fac:H} {mode:PORTAL}"..
			"{title:Click the Portal to Netherlight Temple inside Windrunner's Sanctuary}"..
			"{cond:PlayerCompletedQuest(40938)}",

	-- Portal from Netherlight Temple to Dalaran (HORDE)
		"Netherlight Temple/1 49.75,80.72 -to- Dalaran L/10 61.65,17.39 {fac:H} {mode:PORTAL}"..
			"{title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40938)}",



    -------------------------
    ---  MONK ORDER HALL  ---
    -------------------------
	-- Portal from the Wandering Isle to Peak of Serenity
		"The Wandering Isle L/0 50.05,54.41 -to- Kun-Lai Summit/0 48.69,43.12 {mode:PORTAL}"..
			"{title:Click the Portal to Peak of Serenity} {cond:PlayerCompletedQuest(40236)}",

	-- Portal from the Wandering Isle to Dalaran
		"The Wandering Isle L/0 52.39,57.15 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL}"..
			"{title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40236)}",



    --------------------------
    ---  DRUID ORDER HALL  ---
    --------------------------
	-- Portal from the The Dreamgrove to Dalaran
		"The Dreamgrove/0 56.51,43.10 -to- Dalaran L/10 67.52,46.47 {mode:PORTAL}"..
			"{title:Click the Portal to Dalaran} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from the The Dreamgrove to Emerald Dreamway
		--"The Dreamgrove/0 41.89,22.34 -to- Emerald Dreamway/0 45.10,26.49 {mode:PORTAL}"..
		"The Dreamgrove/0 55.66,22.09 -to- Emerald Dreamway/0 45.10,26.49 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Emerald Dreamway to The Dreamgrove
		--"Emerald Dreamway/0 45.68,23.52 -to- The Dreamgrove/0 41.69,22.77 {mode:PORTAL}"..
		"Emerald Dreamway/0 45.68,23.52 -to- The Dreamgrove/0 54.30,24.97 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to The Dreamgrove} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Emerald Dreamway to Mount Hyjal
		"Emerald Dreamway/0 53.87,53.17 -to- Mount Hyjal/0 59.29,25.83 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to Mount Hyjal} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Mount Hyjal to the Emerald Dreamway
		"Mount Hyjal/0 59.09,26.09 -to- Emerald Dreamway/0 51.59,51.89 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",
	
	-- Portal from Emerald Dreamway to the Hinterlands
		"Emerald Dreamway/0 50.91,66.51 -to- The Hinterlands/0 62.49,23.50 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Hinterlands} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from the Hinterlands to the Emerald Dreamway
		"The Hinterlands/0 62.30,22.62 -to- Emerald Dreamway/0 49.42,62.50 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Emerald Dreamway to Duskwood
		"Emerald Dreamway/0 40.02,70.02 -to- Duskwood/0 46.59,37.06 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to Duskwood} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Duskwood to the Emerald Dreamway
		"Duskwood/0 46.57,35.64 -to- Emerald Dreamway/0 38.85,65.99 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Emerald Dreamway to Moonglade
		"Emerald Dreamway/0 25.71,80.55 -to- Moonglade/0 67.59,60.19 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to Moonglade} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Moonglade to the Emerald Dreamway
		"Moonglade/0 68.14,60.28 -to- Emerald Dreamway/0 26.31,77.76 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",
	
	-- Portal from Emerald Dreamway to Feralas
		"Emerald Dreamway/0 22.73,38.50 -to- Feralas/0 51.20,11.03 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to Feralas} {cond:PlayerCompletedQuest(40645)}",
	
	-- Portal from Feralas to the Emerald Dreamway
		"Feralas/0 51.34,10.59 -to- Emerald Dreamway/0 27.64,40.69 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Emerald Dreamway to Grizzly Hills
		"Emerald Dreamway/0 31.60,25.91 -to- Grizzly Hills/0 50.43,29.75 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to Grizzly Hills} {cond:PlayerCompletedQuest(40645)}",

	-- Portal from Grizzly Hills to the Emerald Dreamway
		"Grizzly Hills/0 50.32,29.18 -to- Emerald Dreamway/0 32.40,29.53 {mode:PORTAL}"..
			"{title:Walk into the Swirling Portal to the Emerald Dreamway} {cond:PlayerCompletedQuest(40645)}",



    -----------------
    ---  Suramar  ---
    -----------------
		-- Shal'Aran Cave Entrance
			"Suramar/0 34.93,47.82 -x- Suramar/0 36.19,47.09 <region:suramar_shalaran>"..
				"{template:cave}",

		-- Portal from Shal'Aran to Felsoul Hold
			"Suramar/0 36.10,45.75 <region:suramar_shalaran> -to- Suramar/23 52.35,36.75 {mode:PORTAL}"..
				"{title:Click the Portal to Felsoul Hold\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(41575)} {cost:13}",

		-- Portal from Felsoul Hold to Shal'Aran
			"Suramar/23 53.60,36.80 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(41575)} {cost:13}",

		-- Portal from Shal'Aran to Falanaar
			"Suramar/0 35.89,45.56 <region:suramar_shalaran> -to- Suramar/32 41.38,15.05 {mode:PORTAL}"..
				"{title:Click the Portal to Falanaar\ninside the Shal'Aran Cave} {cond:PlayerCompletedQuest(42230)} {cost:30}",

		-- Portal from Falanaar to Shal'Aran
			"Suramar/32 40.91,13.70 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(42230)} {cost:30}",

		-- Portal from Shal'Aran to Moon Guard Stronghold
			"Suramar/0 36.01,45.25 <region:suramar_shalaran> -to- Suramar/0 30.79,10.87 {mode:PORTAL}"..
				"{title:Click the Portal to Moon Guard Stronghold\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(43808)}",

		-- Portal from Moon Guard Stronghold to Shal'Aran
			"Suramar/0 30.83,11.02 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(43808)}",

		-- Portal from Shal'Aran to Lunastre Estate
			"Suramar/0 36.17,45.02 <region:suramar_shalaran> -to- Suramar/0 43.61,79.10 {mode:PORTAL}"..
				"{title:Click the Portal to Lunastre Estate\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(43811)}",

		-- Portal from Lunastre Estate to Shal'Aran
			"Suramar/0 43.68,79.25 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(43811)}",

		-- Portal from Shal'Aran to Ruins of Elune'eth
			"Suramar/0 36.34,44.91 <region:suramar_shalaran> -to- Suramar/0 36.31,46.89 <region:suramar_eluneeth> {mode:PORTAL}"..
				"{title:Click the Portal to Ruins of Elune'eth\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(40956)} {cost:2}",

		-- Portal from Ruins of Elune'eth to Shal'Aran
			"Suramar/0 36.10,47.23 <region:suramar_eluneeth> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(40956)} {cost:2}",

		-- Ruins of Elune'eth Road Connection #1
			"Suramar/0 37.35,46.38 -x- Suramar/0 38.19,47.63 <region:suramar_eluneeth> {title:Follow the road}",

		-- Ruins of Elune'eth Road Connection #2
			"Suramar/0 35.86,44.39 -x- Suramar/0 36.51,45.27 <region:suramar_eluneeth> {title:Follow the road}",

		-- Ruins of Elune'eth Road Connection #3
			"Suramar/0 37.04,45.27 <region:suramar_eluneeth> -x- Suramar/0 37.69,45.22 {template:atob}"..
			"{title_atob:Follow the path up} {title_btoa:Follow the path down}",	
		
		-- Portal from Shal'Aran to Sanctum of Order
			"Suramar/0 36.70,44.64 <region:suramar_shalaran> -to- Suramar/0 43.40,60.72 <region:suramar_sanctum_of_order> {mode:PORTAL}"..
				"{title:Click the Portal to Sanctum of Order\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(43813)}",

		-- Portal from Sanctum of Order to Shal'Aran
			"Suramar/0 43.41,60.56 <region:suramar_sanctum_of_order> -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran\nDownstairs in the Sanctum of Order}"..
				"{cond:PlayerCompletedQuest(43813)}",

		-- Portal from Shal'Aran to Tel'anor
			"Suramar/0 36.92,44.66 <region:suramar_shalaran> -to- Suramar/0 42.17,35.38 {mode:PORTAL}"..
				"{title:Click the Portal to Tel'anor\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(43809)}",

		-- Portal from Tel'anor to Shal'Aran
			"Suramar/0 42.03,35.24 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(43809)}",

		-- Portal from Shal'Aran to Twilight Vineyards
			"Suramar/0 36.95,45.00 <region:suramar_shalaran> -to- Suramar/0 64.09,60.80 {mode:PORTAL}"..
				"{title:Click the Portal to Twilight Vineyards\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(44084)}",

		-- Portal from Twilight Vineyards to Shal'Aran
			"Suramar/0 64.00,60.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran} {cond:PlayerCompletedQuest(44084)}",

		-- Portal from Shal'Aran to The Waning Crescent
			"Suramar/0 36.48,44.75 <region:suramar_shalaran> -to- Suramar/0 47.45,81.97 {mode:PORTAL}"..
				"{title:Click the Portal to The Waning Crescent\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)}",

		-- Portal from The Waning Crescent to Shal'Aran
			"Suramar/0 47.73,81.38 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran}"..
				"{cond:PlayerCompletedQuest(42487) and not PlayerCompletedQuest(38649)}",

		-- Portal from Shal'Aran to Evermoon Terrace
			"Suramar/0 36.49,44.75 <region:suramar_shalaran> -to- Suramar/0 52.04,78.87 {mode:PORTAL}"..
				"{title:Click the Portal to Evermoon Terrace\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(42889)}",

		-- Portal from Evermoon Terrace to Shal'Aran
			"Suramar/0 51.98,78.75 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran\nat the Top of the Tower}"..
				"{cond:PlayerCompletedQuest(42889)}",	
		
		-- Portal from Shal'Aran to Astravar Harbor
			"Suramar/0 36.77,45.04 <region:suramar_shalaran> -to- Suramar/0 54.41,69.53 {mode:PORTAL}"..
				"{title:Click the Portal to Astravar Harbor\ninside the Shal'Aran Cave}"..
				"{cond:PlayerCompletedQuest(45317)}",	
		
		-- Portal from Evermoon Terrace to Shal'Aran
			"Suramar/0 54.48,69.43 -to- Suramar/0 36.40,45.09 <region:suramar_shalaran> {mode:PORTAL}"..
				"{title:Click the Portal to Shal'Aran\nupstairs inside the building}"..
				"{cond:PlayerCompletedQuest(45317)}",

		-- Sanctum of Order (region) to Sactum Depths (region)
			"Suramar/0 42.06,60.85 <region:suramar_sanctum_depths> -x- Suramar/0 42.72,61.13 <region:suramar_sanctum_of_order> {title:Follow the path}",



    -------------------
    ---  Stormheim  ---
    -------------------
		-- NEUTRAL
		-- Portal from Stormheim to Helheim
			"Stormheim/0 73.70,39.29 -to- Helheim/0 66.25,47.63 {fac:A} {mode:PORTAL}"..
				"{title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- Portal from Helheim to Stormheim
			"Helheim/0 66.83,48.14 -to- Stormheim/0 73.54,39.51 {fac:A} {mode:PORTAL}"..
				"{title:Enter the Swirling Portal} {cond:PlayerCompletedQuest(39855)}",

		-- ALLIANCE
		-- Vethir Flight to Top of Galebroken Path
			"Stormheim/0 37.48,64.23 -to- Stormheim/0 44.83,77.39 {fac:A} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Thorim's Peak Outside the Thorignir Refuge
			"Stormheim/0 37.48,64.23 -to- Stormheim/0 42.79,82.67 {fac:A} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Top of Thorim's Peak
			"Stormheim/0 37.48,64.23 -to- Stormheim/0 41.30,80.10 {fac:A} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- HORDE
		-- Vethir Flight to Top of Galebroken Path
			"Stormheim/0 44.66,59.51 -to- Stormheim/0 44.83,77.39 {fac:H} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of the Galebroken Path.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Thorim's Peak Outside the Thorignir Refuge
			"Stormheim/0 44.66,59.51 -to- Stormheim/0 42.79,82.67 {fac:H} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to Thorim's Peak outside the Thorignir Refuge.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",

		-- Vethir Flight to Top of Thorim's Peak
			"Stormheim/0 44.66,59.51 -to- Stormheim/0 41.30,80.10 {fac:H} {mode:PORTAL}"..
				"{title:Talk to Vethir and tell him\n\"Take me to the top of Thorim's Peak.\"}"..
				"{cond:PlayerCompletedQuest(38624)}",


		
    -------------------------		
    ---  DALARAN (WOTLK)  ---
    -------------------------
		"Dalaran 55.4,25.4 -to- Orgrimmar/2 <region:cleftofshadow> 48.3,64.5 {fac:H} {mode:PORTAL}",
		"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
		"Dalaran 58.1,25.8 -to- Wintergrasp 50.0,16.7 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
		"Dalaran 56.0,46.8 -x- Crystalsong Forest 15.8,42.5 {mode:PORTAL}",

		"Dalaran 25.5,51.4 -to- Tanaris/17 54.6,28.3 <title:Caverns of Time> @cot_from_dala {mode:PORTAL} {cond:LibRover.cfg.use_cot or (ZGV and ZGV:GetReputation('Keepers of Time').standing>=5)}",
		--"Dalaran/1 25.9,44.2 -x- Dalaran/1 22.3,39.7 {fac:A} {mode:PORTAL}", --portal to upper level in Dalaran. The Purple Parlor
		"Dalaran 40.1,62.8 -to- @sw_tp_dst {fac:A} {mode:PORTAL}", --COORDS BAD

		--"Dalaran/1 25.9,44.2 -x- Dalaran/1 22.3,39.7 {fac:A} {mode:PORTAL}", --portal to upper level in Dalaran. The Purple Parlor
	-- DALARAN - ENDS		

	
	-- STORMWIND CITY - STARTS
		"Stormwind City/0 80.26,34.85 -to- Dalaran L/10 60.92,44.72 {fac:A} {mode:PORTAL} {title:Click the Portal to Dalaran\ninside Stormwind Keep} {cond:ZGV.IsLegionOn()}",
	-- STORMWIND CITY - ENDS
	
	-- WHISPERS OF A FRIGHTENED WORLD SCENARIO TO DALARAN/BACK
		"Hall of Communion/1 49.78,8.80 -to- Dalaran L/10 39.65,50.54 {mode:PORTAL} {title:Click the Teleportation Pad}",
		"Sholazar Basin/0 88.43,53.00 -to- Hall of Communion/1 43.69,82.00 {mode:PORTAL} {title:Click the Power Conduit}",
	
	
	

	-- DRAENOR
		"Stormshield/0 36.4,41.1 -to- Tanaan Jungle/0 57.5,60.3 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38445)}",
		"Tanaan Jungle/0 57.4,60.5 -to- Stormshield/0 31.7,52.5 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(38445)}",
		
		"Tanaan Jungle/0 61.0,47.3 -to- Warspear/0 44.4,35.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(37935)}",
		"Warspear/0 53.2,43.9 -to- Tanaan Jungle/0 60.9,47.3 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(37935)}",
		
		
		"Warspear/0 60.7,51.6 -to- Orgrimmar/2 48.3,64.5 <region:cleftofshadow> {fac:H} {mode:PORTAL}",
		"Warspear/0 50.0,24.4 -to- Thunder Bluff/0 22.2,16.9 {fac:H} {mode:PORTAL}",
		"Warspear/0 63.2,24.1 -to- Undercity/0 84.6,16.3 {fac:H} {mode:PORTAL}",

		"Stormshield/0 60.8,37.8 -to- @sw_tp_dst {fac:A} {mode:PORTAL}",
		"Stormshield/0 51.5,50.8 -to- Ironforge/0 25.5,8.4 {fac:A} {mode:PORTAL}",

		--"Stormwind City 75.2,18.8 -to- Shadowmoon Valley D 27.0,8.0 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(34575)}",
		--"Orgrimmar 51.1,36.8 -to- Frostfire Ridge 40.6,67.2 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}",

		"Talador 80.6,26.1 -x-  Talador 83.6,31.0 {mode:PORTAL} {title:Use Khadgar's portal} {cond:UnitLevel('player')>=98}", -- legendary ring questline portal

		"Tanaan Jungle/0 57.7,58.7 <title:Gnomish Flying Machine> <noskip:1> -to- Tanaan Jungle/0 55.5,27.3 {fac:A} {mode:_} {cond:PlayerCompletedQuest(38603)} {title:Take the Gnomish Flying Machine\nto Throne of Kil'Jaeden} {cost:30}",
		"Tanaan Jungle/0 60.0,47.4 <title:B-2 Personnel Relocator> <noskip:1> -to- Tanaan Jungle/0 55.6,27.2 {fac:H} {mode:_} {cond:PlayerCompletedQuest(38599)} {title:Take the B-2 Personnel Relocator\nto Throne of Kil'Jaeden} {cost:23}",

	-- PANDARIA
		"Stormwind City 68.8,17.1 -x- The Jade Forest 46.23,85.17 <title:Paw'don Village> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(29548)}",
		"Eastern Kingdoms/0 41.47,70.19 <title:Skyfire Airship> -to- The Jade Forest 46.23,85.17   {fac:A} {mode:PORTAL}	{cond:UnitLevel('player')>=85 and not PlayerCompletedQuest(29548)}", -- airship for the initial quest
		"Eastern Kingdoms/0 41.47,70.19 <title:The Skyfire Airship> <override_text:You must be at least 85 to enter Pandaria.> <override_icon:error> -to- The Jade Forest 46.23,85.17   {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<85} {cost:999}", -- airship for the initial quest
		"Orgrimmar 68.7,40.7 -x-  The Jade Forest 28.5,14.0  <title:Honeydew Village> {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(31769)}",
		"Durotar 66,1 <title:Hellscream's Fist Airship> -to- The Jade Forest 28.5,14.0   {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85 and not PlayerCompletedQuest(31769)}", -- airship		for the initial quest
		"Durotar 66,1 <title:Hellscream's Fist Airship> <override_text:You must be at least 85 to enter Pandaria.> <override_icon:error> -to- The Jade Forest 28.5,14.0   {fac:H} {mode:PORTAL}		{cond:UnitLevel('player')<85} {cost:999}", -- airship for the initial quest

		"Vale of Eternal Blossoms/4 61.6,39.6 -to- Dalaran 55.86,46.81 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 68.5,52.8 -to- Shattrath City 54.97,40.23 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 70.8,30.6 -to- The Exodar 47.62,59.82 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 77.2,43.5 -to- Darnassus 43.47,78.67 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 74.0,40.8 -to- Ironforge 25.51,08.43 {fac:A} {mode:PORTAL}",
		"Vale of Eternal Blossoms/4 71.6,35.8 -to- @sw_tp_dst {fac:A} {mode:PORTAL}",

		"Shrine of Two Moons/2 73.5,42.8 -to- Orgrimmar/2 48.3,64.5 <region:cleftofshadow> {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 75.6,52.6 -to- Silvermoon City 58.3,19.2 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 73.5,36.5 -to- Thunder Bluff 22.2,16.9 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 74.0,48.1 -to- Undercity 84.6,16.3 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 63.5,57.3 -to- Shattrath City 53.0,49.2 {fac:H} {mode:PORTAL}",
		"Shrine of Two Moons/2 61.5,36.5 -to- Dalaran 55.86,46.81 {fac:H} {mode:PORTAL}",

		"Townlong Steppes 49.7,68.7 -x- Isle of Thunder/0 35.3,90.6 <title:Portal to Shado-Pan Garrison> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32681) and not PlayerCompletedQuest(32644)} {template:portal}",
		--{{"Townlong Steppes 49.7,68.7",faction="A",type="portal"},{"Isle of Thunder/0 64.7,73.5",faction="A",type="portal",actiontitle=function(self,fromnode,tonode) if tonode==self.border then return "Click Portal to Shado-Pan Garrison" end end,cond=function() PlayerCompletedQuest(32644) end}},
		"Townlong Steppes 49.7,68.7 -x- Isle of Thunder/0 64.7,73.5 <title:Portal to Shado-Pan Garrison> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32644)} {template:portal}",
		"Isle of Thunder/0 34.84,89.48 -to- Isle of Thunder/0 31.7,83.6 {fac:A} {mode:PORTAL} {cond:not PlayerCompletedQuest(32644)} {template:portal}",
		"Isle of Thunder/0 31.7,83.6 -to- Isle of Thunder/0 34.8,89.5 {fac:A} {mode:PORTAL} {cond:not PlayerCompletedQuest(32644) and (ZGV:GetThunderStage()==1 or ZGV:GetThunderStage()==6)} {template:portal}",
		"Isle of Thunder/0 52.02,45.04 -x- Isle of Thunder/0 62.86,32.36 {mode:PORTAL}",

		"Townlong Steppes 50.66,73.41 <title:Shado-Pan Garrison> -x- Isle of Thunder/0 28.4,53.0 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32680) and not PlayerCompletedQuest(32212)} {template:portal}",
		"Townlong Steppes 50.66,73.41 <title:Shado-Pan Garrison> -x- Isle of Thunder/0 33.2,32.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32212)} {template:portal}",

		"Isle of Thunder/0 28.6,52.8 -to- Isle of Thunder/0 33.1,52.8 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(32212)} {template:portal}",
		"Isle of Thunder/0 28.5,51.7 -to- Isle of Thunder/0 33.1,52.8 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(32212)} {template:portal}",
		"Isle of Thunder/0 33.1,52.8 -to- Isle of Thunder/0 28.5,51.5 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(32212) and (ZGV:GetThunderStage()==1 or ZGV:GetThunderStage()==6)} {template:portal}",

		--There are portals here... No idea when/how they appear...
		-- They're purchased from Proveditor Grantley ##2345 at Krasarang Wilds /0 89.52,33.47 using 5 Domination Point Commission ##91877 each.
		-- They can lead to SW, the Skyfire airship, or to Shrine of Seven Stars.
		--"Krasarang Wilds 89.0,33.9 -to- Stormwind City 74.2,92.2 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32109)}",
		--"Krasarang Wilds 89.2,33.9 -x- Krasarang Wilds 18.1,79.6 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(32109)}", --To the ship

		--"Krasarang Wilds 9.9,54.9 -to- Durotar 45.6,13.2 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32108)}", --To orgrim
		--"Krasarang Wilds 10.2,54.8 -x- Krasarang Wilds 76.1,34.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32108)}",
		--"Krasarang Wilds 76.2,34.0 -x- Krasarang Wilds/3 37.4,46.4 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(32108)}",

		"Townlong Steppes, 29.0,22.1 <title:Portal to Shado-Pan Garrison> -x- Townlong Steppes, 48.5,69.9 {mode:PORTAL} {cond:PlayerCompletedQuest(31110)}",
		"Dread Wastes 75.09,21.25 -x- Vale of Eternal Blossoms 14.21,76.79 <region:topofthewallVEB> {mode:PORTAL} {template:pandarope}", -- (click the Climbing Rope to either climb up or jump down the cliff)
		"Krasarang Wilds 48.6,27.1 -x- Valley of the Four Winds 51.2,77.5 {mode:PORTAL} {template:pandarope}", -- (click the Climbing Rope to either climb up or jump down the cliff). Might need quest

	-- ORGRIMMAR PORTALS:
		"Orgrimmar/1 49.2,36.5 -to- Kelp'thar Forest 44,28 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) and not PlayerCompletedQuest(25222)}",
		"Orgrimmar/1 49.2,36.5 -to- Shimmering Expanse 49.5,40.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(26784)}",
		"Orgrimmar/1 49.2,36.5 -to- Abyssal Depths 51.4,61.0 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or UnitLevel('player')>=80}",
		"Orgrimmar/1 48.9,38.5 -to- Uldum 54.9,34.3 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or UnitLevel('player')>=83}",
		"Orgrimmar/1 50.8,36.4 -to- Deepholm 50.6,52.9 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",
		"Orgrimmar/1 50.8,36.4 -to- Deepholm 50.6,52.9 {fac:H} {mode:PORTAL} {cond:not PlayerCompletedQuest(27123) and UnitLevel('player')<82} {title:You can't get to Deepholm yet.\nPlease complete quests to unlock this portal.}",
		"Deepholm 50.9,53.1 -to- Orgrimmar/1 50.0,37.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",
		"Orgrimmar/1 51.1,38.3 -to- Mount Hyjal 63.5,23.4 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",
		"Mount Hyjal 63.5,24.4 -to- Orgrimmar/1 50.0,37.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",
		"Orgrimmar/1 47.4,39.3 -to- Tol Barad Peninsula 55.8,80.1 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
		"Tol Barad Peninsula 56.3,79.7 -to- Orgrimmar/1 47.6,39.1 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
		"Orgrimmar/1 50.2,39.4 -x- Twilight Highlands 73.57,53.53 <subtype:cityportal> {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) or UnitLevel('player')>=84}",
		"Orgrimmar/1 70.6,30.9 -x- Brawl'gar Arena/1 55.8,17.0 {fac:H} {mode:PORTAL} {template:pinkportal}",


	-- STORMWIND PORTALS
		"Stormwind City/0 73.2,16.9 -to- Kelp'thar Forest 44,28 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",
		"Stormwind City/0 73.2,16.9 -to- Shimmering Expanse 47.2,57.5 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(14482)}",
		"Stormwind City/0 73.2,16.9 -to- Abyssal Depths 55.7,72.8 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) or UnitLevel('player')>=80}",
		"Stormwind City/0 75.3,20.5 -to- Uldum 54.9,34.3 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(28112) or UnitLevel('player')>=82}",
		"Stormwind City/0 73.2,19.6 -to- Deepholm 48.7,53.6 @deepholm_tp_dst {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",
		"Deepholm 48.5,53.8 -to- Stormwind City/0 74.5,18.3 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123) or UnitLevel('player')>=82}",
		"Stormwind City/0 76.2,18.7 -x- Mount Hyjal 62.6,23.1 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316) or UnitLevel('player')>=80}",
		"Stormwind City/0 73.2,18.4 -to- Tol Barad Peninsula 73.7,60.9 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=85}", 
		"Tol Barad Peninsula 75.2,58.9 -to- Stormwind City/0 73.4,18.3 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
		"Stormwind City/0 75.2,16.8 -x- Twilight Highlands 79.5,77.8 <subtype:cityportal> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537) or UnitLevel('player')>=84}",

	-- GARRISON PORTALS
		"Frostwall 75.1,48.7 -to- Warspear 44.4,35.5 {fac:H} {mode:PORTAL} {title:Click the portal to Ashran} {cond:C_Garrison.GetGarrisonInfo("..(LE_GARRISON_TYPE_6_0 or 2)..")==3}", -- Horde Garrison 3 to Ashran
		"Lunarfall 70.2,27.5 -to- Stormshield 31.7,52.5 {fac:A} {mode:PORTAL} {title:Click the portal to Ashran}  {cond:C_Garrison.GetGarrisonInfo("..(LE_GARRISON_TYPE_6_0 or 2)..")==3}", -- Ally Garrison 3 to Ashran

	-- Capital portals
		"The Exodar 47.6,62.2 -x- Darnassus 44.3,78.7 {fac:A} {mode:PORTAL}",
		"Darnassus 37.3,50.5 -x- Teldrassil 55.1,88.4 <port:Rut'theran Village> {mode:PORTAL} {template:pinkportal}",  -- Teldrassil 55.1,88.4  NO  Teldrassil 38.1,47.5
		"Silvermoon City 49.4,14.8 -x- Undercity  54.9,11.2 {fac:H} {mode:PORTAL}",

	-- portals -to- Blasted Lands
		"Hellfire Peninsula 89.2,49.6 @hfp_port_dst",
		"Hellfire Peninsula 89.2,49.6 @hfp_port_dst_h",
		"Hellfire Peninsula 89.2,50.9 @hfp_port_dst_a",

		"Orgrimmar/2 44.7,68.0 <region:cleftofshadow> -x- Blasted Lands  72.7,49.4 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}", -- it seems the portal was changed to only show for 90+ chars, not 58
		"Stormwind City 48.96,87.32 -to- Blasted Lands 53.9,46.1 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=90}"..
			"{title:Click the Portal to Blasted Lands\ninside the Mage Tower}",

	-- 6.0.2 portals to and from Outland
		-- "Blasted Lands 55.0,54.2 -x- Hellfire Peninsula 89.4,50.2 {mode:PORTAL} {cond:UnitLevel('player')>=58} {template:darkportal}", -- Dark Portal to Outlands removed in 6.0.2
		-- Horde
		"Orgrimmar/2 30.49,58.18 <region:cleftofshadow> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Orgrimmar/2 30.49,58.18 <region:cleftofshadow> <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Silvermoon City 58.4,20.9 -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Silvermoon City 58.4,20.9 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		-- "Undercity 85.2,17.1 -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}", -- Portal removed in WoD
		"Thunder Bluff 23.2,13.5 -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Thunder Bluff 23.2,13.5 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_h {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Hellfire Peninsula 89.2,49.5 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Hellfire Peninsula 89.2,49.5 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Blasted Lands 55.0,54.2 -to- Warspear 44,35 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90} {template:darkportal}", -- Dark Portal now leads to Ashran
		"Blasted Lands 55.0,54.2 <override_text:You must be at least 90 to enter Draenor.> <override_icon:error> -to- Warspear 44,35 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')<90} {template:darkportal} {cost:999}", -- Dark Portal now leads to Ashran

		-- Ally
		-- "Stormwind City 49.94,87.03 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58} {template:atob}"..
		--	"{title_atob:Click the Portal to Hellfire Peninsula\nupstairs inside the Mage Tower}", -- This doesn't exist.

		"Stormwind City 49.94,87.03 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Ironforge 27.2,7.0 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Ironforge 27.2,7.0 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"The Exodar 48.2,63.0 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"The Exodar 48.2,63.0 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Darnassus 44.1,78.2 -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Darnassus 44.1,78.2 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- @hfp_port_dst_a {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Hellfire Peninsula 89.2,51.0 -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=58}",
		"Hellfire Peninsula 89.2,51.0 <override_text:You must be at least 58 to enter Outland.> <override_icon:error> -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<58} {cost:999}",
		"Blasted Lands 55.0,54.2 -to- Stormshield 31,52 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=90} {template:darkportal}", -- Dark Portal now leads to Ashran
		"Blasted Lands 55.0,54.2 <override_text:You must be at least 90 to enter Draenor.> <override_icon:error> -to- Stormshield 31,52 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')<90} {template:darkportal} {cost:999}", -- Dark Portal now leads to Ashran




	-- DARKMOON ISLAND
		--Interesting tidbit. Alliance can enter the horde portal and horde the alliance, but when you portal back, it will spit you
		--back out at your faction portal. aka
		-- Gnome -> Mulgore portal -> Darkmoon portal -> Elwynn
		-- Orc -> Mulgore portal -> Darkmoon portal -> Mulgore

		--You can enter anywhere, but only exit at one place
		"Elwynn Forest 41.8,69.5 -to- Darkmoon Island/0 51.2,23.1 <title:Darkmoon Faire> {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')}",
		"Mulgore 36.9,35.9 -to- Darkmoon Island/0 51.2,23.2 <title:Darkmoon Faire> {mode:PORTAL} {cond:ZGV:FindEvent('DARKMOON FAIRE')}",

		"Darkmoon Island/0 51.2,23.1 -to- Elwynn Forest 41.8,69.5 {fac:A} {mode:PORTAL}",
		"Darkmoon Island/0 50.6,90.6 -to- Elwynn Forest 41.8,69.5 {fac:A} {mode:PORTAL}",

		"Darkmoon Island/0 51.2,23.1 -to- Mulgore 36.9,35.9 {fac:H} {mode:PORTAL}",
		"Darkmoon Island/0 50.6,90.6 -to- Mulgore 36.9,35.9 {fac:H} {mode:PORTAL}",

	-- Iron Horde event portals
		"Blasted Lands 72.7,49.5 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=90}",
		"Blasted Lands 66.4,28.0 -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=90}",





	-- SHATTRATH PORTALS:
		"Shattrath City 57.2,48.3 -to- @sw_tp_dst {fac:A} {mode:PORTAL} {cost:15}", -- stormwind mage tower sucks
		"Shattrath City 56.8,48.9 -to- @org_tp_dst {fac:H} {mode:PORTAL}",
		"Shattrath City 48.6,42.0 -to- Isle of Quel'Danas 48.3,34.5 {mode:PORTAL}",

	-- Firelands portal
		"Mount Hyjal 27.5,56.3 -x- Molten Front 52.9,83.9 {mode:PORTAL}",


	-- ITEM TELEPORTS (disabled)

		--[[ Random Locations from Inscription scrolls when using a low level one.
			Undercity 69.1,11.3
			Swamp of Sorrows 85.9,52.7
		]]
		--"RANDOM				<item:64457> <cooldown:43200>", -- The Last Relic of Argus
			--[[ I have used this item 186 times with these results.
				"Silithus 28.7, 57.6 <item:46874>",
				"Duskwood 18.7, 24.8 <item:46874>",
				"Wetlands 69.6, 87.8 <item:46874>",
				"Desolace 32.3, 22.7 <item:46874>",
				"Ungoro 33.2, 56.2 <item:46874>",
				"Badlands 51.9, 34.2 <item:46874>",
				"Western Plaguelands 42.3, 15.0 <item:46874>",
				"Tanaris 64.5, 20.0 <item:46874>",
				"Badlands 89.9, 36.3 <item:46874>",
				"Hellfire Peninsula 97.5, 47.1 <item:46874>",
				"Northern Barrens 78.0, 91.6 <item:46874>",
				"Tanaris 69.7, 47.9 <item:46874>",
				"Felwod 53.4, 31.2 <item:46874>",
				"Moonglade 45.7, 47.0 <item:46874>",
				"Western Plaguelands 50.9, 36.4 <item:46874>",
				"Northern Stranglethorn 45.1, 68.4 <item:46874>",
				"Badlands 23.9, 56.4 <item:46874>",
				"Arathi Highlands 48.9, 43.8 <item:46874>",
				"Blasted Lands 33.6, 51.3 <item:46874>",
				"The Cape of Stranglethorn 35.4, 63.7 <item:46874>",
				"The Northern Barrens 52.3, 54.9 <item:46874>",
				"Searing Gorge 39.4, 67.0 <item:46874>",
				"Wetlands 23.0, 65.8 <item:46874>",
				"Blasted Lands 64.7, 55.1 <item:46874>",
				"Diremaul 62.5, 28.0 <item:46874>",
			--]]

		--"Northrend				<item:48933> <cooldown:14400>", -- Wormhole Generator:Northrend Engineering >=415
			--Borean Tundra 51.8,45.0--51.8.. High above water.. Really high -- 20.5,62.8
			--Howling Fjord 58.5,48.6 -- Tested, The coords available were wrong... ->79.7,79.8
			--Sholazar Basin 49.2,39.6--25.0,37.7
			--Icecrown 62.9,26.9 --43.5,19.4
			--Storm Peaks 43.9,25.8-- 59.1, 13.7
			--Dalaran xx,yy --UNDERGROUND. Need another port to get out.


		--"Pandaria				<item:87215> <cooldown:900>", -- Wormhole Generator:Pandaria  Engineering >=500
			--[[
			Dread Wastes (Coords 29, 81)
			Dread Wastes (Coords 37, 21)
			Jade Forest (Coords 50, 27)
			Krasarang Wilds (Coords 71, 44)
			Kun-lai Summit (Coords 42, 84)
			Kun-lai Summit (Coords 73, 11)
			Townlong Steppes (Coords 16, 38)
			Vale of Eternal Blossoms (Coords 43, 43)
			Valley of the Four Winds (Coords 42, 37)
			--]]

	-- Experiments (disabled)

		-- Ironforge
			--[[
			 "Ironforge 53,82 @if01 <costmod:0.7>",
			 "Ironforge 60,70 @ifmw01 -x- Ironforge 50,58 @ifmw02",
			 "Ironforge 69,59 @iftt01 -x- Ironforge 71,39 @iftt02",
			 "Ironforge 61,27 @ifhe01 -x- Ironforge 56,34 @ifhe02",
			 "Ironforge 58,12 @iffc01 -x- Ironforge 39,11 @iffc02",
			 "Ironforge 33,23 @ifyw01 -x- Ironforge 38,38 @ifyw02",
			 "Ironforge 25,28 @if02 <costmod:0.7>",
			 "Ironforge 28,55 @ift11 -x- Ironforge 39,46 @ift12",
			 "Ironforge 38,72 @ift21 -x- Ironforge 44,58 @ift22",
			 "@ifmw02 -x- @iftt02",
			 "@iftt02 -x- @ifhe02",
			 "@ifhe02 -x- @iffc02",
			 "@iffc02 -x- @ifmw02",
			 "@ifyw02 -x- @ifyw02",
			 "@ifyw02 -x- @ifyw02",
			 "@ifyw02 -x- @ifmw02",
			--]]

		--"Ironforge 50,50 @honeypot <costmod:0.7>",

		--"Blackrock Spire 50,50 <costmod:0.7>",



	-- CLASS TELEPORTS:


		-- Okay, new rule, since these are becoming numerous. Alas, ONE SPELL PER NODE. New spell = new node.  ~sinus 2013-02-05
		-- Also, NO reusing @old @nodes here. We're defining NEW nodes, with spell and faction. Modifying of existing nodes isn't allowed here.  ~sinus 2014-12-17
		-- (Creating of new named nodes is discouraged too, to avoid confusion.)

		-- MAGES
		"Dalaran 55.86,46.81 <spell:53140>  <faction:B>",

		"Shattrath City 54.97,40.23				<spell:33690>  <faction:A>",
		"The Exodar 47.62,59.82					<spell:32271>  <faction:A>",
		"Dustwallow Marsh 66.00,49.00				<spell:49359>  <faction:A>",
		"Darnassus 43.47,78.67					<spell:3565>   <faction:A>",
		"Ironforge 25.51,08.43					<spell:3562>   <faction:A>",
		"Stormwind City 49.6,86.5				<spell:3561>   <faction:A>",
		"Tol Barad Peninsula 73.7,60.9				<spell:88342>  <faction:A>",
		"Vale of Eternal Blossoms/0 86.30,61.05			<spell:132621> <faction:A>",
		"Stormshield/0 58.8,51.4				<spell:176248>  <faction:A>",

		"Orgrimmar/2 48.3,64.7 <region:cleftofshadow>		<spell:3567>   <faction:H>",
		"Silvermoon City 58.3,19.2				<spell:32272>  <faction:H>",
		"Swamp of Sorrows 49.8,55.8				<spell:49358>  <faction:H>", --stonard
		"Thunder Bluff 22.2,16.9				<spell:3566>   <faction:H>",
		"Shattrath City 53.0,49.2				<spell:35715>  <faction:H>",
		"Undercity 84.6,16.3					<spell:3563>   <faction:H>",
		"Tol Barad Peninsula 55.8,80.1				<spell:88344>  <faction:H>",
		"Vale of Eternal Blossoms/0 62.21,21.54			<spell:132627> <faction:H>",
		"Warspear/0 58.8,51.4					<spell:176242>  <faction:H>",

		--[[ Note: node cond functions work only for teleport spells --]]
		-- DRUIDS
		"Moonglade  56.3,32.4					<spell:18960>",  --Teleport Moonglade
		-- DK (DEATHGATE)
		"Eastern Plaguelands 83.72,50.03			<spell:50977> <cond:not (PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))>", --Class based!
		-- MONKS (Zen Pilgrimage)
		"Kun-Lai Summit 48.64,42.94				<spell:126892> <region:peak_of_serenity> <cond:not PlayerCompletedQuest(40236)>", --Class based!

		
		
		-- LEGION:

		-- MAGE
			"Hall of the Guardian/1 57.63,86.14 <spell:193759>",

		-- DRUID
			"Emerald Dreamway/0 35.33,53.15 <spell:193753> <cond:ZGV.CurrentMapID~=1048>",

		-- DEATHKNIGHT
			"Broken Shore/2 27.43,30.43 <spell:50977> <cond:(PlayerCompletedQuest(38990) or PlayerCompletedQuest(40935) or PlayerCompletedQuest(40740))> <zone:1021>",

		-- MONK
			"The Wandering Isle L/0 51.45,48.65 <spell:126892> <cond:PlayerCompletedQuest(40236)> <zone:1044>",


}
