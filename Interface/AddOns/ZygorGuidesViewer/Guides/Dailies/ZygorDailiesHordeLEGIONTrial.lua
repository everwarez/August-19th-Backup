local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Legion\\World Quests",{
author="support@zygorguides.com",
startlevel=110.0,
},[[
step
label "Choose_World_Quest"
|tip You will need to have already unlocked World Quests to use this trial.
|tip The full version of this guide includes a walkthrough on how to unlock world quests.
|tip You will only be able to accept quests in Aszuna for this trial.
|tip
Choose a World Quest to Complete |confirm
|tip With the "World Quests" guide loaded, open your world map.
|tip Left-click on a world quest icon to select that world quest.
|tip The guide will automatically load the steps for that world quest.
|tip Left-click on Broken Shore rares to load some helpful tips.
step
label quest-42119
Follow the path |goto Azsuna/0 43.63,42.29 < 30 |only if walking
Follow the path |goto 40.73,37.54 < 30 |only if walking
accept A Cleansing Cocktail##42119 |goto 43.34,33.99
|tip You will accept this quest automatically.
stickystart "Cliffwing_Hippogryph_Eggs"
step
kill Llothien Grizzly##90134+
collect 5 Fat Bear Liver##136859 |q 42119/2 |goto 43.34,33.99
step
label "Cliffwing_Hippogryph_Eggs"
click Cliffwing Hippogryph Eggs
|tip They look like dark blue eggs in and nearby hippogryph nests on the ground around this area.
collect 7 Cliffwing Hippogryph Egg##136860 |q 42119/1 |goto 43.34,33.99
|next "Court_Of_Farondis_WQ"
step
label quest-42024
Follow the path |goto Azsuna/0 53.69,58.89 < 30 |only if walking
Follow the path |goto 51.95,61.48 < 30 |only if walking
accept A Friend of My Enemy##42024 |goto 48.98,60.26
|tip You will accept this quest automatically.
stickystart "Cove Skrog"
step
kill Prince Oceanus##89101 |q 42024/1 |goto Azsuna/0 53.43,63.82
step
Follow the path down |goto 52.84,63.02 < 30 |only if walking
Follow the path |goto 50.45,61.83 < 30 |only if walking
Follow the path |goto 47.99,61.09 < 30 |only if walking
kill Flog the Captain-Eater##89884 |q 42024/2 |goto Azsuna/0 45.18,57.78
step
label "Cove Skrog"
kill 6 Cove Skrog##89097 |q 42024/3
|next "Court_Of_Farondis_WQ"
step
label quest-43803
Follow the path |goto Eye of Azshara Map/0 42.13,45.22 < 30 |only if walking
Follow the path |goto 47.08,45.46 < 30 |only if walking
Enter the cave |goto 59.61,39.34 < 20 |only if walking
Follow the path |goto 63.61,40.60 < 20 |only if walking
Follow the path |goto 66.98,41.61 < 20 |only if walking
accept A Giant Murloc Problem##43803 |goto 69.22,44.79
|tip You will accept this quest automatically.
stickystart "Saltscale"
step
kill Skrog Wavecrasher##111646 |q 43803/1 |goto 61.45,50.57
step
label "Saltscale"
kill Saltscale Lurker##111645 |q 43803/2 |goto 69.22,44.79
step
label quest-42014
accept A Tainted Vintage##42014 |goto Azsuna/0 40.83,9.11
|tip You will accept this quest automatically.
stickystart "Smash_Arcane-aged_Wine_A_Tainted_Vintage"
stickystart "Burn_Haunted_Vines_A_Tainted_Vintage"
step
Follow the path up |goto 41.25,10.35 < 20 |only if walking
Follow the path |goto 42.32,10.32 < 20 |only if walking
kill Grand Vintner Valiana##90547 |q 42014/2 |goto 42.93,8.55
|tip Inside the building.
step
Follow the path up |goto 44.19,9.35 < 20 |only if walking
Follow the path up |goto 45.05,11.71 < 15 |only if walking
kill Vintner Liastrin##90537 |q 42014/1 |goto 45.55,12.84
|tip She floats around inside the building.
step
label "Smash_Arcane-aged_Wine_A_Tainted_Vintage"
click Arcane-aged Wine
|tip They look like wooden barrels on the ground around this area.
Smash #3# Barrels of Arcane-aged Wine |q 42014/3 |goto 46.26,11.75
step
label "Burn_Haunted_Vines_A_Tainted_Vintage"
click Haunted Vines
|tip They look blue glowing wooden planks sticking vertically into the ground around this area.
Burn #6# Haunted Vines |q 42014/4 |goto 46.26,11.75
|next "Court_Of_Farondis_WQ"
step
label quest-44784
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto 53.77,40.31
accept Advanced Wanding##44784 |goto Azsuna/17 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto Azsuna/17 58.11,68.23
Go through the Academy Door |goto Azsuna/17 50.40,50.09
Use your extra action ability on the Wand Targets
Hit 6 Wand Targets |q 44784/1 |goto Azsuna/17 33.62,42.69
|next "Court_Of_Farondis_WQ"
step
label quest-41545
accept Aethril Cluster##41545 |goto Azsuna/0 40.03,9.73
|tip You will accept this quest automatically.
step
kill Lost Gatherer##109070
click Aethril Cluster##0
Aethril Cluster gathered |q 41545/1 |goto 40.03,9.73
|next "Court_Of_Farondis_WQ"
step
label quest-41286
Follow the path |goto Azsuna/0 63.36,30.21 < 20 |only if walking
Follow the path |goto 62.93,34.47 < 25 |only if walking
Follow the path |goto 62.53,36.10 < 25 |only if walking
Follow the path |goto 61.32,39.14 < 25 |only if walking
accept Aethril Cluster##41286 |goto Azsuna/0 61.54,41.80
|tip You will accept this quest automatically.
step
kill Lost Gatherer##109070
click Aethril Cluster##0
Aethril Cluster gathered |q 41286/1 |goto 61.54,41.80
|next "Court_Of_Farondis_WQ"
step
label quest-42652
Cross the bridge |goto Azsuna/0 56.49,62.07 < 30 |only if walking
Follow the path up |goto 55.77,65.84 < 30 |only if walking
accept Ancient Exemplars##42652 |goto 55.51,70.67
|tip You will accept this quest automatically.
stickystart "Ancient_Familiars"
step
Kill Timeless enemies around this area
Slay #5# Timeless Mages |q 42652/1 |goto 55.51,70.67
step
label "Ancient_Familiars"
Kill Familiar enemies around this area
Slay #6# Ancient Familiars |q 42652/2 |goto 55.51,70.67
|next "Court_Of_Farondis_WQ"
step
label quest-43805
accept Aquatic Assassination##43805 |goto Eye of Azshara Map/0 38.25,45.91
|tip You will accept this quest automatically.
stickystart "Shellback turtles"
step
kill Hatecoil Oracle##111636+, Hatecoil Warrior##111637, Hatecoil Wrangler##111635
Slay 6 Hatecoil Naga |q 43805/1 |goto Eye of Azshara Map/0 50.51,68.58
step
label "Shellback turtles"
kill 6 Wandering Shellback##111633 |q 43805/2 |goto Eye of Azshara Map/0 52.18,63.34
|next "Court_Of_Farondis_WQ"
step
label quest-41290
Follow the path |goto Azsuna/0 50.27,30.51 < 30 |only if walking
Follow the path |goto 52.80,33.91 < 30 |only if walking
accept Aqueous Aethril##41290 |goto 54.44,36.27
|tip You will accept this quest automatically.
step
click Aqueous Aethril##195114
collect 12 Aqueous Aethril##135480 |q 41290/1 |goto 54.44,36.27
|next "Court_Of_Farondis_WQ"
step
label quest-42165
accept Azsuna Specimens##42165 |goto Azsuna/0 34.02,45.19
|tip You will accept this quest automatically.
step
Follow the path |goto 32.97,46.17 < 20 |only if walking
click Felspider##97323
Defeat or Capture a Felspider |q 42165/1 |goto 34.02,45.19
|tip You may have to search a large area around here to find one.
|next "Court_Of_Farondis_WQ"
step
label quest-45069
Follow the path |goto Azsuna/0 45.25,43.77 < 25 |only if walking
Follow the path |goto 46.24,44.66 < 25 |only if walking
Follow the path |goto 46.28,51.43 < 25 |only if walking
accept Barrels o' Fun##45069 |goto 47.03,53.56
|tip You will accept this quest automatically.
step
click Barrel##0
Game Completed |q 45069/1 |goto 46.97,53.80
|tip Use the special action button on your screen to begin the game.
|tip Watch the barrel that lights up yellow closely. You will need to select it when the barrels stop moving.
|tip More barrels will spawn, making the game more complex.
|next "Court_Of_Farondis_WQ"
step
label quest-45203
Follow the path |goto Azsuna/0 57.44,56.51 < 30 |only if walking
Follow the path |goto 58.51,51.50 < 25 |only if walking
Follow the path |goto 63.36,51.38 < 25 |only if walking
accept Battle for the Ruins##45203 |goto Azsuna/0 65.67,49.00
|tip You will accept this quest automatically.
step
kill Legion Brutallizer##116424+, Dreadflame Champion##116428+, Dreadflame Magus##116433
Repel the Legion forces |q 45203/1 |goto 65.67,49.00
step
Follow the steps |goto 66.54,50.26 < 20 |only if walking
Enter the building |goto 67.43,51.18 < 20 |walk
kill Arinor the Portalmaster##116436
Defeat Arinor the Portalmaster |q 45203/2 |goto 67.13,51.37
|next "Court_Of_Farondis_WQ"
step
label quest-44894
Drop down |goto Azsuna/0 39.78,7.47 < 30 |only if walking
accept Bloodgazer Swarm!##44894 |goto 38.68,7.12
|tip You will accept this quest automatically.
step
Slay the Bloodgazers around this area
Cull the Bloodgazer Falcosaurs |q 44894/1 |goto Azsuna/0 36.60,6.31
|next "Court_Of_Farondis_WQ"
step
label quest-41495
Follow the path |goto Azsuna/0 63.39,25.54 < 25 |only if walking
Follow the path |goto 60.38,20.69 < 20 |only if walking
Follow the path |goto 57.26,18.00 < 25 |only if walking
accept Brilliant Leystone Seams##41495 |goto 56.25,17.11
|tip You will accept this quest automatically.
step
click Brilliant Leystone Seam##0
collect 6 Brilliant Leystone Ore##141228 |q 41495/1 |goto 56.25,17.11
|tip You will find Brilliant Leystone Seams all over this area.
|next "Court_Of_Farondis_WQ"
step
label quest-41481
Follow the path |goto Azsuna/0 47.53,29.14 < 25 |only if walking
Follow the path |goto 44.75,31.83 < 25 |only if walking
Follow the path |goto 41.21,35.34 < 25 |only if walking
Follow the path up |goto 39.19,32.73 < 20 |only if walking
Follow the path |goto 37.81,31.79 < 10 |only if walking
Follow the path up |goto 37.52,29.46 < 15 |only if walking
Follow the path |goto 39.11,27.03 < 15 |only if walking
accept Brimstone Destroyer##41481 |goto 38.62,25.38
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41481/1 |goto 38.62,25.38
|next "Court_Of_Farondis_WQ"
step
label quest-41482
accept Brimstone Destroyer##41482 |goto Azsuna/0 63.80,29.46
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41482/1 |goto 63.80,29.46
|next "Court_Of_Farondis_WQ"
step
label quest-41483
Follow the path |goto Azsuna/0 47.60,28.99 < 30 |only if walking
Follow the path |goto 42.72,33.07 < 30 |only if walking
Follow the path |goto 41.20,35.34 < 30 |only if walking
Follow the path up |goto 39.19,32.69 < 15 |only if walking
Follow the path up |goto 37.18,30.67 < 15 |only if walking
Follow the path |goto 38.85,27.87 < 20 |only if walking
accept Brimstone Destroyer##41483 |goto 38.53,25.42
|tip You will accept this quest automatically.
step
kill Brimstone Destroyer##93237
click Brimstone Destroyer Core##195122
Brimstone Destroyer Core mined |q 41483/1 |goto 38.53,25.42
|next "Court_Of_Farondis_WQ"
step
label quest-42022
Follow the path |goto Azsuna/0 46.20,44.55 < 30 |only if walking
Follow the path |goto Azsuna/0 48.96,42.73 < 30 |only if walking
Follow the path |goto Azsuna/0 52.00,44.47 < 30 |only if walking
accept The Broken Academy##42022 |goto Azsuna/0 54.28,44.20
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bound Citizen##91449+
|tip They look like night elves pinned to walls by spears around this area.
Defend Against the Hatecoil |q 42022/1 |goto 54.28,44.20
|next "Court_Of_Farondis_WQ"
step
label quest-46146
Follow the path |goto Azsuna/0 45.41,44.47
accept The Burning Shores##46146 |goto 44.38,49.78
|tip You will accept this quest automatically.
stickystart "shores"
step
kill Hatefire the Burning##118827
Defeat Hatefire the Burning |q 46146/2 |goto 44.38,49.78
step
label "shores"
kill Felsiege Infernal##118816+, Doomflame Infernal##121045+, Blazing Infernal##118821+, Felwing Terror##118836+
Kill #10# demons |q 46146/1 |goto 44.38,49.78
|next "Court_Of_Farondis_WQ"
step
label quest-41529
Follow the path |goto Azsuna/0 56.69,56.24 < 30 |only if walking
Follow the path |goto 58.50,51.43 < 25 |only if walking
accept Bushy Aethril##41529 |goto 62.25,49.27
|tip You will accept this quest automatically.
step
click Bushy Aethril##0
collect 10 Bushy Aethril##140951 |q 41529/1 |goto 62.25,49.27
|next "Court_Of_Farondis_WQ"
step
label quest-43193
Follow the path |goto Azsuna/0 46.98,73.18 < 20 |only if walking
Follow the path |goto 44.83,74.88 < 25 |only if walking
Follow the path |goto 42.32,78.05 < 20 |only if walking
accept Calamitous Intent##43193 |goto Azsuna/0 38.01,84.81
|tip You will accept this quest automatically.
step
kill Calamir##109331 |q 43193/1 |goto 38.01,84.81
|tip
_DAMAGE:_ |only if grouprole("DAMAGE")
|tip Run away when Calamir casts Howling Gale. |only if grouprole("DAMAGE")
|tip Avoid other players when you get the Burning Bomb debuff. |only if grouprole("DAMAGE")
_HEALER:_ |only if grouprole("HEALER")
|tip Dispel the Burning Bomb debuff from other players. |only if grouprole("HEALER")
|tip Avoid the Arcanopulse areas. |only if grouprole("HEALER")
_TANK:_ |only if grouprole("TANK")
|tip Run away when Calamir casts Howling Gale. |only if grouprole("TANK")
|tip Avoid the Arcanopulse areas. |only if grouprole("TANK")
|next "Court_Of_Farondis_WQ"
step
label quest-41438
Follow the path |goto Azsuna/0 45.14,43.69 < 20 |only if walking
Follow the path down |goto 47.83,45.19 < 20 |only if walking
accept Charged Leystone Deposits##41438 |goto 49.07,47.61
|tip You will accept this quest automatically.
step
click Charged Leystone Deposit##195122
|tip These are located all around the area.
collect 10 Charged Leystone Ore##141238 |q 41438/1 |goto 49.02,47.03
|next "Court_Of_Farondis_WQ"
step
label quest-46168
Follow the path |goto Azsuna/0 43.02,41.54 < 25 |only if walking
Follow the path |goto 40.60,37.76 < 25 |only if walking
Follow the path |goto 37.93,37.90 < 25 |only if walking
Follow the path |goto 33.98,36.09 < 25 |only if walking
Follow the path |goto 32.65,31.81 < 25 |only if walking
accept Commander Vorlax##46168 |goto Azsuna/0 34.29,28.06
|tip You will accept this quest automatically.
step
kill Commander Vorlax##117970
Defeat Commander Vorlax |q 46168/1 |goto 34.29,28.06
|next "Court_Of_Farondis_WQ"
step
label quest-43091
Follow the path |goto Azsuna/0 50.66,30.05 < 25 |only if walking
Follow the path |goto 50.91,22.58 < 20 |only if walking
Follow the path |goto 51.81,16.12 < 25 |only if walking
Follow the path |goto 53.78,13.91 < 25 |only if walking
Follow the path |goto 55.96,12.91 < 15 |only if walking
accept DANGER: Arcanor Prime##43091 |goto 56.67,11.09
|tip You will accept this quest automatically.
step
kill Arcanor Prime##109641 |q 43091/1 |goto 56.67,11.09
|next "Court_Of_Farondis_WQ"
step
label quest-44189
Follow the path |goto Azsuna/0 46.99,73.10 < 20 |only if walking
Follow the path |goto 44.15,76.99 < 30 |only if walking
Follow the path |goto 44.21,81.99 < 30 |only if walking
Follow the path to Bestrix's lair |goto Azsuna/0 42.76,85.14 < 30
accept DANGER: Bestrix##44189 |goto Azsuna/0 41.79,88.35
|tip You will accept this quest automatically.
step
kill Bestrix##111454 |q 44189/1 |goto 41.79,88.35
|next "Court_Of_Farondis_WQ"
step
label quest-43121
Follow the path |goto Azsuna/0 55.92,60.20 < 25 |only if walking
Follow the path |goto 57.90,63.64 < 25 |only if walking
Follow the path |goto 59.09,67.14 < 25 |only if walking
Follow the path |goto 60.44,69.11 < 25 |only if walking
Follow the path |goto 60.11,74.50 < 20 |only if walking
accept DANGER: Chief Treasurer Jabrill##43121 |goto 59.29,77.04
|tip You will accept this quest automatically.
step
kill Chief Treasurer Jabrill##109677 |q 43121/1 |goto 59.29,77.04
|next "Court_Of_Farondis_WQ"
step
label quest-44187
Follow the path |goto Azsuna/0 47.04,73.14 < 25 |only if walking
Follow the path |goto 44.01,77.88 < 15 |only if walking
Follow the path |goto 45.31,80.99 < 25 |only if walking
Follow the path up |goto 46.73,80.13 < 25 |only if walking
accept DANGER: Cinderwing##44187 |goto 46.84,77.70
|tip You will accept this quest automatically.
step
kill Cinderwing##111674 |q 44187/1 |goto 46.84,77.70
|tip Cinderwing is a rare elite. You will most likely need to find a group.
|next "Court_Of_Farondis_WQ"
step
label quest-43175
Follow the path |goto Azsuna/0 55.85,60.01 < 25 |only if walking
Drop down |goto 56.09,62.29 < 25 |only if walking
accept DANGER: Deepclaw##43175 |goto 56.09,62.29
|tip You will accept this quest automatically.
step
kill Deepclaw##109702 |q 43175/1 |goto 56.09,62.29
|tip Deepclaw is inside the little cave.
|next "Court_Of_Farondis_WQ"
step
label quest-43059
Follow the path |goto Azsuna/0 63.39,30.66 < 25 |only if walking
Follow the path |goto 63.83,34.57 < 25 |only if walking
Follow the path down |goto 65.21,37.83 < 20 |only if walking
Follow the path |goto 60.44,69.11 < 25 |only if walking
Follow the path |goto 60.11,74.50 < 20 |only if walking
accept DANGER: Fjordun##43059 |goto 66.12,40.10
|tip You will accept this quest automatically.
step
kill Fjordun##109584 |q 43059/1 |goto 66.12,40.10
|next "Court_Of_Farondis_WQ"
step
label quest-43079
Follow the path |goto Azsuna/0 30.93,46.23 < 30 |only if walking
Follow the path |goto 29.13,47.51 < 30 |only if walking
accept DANGER: Immolian##43079 |goto 28.71,49.46
|tip You will accept this quest automatically.
step
kill Immolian##109630 |q 43079/1 |goto 28.71,49.46
|next "Court_Of_Farondis_WQ"
step
label quest-44190
Follow the path |goto Azsuna/0 47.05,73.14 < 30 |only if walking
Go up the path |goto 41.61,73.70 < 30 |only if walking
Enter the tower |goto 40.75,76.63 < 10 |only if walking
|tip Go all the way to the top.
accept DANGER: Jade Darkhaven##44190 |goto 40.37,76.85
|tip You will accept this quest automatically.
step
kill Jade Darkhaven##34914 |q 44190/1 |goto 40.30,76.57
|tip He is all the way at the top of the tower.
|next "Court_Of_Farondis_WQ"
step
label quest-44191
Follow the path |goto Azsuna/0 47.28,73.05 < 25 |only if walking
Follow the path |goto 44.15,77.06 < 15 |only if walking
Follow the path |goto 44.82,81.62 < 20 |only if walking
Follow the path |goto 45.96,79.55 < 25 |only if walking
accept DANGER: Karthax##44191 |goto 45.48,77.00
|tip You will accept this quest automatically.
step
kill Karthax##111731 |q 44191/1 |goto 45.48,77.00
|next "Court_Of_Farondis_WQ"
step
label quest-43798
accept DANGER: Kosumoth the Hungering##43798 |goto Eye of Azshara Map/0 46.46,50.10
|tip You will accept this quest automatically.
step
kill Kosumoth the Hungering##111573 |q 43798/1 |goto 46.46,50.10
|next "Court_Of_Farondis_WQ"
step
label quest-44192
Follow the path up |goto Azsuna/0 46.90,73.13 < 20 |only if walking
Follow the path up |goto Azsuna/0 44.24,75.43 < 20 |only if walking
Follow the path |goto Azsuna/0 43.97,78.09 < 20 |only if walking
Follow the path |goto Azsuna/0 45.12,82.36 < 20 |only if walking
Follow the path up |goto Azsuna/0 46.16,84.04 < 20 |only if walking
Follow the path up |goto Azsuna/0 45.46,85.08 < 20 |only if walking
accept DANGER: Lysanis Shadesoul##44192 |goto Azsuna/0 43.75,88.78
|tip You will accept this quest automatically.
step
kill Lysanis Shadesoul##30108 |q 44192/1 |goto 43.62,89.67
|tip At the top of the tower.
|next "Court_Of_Farondis_WQ"
step
label quest-43098
Follow the path |goto Azsuna/0 43.53,42.02 < 30 |only if walking
Follow the path |goto 40.07,37.50 < 30 |only if walking
Follow the path |goto 34.70,36.77 < 30 |only if walking
Follow the path |goto 32.64,31.99 < 30 |only if walking
accept DANGER: Marblub the Massive##43098 |goto 33.86,28.84
|tip You will accept this quest automatically.
step
kill Marblub the Massive##109653 |q 43098/1 |goto Azsuna/0 34.12,27.91
|next "Court_Of_Farondis_WQ"
step
label quest-43027
Follow the path |goto Azsuna/0 42.04,44.51 < 30 |only if walking
accept DANGER: Mortiferous##43027 |goto Azsuna/0 40.62,44.66
|tip You will accept this quest automatically.
step
kill Mortiferous##93622 |q 43027/1 |goto 40.62,44.66
|next "Court_Of_Farondis_WQ"
step
label quest-44193
Follow the path |goto Azsuna/0 50.76,83.17 < 30 |only if walking
Follow the path |goto 48.05,84.92 < 30 |only if walking
Drop down |goto 46.23,86.49 < 30 |only if walking
Drop down |goto 45.64,87.08 < 30 |only if walking
Enter the cave |goto Azsuna/0 45.12,87.01 < 30 |walk
accept DANGER: Sea King Tidross##44193 |goto Azsuna/0 44.29,85.55
|tip You will accept this quest automatically.
step
kill Sea King Tidross##111434 |q 44193/1 |goto 44.29,85.51
|tip Run around the center rock out of LoS when Tidross casts Sea Quake.
|next "Court_Of_Farondis_WQ"
step
label quest-43063
Follow the path up |goto Azsuna/0 54.10,57.06 < 30 |only if walking
Follow the path up |goto 53.77,54.18 < 30 |only if walking
accept DANGER: Stormfeather##43063 |goto 51.45,56.56
|tip You will accept this quest automatically.
step
kill Stormfeather##109594 |q 43063/1 |goto Azsuna/0 51.20,57.87
|next "Court_Of_Farondis_WQ"
step
label quest-44194
Follow the path |goto Azsuna/0 47.01,73.16 < 30 |only if walking
Follow the path |goto 43.17,76.73 < 30 |only if walking
Go to the beach |goto 40.68,80.27 < 30 |only if walking
accept DANGER: Torrentius##44194 |goto 37.39,82.32
|tip You will accept this quest automatically.
step
kill Torrentius##102064 |q 44194/1 |goto 37.26,83.41
|tip This is an elite enemy you will need a group to kill him.
|next "Court_Of_Farondis_WQ"
step
label quest-43040
Follow the path |goto Azsuna/0 63.41,25.55 < 25 |only if walking
Follow the path |goto 61.12,21.68 < 25 |only if walking
Follow the path |goto 59.17,22.78 < 25 |only if walking
accept DANGER: Valakar the Thirsty##43040 |goto 58.25,21.31
|tip You will accept this quest automatically.
step
kill Valakar the Thirsty##109575 |q 43040/1 |goto 58.25,21.31
|next "Court_Of_Farondis_WQ"
step
label quest-43072
Follow the path |goto Azsuna/0 41.50,10.70 < 30 |only if walking
Follow the path |goto Azsuna/0 42.61,9.60 < 30 |only if walking
accept DANGER: The Whisperer##43072 |goto 43.18,7.65
|tip You will accept this quest automatically.
step
kill The Whisperer##109620 |q 43072/1 |goto 43.18,7.65
|next "Court_Of_Farondis_WQ"
step
label quest-42146
Follow the path |goto Azsuna/0 46.34,44.55 < 30 |only if walking
Follow the path |goto 47.64,43.84 < 30 |only if walking
accept Dazed and Confused and Adorable##42146 |goto 50.03,41.44
|tip You will accept this quest automatically.
step
click Beguiling Orb##0
Defeat the Murlocs |q 42146/1 |goto 50.03,41.44
|next "Court_Of_Farondis_WQ"
step
label quest-44287
Enter the cave |goto Azsuna/0 52.40,79.84 < 30 |walk
accept DEADLY: Withered J'im##44287 |goto Azsuna/0 52.60,81.28
|tip You will accept this quest automatically.
step
kill Withered J'im##112350 |q 44287/1 |goto 52.60,81.28
|next "Court_Of_Farondis_WQ"
step
label quest-44054
accept Demonicide##44054 |goto Azsuna/0 48.17,73.05
|tip You will accept this quest automatically.
step
Follow the path up |goto 46.90,73.13 < 20 |only if walking
Kill enemies around this area
Purge the Demons |q 44054/1 |goto 44.89,74.24
|next "Court_Of_Farondis_WQ"
step
label quest-42276
accept Disgusting, but Useful##42276 |goto Azsuna/0 30.71,46.45
|tip You will accept this quest automatically.
step
kill Manastalker##107135+
collect 50 Manastalker Tendril##137330 |q 42276/1 |goto 30.71,46.45
step
Follow the path |goto 31.17,45.41 < 20 |only if walking
click Felsurge Eggs
|tip They look like shaking white eggs on the ground around this area.
kill Felsurge Broodmother##113987+
collect 10 Felsurge Spider Egg##137335 |q 42276/2 |goto 33.86,42.95
|next "Court_Of_Farondis_WQ"
step
label quest-46169
accept Dro'zek##46169 |goto Azsuna/0 56.60,56.19
|tip You will accept this quest automatically.
step
kill 1 Dro'zek##117067 |q 46169/1 |goto 56.60,56.19
|next "Court_Of_Farondis_WQ"
step
label quest-43328
Follow the path |goto Azsuna/0 46.22,44.58 < 30 |only if walking
Follow the path |goto 48.34,44.02 < 30 |only if walking
Follow the path |goto 49.21,45.29 < 30 |only if walking
accept Enigmatic##43328 |goto 49.19,46.77
|tip You will accept this quest automatically.
step
click Puzzle Box
|tip Memorize the patterns of the tiles on the ground.
|tip When the grid appears, walk on the tiles illustrated in the patterns.
Solve the Enigma |q 43328/1 |goto 49.19,46.77
|next "Court_Of_Farondis_WQ"
step
label quest-42711
Cross the bridge |goto Azsuna/0 56.48,62.04 < 30 |only if walking
accept The Eternal Mages##42711 |goto 56.33,65.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Ghost Mages |q 42711/1 |goto 57.03,65.17
|next "Court_Of_Farondis_WQ"
step
label quest-44049
Follow the path |goto Azsuna/0 51.05,83.03 < 30 |only if walking
Follow the path down |goto 46.30,84.68 < 30 |only if walking
accept Evil Has Many Legs##44049 |goto 44.34,82.09
|tip You will accept this quest automatically.
step
Slay the spiders around this area
Purge the Demonic Spiders |q 44049/1 |goto Azsuna/0 43.07,84.84
|next "Court_Of_Farondis_WQ"
step
label quest-42027
accept Faronaar in Chaos##42027 |goto Azsuna/0 37.95,52.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Soul Prisons
|tip They look like small green floating crystals around this area.
click Legion Portals
|tip They look like big green domes.
click Librams of Fel Knowledge
|tip They look like open floating books.
Lead the Fight Against the Legion |q 42027/1 |goto 37.95,52.68
|next "Court_Of_Farondis_WQ"
step
label quest-42026
Follow the path |goto Azsuna/0 43.08,45.32 < 30 |only if walking
Follow the path |goto 40.99,47.95 < 30 |only if walking
Follow the path |goto 39.41,50.72 < 30 |only if walking
Follow the path |goto 38.82,55.17 < 30 |only if walking
accept Faronaar in Ruin##42026 |goto 38.84,57.72
|tip You will accept this quest automatically.
stickystart "Legion_Camp_Demons"
step
click Jailer's Cages
|tip They look like pointed gray metal cages around this area.
Free #8# Illidari |q 42026/1 |goto 39.05,57.85
step
label "Legion_Camp_Demons"
Kill enemies around this area
Slay #10# Legion Camp Demons |q 42026/2 |goto 39.05,57.85
|next "Court_Of_Farondis_WQ"
step
label quest-41323
Follow the path |goto Azsuna/0 43.60,42.22 < 30 |only if walking
Follow the path |goto 40.02,37.44 < 30 |only if walking
Follow the path |goto 35.17,36.96 < 30 |only if walking
accept Fatty Lion Seal Skin##41323 |goto 31.98,34.64
|tip You will accept this quest automatically.
step
kill Azsuna Lion Seal##89013+
|tip Loot and Skin these.
collect 8 Fatty Lion Seal Skin##134807 |q 41323/1 |goto Azsuna/0 30.48,34.10
|next "Court_Of_Farondis_WQ"
step
label quest-46161
accept Felcaller Thalezra##46161 |goto Azsuna/0 49.16,44.02
|tip You will accept this quest automatically.
step
kill Felcaller Thalezra##117056
Defeat Felcaller Thalezra |q 46161/1 |goto Azsuna/0 49.16,44.02
|next "Court_Of_Farondis_WQ"
step
label quest-41563
Carefully cross the rocks |goto Azsuna/0 45.60,72.22 < 30 |only if walking
Follow the path |goto 43.53,71.70 < 30 |only if walking
accept Felhide##41563 |goto 41.44,71.3
|tip You will accept this quest automatically.
step
This is an elite area, be wary of the enemies here.
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41563/1 |goto Azsuna/0 41.44,71.3
|next "Court_Of_Farondis_WQ"
step
label quest-41564
Follow the path |goto Azsuna/0 43.34,44.83 < 30 |only if walking
Run up the hidden path here |goto 38.27,55.86 < 30 |only if walking
Follow the path up |goto 35.16,54.89 < 30 |only if walking
Continue following the path |goto 33.98,55.53 < 30 |only if walking
Follow the path |goto 30.61,54.77 < 30 |only if walking
Follow the path down |goto 29.03,55.37 < 30 |only if walking
accept Felhide##41564 |goto 29.72,57.18
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41564/1 |goto Azsuna/0 29.83,57.97
|next "Court_Of_Farondis_WQ"
step
label quest-41562
Follow the path |goto Azsuna/0 30.52,46.52 < 25 |only if walking
accept Felhide##41562 |goto 29.72,57.18
|tip You will accept this quest automatically.
step
kill Felhide Gargantuan##103675
Skin the Felhide Gargantuan |q 41562/1 |goto Azsuna/0 29.83,57.97
|next "Court_Of_Farondis_WQ"
step
label quest-44044
accept Felled Experiment##44044 |goto 43.30,72.05
|tip You will accept this quest automatically.
step
kill Experimental Fel Corruptor##111763+ |q 44044/1 |goto 43.30,72.05
kill Beguiled Inquisitor##111752+ |q 44044/2 |goto 43.30,72.05
|tip These mobs are elite. You might need some help.
|next "Court_Of_Farondis_WQ"
step
label quest-44050
Follow the path |goto Azsuna/0 47.09,73.16 < 25 |only if walking
Follow the path up |goto 41.64,73.61 < 20 |only if walking
accept The Felsworn Must Fall##44050 |goto 41.09,75.75
|tip You will accept this quest automatically.
step
kill Felsworn Adept##102059+ |q 44050/1 |goto 41.09,75.75
kill Felsworn Betrayer##103972+ |q 44050/2 |goto 41.09,75.75
kill Felsworn Defiler##111929+ |q 44050/3 |goto 41.09,75.75
|next "Court_Of_Farondis_WQ"
step
label quest-41514
Follow the path |goto Azsuna/0 65.36,28.86 < 30 |only if walking
accept Felwort##41514 |goto 68.37,28.92
step
click Felwort##195114
collect Felwort |q 41514/1 |goto Azsuna/0 68.37,28.92
step
label quest-41513
accept Felwort##41513 |goto Azsuna/0 40.60,46.73
step
click Felwort##195114
collect Felwort |q 41513/1 |goto Azsuna/0 40.70,46.53
|next "Court_Of_Farondis_WQ"
step
label quest-41515
Follow the path |goto Azsuna/0 46.25,44.65 < 30 |only if walking
Follow the path |goto 46.28,51.59 < 30 |only if walking
Cross the bridge |goto 48.32,54.49 < 20 |only if walking
accept Felwort##41515 |goto 48.54,57.05
|tip You will accept this quest automatically.
step
click Felwort##195114
Felwort gathered |q 41515/1 |goto 48.54,57.05
|next "Court_Of_Farondis_WQ"
step
label quest-41437
Follow the path |goto Azsuna/0 46.55,30.62 < 30 |only if walking
Follow the path |goto 44.28,32.01 < 30 |only if walking
accept Fine Leystone Deposits##41437 |goto 41.85,34.47
|tip You will accept this quest automatically.
step
click Fine Leystone Deposit##195122
collect Fine Leystone Ore##141225 |q 41437/1 |goto 41.85,34.47
|tip These are located all around the area.
|next "Court_Of_Farondis_WQ"
step
label quest-41289
Follow the path |goto Azsuna/0 45.43,42.38 < 25 |only if walking
Follow the path |goto 46.52,40.45 < 25 |only if walking
accept Flourishing Aethril##41289 |goto 46.69,36.72
|tip You will accept this quest automatically.
step
click Flourishing Aethril##195114
collect 10 Flourishing Aethril##140947 |q 41289/1 |goto 46.69,36.72
|next "Court_Of_Farondis_WQ"
step
label quest-46166
Follow the path |goto Azsuna/0 63.34,29.83 < 25 |only if walking
Follow the path |goto 63.43,33.65 < 25 |only if walking
Follow the path |goto 60.82,34.73 < 25 |only if walking
accept Garthulak the Crusher##46166 |goto Azsuna/0 59.63,36.14
|tip You will accept this quest automatically.
step
kill Garthulak the Crusher##116955 |q 46166/1 |goto 59.63,36.14
|next "Court_Of_Farondis_WQ"
step
label quest-41455
Follow the path |goto Azsuna/0 57.20,59.04 < 25 |only if walking
Follow the path |goto 58.95,60.11 < 25 |only if walking
Follow the path |goto 60.93,60.00 < 25 |only if walking
accept Gleaming Leystone Outcropping##41455 |goto 62.12,60.33
|tip You will accept this quest automatically.
step
click Gleaming Leystone Outcropping##195122
|tip It's underwater.
collect 1 Gleaming Leystone Ore##141229 |q 41455/1 |goto 62.12,60.33
|next "Court_Of_Farondis_WQ"
step
label quest-41434
Follow the path |goto Azsuna/0 53.86,58.73 < 25 |only if walking
Follow the path |goto 52.00,59.91 < 25 |only if walking
Follow the path |goto 51.28,56.16 < 25 |only if walking
Follow the path |goto 49.42,55.46 < 25 |only if walking
accept Glowing Leystone Deposits##41434 |goto Azsuna/18 70.94,71.58
|tip You will accept this quest automatically.
step
click Glowing Leystone Deposit##195122
|tip These can be found all around the cave.
collect 10 Glowing Leystone Ore##141223 |q 41434/1 |goto 70.94,71.58
|next "Court_Of_Farondis_WQ"
step
label quest-43804
accept Hate the Hatecoil##43804 |goto Eye of Azshara Map/0 38.45,46.16
|tip You will accept this quest automatically.
step
Slay the Naga around this area
kill 15 Hatecoil Naga |q 43804/1 |goto Eye of Azshara Map/0 50.61,67.27
|next "Court_Of_Farondis_WQ"
step
label quest-42624
Cross the water |goto Azsuna/0 57.22,62.55 < 30 |only if walking
Follow the path |goto 59.17,65.60 < 30 |only if walking
accept Heads of the Fleet##42624 |goto 61.07,69.32
|tip You will accept this quest automatically.
step
Enter the cave |goto 59.55,68.35 < 30 |walk
kill Second Mate Cilieth##108212 |q 42624/2 |goto 59.66,69.79
step
Leave the cave |goto 59.55,68.35 < 30 |walk
kill First Mate Oxswain##108137 |q 42624/1 |goto 61.13,68.72
|tip At the top of the ship.
step
kill Bilgerat##108174 |q 42624/3 |goto 60.81,70.81
|tip Inside the small cave.
step
Follow the beach |goto 61.53,72.00 < 30 |only if walking
Follow the beach |goto 59.32,72.84 < 30 |only if walking
Follow the path |goto 58.12,74.09 < 30 |only if walking
kill Quartermaster Zolix##108186 |q 42624/4 |goto 57.44,75.32
|next "Court_Of_Farondis_WQ"
step
label quest-44737
Follow the path |goto Azsuna/0 43.59,42.16 < 20 |only if walking
Follow the path |goto 40.68,37.76 < 25 |only if walking
Follow the path |goto 36.51,37.52 < 25 |only if walking
Follow the path |goto 33.41,35.29 < 25 |only if walking
accept Helarjar Landing: Grey Shoals##44737 |goto 31.94,28.78
|tip You will accept this quest automatically.
step
click Kvaldir Weapon Rack##8386
kill Helhound##115026+, Cursed Rigger##115031+, Helarjar Raider##115025+
Disrupt the Helarjar Landing |q 44737/1 |goto 31.94,28.78
|next "Court_Of_Farondis_WQ"
step
label quest-42154
Follow the path |goto Azsuna/0 50.58,26.70 < 30 |only if walking
Follow the path |goto 50.83,20.91 < 30 |only if walking
accept Help a Whelp##42154 |goto 53.22,16.18
|tip You will accept this quest automatically.
step
click Wounded Azurewing Whelpling
Defeat the Scavenging Critters |q 42154/1 |goto Azsuna/0 53.22,16.18
|next "Court_Of_Farondis_WQ"
step
label quest-41611
Follow the path |goto Azsuna/0 44.97,46.19 < 25 |only if walking
Follow the path |goto 44.57,51.26 < 25 |only if walking
accept Huge Cursed Queenfish##41611 |goto 43.33,56.15
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41611/1 |goto 43.57,56.02
|next "Court_Of_Farondis_WQ"
step
label quest-41610
Follow the path |goto Azsuna/0 49.30,29.02 < 25 |only if walking
Follow the path |goto 51.39,30.73 < 25 |only if walking
Follow the path |goto 53.12,32.10 < 25 |only if walking
accept Huge Cursed Queenfish##41610 |goto 54.87,37.76
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41610/1 |goto 54.87,37.76
|next "Court_Of_Farondis_WQ"
step
label quest-41265
Follow the path |goto Azsuna/0 46.21,44.61 < 25 |only if walking
Follow the path |goto 47.61,43.87 < 25 |only if walking
Follow the path |goto 48.94,42.71 < 25 |only if walking
Follow the path |goto 48.98,41.29 < 25 |only if walking
accept Huge Cursed Queenfish##41265 |goto 50.98,42.05
|tip You will accept this quest automatically.
step
Fish from the Huge Cursed Queenfish School |cast Fishing##131474
collect 10 Huge Cursed Queenfish##134565 |q 41265/1 |goto 63.01,26.88
|next "Court_Of_Farondis_WQ"
step
label quest-42277
accept Interlopers1!##42277 |goto Azsuna/0 31.53,46.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip The blue progress bar will fill up in your quest tracker area.
Attack the Legion in Upper Faronaar |q 42277/1 |goto 30.71,46.45
|next "Court_Of_Farondis_WQ"
step
label quest-42021
accept Investigation at Mak'rana##42021 |goto Azsuna/0 61.73,59.70
|tip You will accept this quest automatically.
stickystart "Gilblin"
stickystart "Queens_Reprisal_Sailors"
step
Kill Mak'rana enemies around this area
Slay #6# Makrura |q 42021/1 |goto 59.69,58.13
step
label "Gilblin"
Kill enemies around this area
Slay #6# Gilblin |q 42021/2 |goto 59.69,58.13
step
label "Queens_Reprisal_Sailors"
kill Queen's Reprisal Sailor##89290+
|tip They're undead enemies mixed in with the enemies around this area.
"Release" #4# Queen's Reprisal Sailors |q 42021/3 |goto 59.69,58.13
step
Enter the cave underwater |goto 62.93,61.44 < 20 |walk
kill Oublion##89350
|tip Switch to fighting Queen Kraklaa when he casts the green bubble around himself.
kill Queen Kraklaa##89287
Kill Oublion |q 42021/4 |goto 63.86,63.55
|next "Court_Of_Farondis_WQ"
step
label quest-41528
Follow the path |goto Azsuna/0 42.00,11.31 < 30 |only if walking
accept Iridescent Aethril##41528 |goto 43.95,10.82
|tip You will accept this quest automatically.
step
click Iridescent Aethril##195114
collect 10 Iridescent  Aethril##140950 |q 41528/1 |goto 45.46,10.21
|next "Court_Of_Farondis_WQ"
step
label quest-46165
Follow the path |goto Azsuna/0 56.88,57.18 < 25 |only if walking
Follow the path |goto 58.34,51.57 < 20 |only if walking
Follow the path |goto 61.02,50.76 < 25 |only if walking
accept Kazruul##46165 |goto 62.69,46.32
|tip You will accept this quest automatically.
step
kill Kazruul##118012
Defeat Kazruul |q 46165/1 |goto 62.69,46.32
|next "Court_Of_Farondis_WQ"
step
label quest-46167
Follow the path |goto Azsuna/0 47.51,29.14 < 25 |only if walking
accept Kozrum##46167 |goto Azsuna/0 44.23,32.03
|tip You will accept this quest automatically.
step
kill Kozrum##117061 |q 46167/1 |goto 44.23,32.03
|next "Court_Of_Farondis_WQ"
step
label quest-42101
Cross the water |goto 56.88,56.51 < 30 |only if walking
accept Language of the Lost##42101 |goto 59.51,54.10
|tip You will accept this quest automatically.
stickystart "Illegible_Writings"
step
Run up the stairs |goto 59.73,54.67 < 15 |only if walking
kill The Oracle##89850
collect Oracle's Scrying Orb##136833 |q 42101/2 |goto 59.51,54.10
step
label "Illegible_Writings"
kill Fallen Priestess##91074+
click Illegible Writings
|tip They look like white rolled-up scrolls sitting on the ground and on objects around this area.
collect 10 Illegible Writings##136832 |q 42101/1 |goto 59.51,54.10
|next "Court_Of_Farondis_WQ"
step
label quest-42211
Follow the path |goto Azsuna/0 63.38,30.77 < 30 |only if walking
Follow the path |goto Azsuna/0 64.51,35.30 < 30 |only if walking
Cross the bridge |goto Azsuna/0 66.24,38.79 < 30 |only if walking
Follow the path |goto Azsuna/0 66.94,44.12 < 30 |only if walking
Follow the path |goto Azsuna/0 66.37,47.28 < 30 |only if walking
accept Leodrath's Kin##42211 |goto 65.49,49.24
|tip You will accept this quest automatically.
stickystart "Sabotage_Inactive_Constructs"
stickystart "Leodraths_Allies"
step
kill Syphonus##90505
Defeat Leodrath |q 42211/3 |goto 67.13,51.57
step
label "Sabotage_Inactive_Constructs"
click Inactive Constructs
|tip They look like purple glowing broken down robots around this area.
Sabotage #6# Inactive Constructs |q 42211/1 |goto 64.97,48.93
step
label "Leodraths_Allies"
Kill enemies around this area
Slay #10# of Leodrath's Allies |q 42211/2 |goto 66.31,49.79
|next "Court_Of_Farondis_WQ"
step
label quest-43325
accept Ley Race##43325 |goto Azsuna/0 63.12,29.91
|tip You will accept this quest automatically.
step
click Mana Saber##110903
|tip You can't control the speed the Mana Saber runs, or stop it.  You can only direct it where to go.
|tip Ride through the blue circles with blue light beaming upward out of them all around this whole area.
|tip Don't worry about getting too far away, you will teleport back when you complete the quest.
Collect Ley Line Energy |q 43325/1 |goto 63.13,29.97
|next "Court_Of_Farondis_WQ"
step
label quest-42172
Enter the cave |goto Azsuna/0 48.24,25.04 < 30 |only if walking
accept Leyhollow Infestation##42172 |goto 48.45,23.78
|tip You will accept this quest automatically.
stickystart "Burrowing_Leyworms"
step
Follow the path |goto 48.41,21.90 < 30 |walk
click Heavy Stones
|tip They look like smaller flat rocks on the ground around this area.
Use the Drop Stone ability next to tunnels
|tip It appears as a button on the screen.
|tip The tunnels look like holes in the ground with yellow arrows above them.
Cover #4# Leyworm Tunnels |q 42172/1 |goto 49.59,21.29
step
label "Burrowing_Leyworms"
kill Burrowing Leyworm##106630+ |q 42172/2 |goto 49.59,21.29
step
kill Ualair##106665 |q 42172/3 |goto 51.55,20.02
|next "Court_Of_Farondis_WQ"
step
label quest-41500
Enter the cave |goto Azsuna/0 47.96,24.93 < 30
accept Leyworms##41500 |goto 50.26,21.67
|tip You will accept this quest automatically.
step
kill Burrowing Leyworm##106630+, Sorcerite##109338+
collect Leystone-Encrusted Spike##134104 |q 41500/1 |goto 50.26,21.67
|tip Mine the corpses.
|next "Court_Of_Farondis_WQ"
step
label quest-45046
Follow the path |goto Azsuna/0 55.90,60.10 < 25 |only if walking
Follow the path |goto 56.36,65.74 < 25 |only if walking
Follow the path |goto 55.23,69.08 < 25 |only if walking
Follow the path |goto 56.04,71.63 < 25 |only if walking
Follow the path |goto 57.27,72.13 < 10 |only if walking
accept Like the Wind##45046 |goto 57.14,73.13
|tip You will accept this quest automatically.
step
Goal Reached |q 45046/1 |goto 57.14,73.13
|tip To reach the goal, you must use the crystals to increase your vertical elevation.
|tip Purple orbs will instantly reset your dash cooldown.
|tip Avoid orange orbs, as they will stun you.
|tip Aim for the glowing blue platforms. These act as checkpoints.
|tip Dropping a long distance without dashing will cause you to fail.
|next "Court_Of_Farondis_WQ"
step
label quest-41527
accept Lively Aethril##41527 |goto Azsuna/0 61.70,23.35
|tip You will accept this quest automatically.
step
click Lively Aethril##248019
collect 10 Lively Aethril##140948 |q 41527/1 |goto 61.70,23.35
|next "Court_Of_Farondis_WQ"
step
label quest-41598
Follow the path |goto Azsuna/0 43.03,43.17 < 20 |only if walking
accept Lively Cursed Queenfish##41598 |goto 40.01,41.79
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##7620
|tip You will find these all around the water.
collect 10 Lively Cursed Queenfish##134564 |q 41598/1 |goto 40.01,41.79
|next "Court_Of_Farondis_WQ"
step
label quest-41599
Follow the path |goto Azsuna/0 55.38,59.90 < 25 |only if walking
Follow the path |goto 54.11,61.28 < 25 |only if walking
Follow the path |goto 53.02,61.04 < 15 |only if walking
Follow the path |goto 50.65,62.75 < 25 |only if walking
accept Lively Cursed Queenfish##41599 |goto 51.14,66.02
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##7620
|tip You will find these all around the water.
collect 10 Lively Cursed Queenfish##134564 |q 41599/1 |goto 51.14,66.02
|next "Court_Of_Farondis_WQ"
step
label quest-41264
accept Lively Cursed Queenfish##41264 |goto Azsuna/0 63.01,26.88
|tip You will accept this quest automatically.
step
Fish from Lively Cursed Queenfish Schools |cast Fishing##131474
|tip You will find these all around the water.
More schools can be found _here_ |goto 63.91,22.58
collect 10 Lively Cursed Queenfish##134564 |q 41264/1 |goto 63.01,26.88
|next "Court_Of_Farondis_WQ"
step
label quest-41454
Follow the path |goto Azsuna/0 63.42,25.51 < 25 |only if walking
Follow the path |goto 60.28,20.57 < 25 |only if walking
Follow the path |goto 59.22,17.21 < 25 |only if walking
Drop down |goto 58.68,14.22 < 10 |only if walking
accept Luminous Leystone Outcropping##41454 |goto 58.63,13.67
|tip You will accept this quest automatically.
step
Drop down |goto 58.68,14.22 < 10 |only if walking
kill Withered Ravager##8092
click Luminous Leystone Outcropping##195122
collect 1 Luminous Leystone Ore##141226 |q 41454/1 |goto 58.63,13.67
|next "Court_Of_Farondis_WQ"
step
label quest-43327
Follow the path |goto Azsuna/0 50.19,30.38 < 30 |only if walking
Go to the beach |goto Azsuna/0 52.06,34.66 < 30 |only if walking
accept The Magic of Flight##43327 |goto Azsuna/0 54.28,36.64
|tip You will accept this quest automatically.
step
talk Archmage Kesalon##110915
click Arcane Artifact
|tip Stay inside the bubbles as they float to reach the Arcane Artifact on top of the building.
Find the Item |q 43327/1 |goto 54.06,39.03
|next "Court_Of_Farondis_WQ"
step
label quest-46164
Follow the path |goto Azsuna/0 43.02,41.54 < 25 |only if walking
Follow the path |goto 53.20,28.77 < 25 |only if walking
Follow the path |goto 37.93,37.90 < 25 |only if walking
Follow the path |goto 33.98,36.09 < 25 |only if walking
Follow the path |goto 32.65,31.81 < 25 |only if walking
accept Mal'serus##46164 |goto Azsuna/0 55.26,29.86
|tip You will accept this quest automatically.
step
kill Mal'serus##117997
Defeat Mal'serus |q 46164/1 |goto 55.26,29.86
|next "Court_Of_Farondis_WQ"
step
label quest-44786
Follow the path |goto Azsuna/0 49.85,29.75 < 30 |only if walking
Follow the path down |goto 51.19,32.65 < 30 |only if walking
Cross the water |goto 52.09,34.70 < 30 |only if walking
Follow the path |goto 53.34,37.72 < 30 |only if walking
Enter the building |goto Azsuna/17 53.77,40.31
accept Midterm: Rune Aptitude##44786 |goto 62.86,86.74
|tip You will accept this quest automatically.
step
Follow the path down |goto 58.11,68.23
Go through the Academy Door |goto 50.40,50.09
Arcane Rune drawn |q 44786/1 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
step
Fire Rune drawn |q 44786/2 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
step
Frost Rune drawn |q 44786/3 |goto 32.59,42.69
|tip Walk over the lines on the ground to trace the rune.
|next "Court_Of_Farondis_WQ"
step
label quest-42105
Follow the path |goto Azsuna/0 49.64,29.59 < 30 |only if walking
accept Mixology Mix-up##42105 |goto Azsuna/0 50.60,34.99
|tip You will accept this quest automatically.
stickystart "Intact_Murloc_Eyes"
step
Enter the cave |goto 51.82,32.98 < 50 |walk
click Egg of Gangamesh
collect Egg of Gangamesh##136839 |q 42105/2 |goto 51.69,32.29
step
label "Intact_Murloc_Eyes"
Kill enemies around this area
collect 20 Intact Murloc Eye##136838 |q 42105/1 |goto 50.60,34.99
|next "Court_Of_Farondis_WQ"
step
label quest-44048
accept Nagana Happen##44048 |goto Azsuna/0 48.17,73.06
|tip You will accept this quest automatically.
stickystart "Ocean Guardian"
step
Follow the path down |goto Azsuna/0 43.62,78.94
|tip This is an elite area you may need a group to complete this quest.
kill Hatecoil Stormspeaker##111457+, Hatecoil Guardian##111481+, Hatecoil Ravager##111438+
Slay #10# Naga |q 44048/1 |goto Azsuna/0 38.20,82.25
step
label "Ocean Guardian"
kill 3 Ocean Guardian##102066 |q 44048/2 |goto Azsuna/0 40.14,84.37
|next "Court_Of_Farondis_WQ"
step
label quest-42275
Follow the path |goto Azsuna/0 42.41,46.52 < 30 |only if walking
Follow the path |goto 40.85,48.27 < 30 |only if walking
Follow the path |goto 39.29,51.45 < 30 |only if walking
accept Not On My Watch##42275 |goto 32.03,52.59
|tip You will accept this quest automatically.
stickystart "Slay_Eredar_Apocalypse"
step
click Dimensional Anchors
|tip They look like big green spinning floating crystals inside the building around this area.
Destroy #4# Dimensional Anchors |q 42275/2 |goto 32.41,53.99
step
label "Slay_Eredar_Apocalypse"
Kill enemies around this area
Slay #10# Eredar at Soul Engine: Apocalypse |q 42275/1 |goto 32.03,52.59
|next "Court_Of_Farondis_WQ"
step
label quest-46116
Follow the path |goto Azsuna/0 64.49,26.06 < 25 |only if walking
accept On Unhallowed Grounds##46116 |goto 64.03,19.55
|tip You will accept this quest automatically.
stickystart "unhallowed"
step
kill Corruptor Hel'drath##118753
Defeat Corruptor Hel'drath |q 46116/2 |goto 63.60,18.60
step
label "unhallowed"
kill Felblade Devastator##118782+, Corrupted Brute##116664+, Dreadflame Corruptor##118783+
click Fel Corruptor
Halt the corruption efforts |q 46116/1 |goto 64.03,19.55
|next "Court_Of_Farondis_WQ"
step
label quest-41896
Follow the path |goto Azsuna/0 40.60,12.39 < 30 |only if walking
Follow the path |goto Azsuna/0 38.93,15.22 < 30 |only if walking
accept Operation Murloc Freedom##41896 |goto 37.78,17.05
|tip You will accept this quest automatically.
step
Kill Timeworn enemies around this area.
|tip WARNING: You will be flagged for PvP by being in this area.
Clear Timeworn Strand of the Naga Invaders and Slay Players |q 41896/1 |goto 37.78,17.05
|next "Court_Of_Farondis_WQ"
step
label quest-42623
Follow the path |goto Azsuna/0 56.00,60.51 < 30 |only if walking
Cross the water |goto 57.21,62.60 < 30 |only if walking
accept Piracy Doesn't Pay##42623 |goto 60.32,69.34
|tip You will accept this quest automatically.
stickystart "Slay_Dread_Pirates"
step
click Kegs of Spicy Grog
|tip They look like wooden barrels on the ground around this area.
Smash #5# Kegs of Spicy Grog |q 42623/2 |goto 60.24,69.94
|tip Use the Throw Grog ability that appears as a button on the screen to smash the Kegs of Spicy Grog.
step
label "Slay_Dread_Pirates"
Kill enemies around this area
Slay #12# Dread Pirates |q 42623/1 |goto 60.32,69.34
|next "Court_Of_Farondis_WQ"
step
label quest-41268
Follow the path |goto Azsuna/0 49.28,29.28 < 25 |only if walking
accept Queen Queenfish##41268 |goto 52.74,31.23
|tip You will accept this quest automatically.
step
kill Queen Queenfish##104258 |q 41268/1 |goto 52.74,31.23
|tip Queen Queenfish swims up and down the river. Follow the river north to find it.
|next "Court_Of_Farondis_WQ"
step
label quest-41266
Follow the path |goto Azsuna/0 57.25,59.04 < 25 |only if walking
Follow the path |goto 60.00,58.11 < 25 |only if walking
Follow the path |goto 62.99,56.35 < 25 |only if walking
Follow the path |goto 65.09,54.84 < 25 |only if walking
accept Raft Fishing##41266 |goto 67.32,54.99
|tip You will accept this quest automatically.
step
talk Alynrus Nightcast##109735
Ask him: "_Do you happen to have an extra raft I can borrow?_"
Fish from Blue Barracude schools |cast Fishing##131474
collect 10 Blue Barracuda##134566 |q 41266/1 |goto 68.02,55.78
|next "Court_Of_Farondis_WQ"
step
label quest-42108
Follow the path up |goto Azsuna/0 45.48,42.20 < 30 |only if walking
Cross the water |goto 46.42,40.50 < 30 |only if walking
accept Rally the Nightwatchers##42108 |goto 47.27,37.56
|tip You will accept this quest automatically.
stickystart "Rally_Nightwatchers"
step
Go up the steps |goto 46.23,36.45 < 30 |only if walking
kill Fathom-Commander Zarrin##88090 |q 42108/2 |goto 45.02,36.89
step
Follow the path |goto 46.40,36.39 < 30 |only if walking
Go up the steps |goto 47.46,34.82 < 30 |only if walking
kill Valiyaka the Stormbringer##89650 |q 42108/1 |goto 47.30,34.37
step
label "Rally_Nightwatchers"
Use the Rally the Nightwatchers ability near Nar'thalas Nightwatchers
|tip It appears as a button on the screen.
|tip The Nar'thalas Nightwatchers look like friendly npc's standing or fighting enemies around this area.
Rally #10# Nightwatchers |q 42108/3 |goto 46.48,36.51
|next "Court_Of_Farondis_WQ"
step
label quest-42123
Follow the path |goto Azsuna/0 50.58,30.16 < 30 |only if walking
accept Reclaiming Llothien##42123 |goto 54.52,29.01
|tip You will accept this quest automatically.
stickystart "Llothien_Prowlers"
step
kill Pridelord Meowl##90901 |q 42123/2 |goto 56.07,29.02
|tip Inside the building.
step
label "Llothien_Prowlers"
kill 10 Llothien Prowler##90313+ |q 42123/1 |goto 54.52,29.01
|next "Court_Of_Farondis_WQ"
step
label quest-45058
accept Release the Wardens!##45058 |goto Azsuna/0 60.15,24.60
|tip You will accept this quest automatically.
step
click Captured Scalewarden##115969
kill Wrathguard Doomblade##116026+, Felhound##116027+, Abyssal Devourer##116025+
Repel the Legion forces |q 45058/1 |goto 60.15,24.60
|next "Court_Of_Farondis_WQ"
step
label quest-41324
Follow the path |goto Azsuna/0 50.36,30.27 < 25 |only if walking
accept Silky Prowler Fur##41324 |goto 54.53,29.01
|tip You will accept this quest automatically.
step
kill Llothien Prowler##90313+
|tip Skin the corpses.
collect 12 Silky Prowler Fur##134808 |q 41324/1
|next "Court_Of_Farondis_WQ"
step
label quest-42063
Follow the path |goto Azsuna/0 63.38,30.69 < 25 |only if walking
Follow the path |goto 63.84,34.56 < 25 |only if walking
Follow the path down |goto 65.17,37.86 < 15 |only if walking
accept Size Doesn't Matter##42063 |goto 65.63,41.01
|tip You will accept this quest automatically.
step
click Blottis##105898
Defeat Blottis |q 42063/1 |goto 65.63,41.01
|next "Court_Of_Farondis_WQ"
step
label quest-41259
Follow the path |goto Azsuna/0 43.63,42.24 < 30 |only if walking
Follow the path |goto 39.92,37.45 < 30 |only if walking
Go down toward the water |goto 32.79,30.39 < 30 |only if walking
Cross the water here |goto 32.14,28.66 < 30 |only if walking
|tip Watch out for the Sea Skorg that pats around this area.
Enter the cave |goto 30.12,23.69 < 15 |only if walking
|tip it is on the North side of this island.
accept Slab of Bacon##41259 |goto Azsuna/0 30.12,23.69
step
kill Well-Fed Lion Seal##103784
collect Slice of Bacon##133680 |q 41259/1 |goto Azsuna/0 30.59,25.50
|next "Court_Of_Farondis_WQ"
step
label quest-41551
Follow the path |goto Azsuna/0 40.21,12.55 < 30 |only if walking
Cross the rocks |goto 36.57,12.22 < 30 |only if walking
Climb the rocks |goto 34.69,12.09 < 30 |only if walking
accept Slab of Bacon##41551 |goto 33.65,11.35
|tip On top of the rock.
|tip You will accept this quest automatically.
step
kill Well-Fed Lion Seal##103784
collect collect Thick Slab of Bacon##135511 |q 41551/1 |goto Azsuna/0 33.65,11.35
|next "Court_Of_Farondis_WQ"
step
label quest-41552
Follow the path |goto Azsuna/0 57.66,59.03 < 25 |only if walking
Follow the path |goto 60.14,62.33 < 25 |only if walking
Follow the path |goto 62.00,65.73 < 25 |only if walking
Follow the path |goto 64.97,68.86 < 25 |only if walking
accept Slab of Bacon##41552 |goto 65.05,71.49
|tip You will accept this quest automatically.
step
kill Well-Fed Lion Seal##103784
collect 1 Thick Slab of Bacon##135511 |q 41552/1 |goto 65.05,71.49
|next "Court_Of_Farondis_WQ"
step
label quest-41435
Follow the path |goto Azsuna/0 49.35,29.17 < 30 |only if walking
Follow the path down |goto 51.26,32.66 < 30 |only if walking
Cross the water |goto 52.06,34.75 < 30 |only if walking
accept Smooth Leystone Deposits##41435 |goto 54.59,36.63
|tip You will accept this quest automatically.
step
click Smooth Leystone Deposit##195122
collect Smooth Leystone Ore##141224 |q 41435/1 |goto 54.59,36.63
|tip These veins are found all around the water.
|next "Court_Of_Farondis_WQ"
step
label quest-41582
Follow the path |goto Azsuna/0 63.80,25.70 < 30 |only if walking
accept Smooth Sunrunner Hide##41582 |goto 61.65,23.09
|tip You will accept this quest automatically.
step
kill Equine Sunrunner##91308+
|tip Loot and skin them.
collect 8 Smooth Sunrunner Hide##137628 |q 41582/1 |goto Azsuna/0 60.66,24.83
|next "Court_Of_Farondis_WQ"
step
label quest-45134
Follow the path |goto Azsuna/0 42.65,41.13 < 25 |only if walking
Follow the path up |goto 40.73,36.89 < 25 |only if walking
accept The Soul Harvesters##45134 |goto Azsuna/0 38.41,34.48
|tip You will accept this quest automatically.
stickystart "Harvesters"
step
kill Doom Lord Kro'nak##116297 |q 45134/2 |goto 34.64,33.80
step
label "Harvesters"
kill Doomsworn Harbinger##116281, Foul Soulkeeper##116219, Hellwing Doombringer##116205
Repel the Legion forces |q 45134/1 |goto 38.41,34.48
|next "Court_Of_Farondis_WQ"
step
label quest-44847
Follow the path |goto Azsuna/0 63.42,25.55 < 25 |only if walking
Follow the path |goto 61.28,21.90 < 25 |only if walking
Follow the path |goto 58.67,19.20 < 25 |only if walking
accept Straight From the Source##44847 |goto 58.32,14.33
|tip You will accept this quest automatically.
stickystart "Overseer"
step
Go around the wall |goto 58.32,14.33 < 10 |only if walking
Disable eastern Mana Pylon |q 44847/5 |goto 57.90,14.84
|tip Use the special action button that appears on your screen.
step
Go up the steps |goto 57.62,15.48 < 20 |only if walking
Go up the rocks |goto 56.82,16.80 < 20 |only if walking
Go down the steps |goto 55.67,15.75 < 20  |only if walking
Disable southern Mana Pylon |q 44847/2 |goto 56.56,15.46
|tip Use the special action button that appears on your screen.
step
Disable central Mana Pylon |q 44847/3 |goto 55.89,14.16
|tip Use the special action button that appears on your screen.
step
Follow the path |goto 55.98,12.99 < 20 |only if walking
Disable northwestern Mana Pylon |q 44847/4 |goto 56.30,11.92
|tip Use the special action button that appears on your screen.
step
label "Overseer"
kill Nightfallen Overseer##90616 |q 44847/1 |goto 55.69,14.16
|tip These can be difficult to find on busy days. Search around this area for them.
|next "Court_Of_Farondis_WQ"
step
label quest-46162
accept Subjugator Val'rek##46162 |goto Azsuna/0 41.89,11.67
|tip You will accept this quest automatically.
step
kill 1 Subjugator Val'rek##117067 |q 46162/1 |goto 41.89,11.67
|next "Court_Of_Farondis_WQ"
step
label quest-41288
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Aethril##41288 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Aethril##124101
|tip You can farm these with Herbalism or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Aethril##41288 |goto 46.99,40.67
|next "Court_Of_Farondis_WQ"
step
label quest-41315
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Leystone##41315 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Leystone Ore##123918
|tip You can farm these with Mining or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Leystone##41315 |goto 46.99,40.67
|next "Court_Of_Farondis_WQ"
step
label quest-41327
Follow the path up |goto Azsuna/0 45.44,42.33 < 30 |only if walking
accept Supplies Needed: Stormscales##41327 |goto 46.99,40.67
|tip You will accept this quest automatically.
step
collect 40 Stormscale##124115
|tip You can farm these with Skinning or purchase them from the Auction House.
step
talk Veridis Fallon##107376
turnin Supplies Needed: Stormscales##41327 |goto 46.99,40.67
|next "Court_Of_Farondis_WQ"
step
label quest-43192
Drop down |goto Azsuna/0 46.90,71.56 < 30 |only if walking
accept Terror of the Deep##43192 |goto 43.39,66.65
|tip You will accept this quest automatically.
step
kill Levantus##108829 |q 43192/1 |goto 43.39,66.65
_TANK:_ |only if grouprole("TANK")
|tip Stay in melee range as much as possible or Levantus will use Rampaging Torrent, causing massive raid damage. |only if grouprole("TANK")
_EVERYONE:_
|tip Move into the swirling tornados to gain the Waterwalking buff to move around easier.
|tip Move around Levantus as she casts Massive Spout to avoid heavy damage.
|next "Court_Of_Farondis_WQ"
step
label quest-46170
accept Thar'gokk##46170 |goto Azsuna/0 42.56,41.02
|tip You will accept this quest automatically.
step
kill Thar'gokk##117036
Defeat Thar'gokk |q 46170/1 |goto 42.56,41.02
|next "Court_Of_Farondis_WQ"
step
label quest-46163
Follow the path |goto Azsuna/0 42.21,11.33 < 25 |only if walking
Follow the path |goto 46.69,10.63 < 25 |only if walking
Follow the path |goto 48.99,10.56 < 25 |only if walking
Cross the waterfall |goto 50.33,9.25 < 15 |only if walking
accept Thaz'gul##46163 |goto Azsuna/0 52.02,11.79
|tip You will accept this quest automatically.
step
kill Thaz'gul##117068 |q 46163/1 |goto 52.02,11.79
|next "Court_Of_Farondis_WQ"
step
label quest-42018
Follow the path |goto Azsuna/0 64.39,25.57 < 30 |only if walking
Follow the path |goto 61.14,21.72 < 30 |only if walking
Follow the path |goto 58.45,18.89 < 30 |only if walking
accept Those Beyond Redemption##42018 |goto 57.46,16.50
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Ley Siphons
|tip They look like stands holding white crystal balls around this area.
Assault the Ley-Ruins of Zarkhenar |q 42018/1 |goto 57.46,16.50
|next "Court_Of_Farondis_WQ"
step
label quest-42019
Follow the path |goto Azsuna/0 63.38,30.69 < 30 |only if walking
Follow the path |goto 62.86,34.57 < 30 |only if walking
Follow the path |goto 60.82,37.95 < 30 |only if walking
accept Tip the Scales##42019 |goto 59.98,42.66
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Stolen Nar'thalas Relics
|tip They look like stone vases one of the ground around this area.
Disrupt the Hatecoil Warcamp |q 42019/1 |goto 60.01,42.42
|next "Court_Of_Farondis_WQ"
step
label quest-42506
Follow the path |goto Azsuna/0 43.65,42.26 < 30 |only if walking
Follow the path |goto 40.77,37.52 < 30 |only if walking
Follow the path up |goto 41.06,35.25 < 30 |only if walking
accept Tomes of Yore##42506 |goto 37.40,33.62
|tip You will accept this quest automatically.
step
click A Study of Hexes
Acquire A Study of Hexes |q 42506/1 |goto 37.40,33.62
step
click Healing with Arcana
Acquire Healing with Arcana |q 42506/2 |goto 36.70,34.56
step
click Tash'irel's Edict
Acquire Tash'irel's Edict |q 42506/3 |goto 34.40,33.88
|next "Court_Of_Farondis_WQ"
step
label quest-42159
Follow the path |goto Azsuna/0 45.45,42.28 < 30 |only if walking
accept Training with the Nightwatchers##42159 |goto 46.34,40.39
|tip You will accept this quest automatically.
step
talk Nightwatcher Merayl##106552
Tell him "Let's do battle!"
Defeat Nightwatcher Merayl |q 42159/1 |goto Azsuna/0 46.34,40.39
|next "Court_Of_Farondis_WQ"
step
label "Court_Of_Farondis_WQ"
talk Veridis Fallon##107376 |only if ZGV.questsbyid[42420] and ZGV.questsbyid[42420].complete
|tip Inside the building. |only if ZGV.questsbyid[42420] and ZGV.questsbyid[42420].complete
turnin Court of Farondis##42420 |goto Azsuna/0 46.90,41.43 |only if ZGV.questsbyid[42420] and ZGV.questsbyid[42420].complete
|next "The_Dreamweavers_WQ"
step
label "The_Dreamweavers_WQ"
talk Sylvia Hartshorn##106901 |only if ZGV.questsbyid[42170] and ZGV.questsbyid[42170].complete
turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25 |only if ZGV.questsbyid[42170] and ZGV.questsbyid[42170].complete
|next "Highmountain_Tribes_WQ"
step
label "Highmountain_Tribes_WQ"
talk Ransa Greyfeather##106902 |only if ZGV.questsbyid[42233] and ZGV.questsbyid[42233].complete
turnin Highmountain Tribes##42233 |goto Thunder Totem/0 38.06,46.04 |only if ZGV.questsbyid[42233] and ZGV.questsbyid[42233].complete
|next "The_Valarjar_WQ"
step
label "The_Valarjar_WQ"
talk Valdemar Stormseeker##106904 |only if ZGV.questsbyid[42234] and ZGV.questsbyid[42234].complete
turnin The Valarjar##42234 |goto Stormheim/0 60.26,51.38 |only if ZGV.questsbyid[42234] and ZGV.questsbyid[42234].complete
|next "The_Nightfallen_WQ"
step
label "The_Nightfallen_WQ"
talk First Arcanist Thalyssra##97140 |only if ZGV.questsbyid[42421] and ZGV.questsbyid[42421].complete
turnin The Nightfallen##42421 |goto Suramar/0 36.88,46.61 |only if ZGV.questsbyid[42421] and ZGV.questsbyid[42421].complete |region suramar_shalaran
|next "The_Wardens_WQ"
step
label "The_Wardens_WQ"
talk Marin Bladewing##107379 |only if ZGV.questsbyid[42422] and ZGV.questsbyid[42422].complete
turnin The Wardens##42422 |goto Azsuna/0 48.17,73.90 |only if ZGV.questsbyid[42422] and ZGV.questsbyid[42422].complete
|next "The_Kirin_Tor_Of_Dalaran_WQ"
step
label "The_Kirin_Tor_Of_Dalaran_WQ"
talk Warmage Silva##32725 |only if ZGV.questsbyid[43179] and ZGV.questsbyid[43179].complete
turnin The Kirin Tor of Dalaran##43179 |goto Dalaran L/10 33.44,47.35 |only if ZGV.questsbyid[43179] and ZGV.questsbyid[43179].complete
|next "Choose_World_Quest"
]])
