local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-------------------------
----- Timeless Isle -----
-------------------------

ZygorGuidesViewer:RegisterInclude("timeless_isle_prequests",[[
	step
		Click the _Quest Accept_ Box:
		accept A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 61.7,20.4
	step
		talk Chromie##73691
		|tip On the upper balcony of the palace.
		turnin A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 80.7,33.1
		accept Journey to the Timeless Isle##33232 |goto Vale of Eternal Blossoms 80.7,33.1
	step
		use Curious Bronze Timepiece##104110
		You will be teleported to the Timeless Isle |goto Timeless Isle 21.3,39.5 |noway |c
	step
		talk Chi-Ro the Skytamer##71939
		fpath Huojin Landing |goto Timeless Isle/0 21.9,39.8
	step
		talk Watcher Alundra##73353
		turnin Journey to the Timeless Isle##33232 |goto Timeless Isle/0 22.0,41.0
		accept Time Keeper Kairoz##33156 |goto Timeless Isle/0 22.0,41.0
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
		Follow the path to activate one of the Shrines.
		map Timeless Isle
		path	30.1,45.7	26.8,52.2	30.5,62.6
		path	27.9,72.0	37.4,74.4	49.7,70.4
		path	66.1,72.3	63.9,50.7	35.0,29.6
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
		Find the Hidden Treasure |q 33333/1 |goto Timeless Isle 46.8,46.8
	step
		talk Kairoz##72870
		turnin Timeless Treasures##33333 |goto Timeless Isle 34.6,53.8
]])

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