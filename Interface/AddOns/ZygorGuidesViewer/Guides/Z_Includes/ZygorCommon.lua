local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

------------------ 5.4 BETA

ZygorGuidesViewer:RegisterInclude("celestial_tournament",[[
		talk Master Li##73082
		accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
	step
		talk Master Li##73082 |goto Timeless Isle/0 34.7,59.6
		Tell him _I'd like to enter the Celestial Tournament._ |goto Celestial Tournament/0 34.0,55.2 < 20
		Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to.
		Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_. |confirm |next "chen"
		OR
		Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_. |confirm |next "shademaster"
//Scenario (option 1)
	step
	label "chen"
		talk Chen Stormstout##71927
		Tell him _Let's do this!_
		|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental.
		Defeat Chen Stormstout in a pet battle |goto Celestial Tournament/0 37.8,57.3 |q 33137 
		confirm
	step
		talk Wrathion##71924
		Tell him _Let's do this!_
		|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin.
		Defeat Wrathion in a pet battle |goto Celestial Tournament/0 40.3,56.5 |q 33137
		confirm
	step
		talk Taran Zhu##71931
		Tell him _Let's do this!_
		|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids.
		Defeat Taran Zhu in a pet battle |goto Celestial Tournament/0 40.1,52.6 |q 33137
		confirm |next "phasetwo"
//Scenario (option 2)
	step
	label "shademaster"
		talk Shademaster Kiryn##71930
		Tell her _Let's do this!_
		|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical.
		Defeat Shademaster Kiryn in a pet battle |goto Celestial Tournament/0 37.8,57.3 |q 33137
		confirm
	step
		talk Blingtron 4000##71933
		Tell him _Let's do this!_
		|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical.
		Defeat Blingtron 4000 in a pet battle |goto Celestial Tournament/0 40.4,56.5 |q 33137
		confirm
	step		
		talk Wise Mari##71932
		Tell him _Let's do this!_
		|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
		Defeat Wise Mari in a pet battle |goto Celestial Tournament/0 40.0,52.7 |q 33137
		confirm
//Second part
	step
	label "phasetwo"
		talk Yu'la, Broodling of Yu'lon##73507
		Tell him, "Let's do this!"
		|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him.
		Defeat Yu'la, Broodling of Yu'lon in a pet battle |goto Celestial Tournament/0 38.9,56.7 |q 33137
		confirm
	step
		talk Xu-Fu, Cub of Xuen##73505
		Tell him, "Let's do this!"
		|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Xu-Fu, Cub of Xuen in a pet battle |goto Celestial Tournament/0 40.0,55.2 |q 33137
		confirm
	step
		talk Zao, Calfling of Niuzao##73506
		Tell him, "Let's do this!"
		|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Zao, Calfling of Niuzao in a pet battle |goto Celestial Tournament/0 39.0,53.8 |q 33137
		confirm
	step
		talk Chi-Chi, Hatchling of Chi-Ji##73503
		Tell him, "Let's do this!"
		|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |goto Celestial Tournament/0 38.0,55.2 |q 33137
		confirm
	step
		Complete The Celestial Tournament |q 33137/1
]])


---------------------------------------------------
--------- Warlords of Draenor Reputations----------
---------------------------------------------------

ZygorGuidesViewer:RegisterInclude("Arakkoa_Outcasts",[[
	stickystart "info"
	step
	label "farm"
		Killing enemies and questing in Spires of Arak gives you Arakkoa Outcasts rep:
		Farm in Skettis |next "skettis" |confirm
		Farm in Lost Veil Anzu |next "veil" |confirm
	step
	label "skettis"
		kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
		Kill level 100 mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
		Click to return to the menu |next "farm" |confirm
	step
	label "veil"
		kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86155+, Highmaul Skullcrusher##89127+
		Kill level 100 mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
		Click to return to the menu |next "farm" |confirm
	step
	label "info"
		Your current reputation rank is:
		_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
		_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
		_Honored_ |only if rep('Arakkoa Outcasts')==Honored
		_Revered_ |only if rep('Arakkoa Outcasts')==Revered
		_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
]])

ZygorGuidesViewer:RegisterInclude("Steamwheedle_Preservation_Society",[[
	step
	label "menu"
		You Are _Neutral_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Neutral
		You Are _Friendly_ with Steamwheedle Preservation Society |only if rep('Steamwheedle Preservation Society')==Friendly
		You Are _Honored_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Honored
		You Are _Revered_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Revered
		You Are _Exalted_ with Steamwheedle Preservation Society  |only if rep('Steamwheedle Preservation Society')==Exalted
		_Click a line below to_:
		Farm Gorian Artifact Fragments |next "farm" |confirm
		_
		Chest runs for Artifact Fragments and Highmaul Relics |next "loot" |confirm
		_
		Kill level 100 Rares in Nagrand |next "rare" |confirm
	step
	label "farm"
		kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
		collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.0,34.1
		|tip Turn these in as stacks of 20 for Steamwheedle Preservation Society reputation.
		Click to turn in |confirm |next "rare_find"
	step
	label "loot"
		Follow the path, looking at these locations for Highmaul Reliquary chests
		map Nagrand D
		path follow loose; loop on; ants straight
		path	27.8,46.4	35.1,48.6	37.4,42.9
		path	49.1,37.6	52.7,33.6	55.2,34.2
		path	56.5,38.2	63.1,36.0	64.7,21.6
		path	59.0,20.0	57.8,18.6	51.8,26.1
		path	49.9,25.7	40.6,25.0	38.8,27.5
		click Highmaul Reliquary
		collect Gorian Artifact Fragment##118099 |n
		collect Highmaul Relic##118100 |n
		|tip You turn these in for Steamwheedle Preservation Society reputation.
		Click to turn in |confirm
	step
	label "rare_find"
		talk Sallee Silverclamp##87393
		|tip Turn in your Highmaul Relics and Gorian Artifact Fragments.
		accept A Rare Find##37125 |goto Nagrand D 50.4,41.3 |instant |repeatable |or |only if itemcount(118100) >= 1
		accept Fragments of the Past##35147 |goto Nagrand D 50.4,41.3 |instant |repeatable |or |only if itemcount(118099) >= 20
		_Click_ to return to the menu |confirm |next "menu"
	step
	label "rare"
		Follow the path:
		map Nagrand D
		path	30.0,44.8	34.1,51.6	41.7,45.0
		path	60.3,38.6	64.4,30.4	62.2,17.5
		path	51.2,16.5	48.1,22.0	37.5,38.5
		kill Thek'talon##86750,Mu'gra##87666, Xelganak##86835, Dekorhan##86743, Direhoof##86729, Bergruu##86732, Aogexon##86774, Gagrog the Brutal##86771, Vileclaw##88951 
		_Collect the items that each rare drops_ |only if itemcount(118660) ==0 or itemcount(118660) ==0 or itemcount(118659)==0 or itemcount(118661)==0 or itemcount(118656) ==0 or itemcount(118657)==0 or itemcount(118655)==0 or itemcount(118654)==0 or itemcount(118658)==0 or itemcount(120172)==0
		collect Thek'talon's Talon##118660 |n |only if itemcount(118660) >= 1
		collect Mu'gra's Head##118659 |n |only if itemcount(118659) >= 1
		collect Xelganak's Stinger##118661 |n |only if itemcount(118661) >= 1
		collect Dekorhan's Tusk##118656 |n |only if itemcount(118656) >= 1
		collect Direhoof's Hide##118657 |n |only if itemcount(118657) >= 1
		collect Bergruu's Horn##118655 |n |only if itemcount(118655) >= 1
		collect Aogexon's Fang##118654 |n |only if itemcount(118654) >= 1
		collect Gagrog's Skull##118658 |n |only if itemcount(118658) >= 1
		collect Vileclaw's Claw##120172 |n |only if itemcount(120172) >= 1
		|tip You don't have to collect them all.
		Click to turn in |confirm
	step
		talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.3,41.1
		|tip Turn in your quest items.
		accept Aogexon's Fang##37210 |only if itemcount(118654) >= 1 |instant |or
		accept Bergruu's Horn##37211 |or |only if itemcount(118655) >= 1 |instant |or
		accept Dekorhan's Tusk##37221 |or |only if itemcount(118656) >= 1 |instant |or
		accept Direhoof's Hide##37222 |or |only if itemcount(118657) >= 1 |instant |or
		accept Gagrog's Skull##37223 |or |only if itemcount(37223) >= 1 |instant |or
		accept Mu'gra's Head##37224 |or |only if itemcount(118659) >= 1 |instant |or
		accept Thek'talon's Talon##37225 |or |only if itemcount(118660) >= 1 |instant |or
		accept Xelganak's Stinger##37226 |or |only if itemcount(118661) >= 1 |instant |or
		accept Vileclaw's Claw##37520 |or |only if itemcount(120172) >= 1 |instant |or
		_Click_ to return to the menu |confirm always |next "menu" |only if default
]])

----------------------------------------------
--------- Warlords of Draenor Titles----------
----------------------------------------------
--- 2015-01-14 11:43:48

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("wod_dockmaster",[[
	step
		This title is gained by completeing the challenge mode Iron Docks with a realm-best time.
		achieve 9621
	step
		Congratulations, you now have the _Dockmaster_ title!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("wod_mine master",[[
	step
		This title is gained by completeing the challenge mode Bloodmaul Slag Mines with a realm-best time.
		achieve 9620
	step
		Congratulations, you now have the _Mine Master_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_artisan",[[
	step
		This title is gained by reaching skill level 700 in any profession
		achieve 9464
	step
		Congratulations, you now have the _Artisan_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_jenkins",[[
	stickystart "info"
	step
		_Note_ the following must be done while in _Heroic Mode_
		Fight through the dungeon and kill _Kyrak_
		Revive Leeroy Jenkins |goto Upper Blackrock Spire 2/2 38.8,39.0
		This will start a _15 minute_ timer, do not wait for the dialogue. Start clearing trash and _kill Commander Tharbek_
		Clear all of the trash to the _Son of the Beast_
		Kill the Son of the Beast 
		|tip Do not skin him before Leeroy has a chance to loot his shoulders or you will fail the achievement
		achieve 9058
	step "info"
		This title is gained by helping Leeroy Jenkins recover his Devout shoulders in Upper Blackrock Spire on Heroic difficulty
	step
		Congratulations, you now have the _Jenkins_ title and Leeroy Jenkins is now available as a Garrison Follower!
]])

ZygorGuidesViewer:RegisterInclude("wod_empirestwilight",[[
	step
		This title is gained by defeating Imperator Mar'gok on Mythic difficulty
		Enter the Highmaul raid on _Mythic_ difficulty
		kill Imperator Mar'gok##87818
		achieve 8965
	step
		Congratulations, you now have the _Empire's Twilight_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_ironbane",[[
	step
		This title is gained by defeating Warlord Blackhand on Mythic difficulty
		Enter the Blackrock Foundry raid on _Mythic_ difficulty
		kill Blackhand##87420
		achieve 8973
	step
		Congratulations, you now have the _Ironbane_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_talonkingqueen",[[
	stickystart "info"
	step
	label "menu"
		Completing quests in the Spires of Arak and Talador will give you rep with this faction
		Click here to kill level 100 mobs for reputation |confirm |next "farm"
		Reach Exalted reputation level |next "achieve" |condition rep('Arakkoa Outcasts')==Exalted
	step
	label "farm"
		Killing certain mobs Spires of Arak gives you Arakkoa Outcasts rep:
		Skettis |confirm |next "skettis"
		Lost Veil Anzu |confirm |next "veil"
	step
	label "skettis"
		kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
		Kill level 100 mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
		Return to the menu |confirm |next "menu"
	step
	label "veil"
		kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86205+, Highmaul Skullcrusher##89127+
		Kill level 100 mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
		Return to the menu |confirm |next "menu"
	step "info"
		This title is gained by completing the Terokk's Legacy storyline and earning Exalted status with the Arakkoa Outcasts
		Your current reputation rank is:
		_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
		_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
		_Honored_ |only if rep('Arakkoa Outcasts')==Honored
		_Revered_ |only if rep('Arakkoa Outcasts')==Revered
		_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
	step
	label "achieve"
		|achieve 9072
	step
		Congratulations, you now have the _Talon King_ or _Talon Queen_ title!
]])

---------------------------------------------------------------------------------------------------------
-- Profession Common Includes
---------------------------------------------------------------------------------------------------------
-- Quest Includes
ZygorGuidesViewer:RegisterInclude("go_farm",[[
		You have sufficient %skill% skill to gather these yourself. |only if skill("%skill%")>=%req%
		Click here if you want to go gathering. |confirm |next "%goto%"  |only if skill("%skill%")>=%req%
		You need %req% points in %skill% to gather these yourself. |only if skill("%skill%")>0 and skill("%skill%")<%req%
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("go_farm_level",[[
		You can gather these yourself. Click here if you want to go gathering. |confirm |next "%goto%" |only if level>=%level%
		You need to be level %level% to gather these yourself. |only if level<%level%
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("go_disenchant",[[
		You have sufficient %skill% skill to obtain these yourself by disenchanting items. |only if skill("%skill%")>=%req%
		Click here if you want to go farming. |confirm |next "%goto%"  |only if skill("%skill%")>=%req%
		You need %req% points in %skill% to gather these yourself. |only if skill("%skill%")>0 and skill("%skill%")<%req%
]])
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



-- Starting Includes
ZygorGuidesViewer:RegisterInclude ("profession_levelcheck",[[
		_Note:_ Your current level is _{intlevel}_. You MUST be at least level _5_ to learn a profession. |only if level<5
		Your current skill in %prof1% is \|cffbbff88{skill("%prof1%")}\|r. |only if level>=5 and skill("%prof1%")>0  // and 600>=skill("%prof1%")
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 75 until you're level _10_. |only if level>=5 and level<10
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 150 until you're level _20_. |only if level>=10 and level<20
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 225 until you're level _35_. |only if level>=20 and level<35
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 300 until you're level _50_. |only if level>=35 and level<50
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 375 until you're level _65_. |only if level>=50 and level<65
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 450 until you're level _75_. |only if level>=65 and level<75
		_Note:_ Your current level is _{intlevel}_. You won't be able to learn %prof1% past 525 until you're level _80_. |only if level>=75 and level<80
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude ("profession_single_start",[[
	step 
		|title + %prof1% 1-600
		This guide will instruct you on how to power level the _%prof1%_ profession in the fastest time.
		// level requirement/cap warning
		#include "profession_levelcheck",prof1="%prof1%"
		|confirm

	// make room for %prof1%
	step 
		|title Two profession limit
		|only if local p1,p2=_G.GetProfessions()  return p1 and p2 and skill("%prof1%")==0  // voodoo.
		You used to have two professions, but now you have a free profession slot. |only if not (_G.select(1,_G.GetProfessions()) and _G.select(2,_G.GetProfessions()))
		You already have two professions, _{_G.GetProfessionInfo(_G.select(1,_G.GetProfessions()) or 0) or "Unemployed"}_ and _{_G.GetProfessionInfo(_G.select(2,_G.GetProfessions()) or 0) or "Unemployed"}_. |only if default
		Abandon one of your professions now, to make space for _%prof1%_. |condition local p1,p2=_G.GetProfessions()  return (not p1 or not p2) or skill("%prof1%")>0
		|tip Press [K] to open your Professions window and click the red circle next to a profession to drop it. 
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude ("profession_secondary_start",[[
	step
		|title + %prof1% 1-525
		This guide will instruct you on how to power level the _%prof1%_ profession in the fastest time.
		// level requirement/cap warning
		#include "profession_levelcheck",prof1="%prof1%"
		|confirm
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("profession_dual_start",[[
	step 
		|title + %prof1% 1-525
		This guide will instruct you on how to power level the _%prof1%_ profession in the fastest time.
		// level requirement/cap warning
		#include "profession_levelcheck",prof1="%prof1%"

		You'll be given the choice to use your _%prof2%_ skill to gather necessary ingredients. |only if skill("%prof2%")>0
		You'll be given the choice to pick up _%prof2% as your second profession_ to gather necessary ingredients. |only if skill("%prof2%")==0
		|confirm 

	// make room for %prof1%
	step
		|title Two profession limit
		|only if local p1,p2=_G.GetProfessions()  return p1 and p2 and skill("%prof1%")==0  // voodoo.
		You used to have two professions, but now you have a free profession slot. |only if not (_G.select(1,_G.GetProfessions()) and _G.select(2,_G.GetProfessions()))
		You already have two professions, _{_G.GetProfessionInfo(_G.select(1,_G.GetProfessions()) or 0) or "Unemployed"}_ and _{_G.GetProfessionInfo(_G.select(2,_G.GetProfessions()) or 0) or "Unemployed"}_. |only if default
		Abandon one of your professions now, to make space for _%prof1%_. |condition local p1,p2=_G.GetProfessions()  return (not p1 or not p2) or skill("%prof1%")>0
		|tip Press [K] to open your Professions window and click the red circle next to a profession to drop it. 
		|tip Don't drop %prof2%, though. |only if skill("%prof2%")>0

	// make room for %prof2%
	step
		|only if skill("%prof2%")==0
		|title Second profession: %prof2%
		It can be expensive to level %prof1% by buying all the materials off of the Auction House.
		_%prof2%_ is strongly suggested as your second profession, to let you reduce costs by gathering ingredients yourself. |only if skill("%prof2%")==0
		Click this button if you wish to pick up %prof2%. |only if skill("%prof2%")==0 |confirm |next "+1"
		Click here to proceed without %prof2%. |confirm
		|next "route"  // leave the header

	// optional: picking up %prof2%
	step
		|only if local p1,p2=_G.GetProfessions()  return p1 and p2 and skill("%prof2%")==0
		|title Two profession limit, again
		You already have two professions, _{_G.GetProfessionInfo(_G.select(1,_G.GetProfessions()) or 0 ) or "Unemployed"}_ and _{_G.GetProfessionInfo(_G.select(2,_G.GetProfessions()) or 0 ) or "Unemployed"}_.
		You'll need to abandon one of them, in order to learn _%prof2%_. |condition local p1,p2=_G.GetProfessions() return not p1 or not p2 // pass if player has a free profession slot.
		|tip Press [K] to open your Professions window and click the red circle next to a profession to drop it. 
		|tip Careful, don't drop %prof1% by accident. |only if skill("%prof1%")>0

	step
		#include "trainer_%prof2%"  // go to proper trainer
		skillmax %prof2%,75

	// fall out of the header now.
	// do a "route" step next.
]])

-- Farming
ZygorGuidesViewer:RegisterInclude("follow_path_herbs",[[
		--Zoom your minimap all the way out, track herbs, and follow the path while gathering herbs from yellow spots on your minimap
		Zoom your minimap all the way out and track herbs
		Follow the path and gather from yellow nodes on your minimap
]])

ZygorGuidesViewer:RegisterInclude("follow_path_mine",[[
		Zoom your minimap all the way out, track ore, and follow the path while mining yellow spots on your minimap.
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("follow_path_both",[[
		Zoom your minimap all the way out, track ore and herbs, and follow the path while mining and gathering at yellow spots on your minimap.
]])

ZygorGuidesViewer:RegisterInclude("max_skill_warning",[[
		Warning! You have maxed your current _%skill%_ rank. Click here to go and learn the next rank. |confirm |next "%goto%" |only if skill("%skill%")==skillmax("%skill%") and skill("%skill%")<525
]])

ZygorGuidesViewer:RegisterInclude("cooking_fire",[[
		Stand next to a fire, or create one yourself |cast Cooking fire##818
]])

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_125",[[
	step end_of_prof_trial
		This Trial guides only goes up to 125.
		To continue further, please purchase the full Zygor Profession Guides!
]])

ZygorGuidesViewer:RegisterInclude("end_of_prof_trial_150",[[
	step end_of_prof_trial
		This Trial guides only goes up to 150.
		To continue further, please purchase the full Zygor Profession Guides!
]])

ZygorGuidesViewer:RegisterInclude("Shatt_Mine_Scryer",[[
		click Mining##33617 |goto Shattrath City/0 43.7,90.9 |tip It's a bookshelf.
]])

ZygorGuidesViewer:RegisterInclude("Shatt_Mine_Aldor",[[
		talk Fono##33682 |goto Shattrath City 36.0,48.6
]])


---------------------------------
--VANILLA ORE
---------------------------------
	--Iron Ore Path
	ZygorGuidesViewer:RegisterInclude("Iron_Ore",[[
		map Feralas
		path	74.9,48.6	84.0,45.6	84.9,39.9
		path	71.5,34.7	54.3,50.1	48.6,44.0
		path	49.7,34.9	51.6,33.8	50.9,26.2
		path	51.3,19.0	54.9,8.1	49.4,4.0
		path	40.0,7.7	37.1,12.1	38.1,17.6
		path	37.0,25.6	45.1,26.2	46.3,38.6
		path	50.3,52.7	47.9,55.4	46.9,64.1
		path	54.8,53.9	55.2,62.6	52.9,66.2
		path	53.6,73.7	60.8,75.8	62.0,55.0
		path	63.7,61.0	66.4,51.3	68.2,51.3
		path	68.1,61.5	71.6,65.1	77.2,62.1
	]])

	--Mithril Ore Path
	ZygorGuidesViewer:RegisterInclude("Mithril_Ore",[[
		map Felwood
		path	63.5,24.5	62.6,6.9	55.7,18.6
		path	42.5,17.1	42.0,24.1	39.9,22.1
		path	41.0,27.5	38.6,37.4	38.3,55.6
		path	40.7,59.8	35.0,59.1	41.8,62.6
		path	36.3,66.8	40.7,72.9	37.8,73.5
		path	40.3,77.4	39.1,79.3	43.8,81.5
		path	39.0,81.6	42.3,87.1	45.1,84.6
		path	45.1,89.7	48.1,92.8	51.2,86.1
		path	52.5,88.8	57.7,86.5	58.6,84.8
		path	55.9,81.1	49.6,76.6	43.5,60.9
		path	42.9,50.8	52.9,31.6	59.6,27.2
	]])
	--Thorium Ore Path
	ZygorGuidesViewer:RegisterInclude("Thorium_Ore",[[
		map Winterspring
		path	52.8,46.2	58.3,41.2	59.7,45.0
		path 	59.9,21.4	58.3,18.4	54.5,21.2
		path 	45.9,13.1	44.8,15.3	44.8,29.0
		path 	47.8,33.2	49.8,42.8	39.5,51.0
		path 	33.5,47.2	30.2,48.6	31.5,53.5
		path 	28.4,51.6	27.3,48.0	23.0,45.7
		path 	22.3,62.4	25.3,61.3	25.9,58.1
		path 	41.2,57.7	42.1,53.2	46.1,60.8
		path 	51.0,61.4	53.7,63.6	51.2,69.9
		path 	55.2,68.9	56.8,81.1	59.0,80.3
		path 	59.0,85.3	62.0,87.6	64.1,81.8
		path 	62.2,77.7	62.3,73.3	67.0,68.5
		path 	67.1,60.1
	]])
	--Truesilver

---------------------------------
--BC ORE
---------------------------------

	--Fel Iron Ore Path
	ZygorGuidesViewer:RegisterInclude("Fel_Iron",[[
		map Hellfire Peninsula
		path	69.3,47.5	74.5,38.7	68.2,37.7
		path	62.0,31.0	58.0,32.8	54.0,26.7
		path	46.0,29.3	34.1,29.1	32.0,34.5
		path	38.5,38.2	35.7,40.7	33.4,49.8
		path	30.3,48.6	32.5,43.3	28.5,39.3
		path	26.5,45.5	22.6,45.1	18.0,38.3
		path	12.5,36.1	17.9,46.3	11.8,41.9
		path	12.0,47.0	06.2,49.5	15.4,62.4
		path	20.3,52.9	24.0,61.1	21.2,62.7
		path	28.1,80.8	27.7,69.5	30.5,72.8
		path	30.3,59.9	34.8,66.6	37.7,53.3
		path	46.9,46.3	49.3,49.5	60.3,48.6
		path	60.8,52.8	52.1,52.7	47.2,57.7
		path	45.9,75.5	33.5,89.6	33.1,92.6
		path	49.1,77.5	44.6,86.2	55.5,82.8
		path	58.7,78.8	56.5,72.3	65.8,63.6
		path	67.1,71.7	63.0,73.3	65.8,77.9
		path	68.7,77.6	71.0,71.7	70.1,68.6
		path	65.0,59.8	65.6,56.0	75.0,63.9
		path	78.4,80.2	80.7,77.5	77.3,63.7
		path	72.7,60.2	71.5,53.1	68.3,52.0
	]])
	--Adamantite Ore Path
	ZygorGuidesViewer:RegisterInclude("Adamantite",[[
		map Nagrand
		path follow loose;dist 30
		path	72.7,64.7	74.3,60.5	69.1,48.6
		path	72.3,43.1	66.1,32.3	59.5,27.3
		path	55.7,23.0	54.8,20.6	50.7,20.0
		path	49.3,24.1	47.1,20.2	39.6,20.4
		path	28.2,12.1	25.7,16.5	26.8,23.6
		path	27.9,25.3	27.5,32.1	23.2,27.8
		path	7.1,39.9	25.2,61.1	31.9,81.9
		path	41.8,81.8	43.5,73.7	48.4,71.4
		path	43.0,62.2	32.2,60.3	29.2,54.1
		path	33.4,49.4	40.8,32.1	45.5,43.9
		path	42.4,50.9	48.0,57.5	51.5,55.6
		path	60.5,56.9	56.7,64.0	70.1,83.3
		path	69.8,72.5
	]])
	--Eternium Ore Path

	--Khorium Ore Path

---------------------------------
--WOTLK Ore
---------------------------------

	--Cobalt Ore Path
	ZygorGuidesViewer:RegisterInclude("Cobalt",[[
		map Howling Fjord
		path follow loose; dist 40
		path	83.0,44.8	78.1,39.4	72.7,38.3
		path	71.0,31.8	75.3,22.9	70.2,8.3	
		path	63.2,13.7	64.4,16.4
		path	61.4,23.6	57.7,18.3
		path	51.4,14.2	45.5,13.3	38.1,18.9
		path	31.1,10.9	28.9,10.3	21.7,12.8
		path	19.4,23.5	24.2,27.4	23.9,33.6
		path	27.3,30.8	38.1,29.0	47.6,32.7
		path	53.0,31.9	63.5,37.1	65.5,48.7
		path	66.9,62.7	64.4,67.8	64.4,72.4
		path	67.9,76.5	69.8,74.7	72.5,67.9
		path	77.3,67.2	77.2,60.8	74.9,55.3
		path	79.1,50.4
	]])

	--Saronite Ore Path
	ZygorGuidesViewer:RegisterInclude("Saronite",[[
		map Sholazar Basin
		path follow loose;dist 50
		path	77.9,63.8	78.7,52.4	74.3,48.6
		path	58.9,53.9	63.5,44.4	66.7,40.3
		path	65.1,30.5	58.9,27.8	58.9,21.1
		path	40.8,20.8	48.0,33.2	53.8,37.0
		path	47.8,43.1	46.8,39.7	39.6,32.8
		path	32.9,32.8	23.3,48.4	33.5,46.6
		path	35.8,49.9	40.0,50.9	38.0,54.9
		path	30.5,55.3	20.8,56.1	20.4,76.6
		path	22.6,78.5	22.5,84.0	34.2,78.4
		path	33.8,73.4	33.0,67.9	40.9,70.1
		path	34.5,88.9	50.9,88.8	51.5,82.1
		path	46.0,60.9	52.5,68.9	58.7,88.2
		path	62.3,74.5	63.6,84.4
	]])

	--Titanium

---------------------------------
--CATA ORE
---------------------------------

	--Obsidium Ore Path 
	ZygorGuidesViewer:RegisterInclude("Obsidium",[[
		map Mount Hyjal
		path follow loose;dist 60
		path	67.2,29.1	61.1,36.7	54.5,17.1
		path	41.2,20.5	42.9,27.5	49.6,25.5
		path	46.6,35.6	40.5,33.6	39.9,29.4
		path	34.9,27.5	35.0,21.7	32.3,28.8
		path	35.0,35.6	31.1,40.4	25.7,40.6
		path	28.7,35.7	24.3,35.8	25.7,29.8
		path	14.7,38.8	13.6,31.6	9.4,36.4
		path	17.6,46.5	12.9,46.5	15.5,52.2
		path	20.7,60.2	21.5,56.8	23.3,61.5
		path	30.3,55.2	27.6,55.0	27.7,51.2
		path	34.1,46.8	34.1,55.2	37.5,54.9
		path	36.0,51.0	40.3,51.6	41.5,63.3
		path	38.9,65.5	36.4,58.6	32.8,61.8
		path	35.2,63.5	32.8,66.6	31.3,90.4
		path	36.6,95.5	50.8,82.1	51.8,75.1
		path	60.6,82.5	59.8,73.0	56.5,69.8
		path	58.9,66.4	53.6,66.8	49.6,51.1
		path	59.7,56.3	55.5,56.8	62.8,60.0
		path	64.5,50.9	67.5,50.6	69.8,56.0
		path	75.9,69.6	75.7,63.6	80.2,67.2
		path	84.3,64.9	88.1,48.5	84.2,47.5
		path	78.5,53.3	84.2,54.5	82.1,60.9
		path	72.9,57.9
	]])

	--Elementium Ore Path 
	ZygorGuidesViewer:RegisterInclude("Elementium",[[
		map Twilight Highlands
		path follow loose
		path	71.4,50.3	54.0,37.6	41.3,56.6
		path	37.5,58.2	24.5,56.9	30.0,42.8
		path	26.9,28.7	32.3,27.1	31.5,40.1
		path	38.6,41.2	39.6,30.4	39.0,19.7
		path	46.2,20.1	53.8,24.8	61.5,32.4
		path	68.5,37.9
	]])
	--Pyrite

---------------------------------
--MOP ORE
---------------------------------

	--Ghost Iron

	--Black Trillium

	--White Trillium

---------------------------------
--WOD ORE
---------------------------------

	--Blackrock Ore

	--True Iron Ore



---------------------------------
--VANILLA HERB
---------------------------------

	--Preacebloom

	--Silverleaf

	--Bloodthistle

	--Earthroot

	--Mageroyal

	--Swiftthistle

	--Briarthorn

	--Bruiseweed

	--Stranglekelp

	--Gravemoss

	--Wild Steelbloom

	--Kingsblood

	--Liferoot

	--Fadeleaf

	--Goldthorn

	--Khadgar's Whisker

	--Dragon's Teeth

	--Firebloom

	--Purple Lotus

	--Wildvine

	--Arthas' Tears

	--Sungrass

	--Blindweed

	--Ghost Mushroom

	--Gromsblood

	--Golden Sansam

	--Dreamfoil

	--Icecap

	--Mountain Silversage

	--Sorrowmoss

	--Black Lotus

---------------------------------
--BC HERB
---------------------------------
	--Felweed // Dreaming Glory
	ZygorGuidesViewer:RegisterInclude("BC_Herb1",[[
		map Hellfire Peninsula
		path follow loose;loop;ants straight;dist 60
		path 80.6,79.9		73.3,67.0		68.6,76.9	
		path 56.1,71.6		48.4,75.2		40.7,84.5
		path 36.6,67.4		32.9,65.6		28.0,78.7
		path 22.9,67.5		13.7,63.0		13.5,38.7
		path 23.8,44.6		30.5,33.1		37.8,30.8		
		path 55.8,31.1		67.1,27.3
	]])

	--Goldclover // Tiger Lily
	ZygorGuidesViewer:RegisterInclude("BC_Herb2",[[
		map Borean Tundra
		path follow loose;loop;ants straight;dist 60
		path 51.9,47.7		53.7,43.4	53.2,38.8
		path 54.8,29.9		51.3,20.8	49.4,26.2
		path 42.9,41.3		36.5,54.9	44.1,64.2
		path 52.2,60.7		57.7,52.1
	]])

	--Goldclover // Tiger Lily // Adder's Tongue
	ZygorGuidesViewer:RegisterInclude("BC_Herb3",[[
		map Sholazar Basin
		path follow loose;loop;ants straight;dist 60
		path 32.0,58.2		36.1,65.3		43.9,57.7	
		path 44.5,63.9		39.5,66.3		40.4,71.7
		path 32.8,82.3		36.1,84.4		42.6,76.0
		path 46.8,62.5		51.0,62.0		60.0,73.9
		path 55.7,85.9		66.4,82.3		69.3,65.8
		path 55.2,57.1		48.9,55.0		55.4,48.1
		path 58.1,38.3		34.8,31.4		30.1,43.4
		path 32.1,48.5		26.6,55.4		23.7,60.3
	]])

	--Felweed

	--Dreaming Glory

	--Ragveil

	--Terocone
	ZygorGuidesViewer:RegisterInclude("BC_Herb4",[[
		map Terokkar Forest
		path follow loose;loop;ants straight;dist 60
		path 34.4,8.0 		37.5,16.1		41.6,19.9	
		path 44.5,11.5		51.0,21.0		48.4,26.9			
		path 60.2,22.5		73.1,45.3		61.5,48.6	
		path 54.0,37.1		48.0,33.5		39.0,34.8	
		path 39.2,44.4		47.3,50.0		47.0,79.8	
		path 33.5,76.9		19.6,77.8		21.5,60.7		
		path 31.4,39.9		37.4,30.1
	]])

	--Flame Cap

	--Ancient Lichen

	--Netherbloom // Dreaming Glory
	ZygorGuidesViewer:RegisterInclude("BC_Herb5",[[
		map Netherstorm
		path follow loose;loop;ants straight;dist 60
		path 31.5,51.4		25.6,63.5		19.5,67.7
		path 20.3,77.1		40.2,77.2		46.2,82.6
		path 48.0,86.9		58.9,88.8		61.4,79.4
		path 51.6,75.7		46.0,72.1		34.5,55.8
		path 40.1,52.9		50.2,69.0		67.1,60.7
		path 50.8,54.8		46.5,47.1		55.0,39.9
		path 58.5,47.2		62.7,50.3		73.4,40.5
		path 73.2,35.2		62.1,30.5		55.6,31.6
		path 49.8,35.9		48.8,25.5		57.1,24.3
		path 55.5,17.3		49.7,17.4		48.9,12.5	
		path 44.9,19.8		42.5,16.2		39.5,15.7
		path 35.7,19.8		32.1,29.2		38.5,42.4
		path 31.1,38.1		23.5,35.4		22.9,44.1
		path 30.2,43.3
	]])

	--Netherdust Bush

	--Nightmare Vine

	--Mana Thistle

	--Fel Lotus

---------------------------------
--WOTLK HERB
---------------------------------

	--Goldclover // Deadnettle // Tiger Lily
	ZygorGuidesViewer:RegisterInclude("Wrath_Herb1",[[
		map Howling Fjord
		path follow loose;loop;ants straight;dist 60
		path	70.1,47.3	75.5,50.8	80.5,46.2 
		path	76.3,42.8	70.3,40.5	66.5,33.5 
		path	70.5,32.4	73.6,26.7	69.8,19.2 
		path	65.8,26.8	61.8,28.5	58.5,22.7 
		path	50.2,16.6	48.7,21.2	26.5,7.9 
		path	29.2,12.0	23.8,14.0	26.8,14.5
		path	27.2,20.8	29.0,22.2	27.1,29.6
		path	31.3,33.3	34.8,34.1	41.7,34.2 
		path	42.1,27.7	46.3,31.5	47.1,29.0 
		path	54.1,32.5	49.0,35.8	58.1,37.0 
		path	58.3,40.1	43.3,44.1	40.9,40.2 
		path	37.0,39.9	37.0,44.9	34.9,46.2 
		path	46.4,54.3	45.9,50.2	51.1,48.3 
		path	59.5,51.6	59.0,55.6	45.1,59.4 
		path	48.7,62.7	46.8,71.6	52.8,71.5

		path	53.4,76.5	60.0,76.8	62.6,80.5
		path	64.8,67.6	67.9,59.7	65.8,72.5
		path	67.1,74.9	69.5,74.5	70.6,66.1
		path	76.4,67.9
	]])

	--Fireleaf

	--Tiger Lily
	ZygorGuidesViewer:RegisterInclude("Wrath_Herb3",[[
		map Sholazar Basin
		path	68.7,66.6	69.4,68.5	71.0,70.3
		path	69.1,73.6	68.1,70.1	65.3,70.5
		path	67.1,75.2	65.3,75.6	61.5,71.2
		path	65.1,79.5	62.9,83.5	59.2,72.5
		path	57.5,83.3	60.1,85.3	51.6,86.5
		path	43.6,75.3	47.9,73.9	50.5,62.6
		path	47.9,60.1	46.2,63.1	46.9,65.5
		path	43.1,62.3	41.3,67.5	37.9,63.6
		path	37.7,66.2	29.8,66.8	31.9,70.1
		path	31.1,71.1	43.7,71.0	40.1,76.5
		path	43.3,77.4	42.5,83.0	41.0,83.9
		path	41.9,86.5	40.8,87.8	37.5,83.3
		path	35.2,87.1	35.2,83.4	28.8,84.8
		path	28.5,79.5	30.5,75.7	28.5,75.5
		path	26.6,77.6	21.6,63.7	22.4,60.3
		path	32.7,64.5	32.4,60.4	29.1,61.7
		path	32.7,64.5	32.4,60.4	29.1,61.7
		path	32.7,64.5	32.4,60.4	29.1,61.7
		path	25.3,59.0	21.5,56.3	25.7,55.9
		path	32.0,41.7	31.2,55.2	28.7,53.5
		path	28.5,60.1	35.2,60.7	35.5,58.7
		path	38.2,60.2	38.6,55.5	41.6,56.2
		path	41.2,58.8	43.5,59.5	49.5,52.3
		path	47.6,49.6	44.6,49.1	46.8,52.1
		path	45.5,51.6	39.6,35.8	33.9,31.6
		path	38.5,29.6	33.8,24.4	35.4,20.9
		path	40.6,26.0	39.9,21.1	43.9,23.5
		path	56.5,31.5	62.7,33.9	57.6,41.3
		path	59.3,42.1	59.6,45.1	57.7,47.2
		path	53.5,44.0	50.5,54.2	52.3,56.8
		path	56.6,54.5	55.6,49.9	64.2,46.4
		path	63.9,48.9
	]])

	--Talandra's Rose
	ZygorGuidesViewer:RegisterInclude("Wrath_Herb2",[[
		map Zul'Drak
		path follow loose;loop;ants straight;dist 60
		path 21.3,84.1		31.2,68.2		39.3,63.7
		path 29.7,52.6		37.1,40.8		43.6,46.7
		path 43.0,62.9		50.7,62.4		58.2,73.5
		path 52.2,83.3		39.5,87.0
	]])
	--Fronzen Herb

	--Adder's Tongue

	--Deadnettle

	--Lichbloom

	--Icethorn // Lichbloom
	ZygorGuidesViewer:RegisterInclude("Wrath_Herb4",[[
		map The Storm Peaks
		path follow loose;loop;ants straight;dist 60
		path 31.4,83.1		33.0,93.8		40.0,82.3
		path 52.2,69.5		56.9,71.0		63.0,59.6
		path 65.0,73.2		66.9,58.5		77.2,72.8
		path 77.0,61.3		72.8,53.1		70.9,47.2
		path 64.1,54.1		65.7,41.5		52.5,53.2
		path 47.7,36.0		34.6,40.4		30.4,50.5
		path 29.1,37.4		22.2,36.7		24.3,56.4
		path 30.7,64.5		24.6,72.5		36.3,72.7
	]])

	--Frost Lotus

---------------------------------
--CATA HERB
---------------------------------
	--Stormvine // Cinderbloom
	ZygorGuidesViewer:RegisterInclude("CATA_Herb1",[[
		map Mount Hyjal
		path follow loose;loop;ants straight;dist 60
		path 68.2,23.9		57.0,38.9		57.9,17.5
		path 51.5,16.9		52.6,35.5		48.7,36.5
		path 44.0,24.5		39.8,32.5		36.5,21.7
		path 32.3,25.2		34.6,36.9		43.5,42.6
		path 36.2,44.9		25.3,37.8		24.1,31.9
		path 11.8,31.6		19.0,58.5		25.6,62.0
		path 31.9,46.7		36.9,53.5		42.3,55.9
		path 33.8,65.0		31.3,76.5		33.8,98.2
		path 57.1,80.9		59.2,84.5		59.8,77.8
		path 55.8,74.7		59.8,71.6		49.1,51.6
		path 61.9,60.5		67.1,53.5		74.3,58.8	
		path 71.9,68.5		77.5,59.5		83.0,64.2	
		path 89.9,49.8		80.9,51.8
	]])

	--Stormvine
	ZygorGuidesViewer:RegisterInclude("CATA_Herb2",[[
		map Shimmering Expanse
		path	42.2,55.2	37.7,67.1	48.2,81.4
		path	57.8,83.2	58.5,69.6	49.6,59.1
		path	68.0,49.7	63.9,39.4	57.9,39.8
		path	50.6,35.3	41.3,34.8	38.1,44.7
		path	32.5,54.7
	]])

	--Azshara's Veil

	--Heartblossom
	ZygorGuidesViewer:RegisterInclude("CATA_Herb3",[[
		map Deepholm
		path	69.4,56.0	70.0,60.7	72.9,58.2
		path 	74.7,61.1	75.8,67.5	70.9,62.9
		path 	71.1,70.6	66.0,68.5	26.8,41.5
		path 	26.5,35.6	23.1,35.3	25.9,31.9
		path 	27.5,32.3	27.8,27.0	31.2,32.0
		path 	28.9,35.6	26.8,41.5
	]])

	--Whiptail
	ZygorGuidesViewer:RegisterInclude("CATA_Herb4",[[
		map Uldum
		path	58.4,31.3	56.2,22.6	57.8,14.5
		path 	61.5,14.0	57.1,44.7	60.5,58.3
		path 	69.8,76.5	65.9,75.9	60.0,83.2
		path 	59.0,58.8	55.3,45.8	52.0,45.6
		path 	50.8,42.5	50.8,36.0	50.8,36.0
	]])
	
	--Twilight Jasmine
	ZygorGuidesViewer:RegisterInclude("Twilight_Herb",[[
		map Twilight Highlands
		path	71.7,48.9	68.1,41.8	61.9,36.0
		path 	53.9,32.0	47.3,40.3	45.6,45.2
		path 	45.3,36.1	41.3,52.0	48.7,54.5
		path 	51.5,45.6	58.2,48.0	59.1,40.1
		path 	70.9,64.8	73.5,64.0	73.7,72.2
		path	69.8,64.7	63.1,60.8	59.5,63.6
		path 	55.3,50.4	57.0,77.5	53.0,79.8
		path 	49.0,70.0	44.2,70.6	47.9,63.4
		path 	33.6,49.9	29.0,40.3	28.6,30.5
		path	46.3,23.2	57.5,27.2	69.1,38.2
		path 	72.9,47.2
	]])
---------------------------------
--MOP HERB
---------------------------------
	--Greentea // Silk
	ZygorGuidesViewer:RegisterInclude("MoP_Herb1",[[
		map Valley of the Four Winds
		path follow loose;loop;ants straight;dist 40
		path 81.4,21.5	76.4,29.2	68.2,33.3
		path 70.6,41.8	65.1,60.1	57.6,65.6
		path 50.8,58.6	48.0,65.9	46.9,61.3
		path 42.5,58.3	33.6,62.1	28.1,72.7
		path 25.7,78.4	18.5,51.0	15.4,53.9
		path 12.8,44.7	14.3,41.2	14.8,35.8
		path 19.6,34.4	24.0,42.2	25.0,50.2
		path 30.1,55.7	 35.8,54.8	41.5,48.9
	]])

	--Green Tea Leaf

	--Rain Poppy

	--Silkweed

	--Golden Lotus

	--Snow Lily

	--Sha-Touched Herb

	--Fool's Cap

---------------------------------
--WOD HERB
---------------------------------

	--Frostweed

	--Starflower

	--Gorgrond Flytrap

	--Talador Orchid

	--Fireweed

	--Nagrand Arrowbloom



---------------------------------
--VANILLA SKINS
---------------------------------
	
	--Ruined Leather Scrap

	--Light Leather

	--Medium Leather

	--Heavy Leather

	--Thick Leather

	--Rugged Leather

---------------------------------
--BC SKINS
---------------------------------

	--Knothide Leather Scraps

	--Knothide Leather

	--Heavy Knothide Leather

---------------------------------
--WOTLK SKINS
---------------------------------

	--Borean Leather Scraps

	--Borean Leather

	--Heavy Borean Leather

---------------------------------
--CATA SKINS
---------------------------------

---------------------------------------------------------------------------------------------------------
-- MoP Profession Common Includes
---------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("goto_sungshin",[[
		talk Sungshin Ironpaw##64231 |goto Valley of the Four Winds 53.58,51.23
]])

ZygorGuidesViewer:RegisterInclude("Pandarian_Cooking_1-520",[[
		#include "goto_sungshin"
		skillmax Cooking,75
// Cooking 30
	step
		#include "goto_sungshin"
		accept So You Want to Be a Chef...##31281
	step
		#include "goto_sungshin"
		learn Sliced Peaches##125117 |condition _G.IsSpellKnown(125117) or skill("Cooking")>=30
	step
		#include "goto_sungshin"
		buy 6 Pandaren Peach##74660 |condition skill("Cooking")>=30 or itemcount(74660)>=6
	step
		#include cooking_fire
		create 6 Sliced Peaches##125117,Cooking,5 total |q 31281/1
	step
		collect 6 Sliced Peaches##86057 |q 31281/2
		skill Cooking,30 
		|tip You may need to buy another peach if your cooking skill is not 30 yet.
	step
		#include "goto_sungshin"
		turnin So You Want to Be a Chef...##31281

// Cooking 60 or itemcount() > 5
	step
		#include "goto_sungshin"
		learn Perfectly Cooked Instant Noodles##125067 |condition _G.IsSpellKnown(125067) or skill("Cooking")>=60
		only if skill('Cooking')<=59
	step
		#include "goto_sungshin"
		buy 6 Instant Noodles##74854 |condition skill("Cooking")>=60 or itemcount(74854)>=6
	step
		create 6 Perfectly Cooked Instant Noodles##125067,Cooking,60

// Cooking 90
	step
		#include "goto_sungshin"
		skillmax Cooking,150
		only if skill('Cooking')<=89
	step
		#include "goto_sungshin"
		learn Toasted Fish Jerky##124225
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474
		collect 6 Golden Carp##74866 |goto Valley of the Four Winds 58.9,47.1 |condition skill("Cooking")>=90 or itemcount(74866)>=6
	step
		#include cooking_fire
		create Toasted Fish Jerky##124225,Cooking,90

// Cooking 120
	step
		#include "goto_sungshin"
		learn Dried Needle Mushrooms##124227
		only if skill('Cooking')<=119
	step
		#include "goto_sungshin"
		buy 6 Needle Mushrooms##85583 |condition skill("Cooking")>=120 or itemcount(85583)>=6
	step
		create Dried Needle Mushrooms##124227,Cooking,120

// Cooking 150
	step
		#include "goto_sungshin"
		learn Pounded Rice Cake##124223
		only if skill('Cooking')<=149
	step
		#include "goto_sungshin"
		buy 6 Rice##74851 |condition skill("Cooking")>=150 or itemcount(74851)>=6
	step
		#include "goto_sungshin"
		create Pounded Rice Cake##124223,Cooking,150

// Cooking 180
	step
		#include "goto_sungshin"
		skillmax Cooking,225
	step
		#include "goto_sungshin"
		learn Yak Cheese Curds##124224
		only if skill('Cooking')<=179
	step
		#include "goto_sungshin"
		buy 6 Yak Milk##74852 |condition skill("Cooking")>=180 or itemcount(74852)>=6
	step
		#include "goto_sungshin" 
		create Yak Cheese Curds##124224,Cooking,180

// Cooking 210
	step
		#include "goto_sungshin"
		learn Dried Peaches##124226
		only if skill('Cooking')<=209
	step
		#include "goto_sungshin"
		buy 6 Pandaren Peach##74660 |condition skill("Cooking")>=210 or itemcount(74660)>=6
	step
		#include "goto_sungshin"
		create Dried Peaches##124226,Cooking,210

// Cooking 240
	step
		skillmax Cooking,300
		only if skill('Cooking')<=225
	step
		#include "goto_sungshin"
		learn Boiled Silkworm Pupa##124228
	step
		#include "goto_sungshin"
		buy 6 Silkworm Pupa##85584 |condition skill("Cooking")>=240 or itemcount(85584)>=6
	step
		#include "goto_sungshin"
		create Boiled Silkworm Pupa##124228,Cooking,240

// Cooking 270
	step
		#include "goto_sungshin"
		learn Roasted Barley Tea##125078
		only if skill('Cooking')<=269
	step
		#include "goto_sungshin"
		buy 6 Barley##74832 |condition skill("Cooking")>=270 or itemcount(74832)>=6
	step
		#include "goto_sungshin"
		create Roasted Barley Tea##125078,Cooking,270

// Cooking 300
	step
		#include "goto_sungshin"
		learn Golden Carp Consomme##104237
		only if skill('Cooking')<=299
	step
		
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach|cast Fishing##131474 |goto Valley of the Four Winds 58.9,47.1
		collect 24 Golden Carp##74866 |only if skill('Cooking')<=299 |condition skill("Cooking")>=300
		collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329 |condition skill("Cooking")>=300
	step
		#include cooking_fire
		create Golden Carp Consomme##104237,Cooking,300

// Cooking 330 
	step
		#include "goto_sungshin"
		skillmax Cooking,375
	step
		#include "goto_sungshin"
		learn Fish Cake##104297
		only if skill('Cooking')<=329
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474 |goto Valley of the Four Winds 58.9,47.1
		collect 12 Golden Carp##74866 |only if skill('Cooking')>=300 and skill('Cooking')<=329 |condition skill("Cooking")>=300
	step
		#include "goto_sungshin"
		create Fish Cake##104297,Cooking,330

// Cooking 360
	step
		#include "goto_sungshin"
		learn Blanched Needle Mushrooms##124233
		only if skill('Cooking')<=359
	step
		#include "goto_sungshin"
		buy 12 Needle Mushrooms##85583 |condition skill("Cooking")>=360 or itemcount(85583)>=12

// Cooking 390
	step
		create 6 Blanched Needle Mushrooms##124233,Cooking,360
	step
		#include "goto_sungshin"
		skillmax Cooking,450
	step
		#include "goto_sungshin"
		learn Red Bean Bun##124229
		only if skill('Cooking')<=389
	step
		#include "goto_sungshin"
		buy 6 Red Beans##85585 |condition skill("Cooking")>=390 or itemcount(85585)>=6
	step
		#include "goto_sungshin"
		create Red Bean Bun##124229,Cooking,390

// Cooking 420
	step
		#include "goto_sungshin"
		learn Skewered Peanut Chicken##124234
		only if skill('Cooking')<=419
	step
		#include "goto_sungshin"
		buy 6 Farm Chicken##74659 |condition skill("Cooking")>=420 or itemcount(74659)>=6
	step
		#include cooking_fire
		create Skewered Peanut Chicken##124234,Cooking,420

// Cooking 450 |condition skill("Cooking")>=270
	step
		#include "goto_sungshin"
		learn Green Curry Fish##124231
	step
		#include "goto_sungshin"
		buy 6 Rice##74851 |condition skill("Cooking")>=450 or itemcount(74851)>=6
	step
		Equip your Fishing Pole |use Fishing Pole##6256
		Fish here, you can also fish along the beach |cast Fishing##131474 |goto Valley of the Four Winds 58.9,47.1
		collect 12 Golden Carp##74866 |only if skill('Cooking')<=449
	step
		#include cooking_fire
		create Green Curry Fish##124231,Cooking,450

// Cooking 480
	step
		#include "goto_sungshin"
		skillmax Cooking,525
	step
		#include "goto_sungshin"
		learn Peach Pie##124232
		only if skill('Cooking')<=479
	step
		#include "goto_sungshin"
		buy 12 Pandaren Peach##74660 |condition skill("Cooking")>=480 or itemcount(74660)>=12
	step
		#include "goto_sungshin"
		create Peach Pie##124232,Cooking,480

// Cooking 495
	step
		#include "goto_sungshin"
		learn Tangy Yogurt##124230
		only if skill('Cooking')<=494
	step
		#include "goto_sungshin"
		buy 3 Pandaren Peach##74660 |condition skill("Cooking")>=495 or itemcount(74660)>=3
		buy 3 Yak Milk##74852 |condition skill("Cooking")>=495 or itemcount(74852)>=3
	step
		#include "goto_sungshin"
		create 6 Tangy Yogurt##124230,Cooking,495

// Cooking 510
	step
		#include "goto_sungshin"
		learn Pearl Milk Tea##125080
		only if skill('Cooking')<=509
	step
		#include "goto_sungshin"
		buy 6 Yak Milk##74852 |condition skill("Cooking")>=510 or itemcount(74852)>=6
	step
		#include "goto_sungshin"
		create Pearl Milk Tea##125080,Cooking,510

// Cooking 
	step
		#include "goto_sungshin"
		learn Wildfowl Ginseng Soup##125121
		only if skill('Cooking')<=519
	step
		#include "goto_sungshin"
		buy 2 Ginseng##74845 |condition skill("Cooking")>=520 or itemcount(74845)>=2
		only if skill('Cooking')<=519
	step
		Kill Glade mobs and Carp Hunters
		You canfind Carp Hunters at this location |goto Valley of the Four Winds 54.81,36.81 
		collect 15 Wildfowl Breast##74839 |goto Krasarang Wilds 64.6,29.3 |condition skill("Cooking")>=520 or itemcount(74839)>=15
		modelnpc Carp Hunter##58116
		modelnpc Glade Singer##58766
		modelnpc Glade Sprinter##58741
		modelnpc Glade Hunter##57299
		only if skill('Cooking')<=519
	step
		#include "goto_sungshin"
		create Wildfowl Ginseng Soup##125121,Cooking,520
]])

ZygorGuidesViewer:RegisterInclude("Cooking_PreMasteries",[[
		talk Sungshin Ironpaw##64231
		accept Ready for Greatness##31302 |goto Valley of the Four Winds 53.7,51.0
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31302 |goto 53.6,51.2 |condition itemcount(74851)>=5 or completedq(31302)
		buy 5 Yak Milk##74852 |q 31302 |goto 53.6,51.2 |condition itemcount(74852)>=5 or completedq(31302)
	step
		#include cooking_fire
		create 5 Rice Pudding##125122,Cooking,5 total |q 31302/1
		collect 5 Rice Pudding##86069 |q 31302/2
	step
		talk Sungshin Ironpaw##64231
		turnin Ready for Greatness##31302 |goto 53.7,51.0
		accept Way of the Grill##31311 |goto 53.7,51.0
		accept Way of the Wok##31470 |goto 53.7,51.0
		accept Way of the Pot##31472 |goto 53.7,51.0
		accept Way of the Steamer##31475 |goto 53.7,51.0
		accept Way of the Oven##31478 |goto 53.7,51.0
		accept Way of the Brew##31479 |goto 53.7,51.0
	step
		talk Sungshin Ironpaw##64231
		buy 1 Ginseng##74845 |q 31480 |goto 53.7,51.0 |condition itemcount(74845)>=1 or completedq(31480)
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Raw Tiger Steaks##87701 |n
		use Sack of Raw Tiger Steaks##87701 
		collect 5 Raw Tiger Steak##74833 |q 31311/1 |goto 53.5,51.2 |condition itemcount(74833)>=5 or completedq(31311)
	step
		talk Kol Ironpaw##58712
		turnin Way of the Grill##31311 |goto 53.0,51.3
		accept Strong as a Tiger##31467 |goto 53.0,51.3
	step
		talk Kol Ironpaw##58712
		learn Charbroiled Tiger Steak##104298 |q 31467/1 |goto 53.0,51.3 |condition _G.IsSpellKnown(104298) or completedq(31467)
	step
		#include cooking_fire
		create Charbroiled Tiger Steak##104298,Cooking,535
		Create #5# Charboiled Tiger Steaks |q 31467/2
	step
		talk Kol Ironpaw##58712
		turnin Strong as a Tiger##31467 |goto 53.0,51.3
	step
		talk Bobo Ironpaw##58717
		turnin Way of the Brew##31479 |goto 53.2,52.2
		accept Have a Drink##31480 |goto 53.2,52.2
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |q 31480/1 |goto 53.0,51.3 |condition _G.IsSpellKnown(124052) or completedq(31480)
	step
		#include cooking_fire
		create 1 Ginseng Tea##124052,Way of the Brew,531
		collect 1 Ginseng Tea##75026 |q 31480/2
	step
		talk Bobo Ironpaw##58717
		turnin Have a Drink##31480 |goto 53.2,52.2
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Juicycrunch Carrots##87707 |n 
		Use the Sack of Juicycrunch Carrots |use Sack of Juicycrunch Carrots##87707 
		collect 5 Juicycrunch Carrot##74841 |q 31470/1 |goto 53.5,51.2
	step
		talk Anthea Ironpaw##58713
		turnin Way of the Wok##31470 |goto 52.7,52.0
		accept Agile as a Tiger##31471 |goto 52.7,52.0
	step
		talk Anthea Ironpaw##58713
		learn Sauteed Carrots##104301 |q 31471/1 |goto 52.7,52.0 |condition _G.IsSpellKnown(104301) or completedq(31471)
	step
		#include cooking_fire
		create 5 Sauteed Carrots##104301,Way of the Wok,535
		Cook #5# Sauteed Carrots |q 31471/2
	step
		talk Anthea Ironpaw##58713
		turnin Agile as a Tiger##31471 |goto 52.7,52.0
	step
		talk Nam Ironpaw##64395
		buy 1 Sack of Jade Lungfish##87721 |n
		Use the Sack of Jade Lungfish |use Sack of Jade Lungfish##87721
		collect 5 Jade Lungfish##74856 |q 31472/1 |goto 53.5,51.2

		buy 1 Sack of Mantis Shrimp##87722 |n
		Use the Sack of Mantis Shrimp |use Sack of Mantis Shrimp##87722
		collect 5 Giant Mantis Shrimp##74857 |q 31475/1 |goto 53.5,51.2

		buy 1 Sack of Wildfowl Breasts##87705 |n
		Use the Sack of Wildfowl Breasts |use Sack of Wildfowl Breasts##87705
		collect 5 Wildfowl Breast##74839 |q 31478/1 |goto 53.5,51.2
	step
		talk Jian Ironpaw##58716
		turnin Way of the Oven##31478 |goto 53.4,51.6
		accept Endurance##31477 |goto 53.4,51.6
	step
		talk Jian Ironpaw##58716
		learn Wildfowl Roast##104310 |q 31477/1 |goto 53.4,51.6
	step
		#include cooking_fire
		create 5 Wildfowl Roast##104310,Way of the Oven,535
		Cook #5# Wildfowl Roasts |q 31477/2
	step
		talk Jian Ironpaw##58716
		turnin Endurance##31477 |goto 53.4,51.6
	step
		talk Yan Ironpaw##58715
		turnin Way of the Steamer##31475 |goto 52.5,51.8
		accept The Spirit of Cooking##31476 |goto 52.5,51.8
	step
		talk Yan Ironpaw##58715
		learn Shrimp Dumplings##104307 |q 31476/1 |goto 52.5,51.8
	step
		#include cooking_fire
		create 5 Shrimp Dumplings##104307,Way of the Steamer,535
		Cook #5# Shrimp Dumplings |q 31476/2	
	step
		talk Yan Ironpaw##58715
		turnin The Spirit of Cooking##31476 |goto 52.5,51.8
	step
		talk Mei Mei Ironpaw##58714
		turnin Way of the Pot##31472 |goto 52.6,51.5
		accept The Soup of Contemplation##31474 |goto 52.6,51.5
	step
		talk Mei Mei Ironpaw##58714
		learn Swirling Mist Soup##104304 |q 31474/1 |goto 52.6,51.5
	step
		#include cooking_fire
		create 5 Swirling Mist Soup##104304,Way of the Pot,535
		Cook #5# Swirling Mist Soup |q 31474/2
	step
		talk Mei Mei Ironpaw##58714
		turnin The Soup of Contemplation##31474 |goto 52.6,51.5
	step
		talk Nam Ironpaw##64395
		accept Preserving Freshness##31536 |goto 53.5,51.2
	step
		talk Merchant Cheng##64940
		buy 1 Empty Raw Tiger Steak Container##87658 |q 31536/1 |goto 53.0,52.4
	step
	label	final_quest
		talk Nam Ironpaw##64395
		turnin Preserving Freshness##31536 |goto 53.5,51.2
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("token_start_MST",[[
	label	token_start_%MST%
		You earn tokens by turning in _Bundles of Groceries_ as a _Repeatable Quest_
		You can farm any cooking ingredient and turn it into _Bundle of Groceries_
		|tip Farming 20 pieces of meat or 100 vegetables will get you one token. One token buys 5 pieces of meat or 25 vegetables of your choice.
		For a good location to farm vegetables for tokens, click here |confirm |next farm_veggie_%MST%
		Or
		For a good location to farm meat for tokens, click here |confirm |next farm_meat_%MST%
		Or
		If you have ingredients to turn in for tokens, click here |confirm |next token_end_%MST%
		Or
		Click here to turn in _Spirits of Harmony_ for Cooking Tokens. |confirm |next spirit
	step
	label	farm_veggie_%MST%
		kill Unga Fish-Getter##60299+, Unga Villager##60358+
		collect Jade Squash##74847 |n
		collect Striped Melon##74848 |n
		You will need 100 of a vegetable to turn in for one token
		You have enough Squash to turn in for _{_G.floor(itemcount(74847)/100)} Tokens_ |goto Krasarang Wilds 46.0,86.6
		You have enough Melon to turn in for _{_G.floor(itemcount(74848)/100)} Tokens_ |goto Krasarang Wilds 46.0,86.6
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat of your choice.
		Click here if you'd rather hunt some crocodiles for meat in the Dread Wastes. |next farm_meat_%MST% |confirm
		confirm |next token_end_%MST%
	step
	label	farm_meat_%MST%
		kill Coldbite Crocolisk##62023
		collect Raw Crocolisk Belly##75014 |n |goto Dread Wastes 65.6,58.2
		You will need stacks of 20 meat to turn in for one token
		You have enough meat to turn in for _{_G.floor(itemcount(75014)/20)} Tokens_
		|tip Remember, 1 Token will buy you 25 vegetables or 5 pieces of meat.
		Click here if you'd rather hunt some monkeys for vegetables in the Jade Forest. |next farm_veggie_%MST% |confirm
		confirm |next token_end_%MST%
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("tokens_for_ingredient",[[
		You need ingredients for _{_G.ceil(_G.max(0,((%ING_NEEDED%-itemcount(%ING_ID%))/%ING_PER_TOKEN%)-curcount(402)))}_ Tokens.
		Your vegetables and meat will turn in for _{_G.floor(itemcount(74847)/100)+_G.floor(itemcount(74848)/100)+_G.floor(itemcount(75014)/20)}_ Tokens.
		|condition _G.floor(itemcount(74847)/100)+_G.floor(itemcount(74848)/100)+_G.floor(itemcount(75014)/20) >=  _G.ceil(_G.max(0,((%ING_NEEDED%-itemcount(%ING_ID%))/%ING_PER_TOKEN%)-curcount(402)))
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("token_end_MST",[[
	label	token_end_%MST%
		talk Merchant Cheng##64940 |goto Valley of the Four Winds 53.0,52.4
		Buy Empty containers and fill with any ingredients you have. 
		Once you are ready to turn in for tokens, click here |confirm |next token_repeat_%MST%
	step
	label token_repeat_%MST%
		talk Nam Ironpaw##64395 |goto Valley of the Four Winds 53.5,51.2
		turnin Replenishing the Pantry##31535 |repeatable |instant |n
		When you are done turning in the bundles of groceries, click here. |confirm |next %TARGET%
]])


-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Cooking_Oven",[[
		talk Jian Ironpaw##58716
		learn Wild Fowl Roast##104310 |goto Valley of the Four Winds 53.4,51.6
	step		
		kill Glade Singer##58766+, Glade Sprinter##58741+
		collect 15 Wildfowl Breast##74839 |goto Valley of the Four Winds/0 54.3,33.1 |condition itemcount(74839)>=15 or skill("Way of the Oven")>=550
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Wild Fowl Roast##104310,Way of the Oven,550
	step
		talk Jian Ironpaw##58716
		learn Twin Fish Platter##104311 |goto Valley of the Four Winds 53.4,51.6
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the Grill")>=576
		Click here if you want to buy the items from the _Auction House_ |confirm |next "oven1"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 13 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=11 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 220 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 13 Bundle of Groceries##87557 |condition itemcount(87557)>=11 or skill("Way of the Oven")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 
		earn 13 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2
	step
	label "oven1"
		talk Nam Ironpaw##64395
		buy Sack of Krasarang Paddlefish##87728 |n
		use Sack of Krasarang Paddlefish##87728
		collect 65 Krasarang Paddlefish##74865 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74865)>=65 or skill("Way of the Oven")>=576
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Twin Fish Platter##104311,Way of the Oven,576
	step
		talk Jian Ironpaw##58716
		learn Great banquet of the Oven##125601 |goto Valley of the Four Winds 53.4,51.6
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 24 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=11 or skill("Way of the Brew")>=600
		|tip Alternatively, you can buy 300 Mogu Pumpkins and 60 Krasarang Paddlefish from the Auction House.
	step	
		map The Jade Forest/0 
		path	69.3,26.7	68.3,25.8	67.0,26.9
		path	67.8,28.7	68.1,31.5	68.9,29.8
		kill Saltback Turtle##58218+
		collect 20 Raw Turtle meat##74837 |condition itemcount(74837)>=20 or skill("Way of the Oven")>=600
		|tip You can also buy these from the Auction House.
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 540 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 27 Bundle of Groceries##87557 |condition itemcount(87557)>=27 or skill("Way of the Oven")>=576 |or
	step
		create Great Banquet of the Oven##125601,Way of the Oven,600
]])

ZygorGuidesViewer:RegisterInclude("Cooking_Brew",[[		
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052 |goto Valley of the Four Winds 53.0,52.0
	step
		talk Sungshin Ironpaw##64231
		buy 19 Ginseng##74845 |goto Valley of the Four Winds 53.6,51.2 |condition itemcount(74845)>=19 or skill("Way of the Brew")>=550
	step
		#include cooking_fire
		create Ginseng Tea##124052,Cooking,19 total |n
		skill Way of the Brew,550 
	step
		talk Bobo Ironpaw##58717
		learn Jade Witch Brew##124053 |goto Valley of the Four Winds 53.2,52.2
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 9 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=6 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path follow loose; ants curved; loop; dist 50
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 120 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 9 Bundle of Groceries##87557 |condition itemcount(87557)>=9 or skill("Way of the Brew")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 9 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "brew1"
		talk Nam Ironpaw##64395
		buy Sack of Witchberries##87712 |n
		use Sack of Witchberries##87712
		collect 75 Witchberries##74846 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74846)>=75 or skill("Way of the Brew")>=576
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Jade Squash##87713 |n
		use Sack of Jade Squash##87713
		collect 75 Jade Squash##74847 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74847)>=75 or skill("Way of the Brew")>=576
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Jade Witch Brew##124053,Way of the Brew,576
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here to start farming for the _Iron Paw Tokens_ |confirm |condition skill("Way of the Brew")>=600
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 11 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=11 or skill("Way of the Brew")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path follow loose; ants curved; loop; dist 50
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 220 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 11 Bundle of Groceries##87557 |condition itemcount(87557)>=11 or skill("Way of the Brew")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 11 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
		talk Nam Ironpaw##64395
		buy 3 100 Year Soy Sauce##74853 |condition itemcount(74853)>=3 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Witchberries##87712 |n
		use Sack of Witchberries##87712
		collect 100 Witchberries##74846 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74846)>=100 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Green Cabbage##87706 |n
		use Sack of Green Cabbages##87706
		collect 100 Green Cabbage##74840 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74840)>=100 or skill("Way of the Brew")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Bobo Ironpaw##58717
		learn Great banquet of the Brew##125603 |goto Valley of the Four Winds 53.0,52.0
	step
		#include cooking_fire
		create Great banquet of the Brew##125603,Way of the Brew,600
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Cooking_Wok",[[
		talk Anthea Ironpaw##58713
		learn Sauteed Carrots##104301 |goto Valley of the Four Winds 52.7,52.0
	step
		talk Merchant Cheng##64940
		buy 10 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=7 or skill("Way of the Wok")>=576
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 200 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 10 Bundle of Groceries##87557 |condition itemcount(87557)>=7 or skill("Way of the Wok")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 10 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
		talk Nam Ironpaw##64395
		buy Sack of Juicycrunch Carrots##87707 |n
		use Sack of Juicycrunch Carrots##87707 
		collect 50 Witchberries##74841 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74841)>=50 or skill("Way of the Wok")>=550	
	step
		#include cooking_fire
		create Sauteed Carrots##104301,Way of the Wok,550	
	step
		talk Anthea Ironpaw##58713
		learn Valley Stir Fry##104302 |goto Valley of the Four Winds 52.7,52.0
	step
		talk Nam Ironpaw##64395
		buy Sack of Reef Octopus##87727 |n
		use Sack of Reef Octopus##87727 
		collect 25 Reef Octopus##74864 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74864)>=25 or skill("Way of the Wok")>=576
	step		
		kill Glade Singer##58766+, Glade Sprinter##58741+
		collect 25 Wildfowl Breast##74839 |goto Valley of the Four Winds/0 54.3,33.1 |condition itemcount(74839)>=25 or skill("Way of the Oven")>=576
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Valley Stir Fry##104302,Way of the Wok,576
	step
		talk Anthea Ironpaw##58713
		learn Great banquet of the Wok##125595 |goto Valley of the Four Winds 52.7,52.0
	step
		You will need _60 Giant Mantis_ as well as _300 Red Blossom Leeks_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the Grill")>=576
		Click here if you want to buy the items from the _Auction House_ |confirm |next "Wok"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 27 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=27 or skill("Way of the Wok")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 140 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 27 Bundle of Groceries##87557 |condition itemcount(87557)>=27 or skill("Way of the Wok")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 27 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "Wok"
		talk Nam Ironpaw##64395
		buy Sack of Giant Mantis Shrimp##87722 |n
		use Sack of Giant Mantis Shrimp##87722 
		collect 60 Giant Mantis##74857 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74857)>=60 or skill("Way of the Wok")>=600	
	step
		buy Sack of Red Blossom Leeks##87710 |n
		use Sack of Red Blossom Leeks##87710
		collect 300 Red Blossom Leek##74844 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74844)>=300 or skill("Way of the Wok")>=600	
	step
		#include cooking_fire
		create Great Banquet of the Wok##125595,Way of the Wok,600 |goto Valley of the Four Winds 52.7,52.0
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Cooking_Steamer",[[
		talk Anthea Ironpaw##58713
		learn Shrimp Dumplings##104307 |goto Valley of the Four Winds 52.7,52.0
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 13 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=10 or skill("Way of the Steamer")>=550
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 220 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 13 Bundle of Groceries##87557 |condition itemcount(87557)>=10 or skill("Way of the Steamer")>=550
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 13 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
		talk Nam Ironpaw##64395
		buy Sack of Giant Mantis Shrimp##87722 |n
		collect 15 Giant Mantis Shrimp##74857 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74857)>=15 or skill("Way of the Steamer")>=550
		|tip You can also buy these from the Auction House
	step
		#include cooking_fire
		create Shrimp Dumplings##104307,Way of the Steamer,550
	step
		talk Yan Ironpaw##58715
		learn Fire Spirit Salmon##104308 |goto Valley of the Four Winds/0 52.6,51.7
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the Steamer")>=576
		Click here if you want to buy the items from the _Auction House_ |confirm |next "steamer1"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 6 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=6 or skill("Way of the Steamer")>=576
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 60 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 6 Bundle of Groceries##87557 |condition itemcount(87557)>6 or skill("Way of the Steamer")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 6 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "steamer1"
		talk Nam Ironpaw##64395
		buy Sack of Giant Emperor Salmonp##87723 |n
		use Sack of Giant Emperor Salmonp##87723 
		collect 15 Emperor Salmon##74859 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74859)>=25 or skill("Way of the Steamer")>=576
		|tip You can also buy these from the Auction House
	step
		talk Nam Ironpaw##64395
		buy Sack of Scallions##87709 |n
		use Sack of Scallions##87709 
		collect 65 Scallions##74843 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74843)>=125 or skill("Way of the Steamer")>=576
		|tip You can also buy these from the Auction House
	step
		#include cooking_fire
		create Fire Spirit Salmon##104308,Way of the Steamer,576
	step
		talk Yan Ironpaw##58715
		learn Great Banquet of the Steamer##125599 |goto Valley of the Four Winds/0 52.6,51.7
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the Steamer")>=600
		Click here if you want to buy the items from the _Auction House_ |confirm |next "steamer2"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 15 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=5 or skill("Way of the Steamer")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 300 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 15 Bundle of Groceries##87557 |condition itemcount(87557)>=10 or skill("Way of the Steamer")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 15 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "steamer2"
		talk Nam Ironpaw##64395
		buy 3 100 Year Soy Sauce##74853 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74853)>=3 or skill("Way of the Steamer")>=600
	step
		talk Nam Ironpaw##64395
		buy Sack of Emperor Salmon##87723 |n
		use Sack of Emperor Salmon##87723
		collect 20 Emperor Salmon##74859 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74859)>=20 or skill("Way of the Steamer")>=600
		|tip You can also buy these from the Auction House
	step
		talk Nam Ironpaw##64395
		buy Sack of Wildfowl Breasts##87705 |n
		use Emperor Salmon##87705
		collect 20 Wildfowl Breasts##74839 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74839)>=20 or skill("Way of the Steamer")>=600
		|tip You can also buy these from the Auction House
	step
		talk Nam Ironpaw##64395
		buy Sack of Jade Squash##87713 |n
		use Sack of Jade Squash##87713
		collect 20 Jade Squash##74847 |goto Valley of the Four Winds 53.5,51.2 |condition itemcount(74847)>=100 or skill("Way of the Steamer")>=600
		|tip You can also buy these from the Auction House
	step
		#include cooking_fire
		create Great Banquet of the Steamer##125599,Way of the Steamer,600
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Cooking_Pot",[[
		talk Mei Mei Ironpaw##58714
		learn Swirling Mist Soup##104304 |goto Valley of the Four Winds 52.6,51.6
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 8 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=8 or skill("Way of the Pot")>=550
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 100 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 8 Bundle of Groceries##87557 |condition itemcount(87557)>=8 or skill("Way of the Pot")>=550
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 8 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
		talk Nam Ironpaw##64395 
		buy Sack of Jade Lungfish##87721 |n
		use Sack of Jade Lungfish##87721
		collect 25 Jade Lungfish##74856 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74856)>=25 or skill("Way of the Pot")>=550
	step
		create Swirling Mist Soup##104304,Way of the Pot,550
	step
		talk Mei Mei Ironpaw##58714
		learn Braised Turtle##104305 |goto Valley of the Four Winds 52.6,51.6	
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the pot")>=576
		Click here if you want to buy the items from the _Auction House_ |confirm |next "pot1"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 6 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=6 or skill("Way of the Pot")>=575
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 120 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 6 Bundle of Groceries##87557 |condition itemcount(87557)>=6 or skill("Way of the Pot")>=575
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 6 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "pot1"
		talk Nam Ironpaw##64395
		buy Sack of Jade Turtle Meat##87703 |n
		use Sack of Jade Turtle Meat##87703
		collect 13 Turtle Meat##74837 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74837)>=13 or skill("Way of the Pot")>=575
	step
		talk Nam Ironpaw##64395
		buy Sack of Juicycrunch Carrot##87707 |n
		use Sack of Juicycrunch Carrot##87707
		collect 75 Juicycrunch Carrot##74841 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74841)>=75 or skill("Way of the Pot")>=575
	step
		#include cooking_fire
		create Braised Turtle##104305,Way of the Pot,576
	step
		talk Mei Mei Ironpaw##58714
		learn Banquet of the Pot##125597 |goto Valley of the Four Winds 52.6,51.6
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the pot")>=600
		Click here if you want to buy the items from the _Auction House_ |confirm |next "pot2"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 12 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=12 or skill("Way of the Pot")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 240 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 12 Bundle of Groceries##87557 |condition itemcount(87557)>=12 or skill("Way of the Pot")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 12 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "pot2"
		talk Nam Ironpaw##64395
		buy Sack of Reef Octopus##87727 |n
		use Sack of Reef Octopus##87727
		collect 20 Reef Octopus##74864 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74864)>=20 or skill("Way of the Pot")>=600
	step
		buy Sack of Juicycrunch Carrot##87707 |n
		use Sack of Juicycrunch Carrot##87707
		collect 300 Juicycrunch Carrot##74841 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74841)>=300 or skill("Way of the Pot")>=600
		-- Correct
	step
		#include cooking_fire
		create Banquet of the Pot##125597,Way of the Pot,600
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Cooking_Grill",[[
		talk Kol Ironpaw##58712
		learn Charbroiled Tiger Steak##104298 |goto Valley of the Four Winds 52.7,52.0
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 25 Raw Tiger Steak##74833 |condition itemcount(74833)>=25 or skill("Way of the Grill")>=550
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Charbroiled Tiger Steak##104298,Way of the Grill,550
	step
		talk Kol Ironpaw##58712
		learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds 53.0,51.4
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the Grill")>=576
		Click here if you want to buy the items from the _Auction House_ |confirm |next "meat"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 6 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=6 or skill("Way of the Grill")>=576
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 120 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 6 Bundle of Groceries##87557 |condition itemcount(87557)>=6 or skill("Way of the Grill")>=576
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 6 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "meat"
		talk Nam Ironpaw##64395
		buy Sack of Striped Melons##87714 |n
		use  Sack of Striped Melons##87714
		collect 65 Striped Melon##74848 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74848)>=65 or skill("Way of the Grill")>=576
	step
		talk Nam Ironpaw##64395
		buy Sack of Jade Lungfish##87721 |n
		use Sack of Jade Lungfish##87721
		collect 13 Jade Lungfish##74856 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74856)>=13 or skill("Way of the Grill")>=576
	step
		create Eternal Blossom Fish##104299,Way of the Grill,576	
	step
		talk Kol Ironpaw##58712
		learn Great Banquet of the Grill##125142 |goto Valley of the Four Winds 53.4,51.6
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 3 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=3 or skill("Way of the Grill")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 60 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 3 Bundle of Groceries##87557 |condition itemcount(87557)>=3 or skill("Way of the Grill")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 3 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
		talk Nam Ironpaw##64395
		collect 3 100 Year Soy Sauce##74853 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74853)>=3 or skill("Way of the Grill")>=600
	step
		You will need _65 Striped Melon_ as well as _13 Jade Lungfish_
		Click here if you want to farm _Iron Paw Tokens_ |confirm |condition skill("Way of the Grill")>=600
		Click here if you want to buy the items from the _Auction House_ |confirm |next "meat2"
	step
		You will need _11 Ironpaw Tokens_ in order to reach 600 Cooking
		talk Merchant Cheng##64940
		buy 21 Empty Raw Tiger Steak Container##87658 |goto Valley of the Four Winds/0 53.0,52.4 |condition itemcount(87658)>=21 or skill("Way of the Grill")>=600
	step
		kill Primal Stalker##72805+, Crag Stalker##72807+
		map Timeless Isle/0
		path	49.7,48.3	50.0,53.7	50.0,59.4
		path	50.6,64.6	53.5,68.6	58.1,67.2
		path	62.8,59.3	61.5,54.2	57.4,51.9
		path	56.3,45.5
		collect 420 Raw Tiger Steak##74833 |n
		|tip You can also buy these from the Auction House.
		use Empty Raw Tiger Steak Container##87658
		collect 21 Bundle of Groceries##87557 |condition itemcount(87557)>=21 or skill("Way of the Grill")>=600
	step
		talk Nam Ironpaw##64395
		accept Replenishing the Pantry##31535 |condition "incomplete" |or
		earn 21 Ironpaw Tokens##402 |goto Valley of the Four Winds/0 53.5,51.2 |or
	step
	label "meat2"
		talk Nam Ironpaw##64395
		buy Sack of Redbelly Mandarin##87724 |n
		use Sack of Redbelly Mandarin##87724
		collect 60 Redbelly Mandarin##74860 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74860)>=60 or skill("Way of the Grill")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of Raw Crab Meat##87704 |n
		use Sack of Raw Crab Meat##87704 
		collect 60 Raw Crab Meat##74838 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74838)>=60 or skill("Way of the Grill")>=600
		|tip You can also buy these from the Auction House.
	step
		talk Nam Ironpaw##64395
		buy Sack of White Turnips##87716 |n
		use Sack of White Turnips##87716
		collect 300 White Turnip##74850 |goto Valley of the Four Winds/0 53.5,51.2 |condition itemcount(74850)>=300 or skill("Way of the Grill")>=600
		|tip You can also buy these from the Auction House.
	step
		#include cooking_fire
		create Great Banquet of the Grill##125142,Way of the Grill,600
]])


ZygorGuidesViewer:RegisterInclude("Cooking_520-600",[[
		talk Sungshin Ironpaw##64231
		skillmax Cooking,525 |goto Valley of the Four Winds/0 53.6,51.2
	step
		talk Sungshin Ironpaw##64231
		learn Rice Pudding##125122 |goto Valley of the Four Winds/0 53.6,51.2 |condition _G.IsSpellKnown(125122) or skill("Cooking")>=530
	step
		talk Sungshin Ironpaw##64231
		collect 2 Rice##74851 |goto Valley of the Four Winds/0 53.6,51.2 |condition skill("Cooking")>=530
		collect 2 Yak Milk##74852 |goto Valley of the Four Winds/0 53.6,51.2 |condition skill("Cooking")>=530
	step
		create Rice Pudding##125122,Cooking,530
--
		#include "Cooking_PreMasteries"
	step
		Before you continue, _open your cooking window_ so the guide can determine what level your cooking mastery is. |cast Cooking##2550
		confirm always
--
		#include Cooking_Brew
]])


ZygorGuidesViewer:RegisterInclude("Alchemy_500-600",[[
// ----------
// 500-600
// ----------
// TRAIN: Zen Master Alchemy
		step
			#include "trainer_Alchemy"
			skillmax Alchemy,600
			|tip You must be at least level 85.
//GATHER: 150 Green Tea Leaves, 75 Snow Lilies, 75 Fool's Caps
		step
			map Valley of the Four Winds
			path follow loose;loop;ants straight;dist 60
			path	81.4,21.5	76.4,29.2	73.9,29.9
			path	72.3,33.4	70.8,34.4	70.6,41.8
			path	65.1,60.1	57.6,65.6	50.8,58.6
			path	47.4,64.9	46.9,61.3	42.5,54.3
			path	33.6,62.1	28.1,72.7	25.7,78.4
			path	24.4,56.0	21.9,53.9	12.8,44.7
			path	14.3,41.2	14.8,35.8	19.6,34.4
			path	21.4,36.6	22.4,37.8	27.3,49.6
			path	30.7,52.2
			#include "follow_path_herbs"
			collect 150 Green Tea Leaf##72234 |condition skill("Alchemy")>=600
			|tip You can also buy these materials from the Auction House.
		step
			map Dread Wastes
			path follow loose;loop;ants straight;dist 60
			path	40.4,56.5	43.9,59.5	43.1,64.4
			path	40.5,69.7	37.4,69.2	33.0,66.4
			path	33.4,61.6	30.0,56.5	35.5,55.1
			#include follow_path_herbs
			collect 75 Fool's Cap##79011 |condition skill("Alchemy")>=600
			|tip You can also buy these materials from the Auction House.
		step
			map Kun-Lai Summit
			path follow loose;loop;ants straight;dist 60
			path	39.4,77.3	38.0,75.5	40.1,71.8
			path	43.7,64.5	42.9,60.8	41.1,59.3
			path	33.9,54.9	36.0,75.5
			#include follow_path_herbs
			collect 75 Snow Lily##79010 |condition skill("Alchemy")>=600
			|tip You can also buy these materials from the Auction House.
// CREATE: 25 Master Healing Potions, 25 Mantid Elixir, 50 Master Mana Potions
		step
			#include "trainer_Alchemy"
			learn Draught of War##93935 |condition skill("Alchemy")>=600
		step
			#include "vendor_Alchemy"
			buy 150 Crystal Vial##3371 |condition skill("Alchemy")>=600
		step
			#include "trainer_Alchemy"
			learn Master Healing Potion##114752 |condition skill("Alchemy")>=600
		step
			create 25 Master Healing Potion##114752,Alchemy,525
			While you create these, you will discover random Pandaria Recipes. Keep making potions until you discover _Mantid Elixir_ or _Master Mana Potion_.
			learn Mantid Elixir##114755 |or |next "mantid" |condition skill("Alchemy")>=600
			learn Master Mana Potion##114775 |or |next "mana2" |condition skill("Alchemy")>=600
		step
		label "mantid"
			create 25 Mantid Elixir##114755,Alchemy,560
			Create these until you learn one of the recipes listed
			learn Virmen's Bite##114765 |next "virmen" |or |condition skill("Alchemy")>=600
			learn Elixir of Perfection##114762 |next "perfect" |or |condition skill("Alchemy")>=600
			learn Elixir of the Rapids##114759 |next "rapids" |or |condition skill("Alchemy")>=600
			learn Master Mana Potion##114775 |next "mana" |or |condition skill("Alchemy")>=600
		step
		label "virmen"
			create 10 Virmen's Bite##114765,Alchemy,575
			Create these until you learn the following recipe
			learn Master Mana Potion##114775 |next "mana" |condition skill("Alchemy")>=600
		step
		label "perfect"
			create 10 Elixir of Perfection##114762,Alchemy,575
			Create these until you learn the following recipe
			learn Master Mana Potion##114775 |next "mana" |condition skill("Alchemy")>=600
		step
		label "rapids"
			create 10 Elixir of the Rapids##114759,Alchemy,575
			Create these until you learn the following recipe
			learn Master Mana Potion##114775 |next "mana" |condition skill("Alchemy")>=600
		step
		label "mana"
			create 25 Master Mana Potion##114775,Alchemy,600
			next "alch_600"
		step
		label "mana2"
			create 75 Master Mana Potion##114775,Alchemy,600
		step
		label "alch_600"
			Congratulations, you are now a Zen Master Alchemist!
]])

ZygorGuidesViewer:RegisterInclude("Blacksmithing_500-600",[[
// ----------
// 500 - 600
// ----------
	step
		#include "trainer_Blacksmithing"
		skillmax Blacksmithing,600 
	step
		map Krasarang Wilds
		path follow loose;loop;ants straight;dist 50
		path	70.3,9.7	66.1,18.5	64.5,21.5 --Change the first coordinate
		path	61.6,21.9	62.1,27.0	57.5,27.0
		path	52.0,30.2	40.2,27.5	
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8	
		path	15.8,47.6	13.1,52.8	9.8,54.9	
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.6,33.4 
		path	69.2,28.7 --32
		path	74.8,24.3	75.5,35.0	77.7,34.9	
		path	79.8,17.9	85.0,9.9				
		#include "follow_path_mine"
		collect 408 Ghost Iron Ore##72092 |condition skill("Blacksmithing")>=600
	step
		#include "trainer_Mining"
		learn Smelt Ghost Iron##102165 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Smelt Ghost Iron##102165,Mining,200 total |n
		collect 200 Ghost Iron Bar##72096 |condition skill("Blacksmithing")>=600
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Bracers##122581 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Ghost-Forged Bracers##122581,Blacksmithing,5 total |n
		skill Blacksmithing,525
	step
		#include "trainer_Blacksmithing"
		learn Ghostly Skeleton Key##122633 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Ghostly Skeleton Key##122633,Blacksmithing,14 total |n
		skill Blacksmithing,530
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Boots##122582 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Ghost-Forged Boots##122582,Blacksmithing,545
	step
		#include "trainer_Blacksmithing"
		learn Spiritguard Shield##122636 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Spiritguard Shield##122636,Blacksmithing,555
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Helm##122576 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Ghost-Forged Helm##122576,Blacksmithing,565
	step
		#include "trainer_Blacksmithing"
		learn Ghost Shard##122641 |condition skill("Blacksmithing")>=600
	step
		collect 50 Mote of Harmony##89112 |n
		|tip Kill any creature in Pandaria to collect them.
		Combine 10 Motes of Harmony into a Spirit of Harmony |use Mote of Harmony##89112
		collect 5 Spirit of Harmony##76061 |condition skill("Blacksmithing")>=600
	step
		#include "maincity_anvil"
		create Ghost Shard##122641,Blacksmithing,2 total |n
		skill Blacksmithing,575
	step
		talk Cullen Hammerbrow##64085
		buy 1 Plans: Contender's Revenant Bracers##84160 |goto Vale of Eternal Blossoms/3 72.6,49.5 |condition _G.IsSpellKnown(122621) or skill("Blacksmithing")>=600
		only Alliance
	step
		use Plans: Contender's Revenant Bracers##84160
		learn Contender's Revenant Bracers##122621 |condition skill("Blacksmithing")>=600
		only Alliance
	step
		talk Jorunga Stonehoof##64058
		buy 1 Plans: Contender's Revenant Bracers##84160 |goto Shrine of Two Moons 27.0,47.6 |condition _G.IsSpellKnown(122621) or skill("Blacksmithing")>=600
		only Horde
	step
		use Plans: Contender's Revenant Bracers##84160
		learn Contender's Revenant Bracers##122621 |condition skill("Blacksmithing")>=600
		only Horde
	step
		#include "maincity_anvil"
		create Contender's Revenant Bracers##122621,Blacksmithing,12 total |n
		skill Blacksmithing,600
	step
		Congratulations, you are now a Zen Master Blacksmith!
]])

ZygorGuidesViewer:RegisterInclude("Enchanting_500-600",[[
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master Enchanter
	step
		#include "trainer_Enchanting"
		skillmax Enchanting,600
// DISENCHANT: 56 Spirit Dust, 41 Mysterious Essence
	step
		kill Animated Warrior##67473+
		Disenchant any _Uncommon Quality (Green)_ gear with an _Item Level of 364-437_ |cast Disenchant##13262
		collect 92 Spirit Dust##74249 |goto Isle of Thunder 41.7,54.4 |condition skill("Enchanting")>=600
		collect 36 Mysterious Essence##74250 |goto Isle of Thunder 41.7,54.4 |condition skill("Enchanting")>=600
		|tip You can also buy these materials from the Auction House.
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Mastery##104338 |condition skill("Enchanting")>=600
	step
		#include "trainer_Enchanting"
		learn Mysterious Essence##116497 |condition skill("Enchanting")>=600
	step
		create 9 Enchant Bracer - Mastery##104338,Enchanting,527
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Precision##104408 |condition skill("Enchanting")>=600
	step
		create 12 Enchant Boots - Greater Precision##104408,Enchanting,551
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Haste##104407 |condition skill("Enchanting")>=600
	step
		#include "trainer_Enchanting"
		learn Mysterious Diffusion##118237 |condition skill("Enchanting")>=600
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Superior Stamina##104397 |condition skill("Enchanting")>=600
	step
		create 11 Enchant Chest - Superior Stamina##104397,Enchanting,575
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Glorious Stats##104395 |condition skill("Enchanting")>=600
	step
		create 5 Enchant Chest - Glorious Stats##104395,Enchanting,600
	step
		Congratulations, you are now a Zen Master Enchanter!
]])

ZygorGuidesViewer:RegisterInclude("Engineering_500-600",[[
// ----------
// 500 - 600
// ---------- condition skill("Engineering")>=600
// TRAIN: Zen Master Engineer
	step
		#include "trainer_Engineering"
		skillmax Engineering,600
		|tip You must be at least level 80.
	step
		#include "trainer_Engineering"
		learn Ghost Iron Bolts##127113 |condition skill("Engineering")>=600 
	step
		#include "trainer_Engineering"
		learn High-Explosive Gunpowder##127114 |condition skill("Engineering")>=600 
	step
		map Valley of the Four Winds
		path follow loose;loop;ants straight;dist 40
		path	47.4,45.7	47.4,50.8	42.8,54.2
		path	39.2,52.9	34.9,54.1	33.3,58.6
		path	29.4,58.6	27.3,51.5	30.0,44.9
		path	26.9,35.1	28.8,30.3	32.4,28.3
		path	39.4,34.6	35.4,40.2	37.1,44.8
		path	42.7,42.1	46.0,25.1	52.2,25.3
		path	53.8,26.8	57.3,27.6	59.3,32.5
		path	63.7,29.9	63.9,34.5	59.8,42.1
		path	52.3,43.6
		#include "follow_path_mine"
		collect 766 Ghost Iron Ore##72092 |condition skill("Engineering")>=600 
		|tip You can also buy these materials from the Auction House.
	step
		kill Suspicious Snow Pile##59967+
		collect 74 Windwool Cloth##72988 |goto Kun-Lai Summit/8 59.7,75.0 |condition skill("Engineering")>=600
		collect 20 Mote of Harmony##89112 |n |use Mote of Harmony##89112 |goto Kun-Lai Summit/8 59.7,75.0
		|tip Turn 10 Mote of Harmony into a Spirit of Harmony
		collect 2 Spirit of Harmony##76061 |goto Kun-Lai Summit/8 59.7,75.0 |condition skill("Engineering")>=600
		|tip You can also buy these materials from the Auction House.
	step
		#include "maincity_anvil"
		create 383 Ghost Iron Bar##102165,Mining,383 total |condition skill("Engineering")>=600
		|tip You can also buy these materials from the Auction House.
	step	
		#include "maincity_anvil"
		create Ghost Iron Bolts##127113,Engineering,94 total |n
		collect 188 Ghost Iron Bolts##77467 |condition skill("Engineering")>=600
	step
		create High-Explosive Gunpowder##127114,Engineering,101 total |n
		collect 202 High-Explosive Gunpowder##77468 |condition skill("Engineering")>=600
		skill Engineering,550
	step
		#include "trainer_Engineering"
		learn Mist-Piercing Goggles##127130 |condition skill("Engineering")>=600
	step
		#include "trainer_Engineering"
		learn Thermal Anvil##127131 |condition skill("Engineering")>=600
	step
		#include "trainer_Engineering"
		learn Tinker's Kit##131563 |condition skill("Engineering")>=600
	step
		#include "trainer_Engineering"
		learn Ghost Iron Dragonling##127134 |condition skill("Engineering")>=600
	step
		#include "maincity_anvil"
		create Ghost Iron Dragonling##127134,Engineering,575
	step
		#include "maincity_anvil"
		create Tinker's Kit##131563,Engineering,580
	step
		#include "maincity_anvil"
		create Thermal Anvil##127131,Engineering,595
	step
		#include "maincity_anvil"
		create Mist-Piercing Goggles##127130,Engineering,600
	step
		Congratulations, you are now a Zen Master Engineer!
]])

ZygorGuidesViewer:RegisterInclude("FirstAid_525-600",[[
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master First Aid
	step
		#include "trainer_FirstAid"
		skillmax First Aid,600 
		|tip You must be at least level 85.
	step
		#include "trainer_FirstAid"
		learn Windwool Bandage##102697
// GATHER: 280 Embersilk Cloth
	step
		kill Springtail Leaper##57415+, Springtail Gnasher##57413+
		collect 130 Windwool Cloth##72988 |goto Valley of the Four Winds 43.9,38.6 |condition skill("First Aid")>=600
		|tip You can also buy these materials from the Auction House.
// CREATE: 25 Windwool Bandage, 50 Heavy Windwool Bandage
	step
		create Windwool Bandage##102697,First Aid,550
	step
		#include "trainer_FirstAid"
		learn Heavy Windwool Bandage##102698 |condition skill("First Aid")>=600
	step
		create Heavy Embersilk Bandage##102698,First Aid,600
	step
		Congratulations, you're now a Zen Master in First Aid!
]])

ZygorGuidesViewer:RegisterInclude("Herbalism_525-600",[[
// ----------
// 525 - 600
// ----------
// TRAIN: Zen Master
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,600
	step
		map Valley of the Four Winds
		path follow loose;loop;ants straight;dist 40
		path	81.4,21.5	76.4,29.2	71.1,29.5
		path	69.0,31.0	70.8,34.4	70.6,41.8
		path	65.1,60.1	57.6,65.6	50.8,58.6
		path	47.4,64.9	46.9,61.3	42.5,54.3
		path	33.6,62.1	28.1,72.7	25.7,78.4
		path	24.4,56.0	21.9,53.9	12.8,44.7
		path	14.3,41.2	14.8,35.8	19.6,34.4
		#include "follow_path_herbs"
		collect Green Tea Leaf##72234 |n
		skill Herbalism,545
	step
		map Valley of the Four Winds
		path follow loose;loop;ants straight;dist 40
		path	86.4,19.2	88.4,25.7	88.4,31.4
		path	85.3,32.0	85.9,35.5	71.1,54.9
		path	62.4,67.6
		path	59.1,37.3	51.5,32.4	35.3,42.4
		path	30.9,51.4	26.1,45.2	37.9,31.8
		path	41.2,36.0	47.0,28.8	51.9,29.1
		path	57.2,27.3	55.7,33.0
		path	62.9,37.3	64.7,31.4	59.0,28.1
		#include "follow_path_herbs"
		collect Silkweed##72235 |n
		skill Herbalism,590
	step
		map Kun-Lai Summit
		path follow loose;loop;ants straight;dist 40
		path	53.9,58.1	50.9,51.6	49.9,52.4
		path	50.1,57.1	49.6,63.7	48.1,64.3
		path	45.4,65.8	47.6,61.0	47.8,55.6
		#include "follow_path_herbs"
		collect Snow Lily##79010 |n
		skill Herbalism,600
	step
		Congratulations, you are now a Zen Master Herbalist!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Pandarian_Mining_1-600",[[
	step
	label "route"
		Redirecting to Mining 1-50 |next "min_1-50" |only if skill("Mining")<50
		Redirecting to Mining 50-125 |next "min_50-125" |only if skill("Mining")>=50 and skill("Mining")<125
		Redirecting to Mining 125-200 |next "min_125-200" |only if skill("Mining")>=125 and skill("Mining")<200
		Redirecting to Mining 200-275 |next "min_200-275" |only if skill("Mining")>=200 and skill("Mining")<275
		Redirecting to Mining 275-350 |next "min_275-350" |only if skill("Mining")>=275 and skill("Mining")<350
		Redirecting to Mining 350-425 |next "min_350-425" |only if skill("Mining")>=350 and skill("Mining")<425
		Redirecting to Mining 425-500 |next "min_425-500" |only if skill("Mining")>=425 and skill("Mining")<500
		Redirecting to Mining 500-600 |next "min_500-600" |only if skill("Mining")>=500 and skill("Mining")<600
		Redirecting to Mining finale |next "min_600" |only if default

// ----------
// 1 - 50
// ----------
	step
	title + Mining 1-50
	label "min_1-50"
		#include "trainer_Mining"
		skillmax Mining,75 |tip You must be at least level 5.
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,50
// ----------
// 50 - 125
// ----------
	step
	title + Mining 50-125
	label "min_50-125"
		#include "trainer_Mining"
		skillmax Mining,150
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,125
// ----------
// 125 - 200
// ----------
	step
	title + Mining 125-200
	label "min_125-200"
		#include "trainer_Mining"
		skillmax Mining,225
	step
	label "farm"
		Skipping next part of farming |next "farm2" |only if step:Find("+farming"):IsComplete()
		Proceeding to farm |next |only if default
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,200
// ----------
// 200 - 275
// ----------
	step
	title + Mining 200-275
	label "min_200-275"
		#include "trainer_Mining"
		skillmax Mining,300
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,275
// ----------
// 275 - 350
// ----------
	step
	title + Mining 275-350
	label "min_275-350"
		#include "trainer_Mining"
		skillmax Mining,375
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,350
// ----------
// 350 - 425
// ----------
	step
	title + Mining 350-425
	label "min_350-425"
		#include "trainer_Mining"
		skillmax Mining,450
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,425
// ----------
// 425 - 500
// ----------
	step
	title + Mining 425-500
	label "min_425-500"
		#include "trainer_Mining"
		skillmax Mining,525
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,500
// ----------
// 500 - 600
// ----------
	step
	title + Mining (500-600)
	label	"min_500-600"
		#include "trainer_Mining"
		skillmax Mining,600
		learn Smelt Ghost Iron##102165
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	31.0,19.9	31.5,15.4	35.9,17.0
		path	35.5,11.8	38.9,8.0	56.3,29.3
		path	51.3,51.7	65.3,78.7	64.4,81.9
		path	58.6,74.2	56.0,76.4	54.0,81.0
		path	46.6,92.8	44.2,87.8	41.5,85.8
		path	42.9,79.8	43.8,75.4	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		path	31.9,24.8
		#include "follow_path_mine"
		skill Mining,600
	step
	label "min_600"
		Congratulations, you are now a level 600 Miner!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Pandarian_Herbalism_1-600",[[
	step
	label "route"
		Redirecting to Herbalism 1-70 |next "herb_1-70" |only if skill("Herbalism")<70
		Redirecting to Herbalism 70-150 |next "herb_70-150" |only if skill("Herbalism")>=70 and skill("Herbalism")<150
		Redirecting to Herbalism 150-200 |next "herb_150-200" |only if skill("Herbalism")>=150 and skill("Herbalism")<200
		Redirecting to Herbalism 200-285 |next "herb_200-285" |only if skill("Herbalism")>=225 and skill("Herbalism")<285
		Redirecting to Herbalism 285-350 |next "herb_285-375" |only if skill("Herbalism")>=285 and skill("Herbalism")<350
		Redirecting to Herbalism 350-425 |next "herb_350-425" |only if skill("Herbalism")>=350 and skill("Herbalism")<425
		Redirecting to Herbalism 425-525 |next "herb_425-525" |only if skill("Herbalism")>=425 and skill("Herbalism")<525
		Redirecting to Herbalism 525-600 |next "herb_525-600" |only if skill("Herbalism")>=525 and skill("Herbalism")<600
		Redirecting to Herbalism finale |next "herb_600" |only if default
// ----------
// 1 - 70
// ----------
// TRAIN: Apprentice Herbalism
	step
	title + Herbalism (1-70)
	label	"herb_1-70"
		#include "trainer_Herbalism"
		skillmax Herbalism,75
// GATHER: (Herbalism 70)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,70
// ----------
// 70 - 150
// ----------
// TRAIN: Journeyman Herbalism
	step
	title + Herbalism (70-150)
	label "herb_70-150"
		#include "trainer_Herbalism"
		skillmax Herbalism,150
// GATHER: (Herbalism 150)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,150
// ----------
// 150 - 200
// ----------
// TRAIN: Expert Herbalism
	step
	title + Herbalism (150-200)
	label	"herb_150-200"
		#include "trainer_Herbalism"
		skillmax Herbalism,225
// GATHER: (Herbalism 200)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,200
// ----------
// 200 - 285
// ----------
// TRAIN: Artisan Herbalism
	step
	title + Herbalism (200-285)
	label	"herb_200-285"
		#include "trainer_Herbalism"
		skillmax Herbalism,300
// GATHER: (Herbalism 285)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,285
// ----------
// 285 - 375
// ----------
// TRAIN: Master Herbalism
	step
	title + Herbalism (285-375)
	label	"herb_285-375"
		#include "trainer_Herbalism"
		skillmax Herbalism,375
// GATHER: (Herbalism 375)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,375
// ----------
// 375 - 425
// ----------
// TRAIN: Grand Master Herbalism
	step
	title + Herbalism (350-425)
	label	"herb_375_425"
		#include "trainer_Herbalism"
		skillmax Herbalism,450
// GATHER: (Herbalism 400), Sholazar Basin (Herbalism 425)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master
	step
	title + Herbalism 425-525
	label "herb_425-525"
		#include "trainer_Herbalism"
		skillmax Herbalism,525
// GATHER: (Herbalism 525)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,525
// ----------
// 500 - 600
// ----------
// TRAIN: Illustrious Grand Master
	step
	title + Herbalism 500-600
	label "herb_500-600"
		#include "trainer_Herbalism"
		skillmax Herbalism,600
// GATHER: (Herbalism 475), Deepholm (Herbalism 500), Uldum (Herbalism 525)
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.5,10.4	33.0,8.7	32.7,6.0
		path	34.9,7.5	38.7,8.9	39.9,11.5
		path	39.4,14.0	49.9,19.7	53.6,49.7
		path	68.7,88.3	62.6,79.9	59.9,76.7
		path	56.8,76.0	54.0,78.1	53.9,81.4
		path	53.0,85.7	48.8,94.1	49.6,81.5
		path	45.8,77.6	43.9,74.8	41.3,73.3	
		path	40.2,67.7	37.0,54.2	42.3,39.3
		path	27.5,26.7	29.5,26.2	31.3,23.9
		path	29.8,21.0	30.8,17.4
		#include "follow_path_herbs"
		skill Herbalism,600
	step
	label "herb_600"
		Congratulations, you are now a level 600 Herbalist!
]])

ZygorGuidesViewer:RegisterInclude("Inscription_500-600",[[
// ----------
// 500-600
// ----------
// TRAIN: Zen Master Inscription
	step
		#include "trainer_Inscription"
		skillmax Inscription,600
		|tip You must be at least level 85.
	step
		#include "trainer_Inscription"
		learn Ink of Dreams##111645 |condition skill("Inscription")>=600
	step
		#include "vendor_Inscription"
		buy 68 Light Parchment##39354 |condition skill("Inscription")>=600
//GATHER: 130 Shadow Pigment
	step
		#include "MoP_Herb1"
		#include "follow_path_herbs"
		collect Green Tea leaf##72234 |n
		collect Silkweed##72235 |n
		Gather around _{_G.max(0 , (250-itemcount(72234,72235)))}_ herbs in stacks of 5
		Mill the herbs you gathered |cast Milling##51005
		collect 136 Shadow Pigment##79251 |condition skill("Inscription")>=600
//CREATE
	step
		create 68 Ink of Dreams##111645,Inscription,68 total |n
		create 12 Starlight Ink##111646 |condition skill("Inscription")>=600
		skill Inscription,545
	step
		create 22 Research: Ink of Dreams##165467,Inscription,596
	step
		#include "trainer_Inscription"
		learn Greater Tiger Fang Inscription##121192 |condition skill("Inscription")>=600
	step
		create 2 Greater Tiger Fang Inscription##121192,Inscription,600
	step
		Congratulations, you are now a Zen Master Inscriptionist!
]])

ZygorGuidesViewer:RegisterInclude("Jewelcrafting_500-600",[[
// ----------
// 500 - 600
// ----------
// TRAIN: Zen Master Jewelcrafting
	step
		#include "trainer_Jewelcrafting"
		skillmax Jewelcrafting,600 	
	step
		map Krasarang Wilds
		path follow loose;loop;ants straight;dist 40
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5	
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8	
		path	15.8,47.6	13.1,52.8	9.8,54.9	
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9	
		path	79.8,17.9	82.3,17.8	85.3,21.4				
		path	86.8,26.6	88.2,23.8	85.0,9.9
		#include "follow_path_mine"
		collect 5 Lapis Lazuli##76133 |cast Prospecting##31252 |condition skill("Jewelcrafting")>=600
		collect 5 Sunstone##76134 |cast Prospecting##31252 |condition skill("Jewelcrafting")>=600
		collect 5 Tiger Opal##76130 |cast Prospecting##31252 |condition skill("Jewelcrafting")>=600
		collect 5 Alexandrite##76137|cast Prospecting##31252 |condition skill("Jewelcrafting")>=600
		collect 5 Pandarian Garnet##76136 |cast Prospecting##31252 |condition skill("Jewelcrafting")>=600
		collect 5 Roguestone##76135 |cast Prospecting##31252 |condition skill("Jewelcrafting")>=600
		Gather _{_G.max(0 , (58-itemcount(76133,76134,76130,76137,76136,76135)))}_ gems 
		You will also need 5 additional gems of each kind listed above
		collect 13 Primordial Ruby##76131 |condition skill("Jewelcrafting")>=600 |cast Prospecting##31252
	step
		#include "trainer_Jewelcrafting"
		learn Ornate Band##122661 |condition skill("Jewelcrafting")>=600
	step	
		#include "vendor_Jewelcrafting"
		buy 9 Jeweler's Setting##52188 |condition skill("Jewelcrafting")>=600
	step
		create Ornate Band##122661,Jewelcrafting,512
	step
		#include "trainer_Jewelcrafting"
		learn Shadowfire Necklace##122662 |condition skill("Jewelcrafting")>=600
	step
		create Shadowfire Necklace##122662,Jewelcrafting,527
	step
		#include "trainer_Jewelcrafting"
		learn Artful Tiger Opal##107646 |condition skill("Jewelcrafting")>=600
		learn Etched Roguestone##107630 |condition skill("Jewelcrafting")>=600
		learn Lightning Alexandrite##107604 |condition skill("Jewelcrafting")>=600
		learn Rigid Lapis Lazuli##107617 |condition skill("Jewelcrafting")>=600
	step
		Create any of the following:
		create Artful Tiger Opal##107646,Jewelcrafting,530
		create Etched Roguestone##107630,Jewelcrafting,530
		create Lightning Alexandrite##107604,Jewelcrafting,530
		create Rigid Lapis Lazuli##107617,Jewelcrafting,530
	step
		#include "trainer_Jewelcrafting"
		learn Delicate Pandarian Garnet##107624 |condition skill("Jewelcrafting")>=600
	step
		Create any of the following:
		create Artful Tiger Opal##107646,Jewelcrafting,535
		create Etched Roguestone##107630,Jewelcrafting,535
		create Lightning Alexandrite##107604,Jewelcrafting,535
		create Rigid Lapis Lazuli##107617,Jewelcrafting,535
		create Delicate Pandarian Garnet##107624,Jewelcrafting,535
	step
		#include "trainer_Jewelcrafting"
		learn Fractured Sunstone##107640 |condition skill("Jewelcrafting")>=600
	step
		Create any of the following:
		create Artful Tiger Opal##107646,Jewelcrafting,580
		create Etched Roguestone##107630,Jewelcrafting,580
		create Lightning Alexandrite##107604,Jewelcrafting,580
		create Rigid Lapis Lazuli##107617,Jewelcrafting,580
		create Delicate Pandarian Garnet##107624,Jewelcrafting,580
		create Fractured Sunstone##107640,Jewelcrafting,580
	step
		create Primordial Ruby##131686,Jewelcrafting,580
	step
		The research you performed in the previous step has given you a new pattern for Yellow Gems. Create that Yellow gem until you are 600 Jewelcrafting
		skill Jewelcrafting,600
	step
		Congratulations, you are now a Zen Master Jewelcrafter!
]])

ZygorGuidesViewer:RegisterInclude("Skinning_525-600",[[
	step
		#include trainer_Skinning
		skillmax Skinning,600
	step
		map Townlong Steppes
		path follow loose;loop;ants straight;dist 40
		path	58.6,52.8	59.2,57.7	56.9,66.3
		path	54.3,66.3	53.5,65.1	51.3,62.3
		path	50.9,56.8	52.6,54.3	54.7,50.4
		Kill any beasts you find in the area.
		skill Skinning,600
	step
	label	"skn_600"
		Congratulations, you are now a Zen Master Skinner!	
]])

ZygorGuidesViewer:RegisterInclude("Mining_525-600",[[
	step
		#include "trainer_Mining"
		skillmax Mining,600
	step
		#include "trainer_Mining"
		learn Smelt Ghost Iron##102165
	step
		map Krasarang Wilds
		path follow loose;loop;ants straight;dist 40
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8
		path	15.8,47.6	13.1,52.8	9.8,54.9
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9
		path	79.8,17.9	82.3,17.8	85.3,21.4
		path	86.8,26.6	88.2,23.8	85.0,9.9
		#include "follow_path_mine"
		skill Mining,600
	step
	label "min_600"
		Congratulations, you are now a level 600 Miner!
]])

ZygorGuidesViewer:RegisterInclude("MiningSmelting_500-600",[[
	step
		#include trainer_Mining
		skillmax Mining,600
	step
		#include trainer_Mining
		learn Smelt Ghost Iron##102165
	step
		map Krasarang Wilds
		path follow loose;loop;ants straight;dist 60
		path	70.3,9.7	66.1,18.5	64.5,21.5
		path	61.6,21.9	52.0,30.2	40.2,27.5	
		path	38.0,28.1	33.4,32.1	33.0,28.9
		path	28.2,37.9	18.4,33.3	14.8,41.8	
		path	15.8,47.6	13.1,52.8	9.8,54.9	
		path	13.6,64.2	32.3,80.1	35.6,69.0
		path	39.5,77.9	41.7,89.1	46.3,94.4
		path	48.3,92.3	50.0,90.5	45.6,68.2
		path	44.5,65.3	48.3,45.4	55.9,34.3
		path	58.6,36.7	65.1,35.6	69.2,28.7
		path	74.8,24.3	75.5,35.0	77.7,34.9	
		path	79.8,17.9	82.3,17.8	85.3,21.4				
		path	86.8,26.6	88.2,23.8	85.0,9.9				
		#include "follow_path_mine"
		skill Mining,600
	step
		Congratulations, you are now a level 600 Miner!		
]])

ZygorGuidesViewer:RegisterInclude("Leatherworking_500-600",[[
// ----------
// 500 - 600
// ----------
// TRAIN:	Zen Master Leatherworking
	step
		#include "trainer_Leatherworking"
		skillmax Leatherworking,600 
		|tip You must be at least level 85.
// GATHER:	500 Exotic Leather, 65 Sha-Touched Leather
	step
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	30.1,12.6	30.2,11.3	30.8,11.1
		path	31.0,9.7	32.3,10.4	32.0,13.1
		path	31.1,15.9
		kill Sha-Infested Prowler##66668+
		collect 125 Sha-Touched Leather##72162 |condition skill("Leatherworking")>=600
		|tip You will need 470 Skinning to effectively gather these.
	step
		map Dread Wastes
		path follow loose;loop;ants straight;dist 40
		path	27.2,26.0	28.0,27.6	27.5,30.2
		path	27.0,33.4	27.1,37.2	28.1,42.9
		path	30.9,51.7	28.1,50.1	26.3,47.3
		path	26.1,43.4	25.4,38.4	25.6,34.6
		path	24.3,28.1
		kill Onyx Venomtail##63586+, Dread Scarab##63587+, Ruby Venomtail##63588+
		collect 695 Exotic Leather##72120 |condition skill("Leatherworking")>=600 
		|tip You will need 590 Skinning to effectively gather these.
		collect 10 Mote of Harmony##89112 |n
		Right-Click the _Motes of Harmony_ in your bags to create a _Spirit of Harmony_.
		collect 1 Spirit of Harmony##76061 |condition skill("Leatherworking")>=600 
		
// CREATE:	13 Exotic Leather, 9 Sha Armor Kit, 15 Misthide Bracers, 10 Misthide Gloves, 40 Contender's Leather Bracers
	step
		#include "trainer_Leatherworking"
		learn Exotic Leather##124627 |condition skill("Leatherworking")>=600 
	step
		create Exotic Leather##124627,Leatherworking,525
	step
		#include "trainer_Leatherworking"
		learn Sha Armor Kit##124628 |condition skill("Leatherworking")>=600 
	step
		create Sha Armor Kit##124628,Leatherworking,535
	step
		#include "trainer_Leatherworking"
		learn Misthide Belt##124578 |condition skill("Leatherworking")>=600 
	step
		create Misthide Belt##124578,Leatherworking,550
	step
		#include "trainer_Leatherworking"
		learn Misthide Gloves##124574 |condition skill("Leatherworking")>=600 
	step
		create Misthide Gloves##124574,Leatherworking,560
	step
		#include "pandaria_leatherworker"
		buy 1 Pattern: Contender's Leather Bracers##86250 |condition _G.IsSpellKnown(124608) or skill("Leatherworking")>=600 
	step
		use Pattern: Contender's Leather Bracers##86250
		learn Contender's Leather Bracers##124608 |condition skill("Leatherworking")>=600 
	step
		create Contender's Leather Bracers##124608,Leatherworking,600
	step
		Congratulations, you are now a Zen Master Leatherworker!
]])

ZygorGuidesViewer:RegisterInclude("Tailoring_500-600",[[
	step
		#include "trainer_Tailoring"
		skillmax Tailoring,600 |tip You must be at least level 80.
	step
		#include "trainer_Tailoring"
		learn Bolt of Windwool Cloth##125551 |condition skill("Tailoring")>=600	
	step
		map Townlong Steppes/0 
		path follow loose;loop;ants straight;dist 60
		path	26.2,40.7	26.0,45.4	24.2,48.9
		path	23.4,52.3	21.4,54.3	18.4,50.7
		path	17.8,46.0	17.5,41.8	20.9,40.3
		Kill the Sra'thik mobs along the path
		collect 345 Windwool Cloth##72988 |condition skill("Tailoring")>=600	
		collect 10 Mote of Harmony##89112 |n
		Combine 10 Motes of Harmony into a Spirit of Harmony |use Mote of Harmony##89112
		collect 1 Spirit of Harmony##76061 |condition skill("Tailoring")>=600
		modelnpc Sra'thik Cacophyte##63680
		modelnpc Sra'thik Drone##63677
		modelnpc Sra'thik Swiftwing##63683
		modelnpc Sra'thik Swarm-Leader##63685
		modelnpc Sra'thik Regenerator##63681
	step	
		create Bolt of Windwool Cloth##125551,Tailoring,69 total |n
		collect 69 Bolt of Windwool Cloth##82441 |condition skill("Tailoring")>=600	
		skill Tailoring,535
	step
		#include "trainer_Tailoring"
		learn Pearlescent Spellthread##125552 |condition skill("Tailoring")>=600
	step
		create 5 Pearlescent Spellthread##125552,Tailoring,555
	step
		#include "trainer_Tailoring"
		learn Windwool Hood##125523 |condition skill("Tailoring")>=600
	step	
		create 5 Windwool Hood##125523,Tailoring,580
	step
		talk Raishen the Needle##64052
		buy Pattern: Contender's Satin Amice##86361 |goto Vale of Eternal Blossoms/3 64.7,44.2 |condition _G.IsSpellKnown(125540) or skill("Tailoring")>=600
		only Alliance
	step
		use Pattern: Contender's Satin Amice##86361
		learn Contender's Satin Amice##125540 |condition skill("Tailoring")>=600 
		only Alliance
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Amice##86361 |goto Shrine of Two Moons/1 32.5,54.0 |condition _G.IsSpellKnown(125540) or skill("Tailoring")>=600
		only Alliance
		only Horde
	step
		use Pattern: Contender's Satin Amice##86361
		learn Contender's Satin Amice##125540 |condition skill("Tailoring")>=600 
		only Horde
	step
		create Contender's Satin Amice##125540,Tailoring,600
	step
	label "tl_600"
		Congratulations! You have leveled Tailoring to 600!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Mining_Herbalism_525-600",[[
// ----------
// 525 - 600
// ----------
	step
	title + Mining and Herbalism 525-600
	label	"minherb_525-600"
		#include "trainer_Mining"
		skillmax Mining,600
		learn Smelt Ghost Iron##102165
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,600
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,600
		skill Herbalism,600
	step
	label "minherb_600"
		Congratulations, you are now a level 600 Miner and Herbalist!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Pandarian_Mining_Herbalism_1-600",[[
	step
	label "route"
		Redirecting to Mining and Herbalism 1-50 |next "minherb_1-50" |only if skill("Mining")<50 or skill("Herbalism")<50
		Redirecting to Mining and Herbalism 50-125 |next "minherb_50-125" |only if (skill("Mining")>=50 and skill("Mining")<125) or (skill("Herbalism")>=50 and skill("Herbalism")<125)
		Redirecting to Mining and Herbalism 125-200 |next "minherb_125-200" |only if (skill("Mining")>=125 and skill("Mining")<200) or (skill("Herbalism")>=125 and skill("Herbalism")<200)
		Redirecting to Mining and Herbalism 200-275 |next "minherb_200-275" |only if (skill("Mining")>=200 and skill("Mining")<275) or (skill("Herbalism")>=200 and skill("Herbalism")<275)
		Redirecting to Mining and Herbalism 275-350 |next "minherb_275-350" |only if (skill("Mining")>=275 and skill("Mining")<350) or (skill("Herbalism")>=275 and skill("Herbalism")<350)
		Redirecting to Mining and Herbalism 350-425 |next "minherb_350-425" |only if (skill("Mining")>=350 and skill("Mining")<425) or (skill("Herbalism")>=350 and skill("Herbalism")<425)
		Redirecting to Mining and Herbalism 425-500 |next "minherb_425-500" |only if (skill("Mining")>=425 and skill("Mining")<500) or (skill("Herbalism")>=425 and skill("Herbalism")<500)
		Redirecting to Mining and Herbalism 500-600 |next "minherb_500-600" |only if (skill("Mining")>=500 and skill("Mining")<600) or (skill("Herbalism")>=500 and skill("Herbalism")<600)
		Redirecting to Mining and Herbalism finale |next "minherb_600" |only if default
// ----------
// 1 - 50
// ----------
	step
	title + Mining and Herbalism 1-50
	label "minherb_1-50"
		#include "trainer_Mining"
		skillmax Mining,75
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,75
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,50
		skill Herbalism,50
// ----------
// 50 - 125
// ----------
	step
	title + Mining and Herbalism 50-125
	label "minherb_50-125"
		#include "trainer_Mining"
		skillmax Mining,150
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,150
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,125
		skill Herbalism,125
// ----------
// 125 - 200
// ----------
	step
	title + Mining and Herbalism 125-200
	label "minherb_125-200"
		#include "trainer_Mining"
		skillmax Mining,225
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,225
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,200
		skill Herbalism,200
// ----------
// 200 - 275
// ----------
	step
	title + Mining and Herbalism 200-275
	label "minherb_200-275"
		#include "trainer_Mining"
		skillmax Mining,300
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,300
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,275
		skill Herbalism,275
// ----------
// 275 - 350
// ----------
	step
	title + Mining and Herbalism 275-350
	label "minherb_275-350"
		#include "trainer_Mining"
		skillmax Mining,375
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,375
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,350
		skill Herbalism,350
// ----------
// 350 - 425
// ----------
	step
	title + Mining and Herbalism 350-425
	label "minherb_350-425"
		#include "trainer_Mining"
		skillmax Mining,450
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,450
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,425
		skill Herbalism,425
// ----------
// 425 - 500
// ----------
	step
	title + Mining and Herbalism 425-500
	label "minherb_425-500"
		#include "trainer_Mining"
		skillmax Mining,525
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,525
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,500
		skill Herbalism,500
// ----------
// 500 - 600
// ----------
	step
	title + Mining and Herbalism 500-600
	label	"minherb_500-600"
		#include "trainer_Mining"
		skillmax Mining,600
		learn Smelt Ghost Iron##102165
	step
		#include "trainer_Herbalism"
		skillmax Herbalism,600
	step
	label	"farming"
		map The Jade Forest
		path follow loose;loop;ants straight;dist 40
		path	29.3,8.5	34.9,17.8	38.5,8.0
		path	56.3,29.3	51.3,51.7	69.1,85.8
		path	54.0,81.0	44.9,94.5	38.9,62.7
		path	33.6,42.5	42.8,39.8	25.0,26.0
		#include "follow_path_mine"
		skill Mining,600
		skill Herbalism,600
	step
	label "minherb_600"
		Congratulations, you are now a level 600 Miner and Herbalist!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Bags_Collect_Fishing_Alliance",[[
//ROUTER
//OTHERWORLDLY BAG
	step
	label "otherworldly"
		#include "auctioneer"
		buy 1 Otherworldly Bag##54445 |next "menu"
		Click here if you wish to make this bag yourself. |confirm |next "auctionother" 
		|tip This bag will require _Tailoring_ to create. |only if skill("Tailoring")>=480
	step
	label "auctionother"
		#include "auctioneer"
		buy 9 Bolt of Embersilk Cloth##53643
		buy 8 Hypnotic Dust##52555
		buy 4 Greater Cosmic Essence##34055
		buy 1 Dream Shard##34052
		|next "makeother"
		Click here if you wish to farm the _Bolts of Embersilk Cloth_ yourself. |confirm |next "embersilkother"
		Click here if you wish to farm the _Enchanting Materials_ yourself. |confirm |next "enchmatsother"
	step
	label "embersilkother"
		map Deepholm/0
		path follow loose;loop off;ants straight;dist 40
		path	68.0,25.5	68.9,24.7	70.6,24.7
		path	72.6,26.9	73.1,28.5	74.6,27.7
		from Verlok Pillartumbler##43513+
		collect 45 Embersilk Cloth##53010
		|next "auctionother"
	step
	label "enchantmatsother"
		Run through the Vortex Pinnacle dungeon, killing all mobs along the way.
		Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
		collect 8 Hypnotic Dust##52555 |goto The Vortex Pinnacle 54.12,16.81
	step
		Run through the Halls of Lightning dungeon, killing all mobs along the way.
		Disenchant any uncommon quality (green) armor and weapons with an item level of 130-151. |cast Disenchant##13262
		collect 4 Greater Cosmic Essence##34055 |goto Halls of Lightning 7.38,53.81
		Disenchant any uncommon quality (green) armor and weapons with an item level of 130-151. |cast Disenchant##13262
		collect 1 Dream Shard##34052 |goto Halls of Lightning 7.38,53.81
		|next "auctionother"
	step
	label "makeother"
		#include "trainer_Tailoring"
		learn Otherworldly Bag##75265
	step
		create 1 Otherworldly Bag##75265,Tailoring,1 total
		|next "menu"
//MYSTERIOUS BAG
	step
	label "mysterybag"
		#include "auctioneer"
		buy 1 Mysterious Bag##41598
		Click here if you wish to make this bag yourself. |confirm |next "auctionmystery" 
		|tip This bag will require _Tailoring_ to create. |only if skill("Tailoring")>=440
	step
	label "auctionmystery"
		#include "auctioneer"
		buy 4 Spellweave##41595
		buy 2 Moonshroud##41594
]])