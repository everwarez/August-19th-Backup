if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



ZygorGuidesViewer:RegisterInclude("Alliance_Battlepet_Quests",[[
		talk Audrey Burnhep##63596
		Learn the Battle Pet Training ability |learnspell Revive Battle Pets##125439 |goto Stormwind City/0 69.48,25.15
	step
		talk Audrey Burnhep##63596
		learnpet Snowshoe Rabbit##7560 |goto 69.48,25.15
		|tip Train it from her.	
	step
		talk Audrey Burnhep##63596
		accept Learning the Ropes##31591 |goto 69.48,25.15
	step
		click Rabbit##61080
		|tip It could also be a Squirrel.
		Win a Pet Battle |q 31591/1 |goto 70.1,23.4
		|tip Open your Pet Journal with "Shift+P" and assign pets to your battle slots if you can't start the battle.
	step
		talk Audrey Burnhep##63596
		turnin Learning the Ropes##31591 |goto 69.48,25.15
		accept On The Mend##31592 |goto 69.48,25.15
	step
		talk Jenova Stoneshield##11069
		Tell her: _"I'd like to heal and revive my battle pets."_
		Heal your Battle Pets |q 31592/1 |goto 67.3,37.7
	step
		talk Audrey Burnhep##63596
		turnin On The Mend##31592 |goto 69.48,25.15
		accept Level Up!##31821 |goto 69.48,25.15
	step
		click Rabbit##61080
		|tip It could also be a Squirrel.
		Raise a Battle Pet to level 3 |q 31821/1 |goto 70.1,23.4
		|tip Keep battling critters around this area to accomplish this.
	step
		_Click the quest completion box that appears_
		accept Audrey Burnhep##32008
	step
		talk Audrey Burnhep##63596
		turnin Audrey Burnhep##32008 |goto 69.48,25.15
		accept Julia, The Pet Tamer##31316 |goto 69.48,25.15
	step
		talk Julia Stevens##64330
		Defeat Julia Stevens |q 31316/1 |goto Elwynn Forest/0 41.66,83.67
		|tip Julia's pet team consists of level 2 Beast battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Julia Stevens##64330
		turnin Julia, The Pet Tamer##31316 |goto 41.66,83.67
		accept Old MacDonald##31724 |goto 41.66,83.67
	step
		talk Old MacDonald##65648
		Defeat Old MacDonald |q 31724/1 |goto Westfall/0 60.86,18.49
		|tip MacDonald's pet team consists of level 3 Mechanical, Flying, and Critter battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Old MacDonald##65648
		turnin Old MacDonald##31724 |goto 60.86,18.49
		accept Lindsay##31725 |goto 60.86,18.49
	step
		talk Lindsay##65651
		Defeat Lindsay |q 31725/1 |goto Redridge Mountains/0 33.30,52.58
		|tip Lindsay's pet team consists of level 5 Critter battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Lindsay##65651
		turnin Lindsay##31725 |goto 33.30,52.58
		accept Eric Davidson##31726 |goto 33.30,52.58
	step
		talk Eric Davidson##65655
		Defeat Eric Davidson |q 31726/1 |goto Duskwood/0 19.88,44.62
		|tip Eric's pet team consists of level 7 Beast battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Eric Davidson##65655
		turnin Eric Davidson##31726 |goto 19.88,44.62
		accept Steven Lisbane##31729 |goto 19.88,44.62
	step
		talk Steven Lisbane##63194
		Defeat Steven Lisbane |q 31729/1 |goto Northern Stranglethorn/0 46.01,40.45
		|tip Steven's pet team consists of level 9 Beast and Magic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Steven Lisbane##63194
		turnin Steven Lisbane##31729 |goto 46.01,40.45
		accept Bill Buckler##31728 |goto 46.01,40.45
	step
		talk Bill Buckler##65656
		Defeat Bill Buckler |q 31728/1 |goto The Cape of Stranglethorn/0 51.46,73.38
		|tip Bill's pet team consists of level 11 Humanoid and Flying battle pets.
		|tip Undead battle pets are strong against Humanoid battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Steven Lisbane##63194
		turnin Bill Buckler##31728 |goto 51.46,73.38
		accept A Tamer's Homecoming##31917 |goto 51.46,73.38
	step
		talk Audrey Burnhep##63596
		turnin A Tamer's Homecoming##31917 |goto Stormwind City/0 69.48,25.15
		accept Battle Pet Tamers: Eastern Kingdoms##31902 |goto 69.48,25.15
	step
		talk David Kosse##66478
		Defeat David Kosse |q 31902/1 |goto The Hinterlands/0 62.98,54.59
		|tip David's pet team consists of level 13 Critter, Beast, and Magic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Deiza Plaguehorn##66512
		Defeat Deiza Plaguehorn |q 31902/2 |goto Eastern Plaguelands/0 66.96,52.42
		|tip Deiza's pet team consists of level 14 Beast and Undead battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Kortas Darkhammer##66515
		Defeat Kortas Darkhammer |q 31902/3 |goto Searing Gorge/0 35.31,27.75
		|tip Kortas' pet team consists of level 15 Dragonkin battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Everessa##66518
		Defeat Everessa |q 31902/4 |goto Swamp of Sorrows/0 76.81,41.50
		|tip Everessa's pet team consists of level 16 Flying, Aquatic, and Beast battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Durin Darkhammer##66520
		Defeat Durin Darkhammer |q 31902/5 |goto Burning Steppes/0 25.54,47.50
		|tip Durin's pet team consists of level 17 Flying, Critter, and Elemental battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Eastern Kingdoms##31902 |goto 66.96,52.42
		accept Grand Master Lydia Accoste##31915 |goto 66.96,52.42
	step
		talk Lydia Accoste##66522
		Defeat Lydia Accoste |q 31915/1 |goto Deadwind Pass/0 40.05,76.45
		|tip Lydia's pet team consists of level 19 Elemental and Undead battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Lydia Accoste##66522
		turnin Grand Master Lydia Accoste##31915 |goto 40.05,76.45
		accept The Returning Champion##31976 |goto 40.05,76.45 |only if not completedq(31977) and not completedq(31976)
	step
		talk Audrey Burnhep##63596
		turnin The Returning Champion##31976 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31977) and not completedq(31976)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Kalimdor##31889 |goto Stormwind City/0 69.48,25.15
	step
		talk Traitor Gluk##66352
		Defeat Traitor Gluk |q 31889/1 |goto Feralas/0 59.74,49.65
		|tip Gluk's pet team consists of level 13 Dragonkin, Beast, and Critter battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Grazzle the Great ##66436
		Defeat Grazzle the Great  |q 31889/2 |goto Dustwallow Marsh/0 53.85,74.88
		|tip Grazzle's pet team consists of level 14 Dragonkin battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Kela Grimtotem##66452
		Defeat Kela Grimtotem |q 31889/3 |goto Thousand Needles/0 31.87,32.94
		|tip Kela's pet team consists of level 15 Critter and Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Zoltan##66442
		Defeat Zoltan |q 31889/4 |goto Felwood/0 39.95,56.57
		|tip Zoltan's pet team consists of level 16 Mechanical and Magic battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Elena Flutterfly##66412
		Defeat Elena Flutterfly |q 31889/5 |goto Moonglade/0 46.14,60.26
		|tip Elena's pet team consists of level 17 Dragonkin, Magic, and Flying battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat her in battle pet combat.
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Kalimdor##31889 |goto 46.14,60.26
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Outland##31919 |goto Stormwind City/0 69.48,25.15
	step
		talk Nicki Tinytech##66550
		accept Nicki Tinytech##31922 |goto Hellfire Peninsula/0 64.31,49.30 |only if completedq(31920)
		Defeat Nicki Tinytech |q 31919/1 |goto Hellfire Peninsula/0 64.31,49.30
		|tip Nicki's pet team consists of level 20 Mechanical battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Nicki Tinytech##66550
		turnin Nicki Tinytech##31922 |goto 64.31,49.30
		|only if completedq(31920)
	step
		talk Ras'an##66551
		accept Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52 |only if completedq(31920)
		Defeat Ras'an |q 31919/2 |goto Zangarmarsh/0 17.24,50.52
		|tip Ras'an's pet team consists of level 21 Flying, Magic, and Humanoid battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Undead battle pets are strong against Humanoid battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Ras'an##66551
		turnin Ras'an##31923 |goto Zangarmarsh/0 17.24,50.52
		|only if completedq(31920)
	step
		talk Narrok##66552
		accept Narrok##31924 |goto Nagrand/0 60.97,49.42 |only if completedq(31920)
		Defeat Narrok |q 31919/3 |goto Nagrand/0 60.97,49.42
		|tip Narrok's pet team consists of level 22 Aquatic, Critter, and Beast battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Narrok##66552
		turnin Narrok##31924 |goto 60.97,49.42
		|only if completedq(31920)
	step
		talk Morulu The Elder##66553
		accept Morulu The Elder##31925 |goto Shattrath City/0 58.76,70.05 |only if completedq(31920)
		Defeat Morulu The Elder |q 31919/4 |goto Shattrath City/0 58.76,70.05
		|tip Morulu's pet team consists of level 23 Aquatic battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto 58.76,70.05
		|only if completedq(31920)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Outland##31919 |goto 58.76,70.05
		accept Grand Master Antari##31920 |goto 58.76,70.05 |only if not completedq(31920)
	step
		talk Bloodknight Antari##66557
		Defeat Bloodknight Antari |q 31920/1 |goto Shadowmoon Valley/0 30.51,41.77
		|tip Analynn's pet team consists of level 24 Magic, Elemental, and Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Bloodknight Antari##66557
		turnin Grand Master Antari##31920 |goto 30.51,41.77
		accept Exceeding Expectations##31981 |goto 30.51,41.77 |only if not completedq(31981) and not completedq(31982)
	step
		talk Audrey Burnhep##63596
		turnin Exceeding Expectations##31981 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31981) and not completedq(31982)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Northrend##31927 |goto Stormwind City/0 69.48,25.15
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto Crystalsong Forest/0 50.14,58.97 |only if completedq(31928)
		Defeat Nearly Headless Jacob |q 31927/2 |goto Crystalsong Forest/0 50.14,58.97
		|tip Jacob's pet team consists of level 25 Undead battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto 50.14,58.97
		|only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05 |only if completedq(31928)
		Defeat Okrut Dragonwaste |q 31927/3 |goto Dragonblight/0 59.02,77.05
		|tip Okrut's pet team consists of level 25 Dragonkin and Undead battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Critter battle pets are strong against Undead battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Okrut Dragonwaste##66638
		turnin Okrut Dragonwaste##31933 |goto Dragonblight/0 59.02,77.05
		|only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		accept Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88 |only if completedq(31928)
		Defeat Beegle Blastfuse |q 31927/1 |goto Howling Fjord/0 28.61,33.88
		|tip Beegle's pet team consists of level 25 Flying and Aquatic battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Beegle Blastfuse##66635
		turnin Beegle Blastfuse##31931 |goto Howling Fjord/0 28.61,33.88
		|only if completedq(31928)
	step
		talk Gutretch##66639
		accept Gutretch##31934 |goto Zul'Drak/0 13.22,66.79 |only if completedq(31928)
		Defeat Gutretch |q 31927/4 |goto Zul'Drak/0 13.22,66.79
		|tip Gutretch's pet team consists of level 25 Beast and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Gutretch##66639
		turnin Gutretch##31934 |goto 13.22,66.79
		|only if completedq(31928)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Northrend##31927 |goto 59.02,77.05
		accept Grand Master Payne##31928 |goto 59.02,77.05 |only if not completedq(31928)
	step
		talk Major Payne##66675
		Defeat Major Payne |q 31928/1 |goto Icecrown/0 77.39,19.56
		|tip Payne's pet team consists of level 25 Beast, Mechanical, and Elemental battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Elemental battle pets are strong against Mechanical battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Major Payne##66675
		turnin Grand Master Payne##31928 |goto 77.39,19.56
		accept A Brief Reprieve##31984 |goto 77.39,19.56 |only if not completedq(31929) and not completedq(31927)
	step
		talk Audrey Burnhep##63596
		turnin A Brief Reprieve##31984 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31929) and not completedq(31927)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Cataclysm##31966 |goto Stormwind City/0 69.48,25.15
	step
		talk Brok##66819
		accept Brok##31972 |goto Mount Hyjal/0 61.37,32.71 |only if completedq(31970)
		Defeat Brok |q 31966/1 |goto Mount Hyjal/0 61.37,32.71
		|tip Brok's pet team consists of level 25 Magic, Beast, and Critter battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Brok##66819
		turnin Brok##31972 |goto 61.37,32.71
		|only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		accept Bordin Steadyfist##31973 |goto Deepholm/0 49.87,57.05 |only if completedq(31970)
		Defeat Bordin Steadyfist |q 31966/2 |goto Deepholm/0 49.87,57.05
		|tip Bordin's pet team consists of level 25 Elemental and Critter battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Bordin Steadyfist##66815
		turnin Bordin Steadyfist##31973 |goto 49.87,57.05
		|only if completedq(31970)
	step
		talk Goz Banefury##66822
		accept Goz Banefury##31974 |goto Twilight Highlands/0 56.59,56.80 |only if completedq(31970)
		Defeat Goz Banefury |q 31966/3 |goto Twilight Highlands/0 56.59,56.80
		|tip Goz's pet team consists of level 25 Elemental, Magic, and Beast battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Goz Banefury##66822
		turnin Goz Banefury##31974 |goto 56.59,56.80
		|only if completedq(31970)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Cataclysm##31966 |goto 56.59,56.80
		accept Grand Master Obalis##31970 |goto 56.59,56.80 |only if not completedq(31970)
	step
		talk Obalis##66824
		Defeat Obalis |q 31970/1 |goto Uldum/0 56.56,41.98
		|tip Payne's pet team consists of level 25 Beast, Flying, and Critter battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Obalis##66824
		turnin Grand Master Obalis##31970 |goto 56.56,41.98
		accept The Triumphant Return##31985 |goto 56.56,41.98 |only if not completedq(31985) and not completedq(31986)
	step
		talk Audrey Burnhep##63596
		turnin The Triumphant Return##31985 |goto Stormwind City/0 69.48,25.15
		|only if not completedq(31985) and not completedq(31986)
	step
		talk Audrey Burnhep##63596
		accept Battle Pet Tamers: Pandaria##31930 |goto Stormwind City/0 69.48,25.15
	step
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest/0 47.96,54.17 |only if completedq(31951)
		Defeat Hyuna of the Shrines |q 31930/1 |goto The Jade Forest/0 47.96,54.17
		|tip Hyuna's pet team consists of level 25 Dragonkin and Magic battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
		|tip Dragonkin battle pets are strong against Magic battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Hyuna of the Shrines##66730
		turnin Grand Master Hyuna##31953 |goto 47.96,54.17
		|only if completedq(31951)
	step
		talk Farmer Nishi##66734
		accept Grand Master Nishi##31955 |goto Valley of the Four Winds/0 46.07,43.68 |only if completedq(31951)
		Defeat Farmer Nishi |q 31930/2 |goto Valley of the Four Winds/0 46.07,43.68
		|tip Nishi's pet team consists of level 25 Beast and Elemental battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat her in battle pet combat.
	step
		talk Farmer Nishi##66734
		turnin Grand Master Nishi##31955 |goto 46.07,43.68
		|only if completedq(31951)
	step
		talk Mo'ruk##66733
		accept Grand Master Mo'ruk##31954 |goto Krasarang Wilds/0 62.23,45.91 |only if completedq(31951)
		Defeat Mo'ruk |q 31930/3 |goto Krasarang Wilds/0 62.23,45.91
		|tip Mo'ruk's pet team consists of level 25 Beast, Flying, and Aquatic battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Mo'ruk##66733
		turnin Grand Master Mo'ruk##31954 |goto 62.23,45.91
		|only if completedq(31951)
	step
		talk Wastewalker Shu##66739
		accept Grand Master Shu##31957 |goto Dread Wastes/0 55.11,37.56 |only if completedq(31951)
		Defeat Wastewalker Shu |q 31930/6 |goto Dread Wastes/0 55.11,37.56
		|tip Shu's pet team consists of level 25 Beast, Aquatic, and Elemental battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Wastewalker Shu##66739
		turnin Grand Master Shu##31957 |goto 55.11,37.56
		|only if completedq(31951)
	step
		talk Seeker Zusshi##66918
		accept Grand Master Zusshi##31991 |goto Townlong Steppes/0 36.32,52.21 |only if completedq(31951)
		Defeat Seeker Zusshi |q 31930/5 |goto Townlong Steppes/0 36.32,52.21
		|tip Zusshi's pet team consists of level 25 Aquatic, Critter, and Elemental battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Aquatic battle pets are strong against Elemental battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Seeker Zusshi##66918
		turnin Grand Master Zusshi##31991 |goto 36.32,52.21
		|only if completedq(31951)
	step
		talk Courageous Yon##66738
		accept Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63 |only if completedq(31951)
		Defeat Courageous Yon |q 31930/4 |goto 35.84,73.63
		|tip Yon's pet team consists of level 25 Beast, Critter, and Flying battle pets.
		|tip Mechanical battle pets are strong against Beast battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Magic battle pets are strong against Flying battle pets.
		|tip Defeat him in battle pet combat.
	step
		talk Courageous Yon##66738
		turnin Grand Master Yon##31956 |goto Kun-Lai Summit/0 35.84,73.63
		|only if completedq(31951)
	step
		_Click the quest completion box that appears_
		turnin Battle Pet Tamers: Pandaria##31930 |goto 35.84,73.63
		accept Grand Master Aki##31951 |goto 35.84,73.63 |only if not completedq(31951)
	step
		talk Aki the Chosen##66741
		Defeat Aki the Chosen |q 31951/1 |goto Vale of Eternal Blossoms/0 31.27,74.09
		|tip Defeat him in battle pet combat.
	step
		talk Aki the Chosen##66741
		turnin Grand Master Aki##31951 |goto 31.27,74.09
		|tip Aki's pet team consists of level 25 Aquatic, Critter, and Dragonkin battle pets.
		|tip Flying battle pets are strong against Aquatic battle pets.
		|tip Beast battle pets are strong against Critter battle pets.
		|tip Humanoid battle pets are strong against Dragonkin battle pets.
]])

ZygorGuidesViewer:RegisterInclude("Alliance_Battlepet_Dailies",[[
		In order to obtain these daily quests, you will need to have defeated Grand Master pet tamers
		If you haven't done so already, please go back and complete the Battle Pet quest guide
		Otherwise, click here to proceed |confirm
	step
	label "reset"
		Click here to do the daily set in the Eastern Kingdoms |confirm |next "ekpets" |only if completedq(31915)
		Click here to do the daily set in Kalimdor |confirm |next "kalimpets" |only if completedq(31915) and completedq(31897)
		Click here to do the daily set in Outland |confirm |next "outpets" |only if completedq(31920)
		Click here to do the daily set in Northrend |confirm |next "northpets" |only if completedq(31928)
		Click here to do the daily set in the Cataclysm |confirm |next "catapets" |only if completedq(31970)
		Click here to do the daily set in Pandaria |confirm |next "pandapets" |only if completedq(31970)
// First Daily Set: Everessa, Durin Darkhammer, Kortas Darkhammer , David Kosse, Deiza Plaguehorn, Lydia Accoste
	step
	label "ekpets"
		talk Julia Stevens##64330
		accept Julia Stevens##31693 |goto Elwynn Forest 41.6,83.7
		only if completedq(31915)
	step
		talk Julia Stevens##64330
		|tip You will not be able to challenge Julia if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Julia has 2 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Julia's pets are level 2 so you shouldn't have any issues here.
		Defeat Julia Stevens |q 31693/1 |goto Elwynn Forest 41.6,83.7
		only if completedq(31915)
	step
		talk Julia Stevens##64330
		turnin Julia Stevens##31693 |goto Elwynn Forest 41.6,83.7
		only if completedq(31915)
	step
		talk Old MacDonald##65648
		accept Old MacDonald##31780 |goto Westfall 60.9,18.6
		only if completedq(31915)
	step
		talk Old MacDonald##65648
		|tip You will not be able to challenge Old MacDonald if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Old MacDonald has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Old MacDonald's pets are level 3 so you shouldn't have any issues here.
		Defeat Old MacDonald |q 31780/1 |goto Westfall 60.9,18.6
		only if completedq(31915)
	step
		talk Old MacDonald##65648
		turnin Old MacDonald##31780 |goto Westfall 60.9,18.6
		only if completedq(31915)
	step
		talk Eric Davidson##65655
		accept Eric Davidson##31850 |goto Duskwood 19.9,44.7
		only if completedq(31915)
	step
		talk Eric Davidson##65655
		|tip You will not be able to challenge Eric if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Eric has 3 Beast type Pets. Use Mechanical type attacks on the Beast Pets. Eric's pets are level 7 so you shouldn't have any issues here.
		Defeat Eric Davidson |q 31850/1 |goto Duskwood 19.9,44.7
		only if completedq(31915)
	step
		talk Eric Davidson##65655
		turnin Eric Davidson##31850 |goto Duskwood 19.9,44.7
		only if completedq(31915)
	step
		talk Steven Lisbane##63194
		accept Steven Lisbane##31852 |goto Northern Stranglethorn 46.0,40.3
		only if completedq(31915)
	step
		talk Steven Lisbane##63194
		|tip You will not be able to challenge Steven if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Steven has a Magic type Pet and 2 Beast type Pets. Use Dragonkin type attacks on the Magic Pet and Mechanical type attacks on the Beast Pets. Steven's pets are level 9 so you shouldn't have any issues here.
		Defeat Steven Lisbane |q 31852/1 |goto Northern Stranglethorn 46.0,40.3
		only if completedq(31915)
	step
		talk Steven Lisbane##63194
		turnin Steven Lisbane##31852 |goto Northern Stranglethorn 46.0,40.3
		only if completedq(31915)
	step
		talk Bill Buckler##65656
		accept Bill Buckler##31851 |goto The Cape of Stranglethorn 51.4,73.3
		only if completedq(31915)
	step
		talk Bill Buckler##65656
		|tip You will not be able to challenge Bill if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Bill has a Humanoid type Pet and 2 Flying type Pets. Use Undead type attacks on the Humanoid Pet and Magic type attacks on the Flying Pets. Bill's pets are level 11 so you shouldn't have any issues here.
		Defeat Bill Buckler |q 31851/1 |goto The Cape of Stranglethorn 51.4,73.3
		only if completedq(31915)
	step
		talk Bill Buckler##65656
		turnin Bill Buckler##31851 |goto The Cape of Stranglethorn 51.4,73.3
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		accept Grand Master Lydia Accost##31916 |goto Deadwind Pass 40.1,76.4
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		|tip You will not be able to challenge Lydia if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Lydia has an Elemental type Pet and 2 Undead type Pets. Use Aquatic type attacks on the Elemental Pet and Critter type attacks on the Undead Pets. Your pets should be at least level 19 before fighting Lydia.
		Defeat Lydia Accoste |q 31916/1 |goto Deadwind Pass 40.1,76.4
		only if completedq(31915)
	step
		talk Lydia Accoste##66522
		turnin Grand Master Lydia Accoste##31916 |goto 40.1,76.4
		only if completedq(31915)
	step
		talk Everessa##66518
		accept Everessa##31913 |goto Swamp of Sorrows 76.8,41.5
		only if completedq(31915)
	step
		talk Everessa##66518
		|tip You will not be able to challenge Everessa if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Everessa has a Flying Pet, a Beast Pet, and an Aquatic Pet. Use Magic type attacks on the Flying Pet, Mechanical type attacks on the Beast Pet, and Flying type attacks on the Aquatic Pet. Her pets are all level 16. You should be able to win with ease.
		Defeat Everessa |q 31913/1 |goto Swamp of Sorrows 76.8,41.5
		only if completedq(31915)
	step
		talk Everessa##66518
		turnin Everessa##31913 |goto Swamp of Sorrows 76.8,41.5
		only if completedq(31915)
	step
		talk Lindsay##65651
		accept Lindsay##31781 |goto Redridge Mountains 33.2,52.6
		only if completedq(31915)
	step
		talk Lindsay##65651
		|tip You will not be able to challenge Lindsay if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Lindsay has 3 Critter type pets. Use Beast type attacks against the Critter Pets. Her pets are all level 5. You should be able to win with ease.
		Defeat Lindsay |q 31781/1 |goto Redridge Mountains 33.2,52.6
		only if completedq(31915)
	step
		talk Lindsay##65651
		turnin Lindsay##31781 |goto Redridge Mountains 33.2,52.6
		only if completedq(31915)
	step
		talk Durin Darkhammer##66520
		accept Durin Darkhammer##31914 |goto Burning Steppes 25.5,47.4
		only if completedq(31915)
	step
		talk Durin Darkhammer##66520
		|tip You will not be able to challenge Durin if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Durin has a Flying type Pet, a Critter Pet, and an Elemental Pet. Use Magic type attacks on the Flying Pet, Beast type attacks on the Critter Pet, and Aquatic type attacks on the Elemental Pet. His pets are all level 17. You should be able to win with ease.
		Defeat Durin Darkhammer |q 31914/1 |goto Burning Steppes 25.5,47.4
		only if completedq(31915)
	step
		talk Durin Darkhammer##66520
		turnin Durin Darkhammer##31914 |goto Burning Steppes 25.5,47.4
		only if completedq(31915)
	step
		talk Kortas Darkhammer##66515
		accept Kortas Darkhammer##31912 |goto Searing Gorge 35.3,27.8
		only if completedq(31915)
	step
		talk Kortas Darkhammer##66515
		|tip You will not be able to challenge Kortas if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Kortas has 3 Dragonkin type Pets. Use Humanoid type attacks on his pets. His pets are all around level 15 so your pet team should be able to defeat him easily.
		Defeat Kortas Darkhammer |q 31912/1 |goto Searing Gorge 35.3,27.8
		only if completedq(31915)
	step
		talk Kortas Darkhammer##66515
		turnin Kortas Darkhammer##31912 |goto Searing Gorge 35.3,27.8
		only if completedq(31915)
	step
		talk David Kosse##66478
		accept David Kosse##31910 |goto The Hinterlands 63.0,54.6
		only if completedq(31915)
	step
		talk David Kosse##66478
		|tip You will not be able to challenge David if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip David has a Beast Pet, a Critter Pet, and an Magic Pet. Use Mechanical type attacks on the Beast Pet, Beast type attacks on the Critter Pet, and Dragonkin type attacks on the Magic Pet. His pets are all around level 13 so your pet team should be able to defeat him easily.
		Defeat David Kosse |q 31910/1 |goto The Hinterlands 63.0,54.6
		only if completedq(31915)
	step
		talk David Kosse##66478
		turnin David Kosse##31910 |goto The Hinterlands 63.0,54.6
		only if completedq(31915) 
	step
		talk Deiza Plaguehorn##66512
		accept Deiza Plaguehorn##31911 |goto Eastern Plaguelands 67.0,52.4
		only if completedq(31915)
	step
		talk Deiza Plaguehorn##66512
		|tip You will not be able to challenge Deiza if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Deiza has 2 Beast type Pets and an Undead type Pet. Use Mechanical type attacks on the Beast Pets and Critter type attacks on the Undead Pet. Her pets are all around level 14 so your pet team should be able to defeat her easily.
		Defeat Deiza Plaguehorn |q 31911/1 |goto Eastern Plaguelands 67.0,52.4
		only if completedq(31915)
	step
		talk Deiza Plaguehorn##66512
		turnin Deiza Plaguehorn##31911 |goto Eastern Plaguelands 67.0,52.4
		only if completedq(31915)
		next "reset"
// Second Daily Set: Traitor Gluk, Grazzle the Great, Kela Grimtotem, Zoltan, Elena Flutterfly
	step
	label "kalimpets"
		talk Stone Cold Trixxy##66466
		accept Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
		only if completedq(31915)
	step
		talk Stone Cold Trixxy##66466
		Tell her you want to fight!
		She uses level 19 Flying, Beast and Dragonkin pets.
		Defeat Stone Cold Trixxy |q 31909/1 |goto Winterspring 65.6,64.4
		only if completedq(31915)
	step
		talk Stone Cold Trixxy##66466
		turnin Grand Master Trixxy##31909 |goto Winterspring 65.6,64.4
		only if completedq(31915)
// Third Daily Set: Nicki Tinytech, Morulu The Elder, Narrok, Ras'an, Bloodknight Antari
	step
	label "outpets"
		talk Nicki Tinytech##66550
		accept Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Nicki Tinytech##66550
		|tip You will not be able to challenge Nicky if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Nicki has 3 Mechanical type Pets. Use Elemental type attacks on her pets. Her pets are all around level 20.
		Defeat Nicki Tinytech |q 31922/1 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Nicki Tinytech##66550
		turnin Nicki Tinytech##31922 |goto Hellfire Peninsula 64.3,49.3
		only if completedq(31920)
	step
		talk Ras'an##66551
		accept Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Ras'an##66551
		|tip You will not be able to challenge Ras'an if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Ras'an has a Flying Pet, a Humanoid Pet, and a Magic Pet. Use Magic type attacks on his Flying pet, Undead type attacks on his Humanoid pet, and Dragonkin type attacks on his Magic pet. His pets are all around level 21.
		Defeat Ras'an |q 31923/1 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Ras'an##66551
		turnin Ras'an##31923 |goto Zangarmarsh 17.2,50.5
		only if completedq(31920)
	step
		talk Narrok##66552
		accept Narrok##31924 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Narrok##66552
		|tip You will not be able to challenge Narrok if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Narrok has an Aquatic Pet, a Beast Pet, and a Critter Pet. Use Flying type attacks on his Aquatic pet, Mechanical type attacks on his Beast pet, and Beast type attacks on his Critter pet. His pets are all around level 22.
		Defeat Narrok |q 31924/1 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Narrok##66552
		turnin Narrok##31924 |goto Nagrand 61.0,49.4
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		accept Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		|tip You will not be able to challenge Morulu if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Morulu has 3 Aquatic type Pets. Use Flying type attacks on his pets. His pets are all around level 23.
		Defeat Morulu The Elder |q 31925/1 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Morulu The Elder##66553
		turnin Morulu The Elder##31925 |goto Shattrath City 58.8,70.1
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		accept Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920) 
	step
		talk Bloodknight Antari##66557
		|tip You will not be able to challenge Bloodknight Antari if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Bloodknight Antari has an Elemental Pet, a Dragonkin Pet, and a Magic Pet. Use Aquatic type attacks on his Elemental pet, Humanoid type attacks on his Dragonkin pet, and Dragonkin type attacks on his Magic pet. Your pets should all be around level 24.
		Defeat Bloodknight Antari |q 31926/1 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
	step
		talk Bloodknight Antari##66557
		turnin Grand Master Antari##31926 |goto Shadowmoon Valley 30.6,42.0
		only if completedq(31920)
		next "reset"
// Fourth Daily Set: Beegle Blastfuse, Okrut Dragonwaste, Nearly Headless Jacob, Gutretch, Major Payne
	step
	label "northpets"
		talk Beegle Blastfuse##66635
		accept Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		|tip You will not be able to challenge Beegle Blastfuse if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Beegle Blastfuse has an Aquatic Pet and 2 Flying Pets. Use Flying type attacks on his Aquatic pet and Magic attacks on his Flying pets. Your pets should all be around level 25 before fighting Beegle.
		Defeat Beegle Blastfuse |q 31931/1 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Beegle Blastfuse##66635
		turnin Beegle Blastfuse##31931 |goto Howling Fjord 28.6,33.9
		only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		|tip You will not be able to challenge Okrut Dragonwaste if you have the "Pet Recovery" debuff, wait for it to fall off. 
		_"Let's fight!"_
		|tip Okrut Dragonwaste has a Dragonkin Pet and 2 Undead Pets. Use Humanoid type attacks on his Dragonkin and Critter type attacks on his Undead. Your pets should all be level 25 before fighting Okrut.
		Defeat Okrut Dragonwaste |q 31933/1 |goto Dragonblight 59.0,77.0
		only if completedq(31928)
	step
		talk Okrut Dragonwaste##66638
		accept Okrut Dragonwaste##31933 |goto Dragonblight 59.0,77.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		accept Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		|tip You will not be able to challenge Nearly Headless Jacob if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Nearly Headless Jacob has 3 Undead Pets. Critter type attacks will be the most useful against Jacob. You should also consider having an Aquatic pet or two. Your pets should all be level 25.
		Defeat Nearly Headless Jacob |q 31932/1 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Nearly Headless Jacob##66636
		turnin Nearly Headless Jacob##31932 |goto Crystalsong Forest 50.1,59.0
		only if completedq(31928)
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Major Payne##66675
		|tip You will not be able to challenge Major Payne if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Major Payne has a Beast Pet, a Mechanical Pet, and an Elemental Pet. Use Mechanical type attacks on his Beast, Elemental type attacks on his Mechanical, and Aquatic type attacks on his Elemental. Your pets should be level 25 for this fight.
		Defeat Major Payne |q 31935/1 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Major Payne##66675
		accept Grand Master Payne##31935 |goto Icecrown 77.4,19.6
		only if completedq(31928)
	step
		talk Gutretch##66639
		accept Gutretch##31934 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Gutretch##66639
		|tip You will not be able to challenge Gutretch if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Gutretch has 2 Beast type Pets and a Critter type Pet. Use Mechanical type attacks on his Beasts and Beast type attacks on his Critter. Your pets should all be level 25 for this fight.
		Defeat Gutretch |q 31934/1 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
	step
		talk Gutretch##66639
		turnin Gutretch##31934 |goto Zul'Drak 13.2,66.8
		only if completedq(31928)
		next "reset"
// Fifth Daily Set: Brok, Brodin Steadyfist, Goz Banefury, Obalis	
	step
	label "catapets"
		talk Brok##66819
		accept Brok##31972 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Brok##66819
		|tip You will not be able to challenge Brok if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Brok has a Beast Pet, a Critter Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		Defeat Brok |q 31972/1 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Brok##66819
		turnin Brok##31972 |goto Mount Hyjal 61.4,32.7
		only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		accept Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		|tip You will not be able to challenge Bordin Steadyfist if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Bordin Steadyfist has a Critter Pet and 2 Elemental Pets. Use Beast type attacks on his Critter and Aquatic type attacks on his Elementals. Your pets should all be level 25.
		Defeat Bordin Steadyfist |q 31973/1 |goto Deepholm 49.9,57.0
		only if completedq(31970)
	step
		talk Bordin Steadyfist##66815
		turnin Bordin Steadyfist##31973 |goto Deepholm 49.9,57.0
		only if completedq(31970)
	step
		talk Goz Banefury##66822
		accept Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		only if completedq(31970)
	step
		talk Goz Banefury##66822
		|tip You will not be able to challenge Goz Banefury if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Goz Banefury has a Beast Pet, an Elemental Pet, and a Magic Pet. Use Mechanical type attacks on his Beast, Aquatic type attacks on his Elemental, and Dragonkin type attacks on his Magic. Your pets should all be level 25.
		Defeat Goz Banefury |q 31974/1 |goto Twilight Highlands 56.6,56.8
		only if completedq(31970)
	step
		talk Goz Banefury##66822
		turnin Goz Banefury##31974 |goto Twilight Highlands 56.6,56.8
		only if completedq(31970)
	step
		talk Obalis##66824
		accept Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		only if completedq(31970)
	step
		talk Obalis##66824
		|tip You will not be able to challenge Obalis if you have the "Pet Recovery" debuff, wait for it to fall off. 	
		_"Let's fight!"_
		|tip Obalis has a Beast Pet, a Flying Pet, and a Critter Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Beast type attacks on his Critter. Your pets should all be level 25.
		Defeat Obalis |q 31971/1 |goto Uldum 56.5,42.0
		only if completedq(31970)
	step
		talk Obalis##66824
		turnin Grand Master Obalis##31971 |goto Uldum 56.5,42.0
		only if completedq(31970)
		next "reset"
// Sixth Daily Set: Hyuna of the Shrines, Farmer Nishi, Mo'ruk, Courageous Yon, Seeker Zusshi, Wastewalker Shu, Aki the Chosen
	step
	label "pandapets"
		talk Hyuna of the Shrines##66730
		accept Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		only if completedq(31970)
	step
		talk Hyuna of the Shrines##66730
		|tip You will not be able to challenge Hyuna of the Shrines if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Hyuna of the Shrines has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on her Beast, Magic type attacks on her Flyer, and Flying type attacks on her Aquatic. Your pets should all be level 25.
		Defeat Hyuna of the Shrines |q 31953/1 |goto The Jade Forest 48.0,54.2
		only if completedq(31970)
	step
		talk Hyuna of the Shrines##66730
		turnin Grand Master Hyuna##31953 |goto The Jade Forest 48.0,54.2
		only if completedq(31970)
	step
		talk Aki the Chosen##66741
		accept Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		only if completedq(31970)
	step
		talk Aki the Chosen##66741
		|tip You will not be able to challenge Aki the Chosen if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Aki the Chosen has an Aquatic Pet, a Critter Pet, and a Dragonkin Pet. Use Flying type attacks on her Aquatic, Beast type attacks on her Critter, and Humanoid type attacks on her Dragonkin. Your pets should all be level 25.
		Defeat Aki the Chosen |q 31958/1 |goto Vale of Eternal Blossoms 31.2,74.0
		only if completedq(31970)
	step
		talk Aki the Chosen##66741
		turnin Zen Master Aki##31958 |goto Vale of Eternal Blossoms 31.2,74.0
		only if completedq(31970)
	step
		talk Courageous Yon##66738
		accept Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		only if completedq(31970)
	step
		talk Courageous Yon##66738
		|tip You will not be able to challenge Courageous Yon if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Courageous Yon has a Flying Pet, a Critter Pet, and a Beast Pet. Use Beast type attacks on his Critter, Mechanical type attacks on his Beast, and Magic type attacks on his Flying. Your pets should all be level 25.
		Defeat Courageous Yon |q 31956/1 |goto Kun-Lai Summit 35.8,73.8
		He can also be found at [44.7,52.4]
		only if completedq(31970)
	step
		talk Courageous Yon##66738
		turnin Grand Master Yon##31956 |goto Kun-Lai Summit 35.8,73.8
		only if completedq(31970)
	step
		talk Seeker Zusshi##66918
		accept Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		only if completedq(31970)
	step
		talk Seeker Zusshi##66918
		|tip You will not be able to challenge Seeker Zusshi if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Seeker Zusshi has an Aquatic Pet, a Critter Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Beast type attacks on his Critter. Your pets should all be level 25.
		Defeat Seeker Zusshi |q 31991/1 |goto Townlong Steppes 36.3,52.2
		only if completedq(31970)
	step
		talk Seeker Zusshi##66918
		turnin Grand Master Zusshi##31991 |goto Townlong Steppes 36.3,52.2
		only if completedq(31970)
	step
		talk Wastewalker Shu##66739
		accept Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		only if completedq(31970)
	step
		talk Wastewalker Shu##66739
		|tip You will not be able to challenge Wastewalker Shu if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Wastewalker Shu has an Aquatic Pet, a Beast Pet, and an Elemental Pet. Use Flying type attacks on his Aquatic, Aquatic type attacks on his Elemental, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		Defeat Wastewalker Shu |q 31957/1 |goto Dread Wastes 55.1,37.6
		only if completedq(31970)
	step
		talk Wastewalker Shu##66739
		turnin Grand Master Shu##31957 |goto Dread Wastes 55.1,37.6
		only if completedq(31970)
	step
		talk Mo'ruk##66733
		accept Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31970)
	step
		talk Mo'ruk##66733
		|tip You will not be able to challenge Mo'ruk if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Mo'ruk has a Beast Pet, a Flying Pet, and an Aquatic Pet. Use Mechanical type attacks on his Beast, Magic type attacks on his Flyer, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		Defeat Mo'ruk |q 31954/1 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31970)
	step
		talk Mo'ruk##66733
		turnin Mo'ruk##31954 |goto Krasarang Wilds 62.2,45.9
		only if completedq(31970)
	step
		talk Farmer Nishi##66734
		accept Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31970)
	step
		talk Farmer Nishi##66734
		|tip You will not be able to challenge Farmer Nishi if you have the "Pet Recovery" debuff, wait for it to fall off.
		_"Let's fight!"_
		|tip Farmer Nishi has a Beast Pet, and two Elemental Pets. Use Mechanical type attacks on her Beast, and Aquatic type attacks on her Elementals. Your pets should all be level 25.
		Defeat Farmer Nishi |q 31955/1 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31970)
	step
		talk Farmer Nishi##66734
		turnin Grand Master Nishi##31955 |goto Valley of the Four Winds 46.0,43.7
		only if completedq(31970)
		next "reset"
]])

ZygorGuidesViewer:RegisterInclude("A_Beasts_of_Fable",[[
		talk Sara Finkleswitch##64572
		accept Beasts of Fable##32603 |goto Vale of Eternal Blossoms 86.6,60.0
	step
	label "dailies"
		_No-No_
		This enemy is aquatic.
		It is strong against undead and weak to flying attacks.
		I would suggest that you use flying pets against this enemy.
		Defeat No-No |q 32603/3 |goto Vale of Eternal Blossoms 11.0,70.9
		modelnpc 68559
	step
		_Lucky Yi_
		This enemy is a critter.
		Is is strong against Elementals and weak to beast attacks.
		I would suggest using beast pets against this enemy.
		Defeat Lucky Yi |q 32603/5 |goto Valley of the Four Winds 40.5,43.7
		modelnpc 68561
	step
		_Greyhoof_
		This enemy is a beast.
		It is strong against humanoids and weak against mechanical pets.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Greyhoof |q 32603/4 |goto Valley of the Four Winds 25.3,78.5
		modelnpc 68560
	step
		_Xi'a_
		This enemy is aquatic.
		It is strong against undead and weak to flying pets.
		I would suggest using flying pets against this enemy.
		Defeat Xi'a |q 32603/10 |goto Krasarang Wilds 36.3,37.3
		modelnpc 68566
	step
		_Gorespine_
		This enemy is a beast.
		It is strong against humanoids and weak against mechanical pets.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Gorespine |q 32603/2 |goto Dread Wastes 26.1,50.2
		modelnpc 68558
	step
		_Ti'un the Wanderer_
		This enemy is aquatic.
		It is strong against undead and weak to flying pets.
		I would suggest using flying pets against this enemy.
		Defeat Ti'un the Wanderer |q 32603/6 |goto Townlong Steppes 72.3,79.8
		modelnpc 68562
	step
		This enemy is a beast.
		It is strong against humanoids and weak against mechanical pets.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Kafi |q 32603/7 |goto Kun-Lai Summit 35.2,56.2
		modelnpc 68563
	step
		_Dos-Ryga_
		This enemy is aquatic.
		It is strong against undead and weak to flying pets.
		I would suggest using flying pets against this enemy.
		Defeat Dos-Ryga |q 32603/8 |goto Kun-Lai Summit 67.9,84.7
		modelnpc 68564
	step
		_Ka'wi_
		This enemy is a critter.
		Is is strong against Elementals and weak to beast attacks.
		I would suggest using a team of mechanical pets against this enemy.
		Defeat Ka'wi the Gorger |q 32603/1 |goto The Jade Forest 48.4,71.0
		modelnpc 68555
	step
		This enemy is a critter.
		Is is strong against Elementals and weak to beast attacks.
		I would suggest using beast pets against this enemy.
		Defeat Nitun |q 32603/9 |goto The Jade Forest 57.0,29.1
		modelnpc 68565
	step
		talk Sara Finkleswitch##64572
		turnin Beasts of Fable##32603 |goto Vale of Eternal Blossoms 86.6,60.0
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("A_Darkspear_Revolution",[[
	step
	label "route"
		Routing to proper section |next |only if not completedq(32816)
		Routing to proper section |next "weekly" |only if completedq(32816)
	step
		Click the _Quest Accept_ Box:
		accept War is Coming##32892 |goto Vale of Eternal Blossoms 86.2,63.1
	step
		talk Lorewalker Cho##61962
		turnin War is Coming##32892 |goto Vale of Eternal Blossoms 83.2,29.7
		accept The King and the Council##32806 |goto Vale of Eternal Blossoms 83.2,29.7
	step
		click Lorewalker Cho's Dream Brew |goto Vale of Eternal Blossoms 82.6,29.8
		Queue for the Blood in the Snow scenario
		confirm
//SCENARIO
	step
		talk Lorewalker Cho##61962
		turnin The King and the Council##32806 |goto Vale of Eternal Blossoms/0 83.2,29.7
		accept The Warchief and the Darkness##32807 |goto Vale of Eternal Blossoms/0 83.2,29.7
	step
		click Lorewalker Cho's Dream Brew |goto Vale of Eternal Blossoms 82.6,29.8
		Queue for the Dark Heart of Pandaria scenario
		confirm
//SCENARIO2
	step
		talk Lorewalker Cho##61962
		turnin The Warchief and the Darkness##32807 |goto Vale of Eternal Blossoms/0 83.2,29.7
		accept A Little Field Work##32808 |goto Vale of Eternal Blossoms/0 83.2,29.7
	step
		talk Gleep Chatterswitch##71336
		Tell him you'd like to travel to Ratchet |q 32808/1 |goto Vale of Eternal Blossoms 85.7,59.7
		Step on the teleporter |goto Northern Barrens 70.1,73.0 |noway |c
	step
		Locate Amber and Sully in Durotar near Skull Rock |q 32808/2 |goto Durotar 54.4,9.8
	step
		talk Amber Kearnen##71027
		turnin A Little Field Work##32808 |goto Durotar 54.4,9.8
		accept Gathering Intelligence##32809 |goto Durotar 54.4,9.8
	step
		click Project C4T Controller |goto Durotar 54.3,9.8
		|tip It will spawn a controllable cat.
		confirm
	step
		click Operation: Darkspear Destruction
		collect Operation: Darkspear Destruction##98003 |q 32809/2 |goto Durotar 55.4,11.4
	step
		Go inside the building here
		click Kor'kron Command Posts
		collect Kor'kron Command Posts##98004 |q 32809/3 |goto Durotar 51.2,10.7
	step
		talk Zen'tabra##71355
		Tell him that now's his chance to escape |q 32809/4 |goto Durotar 52.6,13.8
	step
		click Kor'kron Supply Lines
		collect Kor'kron Supply Lines##98002 |q 32809/1 |goto Durotar 49.9,15.5
	step
		talk Amber Kearnen##71027
		turnin Gathering Intelligence##32809 |goto Durotar 54.4,9.8
		accept The Darkspear Rebellion##32810 |goto Durotar 54.4,9.8
	step
		Find Zen'tabra in Razor Hill |q 32810/1 |goto Durotar 51.8,39.2
	step
		talk Zen'tabra##71320
		turnin The Darkspear Rebellion##32810 |goto Durotar 51.8,39.2
		accept Vol'jin of the Darkspear##32871 |goto Durotar 51.8,39.2
	step
		talk Vol'jin##70978
		turnin Vol'jin of the Darkspear##32871 |goto Durotar 49.7,40.1
		accept Battlefield: Barrens##32811 |goto Durotar 49.7,40.1
	step
		click Kor'kron Meat Rack##220353
		kill Kor'kron Butcher##71012+, Kor'kron Outrider##71010+, Kor'kron Battlewolf##71011+
		collect 15 Kor'kron Meat##97545 |q 32811/4 |goto Northern Barrens 43.8,48.0
	step
		click Kor'kron Lumber##220361
		kill Mercenary Shredder##71001+, Hellscream Laborer##70997+, Kor'kron Marauder##70999+
		collect 15 Kor'kron Lumber##97530 |q 32811/1 |goto Northern Barrens 33.3,22.4
	step
		click Kor'kron Oil Drum##220359
		kill Kor'kron Incinerator##71002+, Mercenary Engineer##71000+, Kor'kron Overseer##71006+, Kor'kron Demolisher##71005+
		collect 15 Kor'kron Oil##97544 |q 32811/3 |goto Northern Barrens 52.7,34.6
	step
		click Kor'kron Stone Crate##220357
		kill Kor'kron Earthshaker##71188+, Kor'kron Flameworg##71009+, Wild Earth##71187+
		collect 15 Kor'kron Stone##97543 |q 32811/2 |goto Northern Barrens 59.4,65.6
	step
		talk Vol'jin##70978
		turnin Battlefield: Barrens##32811 |goto Durotar 49.7,40.1
	step
		talk Chen Stormstout##71150
		accept The Old Seer##32815 |goto Durotar 49.8,40.1
	step
		talk Seer Hao Pham Roo##70980
		turnin The Old Seer##32815 |goto Kun-Lai Summit 45.0,47.8
		accept Path of the Last Emperor##32816 |goto Kun-Lai Summit 45.0,47.8
	step
		clicknpc Rope Anchor##71194
		Tie Down the First Anchor |q 32816/1 |goto Kun-Lai Summit/0 44.9,49.1
		|tip You will have to wait here for Seer Hao Pham Roo to walk up to you and give you the rope back.
	step
		clicknpc Rope Anchor##71194
		Tie Down the Second Anchor |q 32816/2 |goto Kun-Lai Summit/0 44.0,47.9
		|tip You will have to wait here for Seer Hao Pham Roo to walk up to you and give you the rope back.
	step
		clicknpc Rope Anchor##71194
		Tie Down the Third Anchor |q 32816/3 |goto Kun-Lai Summit/0 43.3,49.6
		|tip You will have to wait here for Seer Hao Pham Roo to walk up to you and give you the rope back.
	step
		clicknpc Rope Anchor##71194
		Tie Down the Fourth Anchor |q 32816/4 |goto Kun-Lai Summit/0 42.5,50.6
		|tip You will have to wait here for Seer Hao Pham Roo to walk up to you and give you the rope back.
	step
		clicknpc Rope Anchor##71194
		Tie Down the Fifth Anchor |q 32816/5 |goto Kun-Lai Summit/0 43.3,51.9
		|tip You will have to wait here for Seer Hao Pham Roo to walk up to you and give you the rope back.
	step
		talk Seer Hao Pham Roo##70980
		turnin Path of the Last Emperor##32816 |goto Kun-Lai Summit/0 43.8,51.1
	step
	label "weekly"
		talk Gleep Chatterswitch##71336
		accept The Road to War##32895 |goto Vale of Eternal Blossoms 85.7,59.7
	step
		talk Gleep Chatterswitch##71336
		Tell him you'd like to travel to Ratchet |goto Vale of Eternal Blossoms 85.7,59.7
		Step on the Teleporter |goto Northern Barrens 70.1,73.0 |noway |c
	step
		talk Ki'ta Arrowtusk##71333
		turnin The Road to War##32895 |goto Durotar 49.8,40.2
		accept Battlefield: Barrens##32872 |goto Durotar 49.8,40.2
	step
		click Kor'kron Meat Rack##220353
		kill Kor'kron Butcher##71012+, Kor'kron Outrider##71010+, Kor'kron Battlewolf##71011+
		collect 150 Kor'kron Meat##97545 |q 32872/3 |goto Northern Barrens 43.8,48.0
	step
		click Kor'kron Lumber##220361
		kill Mercenary Shredder##71001+, Hellscream Laborer##70997+, Kor'kron Marauder##70999+
		collect 150 Kor'kron Lumber##97530 |q 32872/1 |goto Northern Barrens 33.3,22.4
	step
		click Kor'kron Oil Drum##220359
		kill Kor'kron Incinerator##71002+, Mercenary Engineer##71000+, Kor'kron Overseer##71006+, Kor'kron Demolisher##71005+
		collect 150 Kor'kron Oil##97544 |q 32872/2 |goto Northern Barrens 52.7,34.6
	step
		click Kor'kron Stone Crate##220357
		kill Kor'kron Earthshaker##71188+, Kor'kron Flameworg##71009+, Wild Earth##71187+
		collect 150 Kor'kron Stone##97543 |q 32872/4 |goto Northern Barrens 59.4,65.6
	step
		talk Ki'ta Arrowtusk##71333
		turnin Battlefield: Barrens##32872 |goto Durotar 49.8,40.2
	step
		You have reached the end of the guide
		To do the weekly quest again, click here to be taken to the beginning |confirm |next "weekly"
]])

ZygorGuidesViewer:RegisterInclude("celestial_tournament",[[
	step
		talk Master Li##73082
		accept The Celestial Tournament##33137 |goto Timeless Isle/0 34.7,59.6
	step
		talk Master Li##73082 |goto Timeless Isle/0 34.7,59.6
		Tell him you'd like to enter the Celestial Tournament |goto Celestial Tournament/0 34.0,55.2 |noway |c
	step
		Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to
		Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_ |confirm |next "chen"
		OR
		Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_ |confirm |next "shademaster"
		OR
		Click here if those 3 NPCs are _Sully 'The Pickle' McLeary_, _Dr. Ion Goldbloom_, and _Lorewalker Cho_ |confirm |next "thepickle"
//Scenario (option 1)
	step
	label "chen"
		talk Chen Stormstout##71927
		Tell him, "Let's do this!"
		|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
		Defeat Chen Stormstout in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
		confirm
	step
		talk Wrathion##71924
		Tell him, "Let's do this!"
		|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
		Defeat Wrathion in a pet battle |q 33137 |goto Celestial Tournament/0 40.3,56.5
		confirm
	step
		talk Taran Zhu##71931
		Tell him, "Let's do this!"
		|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
		Defeat Taran Zhu in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.6
		confirm |next "phasetwo"
//Scenario (option 2)
	step
	label "shademaster"
		talk Shademaster Kiryn##71930
		Tell her, "Let's do this!"
		|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
		Defeat Shademaster Kiryn in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.3
		confirm
	step
		talk Blingtron 4000##71933
		Tell him, "Let's do this!"
		|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
		Defeat Blingtron 4000 in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.5
		confirm
	step
		talk Wise Mari##71932
		Tell him, "Let's do this!"
		|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
		Defeat Wise Mari in a pet battle |q 33137 |goto Celestial Tournament/0 40.0,52.7
		confirm |next "phasetwo"
//Scenario (option 3)
	step
	label "thepickle"
		talk Sully 'The Pickle' McLeary##71929
		Tell him, "Let's do this!"
		|tip Sully 'The Pickle' McLeary has an Undead Pet, a Critter Pet and an Aquatic Pet. Use Critter type attacks on his Undead, Beast type attacks on his Critter, and Flying type attacks on his Aquatic. Your pets should all be level 25.
		Defeat Sully 'The Pickle' McLeary in a pet battle |q 33137 |goto Celestial Tournament/0 37.8,57.4
		confirm
	step
		talk Dr. Ion Goldbloom##71934
		Tell him, "Let's do this!"
		|tip Dr. Ion Goldbloom has an Flying Pet, a Magic Pet and a Beast Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Mechanical type attacks on his Beast. Your pets should all be level 25.
		Defeat Dr. Ion Goldbloom in a pet battle |q 33137 |goto Celestial Tournament/0 40.4,56.4
		confirm
	step
		talk Lorewalker Cho##71926
		Tell him, "Let's do this!"
		|tip Lorewalker Cho has a Flying Pet, a Magic Pet and a Dragonkin Pet. Use Magic type attacks on his Flying, Dragonkin type attacks on his Magic, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
		Defeat Lorewalker Cho in a pet battle |q 33137 |goto Celestial Tournament/0 40.1,52.4
		confirm |next "phasetwo"
//Second part
	step
	label "phasetwo"
		talk Yu'la, Broodling of Yu'lon##73507
		Tell him, "Let's do this!"
		|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Yu'la, Broodling of Yu'lon in a pet battle |q 33137 |goto Celestial Tournament/0 38.9,56.7
		confirm
	step
		talk Xu-Fu, Cub of Xuen##73505
		Tell him, "Let's do this!"
		|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Xu-Fu, Cub of Xuen in a pet battle |q 33137 |goto Celestial Tournament/0 40.0,55.2
		confirm
	step
		talk Zao, Calfling of Niuzao##73506
		Tell him, "Let's do this!"
		|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Zao, Calfling of Niuzao in a pet battle |q 33137 |goto Celestial Tournament/0 39.0,53.8
		confirm
	step
		talk Chi-Chi, Hatchling of Chi-Ji##73503
		Tell him, "Let's do this!"
		|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
		Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |q 33137 |goto Celestial Tournament/0 38.0,55.2
		confirm
	step
		Complete The Celestial Tournament |q 33137/1
]])

ZygorGuidesViewer:RegisterInclude("timeless_isle_prequests",[[
	step
		Click the _Quest Accept_ Box:
		accept A Flash of Bronze...##33229 |goto Vale of Eternal Blossoms 84.5,59.2
	step
		talk Chromie##73691
		turnin A Flash of Bronze...##33229 |goto Vale of Eternal Blossoms 80.7,33.1
		accept Journey to the Timeless Isle##33231 |goto Vale of Eternal Blossoms 80.7,33.1
	step
		use Curious Bronze Timepiece##104113
		You will be teleported to the Timeless Isle |goto Timeless Isle 23.3,70.8 |noway |c
	step
		talk Michi Windblossom##71940
		fpath Tushui Landing |goto Timeless Isle 23.1,70.9
	step
		talk Watcher Lara##73348
		turnin Journey to the Timeless Isle##33231 |goto Timeless Isle 23.1,71.5 
		accept Time Keeper Kairoz##33160 |goto Timeless Isle 23.1,71.5
	step
		talk Kairoz##72870
		turnin Time Keeper Kairoz##33160 |goto Timeless Isle 34.5,53.8
		accept A Timeless Tour##33161 |goto Timeless Isle 34.5,53.8
		accept Time In Your Hands##33228 |goto Timeless Isle 34.5,53.8
	step
		Explore The Misty Strand |q 33161/4 |goto Timeless Isle/0 24.6,31.8
	step
		Explore Cavern of Lost Spirits |q 33161/1 |goto Timeless Isle/0 42.9,41.9
	step
		Explore Red Stone Run |q 33161/6 |goto Timeless Isle/0 50.9,46.6
	step
		Explore Firewalkers' Path |q 33161/3 |goto Timeless Isle/0 50.4,78.5
	step
		Explore Old Pi'jiu |q 33161/5 |goto Timeless Isle/0 37.5,75.5
	step
		Explore Croaking Hollow |q 33161/2 |goto Timeless Isle/0 60.5,72.6
	step
		talk Kairoz##72870
		turnin A Timeless Tour##33161 |goto Timeless Isle 34.5,53.8
		accept The Essence of Time##33336 |goto Timeless Isle 34.5,53.8
	step
		kill Brilliant Windfeather##72762+, Windfeather Chick##71143+
		collect Epoch Stone##105715 |q 33336/1 |goto Timeless Isle 32.2,51.9
	step
		talk Kairoz##72870
		turnin The Essence of Time##33336 |goto Timeless Isle 34.5,53.5
	step
		talk Mistweaver Ai##73305
		Meet Mistweaver Ai |q 33228/2 |goto Timeless Isle 42.8,55.7
	step
		talk Mistweaver Ku##73306
		Meet Mistweaver Ku |q 33228/3 |goto Timeless Isle 42.8,54.7
	step
		kill Ironfur Herdling##72842+, Ironfur Grazer##72843+, Ironfur Great Bull##72844+
		kill Windfeather Chick##71143+, Windfeather Nestkeeper##72761+, Brilliant Windfeather##72762+
		earn 1000 Timeless Coin##777 |q 33228/1 |goto Timeless Isle 43.9,55.4
	step
		talk Kairoz##72870
		turnin Time In Your Hands##33228 |goto Timeless Isle/0 34.6,53.7
		accept Hints From The Past##33332 |goto Timeless Isle/0 34.6,53.7
		accept The Last Emperor##33335 |goto Timeless Isle/0 34.6,53.7
	step
		talk Mistweaver Ai##73305
		buy Time-Worn Journal##103977 |goto Timeless Isle 42.8,55.6
	step
		talk Emperor Shaohao##73303
		Speak with Emperor Shaohao |q 33335/1 |goto Timeless Isle 42.9,55.2
	step
		talk Emperor Shaohao##73303
		turnin The Last Emperor##33335 |goto Timeless Isle 42.9,55.2
		accept Timeless Nutriment##33340 |goto Timeless Isle 42.9,55.2
	step
		click Ripe Crispfruit##221689
		Consume a Timeless Nutriment |q 33340/1 |goto Timeless Isle/0 42.8,53.3
	step
		talk Emperor Shaohao##73303
		turnin Timeless Nutriment##33340 |goto Timeless Isle 42.9,55.2
		accept Wayshrines Of The Celestials##33341 |goto Timeless Isle 42.9,55.2
	step
		map Timeless Isle
		path follow loose;loop on;dist 15
		path	30.1,45.7	26.8,52.2	30.5,62.6
		path	27.9,72.0	37.4,74.4	49.7,70.4
		path	66.1,72.3	63.9,50.7	35.0,29.6
		Follow the path to activate one of the Shrines
		click Celestial Shrine
		|tip They are on a 10-15 minute cooldown, so just keep running around until you find an active one.
		Receive a Blessing of the Celestials |q 33341/1
	step
		talk Emperor Shaohao##73303
		turnin Wayshrines Of The Celestials##33341 |goto Timeless Isle 42.9,55.2
	step
		talk Kairoz##72870
		turnin Hints From The Past##33332 |goto Timeless Isle 34.5,53.8
		accept Timeless Treasures##33333 |goto Timeless Isle 34.5,53.8
	step
		click Moss-Covered Chest##223089
		Hidden Treasure Found |q 33333/1 |goto Timeless Isle 46.8,46.8
	step
		talk Kairoz##72870
		turnin Timeless Treasures##33333 |goto Timeless Isle 34.6,53.8
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Cataclysm
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("A_Deepholm_Leveling",[[
	step
		click Hero's Call Board##10016
		accept Hero's Call: Deepholm!##27727 |goto Stormwind City 62.9,71.6
	step
		talk Naraat the Earthspeaker##45226
		turnin Hero's Call: Deepholm!##27727 |goto 74.5,19.0
		accept The Maelstrom##27203 |goto 74.5,19.0
	step
		talk Thrall##45042
		turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
		accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
	step
		clicknpc Wyvern##45005 |goto 32.5,52.0
		You will fly into Deepholm |goto Deepholm,49.9,54.7 < 5 |noway |c |q 27123
	step
		talk Maruut Stonebinder##43065
		turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
		accept Gunship Down##26245 |goto Deepholm,49.6,53.0
	step
		talk Seer Kormo##43397
		accept Elemental Energy##27136 |goto 49.7,52.9
		accept The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Earthcaller Yevaa##42573
		accept Where's Goldmine?##26409 |goto 49.5,53.3
	step
		talk Caretaker Nuunwa##45300 
		home Temple of Earth |q 27135 |future |goto 49.2,51.9
	step
		talk Initiate Goldmine##42574
		turnin Where's Goldmine?##26409 |goto 46.5,57.3
		accept Explosive Bonding Compound##26410 |goto 46.5,57.3
		accept Something that Burns##27135 |goto 46.5,57.3
	step
		kill Rockslice Flayer##42606+, Rockslice Ripper##42607+ |goto 45.5,57.9
		collect 5 Quartzite Resin |q 26410/1 |goto 45.5,57.9
		You can find more Rockslice Flayers around |goto 42.5,55.6
	step
		Use your Depleted Totem |use Depleted Totem##60835
		kill Lodestone Elemental##43258+, Energized Geode##43254+ |goto 51.1,61.6
		|tip Kill them next to your Depleted Totems.
		Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
	step
		Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		kill Magmatooth##45099 |goto 52.0,58.9
		collect The Burning Heart |q 27135/1 |goto 52.0,58.9
	step
		talk Initiate Goldmine##42574
		turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
		turnin Something that Burns##27135 |goto 46.5,57.3
		accept Apply and Flash Dry##26411 |goto 46.5,57.3
	step
		Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |modelnpc Flint Oremantle##43036+ |goto 46.6,57.2
		Apply the Explosive Bonding Compound |q 26411/1
	step
		talk Initiate Goldmine##42574
		turnin Apply and Flash Dry##26411 |goto 46.5,57.3
		accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
	step
		Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
	step
		talk Earthcaller Yevaa##42573
		turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
		accept To Stonehearth's Aid##26484 |goto 49.5,53.3
	step
		talk Seer Kormo##43397
		turnin Elemental Energy##27136 |goto 49.7,52.9
	step
		clicknpc Slain Cannoneer##43032 |goto 56.1,74.2
		Receive the Second Clue |q 26245/2 |goto 56.1,74.2
	step
		clicknpc Captain Skullshatter##43048 |goto 53.5,73.8
		Receive the First Clue |q 26245/1 |goto 53.5,73.8
		|tip It is inside on the upper level of this broken gunship.
	step
		click Captain's Log##6891
		accept Captain's Log##26246 |goto 53.6,73.8
	stickystart "deepstoneelement"
	step
		clicknpc Unexploded Artillery Shell##43044
		Receive the Third Clue |q 26245/3 |goto 56.7,76.4
		|tip It is on the ground in front of the gunship.
	step "deepstoneelement"
		kill 5 Deepstone Elemental##43026+ |q 26244/1 |goto 55.9,74.9
	step
		talk Maruut Stonebinder##43065
		turnin Gunship Down##26245 |goto 49.6,52.9
		turnin Captain's Log##26246 |goto 49.6,52.9
	step
		talk Seer Kormo##43397
		turnin The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Maruut Stonebinder##43065
		accept Diplomacy First##26247 |goto 49.6,53.0
	step
		talk Stormcaller Mylra##42684 
		|tip She's up above in an airship patrolling this area.
		turnin Diplomacy First##26247 |goto 62.4,52.6
		accept All Our Friends Are Dead##26248 |goto 62.4,52.6
		accept The Admiral's Cabin##26249 |goto 62.4,52.6
	step
		All around on this air ship:
		Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
		Receive 6 Slain Crew Member Information |q 26248/1
		|modelnpc Slain Crew Member##42681+
	step
		Enter the doorway on the main deck of the air ship:
		talk First Mate Moody##43082
		|tip He will be on your left.
		turnin The Admiral's Cabin##26249
		accept Without a Captain or Crew##26427
	step
		Leave through the doorway and immediately turn right:
		click Bottle of Whiskey##9712 
		|tip Located on the life boat.
		collect Bottle of Whiskey |q 26427/1
	step
		All around on the deck of the air ship:
		click Spool of Rope##7538
		collect Spool of Rope |q 26427/2
	step
		Enter the doorway on the main deck of the air ship:
		talk First Mate Moody##43082
		turnin Without a Captain or Crew##26427
	step
		Go to the very top of the air ship:
		talk Stormcaller Mylra##42684
		turnin All Our Friends Are Dead##26248
		accept Take No Prisoners##26251
		accept On Second Thought, Take One Prisoner##26250
	step
		Go onto the main deck of the ship and go down the stairs to the deck below:
		Fight Mor'norokk the Hateful until he surrenders 
		|tip He's downstairs in the airship, in the very back of the first level you come to. He may be marked on your mini map as a white skull with red eyes.
		talk Mor'norokk the Hateful##42801
		Subdue Mor'norokk the Hateful |q 26250/1
	step
		All around on this lower deck of the air ship:
		kill 6 Twilight Saboteur##42885 |q 26251/1
	step
		Go to the very top of the air ship:
		talk Stormcaller Mylra##42684
		turnin Take No Prisoners##26251
		turnin On Second Thought, Take One Prisoner##26250
		accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		clicknpc Stormbeak##42887
		Interrogate Mok'norrok |q 26254/1
	step
		When you land on the air ship again:
		talk Stormcaller Mylra##42684
		turnin Some Spraining to Do##26254
		accept Return to the Temple of Earth##26255
	step
		talk Maruut Stonebinder##43065
		turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
		accept Deathwing's Fall##26258 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		accept Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		Go to this spot |goto 59.4,58.2
		Reach Deathwing's Fall |q 26258/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Deathwing's Fall##26258
		accept Bleed the Bloodshaper##26256
	step
		kill Twilight Bloodshaper##43218+ |goto 61.5,60.6
		collect Twilight Orders |q 26256/1 |goto 61.5,60.6
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Bleed the Bloodshaper##26256
		accept Question the Slaves##26261
	stickystart "bloodofneltharion"
	step
		click Slavemaster's Coffer##41
		|tip It is in a small box inside this tent.
		collect 1 Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
	step "bloodofneltharion"
		kill Living Blood##43123+ |goto 61.2,60.1
		collect 5 Blood of Neltharion |q 26259/1 |goto 61.2,60.1
	step
		click Ball and Chain##181+ |goto 64.5,65.5
		Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Question the Slaves##26261
		accept The Forgemaster's Log##26260
	step
		click Forgemaster's Log##6891 |goto 63.7,55.4
		|tip It is at the top of this tower. 
		turnin The Forgemaster's Log##26260
		accept Silvermarsh Rendezvous##27007
	step
		Go to this spot |goto 70.6,61.2
		Reach Upper Silvermarsh |q 27007/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Silvermarsh Rendezvous##27007
		accept Quicksilver Submersion##27010
	step
		click Trogg Crate##9855 |goto 71.8,64.3
		collect Trogg Crate##60809 |q 27010
		kill Murkstone Trogg##44936+ |goto 72.4,62.7
		collect 1 Maziel's Research##60816 |n
		Click Maziel's Research in your bags |use Maziel's Research##60816
		accept Twilight Research##27100
	step
		Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		Watch the dialogue
		Uncover the World Pillar Fragment Clue |q 27010/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Quicksilver Submersion##27010
		accept The Twilight Overlook##27061 |goto 74.9,64.8
	step
		kill Mercurial Ooze##43158+ |goto 72.5,65.2
		collect 4 Twilight Research Notes |q 27100/1 |goto 72.5,65.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Twilight Research##27100
		accept Maziel's Revelation##27101
	step
		click Maziel's Journal##2530
		turnin Maziel's Revelation##27101 |goto 67.2,70.2
		accept Maziel's Ascendancy##27102 |goto 67.2,70.2
	step
		Enter the cave |goto 69.5,68.0 < 5 |walk
		kill Maziel##44967 |q 27102/1 |indoors Lower Silvermarsh
		Click the Quest Complete box that displays on the right side of the screen under your minimap |q 27102 |future
		turnin Maziel's Ascendancy##27102 |goto 72.8,62.0 |indoors Lower Silvermarsh
	step
		Leave the cave |goto 69.5,68.0 < 5 |walk
		talk Stormcaller Mylra##44010
		turnin The Twilight Overlook##27061 |goto 64.5,82.1
		accept Big Game, Big Bait##26766 |goto 64.5,82.1
		accept To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Jadecrest Basilisk##43981+
		Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
		collect 5 Side of Basilisk Meat |q 26766/1
		kill Twilight Dragonstalker##43992+ |goto 58.0,84.8
		collect Twilight Snare |q 26768/1 |goto 58.0,84.8
	step
		talk Stormcaller Mylra##44010
		turnin Big Game, Big Bait##26766 |goto 64.5,82.1
		turnin To Catch a Dragon##26768 |goto 64.5,82.1
		accept Testing the Trap##26771 |goto 64.5,82.1
	step
		Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.9,85.3
	step
		talk Stormcaller Mylra##44010
		turnin Testing the Trap##26771 |goto 64.5,82.1
		accept Abyssion's Minions##26857 |goto 64.5,82.1
	step
		talk Seer Galekk##44222
		accept Block the Gates##26861 |goto 64.6,82.2
	stickystart "abyssionunder"
	step
		Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
	step
		Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
	step "abyssionunder"
		kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+ |goto 69.9,76.7
		Defeat 8 Abyssion's Underlings |q 26857/1
	step
		talk Seer Galekk##44222
		turnin Block the Gates##26861 |goto 64.6,82.2
	step
		talk Stormcaller Mylra##44010
		turnin Abyssion's Minions##26857 |goto 64.5,82.2
		accept The World Pillar Fragment##26876 |goto 64.5,82.2
	step
		Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		kill Abyssion##44289 |goto 69.9,76.9
		click The First Fragment of the World Pillar##9779 |goto 69.9,76.9
		collect The Upper World Pillar Fragment |q 26876/1 |goto 69.9,76.9
	step
		talk Maruut Stonebinder##43065
		turnin The World Pillar Fragment##26876 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		talk Crag Rockcrusher##43071
		turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
		accept The Quaking Fields##27931 |goto 27.9,68.7
	step
		talk Slate Quicksand##47195
		turnin The Quaking Fields##27931 |goto 30.6,77.7
		accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		accept Elemental Ore##27933 |goto 30.6,77.7
	step
		Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto 32.2,79.1
		kill Jade Rager##44220+ |goto 32.2,79.1
		collect 6 Elemental Ore |q 27933/1 |goto 32.2,79.1
	step
		talk Slate Quicksand##47195
		turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		turnin Elemental Ore##27933 |goto 30.6,77.7
		accept One With the Ground##27934 |goto 30.6,77.7
	step
		talk Slate Quicksand##47195
		Tell him you are ready for the ritual
		Complete the One With the Ground Ritual |q 27934/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin One With the Ground##27934 |goto 30.6,77.7
		accept Bring Down the Avalanche##27935 |goto 30.6,77.7
	step
		kill Avalanchion##44372 |q 27935/1 |goto 46.9,89.1
	step
		Leave the cave |goto 43.4,82.0 < 5 |walk
		talk Crag Rockcrusher##43071
		turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
		accept Stonefather's Boon##26499 |goto 27.9,68.7
	step
		talk Earthbreaker Dolomite##43160
		accept We're Surrounded##26500 |goto 28.2,69.6
	step
		kill 12 Stone Trogg Ambusher##43134+ |q 26500/1 |goto 29.7,68.8
		Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |modelnpc Stonehearth Defender##43138+
		Grant the Stonefather's Boon 12 times |q 26499/1
	step
		talk Earthbreaker Dolomite##43160
		turnin We're Surrounded##26500 |goto 28.2,69.6
		accept Thunder Stones##26502 |goto 28.2,69.6
	step
		talk Crag Rockcrusher##43071
		turnin Stonefather's Boon##26499 |goto 27.9,68.7
		accept Sealing the Way##26501 |goto 27.9,68.7
	stickystart "thunderstone"
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		Seal the Shrine |q 26501/4 |goto 27.3,67.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		Seal the Barracks |q 26501/3 |goto 26.0,68.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		Seal the Inn |q 26501/2 |goto 26.2,69.8
	step "thunderstone"
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
		Seal the Armory |q 26501/1
		click Thunder Stone##9722+ |goto 27.3,70.1
		collect 12 Thunder Stone |q 26502/1 |goto 27.3,70.1
	step
		talk Gravel Longslab##43168
		turnin Sealing the Way##26501 |goto 24.5,62.4
		accept Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		turnin Thunder Stones##26502 |goto 24.8,62.2
		accept Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Earthmender Deepvein##43319
		accept Battlefront Triage##26591 |goto 24.6,62.2
	step
		Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |modelnpc Injured Earthen##43233
		Patch up 10 Injured Earthen |q 26591/1
		Click Catapult Parts 
		|tip They look kind of like big metal parts laying on the ground around this area.
		collect 6 Catapult Part |q 26564/1 |goto 23.9,60.3
		kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+ |goto 23.9,60.3
		kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
		You can also look around 23.1,53.9 for more
	step
		talk Gravel Longslab##43168
		turnin Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Earthmender Deepvein##43319
		turnin Battlefront Triage##26591 |goto 24.6,62.2
	step
		talk Clay Mudaxle##43169
		turnin Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Gravel Longslab##43168
		accept Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		kill Troggzor the Earthinator##43456 |goto 22.6,56.9
		collect The Earthinator's Cudgel |q 26625/1 |goto 22.6,56.9
	step
		talk Gravel Longslab##43168
		turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		accept Rush Delivery##27126 |goto 24.8,62.2
	step
		talk Peak Grindstone##45043
		turnin Rush Delivery##27126 |goto 20.7,61.6
		accept Close Escort##26632 |goto 20.7,61.6
	step
		talk Peak Grindstone##45043 |goto 20.7,61.6
		Tell him you're ready to escort the catapult 
		|tip You need to be near the catapult or it will stop
		Safely Escort the Earthen Catapult |q 26632/1
		|modelnpc Earthen Catapult##43509+
	step
		talk Pyrium Lodestone##43897
		turnin Close Escort##26632 |goto 22.7,52.0
		accept Keep Them off the Front##26755 |goto 22.7,52.0
	step
		clicknpc Earthen Catapult##43509
		Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		Bombard 30 Reinforcements |q 26755/1 |goto 22.4,52.0
	step
		talk Pyrium Lodestone##43897
		turnin Keep Them off the Front##26755 |goto 22.7,52.0
		accept Reactivate the Constructs##26762 |goto 22.7,52.0
	step
		talk Flint Oremantle##43898
		accept Mystic Masters##26770 |goto 22.8,52.1
	step
		clicknpc Deactivated War Construct##43984
		Reactivate 5 Deactivated War Constructs |q 26762/1
		kill 5 Needlerock Mystic |q 26770/1 |goto 22.6,47.6
		|tip Activate the golems before attacking mystics.
	step
		talk Flint Oremantle##43898
		turnin Mystic Masters##26770 |goto 22.8,52.1
	step
		talk Pyrium Lodestone##43897
		turnin Reactivate the Constructs##26762 |goto 22.7,52.0
		accept Down Into the Chasm##26834 |goto 22.7,52.0
	step
		talk Slate Quicksand##44143
		turnin Down Into the Chasm##26834 |goto 27.6,44.8
		accept Sprout No More##26791 |goto 27.6,44.8
		accept Fungal Monstrosities##26792 |goto 27.6,44.8
	step
		clicknpc War Guardian##44126 |goto 27.6,44.7
		Obtain a War Guardian for the Sprout No More quest |q 26791/1
		Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
	step
		kill 5 Fungal Monstrosity##44035+ |q 26792/2
		clicknpc Giant Mushroom##44049+
		Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
	step
		talk Slate Quicksand##44143
		turnin Sprout No More##26791 |goto 27.6,44.8
		turnin Fungal Monstrosities##26792 |goto 27.6,44.8
		accept A Slight Problem##26835 |goto 27.6,44.8
	step
		talk Pyrium Lodestone##43897
		turnin A Slight Problem##26835 |goto 22.7,52.0 
		accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
	step
		kill Bouldergut##44151 |goto 24.5,31.1
		Rescue Stonefather Oremantle |q 26836/1
		|tip He is up high on an upper rock platform.
	step
		talk Pyrium Lodestone##43897
		turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
		accept The Hero Returns##27937 |goto 22.7,52.0
	step
		talk Stonefather Oremantle##44204
		turnin The Hero Returns##27937 |goto 28.0,68.6
		accept The Middle Fragment##27938 |goto 28.0,68.6
	step
		click The Stonefather's Safe##7608
		collect The Middle Fragment of the World Pillar |q 27938/1 |goto 28.0,68.7
	step
		talk Earthcaller Yevaa##42573
		turnin The Middle Fragment##27938 |goto 49.5,53.3
	step
		talk Maruut Stonebinder##43065
		accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
	step
		talk Earthcaller Torunscar##42730
		turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
		accept Crumbling Defenses##26312 |goto 46.1,45.6
		accept On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Core of Our Troubles##26313 |goto 46.2,45.7
	step
		kill Irestone Rumbler##42780+ |goto 44.3,43.7
		collect Irestone Core##58168 |q 26313/1 |n |goto 44.3,43.7
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Stormcaller Mylra |q 26312/2
		|modelnpc Servant of Therazane##42781+
	step
		kill Irestone Rumbler##42780+ |goto 44.5,41.3
		collect Irestone Core##58168 |q 26313/1 |n |goto 44.5,41.3
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Tawn Winterbluff |q 26312/1
		|modelnpc Servant of Therazane##42781+
	step
		kill Irestone Rumbler##42780+ |goto 47.6,42.8
		collect Irestone Core##58168 |q 26313/1 |n |goto 47.6,42.8
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Hargoth Dimblaze |q 26312/3
		|modelnpc Servant of Therazane##42781+
	step
		kill Irestone Rumbler##42780+ |goto 46.2,42.2
		collect 6 Irestone Core |q 26313/1 |goto 46.2,42.2
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Bring down 3 Servants of Therazane |q 26314/1
		|modelnpc Servant of Therazane##42781+
	step
		talk Earthmender Norsala##42731
		turnin Core of Our Troubles##26313 |goto 46.2,45.7
	step
		talk Earthcaller Torunscar##42730
		turnin Crumbling Defenses##26312 |goto 46.1,45.6
		turnin On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Imposing Confrontation##26315 |goto 46.2,45.7
	step
		Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |goto 49.2,40.1
		|tip He's a huge rock giant that walks around this area.
		Seek Peace with Boden the Imposing |q 26315/1
		|modelnpc Boden the Imposing##42471+
	step
		talk Earthmender Norsala##42731
		turnin Imposing Confrontation##26315 |goto 46.2,45.7
		accept Rocky Relations##26328 |goto 46.2,45.7
	step
		talk Diamant the Patient##42467
		turnin Rocky Relations##26328 |goto 56.5,42.7
		accept Hatred Runs Deep##26376 |goto 56.5,42.7
		accept Unsolid Ground##26377 |goto 56.5,42.7
	step
		talk Quartz Stonetender##42899
		accept Loose Stones##26375 |goto 56.5,41.0
	stickystart "jadecrystalcluster"
	stickystart "lorthunacultist"
	step
		kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
	step "jadecrystalcluster"
		click Jade Crystal Cluster##9694+
		collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
		Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 
		|tip They look like small rock giants around this area.
		Release 6 Quartz Rocklings |q 26375/1
		|modelnpc Quartz Rockling##42900+
	step
		Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		collect Jade Crystal Composite##58783 |q 26377
	step
		Use your Jade Crystal Composite |use Jade Crystal Composite##58783 |goto 59.6,41.4
		Lure an Agitated Tunneler |q 26377/1
	step "lorthunacultist"
		kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+ |goto 59.3,40.6
		kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
	step
		talk Quartz Stonetender##42899
		turnin Loose Stones##26375 |goto 56.5,41.0
	step
		talk Diamant the Patient##42467
		turnin Hatred Runs Deep##26376 |goto 56.5,42.7
		turnin Unsolid Ground##26377 |goto 56.5,42.7
		accept Violent Gale##26426 |goto 56.5,42.7
	step
		Get next to Felsen the Enduring
		Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
		|modelnpc 43805
	step
		Fly to the mouth of this cave
		Find the entrance to the Crumbling Depths |q 26426/2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Violent Gale##26426 |goto 58.4,25.7
		accept Depth of the Depths##26869 |goto 58.4,25.7
	step
		Enter the cave and follow the path |goto 64.5,21.7 < 5 |walk
		Watch out for the Colossal Gyreworm. It patrols around this cave in a circle, and if it hits you you'll get caught inside of it, take damage, and get dumped back at the beginning.
		|tip As you're going around this first curve, if you don't have a speed boost there is a small side passage you can step into to avoid getting hit by the Colossal Gyreworm.
		|modelnpc Colossal Gyreworm##44258
		Follow the path |goto 65.3,18.4 < 5 |noway |c
		confirm
	step
		click Gigantic Painite Cluster##9815
		turnin Depth of the Depths##26869 |goto 66.4,20.6
		accept A Rock Amongst Many##26871 |goto 66.4,20.6
		Follow the path to this spot, then jump down |goto 64.3,23.5 < 5 
	step
		Leave the cave |goto 58.3,25.5 < 5 |walk
		talk Diamant the Patient##42467
		turnin A Rock Amongst Many##26871 |goto 56.5,42.7
		accept Entrenched##26436 |goto 56.5,42.7
	step
		talk Kor the Immovable##42469
		turnin Entrenched##26436 |goto 34.3,34.3
		accept Intervention##26438 |goto 34.3,34.3
		accept Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		accept Putting the Pieces Together##26439 |goto 34.1,35.2
	stickystart "Jaspertipflayers"
	stickystart "Chalkycrystal"
	stickystart "Stoneboundelementals"
	step "Jaspertipflayers"
		kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+ |goto 30.5,46.8
		kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
	step "Chalkycrystal"
		click Chalky Crystal Formation##9715+
		collect 8 Chalky Crystal Formation |q 26437/1
	step "Stoneboundelementals"
		clicknpc Dormant Stonebound Elemental##43115
		Reform 6 Stonebound Elementals |q 26439/1
		|tip These look like broken rubble on the ground, like after you've killed a stone elemental.
		More of all of these can be found around |goto Deepholm,34.2,51.7
	step
		talk Kor the Immovable##42469
		turnin Intervention##26438 |goto 34.3,34.3
		turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		turnin Putting the Pieces Together##26439 |goto 34.1,35.2
	step
		talk Kor the Immovable##42469
		accept Pebble##28869 |goto 34.4,34.3
	step
		Next to you:
		talk Pebble##43116
		turnin Pebble##28869
		accept Clingy##26440
	step
		Get next to the huge green crystals |goto 30.1,47.7
		|tip Protect Pebble.
		Bring Pebble to the crystal formation |q 26440/1
	step
		Next to you:
		talk Pebble##43116
		turnin Clingy##26440
		accept So Big, So Round...##26441
	step
		talk Kor the Immovable##42469
		turnin So Big, So Round...##26441
		accept Petrified Delicacies##26507 |goto 34.3,34.3
		accept Rock Bottom##26575 |goto 34.3,34.3
	stickystart "petrifiedrat"
	step
		kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
	step "petrifiedrat"
		clicknpc Petrified Stone Bat##43182+ |goto 47.5,26.8
		collect 12 Petrified Stone Bat |q 26507/1 
		|tip They look like little black bats laying on the ground around this area. Basiliks around this area may drop them as well.
		There's more over here |goto Deepholm,44,26.2
	step
		Next to you:
		talk Pebble##43116
		turnin Petrified Delicacies##26507
	step
		talk Kor the Immovable##42469
		turnin Rock Bottom##26575
		accept Steady Hand##26576 |goto 34.3,34.3
		accept Rocky Upheaval##26577 |goto 34.3,34.3
	step
		talk Terrath the Steady##42466
		turnin Steady Hand##26576 |goto 39.9,19.4
		accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
	step
		talk Terrath the Steady##42466 |goto 39.9,19.4
		Tell him you are ready to escort a group of elementals across the open.
		Speak to Terrath the Steady |q 26656/1
	step
		Go to this spot |goto 51.1,14.7
		Escort 5 Opalescent Guardians to safety |q 26656/2 
		|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
		|modelnpc 43591
	step
		talk Terrath the Steady##42466
		turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
		accept Hard Falls##26657 |goto 39.9,19.4
		accept Fragile Values##26658 |goto 39.9,19.4
	stickystart "stonedrake"
	step
		kill Stone Trogg Beast Tamer##43598 |goto 35.4,22.5
		|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		collect Stonework Mallet |q 26658/1
	step "stonedrake"
		kill 6 Stone Drake##42522 |q 26657/1 |goto 36.5,18.8
		|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		talk Terrath the Steady##42466
		turnin Hard Falls##26657 |goto 40.0,19.4
		turnin Fragile Values##26658 |goto 40.0,19.4
		accept Resonating Blow##26659 |goto 40.0,19.4
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		Strike the Pale Resonating Crystal |q 26659/1
		kill Aeosera##43641 |goto 32.7,24.3
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 26659/2
		|model Pale Resonating Crystal##6415
	step
		talk Terrath the Steady##42466
		turnin Resonating Blow##26659 |goto 33.1,24.1
		If Terrath the Steady doesn't spawn at the appropriate spot |goto 40.0,19.4
	step
		talk Gorsik the Tumultuous##42472
		turnin Rocky Upheaval##26577 |goto 72.2,54.0
		accept Doomshrooms##26578 |goto 72.2,54.0
		accept Gone Soft##26579 |goto 72.2,54.0
		accept Familiar Intruders##26580 |goto 72.2,54.0
	step
		talk Windspeaker Lorvarius##43395
		turnin Familiar Intruders##26580 |goto 71.8,47.6
		accept A Head Full of Wind##26581 |goto 71.8,47.6
	step
		kill 8 Fungal Behemoth##42475+ |q 26579/1
		kill Doomshroom##43388+ |goto 73.6,40.8
		Destroy 10 Doomshrooms |q 26578/1 
		Gather a sample of the red mist |q 26581/1 
		|tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
		You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
	step
		talk Windspeaker Lorvarius##43395
		turnin A Head Full of Wind##26581 |goto 71.8,47.6
		accept Unnatural Causes##26582 |goto 71.8,47.6
	step
		talk Gorsik the Tumultuous##42472
		turnin Doomshrooms##26578 |goto 72.2,54.0
		turnin Gone Soft##26579 |goto 72.2,54.0
		turnin Unnatural Causes##26582 |goto 72.2,54.0
		accept Shaken and Stirred##26584 |goto 72.2,54.0
		accept Corruption Destruction##26585 |goto 72.2,54.0
	step
		talk Ruberick##43442
		accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
	step
		Enter the cave |goto 68.6,29.1 < 10 |walk
		talk Earthmender Norsala##43503 |goto 69.8,31.9 |indoors Fungal Deep
		Tell her you're ready when she is |q 26583/1 |indoors Fungal Deep
		kill Fungalmancer Glop##43372 |q 26583/2  |indoors Fungal Deep
		|tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
		Follow the path up |goto 70.2,33.8 < 5 |walk |indoors Fungal Deep
	step 
		Leave the cave |goto 68.6,29.1 < 10 |walk
		talk Ruberick##43442
		turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
	step
		kill 8 Verlok Pillartumbler##43513+ |q 26584/1
		click Verlok Miracle-Grow##6895
		collect 8 Verlok Miracle-Grow |q 26585/1 |goto 69.4,24.8
	step
		talk Gorsik the Tumultuous##42472
		turnin Shaken and Stirred##26584 |goto 72.2,54.0
		turnin Corruption Destruction##26585 |goto 72.2,54.0
		accept At the Stonemother's Call##26750 |goto 72.2,54.0
	step
		talk Therazane##42465
		turnin At the Stonemother's Call##26750 |goto 56.3,12.2
		accept Audience with the Stonemother##26752 |goto 56.3,12.2
	step
		Watch the dialogue
		Attend the Stonemother's Audience |q 26752/1
	step
		talk Earthcaller Torunscar##43809
		turnin Audience with the Stonemother##26752 |goto 56.1,13.5
		accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
	step
		ding 83
	step
		talk Explorer Mowi##44799
		accept The Twilight Plot##27004 |goto 47.3,51.4
	step
		talk Prospector Brewer##44802
		accept Fly Over##27006 |goto 47.3,51.4
	step
		Go to this spot next to the big white portal
		Investigate the Master's Gate |q 27006/1 |goto 39.0,74.2
	step
		kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		collect Masters' Gate Plans |q 27004/1 |goto 40.1,72.2
	step
		talk Explorer Mowi##44799
		turnin The Twilight Plot##27004 |goto 47.3,51.4
	step
		talk Prospector Brewer##44802
		turnin Fly Over##27006 |goto 47.3,51.4
		accept Fight Fire and Water and Air with...##27042 |goto 47.3,51.4
	step
		talk Explorer Mowi##44799
		accept Decryption Made Easy##27040 |goto 47.3,51.4
	step
		kill Bound Water Elemental##44886 |goto 40.8,66.3
		Acquire the Water Ward |q 27042/2
	step
		kill Bound Fire Elemental##44887 |goto 36.0,67.4
		Acquire the Fire Ward |q 27042/1
	step
		kill Bound Air Elemental##44885 |goto 40.5,72.4
		Acquire the Air Ward |q 27042/3
	step
		click One-Time Decryption Engine##9842+ |goto 40.2,67.5
		Decrypt 6 Plans |q 27040/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Decryption Made Easy##27040 
		accept The Wrong Sequence##27058
	step
		click the Waygate Controller##9849 |goto 39.1,73.9
		Destroy the Waygate |q 27058/1
	step
		kill Haethen Kaul##44835 |q 27042/4 |goto 39.9,62.2
		|tip He's up on a huge floating rock.
	step
		talk Explorer Mowi##44799
		turnin The Wrong Sequence##27058 |goto 47.3,51.4
		accept That's No Pyramid!##28292 |goto 47.3,51.4
	step
		talk Prospector Brewer##44802
		turnin Fight Fire and Water and Air with...##27042 |goto 47.3,51.4
	step
		Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations: |goto 48.0,53.7
		[48.5,50.1]
		[47.4,50.9]
		[48.1,49.9]
		Tell them you are joining an assault on Lorthuna's Gate and they are needed.
		Rally 5 Earthen Ring |q 26827/1
		|modelnpc Windspeaker Lorvarius##43836+
		|modelnpc Yuldris Smolderfury##45034+
		|modelnpc Earthcaller Yevaa##44646+
		|modelnpc Tawn Winterbluff##44634+
		|modelnpc Tharm Wildfire##44631+
	step
		talk Maruut Stonebinder##43065
		turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
		accept Our Part of the Bargain##26828 |goto 49.6,53.0
	step
		talk Therazane##44025
		turnin Our Part of the Bargain##26828 |goto 63.3,25.0
		accept The Stone March##26829 |goto 63.3,25.0
		accept Therazane's Mercy##26832 |goto 63.3,25.0
	step
		talk Boden the Imposing##44080
		accept The Twilight Flight##26831 |goto 62.6,26.9
	stickystart "twilightprecult"
	step
		kill High Priestess Lorthuna##42914 |goto 62.4,31.8
		|tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
		Defeat High Priestess Lorthuna |q 26832/2
	step
		kill Boldrich Stonerender##42923 |goto 58.9,32.9
		Defeat Boldrich Stonerender |q 26832/1
	step
		kill Zoltrik Drakebane##42918 |goto 63.1,38.1
		|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
		Defeat Zoltrik Drakebane |q 26831/1
	step
		talk Terrath the Steady##42614
		turnin The Twilight Flight##26831 |goto 64.1,36.9
	step "twilightprecult"
		kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+ |goto 60.3,33.2
		kill 15 Twilight Precipice Cultists |q 26829/1
	step
		talk Therazane##44025
		turnin The Stone March##26829 |goto 63.3,25.0
		turnin Therazane's Mercy##26832 |goto 63.3,25.0
		accept Word In Stone##26833 |goto 63.3,25.0
	step
		talk Maruut Stonebinder##43818
		turnin Word In Stone##26833 |goto 49.6,53.0
		accept Undying Twilight##26875 |goto 49.6,53.0
	step
		kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
		kill Desecrated Earthrager##44683 |q 26875/2 |goto 50.7,49.6
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Undying Twilight##26875
		accept The Binding##26971
		|modelnpc 44681
	step
		kill High Priestess Lorthuna##43837 |q 26971/1 |goto 49.6,52.9
	step
		talk Earthcaller Torunscar##43835
		turnin The Binding##26971 |goto 49.6,52.9
]])

ZygorGuidesViewer:RegisterInclude("A_Vashj'ir_Leveling",[[
	step
		click Hero's Call Board##10016
		accept Hero's Call Vashj'ir##27724 |goto Stormwind City,62.9,71.6
	step
		When you enter Stormwind City:
		You will automatically accept a quest
		accept A Personal Summons##28825
	step
		talk Naraat the Earthspeaker##45226
		turnin A Personal Summons##28825 |goto Stormwind City,74.5,19.0
		accept Eye of the Storm##28826 |goto Stormwind City,74.5,19.0
	step
		click Waters of Farseeing##445
		Peer into the Waters of Farseeing |q 28826/1 |goto 74.4,19.5
	step
		talk Naraat the Earthspeaker##45226
		turnin Eye of the Storm##28826 |goto 74.5,19.0
	step
		talk Recruiter Burns##36799
		turnin Hero's Call Vashj'ir##27724 |goto 27.4,24.1
		accept Call of Duty##14482 |goto 27.4,24.1
	step
		Ride the mercenary ship to Vashj'ir |q 14482/1 
		|tip Wait on the docks, it could take a little while for the boat to finally show up.  |goto 18.5,25.4 |n
	step
		talk Erunak Stonespeaker##36915
		turnin Call of Duty##14482 |goto Kelp'thar Forest,45.2,23.4
		accept Sea Legs##24432 |goto Kelp'thar Forest,45.2,23.4
	step
		click Saltwater Stars##9991
		collect 3 Saltwater Starfish |q 24432/1 |goto 44.5,25.0
		click Conch Shell##9440 
		collect Conch Shell |q 24432/2 |goto 44.5,25.0
	step
		talk Erunak Stonespeaker##36915
		turnin Sea Legs##24432 |goto 45.2,23.4
		accept Pay It Forward##25281 |goto 45.2,23.4
	step
		Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##52710
		Rescue 6 Drowning Soldiers |q 25281/1 |goto 44.3,27.6
		|modelnpc Drowning Soldier##39663
	step
		talk Erunak Stonespeaker##36915
		turnin Pay It Forward##25281 |goto 45.2,23.4
		accept Rest For the Weary##25405 |goto 45.2,23.4
	step
		talk Erunak Stonespeaker##36915
		home The Briny Cutter |goto 45.2,23.4
	step
		talk Captain Taylor##39887
		turnin Rest For the Weary##25405 |goto 44.7,22.6
		accept Buy Us Some Time##25357|goto 44.7,22.6
		accept Traveling on Our Stomachs##25546 |goto 44.7,22.6
	stickystart "zinjatar"
	step
		kill Splitclaw Skitterer##40685+
		collect 10 Succulent Crab Meat |q 25546/1 |goto 43.7,25.6
	step "zinjatar"
		kill 8 Zin'jatar Raider##39313+ |q 25357/1 |goto 48.7,27.4
	step
		talk Captain Taylor##39887
		turnin Buy Us Some Time##25357 |goto 44.7,22.6
		turnin Traveling on Our Stomachs##25546 |goto 44.7,22.6
		accept To Arms!##25545 |goto 44.7,22.6
		accept Stormwind Elite Aquatic and Land Forces##25564 |goto 44.7,22.6
	step
		kill Slitherfin Eel##40855
		accept Once More, With Eeling##27729 |goto 49.1,21.4
		|tip This quest will automatically be accepted after you kill an eel.
	step
		click Stormwind Breastplates##4074
		collect 5 Stormwind Breastplate |q 25545/1 |goto 48.0,20.9
		click Stormwind Helm##9486
		collect 5 Stormwind Helm |q 25545/2 |goto 48.0,20.9
		click Stormwind Spear##9494
		collect 5 Stormwind Spear |q 25545/3 |goto 48.0,20.9
		kill Gilblin Scavenger##40811+
		collect 5 Stormwind Shield |q 25545/4 |goto 48.0,20.9
		click the Stormwind S.E.A.L. Equipment##9280
		collect 6 Stormwind S.E.A.L. Equipment |q 25564/1 |goto 48.0,20.9
		kill Slitherfin Eel##40855+
		Justifiably Slay 8 Disgusting Eels |q 27729/1 |goto 48.0,20.9
	step
		Click the Quest Completion box that pops up
		turnin Once More, With Eeling##27729
	step
		talk Captain Taylor##39887
		turnin To Arms!##25545 |goto 44.7,22.6
		turnin Stormwind Elite Aquatic and Land Forces##25564 |goto 44.7,22.6
		accept On Our Own Terms##25547 |goto 44.7,22.6
	step
		talk Captain Taylor##40690
		turnin On Our Own Terms##25547 |goto 45.0,23.5
		accept All or Nothing##25558 |goto 45.0,23.5
	step
		Follow the troops out and help them defend the Briny Cutter from the waves of nagas
		Swim over to [46.4,46.5] after you get kidnapped
		Defense of The Briny Gutter Complete |q 25558/1 |goto 44.4,24.6
	step
		talk Erunak Stonespeaker##40105
		turnin All or Nothing##25558 |goto 46.3,46.9
	step
		talk Moanah Stormhoof##41248
		accept Better Late Than Dead##25477 |goto 46.0,46.9
	step
		Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462 |modelnpc Speckled Sea Turtle##40223
		Start swimming back to Moanah Stormhoof at [46.0,46.9]
		Mount the Sea Turtle |q 25477/1 |goto 54.2,53.0
	step
		talk Moanah Stormhoof##41248
		turnin Better Late Than Dead##25477 |goto 46.0,46.9
		accept The Abyssal Ride##25371 |goto 46.0,46.9
	step
		click Braided Rope##7548
		Tie your lure off and let it loose
		Tie off the Seahorse lure |q 25371/1 |goto 45.4,46.6
		clicknpc Abyssal Seahorse##39629 |invehicle
	step
		Use the abilities on your action bar and follow the on screen instructions to hold onto the seahorse
		Subdue an Abyssal Seahorse |q 25371/2
	step
		talk Moanah Stormhoof##41248
		turnin The Abyssal Ride##25371 |goto 46.0,46.9
	step
		learnmount Subdued Abyssal Seahorse##75207 |use Subdued Abyssal Seahorse##54465
	step
		talk Rendel Firetongue##41252
		accept Good Deed Left Undone##27685 |goto 46.6,46.8
	step
		talk Adarrah##39667
		turnin Good Deed Left Undone##27685 |goto 53.5,43.0
		accept Gimme Shelter!##25587 |goto 53.5,43.0
	step
		Enter the cave |goto 54.4,33.7 < 5 |walk
		Go to this spot
		Scout Smuggler's Hole |q 25587/1 |goto 56.8,29.8
	step
		Leave the cave |goto 54.4,33.7 < 5 |walk
		Go to this spot
		Signal Adarrah |q 25587/2 |goto 54.0,34.6
	step
		Enter the cave |goto 54.4,33.7 < 5 |walk
		talk Adarrah##39883
		turnin Gimme Shelter!##25587 |goto 57.1,28.8
		accept Ain't Too Proud to Beg##25598 |goto 57.1,28.8
	step
		Leave the cave |goto 54.4,33.7 < 5 |walk
		talk Captain Samir##39669
		Tell him to make for that cave to the west
		Rescue Mack and Samir |q 25598/1 |goto 48.3,39.6
	step
		click Sunken Crate##336
		accept A Case of Crabs##25388 |goto 49.7,40.9
	step
		Enter the cave |goto 54.4,33.7 < 5 |walk
		talk Adarrah##39883
		turnin Ain't Too Proud to Beg##25598 |goto 57.1,28.8
		turnin A Case of Crabs##25388 |goto 57.1,28.8
		accept A Girl's Best Friend##25390 |goto 57.1,28.8
		accept A Taste For Tail##25389 |goto 57.1,28.8
	step
		talk Captain Samir##39884
		accept Can't Start a Fire Without a Spark##25602 |goto 57.3,28.9
	step
		Leave the cave |goto 54.4,33.7 < 5 |walk
		kill Clacksnap Pincer##39918+
		collect 4 Clacksnap Tail |q 25389/1 |goto 49.7,38.4
		collect Tattered Treasure Map##53053 |n
		Use your Tattered Treasure Map in your bags |use Tattered Treasure Map##53053
		accept The Horde's Hoard##25377
		click Adarrah's Jewelry Boxe##1+
		collect 6 Adarrah's Keepsake |q 25390/1 |goto 49.7,38.4
	step
		click Keg of Gunpowder##472
		collect Keg of Gunpowder |q 25602/1 |goto 55.5,38.8
	step
		kill Akasha##39964
		collect Horde Chest Key |q 25377/1 |goto 57.2,37.8
	step
		click Sunken Horde Chest##9281
		turnin The Horde's Hoard##25377 |goto 57.8,35.2
	step
		Enter the cave |goto 54.4,33.7 < 5 |walk
		talk Adarrah##39883
		turnin A Girl's Best Friend##25390 |goto 57.1,28.8
		turnin A Taste For Tail##25389 |goto 57.1,28.8
	step
		talk Captain Samir##39884
		turnin Can't Start a Fire Without a Spark##25602 |goto 57.3,28.9
	step
		talk Adarrah##39883
		accept Ophidophobia##25459 |goto 57.1,28.8
	step
		talk Mack Fearsen##40983
		accept Nerve Tonic##25358 |goto 57.3,29.3
	step 
		Leave the cave |goto 54.4,33.7 < 5 |walk
		talk Budd##46338
		accept Oh, the Insanity!##25651 |goto 55.3,38.9
	step
		kill Brinescale Serpent##39948+
		Slay 4 Brinescale Serpent |q 25459/1 |goto 56.8,36.3
		click Sunken Cargo##7539
		collect 5 Sunken Cargo |q 25358/1 |goto 56.8,36.3
	step
		kill Gilblin Hoarder##41016+
		click Pilfered Cannonball##4177+
		collect 50 Pilfered Cannonball##55185 |n
		Use your Pilfered Cannonballs |use Pilfered Cannonball##55185
		collect Barrel of Gunpowder |q 25651/1 |goto 52.1,51.5
	step
		talk Budd##46338
		turnin Oh, the Insanity!##25651 |goto 55.3,38.9
		accept Dah, Nunt.. Dah, Nunt..##25657 |goto 55.3,38.9
	step
		Enter the cave |goto 54.4,33.7 < 5 |walk
		talk Mack Fearsen##40983
		turnin Nerve Tonic##25358 |goto 57.3,29.3
	step
		talk Adarrah##39883
		turnin Ophidophobia##25459 |goto 57.1,28.8
	step
		click Broken Bottle##238
		accept A Desperate Plea##25638 |goto 56.4,30.1
	step
		Leave the cave |goto 54.4,33.7 < 5 |walk
		talk Erunak Stonespeaker##40105
		turnin A Desperate Plea##25638 |goto 46.3,46.9
		accept Undersea Sanctuary##25794 |goto 46.3,46.9
	step
		Use Erunak's Scrying Orb |use Erunak's Scrying Orb##56020 |q 25794/1
	step
		talk Erunak Stonespeaker##40105
		turnin Undersea Sanctuary##25794 |goto 46.3,46.9
		accept Spelunking##25812 |goto 46.3,46.9
	step
		Use your Booby-Trapped Bait next to the Rusty Harpoon Gun |use Booby-Trapped Bait##55190
		Feed the Explosive Grub to Gnaws |q 25657/1 |goto 58.3,48.8
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Dah, Nunt... Dah, Nunt...##25657
		accept Shark Weak##27699 |goto 58.3,48.8
	step
		click Gnaws' Tooth##9517
		collect 5 Gnaws' Tooth |q 27699/1 |goto 58.4,50.1
	step
		talk Budd##46338
		turnin Shark Weak##27699 |goto 55.3,38.9
		accept DUN-dun-DUN-dun-DUN-dun##25670 |goto 55.3,38.9
	step
		Use your Budd's Chain next to the Rusty Harpoon Gun |use Budd's Chain##55220
		While in Gnaws' mouth, spam the ability on your hotbar 
		|tip A huge harpoon will eventually shoot into Gnaws.  Once that happens, you can stop spamming the ability.
		Slay Gnaws |q 25670/1 |goto 58.3,48.8
	step
		Enter the cave |goto 61.5,63.4 < 5 |walk
		talk Private Pollard##41324
		turnin Spelunking##25812 |goto 64.0,59.8
	step
		talk Erunak Stonespeaker##41341
		accept Debriefing##25824 |goto 63.9,59.9
	step
		talk Private Pollard##41340
		Ask him who he is
		Debrief Private Pollard |q 25824/1 |goto 64.0,59.8
	step
		talk Erunak Stonespeaker##41341
		turnin Debriefing##25824 |goto 63.9,59.9
		accept Wake of Destruction##25887 |goto 63.9,59.9
	step
		talk Budd##46458
		turnin DUN-dun-DUN-dun-DUN-dun##25670 |goto 58.4,48.7
		accept A Bone to Pick##25732 |goto 58.4,48.7
	step
		kill King Gurboggle##41018
		collect The Pewter Pounder |q 25732/1 |goto 53.6,58.0
	step
		talk Budd##46458
		turnin A Bone to Pick##25732 |goto 58.4,48.7
		accept Decisions, Decisions##25743 |goto 58.4,48.7
	step
		Use The Pewter Pounder |use The Pewter Pounder##55806
		Destroy The Pewter Prophet |q 25743/1
	step
		talk Budd##46463
		turnin Decisions, Decisions##25743 |goto 58.4,48.6
	step
		Use your Orb of Suggestion on a Famished Great Shark |use Orb of Suggestion##56576
		Take control of a Famished Great Shark |invehicle |q 25887 |goto 58.7,72.4
	step
		Use the Eat Naga ability on your hotbar repeatedly near Zin'jatar Guardians 
		|tip They are nagas all around this area.
		Eat 10 Zin'jatar Guardians Alive |q 25887/1 |goto 57.5,72.4
		Use the Return to Safety ability on your hotbar
		Go back to the Deepmist Grotto |outvehicle |q 25887 |goto 57.5,72.4
		|modelnpc 41481
	step
		Enter the cave |goto 61.1,63.9 < 5 |walk
		talk Erunak Stonespeaker##41341
		turnin Wake of Destruction##25887 |goto 63.9,59.9
	step
		talk Erunak Stonespeaker##41341
		home Deepmist Grotto |goto 63.9,59.9
	step
		talk Private Pollard##41340
		accept What? What? In My Gut...?##25885 |goto 64.0,59.8
	step
		talk Moanah Stormhoof##41347
		accept Decompression##25888 |goto 63.9,59.4
	step
		talk Rendel Firetongue##41344
		accept Come Hell or High Water##25884 |goto 64.2,59.9
	step
		Leave the cave |goto 61.1,63.9 < 5 |walk
		click Naga Tridents##9552+
		accept How Disarming##25883 |goto 60.3,69.9
	step
		Swim around on all 3 layers of the naga Holding Pens
		kill Zin'jatar Guardian##41996+, Zin'jatar Pearlbinder##41477+, Zin'jatar Overseer##41549+, Zin'jatar Warden##41530
		Slay 12 Zin'jatar Naga |q 25884/1 |goto 57.7,75.4
		collect 7 Wiggleweed Sprout |q 25885/1 |goto 57.7,75.4
		Use your Breathstone on Imprisoned Soldiers |use Breathstone##56169 
		|tip They looks like dead humans in big balls of light all around on the naga Holding Pens.
		Release 10 Imprisoned Soldiers |q 25888/1 |goto 57.7,75.4
		click Naga Tridents##9552
		Destroy 6 Naga Weapons |q 25883/1 |goto 57.7,75.4
	step
		Click the Quest Complete box that pops up
		turnin Come Hell or High Water##25884
		accept The Warden's Time##27708
	step
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin How Disarming##25883
	step
		kill Zin'jatar Warden##41530 |q 27708/1 |goto 60.1,81.2
	step
		talk Erunak Stonespeaker##41341
		turnin The Warden's Time##27708 |goto 63.9,59.9
		accept Across the Great Divide##25471 |goto 63.9,59.9
	step
		talk Private Pollard##41340
		turnin What? What? In My Gut...?##25885 |goto 64.0,59.8
	step
		talk Moanah Stormhoof##41347
		turnin Decompression##25888 |goto 63.9,59.4
	step
		Enter the cave |goto 48.3,72.5 < 5 |walk
		talk Farseer Gadra##39226
		turnin Across the Great Divide##25471 |goto Shimmering Expanse,56.0,13.7
		accept The Looming Threat##25334 |goto Shimmering Expanse,56.0,13.7
	step
		talk Farseer Gadra##39226
		Tell him you are ready to join him in the vision
		Share in Farseer Gadra's Spirit Vision |q 25334/1 |goto 56.0,13.7
	step
		talk Spirit of Farseer Gadra##40398
		turnin The Looming Threat##25334 |goto Abyssal Depths,72.9,37.4
	step
		talk Farseer Gadra##39226
		accept Backed Into a Corner##25164 |goto Shimmering Expanse,56.0,13.7
	step
		kill Zin'jatar Fathom-Stalker##40162+
		Fend Off the Naga Attack |q 25164/1 |goto 56.0,13.7
		|tip You have to kill 50 nagas.
		kill Fathom-Lord Zin'jatar##40510 |q 25164/2 |goto 56.0,13.7
	step
		talk Farseer Gadra##39226
		turnin Backed Into a Corner##25164 |goto 56.0,13.7
	step
		talk Toshe Chaosrender##39877
		accept Rundown##25221 |goto 55.5,12.5
	step
		Follow the path outside the cave
		Use Toshe's Hunting Spears near Fleeing Zin'jatar Fathom-Stalkers |use Toshe's Hunting Spears##54466
		kill 20 Fleeing Zin'jatar Fathom-Stalker##40174 |q 25221/1 |goto 54.0,23.4
	step
		talk Toshe Chaosrender##39877
		turnin Rundown##25221 |goto 53.3,33.1
		accept Silver Tide Hollow##25222 |goto 53.3,33.1
	step
		Enter the cave |goto 50.1,39.1 < 5 |walk
		talk Felora Firewreath##39876
		turnin Silver Tide Hollow##25222 |goto 49.5,42.4
		accept A Distracting Scent##25215 |goto 49.5,42.4
		accept The Great Sambino##25216 |goto 49.5,42.4
	step
		talk Earthmender Duarn##39875
		accept Don't be Shellfish##25219 |goto 49.2,42.6
	step
		talk Caretaker Movra##39878
		accept Slippery Threat##25220 |goto 49.1,42.0
	step
		talk Caretaker Movra##39878
		home Silver Tide Hollow |goto 49.1,42.0
	step
		clicknpc Dead Zin'jatar Raider##39911+
		Bring them to [50.8,45.9] 
		|tip You have to drag them one at a time.
		Dispose of 3 Dead Zin'jatar Raiders |q 25215/1 |goto 50.3,41.1
	step
		kill 12 Spiketooth Eel##40237+ |q 25220/1 |goto 59.6,40.1
		clicknpc Coilshell Sifter##39422+
		collect 10 Coilshell Sifter |q 25219/1 |goto 59.6,40.1
	step
		Enter the cave |goto 50.1,39.1 < 5 |walk
		talk Felora Firewreath##39876
		turnin A Distracting Scent##25215 |goto 49.5,42.4
	step
		talk Earthmender Duarn##39875
		turnin Don't be Shellfish##25219 |goto 49.2,42.6
	step
		talk Caretaker Movra##39878
		turnin Slippery Threat##25220 |goto 49.1,42.0
	step
		talk The Great Sambino##39882
		turnin The Great Sambino##25216 |goto 41.3,34.2
		accept Undersea Inflation##25218 |goto 41.3,34.2
	step
		talk Felice##40227
		accept Crabby Patrons##25360 |goto 41.1,34.2
	step
		Use Sambino's Air Balloon next to the bubbling objects |use Sambino's Air Balloon##54608 
		|tip They look like green bubbling watermelon looking plants with a holes in the tops of them, and big blue bubbling snail shells.  You'll have to do this 10 times.
		Fill Sambino's Air Balloon |q 25218/1 |goto 40.5,35.5
		kill 10 Green Sand Crab##40238 |q 25360/1 |goto 40.5,35.5
		collect Sambino's Air Valve |q 25218/2 |goto 40.5,35.5
		|modelnpc 40399
	step
		talk The Great Sambino##39882
		turnin Undersea Inflation##25218 |goto 41.3,34.2
		accept Totem Modification##25217 |goto 41.3,34.2
	step
		talk Felice##40227
		turnin Crabby Patrons##25360 |goto 41.2,34.2
	step
		Use one of Sambino's Modified Totems while standing on an orange spot on the ground: 
		|tip You will only get one of the four totems to use, it's random.
		Use Sambino's Modified Stoneclaw Totem |use Sambino's Modified Stoneclaw Totem##54214
		Use Sambino's Modified Earthbind Totem |use Sambino's Modified Earthbind Totem##53052
		Use Sambino's Modified Stoneskin Totem |use Sambino's Modified Stoneskin Totem##54217
		Use Sambino's Modified Strength of Earth Totem |use Sambino's Modified Strength of Earth Totem##54216
		Defend Sambino's Modified Totem
		Take a Drill Sample |q 25217/1 |goto 42.7,34.0
	step
		talk The Great Sambino##39882
		turnin Totem Modification##25217 |goto 41.3,34.2
		accept Back in One Piece##25456 |goto 41.3,34.2
	step
		Enter Silver Tide Hollow |goto 50.1,39.0 < 5 |walk
		talk Felora Firewreath##39876
		turnin Back in One Piece##25456 |goto 49.6,42.1
		accept Toshe's Vengeance##25359 |goto 49.6,42.1
	step
		talk Toshe Chaosrender##40221
		turnin Toshe's Vengeance##25359 |goto 64.1,42.3
		accept Vengeful Heart##25439 |goto 64.1,42.3
		accept Vortex##25441 |goto 64.1,42.3
	step
		Use your Globes of Tumultuous Water near Swarming Serpents |use Globes of Tumultuous Water##54785
		Trap 30 Swarming Serpents |q 25441/1 |goto 65.8,43.1
		kill 10 Zin'jatar Ravager##40275+ |q 25439/1 |goto 65.8,43.1
		|modelnpc 40280
	step
		talk Toshe Chaosrender##40221
		turnin Vengeful Heart##25439 |goto 64.1,42.3
		accept Fathom-Lord Zin'jatar##25440 |goto 64.1,42.3
		turnin Vortex##25441 |goto 64.1,42.3
	step
		kill Fathom-Lord Zin'jatar##40510 |q 25440/1
		collect 1 Luminescent Pearl##54614 |n
		Click the Luminescent Pearl in your bags |use Luminescent Pearl##54614
		accept A Pearl of Wisdom##25442 |goto 67.3,49.7
	step
		talk Toshe Chaosrender##40221
		turnin Fathom-Lord Zin'jatar##25440 |goto 64.1,42.3
	step
		talk Earthmender Duarn##39875
		turnin A Pearl of Wisdom##25442 |goto 49.2,42.6
		accept Nespirah##25890 |goto 49.2,42.6
	step
		talk Swift Seahorse##40873
		Tell him you need to go to Nespirah.
		|confirm |q 25890 |goto Shimmering Expanse/0 49.5,41.3
	step
		Run up the spiral ramp and follow Earthmender Duarn around after he spawns: |modelnpc Earthmender Duarn##41532
		Find a way to communicate with Nespirah |q 25890/1
	step
		talk Earthmender Duarn##41531
		turnin Nespirah##25890 |goto 51.6,52.2
		accept Making Contact##25900 |goto 51.6,52.2
	step
		talk Earthmender Duarn##41531
		Tell him whenever he's ready
		Observe as Earthmender Duarn attempts to communicate with Nespirah |q 25900/1 |goto 51.6,52.2
	step
		talk Earthmender Duarn##41531
		turnin Making Contact##25900 |goto 51.6,52.2
		accept Slave Labor##25907 |goto 51.6,52.2
		accept Stick it to Them##25908 |goto 51.6,52.2
	step
		kill 7 Idra'kess Sentinel##41466 |q 25908/1 |goto 54.6,50.6
		kill 7 Idra'kess Enchantress##41467 |q 25908/2 |goto 54.6,50.6
		Use Duarn's Rope near Enslaved Alliance and Horde Pearl Miners |use Duarn's Rope##56178 
		|tip They are in the trenches with the huge pearls.
		Rescue 8 Pearl Miners |q 25907/1 |goto 54.6,50.6
		|modelnpc Enslaved Alliance Pearl Miner##41494
		|modelnpc Enslaved Horde Pearl Miner##41495
	step
		talk Earthmender Duarn##41531
		turnin Slave Labor##25907 |goto 51.6,52.2
		turnin Stick it to Them##25908 |goto 51.6,52.2
		accept Capture the Crab##25909 |goto 51.6,52.2
	step 
		Use Duarn's Net on the Deepseeker Crab |use Duarn's Net##56184 
		|tip The Deepseeker Crab is the pet of the Idra'kess Harpooner.
		clicknpc Deepseeker Crab##41520
		collect Deepseeker Crab |q 25909/1 |goto 54.7,62.2
	step
		talk Earthmender Duarn##41531
		turnin Capture the Crab##25909 |goto 51.6,52.2
		accept Breaking Through##25916 |goto 51.6,52.2
	step
		talk Earthmender Duarn##41531
		Tell him let's speak with Nespirah
		Speak with Earthmender Duarn |q 25916/1 |goto 51.6,52.2
	step
		talk Earthmender Duarn##41531
		turnin Breaking Through##25916 |goto 51.6,52.2
		accept We Are Not Alone##25917 |goto 51.6,52.2
	step
		talk Captain Taylor##41540
		turnin We Are Not Alone##25917 |goto 62.7,49.9
		accept Body Blows##25919 |goto 62.7,49.9
	step
		talk Admiral Dvorek##41541
		accept Hopelessly Gearless##25918 |goto 62.7,50.0
	step
		talk Wavespeaker Valoren##41802
		accept Still Valuable##25920 |goto 62.7,50.5
	step
		kill Idra'kess Warlord##41607+, Idra'kess Prophet##41608+
		collect 5 Mysterious Pearl |q 25920/1 |goto 62.6,54.2
		click Idra'kess Weapon Rack##9557 +
		collect 4 Purloined Polearm |q 25918/1 |goto 62.6,54.2
		Attack 7 Nespirah Abscesses |q 25919/1 |goto 62.6,54.2
		|model Nespirah Abcess##9547
	step
		talk Captain Taylor##41540
		turnin Body Blows##25919 |goto 62.7,49.9
	step
		talk Admiral Dvorek##41541
		turnin Hopelessly Gearless##25918 |goto 62.7,50.0
	step
		talk Wavespeaker Valoren##41802
		turnin Still Valuable##25920 |goto 62.7,50.5
	step
		talk Captain Taylor##41540
		accept Overseer Idra'kess##25921 |goto 62.7,49.9
	step
		Follow the path up |goto 62.9,56.8 < 5 |walk
		kill Overseer Idra'kess##41731 |q 25921/1 |goto 57.4,56.3
		|tip Kill the Idra'kess Mistresses when instructed to.
		|modelnpc Idra'kess Mistress##41795
	step
		Follow the path down |goto 60.2,52.8 < 5 |walk
		talk Earthmender Duarn##41531
		turnin Overseer Idra'kess##25921 |goto 51.6,52.2
		accept Waking the Beast##25922 |goto 51.6,52.2
		Listen as Duarn speaks to Nespirah |q 25922/1 |goto 51.6,52.2
	step
		Follow Erunak Stonespeaker when he runs away
		clicknpc Swiftfin Seahorse##41776
		Escape on Erunak's Seahorse |q 25922/2 |goto 50.3,55.4
	step
		talk Captain Taylor##40642
		turnin Waking the Beast##25922 |goto 49.2,57.0
		accept Cold Welcome##25536 |goto 49.2,57.0
	step
		talk Wavespeaker Valoren##39881
		accept A Powerful Need To Eat##25535 |goto 49.5,57.6
	step
		talk Anissa Matherly##42873
		home Tranquil Wash |goto 49.7,57.4
	step
		Leave the cave |goto 46.9,57.5 < 5 |walk
		talk Divemaster Birmingham##40641
		turnin A Powerful Need To Eat##25535 |goto 49.0,49.1
		accept Clamming Up##25539 |goto 49.0,49.1
	step
		talk Engineer Hexascrub##40639
		accept Art of Attraction##25537 |goto 49.0,49.2
	step
		kill 10 Glimmerdeep Tidehunter##39664+ |q 25536/1 |goto 43.8,47.9
		click Glimmerdeep Clam##261
		collect 16 Glimmerdeep Clam |q 25539/1 |goto 43.8,47.9
		Use the Anenmone Chemical Extraction Device on the Anemones |use Anenmone Chemical Extraction Device##54840 
		|tip They look like huge brown spiked flower shaped plants that leak red mist on the walls around this area.
		Gather 8 Anemone Chemicals |q 25537/1 |goto 43.8,47.9
	step
		talk Divemaster Birmingham##40641
		turnin Clamming Up##25539 |goto 49.0,49.1
	step
		talk Engineer Hexascrub##40639
		turnin Art of Attraction##25537 |goto 49.0,49.2
		accept Odor Coater##25538 |goto 49.0,49.2
	step
		Use Anemone Chemical Application Device on Clam Divers |use Anemone Chemical Application Device##54851
		Odorify 8 Clam Divers |q 25538/1 |goto 49.0,52.9
	step
		talk Engineer Hexascrub##40639
		turnin Odor Coater##25538 |goto 49.0,49.2
	step
		talk Divemaster Birmingham##40641
		accept Bellies Await##25540 |goto 49.0,49.1
	step
		Swim down under the big stone slab and into the small cove
		Enter the cave |goto 46.9,57.5 < 5 |walk |q 25536 
	step
		talk Captain Taylor##40642
		turnin Cold Welcome##25536 |goto 49.2,57.0
	step
		talk Wavespeaker Valoren##39881
		turnin Bellies Await##25540 |goto 49.5,57.6
	step
		talk Levla Dreamwaker##40644
		accept An Occupation of Time##25581 |goto 49.7,57.1
	step
		talk Admiral Dvorek##40643
		accept A Better Vantage##25582 |goto 49.2,57.0
		accept Caught Off-Guard##25579 |goto 49.2,57.0
	step
		talk Captain Taylor##40642
		accept Swift Approach##25580 |goto 49.2,57.0
	step
		Leave the cave |goto 46.9,57.5 < 5 |walk
		Go to this spot in the ruins
		Scout the Structures South of Quel'Dormir Gardens |q 25582/3 |goto 40.5,74.4
	step
		click Enormous Skull##9394
		accept Upon the Scene of Battle##25583 |goto 40.5,75.5
	stickystart "azshirmonitor"
	step
		click Ranger Valarian##3412
		Read the Ranger Valarian Statue |q 25581/3 |goto 39.7,67.7
	step
		click High Priestess Siralen##3412
		Read the High Priestess Siralen Statue |q 25581/4 |goto 38.5,66.0
	step
		Go to this spot in the ruins
		Scout the Tunnel West of Quel'Dormir Gardens |q 25582/2 |goto 35.5,62.9
	step
		click the Queen Azshara##3412
		Read the Queen Azshara Statue |q 25581/2 |goto 38.6,59.0
	step
		click the Lestharia Vashj##3412
		Read the Lestharia Vashj Statue |q 25581/1 |goto 39.7,59.0
	step
		Go to this spot in the ruins
		Scout the Northern Quel'Dormir Gardens |q 25582/1 |goto 39.2,57.9
	step "azshirmonitor"
		kill Azsh'ir Monitor##40877+
		Destroy 8 Azsh'ir Monitor |q 25580/1 |goto 41.6,61.9
		kill 12 Azsh'ir Patroller##39638 |q 25579/1 |goto 41.6,61.9
		collect 1 Ancient Elven Etching##62281 |n 
		|tip You will need to kill the Azsh'ir Mobs until you get this to drop.
		Click the Ancient Elven Etching in your bags |use Ancient Elven Etching##62281
		accept Piece of the Past##27716 |goto 41.6,61.9
	step
		talk Levla Dreamwaker##40644
		turnin An Occupation of Time##25581 |goto 49.7,57.1
		turnin Piece of the Past##27716 |goto 49.7,57.1
	step
		talk Captain Taylor##40642
		turnin Swift Approach##25580 |goto 49.2,57.0
	step
		talk Admiral Dvorek##40643
		turnin A Better Vantage##25582 |goto 49.2,57.0
		turnin Caught Off-Guard##25579 |goto 49.2,57.0
		turnin Upon the Scene of Battle##25583 |goto 49.2,57.0
	step
		talk Wavespeaker Valoren##39881
		accept Visions of the Past: The Invasion of Vashj'ir##25760 |goto 49.2,57.0
	step
		Leave the cave |goto 46.9,57.5 < 5 |walk
		Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 
		|tip It's a bright flashing light on the ground in the ruins.
		Become a Naz'jar Battlemaiden
		talk Fathom-Stalker Azjentus##40978
		accept Reoccupation##25619 |goto 40.5,75.5
	step
		Use the abilities on your hotbar
		kill Kvaldir Deepwalker##41107+, Kvaldir Marauder##39602+
		Slay 10 Kvaldir Defenders |q 25619/1 |goto 40.5,73.5
	step
		talk Fathom-Stalker Azjentus##40978
		turnin Reoccupation##25619 |goto 40.6,75.3
		accept The Revered Lady##25620 |goto 40.6,75.3
	step
		talk Lady Naz'jar##40640
		turnin The Revered Lady##25620 |goto 39.4,59.0
		accept To the Fathom-Lord's Call##25637 |goto 39.4,59.0
	step
		talk Sira'kess Tide Priestess##41050
		accept Built to Last##25658 |goto 39.0,58.6
	step
		Go to the top level of the ruins
		kill Kvaldir Pillager##41102+, Kvladir Plunderer##41108+, Kvaldir Wasteroamer##41106+
		Slay 16 Kvladir Invaders on the Terrace |q 25637/1 |goto 35.5,67.5
		click Nar'shola Ward##6913+
		Activate 6 Nar'shola Wards |q 25658/1 |goto 35.5,67.5
	step
		talk Sira'kess Tide Priestess##41050
		turnin Built to Last##25658 |goto 39.0,58.6
	step
		talk Fathom-Lord Zin'jatar##41049
		turnin To the Fathom-Lord's Call##25637 |goto 36.4,78.7
		accept Not Soon Forgotten##25659 |goto 36.4,78.7
	step
		kill Varkul the Unrelenting##41115 |q 25659/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Not Soon Forgotten##25659 |goto 28.6,78.6
	step
		talk Wavespeaker Valoren##39881
		turnin Visions of the Past: The Invasion of Vashj'ir##25760 |goto 40.6,75.1
		accept Looking Forward##25747 |goto 40.6,75.1
	step
		clicknpc Tamed Seahorse##48836
		You will ride to the Ruins of Vashj'ir |goto 33.1,68.9 < 5 |noway |c |q 25747
	step
		talk Admiral Dvorek##40643
		turnin Looking Forward##25747 |goto 33.0,67.9
		accept Clear Goals##25748 |goto 33.0,67.9
	step
		talk Captain Taylor##40642
		accept Not Entirely Unprepared##25749 |goto 33.2,68.4
	step
		talk Engineer Hexascrub##40639
		accept Properly Inspired##25751 |goto 32.9,69.2
	step
		Use your Box of Crossbow Bolts on Alliance Lookouts |use Box of Crossbow Bolts##56247 
		|tip They look like Alliance mobs either standing or on sea horses around this area with crossbows.
		Restock 8 Alliance Lookouts |q 25749/1 |goto 33.0,74.2
		click Bloated Kelp Bulb##9535
		collect 8 Bloated Kelp Bulb |q 25751/1 |goto 33.0,74.2
		|modelnpc Alliance Lookout##46470
	step
		kill Azsh'ir Abyss Priestess##42453+, Azsh'ir Infantry##41227+, Naz'jar Serpent Guard##41228+
		Slay 10 Southern Naga Forces |q 25748/1 |goto 27.0,79.0
	step
		talk Engineer Hexascrub##40639
		turnin Properly Inspired##25751 |goto 32.9,69.2
	step
		talk Captain Taylor##40642
		turnin Not Entirely Unprepared##25749 |goto 33.2,68.4
	step
		talk Admiral Dvorek##40643
		turnin Clear Goals##25748 |goto 33.0,67.9
		accept Swift Action##25752 |goto 33.0,67.9
	step
		talk Engineer Hexascrub##40639
		Tell him you're ready to begin the assault on the terrace
		Use the Improvised Explosives ability on your hotbar on the nagas on the ground as you ride the seahorse
		kill 100 Azsh'ir Solider##41249+ |q 25752/2 |goto 32.9,69.2
		kill 20 Wave Screamer##41250+ |q 25752/3 |goto 32.9,69.2
		kill 12 Azsh'ir Archaean##42549+ |q 25752/4 |goto 32.9,69.2
	step
		talk Admiral Dvorek##40643
		turnin Swift Action##25752 |goto 39.1,78.7
		accept Gauging Success##25754 |goto 39.1,78.7
	step
		talk Captain Taylor##40642
		accept Fallen But Not Forgotten##25753 |goto 39.1,78.5
	stickystart "rescueinjured"
	step
		Go to this spot at the entrance of the tunnel
		Scout the Tunnel to the North |q 25754/1 |goto 33.3,67.6
	step
		Go to this spot at the entrance of the tunnel
		Scout the Northwestern Terrace |q 25754/2 |goto 30.2,75.1
	step "rescueinjured"
		talk Injured Assault Volunteer##41281
		Tell them they should get moving.
		Rescue 6 Injured Assault Volunteers |q 25753/1 |goto 32.9,78.7
	step
		talk Admiral Dvorek##40643
		turnin Gauging Success##25754 |goto 39.1,78.7
	step
		talk Captain Taylor##40642
		turnin Fallen But Not Forgotten##25753 |goto 39.1,78.5
	step
		talk Wavespeaker Valoren##39881
		accept Visions of the Past: The Slaughter of Beth'mora##25755 |goto 39.2,78.6
	step
		Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 
		|tip It's a bright flashing light on the ground on the stone terrace.
		talk Lady Naz'jar##42076
		accept By Her Lady's Word##25858 |goto 28.9,78.7
	step
		talk Fathom-Lord Zin'jatar##42072
		Tell him you are to hunt the Crucible of Nazsharin
		Speak to Fathom-Lord Zin'jatar |q 25858/1 |goto 34.4,78.7
	step
		talk Overseer Idra'kess##41455
		Tell him you are to hunt the Crucible of Nazsharin
		Speak to Overseer Idra'kess |q 25858/3 |goto 36.8,79.7
	step
		talk Lady Sira'kess##42071
		Tell her you are to hunt the Crucible of Nazsharin
		Speak to Lady Sira'kess |q 25858/2 |goto 39.2,78.0
	step
		talk Fathom-Stalker Azjentus##42074
		turnin By Her Lady's Word##25858 |goto 46.2,79.6
		accept No Trespass Forgiven##25859 |goto 46.2,79.6
	step
		talk Naz'jar Honor Guard##41476
		accept Stolen Property##25862 |goto 46.3,78.6
	step
		click Crucible of Nazsharin##9565
		turnin Stolen Property##25862 |goto 57.2,89.9
		accept Chosen Burden##25863 |goto 57.2,89.9
	step
		talk Executioner Verathress##41457
		accept Setting An Example##25861 |goto 57.2,85.2
	step
		Aggro a Kvaldir High-Shaman, but don't kill him
		Lure the Kvaldir High-Shaman back to Executioner Verathress at [57.2,85.2]
		Bring Kvaldir High-Shaman to the executioner |q 25861/1 |goto 55.6,86.3
		|modelnpc 41537
	step
		talk Executioner Verathress##41457
		turnin Setting An Example##25861 |goto 57.2,85.3
	step
		Use the abilities on your hotbar to do the following:
		kill 20 Vrykul Ledge Kvaldir |q 25859/1 |goto 57.1,88.3
		|modelnpc 41537
		|modelnpc 41451
	step
		talk Lady Naz'jar##42076
		turnin Chosen Burden##25863 |goto 46.4,79.0
	step
		talk Fathom-Stalker Azjentus##42074
		turnin No Trespass Forgiven##25859 |goto 46.5,79.3
	step
		talk Lady Naz'jar##42076
		accept The Culmination of Our Efforts##26191 |instant
		Witness the Continuing Story of the Battlemaiden |q 25755/1 |goto 46.4,79.0
	step
		talk Wavespeaker Valoren##39881
		turnin Visions of the Past: The Slaughter of Beth'mora##25755 |goto 29.6,78.9
		accept Losing Ground##25892 |goto 29.6,78.9
	step
		clicknpc Tamed Seahorse##48901
		You will ride to Tranquil Wash |goto 48.4,57.4 < 5 |noway |c |q 25892
	step
		talk Captain Taylor##40642
		turnin Losing Ground##25892 |goto 49.2,57.0
		accept Desperate Plan##25893 |goto 49.2,57.0
	step
		Leave the cave |goto 47.1,57.5 < 5 |walk
		talk Engineer Hexascrub##41535
		turnin Desperate Plan##25893 |goto 56.9,80.5
		accept Come Prepared##25895 |goto 56.9,80.5
		accept Unfurling Plan##25897 |goto 56.9,80.5
	step
		talk Jorlan Trueblade##40645
		accept Hostile Waters##25894 |goto 57.0,80.5
	stickystart "muckskinsrounge"
	step
		click Alliance Survival Kit##7539
		collect Alliance Survival Kit |q 25895/1 |goto 61.4,86.2
	step "muckskinsrounge"
		kill 10 Muckskin Scrounger##41566 |q 25894/1 |goto 60.8,85.3
	step
		kill Kvaldir Fleshcarver##41569+, Kvaldir Seahorror##41606+
		click Coils of Kvaldir Rope##7548
		collect 8 Coil of Kvaldir Rope |q 25897/1 |goto 56.7,87.2
	step
		talk Engineer Hexascrub##41535
		turnin Come Prepared##25895 |goto 56.9,80.5
		turnin Unfurling Plan##25897 |goto 56.9,80.5
		turnin Hostile Waters##25894 |goto 56.9,80.5
		accept Honor and Privilege##25898 |goto 56.9,80.5
	step
		Swim up to the rescue balloon on the surface |q 25898/1 |goto 56.6,80.3
		click Survival Kit Remains##7539
		collect 1 Rescue Flare##56188 |n
		Use the Rescue Flare in your bags |use Rescue Flare##56188
		Fire a rescue flare towards the Alliance ships |q 25898/2 |goto 56.6,80.3
	step
		talk Jorlan Trueblade##40645
		turnin Honor and Privilege##25898 |goto 56.6,80.3
		accept Welcome News##25911 |goto 56.6,80.3
	step
		talk Captain Taylor##40642
		turnin Welcome News##25911 |goto 49.2,57.0
	step
		talk Wavespeaker Valoren##39881
		accept Visions of the Past: Rise from the Deep##25626 |goto 49.5,57.6
	step
		Leave the cave |goto 47.1,57.5 < 5 |walk
		Go to the very top of the Naga terrace and into the dome temple
		Infiltrate the Quel'Dormir Temple |q 25626/1 |goto 33.1,77.9
	step
		Swim up to the second floor of the temple
		Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 
		|tip It looks like a bright flashing light inside the temple.
		talk Lady Sira'kess##41456
		accept Devout Assembly##25896 |goto 33.1,77.8
	step
		talk Lady Naz'jar##42077
		accept Her Lady's Hand##25629 |goto 33.1,75.9
	step
		talk Fathom-Caller Azrajar##41980
		Tell him the mistress awaits
		Gather Fathom-Caller Azrajar |q 25896/2 |goto 33.1,61.0
	step
		talk Sira'kess Tide Priestess##41985
		Tell them they are needed for the ritual
		Gather 6 Sira'kess Tide Priestesses |q 25896/1 |goto 33.1,73.0
		Kill all the Kvaldir mobs attacking Naz'jar Honor Guards around this area
		Relieve 8 Naz'jar Honor Guards |q 25629/1 |goto 33.1,73.0
	step
		talk Lady Naz'jar##42077
		turnin Her Lady's Hand##25629 |goto 33.1,75.9
	step
		talk Lady Sira'kess##41456
		turnin Devout Assembly##25896 |goto 33.1,77.9
		accept At All Costs##25860 |goto 33.1,77.9
	step
		Use the abilities on your hotbar
		kill Kvladir Sandreaper##42058+, Kvaldir Bonesnapper##42057+
		kill 20 Attacking Kvaldir |q 25860/1 |goto 33.1,76.9
	step
		talk Lady Sira'kess##41456
		turnin At All Costs##25860 |goto 33.1,77.9
		accept Final Judgement##25951 |goto 33.1,77.9
	step
		Use the abilities on your hotbar
		kill Kvaldir Skinflayer##42060+, Kvaldir Fearweaver##42062+
		Hold the eastern end of Quel'Dormir Terrace |q 25951/1 |goto 37.9,78.5
	step
		Use the abilities on your hotbar
		kill Hagrim Hopebreaker##42063 
		|tip He spawns when the naga allies arrive
		Push the Kvaldir back across the bridge |q 25951/2 |goto 41.9,78.6
	step
		talk Lady Naz'jar##42077
		turnin Final Judgement##25951
		Witness the Concluding Story of the Battlemaiden |q 25626/2 |goto 42.5,78.6
	step
		Swim down under the big stone slab and into the small cove
		Enter the cave |goto 46.9,57.5 < 5 |noway |c |q 25626 
	step
		talk Wavespeaker Valoren##39881
		turnin Visions of the Past: Rise from the Deep##25626 |goto 49.5,57.6
		accept A Breath of Fresh Air##26005 |goto 49.5,57.6
	step
		Use your Boom Boots to get to the water surface quickly |use Boom Boots##57412
		talk Swift Seahorse##43289
		fpath Voldrin's Hold |goto 57.1,75.2
	step
		click Rope Ladder##9094 
		|tip It's hanging off the side of the boat.
		Jump up onto the boat |goto 57.1,75.5 < 5|noway |c |q 26005
	step
		talk Captain Taylor##42411
		turnin A Breath of Fresh Air##26005 |goto Vashj'ir,69.6,75.3
		accept Full Circle##26219 |goto Vashj'ir,69.6,75.3
	step
		Board the Pincher once it arrives |q 26219/1 |goto 69.8,75.6
		|tip It's a boat, so you may have a to wait a few minutes for it.
	step
		Ride the boat
		Secure Darkbreak Cove |q 26219/2
	step
		talk Captain Glovaal##41662
		turnin Full Circle##26219 |goto  Abyssal Depths 54.4,72.9
	step
		talk Barracks Officer Milson##42963
		home Darkbreak Cove |goto 54.7,72.2
	step
		talk Engineer Hexascrub##41666
		accept Bio-Fuel##26103 |goto 55.5,72.9
	step
		Leave the cave |goto 53.5,73.8 < 5 |walk
		Swim up above the cave
		kill Seabrush Terrapin##42108+, Scourgut Remora##42112+, Spinescale Hammerhead##42113+
		Use your Oil Extrusion Pump on their corpses |use Oil Extrusion Pump##56821
		collect 4 Terrapin Oil |q 26103/1 |goto 52.5,74.4
		collect 4 Remora Oil |q 26103/2 |goto 52.5,74.4
		collect 4 Hammerhead Oil |q 26103/3 |goto 52.5,74.4
	step
		Swim down into the cave |goto 60.0,78.5 < 5 |walk
		talk Engineer Hexascrub##41666
		turnin Bio-Fuel##26103 |goto 55.5,72.9
		accept Fuel-ology 101##26106 |goto 55.5,72.9
	step
		click Fuel Sampling Station##3491
		Click "Let's get started!"
		Choose the Hammerhead Oil Sample 3 Times
		Choose the Remora Oil Sample 2 Times
		Mix the samples together!
		collect Promising Fuel Sample##56833 |q 26106 |goto 55.8,72.5
	step
		talk Engineer Hexascrub##41666
		Tell him you made a Promising Fuel Sample
		Create the perfect bio-fuel |q 26106/1 |goto 55.5,72.9
	step
		talk Engineer Hexascrub##41666
		turnin Fuel-ology 101##26106 |goto 55.5,72.9
	step
		talk Captain Glovaal##41662
		accept The Brother's Digsong##26014 |goto 54.4,72.9
	step
		Leave the cave |goto 60.0,78.5 < 5 |walk
		talk Humphrey Digsong##41907
		turnin The Brothers Digsong##26014 |goto 47.4,49.7
		accept Phosphora Hunting##26015 |goto 47.4,49.7
	step
		kill Luxscale Grouper##41923+, Pyreshell Scuttler##41922+
		collect 6 Underlight Phosphora |q 26015/1 |goto 45.1,53.6
	step
		talk Humphrey Digsong##41907
		turnin Phosphora Hunting##26015 |goto 47.4,49.7
		accept A Lure##26017 |goto 47.4,49.7
		accept Coldlights Out##26018 |goto 47.4,49.7
	step
		kill 4 Coldlight Hunter##41925+ |q 26018/1 |goto 45.9,51.7
		kill 4 Coldlight Oracle##41926+ |q 26018/2 |goto 45.9,51.7
		collect 1 Enormous Eel Egg##56571 |n
		Click the Enormous Eel Egg in your bags |use Enormous Eel Egg##56571
		accept I Brought You This Egg##26019 |goto 45.9,51.7
		Get near Coldlight Nibblers |tip Having friendly nameplates active is very useful in finding them. Shift+V will bring them up
		collect 30 Coldlight Nibbler |q 26017/1 |goto 45.9,51.7
		|modelnpc Underlight Nibbler##41916+
	step
		talk Humphrey Digsong##41907
		turnin A Lure##26017 |goto 47.4,49.7
		turnin Coldlights Out##26018 |goto 47.4,49.7
		turnin I Brought You This Egg##26019 |goto 47.4,49.7
		accept The Brothers Digsong 2: Eel-Egg-Trick Boogaloo##26021 |goto 47.4,49.7
		accept One Last Favor##26080 |goto 47.4,49.7
	step
		Use your Eel-Splosive Device in the path of a Devious Great-Eel |use Eel-Splosive Device##56808 
		|tip They look like big blue eels that swim around this area.  Place the device in their path, so they swim into it.
		kill Weakened Great-Eel##41927
		Avenge Oskar Digsong |q 26021/2 |goto 44.4,53.7
	step
		talk Humphrey Digsong##41907
		turnin The Brothers Digsong 2: Eel-Egg-Trick Boogaloo##26021 |goto 47.4,49.7
	step
		talk Captain Glovaal##41662
		turnin One Last Favor##26080 |goto 54.4,72.9
	step
		talk Lieutenant "Foxy" Topper##41667
		accept Sira'kess Slaying##25950 |goto 55.5,73.0
		accept A Standard Day for Azrajar##25977 |goto 55.5,73.0
	step
		talk Engineer Hexascrub##41666
		accept Those Aren't Masks##25981 |goto 55.5,72.9
	step
		talk Jorlan Trueblade##41665
		accept Treasure Reclamation##25975 |goto 55.6,73.0
	step
		Leave the cave |goto 60.0,78.5 < 5 |walk
		kill Fathom-Caller Azrajar##41590
		Use your Alliance Standard on Fathom-Caller Azrajar's corpse |use Alliance Standard##56250
		Plant a banner in Fathom-Caller Azrajar's corpse |q 25977/1 |goto 52.5,21.3
	step
		click Deepfin Plunder##259+
		collect 6 Deepfin Plunder |q 25975/1 |goto 43.7,16.7
	step
		kill Sira'kess Guardian##41586+, Sira'kess Tide Priestess##41589+, Sira'kess Sea Witch##41588+
		kill 10 Sira'kess naga |q 25950/1 |goto 50.2,18.2
		kill Taken Gilbin##41729 |n 
		|tip Click the Merciless Ones after the Gilbin is dead
		kill Merciless One##41601
		collect 6 Merciless Head |q 25981/1 |goto 50.2,18.2
	step
		Enter the cave |goto 60.0,78.5 < 5 |walk
		talk Jorlan Trueblade##41665
		turnin Treasure Reclamation##25975 |goto 55.6,73.0
	step
		talk Engineer Hexascrub##41666
		turnin Those Aren't Masks##25981 |goto 55.5,72.9
		accept Put It On##25987 |goto 55.5,72.9
		Wear the Mindless One |q 25987/1 |goto 55.5,72.9
	step
		talk Engineer Hexascrub##41666
		turnin Put It On##25987 |goto 55.5,72.9
		accept Promontory Point##25983 |goto 55.5,72.9
	step
		talk Lieutenant "Foxy" Topper##41667
		turnin Sira'kess Slaying##25950 |goto 55.5,73.0
		turnin A Standard Day for Azrajar##25977 |goto 55.5,73.0
	step
		Leave the cave |goto 60.0,78.5 < 5 |walk
		talk Captain Taylor##41598
		turnin Promontory Point##25983 |goto 42.8,38.0
		accept Clearing the Corrupted##26070 |goto 42.8,38.0
		accept The Wavespeaker##26056 |goto 42.8,38.0
	step
		talk Wavespeaker Tulra##41639
		accept Scalding Shrooms##26096 |goto 42.7,37.9
	step
		talk Erunak Stonespeaker##41600
		accept Into the Totem##26072 |goto 42.7,37.9
	step
		Swim down to the ground
		Use Erunak's Confinement Totem |use Erunak's Confinement Totem##56801
		kill Faceless Defilers##41644+ 
		|tip Kill them next to Erunak's Confinement Totem you put down.
		Confine 5 Corrupting Faceless Energies |q 26072/1 |goto 42.7,32.2
		kill Crushing Eel##41646+, Chasm Stalker##41645+, Deep Remora##41647+
		kill 8 Defiled Scalding Chasm wildlife |q 26070/1 |goto 42.7,32.2
		click Scalding Shroom##10057+
		collect 5 Scalding Shroom |q 26096/1 |goto 42.7,32.2
	step
		talk Captain Taylor##41598
		turnin Clearing the Corrupted##26070 |goto 42.8,38.0
	step
		talk Wavespeaker Tulra##41639
		turnin Scalding Shrooms##26096 |goto 42.7,37.9
	step
		talk Erunak Stonespeaker##41600
		turnin Into the Totem##26072 |goto 42.7,37.9
		accept ... It Will Come##26111 |goto 42.7,37.9
	step
		click Stonespeaker's Luring Totem##9575
		kill Ick'thys the Unfathomable##41648
		collect The Brain of the Unfathomable |q 26111/1 |goto 47.0,28.0
	step
		talk Wavespeaker Valoren##41640
		turnin The Wavespeaker##26056 |goto 52.6,27.8
		accept Free Wil'hai##26065 |goto 52.6,27.8
	step
		Use Valoren's Shrinkage Totem next to a Tentacle Horror |use Valoren's Shrinkage Totem##57409
		kill Shrunken Tentacle Horror##41641+
		Kill all the Shrunken Tentacle Horrors attacking Wil'hai
		Free Wil'hai |q 26065/1 |goto 54.4,27.8
	step
		talk Wavespeaker Valoren##41640
		turnin Free Wil'hai##26065 |goto 52.6,27.8
	step
		talk Erunak Stonespeaker##41600
		turnin ... It Will Come##26111 |goto 42.7,37.9
		accept Unplug L'ghorek##26130 |goto 42.7,37.9
	step
		talk Captain Taylor##41598
		accept Fiends from the Netherworld##26132 |goto 42.8,38.0
	stickystart "netherfiend"
	step
		Swim down into the cave
		kill Ur'Goz##41654 |q 26130/1 |goto 36.3,47.0
	step
		kill Sku'Bu##41655 |q 26130/2 |goto 34.6,54.6
	step
		kill Neph'Lahim##41656 |q 26130/3 |goto 29.6,53.0
	step "netherfiend"
		kill 8 Nether Fiend##41650 |q 26132/1 |goto 31.9,51.3
	step
		talk Captain Taylor##41598
		turnin Fiends from the Netherworld##26132 |goto 42.8,38.0
	step
		talk Erunak Stonespeaker##41600
		turnin Unplug L'ghorek##26130 |goto 42.7,37.9
		accept Communing with the Ancient##26140 |goto 42.7,37.9
	step
		Enter L'ghorek |goto 36.6,42.1 < 5 |walk
		Talk to L'ghorek
		turnin Communing with the Ancient##26140 |goto 38.5,45.3
		accept Runestones of Binding##26141 |goto 38.5,45.3
		accept Ascend No More!##26142 |goto 38.5,45.3
	step
		kill Twilight Champion##41652+, Twilight Candidate##41657+
		collect 1 Twilight Cage Key##57102 |n |goto 27.0,54.0
		Click the Twilight Cage Key in your bags |use Twilight Cage Key##57102
		accept Prisoners##26144 |goto 27.0,54.0
	step
		click Ancient Conduit##9639+
		Destroy 5 Ancient Conduits |q 26142/1 |goto 27.5,55.7
		kill Twilight Candidate##41657+
		collect 7 Runestone of Binding |q 26141/1 |goto 27.5,55.7
		Click the Cages |tip They looks like metal cages around this area.
		Rescue 5 Alliance Prisoners |q 26144/1 |goto 27.5,55.7
		Click the Quest Complete box that pops up
		turnin Prisoners##26144
	step
		Talk to L'ghorek
		turnin Runestones of Binding##26141 |goto 38.5,45.3
		turnin Ascend No More!##26142 |goto 38.5,45.3
		accept Twilight Extermination##26154 |goto 38.5,45.3
	step
		Use your Attuned Runestone of Binding on a Bound Torrent |use Attuned Runestone of Binding##57172 
		|tip You can run through the groups of mobs, they won't attack you, even though they are red.
		Possess a Bound Torrent |q 26154/1 |goto 34.9,54.0
	step
		Use the abilities on your hotbar on Twilight Devotees and Faceless Overseers
		kill 50 Twilight Devotee##42281+ |q 26154/2 |goto 36.3,52.8
		kill 10 Faceless Overseer##42285+ |q 26154/3 |goto 36.3,52.8
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Twilight Extermination##26154
	step
		Talk to L'ghorek
		accept All that Rises##26143 |goto 38.5,45.3
	step
		Keep controlling the elemental. Subdue it again if needed.
		Use the abilities on your hotbar on Hallazeal the Ascended
		kill Hallazeal the Ascended##41659 |q 26143/1 |goto 33.1,55.8
	step
		Talk to L'ghorek
		turnin All that Rises##26143 |goto 38.5,45.3
		accept Back to Darkbreak Cove##26181 |goto 38.5,45.3
	step
		talk Erunak Stonespeaker##41600
		turnin Back to Darkbreak Cove##26181 |goto 55.7,73.0
		accept Defending the Rift##26193 |goto 55.7,73.0
	step
		talk Erunak Stonespeaker##41600
		Tell him you are prepared
		Ride the boat until it stops |tip When the boat stops make sure you follow Erunak
		Fight in the Battle for Abyssal Breach |q 26193/1 |goto 55.7,73.0
	step
		talk Captain Taylor##44490
		turnin Defending the Rift##26193 |goto 69.8,34.4
]])

ZygorGuidesViewer:RegisterInclude("A_Uldum_Leveling",[[
	step
		talk Harrison Jones##44238 
		turnin That's No Pyramid!##28292 |goto Stormwind City,85.8,25.9
		accept Meetup with the Cavavan##28295 |goto Stormwind City,85.8,25.9
		only if havequest(28292)
	step
		click Hero's Call Board##10016
		accept Hero's Call: Uldum!##28558 |goto 62.9,71.6
		only if not havequest(28295)
		confirm
	step
		talk Adarrah##44833
		turnin Hero's Call: Uldum!##28558 |goto Tanaris,30.5,65.5
		accept Easy Money##27003 |goto Tanaris,30.5,65.5
		only if havequest(28558)
	step
		talk Adarrah##44833
		turnin Meetup with the Cavavan##28295 |goto Tanaris,30.5,65.5
		accept Easy Money##27003 |goto Tanaris,30.5,65.5
		only if havequest(28295)
	step
		clicknpc Lady Humps##46517 |goto 30.5,65.7
		Watch the cutscene
		Escort the Caravan |q 27003/1
	step
		talk Adarrah##46873
		turnin Easy Money##27003 |goto Uldum,59.7,71.8
	step
		talk Prince Nadun##46872
		accept Traitors!##27922 |goto 59.6,72.0
	step
		click Neferset Frond##10097 |goto 61.7,71.1
		|tip It is a plant sitting nexxt to one of the pillars.
		Watch the cutscene
		Uncover the Neferset Secret |q 27922/1
	step
		talk Prince Nadun##46872
		turnin Traitors!##27922 |goto 59.6,72.0
		accept Smoke in Their Eyes##27923 |goto 59.6,72.0
		accept Kavem the Callous##28105 |goto 59.6,72.0
	step
		talk Budd##46875
		accept Budd's Plan##27924 |goto 59.7,72.0
	stickystart "nefersetdenizen"
	step
		kill Kavem the Callous##47567
		collect Neferset Key |q 28105/1 |goto 60.0,74.0
	step "nefersetdenizen"
		kill Neferset Denizen##48267+, Neferset Sentinel##47306+
		click Neferset Armor##10100 |goto 60.8,73.9
		collect 6 Neferset Armor |q 27924/1
		Use your Brazier Torch next to Bales of Hay |use Brazier Torch##63027 
		|tip They look like bundles of yellow straw sitting on the ground around this area.
		Burn 5 Bales of Hay |q 27923/1
		|model Bale of Hay##8701
	step
		talk Budd##46875
		turnin Budd's Plan##27924 |goto 59.7,72.0
	step
		talk Prince Nadun##46872
		turnin Smoke in Their Eyes##27923 |goto 59.6,72.0
		turnin Kavem the Callous##28105 |goto 59.6,72.0
		accept Escape From the Lost City##28112 |goto 59.6,72.0
	step
		talk King Phaoris##47684
		turnin Escape From the Lost City##28112 |goto 54.9,32.7
		accept Impending Retribution##28134 |goto 54.9,32.7
	step
		talk Kazemde##48886
		home Ramkahen |q 28141 |future |goto 54.7,32.9
	step
		talk Kurzel##48275
		fpath Ramkahen |goto 56.2,33.6
	step
		talk Sun Priest Asaris##47715 |goto 53.0,27.7
		Tell him you might be able to help
		Speak with Sun Priest Asaris |q 28134/2
	step
		talk Sun Priest Asaris##47715
		accept Relics of the Sun King##28141 |goto 53.0,27.7
		accept Venomblood Antidote##28145 |goto 53.0,27.7
	step
		kill Wastewander Outrider##45905+
		collect 4 Relic of the Sun King |q 28141/1 |goto 46.3,21.0
		kill Venomblood Scorpid##45859+
		Use your Antidote Vial on Venomblood Scorpid corpses |use Antidote Vial##63086
		Drain 8 Venomblood Scorpids |q 28145/1
		You can find more Venomblood Scorpid and Wastewander Outriders around |goto 49.9,24.0
		And |goto 48,16.1
	step
		talk Sun Priest Asaris##47715
		turnin Relics of the Sun King##28141 |goto 53.0,27.7
		turnin Venomblood Antidote##28145 |goto 53.0,27.7
		accept The Bandit Warlord##28502 |goto 53.0,27.7
	step
		kill Warlord Ihsenn##47755 |q 28502/1 |goto 45.7,16.2
	step
		talk Sun Priest Asaris##47715
		turnin The Bandit Warlord##28502 |goto 53.0,27.7
	step
		talk Asaq##47930 |goto 49.7,39.2
		Tell him the king wishes to be informed about recent Neferset activity
		Speak with Asaq |q 28134/3
	step
		talk Mack##47318
		accept Take it to 'Em!##27993 |goto 49.7,39.1
	step
		talk Nomarch Teneth##46603 |goto 60.3,38.3
		Tell him King Phaoris sent you to ask him about Neferset activity
		Speak with Nomarch Teneth |q 28134/1
	step
		talk Nomarch Teneth##46603
		accept Thieving Little Pluckers##28250 |goto 60.3,38.3
	step
		Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 
		|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
		kill Pygmy Scout##48041+, Pygmy Oaf##48040+, Pygmy Thief##48043+ |goto 59.1,38.4
		Smash 30 Thieving Pluckers |q 28250/1
	step
		talk Nomarch Teneth##46603
		turnin Thieving Little Pluckers##28250 |goto 60.3,38.3
	step
		Go to this spot |goto 64.4,22.3
		Investigate Khartut's Tomb |q 27993/1
	step
		talk Harrison Jones##44860
		turnin Take it to 'Em!##27993 |goto 64.4,22.3
		accept Premature Explosionation##27141 |goto 64.4,22.3
	step
		click Powder Keg##472 |goto 64.3,22.2
		Watch the cutscene
		Assist Harrison at Khartut's Tomb |q 27141/1
	step
		talk Harrison Jones##45180
		turnin Premature Explosionation##27141 |goto 64.6,28.6
	step
		talk Sand Pygmy Corpse##45186
		accept Field Work##27179 |goto 64.6,28.7
	step
		click the Elaborate Disc##8342
		accept Just the Tip##27176 |goto 64.8,29.6
	step
		kill Mangy Hyena##45202
		You will accept a quest
		accept Do the World a Favor##27187 |goto 66.1,29.0
	stickystart "ornatetablet"
	step
		kill Skarf##45204
		kill Sultan Oogah##45205
		collect Sultan's Staff##60865 |q 27176 |goto 68.2,31.5
	step
		Use your Elaborate Disc |use Elaborate Disc##60859
		collect Shaft of the Stars |q 27176/1
	step "ornatetablet"
		kill Sand Pygmy##45190+
		click Ornate Tablet Fragment##6420+
		collect 10 Ornate Tablet Fragment |q 27179/1 |goto 66.1,29.0
	step
		kill Mangy Hyena##45202+
		Eradicate 12 Mangy Hyenas |q 27187/1
		You can find more mobs to kill |goto Uldum,62.8,32
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Do the World a Favor##27187
	step
		talk Harrison Jones##45180
		turnin Field Work##27179 |goto 64.6,28.6
		turnin Just the Tip##27176 |goto 64.6,28.6
		accept On to Something##27196 |goto 64.6,28.6
	step
		talk Harrison Jones##45180
		Tell him you're ready!
		Follow Harrison Jones 
		|tip When he jumps down, use your flying mount to go down into the Chamber of Stars.
		Accompany Harrison Jones to the Chamber of the Stars |q 27196/1 |goto 64.6,28.6
	step
		talk Harrison Jones##45296
		|tip He is all the way down, on the floor.
		turnin On to Something##27196 |goto 64.5,28.0
		accept The Thrill of Discovery##27511 |goto 64.5,28.0
	step
		Go to this spot |goto 65.7,25.8
		Examine the Northern Hieroglyphs |q 27511/2
	step
		Go to this spot |goto 64.4,29.9
		Examine the Ancient Mechanism |q 27511/1
	step
		talk Schnottz Scout##45874
		accept Lessons From the Past##27541 |goto 63.4,32.5
	step
		talk Schnottz Scout##45874
		Take the scout's spectacles
		collect Broken Spectacles |q 27541/1 |goto 63.4,32.5
	step
		Go to this spot |goto 63.4,33.9
		Examine the Southern Hieroglyphs |q 27511/3
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin The Thrill of Discovery##27511
	step
		talk Harrison Jones##45296
		turnin Lessons From the Past##27541 |goto 64.5,28.0
		accept By the Light of the Stars##27549 |goto 64.5,28.0
		accept Be Prepared##28602 |or |goto 64.5,28.0
		accept Be Prepared##27517 |or |goto 64.5,28.0
	stickystart "Suspendedstarlight"
	stickystart "Pieceofrope"
	step "Suspendedstarlight"
		click Suspended Starlight##9933
		|tip After clicking the Suspended Starlight, one or two nearby Indentured Protectors will attack you.
		collect 7 Suspended Starlight |q 27549/1 |goto 63.3,28.0
	step "Pieceofrope"
		Walk up to the skeletons laying on the ground around this area; they'll get up and attack you.
		kill Tormented Tomb-Robber##45765+
		collect 6 Piece of Rope |q 28602/1 |only if havequest(28602) |goto 63.3,28.0
		collect 6 Piece of Rope |q 27517/1 |only if havequest(27517) |goto 63.3,28.0
	step
		talk Harrison Jones##45296
		turnin By the Light of the Stars##27549 |goto 64.5,28.0
	step
		talk Harrison Jones##45296
		turnin Be Prepared##28602 |only if havequest(28602) |goto 64.5,28.0
		turnin Be Prepared##27517 |only if havequest(27517) |goto 64.5,28.0
		accept Tipping the Balance##27431 |goto 64.5,28.0
	step
		talk Harrison Jones##45296
		Ask him what you can do to help
		Watch the cutscene
		Stay Out of Harrison's Way |q 27431/1 |goto 64.5,28.0
	step
		talk Harrison Jones##45296
		turnin Tipping the Balance##27431 |goto 64.5,28.0
		accept After the Fall##27624 |goto 64.5,28.0
	step
		All around this area: 
		kill Amethyst Scarab##46129
		kill Turquoise Scarab##46126
		kill Sapphire Scarab##46127
		kill Emerald Scarab##46128
		|tip Just need to kill one to start this quest.
		Click the "Quest Accepted" box under your minimap:
		accept Just a Fancy Cockroach##27627
	step
		click Watcher Head##10079
		collect Orb of the Morning Star |q 27624/1 |goto 64.0,26.4
	step
		click Watcher Head##10079
		collect Orb of the Evening Star |q 27624/2 |goto 66.8,28.1
	step
		click Watcher Head##10079
		collect Orb of the Shooting Star |q 27624/4 |goto 65.3,32.6
	step
		click Watcher Head##10079
		collect Orb of the North Star |q 27624/3 |goto 62.5,32.0
	step
		kill 5 Turquoise Scarab##46126 |q 27627/4 |goto 63.6,32.6
	step
		kill 5 Amethyst Scarab##46129 |q 27627/1 |goto 64.2,27.2
	step
		kill 5 Sapphire Scarab##46127 |q 27627/3 |goto 66.6,27.6
	step
		kill 5 Emerald Scarab##46128 |q 27627/2 |goto 65.6,32.6
	step
		Click the "Quest Complete!" box under your minimap:
		turnin Just a Fancy Cockroach##27627
	step
		talk Harrison Jones##45296
		turnin After the Fall##27624 |goto 64.5,28.0
		accept Do the Honors##27669 |goto 64.5,28.0
	step
		Use your Orbs of the Stars |use Orbs of the Stars##62054
		Watch the cutscene
		Reactivate the Obelisk of the Stars |q 27669/1 |goto 64.5,28.7
	step
		talk Harrison Jones##48034
		turnin Do the Honors##27669 |goto 63.9,33.9
	step
		talk King Phaoris##47684
		turnin Impending Retribution##28134 |goto 54.9,32.7
		accept Al'Akir's Vengeance##28135 |goto 54.9,32.7
	step
		talk Adarrah##47005
		accept That Gleam in his Eye##27899 |goto 54.3,35.3
	step
		talk Prince Nadun##45799
		turnin Al'Akir's Vengeance##28135 |goto 45.2,38.0
		accept Minions of Al'Akir##27520 |goto 45.2,38.0
	step
		talk General Ammantep##45772
		accept Under the Choking Sands##27519 |goto 45.3,37.8
		accept The Prophet Hadassi##27595 |goto 45.3,37.8
	step
		talk Prophet Hadassi##46003
		turnin The Prophet Hadassi##27595 |goto 40.0,40.5
		accept The Prophet's Dying Words##27602 |goto 40.0,40.5
	step
		click Sand-Covered Hieroglyphs##5992
		|tip It is inside this building.
		turnin The Prophet's Dying Words##27602 |goto 39.6,45.4
		accept Colossal Guardians##27623 |goto 39.6,45.4
	step
		clicknpc Colossus of the Sun##46041
		kill Colossus of the Sun 
		collect Stone of the Sun |q 27623/2 |goto 39.6,40.9
	step
		clicknpc Colossus of the Moon##46042
		kill Colossus of the Moon
		collect Stone of the Moon |q 27623/1 |goto 41.2,37.6
	step
		kill 6 Scion of Al'Akir##45755+ |q 27520/1 |goto 40.7,40.2
		clicknpc Orsis Survivor##45715+
		Rescue 8 Orsis Survivors |q 27519/1 
		|tip You can rescue the survivors while on your mount.
		More can be found around |goto Uldum,42.7,33.9
	step
		click Sand-Covered Hieroglyphs##5992
		turnin Colossal Guardians##27623 |goto 39.6,45.4
		accept The Scepter of Orsis##27706 |goto 39.6,45.4
	step
		click Sacred Receptacle##6502
		collect The Scepter of Orsis |q 27706/1 |goto 39.6,45.4
	step
		talk Harrison Jones##46978
		turnin That Gleam in his Eye##27899 |goto 44.0,57.1
		accept I've Got This Guy##27900 |goto 44.0,57.1
		accept They Don't Know What They've Got Here##27901 |goto 44.0,57.1
	stickystart "schnottzairtroop"
	step
		kill Schnottz Air Officer##46993 |goto 44.3,58.2
		collect Efficient Excavations##62768 |n
		Click the Efficient Excavations in your bags |use Efficient Excavations##62768
		accept Efficient Excavations##28132
	step "schnottzairtroop"
		kill Schnottz Air Trooper##46979+ |goto 46.7,58.4
		Slay 10 Schnottz Air Troopers |q 27900/1
		kill Schnottz Air Officer##46993+
		collect Uldum Chest Key Code##62608 |n
		click Obelisk of the Sun Coffer##8685+
		collect 6 Titan Device Component##62610 |q 27901
		More can be found |goto Uldum,45.6,55.1
		And |goto Uldum,43.7,55.7
	step
		Use your Titan Device Components |use Titan Device Component##62610
		collect Titan Activation Device |q 27901/1
	step
		talk Harrison Jones##46978
		turnin I've Got This Guy##27900 |goto 44.0,57.1
		turnin They Don't Know What They've Got Here##27901 |goto 44.0,57.1
		accept Ignition##27903 |goto 44.0,57.1
	step
		Follow the path down |goto 45.2,58.8 < 5 |walk
		Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611
		kill Titanic Guardian##47032 
		|tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
		collect Lens of the Sun |q 27903/1 |goto 47.1,58.8
	step
		Fly up onto the middle platform inside this cave
		Click the Titan Mechanism
		turnin Ignition##27903 |goto 45.6,57.8
	step
		talk Harrison Jones##46978
		accept Tailgunner!##27905 |goto 44.0,57.1
		Use the abilities on your hotbar to shoot down the airplanes that chase you
		Escape the Obelisk of the Sun |q 27905/1
	step
		talk Harrison Jones##48082
		turnin Tailgunner!##27905 |goto 54.6,41.8
	step
		talk Prince Nadun##45799
		turnin Minions of Al'Akir##27520 |goto 45.2,38.0
	step
		talk General Ammantep##45772
		turnin Under the Choking Sands##27519 |goto 45.3,37.8
		turnin The Scepter of Orsis##27706 |goto 45.3,37.8
	step
		talk Prince Nadun##45799
		accept Send Word to Phaoris##27628 |goto 45.2,38.0
	step
		talk King Phaoris##47684
		turnin Send Word to Phaoris##27628 |goto 54.9,32.7
	step
		talk Prince Nadun##47959
		accept The High Priest's Vote##27630 |goto 55.0,34.0
		accept The Vizier's Vote##27629 |goto 55.0,34.0
		accept The High Commander's Vote##27631 |goto 55.0,34.0
	step
		Enter the dam |goto 52.9,45.3 < 5 |walk
		talk High Priest Amet##46135
		turnin The High Priest's Vote##27630 |goto 54.2,41.9
		accept Stopping the Spread##27836 |goto 54.2,41.9
		accept Trespassers in the Water##27837 |goto 54.2,41.9
	stickystart "Stillwaterslith"
	stickystart "Slithereregg"
	step "Stillwaterslith"
		Leave the dam |goto 52.9,45.3 < 5 |walk
		kill 8 Stillwater Slitherer##46868+ |q 27837/1 |goto 52.9,40.8
	step "Slithereregg"
		click Slitherer Egg##7803+
		Destroy 6 Slitherer Eggs |q 27836/1
	step
		Enter the dam |goto 52.9,45.3 < 5 |walk
		talk High Priest Amet##46135
		turnin Stopping the Spread##27836 |goto 54.2,41.9
		turnin Trespassers in the Water##27837 |goto 54.2,41.9
		accept The Defilers' Ritual##28611 |goto 54.2,41.9
	step
		Leave the dam |goto 52.9,45.3 < 5 |walk
		Enter the underwater cave |goto 51.8,40.1 < 5 |walk
		kill Dark Ritualist Zakahn##49148 |indoors Murkdeep Cavern
		Stop the Neferset Ritual |q 28611/1 |goto 49.9,40.1 |indoors Murkdeep Cavern
	step
		Leave the underwater cave |goto 51.8,40.1 < 5 |walk
		Enter the dam |goto 52.9,45.3 < 5 |walk
		talk High Priest Amet##46135
		turnin The Defilers' Ritual##28611 |goto 54.2,41.9
		accept The Root of the Corruption##27838 |goto 54.2,41.9
	step
		Leave the dam |goto 52.9,45.3 < 5 |walk
		talk High Commander Kamses##46134
		turnin The High Commander's Vote##27631 |goto 58.9,46.1
		accept The Weakest Link##28198 |goto 58.9,46.1
		accept Ploughshares to Swords##28201 |goto 58.9,46.1
	step
		talk Sergeant Mehat##48012
		accept The Element of Supplies##28200 |goto 59.0,46.1
	step
		talk Salhet##46883
		turnin The Weakest Link##28198 |goto 59.6,47.3
		accept Shaping Up##28210 |goto 59.6,47.3
	step
		talk Vizier Tanotep##46136 
		|tip He walks around the area here.
		turnin The Vizier's Vote##27629 |goto 56.3,53.5
		accept Tanotep's Son##27632 |goto 56.3,53.5
	step
		talk Ramkahen Laborer##46333
		Recruit 8 Ramkahen Laborers |q 28201/1 |goto 55.6,53.7
		|tip This can be done while mounted.
	step
		kill Riverbed Crocolisk##45321+ 
		|tip They are all along and in this big river.
		collect 20 Hardened Crocolisk Hide |q 28200/1 |goto 56.7,48.5
	step
		talk Sergeant Mehat##48012
		turnin The Element of Supplies##28200 |goto 59.0,46.1
	step
		talk High Commander Kamses##46134
		turnin Ploughshares to Swords##28201 |goto 58.9,46.1
		accept Ancient Weapons##27839 |goto 58.9,46.1
	step
		Use your Horn of Ramkahen |use Horn of Ramkahen##62534 |goto 60.4,57.5
		When the cat men run in to attack the smugglers, |goto 60.5,58.7
		click Ancient Tol'vir Weapon##10071+
		collect Ancient Tol'vir Armaments |q 27839/1
	step
		kill Neferset Guard##46340+
		collect Vir'Naal Delta Map |q 27632/1 |goto 58.1,60.8
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Tanotep's Son##27632
		accept Neferset Prison##27707
	step
		kill Bloodsnarl Hyena##45353+ 
		Help Salhet defeat 8 Bloodsnarl Hyenas |q 28210/1 |goto 55.5,59.5
		You can find more Bloodsnarl Hyenas around |goto 52.6,56.2
	step
		Next to you:
		talk Salhet##48022
		turnin Shaping Up##28210
		accept Salhet's Secret##28276
	step
		talk Salhet##48237
		turnin Salhet's Secret##28276 |goto 56.9,62.4
		accept Salhet the Tactician##28277 |goto 56.9,62.4
	step
		talk Salhet##48237
		Tell him let's see what he and his lions can do
		Use the abilities on your hotbar to use the lions to kill the hyenas
		kill 30 Bloodsnarl Scavenger##48199+ |q 28277/1 |goto 56.9,62.4
	step
		talk Salhet##48237
		turnin Salhet the Tactician##28277 |goto 56.9,62.4
		accept Return to Camp##28291 |goto 56.9,62.4
	step
		talk Ramkahen Prisoner##46425
		Fight the enemies that attack
		Discover Tahet's Whereabouts |q 27707/1 |goto 71.3,73.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Neferset Prison##27707
		accept The Pit of Scales##27738
	step
		talk Tahet##46496
		Kill the Pit Master's crocolisk pets.
		kill Caimas the Pit Master##46276 
		|tip Make him chase you. Run in front of him so that he runs over the big pink Croc Eggs on the ground around this area. Baby Crocs will damage him and slow his run speed down. Eventually, he will die.
		Free Tahet |q 27738/1 |goto 58.3,82.9
		|model Croc Eggs##412
	step
		kill Scalemother Hevna##46871 |q 27838/1 |goto 58.9,14.2
	step
		Enter the dam |goto 52.9,45.3 < 5 |walk
		talk High Priest Amet##46135
		turnin The Root of the Corruption##27838 |goto 54.2,41.9
	step
		Leave the dam |goto 52.9,45.3 < 5 |walk
		talk High Commander Kamses##46134
		turnin Return to Camp##28291 |goto 58.9,46.1
		turnin Ancient Weapons##27839 |goto 58.9,46.1
	step
		talk Vizier Tanotep##46136 
		|tip He walks around the area here.
		turnin The Pit of Scales##27738 |goto 56.3,53.5
		accept The High Council's Decision##28533 |goto 56.3,53.5
	step
		talk King Phaoris##47684
		turnin The High Council's Decision##28533 |goto 54.9,32.7
		Watch the cutscene
		accept Nahom Must Hold##28561 |goto 54.9,32.7
	step
		talk Salhet##48761
		turnin Nahom Must Hold##28561 |goto 67.2,42.9
		accept The Secret of Nahom##28498 |goto 67.2,42.9
	step
		talk Sun Prophet Tumet##48501
		accept Punish the Trespassers##28499 |goto 67.3,42.8
	step
		kill Neferset Raider##48626+, Neferset Scryer##48625+, Neferset Looter##48627+
		kill 10 Neferset intruder |q 28499/1 |goto 71.7,46.1
		click Atulhet's Record Fragment##6420+
		collect 8 Atulhet's Record Fragment |q 28498/1 |goto 71.7,46.1
		You can find more Atulhet Fragments and Neferset mobs around |goto 75.2,45.7
		Can also find more mobs at [Uldum,74,51.5]
	step
		talk Sun Prophet Tumet##48501
		turnin Punish the Trespassers##28499 |goto 67.3,42.8
	step
		talk Salhet##48761
		turnin The Secret of Nahom##28498 |goto 67.2,42.9
		accept The Cypher of Keset##28500 |goto 67.2,42.9
	step
		kill Raider Lord Havat##49214
		collect The Cypher of Keset |q 28500/1 |goto 78.2,45.7
	step
		talk Salhet##48761
		turnin The Cypher of Keset##28500 |goto 67.2,42.9
		accept The Defense of Nahom##28501 |goto 67.2,42.9
	step
		talk Ramkahen Sergeant##49228
		Use the abilities on your hotbar to command the troops
		Complete the Defense of Nahom |q 28501/1 |goto 66.7,41.8
	step
		Click the red arrow on your hotbar |outvehicle |noway |c |q 28501
	step
		talk Salhet##48761
		turnin The Defense of Nahom##28501 |goto 67.2,42.9
		accept The Push Westward##28623 |goto 67.2,42.9
	step
		talk Sun Prophet Tumet##48501
		accept The Curse of the Tombs##27755 |goto 67.3,42.8
	step
		kill Mekgineer Mixeltweed##46592 |q 27755/2 |goto 69.8,58.9
		kill 6 Crazed Digger##46590+ |q 27755/1 |goto 69.8,58.9
		collect 1 A.I.D.A. Communicator##62483 |n
		Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
		accept Artificial Intelligence##27760
	step
		click A.I.D.A. Terminal##7764
		turnin Artificial Intelligence##27760 |goto 74.1,64.4
		accept A Disarming Distraction##27761 |goto 74.1,64.4
		accept Core Access Codes##27777 |goto 74.1,64.4
	step
		Use your Mech Control Scrambler on Twizzleflux the Insane repeatedly |use Mech Control Scrambler##62542
		kill Twizzleflux the Insane##46587
		collect Core Access Codes |q 27777/1 |goto 73.3,72.8
	step
		Use your Holographic Projector next to the First Bomb Cluster to distract the enemies |use Holographic Projector##62398
		click First Bomb Cluster##9277
		Disarm the First Bomb Cluster |q 27761/1 |goto 78.8,62.1
	step
		Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
		click Second Bomb Cluster##9277
		Disarm the Second Bomb Cluster |q 27761/2 |goto 79.0,64.3
	step
		Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
		click Third Bomb Cluster##9277
		Disarm the Third Bomb Cluster |q 27761/3 |goto 79.0,64.9
	step
		Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
		clicknpc Unstable Bomb Bot##46888+
		Deactivate 4 Unstable Bomb Bots |q 27761/4 |goto 79.0,63.6
	step
		click A.I.D.A. Terminal##7764
		turnin A Disarming Distraction##27761 |goto 74.1,64.4
		turnin Core Access Codes##27777 |goto 74.1,64.4
		accept Hacking the Wibson##27778 |goto 74.1,64.4
	step
		click Maintenance Tools##317
		collect Maintenance Axe##62621 |q 27778 |goto 77.0,62.9
		|tip They are on top of this blimp thing.
	step
		clicknpc Wibson Mainframe##46715
		Hack the Wibson Mainframe |q 27778/1 |goto 77.0,63.0
	step
		talk Fusion Core##46750
		turnin Hacking the Wibson##27778 |goto 77.3,63.3
		accept Gnomebliteration##27779 |goto 77.3,63.3
	step
		Roll down the hill as the Fusion Core
		Run over gnomes all around this area
		Obliterate 1000 Crazed Gnomes |q 27779/1 |goto 81.9,58.8
	step
		Roll back up the hill |goto 77.6,62.4
		Click the yellow arrow on your hotbar |outvehicle |noway |c |q 27779
	step
		talk Fusion Core##46750
		turnin Gnomebliteration##27779 |goto 77.3,63.3
	step
		talk King Phaoris##48564
		turnin The Push Westward##28623 |goto 52.0,65.5
		accept Lieutenants of Darkness##28480 |goto 52.0,65.5
		accept Bleeding the Enemy##28483 |goto 52.0,65.5
	step
		talk Salhet##49345
		accept Salhet's Gambit##28486 |goto 52.9,65.5
	step
		talk Ramkahen Ranger Captain##49244
		Protect the rangers as they run up the path
		Secure Higher Ground |q 28486/1 |goto 54.1,71.2
	stickystart "nefersetinsig"
	step
		kill High Priest Sekhemet##47730 |q 28480/2 |goto 47.5,77.3
	step
		kill Scorpion-Lord Namkhare##47742 |q 28480/1 |goto 50.6,87.0
	step "nefersetinsig"
		kill Neferset Snake Charmer##47738+, Neferset Cursebringer##47760+, Neferset Ritualist##47762+
		collect 10 Neferset Insignia |q 28483/1 |goto 48.7,84.9
	step
		talk Salhet##49345
		turnin Salhet's Gambit##28486 |goto 52.9,65.5
	step
		talk King Phaoris##48564
		turnin Lieutenants of Darkness##28480 |goto 52.0,65.5
		turnin Bleeding the Enemy##28483 |goto 52.0,65.5
		accept The Fall of Neferset City##28520 |goto 52.0,65.5
	step
		kill Dark Pharaoh Tekahn##47753 |q 28520/1 |goto 52.0,82.3
	step
		talk Belloc Brightblade##47670
		turnin Efficient Excavations##28132 |goto 24.4,64.5
		accept Eastern Hospitality##27926 |goto 24.4,64.5
	step
		talk Ambassador Laurent##47176
		Ask him what he thinks of our host
		Mingle with Ambassador Laurent |q 27926/1 |goto 22.5,63.2
	step
		talk Refined Gentleman##47185
		Ask him what he knows of our generous host
		Mingle with a Refined Gentleman |q 27926/2 |goto 22.5,63.2
	step
		talk Budding Artist##47187
		Ask him how to find the Commander
		Mingle with a Budding Artist |q 27926/3 |goto 22.3,63.2
		|modelnpc Budding Artist##47707
	step
		talk Aspiring Starlet##47189
		Ask her how she has been enjoying her time here
		Mingle with an Aspiring Starlet |q 27926/4 |goto 22.2,63.2
	step
		talk Arcane Guest Registry##49528
		home Schnottz's Landing |q 27928 |future |goto 22.0,64.5
	step
		talk Evax Oilspark##48273
		fpath Schnottz's Landing |goto 22.3,64.9
	step
		talk Belloc Brightblade##47670
		turnin Eastern Hospitality##27926 |goto 24.4,64.5
		accept A Favor for the Furrier##27928 |goto 24.4,64.5
	step
		talk Commander Schnottz##47159
		accept The Desert Fox##27939 |goto 24.4,64.1
	step
		kill Diseased Vulture##47202
		|tip They are flying above you.
		You will accept a quest
		accept Dirty Birds##27940 |goto 40.6,68.9
	stickystart "Desertcoyote"
	stickystart "Desertfox"
	step "Desertcoyote"
		kill Diseased Vulture##47202+
		Slay 8 Diseased Vultures |q 27940/1
		kill Shaggy Desert Coyote##47190+
		collect 5 Desert Coyote Pelt |q 27928/1 |goto 40.6,68.9
		You can find more mobs to kill |goto Uldum,43.7,70.3
	step "Desertfox"
		clicknpc Desert Fox##47201 
		|tip It runs around a lot, so you will probably have to search for it to find it.
		collect The Desert Fox |q 27939/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Dirty Birds##27940
	step
		talk Belloc Brightblade##47670
		turnin A Favor for the Furrier##27928 |goto 24.4,64.5
		accept Fashionism##27941 |goto 24.4,64.5
	step
		talk Commander Schnottz##47159
		turnin The Desert Fox##27939 |goto 24.4,64.2
		accept Idolatry##27942 |goto 24.4,64.2
		accept Angered Spirits##27943 |goto 24.4,64.2
	stickystart "Furiousspecter"
	stickystart "Deadtrooper"
	stickystart "Wellpreserved"
	step "Furiousspecter"
		kill Furious Specter##47220+
		Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
		collect 5 Furious Spectral Essence |q 27943/1 |goto 31.2,63.6
	step "Deadtrooper"
		clicknpc Dead Trooper##47219+
		|tip You can collect the Dead Tropoer Uniforms while mounted.
		collect 10 Trooper Uniform |q 27941/1
	step "Wellpreserved"
		click Well-preserved Idol##10092+
		collect 8 Well-preserved Idol |q 27942/1
	step
		talk Belloc Brightblade##47670
		turnin Fashionism##27941 |goto 24.4,64.5
	step
		talk Commander Schnottz##47159
		turnin Idolatry##27942 |goto 24.4,64.1
		turnin Angered Spirits##27943 |goto 24.4,64.1 
		accept Gobbles!##27950|goto 24.4,64.1
	step
		talk Commander Schnottz##47159 |goto 24.4,64.1
		Tell him the perimeter is secure
		Witness Gobbles' Transformation Ritual |q 27950/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Gobbles!##27950
	step
		talk Commander Schnottz##47159
		accept Make Yourself Useful##27969 |goto 24.4,64.1
	step
		Use your Refurbished Trooper Uniform |use Refurbished Trooper Uniform##62813
		Wear the Uniform |havebuff 132723 |q 27969 --inv_chest_leather_08
	step
		talk Slacking Laborer##47292 |goto 23.2,60.1
		Tell them they're behind schedule
		Motivate 6 Slacking Laborers |q 27969/1 
		|tip You won't motivate all of the Slacking Laborers you talk to.
		You can find more Slacking Laborers around |goto 20.5,60.5
	step
		talk Commander Schnottz##47159
		turnin Make Yourself Useful##27969 |goto 24.5,64.2
	step
		talk Belloc Brightblade##47670
		accept Crisis Management##28002 |goto 24.4,64.5
	step
		talk Budding Artist##47707 
		Ask him if he saw anything
		Counsel the Budding Artist |q 28002/4 |goto 22.5,64.0
	step
		talk Prolific Writer##47516
		Ask him who could have done such a thing
		Question the Prolific Writer |q 28002/1 |goto 22.4,63.8
	step
		talk Privileged Socialite##47519
		Ask her if she is all right
		Soothe the Privileged Socialite |q 28002/2 |goto 22.2,63.9
	step
		talk Pretentious Businessman##47520
		Ask him if he wants to know what happened to the man
		Chasten the Pretentious Businessman |q 28002/3 |goto 22.3,64.1
	step
		talk Belloc Brightblade##47670
		turnin Crisis Management##28002 |goto 24.4,64.5
	step
		talk Commander Schnottz##47159
		accept Battlezone##27990 |goto 24.4,64.1
	step
		clicknpc Schnottz's Siege Tank##47732
		Ride in Schnottz's Siege Tank
		Use the Fire Cannon ability on your hotbar on Decrepit Watchers
		Obliterate 7 Decrepit Watchers |q 27990/1 |goto 21.3,64.6
		|modelnpc 47385
	step
		Go to this spot |goto 24.4,64.1
		Return to Schnottz |q 27990/2 
	step
		talk Commander Schnottz##47940
		turnin Battlezone##27990 |goto 24.4,64.1
		accept Missed Me By Zhat Much!##28187 |goto 24.4,64.1
	step
		talk Commander Schnottz##47940
		Tell him let's move
		Follow Commander Schnottz
		Accompany Schnottz to Safety |q 28187/1 |goto 24.4,64.1
	step
		talk Commander Schnottz##47972
		turnin Missed Me By Zhat Much!##28187 |goto 22.5,63.2
		accept Lockdown!##28193 |goto 22.5,63.2
	step
		Go to this spot |goto 21.9,64.1
		Visit Schnottz's Guests |q 28193/1
	step
		talk Prolific Writer##47967
		accept The Great Escape##28194 |goto 21.9,64.0
	step
		talk Commander Schnottz##47972
		turnin Lockdown!##28193 |goto 22.5,63.2
		accept Sending a Message##28195 |goto 22.5,63.2
	stickystart "freshsailoruniform"
	step
		kill Captain Margun##47981 |q 28195/1 |goto 22.3,67.6
		|tip He is on the top of the ship, in the back by the helm.
	step
		kill Captain Cork##47980 |q 28195/2 |goto 24.9,69.0
		|tip He is on the top of the ship, in the back by the helm.
	step
		kill Captain Kronkh##47978 |q 28195/3 |goto 26.1,68.6
		|tip He is on the top of the ship, in the back by the helm.
	step "freshsailoruniform"
		kill Schnottz Sea Trooper##47982+ 
		|tip Kill them on all 3 of the pirate ships around this area.
		collect 6 Fresh Sailor Uniform |q 28194/1 |goto 24.9,68.4
	step
		talk Prolific Writer##47967
		turnin The Great Escape##28194 |goto 21.9,64.0
	step
		talk Commander Schnottz##47972
		turnin Sending a Message##28195 |goto 22.5,63.2
		accept Firing Squad##28267 |goto 22.5,63.2
	step
		talk Commander Schnottz##47972
		Tell him you suppose you're ready...
		Watch the cutscene
		Go 'Out Back' With Schnottz |q 28267/1 |goto 22.5,63.2
	step
		talk Harrison Jones##48162
		turnin Firing Squad##28267 |goto 23.6,60.3
		accept Meet Me In Vir'sar##28269 |goto 23.6,60.3
	step
		talk King Phaoris##47684 
		turnin The Fall of Neferset City##28520 |goto 54.9,32.7
	step
		talk Sun Prophet Tumet##48501
		turnin The Curse of the Tombs##27755 |goto 67.3,42.8
	step
		talk Harrison Jones##48186
		turnin Meet Me In Vir'sar##28269 |goto 27.0,7.5
		accept Friend of a Friend##28273 |goto 27.0,7.5
	step
		talk Yasmin##49406
		home Oasis of Vir'sar |q 28274 |future |goto 26.6,7.2
	step
		talk Sullah##48203
		turnin Friend of a Friend##28273 |goto 26.6,8.0
		accept Two Tents##28274 |goto 26.6,8.0
	step
		Watch the cutscene
		Accompany Sullah |q 28274/1
		|modelnpc 48621
	step
		talk Sullah##48431
		turnin Two Tents##28274 |goto 29.6,21.9
		accept Master Trapper##28350 |goto 29.6,21.9
		accept Camel Tow##28352 |goto 29.6,21.9 
		accept Unlimited Potential##28351 |goto 29.6,21.9
	stickystart "wildcamel"
	step
		kill Wild Camel##51193+
		Use Sullah's Camel Harness on Wild Camels when they are weakened |use Sullah's Camel Harness##67241 
		|tip You will see a message flash on your screen telling you to capture the camel.
		Capture 3 Wild Camels |q 28352/1 |goto 29.9,38.2
	step "wildcamel"
		kill Wild Camel##51193+
		collect 5 Meat Scrap |q 28350/1 |goto 29.9,38.2
		kill Cavorting Pygmy##51217+
		Use Sullah's Pygmy Pen on Cavorting Pygmies when they are weakened |use Sullah's Pygmy Pen##67232 
		|tip You will see a message flash on your screen telling you to cage the pygmy.
		More can be found |goto Uldum,27.8,47
		Capture 5 Sand Pygmies |q 28351/1
	step
		talk Sullah##48431
		turnin Master Trapper##28350 |goto 29.6,21.8
		turnin Camel Tow##28352 |goto 29.6,21.8
		turnin Unlimited Potential##28351 |goto 29.6,21.8
		accept Jonesy Sent For You##28353 |goto 29.6,21.8
	step
		talk Harrison Jones##48186
		turnin Jonesy Sent For You##28353 |goto 27.0,7.5
		accept Reduced Productivity##28271 |goto 27.0,7.5
		accept Missing Pieces##28272 |goto 27.0,7.5
	step
		talk Jock Lindsey##48274
		fpath Oasis of Vir'sar |goto 26.6,8.35
	stickystart "Schnottzoverseer"
	stickystart "Pillagedloot"
	step "Schnottzoverseer"
		kill Schnottz Overseer##48205+, Schnottz Excavator##48204+
		Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1
	step "Pillagedloot"
		click Pillaged Loot Sack##10201+
		collect 7 Ancient Copper Scroll |q 28272/1 |goto 38.2,21.6
	step
		talk Harrison Jones##48186
		turnin Reduced Productivity##28271 |goto 27.0,7.6
		turnin Missing Pieces##28272 |goto 27.0,7.6
		accept Stirred the Hornet's Nest##28363 |goto 27.0,7.6
	step
		talk Sullah##48431
		turnin Stirred the Hornet's Nest##28363 |goto 29.6,21.8
		accept Shroud of the Makers##28367 |goto 29.6,21.8
	step
		Use your Shroud of the Makers every 2 minutes to stay Cloaked |use Shroud of the Makers##63699 
		|tip If you have a pet with you dismiss it, it does not stealth with you and will attract mobs
		click Schnottz Powder Keg##33+
		Sabotage 7 Powder Kegs |q 28367/1 |goto 38.4,22.6
	step
		talk Harrison Jones##48186
		turnin Shroud of the Makers##28367 |goto 27.0,7.5
		accept Schnottz So Fast##28402 |goto 27.0,7.5
	step
		Enter the building |goto 36.7,20.8 < 5 
		Fly down this hole |goto 33.5,17.8 < 5 |indoors Chamber of the Moon
		kill Schnottz Elite Trooper##48668+ |indoors Chamber of the Moon
		Slay 10 Schnottz Elite Troopers |q 28402/1 |goto 35.0,19.2 |indoors Chamber of the Moon
	step
		talk Harrison Jones##48528 |indoors Chamber of the Moon
		turnin Schnottz So Fast##28402 |goto 36.1,20.3 |indoors Chamber of the Moon
		accept Bad Datas##28403 |goto 36.1,20.3 |indoors Chamber of the Moon
	step
		talk Harrison Jones##48528 |indoors Chamber of the Moon
		Tell him you are ready when he is |indoors Chamber of the Moon
		Follow Harrison Jones |indoors Chamber of the Moon
		Upload the Titan Data |q 28403/1 |goto 36.1,20.3 |indoors Chamber of the Moon
	step
		talk Harrison Jones##48558 |indoors Chamber of the Moon
		turnin Bad Datas##28403 |goto 39.0,23.2 |indoors Chamber of the Moon
		accept I'll Do It By Hand##28404 |goto 39.0,23.2 |indoors Chamber of the Moon
	step
		kill Lunar Crystal##48529+ |indoors Chamber of the Moon
		Defeat the Titanic Guardian |q 28404/1 |goto 39.6,23.6 |indoors Chamber of the Moon
	step
		talk Harrison Jones##48558 |indoors Chamber of the Moon
		turnin I'll Do It By Hand##28404 |goto 39.0,23.2 |indoors Chamber of the Moon
	step
		talk Sullah##48621
		accept Sullah's Gift##28482 |goto 42.2,25.9
	step
		talk Harrison Jones##48698
		turnin Sullah's Gift##28482 |goto 41.4,5.6
		accept Fire From the Sky##28497 |goto 41.4,5.6
	step
		clicknpc Confiscated Artillery##48699
		Use the Designate Target ability on your hotbar on the Schnottz Infantrymen
		Slay 100 Schnottz Infantrymen |q 28497/1 |goto 41.4,5.6
	step
		talk Harrison Jones##48698
		turnin Fire From the Sky##28497 |goto 41.4,5.6
		accept See You on the Other Side!##28613 |goto 41.4,5.6
	step
		talk Harrison Jones##47158
		turnin See You on the Other Side!##28613 |goto 36.1,15.8
		accept Fortune and Glory##27748 |goto 36.1,15.8
		Follow Harrison Jones and fight the Obsidian Colossus 
		|tip Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
		kill Obsidian Colossus##46646
		Defeat the Obsidian Colossus |q 27748/1
	step
		talk Harrison Jones##49151
		turnin Fortune and Glory##27748 |goto 33.4,19.7
		accept Harrison Jones and the Temple of Uldum##28612 |goto 33.4,19.7
		Watch the cutscene
		Discover the Coffer of Promise |q 28612/1
	step
		talk Brann Bronzebeard##49204
		turnin Harrison Jones and the Temple of Uldum##28612 |goto 32.6,30.9
		accept Put That Baby in the Cradle!##28621 |goto 32.6,30.9
	step 
		talk Harrison Jones##49203
		turnin Put That Baby in the Cradle!##28621 |goto 32.6,30.7
		accept Three if by Air##28622 |goto 32.6,30.7
	step
		clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
		Place the North Signal Flare |q 28622/1 |goto 32.0,29.9
	step
		clicknpc Signal Flare Position##49216|use Harrison's Signal Flares##64668
		Place the West Signal Flaare |q 28622/2 |goto 31.4,30.8
	step
		clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
		Place the South Signal Flare |q 28622/3 |goto 32.0,31.6
	step
		talk Brann Bronzebeard##49248
		turnin Three if by Air##28622 |goto 44.9,67.3
		accept The Coffer of Promise##28633 |goto 44.9,67.3
	step
		click Coffer of Promise##9968
		collect Titan Discs |q 28633/1 |goto 45.0,67.3
	step
		talk Brann Bronzebeard##49351
		turnin The Coffer of Promise##28633 |goto 44.9,67.3
]])

ZygorGuidesViewer:RegisterInclude("A_Twilight_Leveling",[[
	step
		click Hero's Call Board##10016
		accept Hero's Call: Twilight Highlands!##28716 |goto Stormwind City,62.9,71.6
	step
		talk King Varian Wrynn##29611
		turnin Hero's Call: Twilight Highlands!##28716 |goto 85.7,31.8
		accept Twilight Shores##28238 |goto 85.8,31.7
	step
		talk Fargo Flintlocke##44806
		turnin Twilight Shores##28238 |goto 26.1,47.3
		accept Twilight Shores##28832 |goto 26.1,47.3
	step
		clicknpc Flintlocke's Seaplane##50262 |goto 25.9,47.6
		Ride to Twilight Highlands |goto Twilight Highlands |noway |c |q 28832
	step
		talk Lieutenant Fawkes##49022
		turnin Twilight Shores##28832 |goto Twilight Highlands,81.0,79.4
		accept Welcome to Highbank!##28596 |goto Twilight Highlands,81.0,79.4
	step
		kill Axebite Infantry##49008+
		kill 10 Horde Attackers |q 28596/1 |goto 81.1,77.3
	step
		talk Lieutenant Fawkes##49022
		turnin Welcome to Highbank!##28596 |goto 81.0,79.4
	step
		talk Fargo Flintlocke##49252
		accept Burnin' at Both Ends##28597 |goto 81.0,79.4
	step
		clicknpc Cannon Powder Barrel##49143+
		collect 10 Cannon Powder |q 28597/1 |goto 81.1,77.3
	step
		talk Fargo Flintlocke##49252
		turnin Burnin' at Both Ends##28597 |goto 78.8,76.8
		accept Aiming High##28598 |goto 78.8,76.8
	step
		You may have to wait for a few minutes, so just stand here and wait
		Wait to be launched from Flintlocke's Cannon |q 28598/1
	step
		Go downstairs in the zeppelin
		Use Flintlocke's Explosives while downstairs |use Flintlocke's Explosives##64660
		Destroy the Skyshredder |q 28598/2
	step
		talk Fargo Flintlocke##49252
		turnin Aiming High##28598 |goto 78.9,76.7
		accept Kurdran's Waitin'##28599 |goto 78.9,76.7
	step
		Go upstairs in the fort
		talk Kurdran Wildhammer##45167
		turnin Kurdran's Waitin'##28599 |goto 79.1,78.3
		accept Our Boys on the Shore##27338 |goto 79.1,78.3
	step
		talk Simon Chandler##45170
		accept Salvage Operation##27177 |goto 79.3,78.5
		accept Naga Reinforcements##27178 |goto 79.3,78.5
	step
		talk Ephram Hardstone##45171
		accept Siren's Song##27200 |goto 76.0,80.0
	step
		kill Ophelia##45183
		Slay Ophelia and Protect Ephram |q 27200/1
	step
		talk Ephram Hardstone##45171
		turnin Siren's Song##27200 |goto 76.0,80.0
	stickystart "Recoveredsupplies"
	stickystart "Blackscalenaga"
	step "Recoveredsupplies"
		click Water-Logged Crate##335+
		collect 8 Recovered Supplies |q 27177/1 |goto 76.2,83.0
	step "Blackscalenaga"
		kill Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
		Slay 10 Blackscale Naga |q 27178/1 |goto 76.2,83.0
	step
		Go upstairs in the fort
		talk Simon Chandler##45170
		turnin Salvage Operation##27177 |goto 79.3,78.5
		turnin Naga Reinforcements##27178 |goto 79.3,78.5
	step
		talk Glenn Arbuckle##47119
		fpath Highbank |goto 81.65,77.1
	step
		talk Lieutenant Emry##45169
		turnin Our Boys on the Shore##27338 |goto 76.8,69.8
		accept Scouting the Shore##27341 |goto 76.8,69.8
		accept Landgrab##27366 |goto 76.8,69.8
	step
		talk Fargo Flintlocke##49252
		accept Shredderectomy##27433 |goto 77.0,69.9
	stickystart "axebitemarine"
	stickystart "abusedshredder"
	step
		Go to this spot
		Scout the Beach Head Control Point |q 27341/1 |goto 77.5,65.3
	step "axebitemarine"
		kill 12 Axebite Marine##45175+ |q 27366/1 |goto 77.4,67.1
		|tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground.  Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
	step "abusedshredder"
		kill Diamond-Blade Shredder##45185+
		collect 5 Abused Shredder Parts |q 27433/1 |goto 74.3,68.0
		You can find more Shredders to kill at |goto Twilight Highlands,69,65.5
	step
		talk Lieutenant Emry##45169
		turnin Scouting the Shore##27341 |goto 76.8,69.8
		turnin Landgrab##27366 |goto 76.8,69.8
		accept Bird Down! Bird Down!##27514 |goto 76.8,69.8
	step
		talk Fargo Flintlocke##45168
		turnin Shredderectomy##27433 |goto 77.0,69.9
		accept Siege Tank Rescue##27468 |goto 77.0,69.9
	step
		talk Siege Tank Commander##45524
		Tell him you'll cover him while he makes repairs
		Speak to a Siege Tank Commander |q 27468/1 |goto 73.4,71.2
		kill Axebite Grunt##45187+
		Defend the Siege Tank |q 27468/2 |goto 73.4,71.2
	step
		talk Fargo Flintlocke##45168
		turnin Siege Tank Rescue##27468 |goto 77.0,69.9
	step
		talk Thordun Hammerblow##45172
		turnin Bird Down! Bird Down!##27514 |goto 67.7,66.0
		accept Roots'll Do 'Er##27515 |goto 67.7,66.0
	step
		click Thorny Stankroot##414+
		collect 8 Thorny Stankroot |q 27515/1 |goto 71.4,66.2
	step
		talk Thordun Hammerblow##45172
		turnin Roots'll Do 'Er##27515 |goto 67.7,66.0
		accept Wings Over Highbank##27516 |goto 67.7,66.0
	step
		talk Thordun Hammerblow##45172
		Tell him you're ready
		Fly with Thordun Hammerblow to Highbank |q 27516/1 |goto 67.7,66.0
	step
		talk Innkeeper Francis##49688
		|tip Hes on the ground floor.
		home Highbank |q 27537 |future |goto 79.4,78.5
	step
		Go upstairs in the fort
		talk Kurdran Wildhammer##45167
		turnin Wings Over Highbank##27516 |goto 79.1,78.3
		accept Any Portal in a Storm##27537 |goto 79.1,78.3
	step
		talk Thordun Hammerblow##45172
		accept The Perfect Poultice##27538 |goto 79.2,78.3
	stickystart "Muddiedwater"
	stickystart "Verrallriver"
	step "Muddiedwater"
		kill Muddied Water Elemental##44011+
		collect 5 Whirlpool Core |q 27537/1 |goto 67.7,46.9
	step "Verrallriver"
		click Verrall River Muck##10352
		collect 10 Verrall River Muck |q 27538/1 |goto 67.7,46.9
	step
		talk Talaa##45173
		turnin Any Portal in a Storm##27537 |goto 79.4,77.6
		turnin The Perfect Poultice##27538 |goto 79.4,77.6
		accept The Way is Open##27545 |goto 79.4,77.6
	step
		Go upstairs in the fort
		talk Kurdran Wildhammer##45167
		turnin The Way is Open##27545 |goto 79.1,78.3
	step
		talk Thordun Hammerblow##45172
		accept Firebeard's Patrol##27621 |goto 79.2,78.3
	step
		talk Keegan Firebeard##46804
		turnin Firebeard's Patrol##27621 |goto 60.1,57.9
		accept Welcome Relief##27803 |goto 60.1,57.9
		accept The Only Homes We Have##27804 |goto 60.1,57.9
	step
		talk Innkeeper Corlin##49795
		home Firebeard's Patrol |q 27805 |future |goto 60.4,58.1
	step
		talk Cailin Longfellow##46814
		accept Small Comforts##27805 |goto 60.4,58.3
	stickystart "subjugatedfire"
	step
		talk Farstad Stonegrip##47147
		fpath Firebeard's Patrol |goto 60.4,57.65
	step
		Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
		|tip If you lose the bucket, run near the Firebeard Militia dwarves and they'll toss you a new one.
		click Meara's Dried Roses##10073
		collect Meara's Dried Roses |q 27805/1 |goto 59.8,56.2
		|tip This is a small plant, found on the ground or in houses around this area.
	step
		Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
		|tip If you lose the bucket, run near the Firebeard Militia dwarves and they'll toss you a new one.
		click Aprika's Lost Doll##7514
		|tip This is a small white doll sitting on the ground inside this ruined burning house.
		collect Aprika's Doll |q 27805/3 |goto 59.5,55.9
	step
		Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
		|tip If you lose the bucket, run near the Firebeard Militia dwarves and they'll toss you a new one.
		click Parlan's Ivory Hammer##8215
		|tip Looks like a small white hammer sitting on a forge inside this burning building.
		collect Parlan's Ivory Hammer |q 27805/2 |goto 59.3,56.9
	step "subjugatedfire"
		Use your Wildhammer Water Bucket next to fires |use Wildhammer Water Bucket##62508
		Extinguish 50 Village Fires |q 27804/1 |goto 59.8,56.9
		kill 8 Subjugated Firestarter##46838+ |q 27803/1 |goto 59.8,56.9
	step
		talk Keegan Firebeard##46804
		turnin Welcome Relief##27803 |goto 60.2,58.0
		turnin The Only Homes We Have##27804 |goto 60.2,58.0
		accept Honorable Bearing##27806 |goto 60.2,58.0
	step
		talk Cailin Longfellow##46814
		turnin Small Comforts##27805 |goto 60.4,58.3
	step
		talk Iain Firebeard##46805
		turnin Honorable Bearing##27806 |goto 57.5,58.1
		accept Clan Mullan##27807 |goto 57.5,58.1
		accept Stubborn as a Doyle##27808 |goto 57.5,58.1
		accept Firebeard Bellows##27809 |goto 57.5,58.1
	step
		talk Duglas Mullan##46811
		turnin Clan Mullan##27807 |goto 50.8,60.2
		accept The Fighting Spirit##27810 |goto 50.8,60.2
	step
		talk Edana Mullan##46812
		accept The Scent of Battle##27811 |goto 50.8,60.2
	step
		talk Mullan Gryphon Rider##46813
		Tell him he's not backing out
		kill Mullan Gryphon Rider
		Defeat a Mullan Gryphon Rider |q 27810/1 |goto 51.1,59.9
	step
		talk Duglas Mullan##46811
		turnin The Fighting Spirit##27810 |goto 50.8,60.2
	step
		talk Mullan Gryphon##46968
		Let the gryphons smell the piece of Charred Highland Birch 
		|tip If you come across a gyphon chained to the ground simply kill the Twilight Trapper and the Twilight Trapper Bindings. Other gryphons may need healing, if you cannot heal them move on.
		Find and return 8 Mullan Gryphons |q 27811/1 |goto 57.3,67.6
		|modelnpc Twilight Trapper Bindings##46975+
		|modelnpc Twilight Trapper##46984+
	step
		talk Keeland Doyle##47317
		turnin Stubborn as a Doyle##27808 |goto 61.4,67.4
		accept The Fate of the Doyles##27999 |goto 61.4,67.4
	step
		talk Edana Mullan##46812
		turnin The Scent of Battle##27811 |goto 50.8,60.2
	step
		talk Duglas Mullan##46811 
		accept The Loyalty of Clan Mullan##27812 |goto 50.8,60.3
	step
		talk Iain Firebeard##46805
		turnin The Fate of the Doyles##27999 |goto 57.5,58.1
		turnin The Loyalty of Clan Mullan##27812 |goto 57.5,58.1
	step
		talk Mackay Firebeard##46850
		turnin Firebeard Bellows##27809 |goto 62.5,48.4
		accept Death Worthy of a Dragonmaw##27813 |goto 62.5,48.4
	step
		talk Ella Forgehammer##48046
		accept The Lost Brother##28233 |goto 62.6,48.6
	step
		talk Brom Forgehammer##46806
		accept Anything We Can Get##27814 |goto 62.6,48.6
	step
		talk Bahrum Forgehammer##48053
		turnin The Lost Brother##28233 |goto 63.1,47.6
		accept They Took Me Pants!##28234 |goto 63.1,47.6
	stickystart "dragonmawweapons"
	step
		Go upstairs in this building
		kill Gorosh the Pant Stealer##48102
		collect Bahrum's Pants |q 28234/1 |goto 62.3,47.0
	step "dragonmawweapons"
		talk Injured Dragonmaw Straggler##47465
		Help the orcs up
		kill Dragonmaw Straggler##46851
		|tip You can kill the agrressive Stragglers or help the injured ones, either will complete this step.
		Defeat 6 Dragonmaw Stragglers |q 27813/1
		click Dragonmaw Weapon Axe##9561+
		click Dragonmaw Weapon Rack##9921+
		click Dragonmaw Weapon Crate##5271+
		collect 8 Dragonmaw Weapon |q 27814/1 |goto 62.3,46.8
	step
		talk Bahrum Forgehammer##48053
		turnin They Took Me Pants!##28234 |goto 63.2,47.6
	step
		talk Mackay Firebeard##46850
		turnin Death Worthy of a Dragonmaw##27813 |goto 62.5,48.4
	step
		talk Brom Forgehammer##46806
		turnin Anything We Can Get##27814 |goto 62.6,48.6
	step
		talk Mackay Firebeard##46850
		accept Somethin' for the Boys##27815 |goto 62.5,48.4
	step
		talk Iain Firebeard##46805
		turnin Somethin' for the Boys##27815 |goto 57.5,58.1
		accept Personal Request##27816 |goto 57.5,58.1
	step
		talk Keegan Firebeard##46804
		turnin Personal Request##27816 |goto 60.2,57.8
		accept Dropping the Hammer##27817 |goto 60.2,57.8
	step
		clicknpc Firebeard Gryphon Mount##47316
		Ride the Firebeard Gryphon Mount |invehicle |c |q 27817 |goto 59.9,57.3
	step
		While flying on the Firebeard Gryphon Mount:
		Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks 
		|tip Use your Storm Shield ability when someone casts a lightning attack on you.
		kill 12 Twilight Stormbender##47199+ |q 27817/1 |goto 58.8,53.1
	step
		While flying on the Firebeard Gryphon Mount:
		Use the abilities on your action bar to weaken Servias Windterror
		Eventually, you will get off the gryphon and fight him regularly
		kill Servias Windterror##46839 |q 27817/2 |goto 58.6,51.7
		|tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
	step
		talk Keegan Firebeard##46804
		turnin Dropping the Hammer##27817 |goto 60.2,57.9
		accept Dunwalds Don't Die##27640 |goto 60.2,57.9
		accept A Coward's Due##28001 |goto 60.2,57.9
	step
		Enter this building |goto 46.7,66.0 < 5 |walk
		talk Keely Dunwald##46177
		turnin Dunwalds Don't Die##27640 |goto 45.9,65.5
		accept Donnelly Dunwald##27643 |goto 45.9,65.5
		accept Eoin Dunwald##27644 |goto 45.9,65.5
		accept Cayden Dunwald##27645 |goto 45.9,65.5
	step
		talk Flynn Dunwald##46143
		accept While Meeting The Family##27641 |goto 45.9,65.4
		accept Sifting Through The Wreckage##27642 |goto 45.9,65.4
	step
		Cayden Dunwald can also be at [45.8,71.7]
		talk Cayden Dunwald##46174
		turnin Cayden Dunwald##27645 |goto 45.8,71.7
		accept Once More Into The Fire##27648 |goto 45.8,71.7
	step
		talk Cayden Dunwald##46174
		Tell him yeah...
		Escort Cayden Dunwald
		Accompany Cayden through Dunwald Market Row |q 27648/1 |goto 47.9,74.6
	step
		talk Cayden Dunwald##46174
		turnin Once More Into The Fire##27648 |goto 47.9,74.5
		Cayden Dunwald can also be at [45.8,71.7]
	step
		talk Eoin Dunwald##46175
		turnin Eoin Dunwald##27644 |goto 52.9,74.3
		accept Anything But Water##27647 |goto 52.9,74.3
	step
		Enter the building here |goto 52.25,70.6 < 5 |walk
		Follow the path to the left and go downstairs.
		click Sacred Ale Tap##7415
		collect Sacred Wildhammer Ale |q 27647/1 |goto 52.8,69.8
	step
		talk Eoin Dunwald##46583
		turnin Anything But Water##27647 |goto 52.4,70.3
		accept A Steady Supply##27649 |goto 52.4,70.3
	step
		talk Donnelly Dunwald##46176
		|tip He patrols around these two houses, you may have to search for him.
		turnin Donnelly Dunwald##27643 |goto 46.4,59.1
		accept Finding Beak##27646 |goto 46.4,59.1
	step
		As you walk around doing quests:
		talk Dunwald Victim##46609
		click Wildhammer Ale Cask##7415
		Go into the basement of this building
		Search the cellar in southern Dunwald Hovel |q 27646/1 |goto 45.4,60.0
	step
		As you walk around doing quests:
		talk Dunwald Victim##46609
		click Wildhammer Ale Cask##7415
		Go into the basement of this building
		Search the cellar in northwestern Dunwald Hovel |q 27646/2 |goto 46.4,53.8
	step
		As you walk around doing quests:
		talk Dunwald Victim##46609
		click Wildhammer Ale Cask##7415
		Go to this spot
		Search the buildings in eastern Dunwald Hovel |q 27646/3 |goto 48.4,52.6
	step
		talk Donnelly Dunwald##46176
		|tip He patrols around these two houses.
		turnin Finding Beak##27646 |goto 46.0,58.7
		accept Home Again##27650 |goto 46.0,58.7
	step
		kill Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
		Welcome #20# Twilight Guests to Dunwald |q 27641/1 |goto 45.9,54.8
		talk Dunwald Victim##46609
		Find #12# Dunwald Victims |q 27642/1 |goto 45.9,54.8
		click Wildhammer Ale Cask##7415
		collect 6 Wildhammer Ale |q 27649/1 |goto 45.9,54.8
		|tip The best way to find victims and ale casks are inside houses.
		You can find more of all these things:
		Around [47.0,66.1]
		Around [46.4,72.6]
		Around [50.7,69.8]
	step
		Enter this building |goto 46.7,66.0 < 10 |walk
		talk Keely Dunwald##46177
		turnin Home Again##27650 |goto 46.0,65.5
		accept Doing It Like a Dunwald##27651 |goto 46.0,65.5
	step
		talk Eoin Dunwald##46627
		turnin A Steady Supply##27649 |goto 50.5,70.7
	step
		talk Flynn Dunwald##46143
		turnin While Meeting The Family##27641 |goto 50.5,70.7
		turnin Sifting Through The Wreckage##27642 |goto 50.5,70.7
	step
		talk Flynn Dunwald##46628
		Tell him you're in
		kill Darunga##46624 |q 27651/1 |goto 50.5,70.6
	step
		talk Flynn Dunwald##46628
		turnin Doing It Like a Dunwald##27651 |goto 50.5,70.6
	step
		talk Colin Thundermar##46591
		turnin A Coward's Due##28001 |goto 49.0,29.8
		accept Dragonmaw Takedown##27754 |goto 49.0,29.8
		accept My Sister, Fanny##28369 |goto 49.0,29.8
	step
		talk Low Shaman Blundy##48010
		accept Fight Like a Wildhammer##27752 |goto 49.8,29.2
	step
		talk Fanny Thundermar##48013
		turnin My Sister, Fanny##28369 |goto 49.8,29.3
		accept Never Leave a Dinner Behind##27753 |goto 49.8,29.3
	step
		talk Naveen Tendernose##49591
		home Thundermar |q 27754 |future |goto 49.5,30.4
	step
		talk Doran Talonheart##47154
		fpath Thundermar |goto 48.5,28.1
	step
		Around this area and inside houses:
		kill Dragonmaw Marauder##46310+
		collect 8 Dragonmaw Insignia |q 27754/1 |goto 46.2,37.4
		click Thundermar Ale Keg##4631+
		collect 10 Wildhammer Keg |q 27752/1 |goto 46.2,37.4
		click Wildhammer Food Stores##10034
		collect 15 Wildhammer Food Stores |q 27753/1 |goto 46.2,37.4
		You can find more around [49.1,37.3]
		|model Wildhammer Food Stores##224
		|model Wildhammer Food Stores##229
	step
		talk Colin Thundermar##46591
		turnin Dragonmaw Takedown##27754 |goto 49.0,29.8
	step
		talk Low Shaman Blundy##48010
		turnin Fight Like a Wildhammer##27752 |goto 49.8,29.2
	step
		talk Fanny Thundermar##48013
		turnin Never Leave a Dinner Behind##27753 |goto 49.8,29.3
	step
		talk Low Shaman Blundy##48010
		accept A Vision of Twilight##28241 |goto 49.8,29.2
	step
		talk Nivvet Channelock##48014
		accept Tempered in Elemental Flame##28211 |goto 49.1,29.4
		accept Hot Stuff##28212 |goto 49.1,29.4
		accept Potential Energy##28215 |goto 49.1,29.4
	step
		talk Colin Thundermar##46591
		accept Magmalord Falthazar##28216 |goto 49.0,29.7
	step
		click Eye of Twilight##7011
		turnin A Vision of Twilight##28241 |goto 57.9,33.5
		accept We All Must Sacrifice##28242 |goto 57.9,33.5
	stickystart "Shamanoftheblack"
	stickystart "Twistedelementium"
	step "Shamanoftheblack"
		kill 10 Shaman of the Black##46322+ |q 28242/1 |goto 58.0,32.6
	step "Twistedelementium"
		kill Obsidian Stoneslave##47226+
		collect 10 Twisted Elementium Loop |q 28215/1 |goto 58.0,32.6
	step
		click Eye of Twilight##7011
		turnin We All Must Sacrifice##28242 |goto 57.9,33.5
		accept The Eyes Have It##28243 |goto 57.9,33.5
	step
		talk Nivvet Channelock##48014
		turnin Potential Energy##28215 |goto 49.1,29.4
	step
		talk Low Shaman Blundy##48010
		turnin The Eyes Have It##28243 |goto 49.7,29.2
		accept Eye Spy##28244 |goto 49.7,29.2
	step
		click Eye of Twilight##7011
		Watch the cutscene
		Peered into the Eye |q 28244/1 |goto 49.8,29.1
	step
		talk Low Shaman Blundy##48010
		turnin Eye Spy##28244 |goto 49.7,29.2
	stickystart "temperedspear"
	step
		kill Magmalord Falthazar##48015
		collect Magmalord Falthazar's Head |q 28216/1 |goto 42.5,23.5
	step "temperedspear"
		kill Unbound Emberfiend##48016+
		collect 5 Molten Fury |q 28212/1 |goto 42.2,24.3
		click Tempered Spear##8490
		collect 8 Tempered Spear |q 28211/1 |goto 42.2,24.3
	step
		talk Colin Thundermar##46591
		turnin Magmalord Falthazar##28216 |goto 49.0,29.7
	step
		talk Nivvet Channelock##48014
		turnin Tempered in Elemental Flame##28211 |goto 49.1,29.4
		turnin Hot Stuff##28212 |goto 49.1,29.4
		accept Tear Them From the Sky!##28280 |goto 49.1,29.4
	step
		Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes |use Shoulder-Mounted Drake-Dropper##63393 
		|tip They are flying in the sky around this area.
		kill 8 Dragonmaw Black Drake##48197+ |q 28280/1 |goto 49.2,29.8
	step
		talk Nivvet Channelock##48174
		turnin Tear Them From the Sky!##28280 |goto 49.1,29.4
	step
		talk Colin Thundermar##48173
		accept Last Stand at Thundermar##28281 |goto 49.0,29.7
	step
		kill 8 Dragonmaw Skyclaw##48194 |q 28281/1 |goto 48.1,30.0
	step
		talk Colin Thundermar##48173
		turnin Last Stand at Thundermar##28281 |goto 49.0,29.7
		accept Narkrall, The Drake-Tamer##28282 |goto 49.0,29.7
	step
		talk Colin Thundermar##48173
		Tell him you're ready to fight him!
		kill Narkrall Rakeclaw##48257 |q 28282/1 |goto 49.0,29.7
	step
		talk Colin Thundermar##48173
		turnin Narkrall, The Drake-Tamer##28282 |goto 49.0,29.7
		accept The Kirthaven Summit##28294 |goto 49.0,29.7
	step
		talk Vaughn Blusterbeard##49574
		home Kirthaven |q 28346 |future |goto 54.6,18.0
	step
		talk Lachlan MacGraff##48367
		turnin The Kirthaven Summit##28294 |goto 54.3,16.7
	step
		talk Kurdran Wildhammer##48365
		accept The Bachelor##28346 |goto 54.9,17.2
	step
		talk Keegan Firebeard##48364
		turnin The Bachelor##28346 |goto 54.4,16.8
		accept Rescue at Glopgut's Hollow##28377 |goto 54.4,16.8
	step
		talk Colin Thundermar##48472
		turnin Rescue at Glopgut's Hollow##28377 |goto 38.1,34.5
		accept Find Fanny##28378 |goto 38.1,34.5
		accept Ogre Bashin'##28379 |goto 38.1,34.5
	step
		Enter the cave |goto 37.6,33.4 < 10 |walk
		Go to this spot inside the cave
		Rescue Fanny Thundermar |q 28378/1 |goto 35.0,31.1
		|modelnpc 48530
	step
		Leave the cave |goto 37.6,33.4 < 10 |walk
		kill Glopgut Pounder##48474+, Glopgut Hurler##48475+, Glopgut Basher##48498+
		Slay 10 Glopgut Ogres |q 28379/1 |goto 38.7,30.9
	step
		talk Colin Thundermar##48472
		turnin Find Fanny##28378 |goto 38.1,34.5
		turnin Ogre Bashin'##28379 |goto 38.1,34.5
		accept The Bachelorette##28407 |goto 38.1,34.5
	step
		talk Fanny Thundermar##48530
		turnin The Bachelorette##28407 |goto 54.7,17.9
	step
		talk Russell Brower##48366
		accept Words and Music By...##28413 |goto 54.6,17.5
	step
		talk Russell Brower##48366
		Tell him you're ready, let's write a song
		Create a song |q 28413/1 |goto 54.6,17.5
	step
		talk Russell Brower##48366
		turnin Words and Music By...##28413 |goto 54.6,17.5
	step
		talk Lachlan MacGraff##48367
		accept Something Bold##28408 |goto 54.3,16.7
		accept Something Brewed##28409 |goto 54.3,16.7
		accept Something Stolen##28410 |goto 54.3,16.7
		accept Something Stewed##28411 |goto 54.3,16.7
	stickystart "tawnyowl"
	step
		kill Highland Elk##46970+, Highland Doe##46971+
		collect 8 Fresh Venison |q 28411/1 |goto 53.4,24.5
		kill Highland Worg##46153+
		collect 5 Worg Rib |q 28411/2 |goto 53.4,24.5
		You can find more all around |goto 57.4,10.7
	step "tawnyowl"
		kill Tawny Owl##46162+
		click Pristine Owl Feather##3651+
		collect 12 Pristine Owl Feather |q 28408/1 |goto 56.8,21.9
		You can find more owls |goto Twilight Highlands,62.4,23
	step
		talk Hammelhand##48758
		Tell him you're here to escort a delivery to Kirthaven
		Follow the dwarves
		kill Dragonmaw Skirmisher##48799+
		Escort the Supply Caravan |q 28409/1 |goto 64.4,22.6
	step
		Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
		Fly to the zeppelin and land on it
		|tip The zepplins have a few Horde mobs on it, which will turn you PvP if you get hit by or attack them.
		Go downstairs on the zeppelin
		click Crate of Fine Cloth##9105+
		collect Fine Dark Cloth |q 28410/1 |goto 75.1,33.8
	step
		talk Lachlan MacGraff##48367
		turnin Something Bold##28408 |goto 54.3,16.7
		turnin Something Brewed##28409 |goto 54.3,16.7
		turnin Something Stolen##28410 |goto 54.3,16.7
		turnin Something Stewed##28411 |goto 54.3,16.7
	step
		talk Grundy MacGraff##48368
		accept Wild, Wild, Wildhammer Wedding##28655 |goto 54.3,16.8
	step
		talk Grundy MacGraff##48368
		Tell him to let the wedding commence!
		Watch the cutscene
		kill The Beast Unleashed##49234
		Complete the Nuptials |q 28655/1 |goto 54.3,16.8
	step
		talk Kurdran Wildhammer##49358
		turnin Wild, Wild, Wildhammer Wedding##28655 |goto 55.3,17.3
	step
		talk Lachlan MacGraff##49374
		accept The Maw of Madness##27374 |goto 55.2,17.3 |or
		|tip You could skip this breadcrumb quest. |or |condition completedq(27299)
	step
		talk Earthcaller Torunscar##43901
		turnin The Maw of Madness##27374 |goto 44.0,10.6
		accept Torn Ground##27299 |goto 44.0,10.6
	step
		kill 3 Tentacle of Iso'rath##45394 |q 27299/1 |goto 41.8,11.4
	step
		talk Earthcaller Torunscar##45332
		turnin Torn Ground##27299 |goto 44.0,10.6
		accept Pushing Back##27300 |goto 44.0,10.6
	step
		talk Earthmender Duarn##45391
		accept Unbroken##27301 |goto 44.0,11.3
	step
		talk Initiate Goldmine##45432
		accept Simple Solutions##27302 |goto 44.4,11.6
	step
		talk Earthcaller Yevaa##45362
		turnin Unbroken##27301 |goto 44.2,18.1
		accept Mercy for the Bound##27303 |goto 44.2,18.1
	stickystart "Drakgorcultist"
	stickystart "Fleshburner"
	stickystart "Pyreburnoil"
	step "Drakgorcultist"
		kill Twilight Captivator##45359+, Twilight Bonebreaker##45334+
		kill 12 Drakgor cultists |q 27300/1 |goto 42.3,17.2
	step "Fleshburner"
		kill Bound Fleshburner##45358+
		collect 5 Fleshburner Heart |q 27303/1 |goto 42.3,17.2
	step "Pyreburnoil"
		click Barrel of Pyreburn Oil##457+
		collect 10 Pyreburn Oil |q 27302/1 |goto 42.3,17.2
	step
		talk Initiate Goldmine##45432
		turnin Simple Solutions##27302 |goto 44.4,11.6
	step
		talk Earthcaller Yevaa##45386
		turnin Mercy for the Bound##27303 |goto 43.8,11.3
	step
		talk Earthcaller Torunscar##45332
		turnin Pushing Back##27300 |goto 44.0,10.6
		accept The Maw of Iso'rath##27376 |goto 44.0,10.6
	step
		clicknpc Earthen Ring Gryphon##50473
		Join the assault on Iso'rath |q 27376/1 |goto 44.5,10.6
	step
		talk Earthcaller Yevaa##47991
		turnin The Maw of Iso'rath##27376 |goto 48.4,14.6
		accept Devoured##27377 |goto 48.4,14.6
	step
		Let the oozes kill you.
		Survive Iso'rath's defenses |q 27377/1
		talk Thrall##48051
		turnin Devoured##27377
		accept The Worldbreaker##27378
	step
		Deathwing will attack you and Thrall
		Aid Thrall in battling Deathwing |q 27378/1
		Click the Quest Complete box that pops up
		turnin The Worldbreaker##27378
		accept The Terrors of Iso'rath##27379
	step
		Stand in the yellow bubbles on the ground around this area to heal 
		|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		kill Tentacle of Iso'rath##48790
		|tip If you are ranged, attack the tentacles from inside the bubble
		Save Stormcaller Jalara |q 27379/2 |goto 49.6,15.8
		|modelnpc 48789
	step
		Stand in the yellow bubbles on the ground around this area to heal 
		|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		kill Tentacle of Iso'rath##48790
		Save Earthmender Duarn |q 27379/3 |goto 49.1,13.1
		|modelnpc 48793
	step
		Stand in the yellow bubbles on the ground around this area to heal 
		|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		kill Tentacle of Iso'rath##48790
		Save Hargoth Dimblaze |q 27379/1 |goto 47.0,13.1
		|modelnpc 48743
	step
		Stand in the yellow bubbles on the ground around this area to heal 
		|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		kill Tentacle of Iso'rath##48790
		Save Stormcaller Mylra |q 27379/4 |goto 47.5,15.6
		|modelnpc 50469
	step
		talk Earthcaller Yevaa##48059
		turnin The Terrors of Iso'rath##27379 |goto 48.7,16.6
		accept Nightmare##27380 |goto 48.7,16.6
	step
		Stand in the yellow bubbles on the ground around this area to heal 
		|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
		kill Brain of Iso'rath##47960
		Kill Iso'rath |q 27380/1 |goto 48.8,14.9
	step
		talk Earthcaller Torunscar##45332
		turnin Nightmare##27380 |goto 44.0,10.6
	step
		talk Lauriel Trueblade##48265
		accept Warm Welcome##27485 |goto 44.1,10.5
	step
		You will get captured by a red dragon
		Meet with Lirastrasza |q 27485/1 |goto 27.6,21.4
		|modelnpc 49417
	step
		talk Calen##45528
		turnin Warm Welcome##27485 |goto 29.3,25.9
		accept Even Dragons Bleed##27504 |goto 29.3,25.9
	step
		talk Velastrasza##45522
		turnin Even Dragons Bleed##27504 |goto 29.9,31.3
		accept Draconic Mending##27505 |goto 29.9,31.3
	step
		talk Baleflame##45562
		accept Life from Death##27506 |goto 29.8,31.4
	stickystart "Twilightwyrmkiller"
	stickystart "Vermillionmender"
	step "Twilightwyrmkiller"
		kill Twilight Wyrmkiller##45748+
		Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
		Reclaim 6 Dragonkin corpses |q 27506/1 |goto 29.7,33.1
		|modelnpc 45746
	step "Vermillionmender"
		Protect the Vermillion Menders while they heal Celastrasza to full health
		|tip You can speed this up by healing Celastrasza yourself
		Defend 5 Vermillion Menders |q 27505/1 |goto 29.7,33.1
		|modelnpc 45746
	step
		talk Velastrasza##45522
		turnin Draconic Mending##27505 |goto 29.9,31.3
	step
		talk Baleflame##45562
		turnin Life from Death##27506 |goto 29.8,31.4
	step
		talk Velastrasza##45522
		accept In Defense of the Redoubt##27564 |goto 29.9,31.3
	step
		talk Calen##45528
		turnin In Defense of the Redoubt##27564 |goto 29.3,25.9
		accept Encroaching Twilight##27507 |goto 29.3,25.9
		accept Breach in the Defenses##27509 |goto 29.3,25.9
	step
		talk Lirastrasza##45518
		accept Far from the Nest##27508 |goto 29.3,26.0
	step
		talk Aquinastrasz##47121
		fpath Vermillion Redoubt |goto 28.5,24.8
	step
		Enter the cave |goto 18.4,16.7 < 10 |walk
		Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385 
		|tip It looks like a blue and pink swirled portal in a metal case.
		Destroy the Twilight Portal |q 27509/1 |goto 18.0,16.9
	stickystart "Twilightinvader"
	stickystart "Vermillionegg"
	step "Twilightinvader"
		kill Twilight Abductor##45648+, Twilight Flamequencher##45618+
		kill 12 Twilight invaders |q 27507/1 |goto 20.9,15.7
	step "Vermillionegg"
		clicknpc Vermillion Egg##45682
		collect 6 Vermillion Egg |q 27508/1 |goto 20.9,15.7
	step
		talk Calen##45528
		turnin Encroaching Twilight##27507 |goto 29.3,26.0
		turnin Breach in the Defenses##27509 |goto 29.3,26.0
	step
		talk Lirastrasza##45518
		turnin Far from the Nest##27508 |goto 29.3,26.0
	step
		talk Calen##45528
		accept Mathias' Command##28101 |goto 29.3,26.0
	step
		talk Master Mathias Shaw##47592
		turnin Mathias' Command##28101 |goto 26.0,38.8
		accept Easy Pickings##28103 |goto 26.0,38.8
		accept Precious Goods##28104 |goto 26.0,38.8
	step
		kill Twilight Spearwarder##47490+
		collect Twilight Caravan Cargo Key |q 28104/1 |goto 25.6,37.9
		click Twilight Caravan Chest##10106+
		collect Twilight's Hammer Gatestone |q 28104/2 |goto 25.6,37.9
		kill 8 Twilight Spearwarder |q 28103/1 |goto 25.6,37.9
	step
		talk Master Mathias Shaw##47592
		turnin Easy Pickings##28103 |goto 26.0,38.8
		turnin Precious Goods##28104 |goto 26.0,38.8
		accept If The Key Fits##28108 |goto 26.0,38.8
	step
		Next to you:
		talk Master Mathias Shaw##47611
		accept Paving the Way##28107
	step
		Open the Dragonmaw Gate |q 28108/1 |goto 29.5,51.7
		If you lost your squad, return to Master Mathias at [Twilight Highlands,26.0,38.8] to retrieve them
	step
		Next to you:
		talk Master Mathias Shaw##47611
		turnin If The Key Fits##28108
		accept Pressing Forward##28109
	step
		kill Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
		Kill 30 Wyrm's Bend Cultists |q 28107/1 |goto 27.5,54.6
	step
		Next to you:
		talk Master Mathias Shaw##47611
		turnin Paving the Way##28107
	step
		Go to this spot
		Secure the Entrance to Grim Batol |q 28109/1 |goto 22.8,56.1
	step
		talk Calen##47605
		turnin Pressing Forward##28109 |goto 22.1,56.6
	step
		talk Alexstrasza the Life-Binder##47603
		accept Enter the Dragon Queen##28712 |goto 21.8,57.0
	step
		talk Lirastrasza##49417
		turnin Enter the Dragon Queen##28712 |goto 14.9,16.3
	step
		talk Calen##49810
		accept Battle of Life and Death##28758 |goto 14.1,15.4
	step
		clicknpc Vermillion Vanguard##49910
		Use the abilities on your hotbar on Twilight Shadowdrakes
		kill 8 Twilight Shadowdrake##49873 |q 28758/1 |goto 14.1,15.1
	step
		talk Calen##47605
		turnin Battle of Life and Death##28758 |goto 22.1,56.6
		accept And the Sky Streaked Red##28171 |goto 22.1,56.6
	step
		talk Lirastrasza##47902
		turnin And the Sky Streaked Red##28171 |goto 59.1,69.8
		accept A Fitting End##28191 |goto 59.1,69.8
		accept Blackout##28173 |goto 59.1,69.8
	step
		talk Velastrasza##47904
		accept Shining Through the Dark##28175 |goto 59.0,69.8
	stickystart "obsidianpyrewing"
	step
		Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
		Plant Alexstrasza's Tear |q 28175/1 |goto 63.9,78.0
	step "obsidianpyrewing"
		kill Obsidian Viletongue##47796+, Obsidian Charscale##47797+
		kill 10 Obsidian Dragonkin |q 28191/1 |goto 62.7,76.2
		Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 
		|tip You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
		kill 8 Obsidian Pyrewing##46141 |q 28173/1 |goto 62.7,76.2
	step
		talk Lirastrasza##47902
		turnin A Fitting End##28191 |goto 59.1,69.8
		turnin Blackout##28173 |goto 59.1,69.8
	step
		talk Velastrasza##47904
		turnin Shining Through the Dark##28175 |goto 59.0,69.8
	step
		talk Lirastrasza##47902
		accept Following the Young Home##28176 |goto 59.1,69.8
	step
		Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
		Hatch the Obsidian Whelps |q 28176/1 |goto 59.3,82.5
	step
		Enter the cave |goto 55.4,83.5 < 10 |walk
		Infiltrate the Obsidian Lair |q 28176/2 |goto 49.8,85.8 |indoors Obsidian Lair
	step
		talk Baleflame##47905 |indoors Obsidian Lair
		turnin Following the Young Home##28176 |indoors Obsidian Lair
		accept Last of Her Kind##28247 |indoors Obsidian Lair
		kill Obsidia##47929 |indoors Obsidian Lair
		Defeat Obsidia |q 28247/1 |indoors Obsidian Lair |goto 44.9,91.0
	step
		Leave the cave |goto 55.4,83.5 < 10 |walk
		talk Lirastrasza##47902
		turnin Last of Her Kind##28247 |goto 59.1,69.8
		accept Victors' Point##28248 |goto 59.1,69.8
	step
		talk Kurdran Wildhammer##45668
		turnin Victors' Point##28248 |goto 43.4,57.4
		accept Ogres & Ettins##27492 |goto 43.4,57.4
	step
		talk Cassius the White##45669
		accept Call in the Artillery##27496 |goto 43.4,57.3
		accept SI:7 Drop##27490 |goto 43.4,57.3
	step
		talk Ben Mora##49599
		home Victor's Point |q 27492 |future |goto 43.6,57.2
	step
		talk Desmond Chadsworth##47118
		fpath Victor's Point |goto 43.9,57.3
	step
		talk Angus Stillmountain##45904
		Tell him you're here to lead the Wildhammer squad and drop off the SI:7 agents
		Get your Wildhammer Squad |q 27490/1 |goto 43.8,57.2
	stickystart "bloodeyeclan"
	step
		Go to this spot and land on the flashing blue X on the ground
		Drop off the SI:7 |q 27490/2 |goto 39.2,64.5
	step
		Use your Artillery Flare |use Artillery Flare##61363
		Target the Northern Building |q 27496/1 |goto 38.8,64.3
	step
		Use your Artillery Flare |use Artillery Flare##61363
		Target the Northeastern Building |q 27496/2 |goto 40.0,64.4
	step
		Use your Artillery Flare |use Artillery Flare##61363
		Target the Southwestern Building |q 27496/3 |goto 40.4,69.2
	step
		Use your Artillery Flare |use Artillery Flare##61363
		Target the Southern Building |q 27496/4 |goto 41.4,71.2
	step "bloodeyeclan"
		kill Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
		kill 10 Bloodeye Clan Ogres & Ettins |q 27492/1 |goto 41.1,69.8
	step
		talk Cassius the White##45669
		turnin Call in the Artillery##27496 |goto 43.4,57.3
		turnin SI:7 Drop##27490 |goto 43.4,57.3
	step
		talk Kurdran Wildhammer##45668
		turnin Ogres & Ettins##27492 |goto 43.4,57.4
		accept Move the Mountain##27494 |goto 43.4,57.4
	step
		click Hidden Explosives##9393
		Detonate the Hidden Explosives |q 27494/1 |goto 38.1,66.2
		Click the Quest Complete box that pops up
		turnin Move the Mountain##27494
		accept Signal the Attack##27498
	step
		Use your Attack Signal at the top of this tower |use Attack Signal##61511
		Signal the Attack |q 27498/1 |goto 40.5,62.3
		Click the Quest Complete box that pops up
		turnin Signal the Attack##27498
		accept Four Heads are Better than None##27500
	step
		Enter the cave |goto 39.8,71.3 < 10
		kill Za'brox##46017 |indoors Den of the Disciples
		collect Za's Head |q 27500/1 |goto 37.6,71.3 |indoors Den of the Disciples
		collect Brox's Head |q 27500/4 |goto 37.6,71.3 |indoors Den of the Disciples
	step
		kill Beeble'phod##46018 |indoors Den of the Disciples
		collect Phod's Head |q 27500/2 |goto 38.7,70.2 |indoors Den of the Disciples
		collect Beeble's Head |q 27500/3 |goto 38.7,70.2 |indoors Den of the Disciples
	step
		talk Cassius the White##45669
		turnin Four Heads are Better than None##27500 |goto 43.4,57.3
		accept Up to the Citadel##27502 |goto 43.4,57.3
	step
		talk SI:7 Squad Commander##46076
		Tell him you're ready
		Speak to the Squad commander |q 27502/1 |goto 38.9,64.0
	step
		Follow the SI:7 Squad Commander and the SI:7 Agents up the path
		Escort the SI:7 |q 27502/2
		Click the Quest Complete box that pops up
		turnin Up to the Citadel##27502
		accept Just You and Mathias##27636
	step
		talk Master Mathias Shaw##45796
		|tip He is stealthed at the bottom of this tower
		turnin Just You and Mathias##27636 |goto 36.4,66.0
		accept Dark Assassins##27652 |goto 36.4,66.0
		accept Bring the Hammer Down##27654 |goto 36.4,66.0
		accept Help from the Earthcaller##27657 |goto 36.4,66.0
	step
		talk Earthcaller Yevaa##46242
		turnin Help from the Earthcaller##27657 |goto 37.5,88.7
		accept Portal Overload##27659 |goto 37.5,88.7
		accept Spirit of the Loch##27660 |goto 37.5,88.7
	step
		talk Initiate Goldmine##46243
		accept Unbinding##27662 |goto 37.6,88.7
	step
		click the Air Portal Controller##9849 
		|tip It is high in the sky.
		kill Debilitated Aetharon##46270 |q 27659/2 |goto 44.1,81.4
	step
		click Earth Portal Controller##9849
		|tip It is on the ground
		kill Debilitated Apexar##46273 |q 27659/1 |goto 38.0,80.2
	step
		click Water Portal Controller##9849
		kill Debilitated Edemantus##46272 |q 27659/3 |goto 33.2,62.4
	step
		talk Countess Verrall##46413
		turnin Spirit of the Loch##27660 |goto 27.6,63.9
		accept Fire the Cannon##27661 |goto 27.6,63.9
	stickystart "Twilightcitadel"
	stickystart "Darkassassin"
	stickystart "Enslavedelementals"
	step "Twilightcitadel"
		kill Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
		kill 10 Twilight Citadel cultists |q 27654/1 |goto 35.2,67.4
	step "Darkassassin"
		kill Dark Assassin##46202+
		collect 5 Dark Assassin's Pendant |q 27652/1 |goto 35.2,67.4
	step "Enslavedelementals"
		kill Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
		Free 10 Enslaved Elementals |q 27662/1 |goto 35.2,67.4
	step 
		kill Lord Cannon##46785 |q 27661/1 |goto 40.8,79.0
	step
		talk Initiate Goldmine##46243
		turnin Unbinding##27662 |goto 37.6,88.7
	step
		talk Earthcaller Yevaa##46242
		turnin Portal Overload##27659 |goto 37.5,88.7
	step
		talk Master Mathias Shaw##45796
		turnin Dark Assassins##27652 |goto 36.4,66.0
		turnin Bring the Hammer Down##27654 |goto 36.4,66.0
		accept Distract Them for Me##27688 |goto 36.4,66.0
		accept The Elementium Axe##27695 |goto 36.4,66.0
	step
		talk Countess Verrall##46413
		turnin Fire the Cannon##27661 |goto 27.6,63.9
		accept Water of Life##27719 |goto 27.6,63.9
	step
		Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 
		|tip He's chained to an anchor, drowned underwater.
		Extract Artifact Information |q 27719/1 |goto 35.1,61.1
		|modelnpc Corpse of Forgemaster Finlay##46819+
	step
		talk Master Mathias Shaw##45796
		turnin Water of Life##27719 |goto 36.4,66.0
	step
		kill Master Klem##46342 |q 27688/2 |goto 36.1,70.7
		|tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
	step
		kill Blindeye the Guardian##46399
		collect The Elementium Axe |q 27695/1 |goto 40.2,84.0
	step
		kill Mia the Rose##46343 |q 27688/3 |goto 42.3,83.5
		|tip She's in a small room at the top of this big building.  Mathias Shaw will come and kill her for you after you've fought her for a little bit.
	step
		kill Dame Alys Finnsson##46341 |q 27688/1 |goto 43.4,88.5
		|tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
	step
		talk Master Mathias Shaw##45796
		turnin Distract Them for Me##27688 |goto 36.4,66.0
		turnin The Elementium Axe##27695 |goto 36.4,66.0
		accept Dragon, Unchained##27700 |goto 36.4,66.0
	step
		Use The Elementium Axe |use The Elementium Axe##62248
		Free Lirastrasza |q 27700/1 |goto 32.4,68.7
		|modelnpc 46456
	step
		talk Master Mathias Shaw##45796
		turnin Dragon, Unchained##27700 |goto 36.4,66.0
		accept Coup de Grace##27702 |goto 36.4,66.0
	step
		kill Twilight Skyterror##46416+ 
		|tip They are all over this area so you may need to search.
		|tip They are laying on the ground with 1 health
		Deliver 5 Coup de Graces |q 27702/1 |goto 37.5,75.4
	step
		talk Master Mathias Shaw##45796
		turnin Coup de Grace##27702 |goto 36.4,66.0
		accept Back to the Elementium Depths##27711 |goto 36.4,66.0
	step
		talk Initiate Goldmine##46243
		turnin Back to the Elementium Depths##27711 |goto 37.5,88.7
		accept Mr. Goldmine's Wild Ride##27720 |goto 37.5,88.7
	step
		talk Initiate Goldmine##46243
		Tell him you're ready for that wild ride
		Ride the Mine Cart to the End of the Line |q 27720/2 |goto 37.5,88.7
	step
		Next to you:
		talk Initiate Goldmine##46513
		turnin Mr. Goldmine's Wild Ride##27720
		accept A Little on the Side##27742
		accept While We're Here##27743
	step
		click Twilight Rune of Earth##465
		accept Rune Ruination##27744 |goto 37.4,93.2
	stickystart "twilightminer"
	step
		click Twilight Rune of Water##465
		Destroy the Rune of Water |q 27744/2 |goto 35.2,90.4
	step
		click Twilight Rune of Air##465
		Destroy the Rune of Air |q 27744/3 |goto 33.5,88.4
	step
		click Twilight Rune of Fire##465
		Destroy the Rune of Fire |q 27744/4 |goto 34.3,86.6
	step "twilightminer"
		kill Twilight Miner##46610+, Depths Overseer##46579+
		kill 12 Elementium Depths cultists |q 27743/1 |goto 34.5,86.3
		click Elementium Shard##10035+
		collect 6 Elementium Shard |q 27742/1 |goto 34.5,86.3
	step
		Next to you:
		talk Initiate Goldmine##46513
		turnin A Little on the Side##27742
		turnin While We're Here##27743
		turnin Rune Ruination##27744
		accept A Fiery Reunion##27745
	step
		kill Magmatooth##46611
		collect Fire Portal Controller |q 27745/2 |goto 36.4,83.8
	step
		Use your Fire Portal Controller |use Fire Portal Controller##62394
		Use the Fire Portal Controller at the Fire Portal |q 27745/1 |goto 36.4,83.8
	step
		talk Initiate Goldmine##46243
		turnin A Fiery Reunion##27745 |goto 37.5,88.7
		accept Mathias Needs You##27782 |goto 37.5,88.7
	step
		talk Master Mathias Shaw##45796
		turnin Mathias Needs You##27782 |goto 36.4,66.0
		accept The Hammer of Twilight##27784 |goto 36.4,66.0
	step
		clicknpc The Hammer of Twilight##46717
		turnin The Hammer of Twilight##27784 |goto 45.4,88.0
		accept Skullcrusher the Mountain##27787 |goto 45.4,88.0
		Watch the cutscene
		Survive Skullcrusher's Backhand |q 27787/1 |goto 45.4,88.0
	step
		kill Skullcrusher the Mountain##46732 |q 27787/2 |goto 45.4,87.9
		|tip Follow the instructions that pop up on your screen.
	step
		talk Kurdran Wildhammer##45668
		turnin Skullcrusher the Mountain##27787 |goto 43.4,57.4
]])