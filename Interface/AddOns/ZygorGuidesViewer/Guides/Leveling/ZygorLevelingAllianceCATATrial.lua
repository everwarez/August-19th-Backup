local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Dwarf (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
condition_suggested="raceclass('Dwarf') and level<=5",
condition_suggested_exclusive=true,
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",
startlevel=1,
dynamic=true,
endlevel=5
},[[
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Coldridge Valley 67.1,41.3
step
kill 6 Rockjaw Invader##37070 |q 24469/1 |goto 63.6,50.7
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto 67.1,41.3
accept Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
accept Aid for the Wounded##24471 |goto 65.55,41.99
stickystart "Rockjaw_Goons"
step
Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
|tip They look like dwarves kneeling in the snow around this area.
Aid #4# Wounded Coldridge Mountaineers |q 24471/1 |goto 69.3,55.2
step
label "Rockjaw_Goons"
kill 3 Rockjaw Goon##37073 |q 24470/1 |goto 63.29,57.04
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
turnin Aid for the Wounded##24471 |goto 65.55,41.99
step
talk Joren Ironstock##37081
accept Lockdown in Anvilmar##24473 |goto 67.1,41.3
step
Follow the path up |goto 64.78,40.19 < 15 |only if walking
Enter the building |goto 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin Lockdown in Anvilmar##24473 |goto 60.6,21.0
accept First Things First: We're Gonna Need Some Beer##24474
step
talk Grundel Harkin##1104
accept Dwarven Artifacts##24477 |goto 61.7,22.1
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
click Keg of Gnomenbrau##319
collect Cask of Gnomenbrau |q 24474/3 |goto 68.2,27.9
step
Follow the path |goto 63.84,32.68 < 20 |only if walking
click Keg of Stormhammer Stout##319
collect Cask of Stormhammer Stout |q 24474/1 |goto 56.7,28.3
step
Follow the path |goto 49.86,31.86 < 20 |only if walking
click Keg of Theramore Pale Ale##319
collect Cask of Theramore Pale Ale |q 24474/2 |goto 39.82,29.36
step
click Forgotten Dwarven Artifacts##5333
|tip They look like stone tablet pieces on the ground around this area.
collect 5 Forgotten Dwarven Artifact |q 24477/1 |goto 32.11,31.98
step
Follow the path |goto 43.92,34.22 < 20 |only if walking
Enter the building |goto 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Dwarven Artifacts##24477 |goto 61.7,22.1
accept Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin First Things First: We're Gonna Need Some Beer##24474 |goto 61.8,22.5
accept All the Other Stuff##24475 |goto 61.8,22.5
stickystart "Raggedyoungwolf"
stickystart "Boarhaunch"
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact##49751 |q 24486/1 |goto 51.6,47.6
step
label "Raggedyoungwolf"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide##49748 |q 24475/2 |goto 49.5,57.7
step
label "Boarhaunch"
kill Small Crag Boar##708+
collect 3 Boar Haunch##49747 |q 24475/1 |goto 49.5,57.7
step
Enter the building |goto 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin All the Other Stuff##24475 |goto 61.8,22.5
accept Whitebeard Needs Ye##24487 |goto 61.8,22.5
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto 42.7,62.2
accept The Troll Menace##182 |goto 42.7,62.2
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto 43.2,63.1
step
talk Felix Whindlebolt##8416
accept A Refugee's Quandary##3361 |goto 41.9,63.5
stickystart "Frostmane_Troll_Whelps"
step
click Felix's Box##2350
collect Felix Box##10438 |q 3361/1 |goto 21.4,64.1
step
Watch the dialogue
Scout Soothsayer Mirim'koa |q 24489/3 |goto 21.23,66.03
step
click Felix's Chest##318
collect Felix Chest##16313 |q 3361/2 |goto 30.97,84.02
step
Watch the dialogue
Scout Soothsayer Rikkari |q 24489/2 |goto 30.61,84.75
step
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 49.14,80.37
step
Watch the dialogue
Scout Soothsayer Shi'kala |q 24489/1 |goto 49.14,80.37
step
label "Frostmane_Troll_Whelps"
kill 10 Frostmane Troll Whelp##706+ |q 182/1 |goto 49.14,80.37
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto 43.2,63.1
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto 42.7,62.2
accept Ice and Fire##218 |goto 42.7,62.2
step
talk Felix Whindlebolt##8416
turnin A Refugee's Quandary##3361 |goto 41.9,63.5
stickystart "Frostmane_Blades"
stickystart "Frostmane_Novices"
step
Follow the path |goto Coldridge Valley/9 18.18,50.90 < 15 |walk
Follow the path |goto Coldridge Valley/9 34.20,34.63 < 15 |walk
Continue following the path |goto Coldridge Valley/9 50.15,11.84 < 15 |walk
kill Wayward Fire Elemental##37112 |q 218/2 |goto Coldridge Valley/9 66.7,29.2
|tip It paces around on the frozen pond inside the cave.
step
kill Grik'nir the Cold##808 |q 218/1 |goto 76.1,30.8
step
label "Frostmane_Blades"
kill 6 Frostmane Blade##37507 |q 218/4 |goto 76.12,24.16
|tip They are all around this cave.
step
label "Frostmane_Novices"
kill 3 Frostmane Novice##946 |q 218/3 |goto 76.12,24.16
|tip They are all around this cave.
step
Follow the path up |goto 73.60,21.74 < 15 |walk
Continue following the path up |goto 49.29,11.61 < 15 |walk
Follow the path |goto 25.76,46.85 < 15 |walk
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto Coldridge Valley/0 42.7,62.2
accept A Trip to Ironforge##24490 |goto Coldridge Valley/0 42.7,62.2
step
Follow the road up |goto 69.27,45.64 < 20 |only if walking
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto 87.53,44.47
accept Follow that Gyro-Copter!##24491 |goto 87.53,44.47
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto 69.9,44.21
accept Pack Your Bags##24492 |goto 69.9,44.21
step
Follow the path up |goto 64.78,40.19 < 15 |only if walking
Enter the building |goto 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
accept Don't Forget About Us##24493 |goto 61.8,22.5
step
click Leftover Boar Meat##114
|tip On the table.
collect Leftover Boar Meat##49756 |q 24492/3 |goto 62.14,23.58
step
click Beer Barrel##32
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto 62.45,23.47
step
click Wolf-Hide Cloaks##286
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 | goto 62.21,23.98
step
Follow the path |goto 60.75,24.98 < 10 |walk
Leave the building |goto 61.71,31.13 < 15 |only if walking
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto 69.9,44.21
step
Fly to Kharanos |goto Dun Morogh/0 53.3,49.8 < 50 |noway |c |q 24493
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto Dun Morogh/0 53.1,50.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Gnome (1-5)",{
author="support@zygorguides.com",
condition_suggested="raceclass('Gnome') and level<=5",
condition_suggested_exclusive=true,
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",
startlevel=1,
dynamic=true,
endlevel=5
},[[
step
next "normalstart" |only Gnome
next "oddstart" |only if not Gnome
step
label "normalstart"
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh/10 34.0,32.2
step
kill 6 Crazed Leper Gnome##46391+ |q 27670/1 |goto 43.89,32.84
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto 34.0,32.2
accept Report to Carvo Blastbolt##28167 |goto 34.0,32.2
step
Run up the ramp |goto 47.32,32.39 < 15 |walk
talk Carvo Blastbolt##47250
turnin Report to Carvo Blastbolt##28167 |goto 50.9,31.9
accept See to the Survivors##27671 |goto 50.9,31.9
step
Use your Teleport Beacon on Survivors |use Teleport Beacon##62057
|tip They look like cowering, unclothed gnomes around this area.
Rescue #6# Survivors |q 27671/1 |goto 61.3,34.8
step
Run up the ramp |goto 58.77,33.89 < 15 |walk
talk Carvo Blastbolt##47250
turnin See to the Survivors##27671 |goto 50.9,31.9
accept Withdraw to the Loading Room!##28169 |goto 50.9,31.9
step
Follow the path |goto 52.63,37.08 < 15 |walk
Run up the stairs |goto 52.14,63.97 < 15 |walk
Follow the path |goto 54.00,74.87 < 15 |walk
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto 53.1,82.2
accept Decontamination##27635 |goto 53.1,82.2
step
click Sanitron 500##46185
Start the Decontamination Process |q 27635/1 |goto 58.8,81.7
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto 66.3,81.6
accept To the Surface##27674 |goto 66.3,81.6
step
talk Torben Zapblast##46293
Tell him _"Send me to the surface, Torben."_
Speak to Torben Zapblast |q 27674/1 |goto 67.2,84.0
step
talk Nevin Twistwrench##42396
turnin To the Surface##27674 |goto New Tinkertown/0 39.50,38.39
accept The Future of Gnomeregan##26202 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warlock
accept The Future of Gnomeregan##26197 |goto New Tinkertown/0 39.50,38.39 |only Gnome Mage
accept The Future of Gnomeregan##26203 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warrior
accept The Future of Gnomeregan##26206 |goto New Tinkertown/0 39.50,38.39 |only Gnome Rogue
accept The Future of Gnomeregan##26199 |goto New Tinkertown/0 39.50,38.39 |only Gnome Priest
accept The Future of Gnomeregan##31135 |goto New Tinkertown/0 39.50,38.39 |only Gnome Monk
accept The Future of Gnomeregan##42396 |goto New Tinkertown/0 39.50,38.39 |only Gnome Hunter
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto 39.4,28.4
accept Meet the High Tinker##26422 |goto 39.4,28.4
|only Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto 38.0,33.6
accept Meet the High Tinker##26423 |goto 38.0,33.6
|only Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto 40.6,35.4
accept Meet the High Tinker##26425 |goto 40.6,35.4
|only Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto 41.1,29.1
accept Meet the High Tinker##26421 |goto 41.1,29.1
|only Gnome Mage
step
Leave the building |goto 39.58,37.35 < 10 |only if walking
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto 37.7,38.0
accept Meet the High Tinker##26424 |goto 37.7,38.0
|only Gnome Warlock
step
talk Xi, Friend to the Small##63238
turnin The Future of Gnomeregan##31135 |goto 40.1,35.6
accept Meet the High Tinker##31137 |goto 40.1,35.6
|only Gnome Monk
step
talk Muffinus Chromebrew##103614
turnin The Future of Gnomeregan##42396 |goto 41.9,31.6
accept Meet the High Tinker##41218 |goto 41.9,31.6
|only Gnome Hunter
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##31137 |goto 38.7,32.8 |only Gnome Monk
turnin Meet the High Tinker##26424 |goto 38.7,32.8 |only Gnome Warlock
turnin Meet the High Tinker##26421 |goto 38.7,32.8 |only Gnome Mage
turnin Meet the High Tinker##26425 |goto 38.7,32.8 |only Gnome Warrior
turnin Meet the High Tinker##26423 |goto 38.7,32.8 |only Gnome Rogue
turnin Meet the High Tinker##26422 |goto 38.7,32.8 |only Gnome Priest
turnin Meet the High Tinker##41218 |goto 38.7,32.8 |only Gnome Hunter
accept The Fight Continues##26208 |goto 38.7,32.8
step
Watch the dialogue
Learn about Operation: Gnomeregan |q 26208/1 |goto 38.64,32.90
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto 38.64,32.90
accept A Triumph of Gnomish Ingenuity##26566 |goto 38.64,32.90
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto 40.6,28.1
accept Scrounging for Parts##26222 |goto 40.6,28.1
step
click Spare Part##6681+
|tip They look like metal machine parts on the ground all around this area, and inside buildings.
collect 7 Spare Part##57764 |q 26222/1 |goto 39.74,30.27
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto 40.6,28.1
accept A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto 39.2,26.6
step
talk Corporal Fizzwhistle##42630
|tip He's outside, behind the building.
accept Dealing with the Fallout##26265 |goto 38.2,40.2
stickystart "Kill_Living_Contaminants"
stickystart "Collect_Recovered_Possessions"
step
Stand Next to Toxic Geysers
|tip They look like green spots that spew up green liquid in the green pools around this area.
Clean Up #5# Toxic Geysers |q 26205/1 |goto 37.1,50.6
step
label "Kill_Living_Contaminants"
kill 6 Living Contamination##42185+ |q 26265/1 |goto 37.1,50.6
step
label "Collect_Recovered_Possessions"
kill Toxic Sludge##42184+
collect 6 Recovered Possession |q 26264/1 |goto 37.1,50.6
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto 38.2,40.2
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto 39.2,26.6
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Jessup?##26316 |goto 38.4,33.5
step
talk Jessup McCree##42708
turnin What's Keeping Jessup?##26316 |goto 37.3,65.2
accept Get Me Explosives Back!##26285
accept Missing in Action##26284
stickystart "Stolen_Powder_Kegs"
step
click Makeshift Cages
|tip They look like bone cages with brown animal hides laying on them around this area.
Rescue #6# Captured Demolitionists |q 26284/1 |goto 36.8,68.4
step
label "Stolen_Powder_Kegs"
Kill enemies around this area
collect 7 Stolen Powder Keg##58202 |q 26285/1 |goto 36.8,68.4
step
talk Jessup McCree##42708
turnin Get Me Explosives Back!##26285 |goto 37.3,65.2
turnin Missing in Action##26284
accept Finishin' the Job##26318
step
Follow the path |goto New Tinkertown/8 85.64,49.92 < 15 |walk
Follow the path |goto New Tinkertown/8 74.56,37.15 < 15 |walk
Continue following the path |goto New Tinkertown/8 60.62,74.15 < 15 |walk
kill Boss Bruggor##42773 |q 26318/2 |goto New Tinkertown/8 29.6,49.5
|tip He paces in the back of the cave.
step
click Detonator##9277
Detonate the Trogg Tunnel |q 26318/1 |goto 35.4,40.9
step
Follow the path up |goto 33.13,70.69 < 15 |walk
Continue up the path |goto 63.44,71.08 < 15 |walk
Follow the path |goto 77.85,36.62 < 15 |walk
talk Jessup McCree##42708
turnin Finishin' the Job##26318 |goto New Tinkertown/0 37.3,65.2
accept One More Thing##26329 |goto New Tinkertown/0 37.3,65.2
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto 38.8,32.7
accept Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto 38.2,33.7
stickystart "Kill_Crushcogs_Minions"
step
Follow the road |goto 44.15,32.43 < 20 |only if walking
Use the Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200
|tip They look like yellow crab machines around this area.
Destroy #5# Repaired Mechano-Tanks |q 26333/1 |goto 53.2,24.0
step
label "Kill_Crushcogs_Minions"
Kill enemies around this area
Kill #8# Crushcog's Minions |q 26331/1 |goto 53.2,24.0
step
Follow the road |goto 47.22,31.77 < 20 |only if walking
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto 38.2,33.7
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto 38.0,33.6
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto 48.7,52.9
accept Paint it Black##26342 |goto 48.7,52.9
step
Use the Paintinator on Crushcog Sentry-Bots |use Paintinator##58203
Blind #5# Crushcog's Sentry-Bots |q 26342/1 |goto 53.5,45.8
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto 48.7,52.9
accept Down with Crushcog!##26364 |goto 48.7,52.9
step
talk High Tinker Mekkatorque##42849
Talk to High Tinker Mekkatorque |q 26364/1 |goto 57.2,47.5
step
talk High Tinker Mekkatorque##42849
Tell him _"I'm ready to start the assault."_
|tip Follow your allies into battle.
Use the Orbital Targeting Device on Razlo Crushcog |use Orbital Targeting Device##58253
Defeat Razlo Crushcog |q 26364/2 |goto 57.2,47.5
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto 48.7,52.9
accept On to Kharanos##26373 |goto 48.7,52.9
step
label "oddstart"
Follow the road |goto 52.98,57.95 < 20 |only if walking
Continue following the road |goto 64.55,53.51 < 20 |only if walking
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto Dun Morogh,49.9,45.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Human (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn Forest",
condition_suggested="raceclass('Human') and level<=5",
condition_suggested_exclusive=true,
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (5-7)",
startlevel=1,
dynamic=true,
},[[
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Northshire/0 33.6,53.0 |only Human Mage
accept Beating them Back!##28762 |goto Northshire/0 33.6,53.0 |only Human Paladin
accept Beating them Back!##28763 |goto Northshire/0 33.6,53.0 |only Human Priest
accept Beating them Back!##28764 |goto Northshire/0 33.6,53.0 |only Human Rogue
accept Beating them Back!##28765 |goto Northshire/0 33.6,53.0 |only Human Warlock
accept Beating them Back!##28766 |goto Northshire/0 33.6,53.0 |only Human Warrior
accept Beating them Back!##28767 |goto Northshire/0 33.6,53.0 |only Human Hunter
accept Beating Them Back!##31139 |goto Northshire/0 33.6,53.0 |only Human Monk
accept Beating Them Back!##29078 |goto Northshire/0 33.6,53.0 |only if not Human
step
kill 6 Blackrock Battle Worg##49871 |q 28757/1 |goto 29.0,42.9 |only Human Mage
kill 6 Blackrock Battle Worg##49871 |q 28762/1 |goto 29.0,42.9 |only Human Paladin
kill 6 Blackrock Battle Worg##49871 |q 28763/1 |goto 29.0,42.9 |only Human Priest
kill 6 Blackrock Battle Worg##49871 |q 28764/1 |goto 29.0,42.9 |only Human Rogue
kill 6 Blackrock Battle Worg##49871 |q 28765/1 |goto 29.0,42.9 |only Human Warlock
kill 6 Blackrock Battle Worg##49871 |q 28766/1 |goto 29.0,42.9 |only Human Warrior
kill 6 Blackrock Battle Worg##49871 |q 28767/1 |goto 29.0,42.9 |only Human Hunter
kill 6 Blackrock Battle Worg##49871 |q 31139/1 |goto 29.0,42.9 |only Human Monk
kill 6 Blackrock Battle Worg##49871 |q 29078/1 |goto 29.0,42.9 |only if not Human
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto 33.6,53.0 |only Human Mage
accept Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
turnin Beating them Back!##28762 |goto 33.6,53.0 |only Human Paladin
accept Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
turnin Beating them Back!##28763 |goto 33.6,53.0 |only Human Priest
accept Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
turnin Beating them Back!##28764 |goto 33.6,53.0 |only Human Rogue
accept Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
turnin Beating them Back!##28765 |goto 33.6,53.0 |only Human Warlock
accept Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
turnin Beating them Back!##28766 |goto 33.6,53.0 |only Human Warrior
accept Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
turnin Beating them Back!##28767 |goto 33.6,53.0 |only Human Hunter
accept Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
turnin Beating Them Back!##31139 |goto 33.6,53.0 |only Human Monk
accept Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
turnin Beating Them Back!##29078 |goto 33.6,53.0 |only if not Human
accept Lions for Lambs##29079 |goto 33.6,53.0 |only if not Human
step
kill 8 Blackrock Spy##49874 |q 28769/1 |goto 25.4,41.1 |only Human Mage
kill 8 Blackrock Spy##49874 |q 28770/1 |goto 25.4,41.1 |only Human Paladin
kill 8 Blackrock Spy##49874 |q 28771/1 |goto 25.4,41.1 |only Human Priest
kill 8 Blackrock Spy##49874 |q 28772/1 |goto 25.4,41.1 |only Human Rogue
kill 8 Blackrock Spy##49874 |q 28773/1 |goto 25.4,41.1 |only Human Warlock
kill 8 Blackrock Spy##49874 |q 28774/1 |goto 25.4,41.1 |only Human Warrior
kill 8 Blackrock Spy##49874 |q 28759/1 |goto 25.4,41.1 |only Human Hunter
kill 8 Blackrock Spy##49874 |q 31140/1 |goto 25.4,41.1 |only Human Monk
kill 8 Blackrock Spy##49874 |q 29079/1 |goto 25.4,41.1 |only if not Human
|tip They creep around near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
accept Join the Battle!##28784 |only Human Mage
turnin Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
accept Join the Battle!##28785 |only Human Paladin
turnin Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
accept Join the Battle!##28786 |only Human Priest
turnin Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
accept Join the Battle!##28787 |only Human Rogue
turnin Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
accept Join the Battle!##28788 |only Human Warlock
turnin Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
accept Join the Battle!##28789 |only Human Warrior
turnin Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
accept Join the Battle!##28780 |only Human Hunter
turnin Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
accept Join the Battle!##31143 |only Human Monk
turnin Lions for Lambs##29079 |goto 33.6,53.0 |only if not Human
accept Join the Battle!##29080 |goto 33.6,53.0 |only if not Human
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto 35.7,39.8 |only Human Warrior
accept They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
turnin Join the Battle!##28785 |goto 35.7,39.8 |only Human Paladin
accept They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
turnin Join the Battle!##28780 |goto 35.7,39.8 |only Human Hunter
accept They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
turnin Join the Battle!##28786 |goto 35.7,39.8 |only Human Priest
accept They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
turnin Join the Battle!##28788 |goto 35.7,39.8 |only Human Warlock
accept They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
turnin Join the Battle!##28784 |goto 35.7,39.8 |only Human Mage
accept They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
turnin Join the Battle!##28787 |goto 35.7,39.8 |only Human Rogue
accept They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
turnin Join the Battle!##31143 |goto 35.7,39.8 |only Human Monk
accept They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
turnin Join the Battle!##29080 |goto 35.7,39.8 |only if not Human
accept They Sent Assassins##29081 |goto 35.7,39.8 |only if not Human
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto 35.01,38.26 |only Human Warrior
accept Fear No Evil##28809 |goto 35.01,38.26 |only Human Paladin
accept Fear No Evil##28806 |goto 35.01,38.26 |only Human Hunter
accept Fear No Evil##28810 |goto 35.01,38.26 |only Human Priest
accept Fear No Evil##28812 |goto 35.01,38.26 |only Human Warlock
accept Fear No Evil##28808 |goto 35.01,38.26 |only Human Mage
accept Fear No Evil##28811 |goto 35.01,38.26 |only Human Rogue
accept Fear No Evil##29082 |goto 35.01,38.26 |only if not Human
|only if not Monk
stickystart "injuredsoldiers"
step
kill 8 Goblin Assassin##50039 |q 28797/1 |goto 30.7,29.1 |only Human Warrior
kill 8 Goblin Assassin##50039 |q 28793/1 |goto 30.7,29.1 |only Human Paladin
kill 8 Goblin Assassin##50039 |q 28791/1 |goto 30.7,29.1 |only Human Hunter
kill 8 Goblin Assassin##50039 |q 28794/1 |goto 30.7,29.1 |only Human Priest
kill 8 Goblin Assassin##50039 |q 28796/1 |goto 30.7,29.1 |only Human Warlock
kill 8 Goblin Assassin##50039 |q 28792/1 |goto 30.7,29.1 |only Human Mage
kill 8 Goblin Assassin##50039 |q 28795/1 |goto 30.7,29.1 |only Human Rogue
kill 8 Goblin Assassin##50039 |q 29081/1 |goto 30.7,29.1 |only if not Human
step
label "injuredsoldiers"
clicknpc Injured Stormwind Infantry##50047+
|tip They look like dead Alliance soldiers laying on the ground around this area.
Revive #4# Injured Soldiers |q 28813/1 |goto 30.7,29.1 |only Human Warrior
Revive #4# Injured Soldiers |q 28809/1 |goto 30.7,29.1 |only Human Paladin
Revive #4# Injured Soldiers |q 28806/1 |goto 30.7,29.1 |only Human Hunter
Revive #4# Injured Soldiers |q 28810/1 |goto 30.7,29.1 |only Human Priest
Revive #4# Injured Soldiers |q 28812/1 |goto 30.7,29.1 |only Human Warlock
Revive #4# Injured Soldiers |q 28808/1 |goto 30.7,29.1 |only Human Mage
Revive #4# Injured Soldiers |q 28811/1 |goto 30.7,29.1 |only Human Rogue
Revive #4# Injured Soldiers |q 29082/1 |goto 30.7,29.1 |only if not Human
|only if not Monk
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto 35.01,38.26 |only Human Warrior
turnin Fear No Evil##28809 |goto 35.01,38.26 |only Human Paladin
turnin Fear No Evil##28806 |goto 35.01,38.26 |only Human Hunter
turnin Fear No Evil##28810 |goto 35.01,38.26 |only Human Priest
turnin Fear No Evil##28812 |goto 35.01,38.26 |only Human Warlock
turnin Fear No Evil##28808 |goto 35.01,38.26 |only Human Mage
turnin Fear No Evil##28811 |goto 35.01,38.26 |only Human Rogue
turnin Fear No Evil##29082 |goto 35.01,38.26 |only if not Human
|only if not Monk
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
accept The Rear is Clear##28823 |goto 35.7,39.8 |only Human Warrior
turnin They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
accept The Rear is Clear##28819 |goto 35.7,39.8 |only Human Paladin
turnin They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
accept The Rear is Clear##28817 |goto 35.7,39.8 |only Human Hunter
turnin They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
accept The Rear is Clear##28820 |goto 35.7,39.8 |only Human Priest
turnin They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
accept The Rear is Clear##28822 |goto 35.7,39.8 |only Human Warlock
turnin They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
accept The Rear is Clear##28818 |goto 35.7,39.8 |only Human Mage
turnin They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
accept The Rear is Clear##28821 |goto 35.7,39.8 |only Human Rogue
turnin They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
accept The Rear is Clear##31145 |goto 35.7,39.8 |only Human Monk
turnin They Sent Assassins##29081 |goto 35.7,39.8 |only if not Human
accept The Rear is Clear##29083 |goto 35.7,39.8 |only if not Human
step
talk Marshal McBride##197
|tip Standing at the entrance of the building.
turnin The Rear is Clear##28823 |goto 33.6,53.0 |only Human Warrior
turnin The Rear is Clear##28819 |goto 33.6,53.0 |only Human Paladin
turnin The Rear is Clear##28817 |goto 33.6,53.0 |only Human Hunter
turnin The Rear is Clear##28820 |goto 33.6,53.0 |only Human Priest
turnin The Rear is Clear##28822 |goto 33.6,53.0 |only Human Warlock
turnin The Rear is Clear##28818 |goto 33.6,53.0 |only Human Mage
turnin The Rear is Clear##28821 |goto 33.6,53.0 |only Human Rogue
turnin The Rear is Clear##31145 |goto 33.6,53.0 |only Human Monk
turnin The Rear is Clear##29083 |goto 33.6,53.0 |only if not Human
accept Blackrock Invasion##26389 |goto 33.6,53.0
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto 33.4,54.7
stickystart "Collect_Blackrock_Orc_Weapons"
step
Use Milly's Fire Extinguisher on Fires |use Milly's Fire Extinguisher##58362
Extinguish #8# Vineyard Fires |q 26391/1 |goto 54.4,78.6
step
label "Collect_Blackrock_Orc_Weapons"
Kill enemies around this area
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto 54.4,78.6
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto 33.4,54.7
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto 33.6,53.0
accept Ending the Invasion!##26390 |goto 33.6,53.0
step
Follow the path |goto 36.65,58.37 < 20 |only if walking
kill Kurtok the Slayer##42938 |q 26390/1 |goto 65.1,48.1
step
Follow the path |goto 40.35,60.10 < 20 |only if walking
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto 33.6,53.0
accept Report to Goldshire##54 |goto 33.6,53.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Death Knight (55-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Death Knight 55-58",
condition_valid="raceclass('DeathKnight') ",
condition_valid_msg="Death Knight only.",
condition_suggested="raceclass('DeathKnight') and not completedq(13188)",
condition_suggested_exclusive=true,
condition_end="completedq(13188)",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)",
startlevel=55,
dynamic=true,
endlevel=58
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto 48,28.5
accept The Emblazoned Runeblade##12619 |goto 48,28.5
step
click Battle-worn Sword##7961
collect Battle-worn Sword##38607 |c |goto 47.4,31 |q 12619
step
Use the Battle-worn Sword next to the Runeforge |use Battle-worn Sword##38607
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto 48,28.5
accept Runeforging: Preparation For Battle##12842 |goto 48,28.5
step
Use the Runeforging ability near the Runeforge |cast Runeforging##53428
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto 48,28.5
accept The Endless Hunger##12848 |goto 48,28.5
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.50,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto 48,28.5
accept The Eye Of Acherus##12636 |goto 48,28.5
step
Follow the path |goto 49.81,31.94 < 20 |walk
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto 51.34,35.18
accept Death Comes From On High##12641 |goto 51.34,35.18
step
click Eye of Acherus Control Mechanism##8123
Take Control of the Eye of Acherus |havebuff The Eye of Acherus |goto 52.13,35.21 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the Recall Eye of Acherus ability |petaction 5
Click Here After You Return to Ebon Hold |confirm |c |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto 51.34,35.18
accept The Might Of The Scourge##12657 |goto 51.34,35.18
step
Walk onto the teleport pad |goto 50.49,33.37 |n
Teleport Upstairs |goto 50.13,32.49 < 10 |noway |c |q 12657
step
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56 |instant
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
turnin Report To Scourge Commander Thalanor##12850 |goto 50.70,35.09
accept The Scarlet Harvest##12670 |goto 50.70,35.09
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto 52.5,34.6
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.48,33.15
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 15 |only if walking
click Abandoned Mail##4851
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.26,46.15 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusaders |q 12678/1 |goto 52.2,45.9
stickystart "Saronite_Arrows"
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 56.4,45
step
label "Saronite_Arrows"
click Saronite Arrow##8094+
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.2,49.4
step
click Havenshire Horse
|tip They are all around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |c |q 12680
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Continue up the path |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
Use the Deliver Stolen Horse ability next to Salanar the Horseman
|tip He walks back and forth along this path.
Successfully Steal the Horse |goto 52.8,34.1 |q 12680/1
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto 52.5,34.6
accept Into the Realm of Shadows##12687 |goto 52.5,34.6
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 30 |only if walking
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Click Here After You Steal an Acherus Deathcharger |confirm |c |goto 55.6,43.2 |q 12687
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Use the Horseman's Call ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
Follow the path up |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto 52.5,34.6
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.3,34
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.3,34
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking
Use the Gift of the Harvester on Scarlet Miners |use Gift of the Harvester##39253
|tip They appear at the entrance of the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |c |goto 58.18,31.01 |q 12698
|tip The ghouls that count for the quest are more brown in color and have yellow circles around their feet.
step
Follow the path up |goto 57.03,31.24 < 20 |only if walking
Follow the path |goto 54.69,31.79 < 20 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.1,35
accept An Attack Of Opportunity##12700 |goto 54.1,35
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.3,34
accept Massacre At Light's Point##12701 |goto 52.3,34
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking |n
Follow the path |goto 57.13,31.39 < 20 |only if walking |n
Follow the path |goto 58.05,33.31 < 15 |only if walking |n
Find the Inconspicuous Mine Cart |goto 58.50,33.03 < 15 |c |q 12701
step
click Inconspicuous Mine Car##7997
Ride in the Inconspicuous Mine Cart |goto 58.50,33.03 > 30 |c |q 12701
step
Ride to the Scarlet Fleet Ship |goto 67.94,46.09 < 20 |c |q 12701
step
click Scarlet Cannon##245
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar to shoot the soldiers on the beach.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.56,46.07
step
Use the Skeletal Gryphon Escape ability
Escape to Death's Breach |goto 52.6,34.5 < 20 |noway |c |q 12701
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.3,34
accept Victory At Death's Breach!##12706 |goto 52.3,34
step
clicknpc Scourge Gryphon##29501 |goto 53.1,32.5 |n
Fly Up to Archerus |goto 51.1,34.7 < 20 |noway |c |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto 52.1,35 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
Follow the path down |goto 50.75,38.22 < 20 |only if walking
Continue down the path |goto 50.62,40.87 < 20 |only if walking
Follow the path |goto 52.83,45.08 < 20 |only if walking
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.9,52.4
step
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Crusader_Skulls"
stickystart "Citizens_Of_New_Avalaon"
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Enter the building |goto 57.67,64.41 < 10 |walk
click Empty Cauldron##7199
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.8,61.8
step
Leave the building |goto 57.67,64.41 < 10 |walk
Follow the path |goto 58.48,64.68 < 15 |only if walking
click Iron Chain##8040
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Follow the path |goto 59.66,61.13 < 20 |only if walking
Follow the path |goto 58.24,65.68 < 20 |only if walking
Run up the stairs |goto 54.23,70.21 < 15 |only if walking
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##928
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Crusader_Skulls"
Kill Scarlet enemies around this area
kill Citizen of New Avalon##28942+
|tip Usually inside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Usually inside the buildings around this area.
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.9,52.4
accept Noth's Special Brew##12717 |goto 55.9,52.4
step
click Plague Cauldron##4271
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
Use the Ornate Jeweled Box |use Ornate Jeweled Box##39418
|tip Equip Keleseth's Persuader.
Click Here After You Equip Keleseth's Persuader |confirm |c |q 12720
step
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Kill Scarlet enemies around this area
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Reveal the "Crimson Dawn" |q 12720/1 |goto 55.8,65.8
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Continue following the path |goto 56.29,68.44 < 20 |only if walking
Follow the path |goto 57.12,75.46 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Follow the path |goto 57.00,77.83 < 20 |only if walking
Enter the building |goto 61.10,68.06 < 15 |walk
Follow the path |goto 62.22,68.69 < 10 |walk
Follow the path |goto 62.40,69.32 < 10 |walk
Run down the stairs |goto 62.77,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##2951
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##8051
|tip It looks like a thick book sitting on a long table upstairs in a big open room in the fort.
collect New Avalon Patrol Schedule|q 12724/1 |goto 63.0,68.3
step
Leave the building |goto 61.08,68.08 < 15 |walk
Follow the path up |goto 58.70,71.30 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
Follow the path |goto 52.66,80.93 < 15 |only if walking
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 52.9,81.5
accept A Special Surprise##12742 |goto 52.9,81.5 |only Human
accept A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
accept A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
accept A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
accept A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
accept A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
accept A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
accept A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
accept A Special Surprise##12748 |goto 52.9,81.5 |only Orc
accept A Special Surprise##12749 |goto 52.9,81.5 |only Troll
accept A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
accept A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
step
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto 54.5,83.4
|tip Inside the building.
|only Draenei
step
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.2,83.9
|tip Inside the building.
|only NightElf
step
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.9,83.8
|tip Inside the building.
|only Gnome
step
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.5,83.8
|tip Inside the building.
|only Human
step
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54,83.3
|tip Inside the building.
|only Dwarf
step
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.29
|tip Inside the building.
|only Worgen
step
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.50,83.85
|tip Inside the building.
|only Tauren
step
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.31
|tip Inside the building.
|only BloodElf
step
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.27
|tip Inside the building.
|only Orc
step
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.75
|tip Inside the building.
|only Troll
step
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto 53.54,83.30
|tip Inside the building.
|only Scourge
step
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.11,83.77
|tip Inside the building.
|only Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 52.9,81.5 |only Human
turnin A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
turnin A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
turnin A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
turnin A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
turnin A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
turnin A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
turnin A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
turnin A Special Surprise##12748 |goto 52.9,81.5 |only Orc
turnin A Special Surprise##12749 |goto 52.9,81.5 |only Troll
turnin A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
turnin A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
accept A Sort Of Homecoming##12751 |goto 52.9,81.5
step
Follow the path |goto 52.72,80.46 < 15 |only if walking
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
Use the Makeshift Cover |use Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.97,78.57
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
Follow the path down |goto 60.13,76.98 < 15 |only if walking
Follow the path down |goto 60.47,80.43 < 20 |only if walking
Follow the path |goto 62.90,85.29 < 20 |only if walking
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up |goto 63.40,85.39 < 20 |only if walking
Continue up the path |goto 61.76,83.29 < 20 |only if walking
Continue up the path |goto 60.55,79.94 < 20 |only if walking
Follow the path up |goto 60.30,77.04 < 15 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
click Portal to Acherus##8046 |goto 56.18,80.04 |n
Teleport to Acherus |goto 50.2,32.6 < 20 |noway |c |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto 52.08,35.03 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12778
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
Use the Horn of the Frostbrood |use Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |c |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.8,61
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 55.8,61
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.47,37.18 < 20 |c |q 12779
|tip Don't click the red arrow to stop controlling the Frostbrood Vanquisher yet.
step
Stop Controlling the Frostbrood Vanquisher |outvehicle |c |goto 52.53,37.39 |q 12779
|tip Click the red arrow on your action bar.
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Follow the path |goto 50.16,31.36 < 20 |only if walking
Enter the tunnel |goto 49.13,28.43 < 15 |only if walking
Leave the tunnel |goto 47.35,24.82 < 15 |only if walking
Follow the path |goto 46.77,22.04 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 15 |only if walking
Follow the path |goto 36.04,24.04 < 20 |only if walking
talk Scourge Commander Thalanor##31082
|tip He paces back and forth.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |c |goto 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.11,39.16
accept Taking Back Acherus##13165 |goto 39.11,39.16
step
Use your Death Gate spell
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.7,50.0 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
step
Walk onto the teleport pad |goto 83.19,48.90 |n
Teleport Downstairs |goto 82.68,47.79 < 10 |noway |c |q 13166
step
Kill enemies around this area
Slay #10# Scourge |q 13166/2 |goto 81.99,46.37
step
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
step
Walk onto the teleport pad |goto 83.28,49.12 |n
Teleport Upstairs |goto 83.28,49.12 < 5 |noway |c |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46 |only Alliance
accept Saurfang's Blessing##13189 |goto 83.44,49.46 |only Horde
step
click Portal to Orgrimmar |goto 84.55,50.46 |n
Teleport to Orgrimmar |goto Durotar/0 45.6,13.5 < 20 |noway |c |q 13189
|only Horde
step
Enter the building |goto Orgrimmar/1 49.90,75.62 < 10 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Saurfang's Blessing##13189 |goto Orgrimmar/1 48.27,70.97
|only Horde
step
click Portal to Stormwind |goto 83.65,51.34 |n
Teleport to Stormwind City |goto Elwynn Forest/0 33.4,52 < 20 |noway |c |q 13188
|only Alliance
step
Enter the building |goto Stormwind City/0 80.60,37.89 < 15 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City/0 85.8,31.7
|only Alliance
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (5-7)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn_2",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (7-10)",
startlevel=5.05,
dynamic=true,
},[[
step
Follow the path |goto Northshire/0 29.30,73.25 < 15 |only if walking
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##37112 |goto Elwynn Forest/0 45.4,49.0
step
Follow the path |goto 44.91,53.73 < 20 |only if walking
Continue following the path |goto 44.48,58.78 < 20 |only if walking
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto 42.1,65.9 |only if havequest(54) or completedq(54)
accept The Fargodeep Mine##62 |goto 42.1,65.9
step
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto 42.14,67.26
step
talk William Pestle##253
|tip Inside the building.
accept Kobold Candles##60 |goto 43.3,65.7
step
talk Innkeeper Farley##295
|tip Inside the building.
turnin Rest and Relaxation##37112 |goto 43.8,65.8
step
talk Innkeeper Farley##295
|tip Inside the building.
home Goldshire |q 26393 |future |goto 43.8,65.8
step
talk Smith Argus##514
|tip Inside the building.
accept A Swift Message##26393 |goto 41.71,65.55
|only Human
step
talk Bartlett the Brave##42983
turnin A Swift Message##26393 |goto 41.7,64.6
accept Continue to Stormwind##26394 |goto 41.7,64.6
|only Human
step
Enter the building |goto Stormwind City/0 76.65,61.28 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##26394 |goto Stormwind City/0 77.2,61.0
accept Dungar Longdrink##26395 |goto Stormwind City/0 77.2,61.0
|only Human
step
talk Dungar Longdrink##352
turnin Dungar Longdrink##26395 |goto 70.9,72.5
accept Return to Argus##26396 |goto 70.9,72.5
|only Human
step
talk Dungar Longdrink##352 |goto 70.94,72.47 |n
Fly to Goldshire, Elwynn |goto 70.94,72.47 > 30 |noway |c |q 26396
|only Human
step
Return to Goldshire |goto Elwynn Forest/0 41.8,64.6 < 20 |c |q 26396
|only Human
step
talk Smith Argus##514
|tip Inside the building.
turnin Return to Argus##26396 |goto 41.71,65.55
|only Human
stickystart "Gold_Dust"
stickystart "Large_Candles"
step
Follow the path |goto 41.95,68.80 < 30 |only if walking
Follow the path |goto 40.93,81.25 < 20 |only if walking
Follow the path down |goto 39.97,82.54 < 15 |only if walking
Follow the path |goto Elwynn Forest/1 42.40,77.00 < 10 |walk
Explore the Fargodeep Mine |q 62/1 |goto Elwynn Forest/1 55.2,59.6
step
label "Gold_Dust"
Kill Kobold enemies around this area
|tip All around inside and outside the mine.
collect 10 Gold Dust##773 |q 47/1 |goto 53.8,60.1
step
label "Large_Candles"
Kill Kobold enemies around this area
|tip All around inside and outside the mine.
collect 8 Large Candle##772 |q 60/1 |goto 53.8,60.1
step
talk William Pestle##253
|tip Inside the building.
turnin Kobold Candles##60 |goto Elwynn Forest/0 43.3,65.7
accept A Visit With Maybell##26150 |goto Elwynn Forest/0 43.3,65.7
step
talk Marshal Dughan##240
turnin The Fargodeep Mine##62 |goto 42.1,65.9
accept The Jasperlode Mine##76 |goto 42.1,65.9
step
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto 42.14,67.26
step
Follow the path |goto 41.49,71.97 < 20 |only if walking
Follow the path |goto 41.79,81.07 < 30 |only if walking
talk Maybell Maclure##251
|tip Inside the building.
turnin A Visit With Maybell##26150 |goto 43.15,89.62
accept Young Lovers##106 |goto 43.15,89.62
step
Follow the path |goto 40.22,87.72 < 20 |only if walking
Follow the path |goto 36.53,87.13 < 20 |only if walking
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto 34.48,84.25
step
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto 29.84,85.99
accept Speak with Gramma##111 |goto 29.84,85.99
step
talk Gramma Stonefield##248
|tip Inside the building.
turnin Speak with Gramma##111 |goto 34.95,83.87
accept Note to William##107 |goto 34.95,83.87
step
Follow the path |goto 36.53,87.13 < 20 |only if walking
Follow the path |goto 40.22,87.72 < 20 |only if walking
talk Billy Maclure##247
turnin Lost Necklace##85 |goto 43.13,85.72
accept Pie for Billy##86 |goto 43.13,85.72
step
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto 42.1,86.6
step
Follow the path |goto 40.22,87.72 < 20 |only if walking
Follow the path |goto 36.53,87.13 < 20 |only if walking
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto 34.48,84.25
accept Back to Billy##84 |goto 34.48,84.25
step
Follow the path |goto 36.53,87.13 < 20 |only if walking
Follow the path |goto 40.22,87.72 < 20 |only if walking
talk Billy Maclure##247
turnin Back to Billy##84 |goto 43.13,85.72
accept Goldtooth##87 |goto 43.13,85.72
step
Follow the path up |goto 41.21,82.58 < 20 |only if walking
kill Goldtooth##327
collect Bernice's Necklace##981 |q 87/1 |goto 40.1,80.6
step
Follow the path |goto 40.30,82.74 < 20 |only if walking
Follow the path |goto 39.02,86.82 < 20 |only if walking
Follow the path |goto 36.53,87.13 < 20 |only if walking
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto 34.48,84.25
step
talk Ma Stonefield##244
accept Princess Must Die!##88 |goto 34.66,84.48
step
kill Princess##330
|tip She's a bigger boar that walks around this area.
collect Brass Collar##1006 |q 88/1 |goto 33.0,84.7
step
talk Ma Stonefield##244
turnin Princess Must Die!##88 |goto 34.66,84.48
step
talk William Pestle##253
|tip Inside the building.
turnin Note to William##107 |goto 43.3,65.7
accept Collecting Kelp##112 |goto 43.3,65.7
step
talk Remy "Two Times"##241
accept A Fishy Peril##40 |goto 42.14,67.26
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto 42.1,65.9
accept Further Concerns##35 |goto 42.1,65.9
step
Follow the path |goto 43.10,67.07 < 20 |only if walking
Kill Murloc enemies around this area
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto 49.5,66.3
step
talk William Pestle##253
|tip Inside the building.
turnin Collecting Kelp##112 |goto 43.3,65.7
Watch the dialogue
accept The Escape##114 |goto 43.3,65.7
step
Follow the path |goto 41.49,71.97 < 20 |only if walking
Follow the path |goto 41.79,81.07 < 30 |only if walking
talk Maybell Maclure##251
turnin The Escape##114 |goto 43.15,89.62
step
Follow the path |goto 42.20,82.51 < 30 |only if walking
Follow the path up |goto 42.19,76.85 < 20 |only if walking
talk Marshal Dughan##240
Tell him _"I wish to ride the Stormwind charger, sir."_
Begin Riding the Stormcharger |invehicle |c |goto 42.1,65.9 |q 35
step
Ride to the Eastvale Logging Camp |goto 73.92,72.55 < 20 |c |q 35
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Elwynn Forest (1-10)\\Elwynn Forest (7-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn_3",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-15)",
startlevel=7.2,
dynamic=true,
},[[
step
talk Guard Thomas##261
turnin Further Concerns##35 |goto Elwynn Forest/0 74.0,72.2 |only if havequest(35) or completedq(35)
accept Find the Lost Guards##37 |goto Elwynn Forest/0 74.0,72.2 |only if havequest(35) or completedq(35)
accept Protect the Frontier##52 |goto Elwynn Forest/0 74.0,72.2
step
click Bounty Board##2491
accept Bounty on Murlocs##46 |goto 74.0,72.3
accept Wanted: James Clark##26152 |goto 74.0,72.3
step
Cross the bridge |goto 74.29,72.53 < 10 |only if walking
talk Sara Timberlain##278
|tip Standing in front of the house.
accept Fine Linen Goods##83 |goto 79.46,68.72
stickystart "Gold_Pickup_Schedule"
step
kill James Clark##13159
|tip He walks around inside the house.
collect James Clark's Head##57122 |q 26152/1 |goto 78.7,67.1
step
label "Gold_Pickup_Schedule"
kill James Clark##13159
|tip He walks around inside the house.
collect Gold Pickup Schedule##1307 |n
|tip You will accept a quest upon looting this item.
accept The Collector##123 |goto 78.7,67.1
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Marshal McCree##42256
turnin Wanted: James Clark##26152 |goto 81.86,66.04
turnin The Collector##123 |goto 81.86,66.04
accept Manhunt##147 |goto 81.86,66.04
stickystart "Prowlers_Or_Forest_Wolves"
stickystart "Young_Forest_Bears"
stickystart "Bundles_Of_Wood"
step
Follow the path |goto 75.50,62.56 < 20 |only if walking
click Half-Eaten body##14
turnin Find the Lost Guards##37 |goto 72.66,60.33
accept Discover Rolf's Fate##45 |goto 72.66,60.33
|only if havequest(37) or completedq(37)
stickystop "Prowlers_Or_Forest_Wolves"
stickystop "Young_Forest_Bears"
stickystop "Bundles_Of_Wood"
step
kill Rogue Wizard##474+
collect 6 Linen Scrap##1019 |q 83/1 |goto 74.5,51.6
stickystart "Torn_Murloc_Fins"
step
click Rolf's Corpse##14
turnin Discover Rolf's Fate##45 |goto 79.8,55.5
accept Report to Thomas##71 |goto 79.8,55.5
|only if havequest(45) or completedq(45)
step
label "Torn_Murloc_Fins"
Kill Murloc enemies around this area
collect 8 Torn Murloc Fin##780 |q 46/1 |goto 77.6,59.0
stickystart "Young_Forest_Bears"
stickystart "Bundles_Of_Wood"
step
label "Prowlers_Or_Forest_Wolves"
kill Prowler##118+
kill Gray Forest Wolf##1922+
Slay #8# Prowlers or Forest Wolves |q 52/1 |goto 80.9,61.5
You can find more around [87.8,64.7]
step
label "Young_Forest_Bears"
kill 5 Young Forest Bear##822+ |q 52/2 |goto 80.9,61.5
You can find more around [87.8,64.7]
step
label "Bundles_Of_Wood"
click Bundles of Wood##1248+
|tip They look like small stacks of logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto 80.9,61.5
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto 81.4,66.1
step
talk Sara Timberlain##278
turnin Fine Linen Goods##83 |goto 79.46,68.72
step
Cross the bridge |goto 74.88,72.41 < 15 |only if walking
talk Guard Thomas##261
turnin Report to Thomas##71 |goto 73.97,72.18 |only if havequest(71) or completedq(71)
accept Cloth and Leather Armor##59 |goto 73.97,72.18 |only if havequest(71) or completedq(71)
turnin Protect the Frontier##52 |goto 73.97,72.18
turnin Bounty on Murlocs##46 |goto 73.97,72.18
step
kill Morgan the Collector##473
|tip Inside the building.
collect The Collector's Ring##2239 |q 147/1 |goto 71.0,80.8
step
Follow the path |goto 75.04,73.63 < 30 |only if walking
talk Sara Timberlain##278
|tip Standing in front of the house.
turnin Cloth and Leather Armor##59 |goto 79.46,68.71
|only if havequest(59) or completedq(59)
step
talk Marshal McCree##42256
turnin Manhunt##147 |goto 81.86,66.04
accept Hero's Call: Westfall##26378 |goto 81.86,66.04 |only if not havequest(28562) and not completedq(28562)
step
Follow the path |goto 75.50,62.54 < 20 |only if walking
Follow the path |goto 65.92,59.44 < 20 |only if walking
Follow the path |goto Elwynn Forest/19 45.58,79.54 < 10 |walk
Continue following the path |goto Elwynn Forest/19 43.78,65.99 < 10 |walk
Follow the path up |goto Elwynn Forest/19 37.94,61.48 < 10 |walk
Explore the Jasperlode Mine |q 76/1 |goto Elwynn Forest/19 37.7,52.5
step
talk Marshal Dughan##240
turnin The Jasperlode Mine##76 |goto Elwynn Forest/0 42.1,65.9
accept Westbrook Garrison Needs Help!##239 |goto Elwynn Forest/0 42.1,65.9
step
Follow the road |goto 38.27,67.15 < 30 |only if walking
Continue following the road |goto 35.52,76.39 < 30 |only if walking
Cross the bridge |goto 29.01,77.95 < 20 |only if walking
click Wanted Poster##17
accept Wanted: "Hogger"##176 |goto 24.57,78.23
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto 24.23,74.45
accept Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
stickystart "Painted_Gnoll_Armbands"
step
Follow the path |goto 24.71,79.66 < 20 |only if walking
Continue following the path |goto 25.75,85.65 < 30 |only if walking
kill Hogger##448
|tip Don't worry that he's elite, he's pretty easy to kill.
Deal with "The Hogger Situation" |q 176/1 |goto 24.9,95.0
step
click Westfall Deed##8032
accept Furlbrow's Deed##184 |goto 24.78,95.25
step
label "Painted_Gnoll_Armbands"
Kill Riverpaw enemies around this area
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto 25.2,92.9
step
Cross the water |goto 29.37,89.27 < 20 |only if walking
Follow the path |goto 31.40,86.22 < 20 |only if walking
Follow the road |goto 35.01,76.82 < 30 |only if walking
Continue following the road |goto 37.63,68.08 < 30 |only if walking
talk Marshal Dughan##240
turnin Wanted: "Hogger"##176 |goto 42.1,65.9
step
Follow the road |goto 38.27,67.15 < 30 |only if walking
Continue following the road |goto 35.52,76.39 < 30 |only if walking
Cross the bridge |goto 29.01,77.95 < 20 |only if walking
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-15)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Westfall",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)",
startlevel=10.5,
dynamic=true,
},[[
step
click Hero's Call Board##10016
accept Hero's Call: Westfall!##28562 |goto Stormwind City/0 62.9,71.5
|only Pandaren
step
Cross the bridge |goto Elwynn Forest/0 20.71,79.79 < 20 |only if walking
talk Lieutenant Horatio Laine##42308
|tip He walks around this small area.
turnin Hero's Call: Westfall!##28562 |goto Westfall/0 60.1,19.3 |only if Pandaren and (havequest(28562) or completedq(28562))
turnin Hero's Call: Westfall##26378 |goto Westfall/0 60.1,19.3 |only if not Pandaren and (havequest(26378) or completedq(26378))
accept Murder Was The Case That They Gave Me##26209 |goto Westfall/0 60.1,19.3
turnin Furlbrow's Deed##184 |goto Westfall/0 60.1,19.3
step
Talk to NPC's around this area
Tell them _"Maybe a couple copper will loosen your tongue.  Now tell me, did you see who killed the Furlbrows?"_
Obtain Clue #1 |q 26209/1 |goto 59.0,18.2
step
Talk to NPC's around this area
Tell them _"Maybe a couple copper will loosen your tongue.  Now tell me, did you see who killed the Furlbrows?"_
Obtain Clue #2 |q 26209/2 |goto 59.0,18.2
step
Talk to NPC's around this area
Tell them _"Maybe a couple copper will loosen your tongue.  Now tell me, did you see who killed the Furlbrows?"_
Obtain Clue #3 |q 26209/3 |goto 59.0,18.2
step
Talk to NPC's around this area
Tell them _"Maybe a couple copper will loosen your tongue.  Now tell me, did you see who killed the Furlbrows?"_
Obtain Clue #4 |q 26209/4 |goto 59.0,18.2
step
talk Lieutenant Horatio Laine##42308
|tip He walks around this small area.
turnin Murder Was The Case That They Gave Me##26209 |goto 60.1,19.3
accept Hot On the Trail: The Riverpaw Clan##26213 |goto 60.1,19.3
accept Hot On the Trail: Murlocs##26214 |goto 60.1,19.3
step
Follow the path |goto 56.73,15.62 < 20 |only if walking
Kill Riverpaw enemies around this area
collect Riverpaw Gnoll Clue##57755 |q 26213/1 |goto 56.92,13.78
step
Kill Murloc enemies around this area
collect Murloc Clue##57756 |q 26214/1 |goto 53.58,10.06
step
Follow the path up |goto 54.77,14.01 < 20 |only if walking
talk Lieutenant Horatio Laine##42308
|tip He walks around this small area.
turnin Hot On the Trail: The Riverpaw Clan##26213 |goto 60.1,19.3
turnin Hot On the Trail: Murlocs##26214 |goto 60.1,19.3
accept Meet Two-Shoed Lou##26215 |goto 60.1,19.3
step
talk Two-Shoed Lou##42405
turnin Meet Two-Shoed Lou##26215 |goto 49.65,19.38
accept Livin' the Life##26228 |goto 49.65,19.38
step
talk Jimb "Candles" McHannigan##42498
accept "I TAKE Candle!"##26229 |goto 49.6,19.6
step
talk Mama Celeste##42497
|tip Inside the building.
accept Feast or Famine##26230 |goto 49.54,19.14
step
talk Hoboair##42406
fpath Furlbrow's Pumpkin Farm |goto 49.8,18.7
stickystart "Fresh_Dirt"
step
kill Coyote##834+
collect 6 Coyote Tail##57787 |q 26230/1 |goto 50.4,21.1
step "Fresh_Dirt"
click Fresh Dirt##20
|tip They look like brown mounds all around this area.
collect 5 Fresh Dirt##57789 |q 26230/2 |goto 50.4,21.1
stickystart "Kobold_Diggers"
step
Follow the path |goto 47.42,26.59 < 20 |only if walking
Follow the path |goto Westfall/5 43.10,79.73 < 10 |walk
Continue following the path |goto Westfall/5 45.38,67.44 < 10 |walk
Follow the path |goto Westfall/5 41.95,58.34 < 10 |walk
Continue following the path |goto Westfall/5 41.01,31.32 < 10 |walk
Continue following the path |goto Westfall/5 54.87,11.99 < 10 |walk
Use Two-Shoed Lou's Old House |use Two-Shoed Lou's Old House##57761
Watch the dialogue
Learn About Livin' the Life |q 26228/1 |goto Westfall/5 65.05,27.09
step "Kobold_Diggers"
kill 12 Kobold Digger##1236+ |q 26229/1 |goto Westfall/0 44.67,25.90
|tip They are inside and outside the mine.
step
Follow the path |goto 47.42,26.59 < 20 |only if walking
talk Jimb "Candles" McHannigan##42498
turnin "I TAKE Candle!"##26229 |goto 49.6,19.6
step
talk Two-Shoed Lou##42405
turnin Livin' the Life##26228 |goto 49.65,19.38
accept Lou Parting Thoughts##26232 |goto 49.65,19.38
step
talk Mama Celeste##42497
|tip Inside the building.
turnin Feast or Famine##26230 |goto 49.54,19.14
step
Watch the dialogue
|tip Stand near the 4 Thugs behind the barn until they attack you.
kill Thug##42387+
Eavesdrop on the Thugs |q 26232/1 |goto 48.2,19.6
step
talk Lieutenant Horatio Laine##42558
turnin Lou Parting Thoughts##26232 |goto 49.73,19.51
accept Shakedown at the Saldean's##26236 |goto 49.73,19.51
step
talk Farmer Saldean##233
turnin Shakedown at the Saldean's##26236 |goto 56.04,31.23
accept Times are Tough##26237 |goto 56.04,31.23
step
talk Salma Saldean##235
|tip Inside the building.
accept Westfall Stew##26241 |goto 56.4,30.5
stickystart "Stringy_Fleshripper_Meat"
step
Kill Goretusk enemies around this area
collect 6 Goretusk Flank##57788 |q 26241/2 |goto 50.6,35.7
step
label "Stringy_Fleshripper_Meat"
kill Fleshripper##1109+
|tip They are spread out around this area.
collect 6 Stringy Fleshripper Meat##57786 |q 26241/3 |goto 48.78,30.01
stickystart "Heart_Of_The_Watcher"
stickystart "Okras"
step
kill 10 Harvest Watcher##114 |q 26237/1 |goto 55.5,32.0
step
label "Heart_Of_The_Watcher"
kill Harvest Watcher##114+
collect Harvest Watcher Heart##57935 |n
|tip You will automatically accept a quest upon looting this item.
accept Heart of the Watcher##26252 |goto 55.5,32.0
step
label "Okras"
click Okra##371+
|tip They look like big green bushes in the farm field around this area.
collect 6 Okra##57911 |q 26241/1 |goto 55.5,32.0
step
talk Farmer Saldean##233
turnin Times are Tough##26237 |goto 56.04,31.23
turnin Heart of the Watcher##26252 |goto 56.04,31.23
accept It's Alive!##26257 |goto 56.04,31.23
step
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##26241 |goto 56.4,30.5
step
talk Farmer Saldean##233
accept You Have Our Thanks##26270 |goto 56.04,31.23
step
talk Salma Saldean##235
|tip Inside the building.
turnin You Have Our Thanks##26270 |goto 56.48,30.39
accept Hope for the People##26266 |goto 56.48,30.39
step
Use the Harvest Watcher Heart on an Overloaded Harvest Golem |use Harvest Watcher Heart##57954
|tip They look like broken down Harvest Watchers around this area.
Enable an Overloaded Harvest Golem |q 26257/1 |goto 49.8,34.4
step
kill 25 Energized Harvest Reaper##42342+ |q 26257/2 |goto 45.10,34.64
|tip Use the abilities on your action bar.
|tip Be sure to use the Sprint ability as much as possible to speed this quest up a bit.
step
talk Farmer Saldean##233
turnin It's Alive!##26257 |goto 56.04,31.23
step
Follow the road |goto 58.18,40.64 < 20 |only if walking
Follow the path up |goto 58.45,47.59 < 20 |only if walking
Follow the path |goto 56.57,48.94 < 20 |only if walking
Run up the ramp |goto 55.86,47.81 < 15 |only if walking
talk Hope Saldean##42575
|tip Inside the tower.
turnin Hope for the People##26266 |goto 56.97,47.10
accept Feeding the Hungry and the Hopeless##26271 |goto 56.97,47.10
step
talk Captain Danuvin##821
accept The Westfall Brigade##26287 |goto 56.46,47.57
step
talk Marshal Gryan Stoutmantle##234
accept In Defense of Westfall##26286 |goto 56.33,47.52
step
talk Thor##523
fpath Sentinel Hill |goto 56.6,49.4
step
talk Innkeeper Heather##8931
home Sentinel Hill |goto 52.86,53.71 |q 26287 |future
stickystart "Gnoll_Attack_Orders"
step
Kill Riverpaw enemies around this area
Slay #12# Attacking Riverpaw Gnolls |q 26287/1 |goto 53.9,50.0
step
label "Gnoll_Attack_Orders"
Kill Riverpaw enemies around this area
collect Gnoll Attack Orders##58111 |q 26286/1 |goto 53.9,50.0
step
Follow the road |goto 56.78,54.07 < 20 |only if walking
Use the Westfall Stew near the Homeless |use Westfall Stew##57991
|tip The Homeless include Homeless Stormwind Citizens, West Plains Drifters, and Transients.
|tip They are gathered near the entrances to Sentinel Hill, and along the outside of the walls around this area.
Feed #20# Westfall Homeless |q 26271/1 |goto 56.9,57.6
You can find more around [54.79,57.94]
step
Follow the path |goto 55.89,58.47 < 20 |only if walking
Follow the road |goto 56.76,57.54 < 20 |only if walking
Follow the path |goto 56.57,53.83 < 20 |only if walking
Follow the path up |goto 55.23,50.76 < 20 |only if walking
Run up the ramp |goto 55.86,47.81 < 15 |only if walking
talk Marshal Gryan Stoutmantle##234
turnin In Defense of Westfall##26286 |goto 56.33,47.52
step
talk Captain Danuvin##821
turnin The Westfall Brigade##26287 |goto 56.46,47.57
accept Jango Spothide##26288 |goto 56.46,47.57
step
talk Hope Saldean##42575
|tip Inside the tower.
turnin Feeding the Hungry and the Hopeless##26271 |goto 56.97,47.10
step
talk Marshal Gryan Stoutmantle##234
accept Find Agent Kearnen##26289 |goto 56.29,47.67
stickystart "Riverpaw_Mystics"
stickystart "Riverpaw_Taskmasters"
step
Follow the path down |goto 55.52,48.56 < 15 |only if walking
Follow the road |goto 56.71,56.29 < 20 |only if walking
Follow the path |goto 57.87,65.20 < 20 |only if walking
kill Jango Spothide##42653 |q 26288/3 |goto 62.26,76.43
step
label "Riverpaw_Mystics"
kill 5 Riverpaw Mystic##453 |q 26288/1 |goto 62.42,74.42
step
label "Riverpaw_Taskmasters"
kill 5 Riverpaw Taskmaster##98 |q 26288/2 |goto 62.42,74.42
step
talk Agent Kearnen##7024
turnin Find Agent Kearnen##26289 |goto 68.32,70.36
accept Secrets of the Tower##26290 |goto 68.32,70.36
step
Enter the tower |goto 69.96,74.06 < 10 |walk
Use the Potion of Shrouding |use Potion of Shrouding##58112
|tip Use it inside the tower.
|tip You can safely attack the elite mobs, Agent Kearnen will kill them for you.
Become Invisible |havebuff 132220 |goto 70.5,74.5 |q 26290
step
Watch the dialogue
|tip At the top of the tower.
Reveal Helix's Secret |q 26290/1 |goto 70.42,74.21
step
Leave the tower |goto 69.96,74.06 < 10 |walk
talk Agent Kearnen##7024
turnin Secrets of the Tower##26290 |goto 68.32,70.36
accept Big Trouble in Moonbrook##26291 |goto 68.32,70.36
step
Run up the ramp |goto 55.86,47.81 < 15 |only if walking
talk Marshal Gryan Stoutmantle##234
turnin Big Trouble in Moonbrook##26291 |goto 56.32,47.52
accept To Moonbrook!##26292 |goto 56.32,47.52
step
talk Captain Danuvin##821
turnin Jango Spothide##26288 |goto 56.45,47.58
step
talk Scout Galiaan##878
accept The Legend of Captain Grayson##26371 |goto 56.39,47.34
step
Follow the path |goto 51.37,52.21 < 30 |only if walking
Follow the path |goto 45.71,57.70 < 30 |only if walking
talk Captain Alpert##42425
turnin To Moonbrook!##26292 |goto 42.1,64.1
accept Propaganda##26295 |goto 42.1,64.1
step
talk Tina Skyden##42426
fpath Moonbrook |goto 42.08,63.27
step
kill Moonbrook Thug##42677+
|tip Inside the building.
collect Red Bandana##58117 |n
|tip You will automatically accept a quest upon looting this item.
accept Evidence Collection##26296 |goto 41.5,67.5
stickystart "Red_Bandanas"
step
click Mysterious Propaganda##9669
|tip It looks like a piece of paper nailed to the wall inside the building.
collect Mysterious Propaganda##58116 |q 26295/4 |goto 41.26,66.50
step
click Informational Pamphlet##8128
|tip It looks like a small brown book sitting on a broken barrel inside the building.
collect Informational Pamphlet##58113 |q 26295/1 |goto 41.6,66.4
step
click The Moonbrook Times##9130
|tip It looks like a big piece of paper laying on the ground next to the fountain.
collect Issue of the Moonbrook Times##58114 |q 26295/2 |goto 43.3,69.9
step
click Secret Journal##8135
|tip It looks like a blue book laying on the ground upstairs inside the building.
collect Secret Journal##58115 |q 26295/3 |goto 43.45,66.57
step
label "Red_Bandanas"
kill Moonbrook Thug##42677+
|tip Around and inside the buildings around this area.
collect 6 Red Bandana##58117 |q 26296/1 |goto 43.28,69.89
step
Follow the path |goto 42.95,68.64 < 20 |only if walking
talk Captain Alpert##42425
turnin Propaganda##26295 |goto 42.1,64.1
accept The Dawning of a New Day##26297 |goto 42.1,64.1
turnin Evidence Collection##26296 |goto 42.1,64.1
step
Follow the path |goto 42.95,68.64 < 20 |only if walking
Watch the dialogue
|tip Stand directly behind the wagon full of hay.
Gather Information from the Moonbrook Rally |q 26297/1 |goto 44.00,69.27
step
Follow the path |goto 42.95,68.64 < 20 |only if walking
talk Captain Alpert##42425
turnin The Dawning of a New Day##26297 |goto 42.1,64.1
accept Secrets Revealed##26319 |goto 42.1,64.1
step
talk Thoralius the Wise##42651
turnin Secrets Revealed##26319 |goto 43.0,65.0
accept A Vision of the Past##26320 |goto 43.0,65.0
step
Enter the building |goto 42.56,71.87 < 10 |walk
Run up the stairs |goto 43.37,71.96 < 10 |walk
Follow the path |goto 42.90,72.70 < 10 |walk
Follow the path down |goto 43.45,72.82 < 10 |walk
Follow the path |goto 43.85,73.47 < 10 |walk
Jump down here |goto Westfall/17 64.78,25.23 < 10 |walk
Follow the path |goto Westfall/17 55.91,38.63 < 15 |walk
Follow the path up |goto Westfall/17 48.02,42.70 < 15 |walk
Continue up the path |goto Westfall/17 50.18,53.23 < 15 |walk
Follow the path |goto Westfall/17 52.87,59.53 < 15 |walk
Follow the path down |goto Westfall/17 48.07,67.87 < 15 |walk
Jump down here |goto Westfall/17 38.24,54.47 < 10 |walk
Enter the swirling portal |goto Westfall/17 24.67,50.73 |n
|tip Follow the trail of homeless people to the portal.
Enter the Deadmines |goto The Deadmines |noway |c |q 26320
step
_Inside the Deadmines:_
|tip At the entrance.
Use the Incense Burner |use Incense Burner##58147
Watch the dialogue
Uncover a Vision of the Past |q 26320/1
step
_Enter the Swirling Portal:_
Leave the Deadmines |goto Westfall/17 |noway |c |q 26320
step
Follow the path |goto Westfall/17 34.89,55.30 < 10 |walk |n
Follow the path up |goto Westfall/17 33.60,62.63 < 10 |walk |n
Follow the path |goto Westfall/17 28.27,59.70 < 15 |c |q 26320
step
Cross the bridge |goto 33.56,56.83 < 10 |walk |n
Follow the path |goto 43.47,57.83 < 15 |walk |n
Follow the path |goto 48.89,67.83 < 15 |walk |n
Follow the path down |goto 51.80,55.07 < 15 |walk |n
Continue down the path |goto 48.29,44.60 < 15 |walk |n
Follow the path |goto 57.51,36.23 < 15 |walk |n
Follow the path up |goto 65.02,16.43 < 10 |walk |n
Continue up the path |goto 59.89,15.63 < 10 |walk |n
Cross the wooden planks |goto 63.73,23.83 < 10 |c |q 26320
step
Follow the path |goto 65.69,25.53 < 10 |walk |n
Follow the path |goto 69.82,22.97 < 10 |walk |n
Follow the path up |goto Westfall/0 43.58,72.87 < 10 |walk |n
Follow the path to the top |goto Westfall/0 42.90,72.68 < 10 |walk |n
Run down the stairs |goto Westfall/0 43.37,72.39 < 7 |walk |n
Follow the path |goto Westfall/0 42.74,72.09 < 10 |walk |n
Leave The Defias Hideout |goto Westfall/0 42.56,71.79 < 10 |c |q 26320
step
Follow the path |goto 41.15,71.60 < 20 |only if walking
Continue following the path |goto 36.26,75.27 < 30 |only if walking
Follow the path up |goto 30.86,84.76 < 15 |only if walking
talk Captain Grayson##392
turnin The Legend of Captain Grayson##26371 |goto 30.5,85.6
accept Keeper of the Flame##26347 |goto 30.5,85.6
accept The Coast Isn't Clear##26348 |goto 30.5,85.6
accept The Coastal Menace##26349 |goto 30.5,85.6
stickystart "Murloc_Tidehunters"
stickystart "Murloc_Oracles"
stickystart "Captain_Sanders_Treasure_Map"
step
kill Old Murk-Eye##391
|tip He looks like a gray murloc that walks along this beach, so you may need to search for him.
collect Scale of Old Murk-Eye##3636 |q 26349/1 |goto 32.8,82.6
step
label "Murloc_Tidehunters"
kill 7 Murloc Tidehunter##127 |q 26348/1 |goto 32.8,82.6
|tip You can find more by following the coast north.
step
label "Murloc_Oracles"
kill 7 Murloc Oracle##517 |q 26348/2 |goto 32.8,82.6
|tip You can find more by following the coast north.
step
label "Captain_Sanders_Treasure_Map"
Kill Murloc enemies around this area
|tip You can find more by following the coast north.
collect Captain Sanders' Treasure Map##1357 |n
Use Captain Sanders' Treasure Map |use Captain Sanders' Treasure Map##1357
accept Captain Sanders' Hidden Treasure##26353 |goto 32.8,82.6
step
Follow the path |goto 31.96,82.78 < 20 |only if walking
Continue following the path |goto 30.32,80.86 < 20 |only if walking
Follow the path |goto 25.64,64.61 < 20 |only if walking
Continue following the path |goto 26.53,54.96 < 20 |only if walking
click Captain's Footlocker##8
turnin Captain Sanders' Hidden Treasure##26353 |goto 25.9,47.8
accept Captain Sanders' Hidden Treasure##26354 |goto 25.9,47.8
step
Follow the path up |goto 27.99,45.84 < 15 |only if walking
Follow the path |goto 31.92,47.37 < 20 |only if walking
Follow the path |goto 36.50,50.23 < 20 |only if walking
Follow the path |goto 39.34,49.95 < 20 |only if walking
click Broken Barrel##9
turnin Captain Sanders' Hidden Treasure##26354 |goto 40.5,47.8
accept Captain Sanders' Hidden Treasure##26355 |goto 40.5,47.8
step
kill Chasm Slime##42669+
collect 5 Chasm Ooze |q 26347/1 |goto 40.2,45.8
step
Follow the path up |goto 38.53,38.67 < 15 |only if walking
Continue up the path |goto 38.19,36.58 < 15 |only if walking
Follow the path |goto 37.71,32.14 < 30 |only if walking
Follow the path up |goto 40.67,18.38 < 20 |only if walking
click Old Jug##7
turnin Captain Sanders' Hidden Treasure##26355 |goto 40.63,17.03
accept Captain Sanders' Hidden Treasure##26356 |goto 40.63,17.03
step
Follow the path |goto 35.04,14.84 < 20 |only if walking
Follow the path up |goto 26.62,17.58 < 15 |only if walking
click Locked Chest##1
turnin Captain Sanders' Hidden Treasure##26356 |goto 26.0,16.9
step
Run up the ramp |goto 55.86,47.81 < 15 |only if walking
talk Marshal Gryan Stoutmantle##234
turnin A Vision of the Past##26320 |goto 56.3,47.5
accept Rise of the Brotherhood##26322 |goto 56.3,47.5
step
Watch the dialogue
Witness the Rise of the Brotherhood |q 26322/1 |goto 56.3,47.5
step
Follow the path |goto 40.72,64.61 < 20 |only if walking
Continue following the path |goto 36.26,75.27 < 30 |only if walking
Follow the path up |goto 30.86,84.76 < 15 |only if walking
talk Captain Grayson##392
turnin Keeper of the Flame##26347 |goto 30.5,85.6
turnin The Coast Isn't Clear##26348 |goto 30.5,85.6
turnin The Coastal Menace##26349 |goto 30.5,85.6
step
Follow the path up |goto 30.68,80.05 < 15 |only if walking
Follow the path |goto 36.26,75.27 < 30 |only if walking
Continue following the path |goto 40.72,64.61 < 20 |only if walking
Enter the building |goto Stormwind City/0 80.66,37.81 < 15 |walk
talk Anduin Wrynn##107574
turnin Rise of the Brotherhood##26322 |goto Stormwind City/0 85.8,31.7
accept Return to Sentinel Hill##26370 |goto Stormwind City/0 85.8,31.7
step
talk Marshal Gryan Stoutmantle##234
turnin Return to Sentinel Hill##26370 |goto Westfall/0 56.37,49.63
accept Threat to the Kingdom##26761 |goto Westfall/0 56.37,49.63
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (5-8)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (8-10)",
startlevel=5.05,
dynamic=true,
endlevel=8
},[[
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto Dun Morogh/0 53.93,50.68
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto 54.49,50.84
|only Gnome
step
talk Innkeeper Belm##1247
|tip Inside the building.
buy Rhapsody Malt##2894 |q 384/2 |goto 54.49,50.84
step
talk Innkeeper Belm##1247
|tip Inside the building.
home Thunderbrew Distillery |goto 54.49,50.84 |future |q 315
step
talk Rejold Barleybrew##1374
|tip Outside the building.
accept The Perfect Stout##315 |goto 54.19,51.17
step
talk Captain Tharran##40950
turnin On to Kharanos##26373 |goto 53.7,52.2 |only Gnome
accept Frostmane Aggression##25724 |goto 53.7,52.2
step
Follow the path |goto 53.77,49.56 < 15 |only if walking
kill Crag Boar##1125+
collect 4 Tender Boar Ribs##60496 |q 384/1 |goto 56.0,48.4
step
Follow the path |goto 55.12,48.53 < 20 |only if walking
Follow the path |goto 53.56,50.00 < 15 |only if walking
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto 53.93,50.68
step
Follow the path |goto 53.26,48.52 < 20 |only if walking
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto 49.9,45.0
stickystart "Frostmane_Snowstriders"
stickystart "Shimmerweeds"
step
Follow the path up |goto 51.88,40.78 < 15 |only if walking
kill 5 Frostmane Seer##41121+ |q 25724/1 |goto 49.53,40.67
step
label "Frostmane_Snowstriders"
kill 7 Frostmane Snowstrider##41122+ |q 25724/2 |goto 49.53,40.67
step
label "Shimmerweeds"
click Shimmerweed Basket##644+
|tip They look like wicker baskets on the ground around this area.
collect 7 Shimmerweed##2676 |q 315/1 |goto 48.6,38.0 |goto 49.53,40.67
step
talk Innkeeper Belm##1247
|tip Inside the building.
turnin Bound for Kharanos##26380 |goto 54.49,50.84
step
talk Rejold Barleybrew##1374
|tip Outside the building.
turnin The Perfect Stout##315 |goto 54.19,51.17
step
talk Captain Tharran##40950
turnin Frostmane Aggression##25724 |goto 53.7,52.2
accept Culling the Wendigos##25667 |goto 53.7,52.2
accept Forced to Watch from Afar##313 |goto 53.7,52.2
step
talk Quartermaster Glynna##40951
accept Pilfered Supplies##25668 |goto 53.7,52.1
stickystart "Wendigos"
stickystart "Pilfered_Supplies"
step
Follow the path |goto 52.66,51.80 < 20 |only if walking
Follow the path down |goto 51.15,51.44 < 20 |only if walking
Follow the path |goto Dun Morogh/7 61.51,86.26 < 15 |walk
Continue following the path |goto Dun Morogh/7 58.55,75.55 < 15 |walk
Follow the path |goto Dun Morogh/7 50.73,65.67 < 15 |walk
talk Mountaineer Dunstan##40991
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Dunstan |q 313/1 |goto Dun Morogh/7 51.84,48.34
step
Follow the path |goto 58.03,53.50 < 10 |walk
talk Mountaineer Lewin##40994
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Lewin |q 313/2 |goto 60.29,56.23
step
Follow the path |goto 57.10,51.78 < 10 |walk
Follow the path up |goto 60.43,37.00 < 15 |walk
talk Mountaineer Valgrum##41056
Tell him _"Captain Tharran wants you to deploy your remote observation bots and withdraw to Kharanos."_
Convey the Orders to Mountaineer Valgrum |q 313/3 |goto 61.51,22.23
step
label "Wendigos"
Kill Wendigo enemies around this area
Slay #10# Wendigos |q 25667/1 |goto 60.43,37.00
step
label "Pilfered_Supplies"
click Pilfered Supplies##335+
|tip They look like wooden crates and small barrels on the ground inside the cave.
collect 6 Pilfered Supplies##55151 |q 25668/1 |goto 60.43,37.00
step
Follow the path |goto 54.41,47.39 < 10 |walk
Follow the path up |goto 50.42,62.08 < 15 |walk
Follow the path |goto 61.06,77.80 < 15 |walk
Follow the path up |goto Dun Morogh/0 50.28,53.11 < 20 |only if walking
Follow the path |goto Dun Morogh/0 51.52,51.20 < 20 |only if walking
talk Quartermaster Glynna##40951
turnin Pilfered Supplies##25668 |goto Dun Morogh/0 53.7,52.1
step
talk Captain Tharran##40950
turnin Culling the Wendigos##25667 |goto 53.7,52.2
turnin Forced to Watch from Afar##313 |goto 53.7,52.2
accept Pushing Forward##25792 |goto 53.7,52.2
step
talk Razzle Sprysprocket##1269
|tip He walks around this small area.
accept Operation Recombobulation##412 |goto 53.26,51.92
stickystart "Burn_Constriction_Totems"
stickystart "Gyromechanic_Gears"
step
label "Burn_Constriction_Totems"
Follow the path |goto 54.83,54.32 < 20 |only if walking
Follow the path |goto 55.61,56.24 < 20 |only if walking
Use the Rune of Fire next to Constriction Totems |use Rune of Fire##56009
|tip They look like wooden spiked rods with green orbs at the top of them around this area.
Burn #4# Constriction Totems |q 25792/1 |goto 57.3,56.8
step
label "Gyromechanic_Gears"
kill Frostmane Scavenger##41146+
collect 8 Gyromechanic Gear##3084 |q 412/1 |goto 57.3,56.8
step
Follow the path |goto 55.60,56.22 < 20 |only if walking
Follow the path |goto 54.72,54.32 < 20 |only if walking
talk Captain Tharran##40950
turnin Pushing Forward##25792 |goto 53.7,52.2
step
talk Razzle Sprysprocket##1269
|tip He walks around this small area.
turnin Operation Recombobulation##412 |goto 53.3,51.9
step
talk Captain Tharran##40950
accept Help from Steelgrill's Depot##25838 |goto 53.7,52.2
step
Follow the path |goto 53.62,49.79 < 20 |only if walking
talk Delber Cranktoggle##41363
turnin Help from Steelgrill's Depot##25838 |goto 56.82,47.10
accept The Ultrasafe Personnel Launcher##25839 |goto 56.82,47.10
step
clicknpc Ultrasafe Personnel Launcher##41398
Use the Ultrasafe Personnel Launcher to Deploy to Frostmane Retreat |q 25839/1 |goto 56.72,46.58
step
talk Slamp Wobblecog##41298
turnin The Ultrasafe Personnel Launcher##25839 |goto 62.5,53.7
accept Eliminate the Resistance##25840 |goto 62.5,53.7
accept Strike From Above##25841 |goto 62.5,53.7
step
talk Snevik the Blade##50601
accept The View from Down Here##28868 |goto 62.54,53.81
stickystart "Shrink_Frostmane_Builders"
stickystart "Frostmane_Warriors"
step
Follow the path |goto 63.20,53.16 < 15 |only if walking
Use the Signal Flare |use Signal Flare##56048
|tip Stand in the circle of stones on the ground.
Attack the Northern Frostmane Retreat |q 25841/1 |goto 64.5,54.4
step
kill Battok the Berserker##41284 |q 25840/1 |goto 63.8,55.7
step
Use your Signal Flare |use Signal Flare##56048
Attack the Southern Frostmane Retreat |q 25841/2 |goto 63.1,57.4
step
label "Shrink_Frostmane_Builders"
Use the Viewpoint Equalizer on Frostmane Builders |use Viewpoint Equalizer##67249
|tip They look like trolls hammering and tinkering on things around this area.
Shrink #5# Frostmane Builders |q 28868/1 |goto 62.7,55.1
step
label "Frostmane_Warriors"
kill 5 Frostmane Warrior##41258 |q 25840/2 |goto 62.7,55.1
step
talk Snevik the Blade##50601
turnin The View from Down Here##28868 |goto 62.54,53.81
step
talk Slamp Wobblecog##41298
turnin Eliminate the Resistance##25840 |goto 62.5,53.7
turnin Strike From Above##25841 |goto 62.5,53.7
accept A Hand at the Ranch##25882 |goto 62.5,53.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Dun Morogh (1-10)\\Dun Morogh (8-10)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)",
startlevel=8.2,
dynamic=true,
endlevel=9
},[[
step
Follow the path |goto Dun Morogh/0 63.22,53.15 < 20 |only if walking
Continue following the path |goto Dun Morogh/0 64.69,53.25 < 15 |only if walking
Follow the path |goto Dun Morogh/0 67.27,52.69 < 20 |only if walking
Follow the path up |goto Dun Morogh/0 69.17,51.01 < 15 |only if walking
talk Sergeant Flinthammer##41578
turnin A Hand at the Ranch##25882 |goto Dun Morogh/0 70.4,48.9 |only if havequest(25882) or completedq(25882)
accept It's Raid Night Every Night##25932 |goto Dun Morogh/0 70.4,48.9
step
Watch the dialogue
kill Frostmane Raider##41603+
Defend Amberstill Ranch |q 25932/1 |goto 70.29,49.32
step
talk Sergeant Flinthammer##41578
turnin It's Raid Night Every Night##25932 |goto 70.4,48.9
step
talk Veron Amberstill##1261
|tip He walks back and forth in this small area.
accept Rams on the Lam##25905 |goto 70.7,48.9
step
talk Rudra Amberstill##1265
accept Protecting the Herd##314 |goto 70.28,48.15
step
Follow the path |goto 70.20,49.49 < 20 |only if walking
Follow the path up |goto 69.3,49.6 < 15 |only if walking
Follow the path |goto 69.53,46.69 < 15 |only if walking
kill Vagash##1388
|tip He looks like a yeti that walks in and out of this small cave.
collect Fang of Vagash |q 314/1 |goto 69.40,45.20
step
Jump down here |goto 69.49,47.56 < 15 |only if walking
talk Rudra Amberstill##1265
turnin Protecting the Herd##314 |goto 70.28,48.15
step
Follow the path |goto 69.57,50.05 < 20 |only if walking
Whistle next to Stolen Rams |script DoEmote("WHISTLE")
|tip They look like different colored rams around this area.
Recover #6# Stolen Rams |q 25905/1 |goto 67.6,55.0
step
Follow the path |goto 68.25,53.47 < 20 |only if walking
Follow the path |goto 69.56,50.14 < 20 |only if walking
talk Veron Amberstill##1261
|tip He walks back and forth in this small area.
turnin Rams on the Lam##25905 |goto 70.7,48.9
step
talk Sergeant Flinthammer##41578
accept Help for the Quarry##25933 |goto 70.4,48.9
step
Follow the path |goto 69.48,50.20 < 20 |only if walking
Follow the road |goto 69.95,53.23 < 20 |only if walking
Follow the path down |goto 74.63,52.68 < 20 |only if walking
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto 75.9,54.3
step
talk Foreman Stonebrow##1254
turnin Help for the Quarry##25933 |goto 76.31,54.67
accept Those Blasted Troggs!##432 |goto 76.31,54.67
step
talk Prospector Drugan##50631
accept Priceless Treasures##25937 |goto 76.19,53.04
stickystart "Rockjaw_Skullthumpers"
stickystart "Rescue_Trapped_Miners"
stickystart "Rockjaw_Bonesnappers"
step
Follow the path down |goto 75.31,54.61 < 15 |only if walking
Follow the path |goto 75.16,56.63 < 20 |only if walking
click Frozen Artifact##6752+
|tip They look like blocks of white ice on the ground around this area.
collect 8 Frozen Artifact##56225 |q 25937/1 |goto Dun Morogh/11 39.0,82.6
step
label "Rockjaw_Skullthumpers"
kill 8 Rockjaw Skullthumper##1115 |q 432/1 |goto Dun Morogh/11 39.0,82.6
|tip You can find more outside the cave.
step
label "Rescue_Trapped_Miners"
Use Runes of Return on Trapped Miners |use Runes of Return##56222
|tip They look like scared dwarves along the walls inside of the cave.
Rescue #7# Trapped Miners |q 433/1 |goto Dun Morogh/11 39.0,82.6
step
label "Rockjaw_Bonesnappers"
kill 8 Rockjaw Bonesnapper##1117 |q 432/2 |goto Dun Morogh/11 39.0,82.6
|tip You can find more outside the cave.
step
Follow the path up |goto Dun Morogh/0 75.03,56.14 < 15 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 75.9,54.3
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 76.31,54.67
step
talk Prospector Gehn##1255
turnin Priceless Treasures##25937 |goto 76.19,53.04
step
talk Senator Mehr Stonehallow##1977
accept Trouble at the Lake##25986 |goto 75.9,54.3
step
Follow the path up |goto 75.28,54.00 < 15 |only if walking
Follow the road |goto 74.46,51.33 <20 |only if walking
Continue following the road |goto 78.61,48.21 < 20 |only if walking
talk Khurgorn Singefeather##41804
accept Dealing with the Surge##25979 |goto 82.64,48.30
step
talk Sergeant Bahrum##41786
turnin Trouble at the Lake##25986 |goto 82.85,48.41
accept Entombed in Ice##25978 |goto 82.85,48.41
stickystart "Free_Frozen_Mountaineers"
step
kill 6 Helm's Bed Surger##41762 |q 25979/1 |goto 83.38,50.75
step
label "Free_Frozen_Mountaineers"
kill Icy Tomb##41768+
|tip They look like big green blocks of ice around this area.
Free #6# Frozen Mountaineers |q 25978/1 |goto 83.38,50.75
step
talk Sergeant Bahrum##41786
turnin Entombed in Ice##25978 |goto 82.85,48.41
step
talk Khurgorn Singefeather##41804
turnin Dealing with the Surge##25979 |goto 82.64,48.29
step
talk Sergeant Bahrum##41786
accept Dark Iron Scheming##25997 |goto 82.85,48.41
stickystart "Dark_iron_Spies"
step
Follow the path |goto 84.13,55.93 < 20 |only if walking
kill Captain Beld##6124
|tip Downstairs inside the building.
collect Dark Iron Attack Plans##56264 |q 25997/2 |goto 85.17,60.61
step
label "Dark_iron_Spies"
kill 5 Dark Iron Spy##6123 |q 25997/1 |goto 84.0,58.1
step
Follow the path |goto 84.13,55.93 < 20 |only if walking
talk Sergeant Bahrum##41786
turnin Dark Iron Scheming##25997 |goto 82.85,48.41
accept Get to the Airfield##25998 |goto 82.85,48.41
step
Follow the road |goto 78.89,48.10 < 20 |only if walking |n
Continue following the road |goto 75.38,49.76 < 20 |only if walking |n
Jump down here |goto 75.25,51.95 < 15 |only if walking |n
Locate Mathel's Flying Machine |goto 75.23,52.76 < 20 |c |q 25998
step
clicknpc Mathel's Flying Machine##41848 |goto 75.23,52.76 |n
Fly to the Ironforge Airfield |goto 76.01,16.80 < 20 |noway |c |q 25998
step
talk Commander Stonebreaker##41853
turnin Get to the Airfield##25998 |goto 78.25,20.51
accept Extinguish the Fires##26078 |goto 78.25,20.51
step
Use the Firefighting Gear on fires around this area |use Firefighting Gear##56803
Extinguish #6# Fires |q 26078/1 |goto 78.3,24.6
step
talk Commander Stonebreaker##41853
turnin Extinguish the Fires##26078 |goto 78.25,20.51
accept Rallying the Defenders##26085 |goto 78.25,20.51
step
Follow the path |goto 78.14,26.79 < 20 |only if walking
Use the Ironforge Banner next to Loose Snow |use Ironforge Banner##56809
|tip They look like piles of white snow on the ground around this area.
Plant #8# Ironforge Banners |q 26085/1 |goto 77.7,30.1
step
Follow the path |goto 78.14,26.79 < 20 |only if walking
talk Commander Stonebreaker##41853
turnin Rallying the Defenders##26085 |goto 78.25,20.51
accept Striking Back##26094 |goto 78.25,20.51
step
clicknpc Repaired Bomber##42092
_As you fly:_
Use the Iron Hammer Bomb on Dark Iron enemies below |use Iron Hammer Bomb##56814
Slay #30# Dark Iron Attackers |q 26094/1 |goto 77.13,18.60
step
talk Commander Stonebreaker##41853
turnin Striking Back##26094 |goto 78.25,20.51
accept Grimaxe's Demise##26102 |goto 78.25,20.51
step
Follow the path |goto 78.14,26.79 < 20 |only if walking
Follow the path |goto 78.46,30.55 < 20 |only if walking
kill Dark Iron Golem##42008
kill General Grimaxe##42010 |q 26102/1 |goto 78.41,34.83
|tip He's standing on top of the golem.
step
Follow the path |goto 78.46,30.55 < 20 |only if walking
Follow the path |goto 78.14,26.79 < 20 |only if walking
talk Commander Stonebreaker##41853
turnin Grimaxe's Demise##26102 |goto 78.25,20.51
accept Demanding Answers##26112 |goto 78.25,20.51
step
talk Gremlock Pilsnor##1699
|tip Downstairs inside the building.
accept Honor Students##6387 |goto 54.7,50.8
|only Dwarf, Gnome
step
talk Brolan Galebeard##43701
turnin Honor Students##6387 |goto 53.80,52.76
accept Ride to Ironforge##6391 |goto 53.80,52.76
|only Dwarf, Gnome
step
talk Golnir Bouldertoe##4256
|tip Downstairs inside the building.
turnin Ride to Ironforge##6391 |goto Ironforge/0 51.6,26.4
accept Gryth Thurden##6388 |goto Ironforge/0 51.6,26.4
|only Dwarf, Gnome
step
Follow the path |goto 44.50,49.65 < 15 |walk
talk Mountaineer Barleybrew##1959
accept Reinforcements for Loch Modan##26131 |goto 41.4,52.3
step
talk Moira Thaurissan##42129
turnin Demanding Answers##26112 |goto 39.78,57.33
accept Seize the Ambassador##26118 |goto 39.78,57.33
step
Follow the path |goto 44.54,49.46 < 15 |walk
Follow the path |goto 43.92,45.77 < 15 |walk
Use the Sturdy Manacles on Ambassador Slaghammer |use Sturdy Manacles##56837
|tip Upstairs inside the building.
Click Here After You Arrest Ambassador Slaghammer |confirm |c |goto 36.6,43.2 |q 26118
step
Follow the path |goto 43.92,45.77 < 15 |walk
Follow the path |goto 44.54,49.46 < 15 |walk
Watch the dialogue
Arrest Ambassador Slaghammer and Bring Him to the High Seat |q 26118/1 |goto 40.87,52.89
step
talk Moira Thaurissan##42129
turnin Seize the Ambassador##26118 |goto 39.78,57.33
step
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto 55.5,47.7
accept Return to Gremlock##6392 |goto 55.5,47.7
|only Dwarf, Gnome
step
talk Gremlock Pilsnor##1699
|tip Downstairs inside the building.
turnin Return to Gremlock##6392 |goto Dun Morogh/0 54.8,50.7
|only Dwarf, Gnome
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)",
startlevel=10.75,
dynamic=true,
endlevel=12
},[[
step
talk Gryth Thurden##1573 |goto Ironforge/0 55.50,47.74 |n
Tell him _"Mountaineer Barleybrew said you could help me get to Loch Modan."_
Fly to Loch Modan |goto Loch Modan/0 13.93,56.72 < 20 |noway |c |q 26131
|only if havequest(26131) or completedq(26131)
step
talk Pilot Hammerfoot##1960
turnin Reinforcements for Loch Modan##26131 |goto Loch Modan/0 14.0,56.5 |only if havequest(26131) or completedq(26131)
accept The Lost Pilot##26854 |goto Loch Modan/0 14.0,56.5
step
Enter the tunnel |goto 12.7,58.5 < 10 |walk
Leave the tunnel |goto 9.36,62.12 > 10000 |walk
Follow the path down |goto Dun Morogh/0 88.28,51.23 < 20 |only if walking
click A Dwarven Corpse##211
turnin The Lost Pilot##26854 |goto Dun Morogh/0 87.64,50.15
accept A Pilot's Revenge##26855 |goto Dun Morogh/0 87.64,50.15
step
kill Mangeclaw##1961
|tip He will walk down the mountain.
collect Mangy Claw##3183 |q 26855/1 |goto 87.42,50.03
step
Follow the path up |goto 87.93,51.06 < 20 |only if walking
Enter the tunnel |goto 89.57,51.76 > 10000 |walk
Leave the tunnel |goto Loch Modan/0 12.7,58.5 < 10 |walk
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##26855 |goto Loch Modan/0 14.0,56.5
accept South Gate Status Report##13635 |goto Loch Modan/0 14.0,56.5
step
Enter the tunnel |goto 16.41,58.46 < 10 |walk
Leave the tunnel |goto 19.52,62.66 < 10 |walk
Follow the path down |goto 21.58,66.03 < 20 |only if walking
Continue down the path |goto 21.33,68.28 < 20 |only if walking
talk Captain Rugelfuss##1092
|tip Inside the building.
turnin South Gate Status Report##13635 |goto 23.38,75.05
accept In Defense of the King's Lands##26146 |goto 23.38,75.05
step
talk Mountaineer Cobbleflint##1089
|tip Inside the building.
accept The Trogg Threat##26145 |goto 23.33,74.92
stickystart "Trogg_Stone_Teeth"
step
Follow the path up |goto 22.77,77.89 < 15 |only if walking
Continue following the path up |goto 23.86,79.61 < 15 |only if walking
Follow the path |goto 27.79,76.33 < 15 |only if walking
Follow the path down |goto 28.79,77.68 < 15 |only if walking
kill 12 Stonesplinter Trogg##1161 |q 26146/1 |goto 31.50,78.40
step
label "Trogg_Stone_Teeth"
Kill Stonesplinter enemies around this area
collect 8 Trogg Stone Tooth##2536 |q 26145/1 |goto 31.50,78.40
step
Follow the path up |goto 30.56,78.50 < 15 |only if walking
Follow the path |goto 28.42,77.22 < 15 |only if walking
Follow the path down |goto 27.46,76.41 < 15 |only if walking
Continue down the path |goto 23.35,79.79 < 15 |only if walking
Follow the path |goto 22.82,77.30 < 15 |only if walking
talk Captain Rugelfuss##1092
|tip Inside the building.
turnin In Defense of the King's Lands##26146 |goto 23.38,75.05
accept A Decisive Strike##26148 |goto 23.38,75.05
step
talk Mountaineer Cobbleflint##1089
|tip Inside the building.
turnin The Trogg Threat##26145 |goto 23.33,74.92
step
talk Mountaineer Wallbang##1090
|tip Inside the building.
accept Bigger and Uglier##26147 |goto 23.3,75.1
stickystart "Stonesplinter_Bonesnappers"
stickystart "Stonesplinter_Shamans"
step
Follow the road |goto 21.49,72.98 < 20 |only if walking |n
Continue following the road up |goto 24.95,67.91 < 20 |only if walking |n
Follow the path |goto 28.48,65.90 < 20 |only if walking |n
Follow the path |goto 30.63,69.74 < 15 |only if walking |n
Enter the cave |goto 32.98,69.44 < 15 |walk |n
Jump down here |goto 35.46,64.78 < 10 |walk |n
Follow the path |goto 35.58,61.86 < 15 |walk |n
Follow the path up |goto 35.30,59.52 < 15 |walk |n
Follow the path |goto 33.29,60.81 < 15 |walk |n
Follow the path up |goto 33.82,62.19 < 15 |c |q 26148
step
Follow the path |goto 35.45,62.01 < 10 |walk
Follow the path |goto 35.29,60.72 < 10 |walk
kill Grawmug##42230 |q 26148/1 |goto 34.3,61.0
step
label "Stonesplinter_Bonesnappers"
kill 8 Stonesplinter Bonesnapper##1164 |q 26147/2 |goto 33.09,60.69
|tip They are all throughout the cave.
step
label "Stonesplinter_Shamans"
kill 8 Stonesplinter Shaman##1197 |q 26147/1 |goto 33.09,60.69
|tip They are all throughout the cave.
step
Follow the path |goto 35.69,60.02 < 15 |walk
Follow the path up |goto 35.62,64.36 < 10 |walk
Continue up the path |goto 34.99,63.45 < 10 |walk
Follow the path |goto 34.95,65.18 < 10 |walk
Leave the cave |goto 32.97,69.50 < 15 |walk
Follow the path |goto 30.58,69.75 < 15 |only if walking
Follow the road |goto 27.97,65.54 < 20 |only if walking
Continue following the road |goto 23.65,69.71 < 20 |only if walking
talk Captain Rugelfuss##1092
|tip Inside the building.
turnin A Decisive Strike##26148 |goto 23.38,75.05
accept Onward to Thelsamar##26176 |goto 23.38,75.05
step
talk Mountaineer Wallbang##1090
|tip Inside the building.
turnin Bigger and Uglier##26147 |goto 23.3,75.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (12-13)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan_2",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)",
startlevel=12.55,
dynamic=true,
endlevel=13
},[[
step
Follow the road |goto Loch Modan/0 21.57,72.88 < 20 |only if walking
Continue following the road |goto Loch Modan/0 25.11,67.78 < 20 |only if walking
Continue following the road |goto Loch Modan/0 28.17,64.93 < 20 |only if walking
Follow the path down |goto Loch Modan/0 32.58,49.87 < 20 |only if walking
talk Mountaineer Kadrell##1340
turnin Onward to Thelsamar##26176 |goto Loch Modan/0 35.1,46.6 |only if havequest(26176) or completedq(26176)
accept Out of Gnoll-Where##26842 |goto Loch Modan/0 35.1,46.6
accept Stormpike's Order##13636 |goto Loch Modan/0 35.1,46.6
step
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto 35.5,48.4 |future |q 13636
step
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##26860 |goto 34.8,49.3
step
Follow the path up |goto 34.49,47.38 < 20 |only if walking
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.9,50.9
step
Follow the path up |goto 34.92,46.40 < 15 |only if walking
Follow the path up |goto 35.25,45.33 < 15 |only if walking
talk Dakk Blunderblast##1777
accept Looking for Lurkers##25118 |goto 35.42,42.87
step
click Wanted! Poster##17
accept Wanted: The Dark Iron Spy##13648 |goto 37.3,46.5
stickystart "Bear_Rumps"
stickystart "Forest_Lurkers"
step
Follow the path |goto 38.28,47.77 < 20 |only if walking
Follow the path up |goto 40.7,58.4 < 15 |only if walking
Continue up the path |goto 40.25,61.32 < 15 |only if walking
Continue up the path |goto 39.13,62.14 < 15 |only if walking
kill Gorick Guzzledraught##33456 |q 13648/1 |goto 36.71,61.12
|tip Inside the small cave.
step
click Stolen Explorers' League Document##8032
|tip Inside the small cave.
accept Explorers' League Document (1 of 6)##13656 |goto 36.75,61.11
step
Follow the path down |goto 38.53,62.21 < 15 |only if walking
Continue down the path |goto 39.68,62.11 < 15 |only if walking
Continue down the path |goto 40.49,60.34 < 15 |only if walking
Follow the path |goto 40.63,57.09 < 20 |only if walking
Follow the path |goto 39.27,53.35 < 20 |only if walking
Follow the path |goto 35.92,53.04 < 20 |only if walking
Kill Mosshide enemies around this area
collect 12 Mosshide Ear##60402 |q 26842/1 |goto 27.61,49.94
step
label "Bear_Rumps"
kill Black Bear##1186+
collect 8 Bear Rump##60497 |q 26860/1 |goto 32.39,35.87
step
label "Forest_Lurkers"
kill 8 Forest Lurker##1195 |q 25118/1 |goto 32.39,35.87
step
Follow the path down |goto 38.72,35.87 < 20 |only if walking
click Stolen Explorers' League Document##3365
|tip Under the dock.
accept Explorers' League Document (2 of 6)##13655 |goto 41.37,38.98
step
Follow the path up |goto 39.67,38.18 < 15 |only if walking
Follow the path |goto 38.29,38.60 < 20 |only if walking
talk Torren Squarejaw##1153
turnin Explorers' League Document (1 of 6)##13656 |goto 37.23,47.79
turnin Explorers' League Document (2 of 6)##13655 |goto 37.23,47.79
step
talk Mountaineer Kadrell##1340
turnin Out of Gnoll-Where##26842 |goto 35.07,46.58
step
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##26860 |goto 34.83,49.28
step
Follow the path up |goto 34.98,46.50 < 15 |only if walking
talk Magistrate Bluntnose##1139
turnin Wanted: The Dark Iron Spy##13648 |goto 34.60,44.46
step
Follow the path up |goto 35.25,45.33 < 15 |only if walking
talk Dakk Blunderblast##1777
turnin Looking for Lurkers##25118 |goto 35.42,42.87
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (13-16)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan_3",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)",
startlevel=13.94,
dynamic=true,
endlevel=16
},[[
step
Follow the path |goto Loch Modan/0 33.87,45.05 < 15 |only if walking
Follow the road |goto Loch Modan/0 32.16,43.10 < 20 |only if walking
Continue following the road |goto Loch Modan/0 29.84,31.04 < 20 |only if walking
talk Mountaineer Stormpike##1343
turnin Stormpike's Order##13636 |goto Loch Modan/0 25.44,17.96 |only if havequest(13636) or completedq(13636)
accept A Tiny, Clever Commander##26843 |goto Loch Modan/0 25.44,17.96
step
Follow the path |goto 26.24,22.77 < 20 |only if walking
Enter the cave |goto 25.38,30.46 < 15 |walk
kill "Commander" Nazrim##44197 |q 26843/1 |goto 26.14,31.64
|tip Inside the small cave.
step
Leave the cave |goto 25.27,30.34 < 15 |walk
Follow the path |goto 26.23,22.91 < 20 |only if walking
talk Mountaineer Stormpike##1343
turnin A Tiny, Clever Commander##26843 |goto 25.44,17.96
accept Kobold and Kobolder##26844 |goto 25.44,17.96
stickystart "Tunnel_Rat_Surveyors"
step
Follow the path |goto 34.02,17.18 < 20 |only if walking
kill 5 Tunnel Rat Forager##1176 |q 26844/2 |goto 35.08,17.24
step
label "Tunnel_Rat_Surveyors"
kill 5 Tunnel Rat Surveyor##1177 |q 26844/1 |goto 35.08,17.24
step
Follow the path |goto 34.02,17.18 < 20 |only if walking
talk Mountaineer Stormpike##1343
turnin Kobold and Kobolder##26844 |goto 25.44,17.96
accept Who's In Charge Here?##26845 |goto 25.44,17.96
accept Filthy Paws##26863 |goto 25.44,17.96
step
talk Scout Dorli##44200
accept A Nasty Exploit##26846 |goto 25.4,17.8
stickystart "Tunnel_Rat_Geomancers"
stickystart "Miners_Gear"
step
Follow the path |goto 34.02,17.18 < 20 |only if walking
Enter the mine |goto 35.49,18.89 < 10 |walk
Follow the path |goto 35.68,20.71 < 10 |walk
Follow the path up |goto 36.01,22.74 < 10 |walk
Continue following the path |goto 36.32,24.58 < 10 |walk
Continue following the path |goto 36.61,25.83 < 10 |walk
Continue following the path |goto 35.60,27.93 < 10 |walk
kill Foreman Sharpsneer##44198
|tip Inside the cave.
collect Foreman Sharpsneer's Head##60404 |q 26845/1 |goto 34.74,26.86
step "Tunnel_Rat_Geomancers"
kill 5 Tunnel Rat Geomancer##1174+ |q 26846/1 |goto 34.89,27.33
step "Miners_Gear"
click Miner's League Crates##271+
|tip They look like piles of wooden crates inside the cave.
collect 6 Miners' Gear##2640 |q 26863/1 |goto 34.89,27.33
step
Follow the path |goto 35.81,27.67 < 10 |walk
Continue following the path |goto 36.64,25.27 < 10 |walk
Follow the path |goto 36.10,22.87 < 10 |walk
Follow the path up |goto 35.44,21.89 < 10 |walk
Leave the mine |goto 35.49,18.89 < 10 |walk
Follow the path |goto 34.02,17.18 < 20 |only if walking
talk Mountaineer Stormpike##1343
turnin Who's In Charge Here?##26845 |goto 25.44,17.96
accept The Bearer of Gnoll-edge##26864 |goto 25.44,17.96
turnin Filthy Paws##26863 |goto 25.44,17.96
step
talk Scout Dorli##44200
turnin A Nasty Exploit##26846 |goto 25.4,17.8
step
talk Mountaineer Kadrell##1340
turnin The Bearer of Gnoll-edge##26864 |goto 35.06,46.58
accept Suddenly, Murlocs!##26927 |goto 35.06,46.58
step
talk Cannary Caskshot##44345
|tip Inside the building.
turnin Suddenly, Murlocs!##26927 |goto 34.8,49.1
accept Smells Like A Plan##26928 |goto 34.8,49.1
accept A Load of Croc##26929 |goto 34.8,49.1
step
talk Mountaineer Kadrell##1340
accept Buzz Off##26932 |goto 35.06,46.58
step
Follow the path |goto 37.13,45.75 < 20 |only if walking
Follow the path up |goto 37.56,42.31 < 20 |only if walking
Follow the path down |goto 39.04,38.35 < 20 |only if walking
Follow the path |goto 41.45,40.68 < 20 |only if walking
Kill Bluegill enemies around this area
collect 7 Murloc Scent Gland##60511 |q 26928/1 |goto 44.84,52.95
stickystart "Loch_Buzzards"
step
kill Loch Crocolisk##1693+
collect 6 Intact Crocolisk Jaw |q 26929/1 |goto 50.8,62.8
step
label "Loch_Buzzards"
kill 8 Loch Buzzard##44184 |q 26932/1 |goto 50.8,62.8
step
Follow the path up |goto 46.61,63.41 < 20 |only if walking
Follow the path |goto 44.54,63.24 < 20 |only if walking
Continue following the path |goto 39.78,53.83 < 20 |only if walking
Follow the path down |goto 37.38,48.33 < 20 |only if walking
talk Mountaineer Kadrell##1340
turnin Buzz Off##26932 |goto 35.07,46.59
step
talk Cannary Caskshot##44345
|tip Inside the building.
turnin Smells Like A Plan##26928 |goto 34.78,49.13
accept Axis of Awful##26868 |goto 34.78,49.13
turnin A Load of Croc##26929 |goto 34.78,49.13
step
Use Cannary's Cache |use Cannary's Cache##60681
collect Clever Plant Disguise Kit##60502 |c |q 26868
collect Potent Murloc Pheromones##60503 |c |q 26868
step
Follow the path up |goto 36.23,46.95 < 15 |only if walking
Follow the path |goto 40.08,52.33 < 20 |only if walking
Follow the path down |goto 45.00,63.33 < 20 |only if walking
Use your Clever Plant Disguise Kit |use Clever Plant Disguise Kit##60502
Wear the Clever Plant Disguise |havebuff 132320 |goto 49.9,57.7 |q 26868
step
Use the Potent Murloc Pheromones on the Mosshide Representative |use Potent Murloc Pheromones##60503
Tag the Mosshide |q 26868/1 |goto 50.55,56.02
step
Follow the path up |goto 46.61,63.41 < 20 |only if walking
Follow the path |goto 44.54,63.24 < 20 |only if walking
Continue following the path |goto 39.78,53.83 < 20 |only if walking
Follow the path down |goto 37.38,48.33 < 20 |only if walking
talk Cannary Caskshot##44345
|tip Inside the building.
turnin Axis of Awful##26868 |goto 34.78,49.13
step
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
accept Resupplying the Excavation##13639 |goto 37.23,47.38
step
Follow the path up |goto 37.90,46.44 < 15 |only if walking
Follow the path |goto 40.08,52.33 < 20 |only if walking
Follow the path down |goto 45.00,63.33 < 20 |only if walking
Find Huldar, Miran, and Saean |q 13639/1 |goto 56.36,65.98
step
talk Huldar##2057
turnin Resupplying the Excavation##13639 |goto 56.36,65.98
accept Protecting the Shipment##309 |goto 56.36,65.98
step
Watch the dialogue
Kill the enemies that attack in waves
kill Saean##1380
Protect the Ironband Caravan |q 309/1 |goto 56.36,65.98
step
Follow the path up |goto 58.1,68.8 < 15 |only if walking
Continue up the path |goto 59.76,72.40 < 15 |only if walking
click Stolen Explorers' League Document##8032
accept Explorers' League Document (3 of 6)##13657 |goto 61.70,73.16
step
Follow the path down |goto 61.50,72.15 < 10 |only if walking
Continue down the path |goto 61.90,71.07 < 10 |only if walking
Follow the path |goto 63.34,70.73 < 15 |only if walking
talk Magmar Fellhew##1345
accept Gathering Idols##26961 |goto 64.9,66.7
step
talk Prospector Ironband##1344
turnin Protecting the Shipment##309 |goto 65.34,65.98
accept Keep Your Hands Off The Goods!##13650 |goto 65.34,65.98
step
Follow the path |goto 67.2,68.7 < 20 |only if walking
Follow the path up |goto 69.9,67.6 < 10 |only if walking
Follow the path |goto 68.97,66.04 < 10 |only if walking
click Stolen Explorers' League Document##8032
accept Explorers' League Document (4 of 6)##13658 |goto 68.1,66.1
stickystart "Carved_Stone_Idols"
step
Follow the path |goto 68.97,66.04 < 10 |only if walking
Follow the path |goto 69.99,67.60 < 15 |only if walking
Inspect the Artifact of the Broken Tablet |q 13650/1 |goto 70.7,67.6
step
Follow the path |goto 72.05,68.10 < 15 |only if walking
Inspect the Artifact of the Overdressed Woman |q 13650/3 |goto 72.7,65.5
step
Follow the path |goto 72.51,61.64 < 15 |only if walking
Inspect the Artifact of the Upturned Giant |q 13650/2 |goto 70.1,60.0
step
label "Carved_Stone_Idols"
Kill Stonesplinter enemies around this area
collect 8 Carved Stone Idol##2636 |q 26961/1 |goto 70.3,61.9
step
Follow the path |goto 69.81,62.86 < 15 |only if walking
Follow the path |goto 67.52,63.22 < 15 |only if walking
talk Prospector Ironband##1344
turnin Keep Your Hands Off The Goods!##13650 |goto 65.34,65.98
step
talk Magmar Fellhew##1345
turnin Gathering Idols##26961 |goto 64.9,66.7
accept Joining the Hunt##13647 |goto 64.9,66.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (16-19)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan_4",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)",
startlevel=16.66,
dynamic=true,
endlevel=19
},[[
step
Follow the road |goto Loch Modan/0 63.80,59.67 < 20 |only if walking
Follow the road up |goto Loch Modan/0 67.06,52.01 < 20 |only if walking
Continue following the road |goto Loch Modan/0 71.87,52.01 < 20 |only if walking
Follow the road |goto Loch Modan/0 77.89,58.22 < 20 |only if walking
Follow the road up |goto Loch Modan/0 83.05,59.83 < 20 |only if walking
Enter the building |goto Loch Modan/0 83.81,62.45 < 15 |only if walking
talk Safety Warden Pipsy##44859
|tip Inside the building.
accept Thistle While You Work##27025 |goto Loch Modan/0 82.8,63.5
step
talk Marek Ironheart##1154
|tip Inside the building.
turnin Joining the Hunt##13647 |goto 81.76,61.66 |only if havequest(13647) or completedq(13647)
accept Hornet Hunting##27028 |goto 81.76,61.66
accept Foxtails By The Handful##27030 |goto 81.76,61.66
step
talk Bingles Blastenheimer##6577
|tip Standing on the rail of the balcony of the building.
accept Wing Nut##27031 |goto 81.65,64.75
step
talk Vyrin Swiftwind##1156
|tip Inside the building.
home Farstrider Lodge |goto 81.9,64.6 |future |q 27016
step
talk Eeryven Grayer##41332
|tip Inside the building.
fpath Farstrider Lodge |goto 81.88,64.07
step
talk Daryl the Youngling##1187
|tip He walks around this small spot inside the building.
accept The Joy of Boar Hunting##27016 |goto 83.5,65.4
step
Jump down here |goto 81.58,64.61 < 10 |only if walking
kill Golden Eagle##44628+
collect 3 Pristine Flight Feather##60792 |q 27031/1 |goto 78.79,67.19
stickystart "Fluffy_Fox_Tails"
stickystart "Stabthistle_Seeds"
step
Follow the path |goto 79.53,63.76 < 15 |only if walking
Follow the road |goto 79.29,59.21 < 20 |only if walking
Follow the path |goto 75.76,54.68 < 20 |only if walking
Follow the path |goto 75.12,44.78 < 20 |only if walking
click Stolen Explorers' League Document##8032
accept Explorers' League Document (6 of 6)##13659 |goto 73.16,35.87
step
label "Fluffy_Fox_Tails"
kill Hill Fox##44635+
collect 7 Fluffy Fox Tail##60755 |q 27030/1 |goto 74.02,38.45
step
label "Stabthistle_Seeds"
click Stabthistle Seed##205089+
|tip They look like brown balls with spikes on them near the base of trees around this area.
collect 6 Stabthistle Seed##60737 |q 27025/1 |goto 74.02,38.45
stickystart "Glassy_Hornet_Wings"
stickystart "Mudbelly_Boars"
step
Follow the path |goto 69.53,38.82 < 20 |only if walking
Continue following the path |goto 62.01,39.36 < 20 |only if walking
click Stolen Explorers' League Document##8032
accept Explorers' League Document (5 of 6)##13660 |goto 53.7,38.1
step
label "Glassy_Hornet_Wings"
kill Marsh Hornet##44620+
collect 6 Glassy Hornet Wing##60754 |q 27028/1 |goto 55.22,39.42
step
label "Mudbelly_Boars"
kill 10 Mudbelly Boar##44627 |q 27016/1 |goto 55.22,39.42
step
talk Bingles Blastenheimer##6577
|tip Standing on the rail of the balcony of the building.
turnin Wing Nut##27031 |goto 81.65,64.75
accept Bird is the Word##27032 |goto 81.65,64.75
step
talk Safety Warden Pipsy##44859
|tip Inside the building.
turnin Thistle While You Work##27025 |goto 82.8,63.5
accept Defcon: Bobcat##27026 |goto 82.8,63.5
step
talk Marek Ironheart##1154
|tip Inside the building.
turnin Hornet Hunting##27028 |goto 81.76,61.66
turnin Foxtails By The Handful##27030 |goto 81.76,61.66
step
talk Daryl the Youngling##1187
|tip He walks around this small spot inside the building.
turnin The Joy of Boar Hunting##27016 |goto 83.5,65.4
step
talk Vyrin Swiftwind##1156
|tip Inside the building.
accept Vyrin's Revenge##27036 |goto 81.9,64.6
stickystart "Bobcats"
step
Jump down here |goto 81.58,64.64 < 7 |only if walking
Follow the path |goto 78.32,69.50 < 20 |only if walking
Follow the path |goto 77.35,72.91 < 20 |only if walking
Follow the path |goto 71.35,72.51 < 20 |only if walking
Enter the cave |goto 71.16,76.05 < 10 |walk
Follow the path |goto 72.42,78.22 < 10 |walk
Follow the path down |goto 74.06,78.00 < 10 |walk
Follow the path |goto 75.82,78.90 < 15 |walk
Follow the path |goto 76.65,83.24 < 10 |walk
Follow the path |goto 77.62,82.48 < 15 |walk
Continue following the path |goto 77.59,79.06 < 15 |walk
talk Rusted Skystrider##44618
turnin Bird is the Word##27032 |goto 78.6,76.2
accept Skystrider's Heart##27033 |goto 78.6,76.2
step
label "Bobcats"
Jump down here |goto 76.03,77.87 < 10 |walk
Follow the path |goto 73.92,77.07 < 15 |walk
Follow the path |goto 72.58,78.45 < 15 |walk
Leave the cave |goto 71.32,76.41 < 15 |walk
kill 8 Bobcat##44188 |q 27026/1 |goto 70.12,74.44
step
Follow the path |goto 74.57,69.98 < 20 |only if walking
Continue following the path |goto 74.51,64.29 < 20 |only if walking
Follow the path |goto 73.73,59.45 < 20 |only if walking
Follow the path up |goto 77.0,51.6 < 15 |only if walking
Continue up the path |goto 78.13,52.26 < 15 |only if walking
kill Ol' Sooty##1225
|tip Inside the small cave.
collect Ol' Sooty's Head##2713 |q 27036/1 |goto 80.3,52.1
step
Leave the cave |goto 79.07,51.59 < 10 |walk
Follow the path down |goto 77.66,52.77 < 10 |only if walking
Follow the road |goto 77.10,57.04 < 20 |only if walking
Continue following the road |goto 79.70,59.17 < 20 |only if walking
Follow the road up |goto 83.05,59.83 < 20 |only if walking
Enter the building |goto 83.81,62.45 < 15 |only if walking
talk Safety Warden Pipsy##44859
|tip Inside the building.
turnin Defcon: Bobcat##27026 |goto 82.8,63.5
step
talk Bingles Blastenheimer##6577
|tip Standing on the rail of the balcony of the building.
turnin Skystrider's Heart##27033 |goto 81.65,64.75
accept He's That Age##27034 |goto 81.65,64.75
step
talk Daryl the Youngling##1187
|tip He walks around this small spot inside the building.
turnin Vyrin's Revenge##27036 |goto 83.5,65.5
accept Vyrin's Revenge##27037 |goto 83.5,65.5
step
talk Vyrin Swiftwind##1156
|tip Inside the building.
turnin Vyrin's Revenge##27037 |goto 81.9,64.6
step
Jump down here |goto 81.64,63.31 < 10 |only if walking
Follow the road |goto 79.26,59.24 < 20 |only if walking
Continue following the road |goto 72.04,52.06 < 20 |only if walking
Follow the road |goto 66.49,47.80 < 20 |only if walking
Continue following the road |goto 61.52,32.81 < 20 |only if walking
talk Ando Blastenheimer##44870
turnin He's That Age##27034 |goto 58.52,29.10
accept Standing Up##27035 |goto 58.52,29.10
step
Follow the path |goto 53.57,25.73 < 10 |only if walking
kill Twilight Landshaper##44724
Destroy the Twilight Landshaper |q 27035/1 |goto 50.53,23.79
step
Follow the path |goto 53.57,25.73 < 10 |only if walking
talk Ando Blastenheimer##44870
turnin Standing Up##27035 |goto 58.52,29.10
accept Fight the Hammer##27074 |goto 58.52,29.10
step
talk Ashlan Stonesmirk##1073
|tip He walks around this small camp.
turnin Fight the Hammer##27074 |goto 64.14,26.61
accept Servants of Cho'gall##27075 |goto 64.14,26.61
accept Clutching at Chaos##27077 |goto 64.14,26.61
stickystart "Nascent_Elementium_Spikes"
step
Follow the path |goto 63.33,24.64 < 15 |only if walking
Follow the path |goto 64.97,20.96 < 15 |only if walking
Kill Mo'grosh enemies around this area.
Slay #7# Mo'grosh Ogres |q 27075/1 |goto 68.5,22.2
step
label "Nascent_Elementium_Spikes"
click Nascent Elementium##9836+
|tip They look like wavy grey spikes on the ground around this area.
collect 10 Nascent Elementium Spike##60738 |q 27077/1 |goto 68.5,22.2
step
Follow the path |goto 65.73,20.78 < 20 |only if walking
Follow the path |goto 63.16,23.72 < 20 |only if walking
talk Ashlan Stonesmirk##1073
|tip He walks around this small camp.
turnin Servants of Cho'gall##27075 |goto 64.14,26.61
turnin Clutching at Chaos##27077 |goto 64.14,26.61
accept Gor'kresh##27078 |goto 64.14,26.61
step
Follow the path |goto 63.33,24.64 < 15 |only if walking
Follow the path |goto 64.97,20.96 < 15 |only if walking
Enter the cave |goto 74.8,19.8 < 10 |walk
Follow the path |goto 75.59,18.29 < 10 |walk
Follow the path |goto 75.29,15.90 < 10 |walk
Follow the path |goto 78.05,15.90 < 10 |walk
kill Gor'kresh##44771 |q 27078/1 |goto 79.67,14.83
step
Follow the path |goto 78.90,15.56 < 10 |walk
Follow the path |goto 77.43,16.09 < 10 |walk
Follow the path |goto 75.29,15.90 < 10 |walk
Follow the path |goto 75.59,18.29 < 10 |walk
Leave the cave |goto 74.8,19.8 < 10 |walk
Follow the path |goto 65.73,20.78 < 20 |only if walking
Follow the path |goto 63.16,23.72 < 20 |only if walking
talk Ashlan Stonesmirk##1073
|tip He walks around this small camp.
turnin Gor'kresh##27078 |goto 64.14,26.61
accept Ando's Call##27115 |goto 64.14,26.61
step
talk Ando Blastenheimer##44870
turnin Ando's Call##27115 |goto 58.52,29.10
accept The Winds of Loch Modan##27116 |goto 58.52,29.10
step
Fly to Algaz Station |goto 25.6,17.5 < 20 |noway |c |q 27116
step
talk Mountaineer Stormpike##1343
turnin The Winds of Loch Modan##27116 |goto 25.45,17.96
accept Checking on the Boys##26137 |goto 25.45,17.96
step
Follow the road |goto 29.99,31.62 < 20 |only if walking
Follow the path down |goto 33.81,44.96 < 15 |only if walking
Follow the road |goto 35.55,46.73 < 20 |only if walking
talk Torren Squarejaw##1153
turnin Explorers' League Document (3 of 6)##13657 |goto 37.21,46.37
turnin Explorers' League Document (4 of 6)##13658 |goto 37.21,46.37
turnin Explorers' League Document (6 of 6)##13659 |goto 37.21,46.37
turnin Explorers' League Document (5 of 6)##13660 |goto 37.21,46.37
accept Heartfelt Appreciation##13661 |goto 37.21,46.37
step
talk Torren Squarejaw##1153
turnin Heartfelt Appreciation##13661 |goto 37.21,46.37
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Wetlands",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (21-23)",
startlevel=19.65,
dynamic=true,
endlevel=21
},[[
step
Follow the road |goto Loch Modan/0 32.09,43.34 < 20 |only if walking
Continue following the road |goto Loch Modan/0 29.52,30.42 < 20 |only if walking
Follow the road |goto Loch Modan/0 26.55,22.12 < 20 |only if walking
Enter the tunnel |goto Loch Modan/0 25.57,10.27 < 10 |only if walking
Leave the tunnel |goto Loch Modan/0 25.27,0.07 > 10000 |only if walking
Enter the tunnel |goto Wetlands/0 55.14,83.55 < 10 |only if walking
Leave the tunnel |goto Wetlands/0 50.64,82.59 < 10 |only if walking
talk Mountaineer Rharen##41075
turnin Checking on the Boys##26137 |goto Wetlands/0 49.95,79.16 |only if havequest(26137) or completedq(26137)
accept The Stolen Keg##25395 |goto Wetlands/0 49.95,79.16
step
talk Mountaineer Grugelm##41074
accept Cleaning Hovel##25211 |goto 49.91,79.24
stickystart "Slay_Dragonmaw_Orcs"
step
Follow the path |goto 48.73,78.72 < 15 |only if walking
Follow the path |goto 47.96,77.08 < 15 |only if walking
click Mountaineer's Ale##7490
|tip It looks like a wooden barrel upstairs inside the building.
collect Mountaineer's Ale##55209 |q 25395/1 |goto 47.81,74.35
step
label "Slay_Dragonmaw_Orcs"
Kill Dragonmaw enemies around this area
Slay #5# Dragonmaw Orcs |q 25211/1 |goto 47.65,76.16
step
Follow the path |goto 47.96,77.08 < 15 |only if walking
Follow the path |goto 48.73,78.72 < 15 |only if walking
talk Mountaineer Grugelm##41074
turnin Cleaning Hovel##25211 |goto 49.91,79.24
step
talk Mountaineer Rharen##41075
turnin The Stolen Keg##25395 |goto 49.95,79.16
accept Keg Run##25770 |goto 49.95,79.16
step
Enter the tunnel |goto 50.18,78.32 < 10 |only if walking |n
Leave the tunnel |goto 50.14,71.59 < 10 |only if walking |n
Follow the path down |goto 49.96,69.32 < 15 |only if walking |n
Continue down the path |goto 47.96,67.64 < 15 |c |q 25770
step
Enter the tunnel |goto 49.32,70.56 < 10 |only if walking
Leave the tunnel |goto 53.81,70.34 < 10 |only if walking
talk Forba Slabchisel##41086
turnin Keg Run##25770 |goto 57.51,71.76
accept Fight the Flood##25721 |goto 57.51,71.76
step
talk Elgin Baelor##41321
fpath Slabchisel's Survey |goto 56.86,71.10
step
talk Surveyor Thurdan##41129
accept Sedimentary, My Dear##25722 |goto 57.47,71.42
step
talk Dunlor Marblebeard##41128
accept Thresh Out of Luck##25723 |goto 57.83,71.50
stickystart "Threshadon_Chunks"
stickystart "Flood_Sediment_Samples"
step
kill 10 Flood Elemental##41132 |q 25721/1 |goto 62.05,70.95
step
label "Threshadon_Chunks"
kill Displaced Threshadon##41137+
collect 8 Threshadon Chunk##55232 |q 25723/1 |goto 62.05,70.95
step
label "Flood_Sediment_Samples"
click Sediment Deposit##49+
|tip They look like mounds of dirt underwater around this area.
collect 8 Flood Sediment Sample##55231 |q 25722/1 |goto 62.05,70.95
step
talk Dunlor Marblebeard##41128
turnin Thresh Out of Luck##25723 |goto 57.83,71.50
accept Fenbush Berries##25725 |goto 57.83,71.50
step
talk Surveyor Thurdan##41129
turnin Sedimentary, My Dear##25722 |goto 57.47,71.42
accept A Dumpy Job##25726 |goto 57.47,71.42
step
talk Forba Slabchisel##41086
turnin Fight the Flood##25721 |goto 57.5,71.8
accept Drungeld Glowerglare##25727 |goto 57.5,71.8
step
kill Silty Oozeling##41145+
collect Dumpy Level##55234 |q 25726/1 |goto 56.0,73.7
step
talk Surveyor Thurdan##41129
turnin A Dumpy Job##25726 |goto 57.5,71.4
accept Down In Thelgen Rock##25734 |goto 57.5,71.4
stickystart "Handfuls_Of_Fenberries"
step
Follow the path |goto 60.14,72.36 < 20 |only if walking
kill Drungeld Glowerglare##41151
|tip Inside the small cave.
collect Glowerglare's Beard##55988 |q 25727/1 |goto 63.8,78.2
step
label "Handfuls_Of_Fenberries"
click Fenberries##28+
|tip They look like small green shrubs on the ground around this area.
collect 15 Handful of Fenberries##55233 |q 25725/1 |goto 61.25,74.93
step
Follow the path |goto 60.14,72.36 < 20 |only if walking
talk Dunlor Marblebeard##41128
turnin Fenbush Berries##25725 |goto 57.8,71.5
accept Incendicite Ore##25735 |goto 57.8,71.5
step
talk Forba Slabchisel##41086
turnin Drungeld Glowerglare##25727 |goto 57.5,71.8
accept Get Out Of Here, Stalkers##25733 |goto 57.5,71.8
stickystart "Cave_Stalkers"
stickystart "Incendicite_Ores"
stickystart "Leech_Stalkers"
step
Enter the cave |goto 52.5,63.5 < 20 |walk
Follow the path |goto 51.05,62.03 < 15 |walk
Follow the path down |goto 50.15,62.97 < 15 |walk
Follow the path |goto 49.05,62.71 < 15 |walk
Follow the path |goto 48.43,61.51 < 15 |walk
Follow the path up |goto 47.95,59.80 < 15 |walk
Follow the path |goto 46.11,59.77 < 15 |walk
Follow the path down |goto 46.03,60.87 < 15 |walk
Follow the path |goto 46.68,62.45 < 15 |walk
click Thelgen Seismograph##2091
collect Thelgen Seismic Record##55242 |q 25734/1 |goto 47.87,66.07
step
kill Torrention##41167
collect Floodsurge Core##55243 |n
|tip You will automatically accept a quest upon looting this item.
accept The Floodsurge Core##25736 |goto 47.6,65.5
step
label "Cave_Stalkers"
kill 7 Cave Stalker##4040 |q 25733/2 |goto 45.98,60.11
step
label "Incendicite_Ores"
click Incendicite Mineral Vein##384
|tip They look like ore deposits with smoke coming off of them inside the cave.
collect 8 Incendicite Ore##55241 |q 25735/1 |goto 45.98,60.11
step
label "Leech_Stalkers"
Follow the path |goto 46.37,59.49 < 15 |walk
Follow the path down |goto 47.63,59.45 < 15 |walk
Follow the path |goto 48.45,61.54 < 15 |walk
Follow the path up |goto 49.24,62.83 < 15 |walk
Follow the path |goto 50.58,62.55 < 15 |walk
Follow the path |goto 51.44,61.99 < 15 |walk
Leave the cave |goto 52.5,63.5 < 20 |walk
kill 7 Leech Stalker##1111 |q 25733/1 |goto 53.84,64.32
step
talk Forba Slabchisel##41086
turnin Get Out Of Here, Stalkers##25733 |goto 57.5,71.8
turnin The Floodsurge Core##25736 |goto 57.5,71.8
step
talk Surveyor Thurdan##41129
turnin Down In Thelgen Rock##25734 |goto 57.5,71.4
step
talk Dunlor Marblebeard##41128
turnin Incendicite Ore##25735 |goto 57.8,71.5
step
talk Forba Slabchisel##41086
accept Onwards to Menethil##25777 |goto 57.5,71.8
step
clicknpc Brisket##41260 |goto 57.1,71.7 |n
Begin Riding to Menethil Harbor |goto 57.1,71.7 > 30 |noway |c |q 25777
step
Ride to Menethil Harbor |goto 12.4,50.4 < 20 |c |q 25777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Redridge_Mountains_2",
next="Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)",
startlevel=15.6,
dynamic=true,
endlevel=21
},[[
step
Follow the road |goto Elwynn Forest/0 85.25,74.02 < 30 |only if walking
Continue following the road |goto Elwynn Forest/0 93.72,72.23 < 20 |only if walking
Follow the path |goto Redridge Mountains/0 14.76,63.59 < 15 |only if walking
click Wanted Poster##156
accept Wanted: Redridge Gnolls##26504 |goto Redridge Mountains/0 16.05,64.61
step
talk Darcy Parker##379
|tip Inside the tower.
accept Franks and Beans##26506 |goto 15.6,65.3
step
talk Watch Captain Parker##464
|tip At the top of the tower.
turnin Hero's Call: Redridge Mountains##26365 |goto 15.3,64.6 |only if havequest(26365) or completedq(26365)
accept Still Assessing the Threat##26503 |goto 15.3,64.6
stickystart "Direcondor"
step
kill Tarantula##442+
collect 4 Tarantula Eyes##58891 |q 26506/1 |goto 18.96,64.26
step
label "Direcondor"
kill Dire Condor##428+
|tip Sitting on rocks and flying around in the air around this area.
collect 4 Condor Giblets##58892 |q 26506/2 |goto 18.96,64.26
stickystart "Goretusk_Kidneys"
stickystart "Slay_Redridge_Gnolls"
step
click Gnoll Battle Plan##222
collect Gnoll Battle Plans##58887 |q 26503/1 |goto 16.2,55.3
step
Follow the path |goto 18.21,59.00 < 20 |only if walking
Follow the path |goto 23.94,60.64 < 20 |only if walking
Follow the path down |goto 28.62,61.53 < 20 |only if walking
click Gnoll Strategy Guide##222
collect Gnoll Strategy Guide##58889 |q 26503/3 |goto 30.6,62.7
step
label "Goretusk_Kidneys"
kill Great Goretusk##547+
collect 4 Goretusk Kidney##58893 |q 26506/3 |goto 31.0,63.2
step
Follow the path |goto 31.69,65.54 < 20 |only if walking
click Gnoll Orders##222
collect Gnoll Orders##58888 |q 26503/2 |goto 28.0,74.9
step
label "Slay_Redridge_Gnolls"
Kill Redridge enemies around this area
Slay #15# Redridge Gnolls |q 26504/1 |goto 28.3,73.2
step
Follow the path |goto 23.46,67.86 < 20 |only if walking
talk Darcy Parker##379
|tip Inside the tower.
turnin Franks and Beans##26506 |goto 15.6,65.3
step
talk Watch Captain Parker##464
|tip At the top of the tower.
turnin Wanted: Redridge Gnolls##26504 |goto 15.3,64.6
turnin Still Assessing the Threat##26503 |goto 15.3,64.6
accept Parker's Report##26505 |goto 15.3,64.6
step
Follow the road |goto 22.47,62.70 < 30 |only if walking |n
Continue following the road |goto 28.32,60.43 < 20 |c |q 26511 |future
step
talk Ariena Stormfeather##931
fpath Lakeshire |goto 29.4,53.8
step
Cross the bridge |goto 31.01,52.25 < 20 |only if walking
Follow the path |goto 30.88,44.58 < 20 |only if walking
talk Bailiff Conacher##900
|tip Inside the building.
accept Lake Everstill Clean Up##26511 |goto 28.7,41.0
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Threat to the Kingdom##26761 |goto 28.9,41.1
turnin Parker's Report##26505 |goto 28.9,41.1
accept We Must Prepare##26510 |goto 28.9,41.1
step
Follow the path |goto 28.44,44.01 < 20 |only if walking
talk Innkeeper Brianna##6727
|tip Inside the building.
home Lakeshire |goto 26.4,41.4 |q 26509 |future
step
Follow the path up |goto 25.25,43.06 < 20 |only if walking
talk Martie Jainrose##342
accept An Unwelcome Guest##26509 |goto 22.04,42.70
step
kill Bellygrub##345
|tip It's a brown boar that walks around this area.
collect Bellygrub's Tusk##3631 |q 26509/1 |goto 17.12,44.84
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##26509 |goto 22.04,42.70
step
Follow the path down |goto 23.93,42.58 < 20 |only if walking
Follow the path |goto 28.50,45.53 < 20 |only if walking
talk Shawn##8965
accept Nida's Necklace##26508 |goto 28.34,48.88
stickystart "Slay_Lake_Everstill_Murlocs"
step
click Glinting Mud##49
|tip It looks like a brown pile of dirt underwater.
|tip It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
collect Nida's Necklace##10958 |q 26508/1 |goto 32.1,50.3
step
Follow the path in the water |goto 36.49,46.75 < 20 |only if walking
click Gnomecorder##7764
collect Gnomecorder##58894 |q 26510/1 |goto 37.8,42.1
step
label "Slay_Lake_Everstill_Murlocs"
Kill Murloc enemies around this area
Slay #10# Lake Everstill Murlocs |q 26511/1 |goto 39.25,47.00
step
Leave the water |goto 34.43,45.47 < 20 |only if walking
Follow the path |goto 30.86,44.42 < 20 |only if walking
Follow the path |goto 28.71,45.50 < 20 |only if walking
talk Nida##8962
turnin Nida's Necklace##26508 |goto 28.3,48.9
step
talk Bailiff Conacher##900
|tip Inside the building.
turnin Lake Everstill Clean Up##26511 |goto 28.7,40.9
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin We Must Prepare##26510 |goto 28.9,41.1
accept Tuning the Gnomecorder##26512 |goto 28.9,41.1
step
Follow the path |goto 28.51,43.79 < 20 |only if walking
talk Marshal Marris##382
accept Like a Fart in the Wind##26513 |goto 31.86,44.89
step
Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1 |goto 32.3,39.5
step
Click the Complete Quest Box:
turnin Tuning the Gnomecorder##26512
accept Canyon Romp##26514
stickystart "Dirt_Stained_Scroll"
stickystart "Redridge_Supply_Crates"
step
Follow the path up |goto 30.78,39.28 < 15 |only if walking
Kill Redridge enemies around this area
collect 10 Redridge Gnoll Collar##58897 |q 26514/1 |goto 28.84,36.49
step
Click the Complete Quest Box:
turnin Canyon Romp##26514
accept They've Wised Up...##26544
step
label "Dirt_Stained_Scroll"
Kill Redridge enemies around this area
collect Dirt-Stained Scroll##58898 |n
|tip You will accept a quest automatically upon looting this item.
accept He Who Controls the Ettins##26519 |goto 28.84,36.49
step
label "Redridge_Supply_Crates"
click Redridge Supply Crate##9723+
|tip They look like grey wooden boxes on the ground around this area.
collect 8 Redridge Supply Crate |q 26513/1 |goto 28.84,36.49
stickystart "Blackrock_Orc_Missive"
step
Follow the path |goto 25.97,33.50 < 30 |only if walking
Enter the cave |goto 21.0,27.3 < 15 |walk
Follow the path |goto 19.28,23.85 < 15 |walk
Follow the path |goto 16.88,20.68 < 15 |walk
Follow the path |goto 18.05,17.13 < 15 |walk
Follow the path |goto 19.85,15.79 < 10 |walk
Continue on the path |goto 19.68,17.39 < 15 |walk
kill Ardo Dirtpaw##711 |q 26519/1 |goto 17.94,18.57
step
click Ettin Control Orb##4891
turnin He Who Controls the Ettins##26519 |goto 17.9,18.6
accept Saving Foreman Oslow##26520 |goto 17.9,18.6
step
label "Blackrock_Orc_Missive"
kill Blackrock Overseer##43185+
|tip All around inside the cave.
collect Blackrock Orc Missive |q 26544/1 |goto 17.18,19.26
step
Click the Complete Quest Box:
turnin They've Wised Up...##26544
accept Yowler Must Die!##26545
stickystart "Blackrock_Invasion_Plans"
step
Follow the path up |goto 16.98,20.64 < 15 |walk
Follow the path |goto 19.07,23.38 < 15 |walk
Leave the cave |goto 21.0,27.3 < 15 |walk
Follow the path |goto 23.87,25.03 < 20 |only if walking
kill Yowler##518 |q 26545/1 |goto 26.86,22.00
step
label "Blackrock_Invasion_Plans"
kill Yowler##518
collect Blackrock Invasion Plans##58937 |q 26545/2 |goto 26.86,22.00
step
Follow the path |goto 27.90,25.51 < 15 |only if walking
Use the Ettin Control Orb on a Canyon Ettin |use Ettin Control Orb##58895 |goto 26.80,33.70
|tip The Canyon Ettin looks like a big brown two-headed monster that patrols around this area carrying a big log.
Click Here After You Mind Control a Canyon Ettin |confirm |q 26520
step
Follow the path |goto 28.84,36.36 < 20 |only if walking
Follow the path down |goto 30.46,38.21 < 20 |only if walking
Follow the road |goto 32.23,41.90 < 20 |only if walking
Use the Ettin Control Orb near the Huge Boulder |use Ettin Control Orb##58895
Save Foreman Oslow |q 26520/1 |goto 31.5,44.3
step
talk Marshal Marris##382
turnin Like a Fart in the Wind##26513 |goto 31.86,44.89
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Yowler Must Die!##26545 |goto 28.9,41.1
turnin Saving Foreman Oslow##26520 |goto 28.9,41.1
step
talk Colonel Troteman##43221
|tip He walks to this spot inside the building.
accept John J. Keeshan##26567 |goto 28.9,40.9
step
Follow the path |goto 28.36,43.88 < 20 |only if walking
talk John J. Keeshan##43184
|tip Downstairs inside the building.
turnin John J. Keeshan##26567 |goto 26.3,40.1
accept This Ain't My War##26568 |goto 26.3,40.1
step
Follow the path |goto 26.03,42.97 < 15 |only if walking
talk Colonel Troteman##43221
|tip Inside the building.
turnin This Ain't My War##26568 |goto 28.66,40.74
accept Weapons of War##26571 |goto 28.66,40.74
accept In Search of Bravo Company##26586 |goto 28.66,40.74
step
talk Foreman Oslow##43194
accept Surveying Equipment##26569 |goto 29.65,44.54
step
talk Marshal Marris##382
accept Render's Army##26570 |goto 29.7,44.5
stickystart "Slay_Blackrock_Orcs_Of_Althers_Mill_Or_Renders_Camp"
step
Follow the road up |goto 31.43,43.84 < 20 |only if walking
Continue following the road up |goto 35.87,37.20 < 20 |only if walking
Follow the path |goto 40.28,35.30 < 20 |only if walking
Follow the path down |goto 43.40,35.63 < 20 |only if walking
talk Messner##43270
|tip Inside a cage inside the building.
turnin In Search of Bravo Company##26586 |goto 47.55,41.88
accept Breaking Out is Hard to Do##26587 |goto 47.55,41.88
step
Follow the path |goto 50.31,40.07 < 15 |only if walking
click Blackrock Key Pouch##7144
|tip It looks like a small brown pouch nailed to the side of a tree stump.
|tip Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs.
|tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
collect Messner's Cage Key##58950 |q 26587/1 |goto 49.2,38.0
step
Follow the path |goto 50.31,40.07 < 15 |only if walking
|tip Inside a cage inside the building.
talk Messner##43270
turnin Breaking Out is Hard to Do##26587 |goto 47.55,41.88
step
_Next to you:_
talk Messner##43300
accept Jorgensen##26560
stickystart "Keeshans_Survival_Knife"
step
Follow the path |goto 49.08,41.02 < 15 |only if walking
kill Murduck##43327
collect Keeshan's Bow##58953 |q 26571/1 |goto 51.62,41.36
step
label "Keeshans_Survival_Knife"
kill Homurk##43329
collect Keeshan's Survival Knife##58954 |q 26571/2 |goto 51.62,41.36
step
Click the Complete Quest Box:
turnin Weapons of War##26571
accept His Heart Must Be In It##26573
stickystart "Blackrock_Spyglasses"
step
Follow the path up |goto 46.18,38.77 < 20 |only if walking
Follow the road up |goto 40.85,33.92 < 20 |only if walking
Continue following the road |goto 43.96,27.71 < 20 |only if walking
Follow the path |goto 41.82,20.03 < 20 |only if walking
kill Utroka the Keymistress##43350
collect Jorgensen's Cage Key##58969 |q 26560/1 |goto 43.54,10.82
step
Follow the path |goto 39.80,14.16 < 20 |only if walking
Follow the path up |goto 38.30,16.40 < 20 |only if walking
Follow the path |goto 35.30,14.47 < 20 |only if walking
talk Jorgensen##43272
|tip Inside a grey metal cage next to a hut.
turnin Jorgensen##26560 |goto 33.6,11.8
step
_Next to you:_
talk Jorgensen##43305
accept Krakauer##26561
step
Enter the cave |goto 31.7,9.4 < 15 |walk
Follow the path |goto 29.98,9.10 < 15 |walk
Follow the path |goto 29.16,10.85 < 15 |walk
kill Ritualist Tarak##43363 |q 26561/1 |goto 26.08,10.45
step
talk Krakauer##43274
turnin Krakauer##26561 |goto 25.91,10.49
step
_Next to you:_
talk Krakauer##43303
accept And Last But Not Least...Danforth##26562
stickystart "Keeshans_Jade_Amulet"
step
click Blackrock Coffer##10
collect Keeshan's Red Headband |q 26573/1 |goto 26.6,10.5
step
label "Keeshans_Jade_Amulet"
click Blackrock Coffer##10
collect Keeshan's Jade Amulet |q 26573/2 |goto 26.6,10.5
stickystart "Blackrock_Lever_Key"
step
Follow the path |goto 28.18,10.83 < 15 |walk
Follow the path |goto 29.87,12.01 < 15 |walk
Continue following the path |goto 30.33,15.78 < 15 |walk
kill Overlord Barbarius##43369 |q 26562/1 |goto 27.68,18.06
|tip He walks around this small area.
step
label "Blackrock_Lever_Key"
kill Overlord Barbarius##43369
|tip He walks around this small area.
collect Blackrock Lever Key |q 26562/2 |goto 27.68,18.06
step
click Chain Lever##9237 |goto 27.75,17.97
Click Here After You Click the Chain Lever |confirm |q 26562
step
talk Danforth##43275
|tip Underwater.
turnin And Last But Not Least...Danforth##26562 |goto 28.30,16.97
step
_Next to you:_
talk Danforth##43302
accept Return of the Bravo Company##26563
step
label "Slay_Blackrock_Orcs_Of_Althers_Mill_Or_Renders_Camp"
Kill Blackrock enemies around this area
Slay #25# Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1 |goto 33.07,10.16
step
label "Blackrock_Spyglasses"
kill Blackrock Tracker##615+
collect 5 Blackrock Spyglass##58952 |q 26569/1 |goto 33.07,10.16
step
Follow the path |goto 26.06,42.92 < 15 |only if walking
talk Colonel Troteman##43221
|tip Inside the building.
turnin His Heart Must Be In It##26573 |goto 28.7,40.7
turnin Return of the Bravo Company##26563 |goto 28.7,40.7
accept They Drew First Blood##26607 |goto 28.7,40.7
step
Follow the path |goto 28.36,43.88 < 20 |only if walking
talk John J. Keeshan##43184
|tip Downstairs inside the building.
turnin They Drew First Blood##26607 |goto 26.3,40.1
accept It's Never Over##26616 |goto 26.3,40.1
step
Follow the path |goto 26.06,42.92 < 15 |only if walking
talk Foreman Oslow##43194
turnin Surveying Equipment##26569 |goto 29.66,44.54
step
talk Marshal Marris##382
turnin Render's Army##26570 |goto 29.7,44.5
step
Follow the path down |goto 32.31,44.65 < 20 |only if walking
clicknpc Keeshan's Riverboat##43443
Ride in Keeshan's Riverboat |invehicle |goto 34.35,45.73 |q 26616
step
Complete Keeshan's Riverboat Ride |q 26616/1 |goto 52.90,53.00
step
talk Arlen Marsters##43371
fpath Camp Everstill |goto 52.9,54.6
step
talk John J. Keeshan##43458
turnin It's Never Over##26616 |goto 52.5,55.4
accept Point of Contact: Brubaker##26639 |goto 52.5,55.4
step
talk Danforth##43462
accept Hunting the Hunters##26638 |goto 52.53,55.55
step
talk Messner##43459
accept Bravo Company Field Kit: Chloroform##26637 |goto 52.44,55.55
step
talk Krakauer##43461
accept Bravo Company Field Kit: Camouflage##26636 |goto 52.4,55.4
step
kill Muckdweller##43532+
|tip Underwater around this area.
collect 8 Muckdweller Gland##59156 |q 26637/1 |goto 47.44,56.77
step
Leave the water |goto 51.83,56.67 < 15 |only if walking
talk Messner##43459
turnin Bravo Company Field Kit: Chloroform##26637 |goto 52.44,55.55
stickystart "Blackrock_Hunters"
stickystart "Piles_Of_Leaves"
stickystart "Fox_Poop"
step
Follow the path up |goto 52.67,57.68 < 15 |only if walking
Follow the path |goto 52.51,60.81 < 15 |only if walking
Follow the path down |goto 53.63,63.30 < 15 |only if walking
talk Brubaker##43508
turnin Point of Contact: Brubaker##26639 |goto 53.05,67.83
accept Unspeakable Atrocities##26640 |goto 53.05,67.83
step "Blackrock_Hunters"
kill 8 Blackrock Hunter##4462+ |q 26638/1 |goto 50.57,66.97
|tip They are stealthed around this area.
|tip Run around and you will find them when you get close to them.
step "Piles_Of_Leaves"
click Piles of Leaves##6884+
|tip They looks like piles of orange leaves on the ground around this area.
collect 5 Pile of Leaves##59152 |q 26636/1 |goto 50.57,66.97
step
label "Fox_Poop"
click Fox Poop##9572+
|tip They look like small dark swirled mounds on the ground around this area.
collect 5 Fox Poop##59153 |q 26636/2 |goto 50.57,66.97
step
Follow the path up |goto 49.77,63.08 < 20 |only if walking
Follow the path down |goto 52.60,58.47 < 20 |only if walking
talk Danforth##43462
turnin Hunting the Hunters##26638 |goto 52.52,55.55
step
talk John J. Keeshan##43458
turnin Unspeakable Atrocities##26640 |goto 52.53,55.42
step
talk Krakauer##43461
turnin Bravo Company Field Kit: Camouflage##26636 |goto 52.40,55.41
step
talk John J. Keeshan##43458
accept Prisoners of War##26646 |goto 52.53,55.42
step
Use the Bravo Company Field Kit |use Bravo Company Field Kit##60384
Activate the Bravo Company Field Kit |havebuff 133878 |goto 53.9,57.7 |q 26646
step
Stealth Your Party |havebuff 461113 |goto 53.9,57.7 |q 26646
|tip Use the Camouflage ability on your action bar.
stickystart "To_Win_A_War_You_Gotta_Become_War_Quest_Tips"
step
Follow the path down |goto 55.36,60.00 < 15 |only if walking
Follow the path |goto 57.41,66.92 < 20 |only if walking
Follow the path |goto 62.01,70.15 < 20 |only if walking
click Blackrock Key Pouch##7144
|tip It looks like a small pouch hanging on the wall inside the small cave.
collect Blackrock Holding Pen Key##59261 |q 26646 |goto 69.5,76.3
step
Follow the path |goto 68.06,74.48 < 15 |only if walking
Follow the path down |goto 68.71,68.85 < 20 |only if walking
click Blackrock Holding Pen##9745
Free the Prisoners of War |q 26646/1 |goto 69.21,59.74
step
Click the Complete Quest Box:
turnin Prisoners of War##26646
accept To Win a War, You Gotta Become War##26651
step
Follow the path |goto 68.75,68.66 < 20 |only if walking
Use the Plant Seaforium ability on your action bar
|tip In the small room at the top of the tower.
Plant Seaforium at the Blackrock Tower |q 26651/2 |goto 66.4,71.4
step
Use the Plant Seaforium ability on your action bar
|tip Inside the hut, next to all of the Blackrock Explosive Devices.
Plant Seaforium at the Munitions Hut |q 26651/1 |goto 63.8,70.4
step
label "To_Win_A_War_You_Gotta_Become_War_Quest_Tips"
As You Move Around This Area:
|tip Use the "Camouflage" ability every few minutes to make sure you stay stealthed.
|tip Use the "Distraction" ability to distract orcs as you walk, so you can travel unnoticed
|tip Use the "Chloroform" ability to knock out orcs if you can't get passed them simply by distracting them.
|tip You must be behind the orc to use the "Chloroform" ability.
Complete Quest Goals in this Area |q 26646/1 |only if havequest(26646)
Complete Quest Goals in this Area |q 26651/1 |only if havequest(26651)
step
Follow the path down |goto 66.66,67.94 < 15 |only if walking
Follow the path up |goto 72.61,64.52 < 20 |only if walking
Continue following the path up |goto 76.47,66.18 < 20 |only if walking
talk John J. Keeshan##43611
turnin To Win a War, You Gotta Become War##26651 |goto 77.7,65.5
accept Detonation##26668 |goto 77.7,65.5
step
Watch the cutscene
Blow up Render's Valley |q 26668/1
step
talk John J. Keeshan##43611
turnin Detonation##26668 |goto 77.31,65.82
accept The Dark Tower##26693 |goto 77.31,65.82
step
talk Danforth##43607
accept Shadowhide Extinction##26692 |goto 77.44,65.53
step
talk Nora Baldwin##43072
fpath Shalewind Canyon |goto 78.0,65.9
stickystart "Kill_Shadowhide_Gnolls"
step
Follow the path |goto 78.06,62.62 < 20 |only if walking
Follow the path down |goto 78.32,58.33 < 20 |only if walking
Follow the path up |goto 73.94,46.55 < 20 |only if walking
Follow the path |goto 72.59,42.20 < 20 |only if walking
Follow the path |goto 68.26,34.56 < 20 |only if walking
Enter the cave |goto 67.58,30.94 < 15 |walk
kill General Fangore##703
|tip Inside the small cave.
collect Key of Ilgalar##59522 |q 26693/1 |goto 67.55,28.93
step
Click the Complete Quest Box:
turnin The Dark Tower##26693
accept The Grand Magus Doane##26694
step
Leave the cave |goto 67.58,30.94 < 15 |walk
Follow the path up |goto 72.65,43.03 < 20 |only if walking
Run up the stairs |goto 72.45,44.85 < 15 |only if walking
click Ward of Ilgalar##8121
|tip It is a purple barrier blocking the entrance to the tower.
Enter the Tower |goto 71.43,44.73 < 10 |c |q 26694
step
kill Grand Magus Doane##397
|tip At the top of the tower.
Confront Grand Magus Doane |q 26694/1 |goto 71.26,45.40
step
label "Kill_Shadowhide_Gnolls"
Kill Shadowhide enemies around this area
Slay #20# Shadowhide Gnolls |q 26692/1 |goto 68.3,34.6
step
Click the Complete Quest Box:
turnin Shadowhide Extinction##26692
step
Follow the path down |goto 72.82,45.37 < 20 |only if walking
Follow the path up |goto 76.85,50.98 < 20 |only if walking
Follow the path |goto 77.68,56.25 < 20 |only if walking
Continue following the path |goto 78.43,59.66 < 20 |only if walking
talk John J. Keeshan##43611
turnin The Grand Magus Doane##26694 |goto 77.7,65.5
step
Watch the dialogue
talk Colonel Troteman##43733
accept AHHHHHHHHHHHH! AHHHHHHHHH!!!##26708 |goto 77.2,65.9
step
clicknpc Bravo Company Siege Tank##43714
Take Control of the Bravo Company Siege Tank |invehicle |c |goto 77.09,65.97 |q 26708
step
Follow the path |goto 79.19,62.11 < 20 |only if walking
Follow the path down |goto 77.56,56.19 < 20 |only if walking
Follow the path |goto 76.79,50.88 < 20 |only if walking
Kill Blackrock enemies around this area
|tip John J. Keeshan will automatically kill the enemies as you drive around.
kill 200 Blackrock Invader##43775 |q 26708/1 |goto 74.05,46.54
step
Follow the path |goto 74.05,46.54 < 20 |only if walking |n
Continue following the path |goto 73.48,42.78 < 20 |only if walking |n
Follow the path |goto 65.61,39.03 < 20 |only if walking |n
Drive to this Location |goto 58.88,37.44 < 20 |c |q 26708
|tip John J. Keeshan will automatically kill the enemies as you drive around.
step
Exit the Bravo Company Siege Tank |outvehicle |c |q 26708 |goto 58.88,37.44
|tip Click the yellow arrow on your action bar.
step
Follow the path up |goto 60.12,37.05 < 15 |only if walking
talk Colonel Troteman##43733
turnin AHHHHHHHHHHHH! AHHHHHHHHH!!!##26708 |goto 60.66,36.67
accept Showdown at Stonewatch##26713 |goto 60.66,36.67
step
Follow the path up |goto 59.61,41.55 < 20 |only if walking
kill Tharil'zun##486 |q 26713/1 |goto 60.31,47.43
step
Follow the path |goto 59.88,49.15 < 20 |only if walking
Follow the path |goto 60.46,52.80 < 15 |only if walking
kill Gath'Ilzogg##334 |q 26713/2 |goto 58.09,55.87
|tip If you try and get close to knock him off, he will disappear, so pull him towards you from a bit of a distance.
step
Click the Complete Quest Box:
turnin Showdown at Stonewatch##26713
accept Darkblaze, Brood of the Worldbreaker##26714
step
Watch the dialogue
kill Darkblaze##43496
|tip Fight him until he flies away.
Defeated Darkblaze |q 26714/1 |goto 58.64,55.47
step
Follow the path |goto 60.44,52.61 < 15 |only if walking
Follow the path down |goto 60.24,47.29 < 20 |only if walking
Follow the path up |goto 60.12,37.05 < 15 |only if walking
talk Colonel Troteman##43733
turnin Darkblaze, Brood of the Worldbreaker##26714 |goto 60.66,36.67
accept Triumphant Return##26726 |goto 60.66,36.67
step
Follow the path |goto 26.08,43.14 < 15 |only if walking
talk Magistrate Solomon##344
|tip Inside the building.
turnin Triumphant Return##26726 |goto 28.9,41.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Blasted Lands",
next="Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Hellfire Peninsula (60-62)",
startlevel=58.15,
dynamic=true,
endlevel=60
},[[
step
In order to complete the Blasted Lands questline for Loremaster of Eastern Kingdoms you will need to speak with Zidormi to change the zone back to normal
talk Zidormi##88206 |goto Blasted Lands/0 48.1,7.3
Tell her "Show me the Blasted Lands before the invasion."
confirm
|only if havequest(34398) or completedq(34398)
step
talk Quartermaster Lungertz##5393
turnin Blasted Lands: The Other Side of the World##28857 |goto Blasted Lands,60.1,13.5 |only if not DeathKnight
accept Minor Distractions##25710 |goto Blasted Lands,60.1,13.5
step
talk Mama Morton##44325
|tip She's on the ground floor.
home Nethergarde Keep |q 25715 |future |goto 60.7,14.0
step
talk Enohar Thunderbrew##9540
accept A Closer Look##25715 |goto 61.5,18.6
step
talk Alexandra Constantine##8609
fpath Nethergarde Keep |goto 61.3,21.6
step
kill Okril'lon Scout##42228 |q 25710/1 |goto 63.0,22.8
|tip They are stealthed around this area, so keep an eye out.
step
talk Quartermaster Lungertz##5393
turnin Minor Distractions##25710 |goto 60.1,13.5
accept Eliminate the Okril'lon##25711 |goto 60.1,13.5
step
talk Leyan Steelson##42262
accept Nethergarde Reigns##25712 |goto 60.2,13.4
step
talk Buttonwillow McKittrick##42264
accept Remove Their Arms##25713 |goto 60.5,13.8
step
kill Captain Metlek##42231 |q 25712/1 |goto 51.3,13.3
|tip He walks around on a wolf, so he may not be in this spot.
step
Use Buttonwillow's Hand Grenade on Okril'lon Weapons Crates |use Buttonwillow's Hand Grenade##57117
|tip They look like wooden crates with the Horde insignia on them.
Destroy 8 Okril'lon Weapons Crate |q 25713/1 |goto 52.8,15.9
kill 9 Okril'lon Infantry##42359+ |q 25711/1 |goto 52.8,15.9
step
talk Quartermaster Lungertz##5393
turnin Eliminate the Okril'lon##25711 |goto 60.1,13.5
step
talk Leyan Steelson##42262
turnin Nethergarde Reigns##25712 |goto 60.2,13.4
step
talk Buttonwillow McKittrick##42264
turnin Remove Their Arms##25713 |goto 60.5,13.8
step
Follow the path down |goto 63.9,23.8 |only if walking
Scout the ships on the Shattershore |q 25715/1 |goto 68.0,31.4
step
Follow the path up |goto 64.3,26.0 |only if walking
talk Enohar Thunderbrew##9540 |goto Blasted Lands,61.5,18.6
turnin A Closer Look##25715
accept Our Fallen Friends##25708
accept Curtail the Darktail##25709
stickystart "Enohar"
stickystart "Drownedgilnean"
step "Enohar"
Follow the path down |goto 63.9,23.8 |only if walking
Use Enohar's Explosive Arrows on Darktail Bonepickers |use Enohar's Explosive Arrows##57119
|tip They are flying in the sky over the beach.
|tip If you shoot them once and they don't die, shoot them again before they get too close.
kill 20 Darktail Bonepicker##42235+ |q 25709/1 |goto 67.4,29.2
step "Drownedgilnean"
kill Drowned Gilnean Merchant##42244+, Drowned Gilnean Settler##42249+, Drowned Gilnean Sailor##42248+
Free 13 Drowned Gilnean Spirits |q 25708/1
step
Follow the path up |goto 64.3,26.0 |only if walking
talk Enohar Thunderbrew##9540
turnin Our Fallen Friends##25708 |goto Blasted Lands,61.5,18.6
turnin Curtail the Darktail##25709 |goto Blasted Lands,61.5,18.6
accept Watcher Mahar Ba##25714 |goto Blasted Lands,61.5,18.6
step
talk Watcher Mahar Ba##5385
turnin Watcher Mahar Ba##25714 |goto 63.2,16.9
accept Cultists at our Doorstep##25716 |goto 63.2,16.9
step
Follow the path down |goto 63.9,23.8 |only if walking
kill Shadowsword Spellblade##42296+, Shadowsworn Occultist##42297+
collect 6 Intact Shadowsworn Spell Focus |q 25716/1 |goto 63.0,34.8
step
Follow the path up |goto 64.3,26.0 |only if walking
talk Watcher Mahar Ba##5385
turnin Cultists at our Doorstep##25716 |goto 63.2,16.9
accept Kasim Sharim##26157 |goto 63.2,16.9
step
Follow the path down |goto 63.9,23.8 |only if walking
Enter the cave |goto 60.8,29.4 < 10 |walk
Continue through the cave |goto 63.0,28.3 < 10 |indoors Serpent's Coil
Follow the cave to the left |goto 63.6,26.9 < 10 |indoors Serpent's Coil
talk Kasim Sharim##42298 |indoors Serpent's Coil
turnin Kasim Sharim##26157 |goto 62.5,26.3 |indoors Serpent's Coil
accept Attune the Bloodstone##26158 |goto 62.5,26.3 |indoors Serpent's Coil
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9 |indoors Serpent's Coil
Use the Internal Bloodstone Teleporter |q 26158/1 |goto 61.4,29.9 < 5
confirm
step
click Bloodstone Teleporter##6837 |goto 63.2,25.9
Use the External Bloodstone Teleporter |q 26158/2 |goto 61.4,29.9 < 5
confirm
step
talk Kasim Sharim##42298 |indoors Serpent's Coil
turnin Attune the Bloodstone##26158 |goto 62.5,26.3 |indoors Serpent's Coil
accept The First Step##26159 |goto 62.5,26.3 |indoors Serpent's Coil
accept A Bloodmage's Gotta Eat Too##26172 |goto 62.5,26.3 |indoors Serpent's Coil
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9 |indoors Serpent's Coil
Teleport outside |goto 61.4,29.9 < 5
confirm
stickystart "Ashmaneboar"
stickystart "Redstonebasilisk"
step "Ashmaneboar"
kill Ashmane Boar##5992+
collect 5 Ashmane Steak |q 26172/1 |goto 53.3,31.2
step "Redstonebasilisk"
kill Redstone Basilisk##5990+
collect 9 Redstone Basilisk Blood |q 26159/2 |goto 53.3,31.2
kill Snickerfang Hyena##5985+
collect 9 Snickerfang Hyena Blood |q 26159/1 |goto 53.3,31.2
You can find more Ashmane Boars and Redstone Basilisk around |goto Blasted Lands,56.9,24.8
There are also some around [Blasted Lands,48.8,34.1]
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin The First Step##26159 |goto 62.5,26.3
accept Blood Ritual##26160 |goto 62.5,26.3
turnin A Bloodmage's Gotta Eat Too##26172 |goto 62.5,26.3
step
talk Kasim Sharim##42298 |goto 62.4,26.1
Tell him you would like to start the Blood Ritual
confirm
step
talk Kasim Sharim##42298
turnin Blood Ritual##26160 |goto 62.4,26.1
accept The Amulet of Allistarj##26167 |goto 62.4,26.1
accept The Amulet of Sevine##26168 |goto 62.4,26.1
accept The Amulet of Grol##26169 |goto 62.4,26.1
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
Enter the cave |goto 60.8,29.4 |walk
click Allistarjian Vault##5743 |indoors Serpent's Coil
collect Amulet of Allistarj |q 26167/1 |goto 61.6,26.8 |indoors Serpent's Coil
step
Leave the cave |goto 60.8,29.4 |walk
click Head of Grol##4411
kill Spirit of Grol##41267
|tip It's underwater inside the top part of this sunken ship.
collect Amulet of Grol |q 26169/1 |goto 71.0,35.5
step
Follow the path up |goto 69.0,46.2 |only if walking
talk Salt-Flop##41265
accept Home...Gone...Naga...##25702 |goto 73.2,47.4
step
talk Salt-Flop##41265
Tell him you need the Amulet of Sevine.
collect Amulet of Sevine |q 26168/1 |goto 73.2,47.4
step
talk Neptool##41354
turnin Home... Gone... Naga...##25702 |goto 71.0,60.0
accept Atrocities##25703 |goto 71.0,60.0
step
kill 10 Bloodwash Barbarian##41386+ |q 25703/1 |goto 71.8,62.5
kill 10 Bloodwash Enchantress##41387+ |q 25703/2 |goto 71.8,62.5
step
talk Neptool##41354
turnin Atrocities##25703 |goto 71.0,60.0
accept False Idols##25705 |goto 71.0,60.0
accept Neptool's Revenge##25706 |goto 71.0,60.0
stickystart "Azhiridol"
stickystart "Bloodwashacolyte"
step "Azhiridol"
Enter the cave |goto 61.4,62.9 |walk
click Azh'ir Idol##4853+
Destroy 8 Azsh'ir Idols |q 25705/1 |goto 61.5,58.0
step "Bloodwashacolyte"
kill 8 Bloodwash Zealot##41422+ |q 25706/1
kill 8 Bloodwash Acolyte##41423+ |q 25706/2 |q 25706/2
step
Leave the cave |goto 61.4,62.9 |walk
clicknpc Abandoned Bloodwash Crate##41402
<Help the Rockpool tadpoles.>
accept The Future of the Rockpool##25707 |goto 62.9,64.2
step
click Abandoned Bloodwash Crate##41402+
|tip Get it again after each time you have to fight
kill 4 Bloodwash Idolater##41405+ |q 25706/4 |goto 60.2,71.0
step
click Abandoned Bloodwash Crate##41402+
|tip Get it again after each time you have to fight
kill 4 Bloodwash Gambler##41404+ |q 25706/3 |goto 65.9,74.5
step
click Abandoned Bloodwash Crate##41402+
|tip Get it again after each time you have to fight
Drag the Abandoned Bloodwash Crate to this spot
Return the Rockpool Tadpoles to the Forbidding Sea |q 25707/1 |goto 70.1,80.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Future of the Rockpool##25707
step
talk Neptool##41354
turnin False Idols##25705 |goto 71.0,60.0
turnin Neptool's Revenge##25706 |goto 71.0,60.0
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin The Amulet of Allistarj##26167 |goto 62.9,26.0
turnin The Amulet of Sevine##26168 |goto 62.9,26.0
turnin The Amulet of Grol##26169 |goto 62.9,26.0
accept Time is Short##26163 |goto 62.9,26.0
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
talk Watcher Grimeo##42299
turnin Time is Short##26163 |goto 55.1,49.6
accept The Charred Granite of the Dark Portal##26164 |goto 55.1,49.6
accept The Vile Blood of Demons##26165 |goto 55.1,49.6
step
talk Watch Commander Relthorn Netherwane##16841
accept Protecting Our Rear##26173 |goto 54.7,50.5
step
kill Shahandana##41165 |q 26173/2 |goto 59.9,43.1
step
kill Gomegaz##41166 |q 26173/3 |goto 52.3,41.9
step
kill Jarroc Torn-Wing##41164 |q 26173/1 |goto 43.9,47.7
stickystart "Felguardsentry"
stickystart "Granitechip"
step "Felguardsentry"
kill Felguard Sentry##6011+, Felhound##6010+, Oath-Chained Infernal##41253+
collect 7 Vile Demonic Blood |q 26165/1 |goto 48.9,46.0
step "Granitechip"
click Charred Granite Outcropping##9537+
collect 24 Charred Granite Chips |q 26164/1 |goto 48.9,46.0
step
talk Watcher Grimeo##42299
turnin The Charred Granite of the Dark Portal##26164 |goto 55.1,49.6
turnin The Vile Blood of Demons##26165 |goto 55.1,49.6
accept Enhancing the Stone##26166 |goto 55.1,49.6
step
talk Watch Commander Relthorn Netherwane##16841
turnin Protecting Our Rear##26173 |goto 54.7,50.5
accept Watching Our Back##26174 |goto 54.7,50.5
step
While the Horde Portal Sentry has his back turned to you, click the Horde Plans
|tip Click the plans as soon as the Horde Portal Sentry has his back turned to you while he's pacing, or else he will attack you when you try to get the plans. |model Horde Plans##222
Examine the Horde Plans |q 26174/1 |goto 53.9,50.0
modelnpc Horde Portal-Sentry##42301
step
talk Watch Commander Relthorn Netherwane##16841
turnin Watching Our Back##26174 |goto 54.7,50.5
accept Surwich##26175 |goto 54.7,50.5
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin Enhancing the Stone##26166 |goto 62.9,26.0
accept Not Just Any Body##26161 |goto 62.9,26.0
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
Enter the cave |goto 41.4,33.2 |walk
click Dreadmaul Cache##4192 |indoors Dreadmaul Furnace
collect Loramus' Torso |q 26161/2 |goto 40.0,37.2 |indoors Dreadmaul Furnace
step
Leave the cave |goto 41.4,33.2 |walk
Enter the cave |goto 45.1,30.4 |walk
click Dreadmaul Cache##4192 |indoors Rise of the Defiler
collect Loramus' Head |q 26161/1 |goto 46.7,26.9 |indoors Rise of the Defiler
step
Leave the cave |goto 45.1,30.4 |walk
Enter the cave |goto 46.1,39.0 |walk
click Dreadmaul Cache##4192 |indoors Dreadmaul Post
collect Loramus' Legs |q 26161/3 |goto 47.0,39.5 |indoors Dreadmaul Post
step
Leave the cave |goto 46.1,39.0 |walk
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Kasim Sharim##42298
turnin Not Just Any Body##26161 |goto 62.9,26.0
accept The Altar of Storms##26162 |goto 62.9,26.0
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
Follow the path up |goto 40.2,35.7 |only if walking
click Blood Altar##227
Defend Loramus' Body while he performs the ritual
Resurrect Loramus |q 26162/1 |goto 37.0,28.4
step
click Bloodstone Teleporter##6837 |goto 61.4,29.9
Teleport inside |goto 63.2,26.0 < 5
confirm
step
talk Loramus Thalipedes##7783
turnin The Altar of Storms##26162 |goto 62.3,26.1
step
talk Kasim Sharim##42298
accept The Final Ritual##26170 |goto 62.9,26.0
step
talk Kasim Sharim##42298
Tell him you would like to start the Amulet Ritual
Speak with Kasim Sharim and participate in his ritual |q 26170/1 |goto 62.4,26.2
step
talk Loramus Thalipedes##7783
turnin The Final Ritual##26170 |goto 62.3,26.1
accept You Are Rakh'likh, Demon##26171 |goto 62.3,26.1
step
click Bloodstone Teleporter##7585 |goto 63.2,25.9
Teleport outside |goto 61.4,29.9 < 5
confirm
step
talk Deathly Usher##8816
Tell him you wish to face the Defiler
kill Razelikh the Defiler##41280
Destroy Razelikh's body |q 26171/1 |goto 46.5,21.9
Use the Stone Knife of Sealing on Loramus Thalipedes when he tells you to |use Stone Knife of Sealing##56012
Imprison Razelikh's soul |q 26171/2 |goto 46.5,21.9
step
Jump off here, and stand on the Rune of Return to teleport back down to the ground. |goto 44.8,26.3
|tip It Looks like a pulsing blue ring on the ground.
confirm
step
talk Watcher Grimeo##42299
turnin You Are Rakh'likh, Demon##26171 |goto 55.1,49.6
step
talk Mayor Charlton Connisport##42349
turnin Surwich##26175 |goto 46.4,87.2
accept Wormthorn's Dream##26184 |goto 46.4,87.2
step
talk Graham McAllister##43107
fpath Surwich |goto 47.1,89.2
step
kill 3 Felspore Bog Lord##45125 |q 26184/4 |goto 33.4,76.3
step
kill 5 Doomguard Destroyer##41470+ |q 26184/1 |goto 35.0,75.3
kill 5 Corrupted Darkwood Treant##45119+ |q 26184/3 |goto 35.0,75.3
kill 5 Dreadlord Defiler##41471+ |q 26184/2 |goto 35.0,75.3
step
talk Mayor Charlton Connisport##42349
turnin Wormthorn's Dream##26184 |goto 46.4,87.2
accept Advice from the Cenarion Circle##26185 |goto 46.4,87.2
step
talk Cenarion Observer Shayana##42352
|tip She walks around the town, so you may have to look for her.
turnin Advice from the Cenarion Circle##26185 |goto 45.8,87.6
accept Demoniac Vessel##26186 |goto 45.8,87.6
step
kill Tainted Nightstalker##42337
collect 20 Nightstalker Leg##57178 |q 26186 |goto 35.9,57.8
kill Tainted Black Bear##42336
collect 4 Tainted Hide##57177 |q 26186 |goto 35.9,57.8
kill Tainted Screecher##42338+
collect 2 Screecher Brain##57179 |q 26186 |goto 35.9,57.8
step
Use your Nightstalker Legs |use Nightstalker Leg##57178
collect 20 Crushed Nightstalker Leg##57181 |q 26186
step
Use your Screecher Brains |use Screecher Brain##57179
collect 2 Screecher Brain Paste##57182 |q 26186
step
Use your Tainted Hides |use Tainted Hide##57177
collect Tainted Hide Pouch##57180 |q 26186
step
Use your Crushed Nightstalker Legs |use Crushed Nightstalker Leg##57181
collect Demoniac Commixture##57183 |q 26186
step
Use your Demoniac Commixture |use Demoniac Commixture##57183
collect Demoniac Vessel |q 26186/1
step
talk Mayor Charlton Connisport##42349
turnin Demoniac Vessel##26186 |goto 46.4,87.2
accept The Downfall of Marl Wormthorn##26187 |goto 46.4,87.2
step
Kill the 4 Dreadlord Defilers
Use the Demoniac Vessel on Marl Wormthorn |use Demoniac Vessel##57185
kill Marl Wormthorn##42334 |q 26187/1 |goto 34.7,67.8
step
talk Mayor Charlton Connisport##42349
turnin The Downfall of Marl Wormthorn##26187 |goto 46.4,87.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Draenei (1-5)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
condition_suggested="raceclass('Draenei') and level<=15",
condition_suggested_exclusive=true,
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Azuremyst Isle (5-11)",
startlevel=1,
dynamic=true,
endlevel=5
},[[
step
talk Megelon##16475 |goto Ammen Vale/0 61.2,29.5
accept You Survived!##9279
|only Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |only Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9280 |only Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9369 |only if not Draenei |goto 52.8,35.9
step
kill Vale Moth##16520+
collect 6 Vial of Moth Blood##22889 |q 9280/1 |only Draenei |goto 50.9,28.8
collect 6 Vial of Moth Blood##22899 |q 9369/1 |only if not Draenei |goto 50.9,28.8
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |only Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only Draenei |goto 52.8,35.9
turnin Replenishing the Healing Crystals##9369 |only if not Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only if not Draenei |goto 52.8,35.9
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Urgent Delivery!##9409 |only Draenei |goto 52.5,41.2
accept Rescue the Survivors!##9283 |only Draenei |goto 52.5,41.2
accept Learning the Word##26970 |only Draenei Priest |goto 52.5,41.2
turnin Urgent Delivery!##9409 |only if not Draenei |goto 52.5,41.2
step
talk Proenitus##16477
|tip Outside the building.
accept Botanist Taerix##9371 |goto 52.8,35.9
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 49.9,37.4
accept Volatile Mutations##10302 |goto 49.9,37.4
stickystart "Kill_Volatile_Mutations"
step
Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru##28880
|tip They are Draenei laying on the ground around this area.  They spawn in random locations, so you may have to search for one.
Save a Draenei Survivor |q 9283/1 |goto 48.3,30.4
|only if havequest(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto 48.3,30.4
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 49.9,37.4
accept What Must Be Done...##9293 |goto 49.9,37.4
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 49.7,37.5
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Rescue the Survivors!##9283 |goto 52.5,41.2
|only Draenei
step
talk Technician Zhanaa##17071
|tip Outside the building.
accept Spare Parts##37445 |goto 50.5,47.9
step
talk Vindicator Aldar##16535 |goto 50.6,48.7
accept Inoculation##37444
stickystart "Corrupted_Flowers"
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto 36.6,48.5
step "Corrupted_Flowers"
click Corrupted Flower##6662
|tip They look like flowers with red petals around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 36.6,48.5
step
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 49.7,37.5
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 49.9,37.4
accept Healing the Lake##9294 |goto 49.9,37.4
step
Use the Neutralizing Agent |use Neutralizing Agent##22955
|tip Next to the giant pink crystal in the water.
Disperse the Neutralizing Agent |q 9294/1 |goto 45.5,64.7
stickystart "Inoculate_Nestlewood_Owlkins"
step
Follow the path |goto 48.85,63.98 < 15 |only if walking
Follow the path up |goto 54.34,65.32 < 15 |only if walking
Enter the tunnel |goto 58.48,71.19 < 15 |only if walking
Leave the tunnel |goto 61.14,78.24 < 15 |only if walking
click Emitter Spare Part##6778+
|tip They look like pink crystals with gold parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 37445/1 |goto 65.2,81.2
step
label "Inoculate_Nestlewood_Owlkins"
Use the Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
Inoculate #6# Nestlewood Owlkins |q 37444/1 |goto 65.2,81.2
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 49.9,37.4
accept Vindicator Aldar##10304 |goto 49.9,37.4 |only Draenei
step
Follow the path |goto 47.53,43.95 < 20 |only if walking
talk Technician Zhanaa##17071
turnin Spare Parts##37445 |goto 50.66,48.02
step
talk Vindicator Aldar##16535
turnin Vindicator Aldar##10304 |goto 50.6,48.7 |only Draenei
turnin Inoculation##37444 |goto 50.6,48.7
accept The Missing Scout##9309 |goto 50.6,48.7
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 33.9,69.3
accept The Blood Elves##10303 |goto 33.9,69.3
step
Follow the path up |goto 28.59,73.09 < 15 |only if walking
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto 26.79,75.87
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 33.9,69.3
accept Blood Elf Spy##9311 |goto 33.9,69.3
step
Follow the path up |goto 28.59,73.09 < 15 |only if walking
Follow the path up |goto 26.51,77.25 < 15 |only if walking
kill Surveyor Candress##16522 |q 9311/1 |goto 27.8,80.4
collect Blood Elf Plans##24414 |n
|tip You will get this by looting Surveyor Candress.
Use the Blood Elf Plans |use Blood Elf Plans##24414
accept Blood Elf Plans##9798
step
Follow the path |goto 29.61,72.08 < 20 |only if walking
Continue following the path |goto 34.61,63.91 < 20 |only if walking
Continue following the path |goto 41.86,56.39 < 20 |only if walking
Follow the path up |goto 48.71,51.79 < 20 |only if walking
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto 50.6,48.7
turnin Blood Elf Plans##9798 |goto 50.6,48.7
accept The Emitter##9312 |goto 50.6,48.7
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto 50.66,48.04
accept Travel to Azure Watch##9313 |goto 50.66,48.04
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Azuremyst Isle (1-11)\\Azuremyst Isle (5-11)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",
startlevel=5.43,
dynamic=true,
endlevel=11
},[[
step
talk Aeun##16554 |goto Azuremyst Isle,64.5,54
accept Word from Azure Watch##9314
step
talk Diktynna##17101 |goto Azuremyst Isle,61.1,54.2
accept Red Snapper - Very Tasty!##9452
step
Use your Draenei Fishing Net next on Schools of Red Snapper |use Draenei Fishing Net##23654
model School of Red Snapper##06883
collect 10 Red Snapper##23614 |q 9452/1 |goto Azuremyst Isle,61.9,51.6
step
talk Diktynna##17101 |goto Azuremyst Isle,61.1,54.2
turnin Red Snapper - Very Tasty!##9452
accept Find Acteon!##9453
step
talk Acteon##17110 |goto Azuremyst Isle,49.8,51.9
turnin Find Acteon!##9453
accept The Great Moongraze Hunt##9454
step
talk Anchorite Fateema##17214 |goto Azuremyst Isle,48.4,51.8
accept Medicinal Purpose##9463
|only Draenei
step
talk Technician Dyvuun##16551 |goto Azuremyst Isle,48.7,50.3
turnin Travel to Azure Watch##9313
step
talk Caregiver Chellan##16553 |goto Azuremyst Isle,48.3,49.2
turnin Word from Azure Watch##9314
step
talk Caregiver Chellan##16553 |goto 48.3,49.2
home Azure Watch |future |q 9506
stickystart "Moongraze"
stickystart "Roottrapper"
step "Moongraze"
kill Moongraze Stag##17200+ |goto Azuremyst Isle,50.3,56.6
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1
step "Roottrapper"
kill Root Trapper##17196+ |only if havequest(9463)
collect 8 Root Trapper Vine##23685 |q 9463/1 |only if havequest(9463)
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
accept A Small Start##9506
step
talk "Cookie" McWeaksauce##17246 |goto Azuremyst Isle,46.7,70.5
accept Cookie's Jumbo Gumbo##9512
step
kill Skittering Crawler##17216+
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto Azuremyst Isle,47.6,73
step
talk "Cookie" McWeaksauce##17246 |goto Azuremyst Isle,46.7,70.5
turnin Cookie's Jumbo Gumbo##9512
step
talk Priestess Kyleen Il'dinare##17241 |goto Azuremyst Isle,47.1,70.3
accept Reclaiming the Ruins##9513
step
talk Archaeologist Adamant Ironheart##17242 |goto Azuremyst Isle,47.2,70
accept Precious and Fragile Things Need Special Handling##9523
step
click Nautical Map##6817 |goto Azuremyst Isle,58.6,66.4
collect Nautical Map##23739 |q 9506/2
step
click Nautical Compass##6846 |goto Azuremyst Isle,59.6,67.6
collect Nautical Compass##23738 |q 9506/1
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin A Small Start##9506
accept I've Got a Plant##9530
step
click Hollowed Out Tree##6833 |goto Azuremyst Isle,45.9,65.7
collect Hollowed Out Tree##23790 |q 9530/1
click Piles of Leaves##6884+
collect 5 Pile of Leaves##23791 |q 9530/2
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin I've Got a Plant##9530
accept Tree's Company##9531
stickystart "Ancientrelic"
stickystart "Wrathscale"
step "Ancientrelic"
click Ancient Relic##6710+ |goto Azuremyst Isle,36.1,77
collect 8 Ancient Relic##23779 |q 9523/1
step "Wrathscale"
kill 5 Wrathscale Myrmidon##17194+ |q 9513/1 |goto Azuremyst Isle,36.1,77
kill 5 Wrathscale Naga##17193+ |q 9513/2 |goto Azuremyst Isle,36.1,77
kill 5 Wrathscale Siren##17195+ |q 9513/3 |goto Azuremyst Isle,36.1,77
step
kill Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
collect 1 Rune Covered Tablet##23759 |n
Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
accept Rune Covered Tablet##9514
step
Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |model Naga Flag##06825 |goto Azuremyst Isle,18.5,84.3
Watch the conversation
Uncover the Traitor |q 9531/1
step
talk Anchorite Fateema##17214 |goto 48.4,51.8
turnin Medicinal Purpose##9463
|only Draenei
step
talk Daedal##17215 |goto 48.4,51.5
accept An Alternative Alternative##9473
|only Draenei
step
talk Acteon##17110 |goto Azuremyst Isle,49.8,51.9
turnin The Great Moongraze Hunt##9454
accept The Great Moongraze Hunt##10324
step
kill Moongraze Buck##17201+
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto Azuremyst Isle,50.6,46.2
step
kill Infected Nightstalker Runt##17202
collect 1 Faintly Glowing Crystal##23678 |n
Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
accept Strange Findings##9455 |goto Azuremyst Isle,50.6,46.2
step
click Azure Snapdragon##3251+
|tip If you are an Herbalist you can track these on your minimap.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto Azuremyst Isle,50.4,37.1
step
talk Acteon##17110 |goto Azuremyst Isle,49.8,51.9
turnin The Great Moongraze Hunt##10324
step
talk Daedal##17215 |goto Azuremyst Isle,48.4,51.5
turnin An Alternative Alternative##9473
|only Draenei
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Strange Findings##9455
accept Nightstalker Clean Up, Isle 2...##9456
step
talk Dulvi##17488 |goto Azuremyst Isle,49,51.1
accept The Missing Fisherman##10428
step
talk Caregiver Chellan##16553 |goto Azuremyst Isle,48.3,49.2
accept Beds, Bandages, and Beyond##9603
|only Draenei
step
talk Zaldaan##43991 |goto 49.7,49.1
turnin Beds, Bandages, and Beyond##9603
accept On the Wings of a Hippogryph##9604
|only Draenei
step
talk Nurguni##16768 |goto The Exodar,57.0,50.1
turnin On the Wings of a Hippogryph##9604
accept Hippogryph Master Stephanos##9605
|only Draenei
step
talk Stephanos##17555 |goto 54.5,36.3
turnin Hippogryph Master Stephanos##9605
accept Return to Caregiver Chellan##9606
|only Draenei
step
talk Caregiver Chellan##16553 |goto Azuremyst Isle,48.3,49.2
turnin Return to Caregiver Chellan##9606
|only Draenei
step
kill 8 Infected Nightstalker Runt##17202+ |q 9456/1 |goto Azuremyst Isle,45.7,43.9
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Nightstalker Clean Up, Isle 2...##9456
step
talk Admiral Odesyus##17240 |goto 47.0,70.2
turnin Tree's Company##9531
accept Show Gnomercy##9537
step
talk Priestess Kyleen Il'dinare##17241 |goto 47.1,70.3
turnin Reclaiming the Ruins##9513
turnin Rune Covered Tablet##9514
step
talk Archaeologist Adamant Ironheart##17242 |goto Azuremyst Isle,47.2,70
turnin Precious and Fragile Things Need Special Handling##9523
step
talk Priestess Kyleen Il'dinare##17241 |goto 47.1,70.3
|tip You may have to wait for her to finish her conversation with Archaeologist Adamant Ironheart.
accept Warlord Sriss'tiz##9515
step
talk Engineer "Spark" Overgrind##17243 |goto Azuremyst Isle,48.2,72.5
|tip He patrols the beach so you may have to look for him.
Tell him it's over
kill Engineer "Spark" Overgrind
collect Traitor's Communication##23899 |q 9537/1
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin Show Gnomercy##9537
accept Deliver Them From Evil...##9602
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Deliver Them From Evil...##9602
step
talk Cryptographer Aurren##17232 |goto Azuremyst Isle,49.40,51.0
accept Learning the Language##9538
step
Use your Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1
step
clicknpc Totem of Akida##17360 |goto 49.4,51.0
turnin Learning the Language##9538
accept Totem of Coo##9539
step
Follow Stillpine Ancestor Akida as he runs up the hill
clicknpc Totem of Coo##17361 |goto 55.2,41.7
turnin Totem of Coo##9539
accept Totem of Tikti##9540
modelnpc Stillpine Ancestor Akida##17379
step
Follow Stillpine Ancestor Coo to the edge of the cliff
He will give you wings |havebuff 135898 |q 9540 |goto 55.6,41.6
modelnpc Stillpine Ancestor Coo##17391
step
clicknpc Totem of Tikti##17362 |goto 64.5,39.8
turnin Totem of Tikti##9540
accept Totem of Yor##9541
step
Follow Stillpine Ancestor Tikti to the river
He will give you a swim speed buff |havebuff 132107 |q 9541 |goto 63.8,40.2
modelnpc Stillpine Ancestor Tikti##17392
step
clicknpc Totem of Yor##17363 |goto 63,67.9
|tip It is underwater.
turnin Totem of Yor##9541
accept Totem of Vark##9542
step
Follow Stillpine Ancestor Yor out of the water
He will turn you into a ghost panther |havebuff 132142 |q 9542 |goto 61.0,69.5
modelnpc Stillpine Ancestor Yor##17393
step
Follow Stillpine Ancestor Yor as he runs
clicknpc Totem of Vark##17364 |goto 28.1,62.4
turnin Totem of Vark##9542
accept The Prophecy of Akida##9544
modelnpc Stillpine Ancestor Yor##15926
step
kill Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
collect Bristlelimb Key##23801 |n
click Bristlelimb Cage##1787
Free 8 Stillpine Captives |q 9544/1 |goto 28.5,66.4
step
Enter the cave |goto Azuremyst Isle 26.9,76.3 |walk
Follow the path to the bottom of the cave |walk
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto Azuremyst Isle/2 40.9,67.1
step
Leave the cave |goto Azuremyst Isle/2 59.7,88.5 |walk
talk Cowlen##17311 |goto Azuremyst Isle 16.6,94.5
turnin The Missing Fisherman##10428
accept All That Remains##9527
step
kill Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto 14.8,92
step
talk Cowlen##17311 |goto 16.6,94.5
turnin All That Remains##9527
step
talk Arugoo the Stillpine##17114 |goto 49.41,51.0
turnin The Prophecy of Akida##9544
accept Stillpine Hold##9559
step
talk Priestess Kyleen Il'dinare##17241 |goto 47,70.2
turnin Warlord Sriss'tiz##9515
step
talk Moordo##17442 |goto 44.8,23.9
accept Beasts of the Apocalypse!##9560
step
talk Gurf##17441 |goto 44.7,23.6
accept Murlocs... Why Here? Why Now?##9562
step
talk High Chief Stillpine##17440 |goto 46.7,20.6
turnin Stillpine Hold##9559
step
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto 53.1,20.8
step
Follow the road around
kill Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
click Stillpine Grain##6484+
collect 5 Stillpine Grain##23849 |q 9562/1 |goto 33.8,25.7
step
kill Murgurgala##17475
|tip He patrols the shoreline so you may have to look for him.
collect 1 Gurf's Dignity##23850 |n
Click Gurf's Dignity in your bags |use Gurf's Dignity##23850 |goto 33.8,25.7
accept Gurf's Dignity##9564
step
talk Gurf##17441 |goto 44.7,23.6
turnin Murlocs... Why Here? Why Now?##9562
turnin Gurf's Dignity##9564
step
talk Moordo##17442 |goto 44.8,23.9
turnin Beasts of the Apocalypse!##9560
step
talk High Chief Stillpine##17440 |goto 46.7,20.6
accept Search Stillpine Hold##9565
step
talk Stillpine the Younger##17445 |goto 46.9,21.2
accept Chieftain Oomooroo##9573
step
Go to the upper level of the cave
kill Chieftain Oomooroo##17448 |q 9573/1 |goto Azuremyst Isle/3,38.2,53.3
step
click Blood Crystal##6835 |goto Azuremyst Isle/3,64.3,30.7
turnin Search Stillpine Hold##9565
accept Blood Crystals##9566
step
kill 9 Crazed Wildkin##17189+ |q 9573/2 |goto Azuremyst Isle/3,37.6,69.3
step
talk High Chief Stillpine##17440 |goto Azuremyst Isle,46.7,20.6
turnin Blood Crystals##9566
step
talk Stillpine the Younger##17445 |goto Azuremyst Isle,46.9,21.2
turnin Chieftain Oomooroo##9573
step
talk Kurz the Revelator##17443 |goto 47.0,22.3
accept The Kurken is Lurkin'##9570
step
kill The Kurken##17447
collect The Kurken's Hide##23860 |q 9570/1 |goto Azuremyst Isle/3,59.0,43.5
step
talk Kurz the Revelator##17443 |goto Azuremyst Isle,47.0,22.3
turnin The Kurken is Lurkin'##9570
accept The Kurken's Hide##9571
step
talk High Chief Stillpine##17440 |goto 46.7,20.6
accept Warn Your People##9622
step
talk Moordo##17442 |goto 44.8,23.9
turnin The Kurken's Hide##9571
step
talk Exarch Menelaous##17116 |goto 47.1,50.6
turnin Warn Your People##9622
accept Coming of Age##9623
step
Follow the ramp up and outside The Exodar
talk Torallius the Pack Handler##17584 |goto 35.1,43.4
turnin Coming of Age##9623
step
Go to the Exodar portal to Darnassus |goto The Exodar 47.6,62.1 |n
Click the portal to Darnassus |goto Darnassus |noway |c
step
talk Sentinel Cordressa Briarbow##42936 |goto 43.9,76.1
accept Breaking Waves of Change##26383
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (11-12)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Bloodmyst",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)",
startlevel=11.58,
endlevel=12
},[[
step
talk Vorkhan the Elekk Herder##17586 |goto Bloodmyst Isle,63.0,87.9
turnin Elekks Are Serious Business##9625
|tip You may not have this breadcrumb quest to turn in.
accept Alien Predators##9634
step
talk Kessel##17649 |goto 63.0,87.5
accept The Kessel Run##9663
step
talk High Chief Stillpine##17440 |goto Azuremyst Isle,46.7,20.6
Warn High Chief Stillpine |q 9663/1
step
talk Exarch Menelaous##17116 |goto 47.1,50.6
Warn Exarch Menelaous |q 9663/2
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
Warn Admiral Odesyus |q 9663/3
step
talk Kessel##17649 |goto Bloodmyst Isle,63.0,87.5
turnin The Kessel Run##9663
accept Declaration of Power##9666
step
talk Aonar##17599 |goto 63.4,88.8
accept A Favorite Treat##9624
stickystart "Hatchling"
stickystart "Sandpearl"
step "Hatchling"
kill 10 Bloodmyst Hatchling##17525+ |q 9634/1 |goto 57.4,89.8
step "Sandpearl"
click Sand Pear##473+
collect 10 Sand Pear##23927 |q 9624/1 |goto 57.4,89.8
step
talk Vorkhan the Elekk Herder##17586 |goto 63.0,87.9
turnin Alien Predators##9634
step
talk Aonar##17599 |goto 63.4,88.8
turnin A Favorite Treat##9624
step
talk Princess Stillpine##17682 |goto 68.3,81.1
accept Saving Princess Stillpine##9667
|only if completedq(9538)
step
Kill furbolgs in this camp until High Chief Bristlelimb appears
kill High Chief Bristlelimb##17702
collect The High Chief's Key##24099 |q 9667 |goto 64.5,77.7
|only if completedq(9538)
step
kill Lord Xiz##17701 |q 9666/1
Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
Declare your Power |q 9666/2 |goto 68.8,68.1
step
click Princess Stillpine's Cage##1787
Save Princess Stillpine |q 9667/1 |goto 68.2,81.1
|only if completedq(9538)
step
talk Kessel##17649 |goto 63.0,87.5
turnin Declaration of Power##9666
accept Report to Exarch Admetius##9668
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (12-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Bloodmyst",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",
startlevel=12.30,
endlevel=20
},[[
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
accept A Small Start##9506
step
click Nautical Map##6817 |goto Azuremyst Isle,58.6,66.4
collect Nautical Map##23739 |q 9506/2
step
click Nautical Compass##6846 |goto Azuremyst Isle,59.6,67.6
collect Nautical Compass##23738 |q 9506/1
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin A Small Start##9506
accept I've Got a Plant##9530
step
click Hollowed Out Tree##6833 |goto Azuremyst Isle,45.9,65.7
collect Hollowed Out Tree##23790 |q 9530/1
click Piles of Leaves##6884+
collect 5 Pile of Leaves##23791 |q 9530/2
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin I've Got a Plant##9530
accept Tree's Company##9531
step
Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792
|tip It's a red flag on a metal pole on the beach.
Watch the conversation
Uncover the Traitor |q 9531/1 |goto Azuremyst Isle,18.5,84.3
step
talk Admiral Odesyus##17240 |goto 47.0,70.2
turnin Tree's Company##9531
accept Show Gnomercy##9537
step
talk Engineer "Spark" Overgrind##17243
|tip He patrols the beach so you may have to look for him.
Tell him it's over
kill Engineer "Spark" Overgrind
collect Traitor's Communication##23899 |q 9537/1 |goto Azuremyst Isle,48.2,72.5
step
talk Admiral Odesyus##17240 |goto Azuremyst Isle,47,70.2
turnin Show Gnomercy##9537
accept Deliver Them From Evil...##9602
step
talk Exarch Menelaous##17116 |goto Azuremyst Isle,47.1,50.6
turnin Deliver Them From Evil...##9602
step
click Wanted Poster##6901 |goto Bloodmyst Isle,55.2,59.1
accept WANTED: Deathclaw##9646
step
talk Caregiver Topher Loaal##17553 |goto 55.9,59.8
home Blood Watch |goto 55.9,59.8 |future |q 9629
step
talk Morae##17434 |goto 53.3,57.8
accept Catch and Release##9629
step
talk Stillpine Ambassador Frasaboo##18803 |goto 55.2,56.0
turnin Saving Princess Stillpine##9667
|tip You may not have this breadcrumb quest to turn in.
|only if completedq(9538)
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
accept Mac'Aree Mushroom Menagerie##9648
step
talk Exarch Admetius##17658 |goto 52.7,53.2
turnin Report to Exarch Admetius##9668
|tip You may not have this breadcrumb quest to turn in.
accept What Argus Means to Me##9693
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
accept Learning from the Crystals##9581
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin What Argus Means to Me##9693
accept Blood Watch##9694
step
talk Laando##17554 |goto Bloodmyst Isle 57.7,53.9
fpath Blood Watch
step
click Ruinous Polyspore##6432 |goto 60.7,42.0
collect Ruinous Polyspore##24042 |q 9648/3
step
click Blood Mushroom##6874 |goto 62.3,53.0
|tip It looks like a red-ish glowing mushroom on the ground.
collect Blood Mushroom |q 9648/2
step
kill Stinkhorn Striker##17673
collect Aquatic Stinkhorn |q 9648/1 |goto 59.7,71.0
step
Use the Crystal Mining Pick on Impact Site Crystal |use Crystal Mining Pick##23875
collect Impact Site Crystal Sample##23878 |q 9581/1 |goto 58.1,83.3
stickystart "Cruelfin"
stickystart "Tagger"
step "Cruelfin"
kill Cruelfin##17496
|tip He's an orange murloc that walks along this beach, so you may need to search for him.
collect 1 Red Crystal Pendant##23870 |n
Click the Red Crystal Pendant in your bags |use Red Crystal Pendant##23870 |goto 47.8,94.4
accept Cruelfin's Necklace##9576
step "Tagger"
Use the Murloc Tagger on Blacksilt Scout |use Murloc Tagger##23995
Tag 6 Blacksilt Scouts |q 9629/1
modelnpc Blacksilt Scout##17326
step
click Fel Cone Fungus##6879
collect Fel Cone Fungus |q 9648/4 |goto 44.4,82.4
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
turnin Mac'Aree Mushroom Menagerie##9648
step
talk Morae##17434 |goto 53.3,57.8
turnin Catch and Release##9629
accept Victims of Corruption##9574
turnin Cruelfin's Necklace##9576
step
talk Vindicator Aalesia##17433 |goto 55.1,58.0
accept Know Thine Enemy##9567
step
talk Vindicator Boros##17684 |goto 55.4,55.3
accept Irradiated Crystal Shards##9641
step
talk Prospector Nachlan##18804 |goto 56.3,54.2
accept Explorers' League, Is That Something for Gnomes?##10063
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin Learning from the Crystals##9581
accept The Missing Survey Team##9620
step
kill 10 Sunhawk Spy##17604+ |q 9694/1 |goto 49.5,47.4
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin Blood Watch##9694
step
clicknpc Draenei Cartographer##17600 |goto 61.3,48.4
turnin The Missing Survey Team##9620
accept Salvaging the Data##9628
step
kill Wrathscale Marauder##17334+, Wrathscale Sorceress##17336+
collect Survey Data Crystal |q 9628/1 |goto 61.3,48.4
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin Salvaging the Data##9628
accept The Second Sample##9584
step
kill Corrupted Treant##17352+
collect 6 Crystallized Bark |q 9574/1 |goto 50.9,74
step
click Nazzivus Monument Glyph##5992+
collect Nazzivus Monument Glyph##23859 |q 9567/1 |goto 36.5,71.5
step
kill Tzerak##17528
|tip He is a felguard that walks around the whole Nazzivian area, so if he is not standing in this spot, you may need to search around for him.
collect 1 Tzerak's Armor Plate##23900 |n
Click Tzerak's Armor Plate in your bags |use Tzerak's Armor Plate##23900 |goto 36.5,71.5
accept Signs of the Legion##9594
step
kill 8 Nazzivus Satyr##17337+ |q 9594/1
kill 8 Nazzivus Felsworn##17339+ |q 9594/2
collect 10 Irradiated Crystal Shard |q 9641/1 |goto 37.7,76.7
step
talk Vindicator Aalesia##17433 |goto 55.1,58.0
turnin Know Thine Enemy##9567
turnin Signs of the Legion##9594
accept Containing the Threat##9569
step
talk Morae##17434 |goto 53.2,57.8
turnin Victims of Corruption##9574
step
talk Tracker Lyceon##17642 |goto 55.9,57.0
accept Constrictor Vines##9643
accept The Bear Necessities##9580
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin Irradiated Crystal Shards##9641
accept Intercepting the Message##9779
step
Use the Crystal Mining Pick on the Altered Bloodmyst Crystal |use Crystal Mining Pick##23876
collect Altered Crystal Sample |q 9584/1 |goto 45.7,47.7
step
kill Sunhawk Spy##17604+
collect Sunhawk Missive##24399 |q 9779/1 |goto 48.8,45.9
stickystart "Elderbrownbear"
stickystart "Mutatedconstrictor"
step "Elderbrownbear"
kill Elder Brown Bear##17348
collect 8 Elder Brown Bear Flank |q 9580/1
You can find more around [Bloodmyst Isle,37.5,44.5]
step "Mutatedconstrictor"
kill Mutated Constrictor##17344
collect 6 Thorny Constrictor Vine |q 9643/1 |goto 46.6,35.2
More can also be found around [Bloodmyst Isle,40.4,54]
step
kill Deathclaw##17661
collect Deathclaw's Paw |q 9646/1 |goto 37.1,30.3
step
talk Anchorite Paetheus##17424 |goto 54.7,54.0
accept Newfound Allies##9632
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin Intercepting the Message##9779
accept Translations...##9696
step
talk Tracker Lyceon##17642 |goto 55.9,57.0
turnin Constrictor Vines##9643
turnin The Bear Necessities##9580
accept Culling the Flutterers##9647
step
talk Messenger Hermesius##17703 |goto 54.6,58.0
|tip He walks around the camp
accept Urgent Delivery##9671 |instant
step
talk Interrogator Elysis##17825 |goto 54.4,54.5
turnin Translations...##9696
accept Audience with the Prophet##9698
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin The Second Sample##9584
accept The Final Sample##9585
turnin WANTED: Deathclaw##9646
step
talk Prophet Velen##17468 |goto The Exodar,32.9,54.4
turnin Audience with the Prophet##9698
accept Truth or Fiction##9699
step
talk Vindicator Boros##17684 |goto Bloodmyst Isle,55.4,55.3
turnin Truth or Fiction##9699
accept I Shoot Magic Into the Darkness##9700
step
kill 10 Royal Blue Flutterer##17350+ |q 9647/1 |goto 44.9,56.0
You can find more:
Around [Bloodmyst Isle,44.5,50.4]
Around [Bloodmyst Isle,47.3,32.2]
step
Go to this spot
Confirm the Sun Portal Site |q 9700/2
kill 5 Void Anomaly##17550+ |q 9700/1 |goto 52.5,22.3
step
talk Clopper Wizbang##17421 |goto 42.1,21.2
turnin Explorers' League, Is That Something for Gnomes?##10063
accept Pilfered Equipment##9548
accept Artifacts of the Blacksilt##9549
step
click Clopper's Equipment##336
|tip It can spawn in all the little murloc camps along this shore, so you may need to search for it.
collect Clopper's Equipment |q 9548/1 |goto 40.4,20.1
step
kill Blacksilt Seer##17330+
collect 3 Crude Murloc Idol |q 9549/1
kill Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+
collect 6 Crude Murloc Knife |q 9549/2 |goto 38.7,21.2
step
talk Clopper Wizbang##17421
turnin Pilfered Equipment##9548
turnin Artifacts of the Blacksilt##9549
collect 1 Weathered Treasure Map##23837 |n
Click the Weathered Treasure Map in your bags |use Weathered Treasure Map##23837 |goto 42.1,21.2
accept A Map to Where?##9550
step
kill Zevrax##17494 |q 9569/1 |goto 41.9,29.5
step
Use your Crystal Mining Pick next to the Axxarien Crystal |use Crystal Mining Pick##23877
|tip It looks like a huge red crystal in the ground.
collect Axxarien Crystal Sample |q 9585/1 |goto 41.3,30.9
step
kill 5 Axxarien Shadowstalker##17340+ |q 9569/3
kill 5 Axxarien Hellcaller##17342+ |q 9569/2
click Corrupted Crystal##6836+ |goto 38.2,37.4
collect 5 Corrupted Crystal |q 9569/4
step
Follow this little ramp up |goto 60.8,41.36 <5 |c
step
click Battered Ancient Book##6845 |goto 61.2,41.9
turnin A Map to Where?##9550
accept Deciphering the Book##9557
step
talk Vindicator Aalesia##17433 |goto 55.1,58.0
turnin Containing the Threat##9569
step
talk Vindicator Boros##17684 |goto 55.4,55.3
turnin I Shoot Magic Into the Darkness##9700
step
talk Tracker Lyceon##17642 |goto 55.9,57.0
turnin Culling the Flutterers##9647
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
accept Ysera's Tears##9649
step
talk Anchorite Paetheus##17424 |goto 54.7,53.9
turnin Deciphering the Book##9557
accept Nolkai's Words##9561
step
talk Harbinger Mikolaas##17423 |goto 52.6,53.2
turnin The Final Sample##9585
accept Talk to the Hand##10064
step
Click the Mailbox and retrieve the letter from Admiral Odesyus
collect 1 A Letter from the Admiral##24132 |n |goto 55.2,59.2
Click A Letter from the Admiral in your bags |use A Letter from the Admiral##24132
accept The Bloodcurse Legacy##9672
step
talk Morae##17434 |goto 53.3,57.7
accept Searching for Galaen##9578
step
click Mound of Dirt##49 |goto 61.1,49.7
turnin Nolkai's Words##9561
step
talk Prince Toreth##17674 |goto 74.2,33.5
accept Restoring Sanctity##9687
step
click Dragon Bone##6898+ |goto 59.9,35.7
collect 8 Dragon Bone |q 9687/1
You can find more around [Bloodmyst Isle,56.2,39.8]
step
talk Prince Toreth##17674 |goto 74.2,33.5
turnin Restoring Sanctity##9687
accept Into the Dream##9688
step
kill 5 Veridian Whelp##17588+ |q 9688/1
kill 5 Veridian Broodling##17589+ |q 9688/2 |goto 75.4,29.6
step
talk Prince Toreth##17674 |goto 74.2,33.5
turnin Into the Dream##9688
step
talk Captain Edward Hanes##17712 |goto 79.2,22.6
turnin The Bloodcurse Legacy##9672
accept The Bloodcursed Naga##9674
step
kill 10 Bloodcursed Naga##17713+ |q 9674/1 |goto 82.4,26.2
More can be found at [Bloodmyst Isle,81.4,18.3]
step
talk Captain Edward Hanes##17712 |goto 79.1,22.6
turnin The Bloodcursed Naga##9674
accept The Hopeless Ones...##9682
step
kill Bloodcursed Voyager##17714+
collect 4 Bloodcursed Soul |q 9682/1 |goto 85.7,14.3
step
talk Captain Edward Hanes##17712 |goto 79.1,22.6
turnin The Hopeless Ones...##9682
accept Ending the Bloodcurse##9683
step
click Ysera's Tear##6880+
|tip They are pretty rare, so you may need to search a little for them.
|tip They look like blue-green mushrooms
collect 2 Ysera's Tear |q 9649/1 |goto 75.7,28.5
step
Follow the path up |goto 82.9,48.8
click Statue of Queen Azshara##4853
kill Atoph the Bloodcursed##17715 |q 9683/1 |goto 85.9,54.3
step
talk Captain Edward Hanes##17712 |goto 79.1,22.6
turnin Ending the Bloodcurse##9683
step
talk Jessera of Mac'Aree##17663 |goto 56.4,56.8
turnin Ysera's Tears##9649
step
talk Achelus##17676 |goto 53.2,57.0
accept The Missing Expedition##9669
step
talk Vindicator Kuros##17843 |goto 55.6,55.2
accept The Cryo-Core##9703
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
accept What We Know...##9753
step
talk Exarch Admetius##17658 |goto 52.7,53.2
turnin What We Know...##9753
accept What We Don't Know...##9756
step
talk Captured Sunhawk Agent##17824 |goto 54.4,54.3
Tell him you're a prisoner and the draenei filth captured you as you exited the sun gate
Recover the Sunhawk Information |q 9756/1
step
talk Exarch Admetius##17658 |goto 52.7,53.2
turnin What We Don't Know...##9756
accept Vindicator's Rest##9760
stickystart "Corpse"
stickystart "Journal"
step "Corpse"
clicknpc Galaen's Corpse##17508
turnin Searching for Galaen##9578 |goto 37.5,61.2
accept Galaen's Fate##9579 |goto 37.5,61.2
step "Journal"
click Galaen's Journal##4431
accept Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto 37.5,61.2
stickystart "Reclaimer"
stickystart "Supplies"
step "Reclaimer"
kill Sunhawk Reclaimer##17606+
collect Galaen's Amulet |q 9579/1 |goto 39.6,58.9
step "Supplies"
click Medical Supplies##6881+ |goto 39.6,58.9
The Reclaimers also have a chance to drop these
collect 12 Medical Supplies |q 9703/1
step
talk Vindicator Kuros##17843 |goto 55.6,55.2
turnin The Cryo-Core##9703
turnin Galaen's Journal - The Fate of Vindicator Saruan##9706
accept Matis the Cruel##9711
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
accept Don't Drink the Water##9748
step
Use your Water Sample Flask at the bottom of the red waterfall |use Water Sample Flask##24318
collect Bloodmyst Water Sample |q 9748/1 |goto 34.4,33.6
step
Use your Flare Gun on Matis the Cruel before you engage him |use Flare Gun##24278
kill Matis the Cruel##17664
|tip He patrols along this road so you may need to search for him
Matis the Cruel Captured |q 9711/1 |goto 39.6,45.3
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin Don't Drink the Water##9748
accept Limits of Physical Exhaustion##9746
step
talk Vindicator Kuros##17843 |goto 55.6,55.2
turnin Matis the Cruel##9711
step
talk Morae##17434 |goto 53.3,57.7
turnin Galaen's Fate##9579
step
talk Scout Jorli##17927 |goto 30.2,45.9
turnin Talk to the Hand##10064
accept Cutting a Path##10065
step
talk Scout Loryi##17926 |goto 30.3,45.9
accept Critters of the Void##9741
step
talk Vindicator Corin##17986 |goto 30.8,46.9
turnin Vindicator's Rest##9760
accept Clearing the Way##9761
accept Fouled Water Spirits##10067
accept Oh, the Tangled Webs They Weave##10066
stickystart "Tangler"
stickystart "Ravager"
step "Tangler"
kill 8 Mutated Tangler##17346+ |q 10066/1 |goto 31.5,55.8
step "Ravager"
kill 10 Enraged Ravager##17527+ |q 10065/1 |goto 31.5,55.8
step
kill 8 Sunhawk Saboteur##17609+ |q 9761/1
kill 8 Sunhawk Agent##17610+ |q 9761/2 |goto 19.5,53.9
step
kill 10 Sunhawk Pyromancer##17608+ |q 9746/1
kill 10 Sunhawk Defender##17607+ |q 9746/2 |goto 25.4,56.9
step
kill 12 Void Critter##17887+ |q 9741/1 |goto 18.8,63.5
|tip They are underwater.
step
talk Vindicator Corin##17986 |goto 30.8,46.9
turnin Clearing the Way##9761
turnin Oh, the Tangled Webs They Weave##10066
step
talk Scout Jorli##17927 |goto 30.3,45.9
turnin Cutting a Path##10065
step
kill 6 Fouled Water Spirit##17358+ |q 10067/1 |goto 30.7,40.3
step
talk Vindicator Corin##17986 |goto 30.8,46.9
turnin Fouled Water Spirits##10067
step
talk Researcher Cornelius##17686 |goto 24.9,34.4
accept They're Alive! Maybe...##9670
stickystart "Zarakh"
stickystart "Creature"
stickystart "Myst"
step "Zarakh"
Follow the path up |goto 22.9,37.5
kill Zarakh##17683 |q 9669/3
step "Creature"
kill Webbed Creature##17680+
Free 5 Expedition Researchers |q 9670/1 |goto 18.2,37.5
modelnpc Expedition Researcher##17681
step "Myst"
kill 8 Myst Leecher##17523+ |q 9669/1
kill 8 Myst Spinner##17522+ |q 9669/2
step
talk Researcher Cornelius##17686 |goto Bloodmyst Isle,24.9,34.4
turnin They're Alive! Maybe...##9670
step
talk Achelus##17676 |goto 53.2,57.0
turnin The Missing Expedition##9669
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin Critters of the Void##9741
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin Limits of Physical Exhaustion##9746
accept The Sun Gate##9740
step
click Sunhawk Portal Controller##5811+
Destroy 4 Sunhawk Portal Controllers
Swim into the lake to [Bloodmyst Isle,18.9,63.5]
click Sun Gate##6927 |goto 19.5,62.5
Destroy the Sun Gate |q 9740/1
step
talk Vindicator Aesom##17844 |goto 55.5,55.4
turnin The Sun Gate##9740
step
Follow the big ramp up and outside to Azuremyst Isle
talk Huntress Kella Nightbow##17614 |goto Azuremyst Isle,24.2,54.3
turnin Newfound Allies##9632
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538 |goto Azuremyst Isle,49.40,51.0
step
Use your Stillpine Furbolg Language Primer |use Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1
step
clicknpc Totem of Akida##17360
turnin Learning the Language##9538 |goto 49.4,51.0
accept Totem of Coo##9539 |goto 49.4,51.0
step
Follow Stillpine Ancestor Akida as he runs up the hill
clicknpc Totem of Coo##17361
turnin Totem of Coo##9539 |goto 55.2,41.7
accept Totem of Tikti##9540 |goto 55.2,41.7
modelnpc Stillpine Ancestor Akida##17379
step
Follow Stillpine Ancestor Coo to the edge of the cliff
He will give you wings |havebuff 135898 |q 9540 |goto 55.6,41.6
modelnpc Stillpine Ancestor Coo##17391
step
clicknpc Totem of Tikti##17362
turnin Totem of Tikti##9540 |goto Azuremyst Isle,64.5,39.8
accept Totem of Yor##9541 |goto Azuremyst Isle,64.5,39.8
step
Follow Stillpine Ancestor Tikti to the river
He will give you a swim speed buff |havebuff 132107 |q 9541 |goto 63.8,40.2
modelnpc Stillpine Ancestor Tikti##17392
step
clicknpc Totem of Yor##17363 |tip It is underwater.
turnin Totem of Yor##9541 |goto Azuremyst Isle,63,67.9
accept Totem of Vark##9542 |goto Azuremyst Isle,63,67.9
step
Follow Stillpine Ancestor Yor out of the water
He will turn you into a ghost panther |havebuff 132142 |q 9542 |goto 61.0,69.5
modelnpc Stillpine Ancestor Yor##17393
step
Follow Stillpine Ancestor Yor as he runs
clicknpc Totem of Vark##17364
turnin Totem of Vark##9542 |goto Azuremyst Isle,28.1,62.4
accept The Prophecy of Akida##9544 |goto Azuremyst Isle,28.1,62.4
modelnpc Stillpine Ancestor Yor##15926
step
from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
collect Bristlelimb Key##23801 |n
click Bristlelimb Cage##1787
Free 8 Stillpine Captives |q 9544/1 |goto Azuremyst Isle,28.5,66.4
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto Azuremyst Isle,49.41,51.0
accept Stillpine Hold##9559 |goto Azuremyst Isle,49.41,51.0
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto Azuremyst Isle,46.7,20.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Night Elf (1-11)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\NightElf",
condition_suggested="raceclass('NightElf') and level<=15",
condition_suggested_exclusive=true,
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",
startlevel=1,
dynamic=true,
endlevel=11
},[[
step
talk Ilthalaine##2079
accept The Balance of Nature##28713 |goto Shadowglen/0 45.6,74.6
step
kill 6 Young Nightsaber##2031 |q 28713/1 |goto 45.2,80.8
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto 45.6,74.6
accept Fel Moss Corruption##28714 |goto 45.6,74.6
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto 46.0,72.9
stickystart "Stolenbags"
step
kill Grell##1988+
collect 6 Fel Moss##3297 |q 28714/1 |goto 36.9,78.2
step "Stolenbags"
click Melithar's Stolen Bag##323+
|tip They look like tan leather sacks on the ground around this area.
collect 5 Melithar's Stolen Bags##46700 |q 28715/1 |goto 36.9,78.2
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto 46.3,73.5
step
talk Melithar Staghelm##2077
turnin Demonic Thieves##28715 |goto 46.0,72.9
step
Follow the path |goto 41.19,62.71 < 20 |only if walking
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto 42.5,50.6
accept Iverron's Antidote##28724 |goto 42.5,50.6
|only NightElf
step
click Moonpetal Lily##253+
|tip They are all around these ponds.
collect 7 Moonpetal Lily##10641 |q 28724/1 |goto 42.49,50.54
|only if havequest(28724)
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto 42.5,50.6
accept The Woodland Protector##28725 |goto 42.5,50.6
|only NightElf
step
talk Tarindrella##49480
|tip She will appear next to you when you reach the entrance of the cave.
turnin The Woodland Protector##28725 |goto Teldrassil/2 44.5,82.2
accept Webwood Corruption##28726 |goto Teldrassil/2 44.5,82.2
|only NightElf
step
kill 12 Webwood Spider##1986 |q 28726/1 |goto 46.02,60.91
|tip They are all around inside this cave.
|only if havequest(28726)
step
_Next to you:_
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
|only NightElf
step
Follow the path down |goto 46.12,55.06 < 15 |walk
Follow the path up |goto 39.27,31.34 < 15 |walk
Continue up the path |goto 34.42,16.19 < 15 |walk
kill Githyiss the Vile##1994+ |q 28727/1 |goto 44.9,28.1
|only if havequest(28727)
step
_Next to you:_
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
|only NightElf
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto Shadowglen/0 42.50,50.47
accept Teldrassil: Crown of Azeroth##28729 |goto Shadowglen/0 42.50,50.47
|only NightElf
step
Use the Crystal Phial near the water |use Crystal Phial##5185
collect Filled Crystal Phial##5184 |q 28729/1 |goto 50.3,33.7
|only if havequest(28729)
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto 42.50,50.49
accept Precious Waters##28730 |goto 42.50,50.49
|only NightElf
step
Follow the ramp up |goto 41.90,63.50 < 15 |only if walking
Continue up the ramp |goto 46.05,54.07 < 15 |only if walking
Continue up the ramp |goto 45.65,61.04 < 15 |only if walking
talk Tenaron Stormgrip##3514
|tip In a room at the top of the tree.
turnin Precious Waters##28730 |goto 47.2,55.9
accept Teldrassil: Passing Awareness##28731 |goto 47.2,55.9
|only NightElf
step
Jump onto the roof of the house below |goto 47.96,59.95 < 15 |only if walking
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto 54.6,84.7
step
Follow the path |goto Teldrassil/0 60.77,45.61 < 15 |only if walking
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil/0 59.52,49.17
stickystart "Webwood_Spider_Silk"
step
kill Nightsaber##2042+
collect 2 Nightsaber Fang##3409 |q 488/1 |goto 60.5,52.5
There are more around [57.7,52.5]
step
label "Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 2 Webwood Spider Silk##3412 |q 488/3 |goto 60.5,52.5
There are more around [57.7,52.5]
step
kill Strigid Owl##1995+
collect 2 Strigid Owl Feather##3411 |q 488/2 |goto 57.7,52.5
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 59.55,49.24
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto 55.55,49.98
step
talk Fidelio##40553
fpath Dolanaar |goto 55.5,50.4
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto 55.7,52.0
step
talk Innkeeper Keldamyr##6736
turnin Dolanaar Delivery##2159 |goto 55.37,52.23
step
talk Innkeeper Keldamyr##6736
home Dolanaar |goto 55.37,52.23 |future |q 289
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto 55.8,53.9
accept Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
click Fel Cone##10405+
|tip They look like big pine cones with green gas floating out of them on the ground around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto 51.8,53.2
step
Follow the road |goto 55.88,50.63 < 20 |only if walking
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 59.5,49.2
step
Use the Jade Phial near the water |use Jade Phial##5619
collect Filled Jade Phial |q 929/1 |goto 62.1,50.8
|only if havequest(929)
step
Follow the path |goto 62.82,50.10 < 20 |only if walking
talk Gaerolas Talvethren##2107
|tip Upstairs in the house.
turnin A Troubling Breeze##475 |goto 64.6,51.2
accept Gnarlpine Corruption##476 |goto 64.6,51.2
step
click Tallonkai's Dresser##1568
|tip Inside the small house.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto 66.1,52.1
step
Follow the path |goto 65.02,50.87 < 20 |only if walking
Follow the road |goto 60.16,49.29 < 20 |only if walking
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto 55.55,49.98
accept Ferocitas the Dream Eater##2459 |goto 55.55,49.98
accept Twisted Hatred##932 |goto 55.55,49.98
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto 55.7,52.0
accept The Relics of Wakening##483 |goto 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
accept Resident Danger##13945 |goto 55.66,51.98
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto 56.73,53.51
|only NightElf
stickystart "Kill_Gnarlpine_Mystics"
step
Follow the path |goto 63.46,47.40 < 20 |only if walking
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel |q 2459/2 |goto 67.25,46.87
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto 66.62,46.63
step
Follow the path |goto 65.13,47.47 < 20 |only if walking
Follow the road |goto 61.65,47.39 < 20 |only if walking
Continue following the road |goto 59.08,50.12 < 20 |only if walking
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto 55.55,49.98
stickystart "Seeds"
step
Follow the road |goto 55.25,51.05 < 20 |only if walking
Follow the path |goto 52.81,49.44 < 20 |only if walking
Follow the path |goto 53.77,46.89 < 15 |only if walking
Follow the path |goto Teldrassil/3 75.64,64.97 < 15 |walk
Follow the path |goto Teldrassil/3 62.88,55.85 < 15 |walk
Continue following the path |goto Teldrassil/3 51.47,26.13 < 15 |walk
Continue following the path |goto Teldrassil/3 39.09,28.22 < 15 |walk
Follow the path |goto Teldrassil/3 29.29,19.10 < 15 |walk
kill Lord Melenas##2038
collect Melenas' Head |q 932/1 |goto Teldrassil/3 21.21,43.19
step "Seeds"
Use the Ireroot Seeds on Sprites |use Ireroot Seeds##46716
|tip They're all around inside this cave.
Kill #12# Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto 15.8,52.4
step
talk Syral Bladeleaf##2083
turnin Nature's Reprisal##13946 |goto Teldrassil/0 55.76,50.45
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto 55.55,49.99
step
Approach Citarre Mapleheart |goto 55.58,51.70 < 10 |c |q 13945
step
talk Citarre Mapleheart##34761 |goto 55.58,51.70 |n
Tell her _"I'm ready to depart for Ban'ethil Barrow Den."_
Begin Riding to the Ban'ethil Barrow Den |goto 55.6,51.7 > 30 |noway |c |q 13945
step
Ride to the Ban'ethil Barrow Den |goto 45.68,50.49 < 15 |c |q 13945
stickystart "Slay_Banethil_Gnarlpine"
stickystart "Shaman_Voodoo_Charm"
step
Follow the spiral path down |goto Teldrassil/4 47.43,17.72 < 10 |walk
Continue following the path down |goto Teldrassil/4 34.65,27.83 < 10 |walk
Cross the bridge |goto Teldrassil/4 39.61,60.69 < 10 |walk
talk Oben Rageclaw##7317
accept The Sleeping Druid##2541 |goto Teldrassil/4 41.17,83.85
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Rune of Nesting?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of Nesting##2742
collect Rune of Nesting##3408 |q 483/4
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Black Feather Quill?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Black Feather##2739
collect Black Feather Quill##3406 |q 483/2
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Sapphire of Sky?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Sky##2741
collect Sapphire of Sky##3407 |q 483/3
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Raven Claw Talisman?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Raven Claw##2740
collect Raven Claw Talisman##3405 |q 483/1
step
label "Shaman_Voodoo_Charm"
kill Gnarlpine Shaman##2009+
|tip All throughout the cave.
collect Shaman Voodoo Charm##8363 |q 2541/1
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Can you lead me to the exit?"_
|tip Follow the green mist trail that appears, until you see an area with 2 bridges.
|tip Don't actually leave the cave.
talk Oben Rageclaw##7317
turnin The Sleeping Druid##2541 |goto 41.30,83.78
accept Druid of the Claw##2561 |goto 41.30,83.78
step
Cross the bridge |goto 43.57,74.13 < 10 |walk
Cross the bridge |goto 41.30,57.11 < 10 |walk
kill Rageclaw##7318
|tip The doors will open as you approach them.
|tip You will be attacked immediately, so be ready.
Use the Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
Release Oben Rageclaw's Spirit |q 2561/1 |goto 58.74,66.56
step
Cross the bridge |goto 51.61,62.33 < 10 |walk
Cross the bridge |goto 39.70,60.89 < 10 |walk
talk Oben Rageclaw##7317
turnin Druid of the Claw##2561 |goto 41.35,83.78
step
label "Slay_Banethil_Gnarlpine"
Kill enemies inside the cave
Slay #20# Ban'ethil Gnarlpine |q 13945/1
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto Teldrassil/0 55.7,52.0
accept Ursal the Mauler##486 |goto Teldrassil/0 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
turnin Resident Danger##13945 |goto 55.66,51.99
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto 55.47,50.42
accept To Darnassus##6341 |goto 55.47,50.42
|only NightElf
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus/0 36.1,53.5
accept An Unexpected Gift##6342 |goto Darnassus/0 36.1,53.5
|only NightElf
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto 36.6,47.9
accept Return to Nyoma##6343 |goto 36.6,47.9
|only NightElf
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil/0 56.73,53.52
|only NightElf
step
Follow the road |goto 55.76,50.83 < 20 |only if walking
Continue following the road |goto 54.23,51.03 < 20 |only if walking
Continue following the road |goto 51.19,49.24 < 20 |only if walking
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto 49.35,44.67
stickystart "Kill_Gnarlpine_Ambushers"
step
Follow the path up |goto 49.40,42.83 < 15 |only if walking
Continue up the path |goto 50.38,37.98 < 15 |only if walking
Follow the path up |goto 50.63,36.38 < 15 |only if walking
kill Ursal the Mauler##2039 |q 486/1 |goto 51.70,39.29
step
label "Kill_Gnarlpine_Ambushers"
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto 51.33,37.36
step
Follow the path down |goto 50.47,36.66 < 15 |only if walking
Continue down the path |goto 49.71,42.02 < 15 |only if walking
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto 49.35,44.67
step
Follow the road |goto 49.60,45.62 < 20 |only if walking
Continue following the road |goto 51.07,49.17 < 20 |only if walking
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto 55.7,52.0
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto 55.76,50.44
step
Follow the path down |goto 56.57,54.97 < 20 |only if walking
Follow the path |goto 59.32,57.73 < 20 |only if walking
talk Denalan##2080
turnin Denalan's Earth##997 |goto 59.93,59.76
Watch the dialogue
accept Timberling Seeds##918 |goto 59.93,59.76
accept Timberling Sprouts##919 |goto 59.93,59.76
stickystart "Collect_Timberling_Sprouts"
stickystart "Collect_Timberling_Seeds"
step
Follow the path |goto 59.17,61.58 < 20 |only if walking
click Strange Fruited Plant##369
accept The Glowing Fruit##930 |goto 57.6,62.9
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 6 Timberling Seed##5168 |q 918/1 |goto 57.55,62.45
step
label "Collect_Timberling_Sprouts"
click Timberling Sprout##391+
|tip They look like balls of green vines on the ground around this area.
collect 10 Timberling Sprout##5169 |q 919/1 |goto 57.55,62.45
step
Follow the path |goto 58.64,62.53 < 20 |only if walking
talk Denalan##2080
turnin Timberling Seeds##918 |goto 59.93,59.76
accept Rellian Greenspyre##922 |goto 59.93,59.76
turnin Timberling Sprouts##919 |goto 59.93,59.76
turnin The Glowing Fruit##930 |goto 59.93,59.76
step
Follow the path |goto 59.57,58.10 < 20 |only if walking
Follow the path up |goto 56.89,55.93 < 20 |only if walking
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto 55.8,53.9
step
Follow the road |goto 54.37,51.06 < 20 |only if walking
Continue following the road |goto 51.17,49.21 < 20 |only if walking
Continue following the road |goto 48.02,43.36 < 20 |only if walking
Cross the bridge |goto 45.74,44.12 < 20 |only if walking
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto 43.96,44.16
accept Mossy Tumors##923 |goto 43.96,44.16
step
Follow the path |goto 43.08,43.51 < 20 |only if walking
Follow the path |goto 42.18,40.24 < 20 |only if walking
Kill Timberling enemies around this area
|tip Follow the water north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto 44.27,34.55
step
Follow the path up |goto 43.29,29.80 < 30 |only if walking
Follow the path |goto 41.65,30.68 < 20 |only if walking
Use the Amethyst Phial near the water |use Amethyst Phial##18152
collect Filled Amerthyst Phial##18151 |q 7383/1 |goto 40.5,29.9
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 39.50,29.86
step
talk Priestess A'moora##7313
|tip She walks around.
accept Tears of the Moon##2518 |goto 39.25,29.73
stickystart "Collect_Bloodfeather_Belts"
step
click Strange Fronded Plant##370
accept The Shimmering Frond##931 |goto 37.3,25.5
step
label "Collect_Bloodfeather_Belts"
Kill Bloodfeather enemies around this area
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto 37.3,25.5
step
Follow the path |goto 37.34,23.61 < 20 |only if walking
Follow the path |goto 39.16,22.16 < 20 |only if walking
kill Lady Sathrah##7319
|tip She's a gray spider that walks around this small area.
collect Silvery Spinnerets##8344 |q 2518/1 |goto 40.7,22.1
step
Follow the path |goto 40.59,23.09 < 20 |only if walking
Follow the path |goto 39.61,26.36 < 20 |only if walking
talk Priestess A'moora##7313
|tip She walks around.
turnin Tears of the Moon##2518 |goto 39.19,29.88
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 39.50,29.86
step
Follow the path |goto 40.59,36.67 < 20 |only if walking
talk Corithras Moonrage##3515
|tip He paces around.
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto 41.07,45.73
accept Teldrassil: The Coming Dawn##933 |goto 41.07,45.73
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto 44.0,44.2
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto 43.94,44.20
accept Oakenscowl##2499 |goto 43.94,44.20
step
Follow the path |goto 42.05,47.43 < 20 |only if walking
Follow the path |goto 42.67,50.64 < 20 |only if walking
Continue following the path |goto 42.65,54.71 < 20 |only if walking
Use the Tourmaline Phial near the water |use Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto 43.76,58.55
step
talk Tarindrella##1992
turnin Teldrassil: The Coming Dawn##933 |goto 42.51,58.19
accept The Vengeance of Elune##14005 |goto 42.51,58.19
step
Follow the path |goto 42.39,60.15 < 20 |only if walking
Follow the path |goto 43.10,62.21 < 20 |only if walking
Continue following the path |goto 42.74,68.78 < 20 |only if walking
Follow the path |goto 41.91,69.75 < 20 |only if walking
kill Bough of Corruption##34521 |q 14005/1 |goto 40.7,69.3
|tip Use the abilities on your action bar.
step
Follow the path |goto 41.47,69.90 < 20 |only if walking
Continue following the path |goto 42.89,68.30 < 20 |only if walking
Follow the path |goto 43.16,64.59 < 20 |only if walking
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto 42.5,58.2
accept The Waters of Teldrassil##935 |goto 42.5,58.2
step
Follow the path |goto 40.81,51.73 < 20 |only if walking
Follow the road |goto 40.30,47.60 < 20 |only if walking
talk Corithras Moonrage##3515
|tip He paces around.
turnin The Waters of Teldrassil##935 |goto 41.05,45.69
accept Home of the Kaldorei##14039 |goto 41.05,45.69
step
Cross the bridge |goto 45.43,44.61 < 20 |only if walking
Follow the path |goto 46.81,42.29 < 20 |only if walking
Follow the path |goto 47.23,39.41 < 20 |only if walking
kill Oakenscowl##2166
|tip He's a red and green elemental that walks around this area.
collect Gargantuan Tumor##8136 |q 2499/1 |goto 47.4,35.2
step
Follow the path up |goto 47.00,36.94 < 20 |only if walking
Follow the path |goto 47.17,40.43 < 20 |only if walking
Cross the bridge |goto 45.74,44.13 < 20 |only if walking
talk Denalan##2080
turnin Oakenscowl##2499 |goto 43.94,44.20
step
click Hero's Call Board##10016
accept Hero's Call: Darkshore!##28490 |goto Darnassus/0 44.96,49.87
|only Draenei,Dwarf,Gnome,Human
step
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto 43.9,76.1
|only NightElf
step
talk Genn Greymane##48736
accept Breaking Waves of Change##26385 |goto 48.2,14.7
|only Worgen
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Home of the Kaldorei##14039 |goto 43.0,78.1
step
Enter the Pink Portal |goto 36.90,50.40 |n
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26383 |only if havequest(26383)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26385 |only if havequest(26385)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 28490 |only if havequest(28490)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)",
startlevel=11.58,
dynamic=true,
endlevel=16
},[[
step
talk Dentaria Silverglade##32973
turnin Hero's Call: Darkshore!##28490 |goto Darkshore,51.8,18.0 |only Dwarf,Gnome,Human,Draenei
turnin Breaking Waves of Change##26383 |goto Darkshore,51.8,18.0 |only NightElf
turnin Breaking Waves of Change##26385 |goto Darkshore,51.8,18.0 |only Worgen
accept The Last Wave of Survivors##13518 |goto Darkshore,51.8,18.0
step
talk Innkeeper Kyteran##43420
home Lor'danel |q 13522 |future |goto 51.0,18.6
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept Threat from the Water##13522 |goto 50.2,19.8
step
talk Volcor##33094
Rescue Volcor |q 13518/4 |goto 45.0,18.2
step
talk Gershala Nightwhisper##32911
Rescue Gershala Nightwhisper |q 13518/2 |goto 44.1,17.8
step
talk Cerellean Whiteclaw##33093
Rescue Cerellean Whiteclaw |q 13518/1 |goto 44.6,19.9
step
talk Shaldyn##33095
Rescue Shaldyn |q 13518/3 |goto 42.9,21.5
step
kill 8 Vile Spray##32928 |q 13522/1 |goto 43.1,20.6
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin Threat from the Water##13522 |goto 50.2,19.8
step
talk Dentaria Silverglade##32973
turnin The Last Wave of Survivors##13518 |goto 51.8,18.0
step
talk Serendia Oakwhisper##32972
accept The Boon of the Seas##13520 |goto 51.8,18.1
step
talk Wizbang Cranktoggle##32977
accept Buzzbox 413##13521 |goto 51.1,19.7
step
click Encrusted Clam##261+
collect 16 Encrusted Clam Muscle |q 13520/1 |goto 52.4,18.8
step
kill Corrupted Tide Crawler##32935+
collect 4 Corrupted Tide Crawler Flesh |q 13521/1 |goto 53.4,19.5
step
click Buzzbox 413##356
turnin Buzzbox 413##13521 |goto 53.3,19.6
accept No Accounting for Taste##13527 |goto 53.3,19.6
step
clicknpc Decomposing Thistle Bear##32975
collect Foul Bear Carcass Sample |q 13527/1 |goto 55.1,21.0
step
talk Wizbang Cranktoggle##32977
turnin No Accounting for Taste##13527 |goto 51.1,19.7
accept Buzzbox 723##13528 |goto 51.1,19.7
step
talk Serendia Oakwhisper##32972
turnin The Boon of the Seas##13520 |goto 50.8,18.1
step
kill Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+
|tip The green ones won't drop loot.
collect 6 Corrupted Thistle Bear Guts |q 13528/1 |goto 55.0,24.1
step
click Buzzbox 723##356
|tip It's a metal box with gears on it, sitting on a hill.
turnin Buzzbox 723##13528 |goto 54.2,29.3
accept A Cure In The Dark##13554 |goto 54.2,29.3
step
Follow the path up |goto 56.2,27.2 |only if walking
talk Tharnariun Treetender##32978
accept The Corruption's Source##13529 |goto Darkshore/0 56.8,30.1
step
Enter the cave |goto 56.9,31.3 |walk
Go to the lower level of the cave |indoors Cliffspring Hollow
kill Zenn Foulhoof##33020 |q 13529/1 |goto 58.2,33.0 |indoors Cliffspring Hollow
collect Corruptor's Master Key##44927 |n |indoors Cliffspring Hollow
Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927 |indoors Cliffspring Hollow
accept Bearer of Good Fortune##13557 |indoors Cliffspring Hollow
stickystart "Freeanimals"
stickystart "Workbench"
stickystart "Vile"
step "Freeanimals"
Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals |model 676 |indoors Cliffspring Hollow
Free 8 animals |q 13557/1 |goto 57.4,33.8 |indoors Cliffspring Hollow
step "Workbench"
click Disgusting Workbench##4391 |indoors Cliffspring Hollow
accept A Troubling Prescription##13831 |goto 57.4,33.8 |indoors Cliffspring Hollow
step "Vile"
kill Vile Corruptor##33022+ |indoors Cliffspring Hollow
collect 6 Foul Ichor |q 13554/1 |goto 57.0,33.2 |indoors Cliffspring Hollow
kill 8 Vile Grell##33021+ |q 13529/2 |goto 57.0,33.2 |indoors Cliffspring Hollow
step
talk Wizbang Cranktoggle##32977
turnin A Cure In The Dark##13554 |goto 51.1,19.7
step
talk Tharnariun Treetender##32978
turnin The Corruption's Source##13529 |goto 51.1,19.7
turnin Bearer of Good Fortune##13557 |goto 51.1,19.7
turnin A Troubling Prescription##13831 |goto 51.1,19.7
step
talk Volcor##32960
accept A Lost Companion##13564 |goto 50.9,18.0
step
talk Cerellean Whiteclaw##32959
accept A Love Eternal##13563 |goto 50.8,17.9
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
accept The Final Flame of Bashal'Aran##13562 |goto 50.2,19.8
step
talk Arya Autumnlight##33177
accept Solace for the Highborne##13561 |goto 46.8,33.3
step
click The Final Flame of Bashal'Aran##5151+
Extinguish the Final Flame of Bashal'Aran |q 13562/1 |goto 45.9,34.2
step
kill Anaya Dawnrunner##33181 |q 13563/1 |goto 48.5,36.6
collect Anaya's Pendant |q 13563/2 |goto 48.5,36.6
step
kill 6 Cursed Highborne##33179+ |q 13561/1 |goto 48.2,36.4
kill 6 Writhing Highborne##33180+ |q 13561/2 |goto 48.2,36.4
step
talk Arya Autumnlight##33177
turnin Solace for the Highborne##13561 |goto 46.8,33.3
step
Go to this spot
Locate Grimclaw |q 13564/1 |goto 42.9,39.0
|tip He's a dead white bear laying on the ground.
|modelnpc Grimclaw##33053
step
talk Keeper Karithus##33048
turnin A Lost Companion##13564 |goto 43.0,39.0
accept Unsavory Remedies##13598 |goto 43.0,39.0
accept Ritual Materials##13566 |goto 43.0,39.0
step
talk Seraphine##33126
accept Twice Removed##13565 |goto 42.9,39.0
step
clicknpc Moonstalker##33127+
|tip Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
collect 3 Moonstalker Whisker |q 13566/1 |goto 42.4,39.8
step
clicknpc Mottled Doe##33313+
collect 3 Tuft of Mottled Doe Hair |q 13566/2 |goto 44.1,40.8
step
clicknpc Hungry Thistle Bear##33978+
collect 3 Thistle Bear Fur |q 13566/3 |goto 46.6,38.9
step
kill Lady Janira##33207 |q 13565/1 |goto 48.6,40.4
stickystart "Witheredents"
stickystart "Fumingtoadstool"
step "Witheredents"
kill Darkscale Scout##33206+
Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
Call 6 Withered Ents |q 13565/2 |goto 47.7,39.7
step "Fumingtoadstool"
click Fuming Toadstool##329+
collect 6 Fuming Toadstool |q 13598/1 |goto 47.7,39.7
step
talk Keeper Karithus##33048
turnin Unsavory Remedies##13598 |goto 43.0,39.0
turnin Ritual Materials##13566 |goto 43.0,39.0
step
talk Seraphine##33126
turnin Twice Removed##13565 |goto 42.9,39.0
step
talk Keeper Karithus##33048
accept The Ritual Bond##13569 |goto 43.0,39.0
step
click Grovekeeper's Incense##8683
Breathe in the smoke to entice visions of the great animal spirits |havebuff 136090 |q 13569 |goto 42.9,39.0
step
talk Great Stag Spirit##33133
|tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.  We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.  If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.  You can only choose one, so pick whichever one you'd like.
accept Spirit of the Stag##13567 |goto 43.8,40.2 |instant
step
talk Keeper Karithus##33048
turnin The Ritual Bond##13569 |goto 43.0,39.0
accept Grimclaw's Return##13599 |goto 43.0,39.0
step
talk Serendia Oakwhisper##32972
turnin Grimclaw's Return##13599 |goto 50.9,18.2
step
talk Cerellean Whiteclaw##32959
turnin A Love Eternal##13563 |goto 50.8,17.9
step
talk Ranger Glynda Nal'Shea##32971
|tip She walks all around town, so you may need to search for her.
turnin The Final Flame of Bashal'Aran##13562 |goto 50.7,19.4
accept The Shatterspear Invaders##13589 |goto 50.7,19.4
step
talk Gorbold Steelhand##32979
accept An Ocean Not So Deep##13560 |goto 51.0,19.2
step
click Decoy Bot Control Console##6424
As the robot, walk north underwater to get near a group of murlocs
Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
kill 50 Scavenging Greymist Murlocs |q 13560/1 |goto 53.0,11.0
|modelnpc Greymist Warrior##33277+
|modelnpc Greymist Tidehunter##33262+
step
talk Gorbold Steelhand##32979
turnin An Ocean Not So Deep##13560 |goto 51.0,19.2
step
talk Lieutenant Morra Starbreeze##32963
turnin The Shatterspear Invaders##13589 |goto 58.9,19.4
step
talk Sentinel Tysha Moonblade##32965
accept Shatterspear Laborers##13504 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
accept Remnants of the Highborne##13505 |goto 58.9,19.5
stickystart "Shatterspear"
stickystart "Relic"
stickystart "Overseer"
step "Overseer"
kill Shatterspear Overseer##32863
collect Overseer's Orders##44979 |n
Click the Overseer's Orders in your bags |use Overseer's Orders##44979
accept Reason to Worry##13506 |goto 60.5,21.3
step "Shatterspear"
kill 10 Shatterspear Laborer##32861+ |q 13504/1 |goto 60.5,21.3
step "Relic"
click Highborne Relic##404+
collect 8 Highborne Relic |q 13505/1 |goto 60.5,21.3
step
talk Sentinel Tysha Moonblade##32965
turnin Shatterspear Laborers##13504 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
turnin Remnants of the Highborne##13505 |goto 58.9,19.5
step
talk Lieutenant Morra Starbreeze##32963
turnin Reason to Worry##13506 |goto 58.9,19.4
accept Swift Response##13508 |goto 58.9,19.4
accept War Supplies##13509 |goto 58.9,19.4
step
talk Sentinel Tysha Moonblade##32965
accept Denying Manpower##13507 |goto 58.9,19.4
stickystart "Torch"
stickystart "Kill"
step "Torch"
Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999
|tip They look like brown wooden crates around this area.
Burn 12 Shatterspear Armaments |q 13509/1 |goto 61.6,11.6
step "Kill"
kill 6 Horde Enforcer##32859+ |q 13507/1 |goto 61.6,11.6
kill 6 Shatterspear Mystic##34248+ |q 13507/2 |goto 61.6,11.6
step
talk Alanndarian Nightsong##33055
turnin Swift Response##13508 |goto 63.8,6.0
accept One Bitter Wish##13511 |goto 63.8,6.0
step
kill Rit'ko##32970 |q 13511/1 |goto 64.1,5.3
collect Shatterspear Torturer's Cage Key##45040 |q 13510 |goto 64.1,5.3 |future
step
click Shatterspear Cage##1787+
talk Sentinel Aynasha##32964 |goto 64.5,5.5
accept Timely Arrival##13510 |goto 64.5,5.5
step
Follow Sentinel Aynasha as she runs
|tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
Escort Sentinel Aynasha to the Dock |q 13510/1 |goto 60.2,7.0
|modelnpc Sentinel Aynasha##32964
step
talk Sentinel Tysha Moonblade##32965
turnin Denying Manpower##13507 |goto 58.9,19.4
step
talk Lieutenant Morra Starbreeze##32963
turnin One Bitter Wish##13511 |goto 58.9,19.4
turnin War Supplies##13509 |goto 58.9,19.4
turnin Timely Arrival##13510 |goto 58.9,19.4
accept Strategic Strikes##13512 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
accept On the Brink##13513 |goto 58.9,19.5
step
talk Mathas Wildwood##34041
accept The Looting of Althalaxx##13844 |goto 59.1,19.6
step
Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995
|tip She's floating above the water in this pit in a blue smokey cyclone.  Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.  Keep alternating between throwing your spear at her and hiding.
kill Sheya Stormweaver##32869 |q 13512/2 |goto 61.2,20.4
step
kill Teegan Holloway##34033 |q 13844/1 |goto 58.2,23.9
|tip He's an undead that walks around in this broken tower.
step
click Charred Book##2530
collect Narassin's Tome |q 13844/2 |goto 58.3,24.0
step
Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995
|tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
kill Lorenth Thundercall##32868 |q 13512/1 |goto 56.8,25.9
step
kill Shatterspear Shaman##32860+
collect 6 Shatterspear Amulet |q 13513/1 |goto 57.2,25.1
step
talk Lieutenant Morra Starbreeze##32963
turnin Strategic Strikes##13512 |goto 58.9,19.4
step
talk Balthule Shadowstrike##32966
turnin On the Brink##13513 |goto 58.9,19.5
step
talk Lieutenant Morra Starbreeze##32963
accept The Front Line##13590 |goto 58.9,19.4
step
talk Mathas Wildwood##34041
turnin The Looting of Althalaxx##13844 |goto 59.1,19.6
step
Follow the path up |goto 63.6,20.0 |only if walking
Enter the tunnel |goto 67.5,18.7 |only if walking
talk Kerlonian Evershade##33176
accept The Ancients' Ire##13514 |goto 69.1,19.3
step
Click the Vengeful Protector to ride on it |invehicle |q 13514 |goto 69.5,18.8 |modelnpc 43742
step
Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
kill Shatterspear Champion##32858+
kill Shatterspear Raider##33071+
kill Shatterspear Priestess##32855+
Kill 30 Shatterspear Vale Trolls |q 13514/1 |goto 70.3,20.1
Destroy 6 Shatterspear Structures |q 13514/2 |goto 70.3,20.1
step
Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514 |goto 69.5,18.8
step
talk Kerlonian Evershade##33176
turnin The Ancients' Ire##13514 |goto 69.1,19.3
step
talk Huntress Sandrya Moonfall##33178
turnin The Front Line##13590 |goto 72.3,19.1
accept Ending the Threat##13515 |goto 72.3,19.1
step
talk Huntress Sandrya Moonfall##33178
Tell you are ready, begin the attack
kill Jor'kil the Soulripper##32862 |q 13515/1 |goto 72.3,19.1
|tip Make sure to loot his corpse.
collect Hellscream's Missive##46318 |n
Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
accept Disturbing Connections##13591 |goto 72.3,19.1
step
talk Huntress Sandrya Moonfall##33178
turnin Ending the Threat##13515 |goto 72.4,18.8
step
talk Ranger Glynda Nal'Shea##32971
turnin Disturbing Connections##13591 |goto 50.7,19.7
step
talk Cerellean Whiteclaw##32959
accept Remembrance of Auberdine##13570 |goto 50.1,19.5 |instant
step
talk Sentinel Lendra##32912
accept The Twilight's Hammer##13519 |goto 50.3,20.4
accept Twilight Plans##13596 |goto 50.3,20.4
step
talk Moon Priestess Tharill##32932
accept Power Over the Tides##13523 |goto 44.6,30.8
step
kill High Cultist Azerynn##32899 |q 13519/1 |goto 43.7,31.4
step
kill Enraged Tidal Spirit##32890+
Use your Orb of Elune on Enraged Tidal Spirit corpses |use Orb of Elune##44975
Sooth 6 Tidal Spirits |q 13523/1 |goto 44.3,30.1
step
talk Moon Priestess Tharill##32932
turnin Power Over the Tides##13523 |goto 44.6,30.8
stickystart "Fanatic"
stickystart "Twlightplans"
step "Fanatic"
kill 10 Twilight Fanatic##32888 |q 13519/2 |goto 44.7,31.1
step "Twlightplans"
click Twilight Plans##163
collect 6 Twilight Plans |q 13596/1 |goto 44.7,31.1
You can find more around [Darkshore,43.9,32.5]
step
talk Sentinel Lendra##32912
turnin The Twilight's Hammer##13519 |goto 50.3,20.4
turnin Twilight Plans##13596 |goto 50.3,20.4
accept In Aid of the Refugees##13601 |goto 50.3,20.4
step
talk Priestess Alinya##33107
turnin In Aid of the Refugees##13601 |goto 42.5,45.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (16-17)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)",
startlevel=16.80,
dynamic=true,
endlevel=17
},[[
step
talk Sentinel Selarin##3694
accept Against the Wind##13542 |goto Darkshore,42.5,45.2
step
talk Corvine Moonrise##32987
accept Three Hammers to Break##13543 |goto 42.7,45.1
accept Malfurion's Return##13573 |goto 42.7,45.1
step
talk Yalda##6887
accept Coaxing the Spirits##13547 |goto 39.1,43.2
step
talk Caylais Moonfeather##33037
|tip She's laying on the dock.
Coax the spirit out of Caylais Moonfeather's still corpse
Coax Caylais Moonfeather's spirit |q 13547/4 |goto 38.1,44.0
step
kill Windmaster Tzu-Tzu##32989 |q 13543/2 |goto 37.8,42.8
step
talk Taldan##33035
Coax Taldan's corpse to give up its spirit
Coax Taldan's spirit |q 13547/3 |goto 38.5,41.9
step
talk Sentinel Elissa Starbreeze##33033
|tip She's laying on the ground on the bottom floor of this building.
Coax the spirit out of Sentinel Elissa Starbreeze's corpse
Coax Sentinel Elissa Starbreeze's spirit |q 13547/2 |goto 41.0,41.4
step
kill Cloudtamer Wildmane##32988 |q 13543/1 |goto 40.8,41.5
step
talk Thundris Windweaver##33001
|tip He's laying on the ground inside this building.
Coax Thundris Windweaver's spirit
Coax Thundris Windweaver's spirit |q 13547/1 |goto 39.3,38.9
step
kill Skylord Braax##32990 |q 13543/3 |goto 39.1,38.3
step
kill Frenzied Cyclone##32985+
collect 8 Frenzied Cyclone Bracers##44868 |q 13542 |goto 40.1,41.6
step
Use your Frenzied Cyclone Bracers while standing in the moonwell |use Frenzied Cyclone Bracers##44868
Destroy 8 Frenzied Cyclone Bracers |q 13542/1 |goto 39.5,42.1
step
talk Yalda##6887
turnin Coaxing the Spirits##13547 |goto 39.1,43.2
accept Call Down the Thunder##13558 |goto 39.1,43.2
step
click Aetherion Ritual Orb##8552
kill Aetherion##33041
collect Aetherion's Essence |q 13558/1 |goto 36.6,41.0
step
talk Archaeologist Hollee##33232
accept The Last Refugee##13605 |goto 38.6,42.5
Follow her around and protect her
Escort Archaeologist Hollee to safety |q 13605/1
step
talk Sentinel Selarin##3694
turnin Against the Wind##13542 |goto 42.5,45.1
step
talk Elisa Steelhand##33231
turnin The Last Refugee##13605 |goto 42.6,45.3
step
talk Corvine Moonrise##32987
turnin Three Hammers to Break##13543 |goto 42.7,45.1
turnin Call Down the Thunder##13558 |goto 42.7,45.1
step
Follow the path up |goto 43.3,51.4 < 5 |only if walking
confirm |only if walking
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (17-18)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",
startlevel=17.47,
dynamic=true,
endlevel=18
},[[
step
talk Malfurion Stormrage##33091
turnin Malfurion's Return##13573 |goto Darkshore,43.7,53.4
accept The Land Is in Their Blood##13575 |goto Darkshore,43.7,53.4
accept The Last Wildkin##13577 |goto Darkshore,43.7,53.4
accept Protector of Ameth'Aran##13579 |goto Darkshore,43.7,53.4
step
Enter the cave |goto 45.1,48.6 |walk
talk Aroom##33119 |indoors Moontouched Den
turnin The Last Wildkin##13577 |goto 45.6,48.5 |indoors Moontouched Den
accept Aroom's Farewell##13578 |goto 45.6,48.5 |indoors Moontouched Den
step
click Slain Wildkin Feather##2630+
collect 8 Slain Wildkin Feather |q 13578/1 |goto 44.1,48.5
step
Enter the cave |goto 45.1,48.6 |walk
talk Aroom##33119 |indoors Moontouched Den
turnin Aroom's Farewell##13578 |goto 45.6,48.5 |indoors Moontouched Den
accept Elune's Fire##13582 |goto 45.6,48.5 |indoors Moontouched Den
step
kill Horoo the Flamekeeper##34385
|tip He's a white owlkin spirit that walks around this area.
collect Elune's Torch |q 13582/1 |goto 46.6,50.7
step
Enter the cave |goto 45.1,48.6 |walk
talk Aroom##33119 |indoors Moontouched Den
turnin Elune's Fire##13582 |goto 45.6,48.5 |indoors Moontouched Den
accept The Wildkin's Oath##13583 |goto 45.6,48.5 |indoors Moontouched Den
step
talk Elder Brownpaw##33117
turnin The Land Is in Their Blood##13575 |goto 41.0,56.5
accept Mutual Aid##13576 |goto 41.0,56.5
step
kill Unbound Fire Elemental##32999+
Use your Soothing Totem on their corpses |use Soothing Totem##44959
Absorb 8 Unbound Fire Elemental |q 13576/1 |goto 40.6,59.2
step
talk Elder Brownpaw##33117
turnin Mutual Aid##13576 |goto 40.9,56.5
accept Soothing the Elements##13580 |goto 40.9,56.5
step
Use your Energized Soothing Totem in this spot |use Energized Soothing Totem##46546
Defend the Energized Soothing Totem
Complete the Ritual of Soothing |q 13580/1 |goto 39.7,62.4
step
talk Elder Brownpaw##33117
turnin Soothing the Elements##13580 |goto 40.9,56.5
accept The Blackwood Pledge##13581 |goto 40.9,56.5
step
talk Selenn##33112
turnin Protector of Ameth'Aran##13579 |goto 44.4,56.8
accept Calming the Earth##13584 |goto 44.4,56.8
step
kill 8 Enraged Earth Elemental##33083 |q 13584/1 |goto 44.3,55.8
step
talk Selenn##33112
turnin Calming the Earth##13584 |goto 44.4,56.8
accept Sworn to Protect##13585 |goto 44.4,56.8
step
Follow the path up |goto 43.6,55.1 |only if walking
talk Malfurion Stormrage##33091
turnin The Blackwood Pledge##13581 |goto 43.6,53.4
turnin The Wildkin's Oath##13583 |goto 43.6,53.4
turnin Sworn to Protect##13585 |goto 43.6,53.4
accept The Emerald Dream##13586 |goto 43.6,53.4
step
Follow the path up |goto 46.5,54.3 |only if walking
Enter the cave |goto 47.2,56.0 |walk
Follow the path to the end of the cave
clicknpc Nightmare Portal##38430 |indoors Earthshatter Cavern
Enter the Nightmare World |havebuff 134218 |q 13586 |goto 49.0,57.1 |indoors Earthshatter Cavern
step
talk Thessera##33166 |indoors Earthshatter Cavern
turnin The Emerald Dream##13586 |goto 49.2,56.9 |indoors Earthshatter Cavern
accept The Waking Nightmare##13587 |goto 49.2,56.9 |indoors Earthshatter Cavern
step
kill Nightmare Guardian##34398  |indoors Earthshatter Cavern
|tip The Nightmare Guardian walks along this path.
collect Emerald Scroll |q 13587/1 |goto 49.6,55.3 |indoors Earthshatter Cavern
step
talk Thessera##33166 |indoors Earthshatter Cavern
turnin The Waking Nightmare##13587 |goto 49.2,56.9 |indoors Earthshatter Cavern
accept Leaving the Dream##13940 |goto 49.2,56.9 |indoors Earthshatter Cavern
step
talk Malfurion Stormrage##33091
turnin Leaving the Dream##13940 |goto 43.7,53.5
accept The Eye of All Storms##13588 |goto 43.7,53.5
step
Click Thessera to ride on her |modelnpc Warp-Huntress Kula##32711
While flying, use the Emerald Barrage ability on your hotbar to do the following:
kill Twilight Portal##34316+ |q 13588/1 |goto 43.5,53.7
kill 12 Twilight Rider##34282+ |q 13588/2 |goto 43.5,53.7
step
Use the Land Thessera ability on your hotbar
Thessera will take you back to the ground |outvehicle |q 13588
step
talk Malfurion Stormrage##33091
turnin The Eye of All Storms##13588 |goto 43.7,53.5
accept Mounting the Offensive##13902 |goto 43.7,53.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (18-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)",
startlevel=18.55,
dynamic=true,
endlevel=21
},[[
step
talk Delanea##33253
fpath Grove of the Ancients |goto Darkshore,44.4,75.5
step
talk Foriel Broadleaf##33250
accept What's Happening to the Blackwood Furbolg?##13525 |goto Darkshore 45.1,75.2
step
talk Balren of the Claw##34402
turnin Mounting the Offensive##13902 |goto 45.3,75.1
accept Leave No Tracks##13892 |goto 45.3,75.1
step
talk Kathrena Winterwisp##34301
accept Consumed##13881 |goto 45.2,74.6
step
Go to this spot underwater
Investigate the Watering Hole |q 13881/2 |goto 45.0,79.2
step
kill 6 Consumed Thistle Bear##34302+ |q 13881/1 |goto 44.7,79.4
step
talk Elder Brolg##32967
turnin What's Happening to the Blackwood Furbolg?##13525 |goto 43.5,81.0
accept The Bear's Paw##13526 |goto 43.5,81.0
step
click Bear's Paw##7816+
collect 8 Bear's Paw |q 13526/1 |goto 44.0,81.6
step
talk Elder Brolg##32967
turnin The Bear's Paw##13526 |goto 43.5,81.0
accept The Bear's Blessing##13544 |goto 43.5,81.0
step
kill Fleetfoot##32997
|tip He's a plainstrider that walks around this pond area.
collect Fleetfoot's Tailfeathers##44886 |q 13544 |goto 44.8,78.5
step
Use your Bear's Paw Bundle in front of the Ancient Bear Statue |use Bear's Paw Bundle##44888
|tip It's a stone bear head statue in the middle of a bunch of broken stone pillars.
collect Blessed Herb Bundle |q 13544/1 |goto 45.3,76.8
step
talk Kathrena Winterwisp##34301
turnin Consumed##13881 |goto 45.2,74.6
accept The Seeds of Life##13882 |goto 45.2,74.6
step
talk Onu##33072
Ask him where you may find a Seed of the Earth
collect Seed of the Earth |q 13882/1 |goto 45.4,74.8
step
clicknpc Darkshore Wisp##34306
|tip Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
collect Seed of the Sky |q 13882/3 |goto 42.1,79.0
step
talk Elder Brolg##32967
turnin The Bear's Blessing##13544 |goto 43.5,81.0
accept Cleansing the Afflicted##13545 |goto 43.5,81.0
step
talk Gren Tornfur##32968
accept Jadefire Braziers##13572 |goto 43.6,81.0
stickystart "Furbolgcleanse"
stickystart "Jadefirebrazier"
step "Furbolgcleanse"
Use your Blessed Herb Bundle on a Blackwood furlbogs |use Blessed Herb Bundle##44889
kill Spirit of Corruption##33000+
Cleanse 7 Blackwood Furbolg Cleansed |q 13545/1 |goto 44.1,82.5
|tip You don't have to kill the furbolgs, they will become friendly and disappear after you cleanse them.
step  "Jadefirebrazier"
Click Jadefire Brazier to destroy them |model Jadefire Brazier##8553
Destroy 8 Jadefire Brazier |q 13572/1 |goto 44.1,82.5
step
talk Elder Brolg##32967
turnin Cleansing the Afflicted##13545 |goto 43.5,81.0
accept The Defiler##13546 |goto 43.5,81.0
step
talk Gren Tornfur##32968
turnin Jadefire Braziers##13572 |goto 43.6,81.0
step
Enter the cave |goto 46.3,83.7 |walk
kill Sharax the Defiler##32996+ |q 13546/1 |goto 46.8,84.0
step
talk Elder Brolg##32967
turnin The Defiler##13546 |goto 43.5,81.0
step
Use your Panther Figurine in this spot |use Panther Figurine##46696
|tip If you have a pet, dismiss it.
Transform into a panther |havebuff 132115 |q 13892 |goto 42.4,82.3
step
Avoid the Faceless Ones, they can see through your panther disguise stealth
Stand in this spot and listen to Foreman Balsoth
Complete the Twilight's Hammer surveillance |q 13892/1 |goto 40.6,84.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Leave No Tracks##13892
accept Stepping Up Surveillance##13948
|modelnpc Foreman Balsoth##34406
step
click Glittering Shell##261
collect Seed of the Sea |q 13882/2 |goto 38.6,78.2
step
Use your Panther Figurine in this spot |use Panther Figurine##46696
|tip If you have a pet, dismiss it.
Transform into a panther |havebuff 132115 |q 13948 |goto 39.2,85.1
step
Avoid the Faceless Ones, they can see through your panther disguise stealth |goto 39.8,86.4
Follow the path up |goto 39.8,86.4 < 5
confirm
step
Avoid the Faceless Ones, they can see through your panther disguise stealth |goto 41.1,85.4
Follow the path up |goto 41.1,85.4 < 5
confirm
step
Go to this spot
Watch the dialogue
Complete the Master's Glaive Surveillance |q 13948/1 |goto 39.9,84.8
modelnpc Thalya the Voidcaller##34427
modelnpc Doomspeaker Trevellion##34326
step
talk Kathrena Winterwisp##34301
turnin The Seeds of Life##13882 |goto 45.2,74.6
accept An Ounce of Prevention##13925 |goto 45.2,74.6
step
talk Balren of the Claw##34402
turnin Stepping Up Surveillance##13948 |goto 45.3,75.1
step
talk Larien##34404
accept Unearthed Knowledge##13896 |goto 45.3,75.1
step
Use Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
Test the Lifebringer Sapling |q 13925/1 |goto 42.3,76.7
modelnpc Consumed Thistle Bear##34302
modelnpc Grizzled Thistle Bear##2165
step
talk Kathrena Winterwisp##34301
turnin An Ounce of Prevention##13925 |goto 45.2,74.6
accept In Defense of Darkshore##13885 |goto 45.2,74.6
step
talk Orseus##34392
Tell him Kathrena sent you to borrow one of his Hippogryphs
From the air, use the Protect Wildlife ability on your hotbar on animals on the ground to do the following:
Protect 8 Grizzled Thistle Bears |q 13885/1 |goto 44.5,75.3
Protect 8 Moonstalkers |q 13885/2 |goto 44.5,75.3
Protect 8 Whitetail Deers |q 13885/3 |goto 44.5,75.3
step
talk Kathrena Winterwisp##34301
turnin In Defense of Darkshore##13885 |goto 45.2,74.6
accept The Devourer of Darkshore##13891 |goto 45.2,74.6
step
Use your Lifebringer Sapling while standing next to the lake |use Lifebringer Sapling##46370
kill Yoth'al the Devourer##34331
Destroy the Devouring Artifact |q 13891/1 |goto 45.1,78.7
step
talk Kathrena Winterwisp##34301
turnin The Devourer of Darkshore##13891 |goto 45.2,74.6
step
talk Archaeologist Groff##34340
turnin Unearthed Knowledge##13896 |goto 37.7,82.8
accept Soggoth and Kronn##13893 |goto 37.7,82.8
accept Sweeping Clean the Ruins##13907 |goto 37.7,82.8
step
talk Prospector Remtravel##34343
accept The Absent-Minded Prospector##13911 |goto 37.7,82.9
Escort Prospector Remtravel |q 13911/1 |goto 37.7,82.9
step
talk Jr. Archaeologist Ferd##34342
turnin The Absent-Minded Prospector##13911 |goto 37.8,82.9
accept Swamped Secrets##13912 |goto 37.8,82.9
step
click Mud-Crusted Ancient Disc##8763
collect Mud-Crusted Ancient Disc |q 13912/1 |goto 37.0,83.4
step
kill Greymist Refugee##34339+, Greymist Oracle##2207+
Kill 10 Murloc Squatters |q 13907/1 |goto 36.4,83.6
step
talk Archaeologist Groff##34340
turnin Sweeping Clean the Ruins##13907 |goto 37.7,82.8
accept Got Some Flotsam?##13909 |goto 37.7,82.8
step
talk Jr. Archaeologist Ferd##34342
turnin Swamped Secrets##13912 |goto 37.8,82.9
accept The Titans' Terminal##13918 |goto 37.8,82.9
stickystart "Debris"
stickystart "Ancientdevice"
step "Ancientdevice"
Use your Buried Artifact Detector on the beach |use Buried Artifact Detector##46388
click Buried Debris that spawns |model 49
collect 5 Ancient Device Fragment##46702 |n
Use an Ancient Device Fragment to combine them |use Ancient Device Fragment##46702
collect Ancient Slotted Device |q 13918/1 |goto 37.1,81.2
step "Debris"
click Greymist Debris##8688
collect 5 Salvageable Greymist Wreckage |q 13909/1 |goto 37.1,81.2
step
talk Archaeologist Groff##34340
turnin Got Some Flotsam?##13909 |goto 37.7,82.8
accept A New Home##13910 |goto 37.7,82.8
step
talk Jr. Archaeologist Ferd##34342
turnin The Titans' Terminal##13918 |goto 37.8,82.9
step
Use your Marvelous Mobile Murloc Manor Maker at the Greymist Murloc Build Site |use Marvelous Mobile Murloc Manor Maker##46385
|tip It looks like a white sign stuck in the ground on the beach.
Build the Greymist Murloc Home |q 13910/1 |goto 35.9,81.9
step
talk Archaeologist Groff##34340
turnin A New Home##13910 |goto 37.7,82.8
step
talk Larien##34404
turnin Soggoth and Kronn##13893 |goto 45.3,75.1
step
talk Onu##33072
accept The Slumbering Ancients##13895 |goto 45.4,74.9
step
talk Aros##34446
turnin The Slumbering Ancients##13895 |goto 45.7,71.7
step
talk Darkscale Assassin##34498
accept Naga In Our Midst##13953 |goto 45.6,71.7
step
talk Balren of the Claw##34402
turnin Naga In Our Midst##13953 |goto 45.3,75.1
accept The Darkscale Warlord##13899 |goto 45.3,75.1
step
talk Felros##34403
accept The Tides Turn Against Us##13898 |goto 45.4,75.1
step
Enter the cave |goto 33.4,83.7 |walk
Follow the path down to the end of the cave |indoors Nazj'vel
kill Warlord Wrathspine##34423 |indoors Nazj'vel
clicknpc Warlord Wrathspine##34423 |indoors Nazj'vel
turnin The Darkscale Warlord##13899 |goto 32.3,85.4 |indoors Nazj'vel
accept The Offering to Azshara##13900 |goto 32.3,85.4 |indoors Nazj'vel
step
Follow the path back up to the exit of the cave |indoors Nazj'vel
kill 8 Darkscale Myrmidon##33079+ |q 13898/1 |goto 32.5,84.0 |indoors Nazj'vel
step
Leave the cave |goto 33.4,83.7 |walk
Follow the path up |goto 33.6,84.1 |only if walking
kill Darkscale Priestess##34415+
Prevent the Offering to Azshara |q 13900/1 |goto 32.9,84.2
step
talk Malfurion Stormrage##34422
turnin The Offering to Azshara##13900 |goto 32.8,84.3
accept The Battle for Darkshore##13897 |goto 32.8,84.3
step
Use your Horn of the Ancients on Avatar of Soggoth |use Horn of the Ancients##58365
|tip He's a big octopus looking giant.
kill Avatar of Soggoth##34485 |q 13897/1 |goto 40.3,83.9
step
talk Balren of the Claw##34402
turnin The Battle for Darkshore##13897 |goto 45.3,75.1
accept Ashes in Ashenvale##26408 |goto 45.3,75.1
step
talk Felros##34403
turnin The Tides Turn Against Us##13898 |goto 45.4,75.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Kalimdor (20-25)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Kingdoms (20-25)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\The Burning Crusade (60-62)",{
author="support@zygorguides.com",
},[[
step
Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care!
level 20
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Worgen (1-13)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Gilneas",
condition_suggested="raceclass('Worgen') and level<=13 and not completedq(28517) and not raceclass('DEATHKNIGHT')",
condition_suggested_exclusive=true,
condition_end="completedq(28517) or raceclass('DEATHKNIGHT')",
condition_valid="raceclass('Worgen') ",
condition_valid_msg="Worgen only.",
next="Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)",
startlevel=1,
dynamic=true,
endlevel=12
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City/0 59.1,24.0
step
Follow the path |goto 57.65,20.44 < 15 |only if walking
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto 54.7,16.6
accept Something's Amiss##14091 |goto 54.7,16.6
step
Follow the path |goto 57.32,18.11 < 15 |only if walking
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto 59.8,22.2
accept All Hell Breaks Loose##14093 |goto 59.8,22.2
accept Evacuate the Merchant Square##14098 |goto 59.8,22.2
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto 59.6,26.8
stickystart "Salvaged_Supplies"
stickystart "Evacuate_Market_Homes"
step
kill 8 Rampaging Worgen##34884 |q 14093/1 |goto 56.0,28.6
step
label "Salvaged_Supplies"
click Supply Crate##336+
|tip They look like wooden crates on the ground around this area.
collect 4 Salvaged Supplies##46896 |q 14094/1 |goto 56.0,28.6
step
label "Evacuate_Market_Homes"
click Merchant Square Door##9023+
|tip They look like the wooden doors of the buildings around this area.
Evacuate #3# Market Homes |q 14098/1 |goto 56.0,28.6
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto 59.5,26.8
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto 59.9,22.3
turnin Evacuate the Merchant Square##14098 |goto 59.9,22.3
accept Royal Orders##14099 |goto 59.9,22.3
step
Follow the road |goto 64.42,23.60 < 20 |only if walking
Run down the stairs |goto 69.20,45.48 < 15 |only if walking
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto 70.8,55.1
accept Your Instructor##14265 |goto 70.8,55.1 |only Worgen Warrior
accept Someone's Looking for You##14269 |goto 70.8,55.1 |only Worgen Rogue
accept Shady Associates##14273 |goto 70.8,55.1 |only Worgen Warlock
accept Someone's Keeping Track of You##14275 |goto 70.8,55.1 |only Worgen Hunter
accept Arcane Inquiries##14277 |goto 70.8,55.1 |only Worgen Mage
accept Seek the Sister##14278 |goto 70.8,55.1 |only Worgen Priest
accept The Winds Know Your Name... Apparently##14280 |goto 70.8,55.1 |only Worgen Druid
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto 67.1,63.5
accept Safety in Numbers##14286 |goto 67.1,63.5
|only Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto 71.4,65.8
accept Safety in Numbers##14285 |goto 71.4,65.8
|only Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto 71.4,64.4
accept Safety in Numbers##14287 |goto 71.4,64.4
|only Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto 71.5,61.3
accept Safety in Numbers##14290 |goto 71.5,61.3
|only Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto 68.0,64.7
accept Safety in Numbers##14288 |goto 68.0,64.7
|only Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto 70.4,65.5
accept Safety in Numbers##14289 |goto 70.4,65.5
|only Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto 70.2,66.0
accept Safety in Numbers##14291 |goto 70.2,66.0
|only Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto 65.8,77.7 |only Worgen Warrior
turnin Safety in Numbers##14285 |goto 65.8,77.7 |only Worgen Rogue
turnin Safety in Numbers##14287 |goto 65.8,77.7 |only Worgen Warlock
turnin Safety in Numbers##14290 |goto 65.8,77.7 |only Worgen Hunter
turnin Safety in Numbers##14288 |goto 65.8,77.7 |only Worgen Mage
turnin Safety in Numbers##14289 |goto 65.8,77.7 |only Worgen Priest
turnin Safety in Numbers##14291 |goto 65.8,77.7 |only Worgen Druid
accept Old Divisions##14157 |goto 65.8,77.7
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto 65.4,77.6
step
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto 62.75,73.66
step
Follow the path |goto 60.71,71.20 < 15 |only if walking
Enter the building |goto 57.75,73.32 < 10 |walk
talk Captain Broderick##50371
|tip Inside the building, in front of the stairs.
turnin Old Divisions##14157 |goto 57.9,75.6
accept The Prison Rooftop##28850 |goto 57.9,75.6
step
Follow the spiral stairs to the top |goto 56.06,73.17 < 10 |walk
Follow the path |goto 53.73,69.62 < 15 |only if walking
talk Lord Darius Crowley##35077
turnin The Prison Rooftop##28850 |goto 55.2,62.9
accept By the Skin of His Teeth##14154 |goto 55.2,62.9
step
Kill the enemies that attack in waves
Survive While Holding Back the Worgen for 2 Minutes |q 14154/1 |goto 55.2,62.9
|tip You will receive a buff that lets you know how much time is remaining.
step
talk Lord Darius Crowley##35077
turnin By the Skin of His Teeth##14154 |goto 55.2,63.0
accept Brothers In Arms##26129 |goto 55.2,63.0
step
Follow the path |goto 53.38,67.43 < 15 |only if walking
Follow the spiral stairs to the bottom |goto 57.56,75.85 < 10 |only if walking
Follow the path |goto 60.64,71.17 < 15 |only if walking
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto 65.8,77.7
step
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto 65.3,77.5
step
talk King Genn Greymane##35112
accept The Rebel Lord's Arsenal##14159 |goto 65.8,77.7 |noobsolete
step
Follow the path |goto 60.32,77.11 < 15 |only if walking
Click the Cellar Door |goto 55.70,81.57 < 5 |walk
Go down the stairs into the cellar |goto 56.93,81.37 < 5 |walk
talk Josiah Avery##35369
turnin The Rebel Lord's Arsenal##14159 |goto 56.8,85.4
step
talk Lorna Crowley##35378
accept From the Shadows##14204 |goto 56.9,81.4
step
Leave the cellar |goto 55.86,81.47 < 5 |walk
Follow the path |goto 53.34,76.79 < 10 |only if walking
kill 6 Bloodfang Lurker##35463+ |q 14204/1 |goto 48.14,76.57
|tip Use your Mastiff's Attack Lurker ability on your pet action bar to help you find the Bloodfang Lurkers.
step
Follow the path |goto 48.09,76.51 < 15 |only if walking
Enter the cellar |goto 55.77,81.47 < 5 |walk
talk Lorna Crowley##35378
turnin From the Shadows##14204 |goto 56.8,81.4
accept Message to Greymane##14214 |goto 56.8,81.4
step
Leave the cellar |goto 55.81,81.44 < 5 |walk
Follow the path |goto 55.93,83.44 < 10 |only if walking
talk King Genn Greymane##35550
turnin Message to Greymane##14214 |goto 59.2,83.8
accept Save Krennan Aranas##14293 |goto 59.2,83.8
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Rescue Krennan ability
|tip Spam the Rescue Krennan ability when your horse takes a big leap.
|tip You should see Krennan Aranas dangling in a tree.
Rescue Krennan Aranas |q 14293/1
step
Return to Lord Godfrey |goto 56.49,78.26 < 15 |c |q 14293
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto 55.7,80.7
accept Time to Regroup##14294 |goto 55.7,80.7
step
Follow the road |goto 53.30,83.87 < 15 |only if walking
Cross the bridge |goto 44.59,83.19 < 15 |only if walking
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto 30.4,73.2
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto 31.1,72.4
step
clicknpc Click Crowley's Horse##44429
Ride Crowley's Horse |invehicle |c |q 14212 |goto 31.3,72.7
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Throw Torch ability on Bloodfang Stalkers
|tip They will chase you.
Round Up #30# Bloodfang Stalkers |q 14212/1
step
Reach Tobias Mantle |goto 40.25,39.55 < 15 |c |q 14212
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto 40.5,39.4
accept By Blood and Ash##14218 |goto 40.5,39.4
step
click Rebel Cannon##35317
Use the Rebel Cannon ability
|tip Shoot the worgen around this area.
kill 80 Bloodfang Stalker##35229 |q 14218/1 |goto 38.83,37.45
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto 40.6,39.4
accept Never Surrender, Sometimes Retreat##14221 |goto 40.6,39.4
step
Enter the building |goto 41.12,41.12 < 7 |walk
Follow the path |goto 43.64,44.71 < 10 |walk
talk Lord Darius Crowley##35566
turnin Never Surrender, Sometimes Retreat##14221 |goto 48.9,52.8
accept Last Stand##14222 |goto 48.9,52.8
step
kill 8 Frenzied Stalker##35627+ |q 14222/1 |goto 47.1,49.8
step
talk Lord Darius Crowley##35566
turnin Last Stand##14222 |goto 48.9,52.8
step
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto Gilneas 2/0 36.41,61.25 |instant
step
talk Lord Godfrey##36170
|tip Inside the building.
accept Among Humans Again##14313 |goto 36.5,62.3
step
talk Krennan Aranas##36132
turnin Among Humans Again##14313 |goto 37.42,63.23
accept In Need of Ingredients##14320 |goto 37.42,63.23
step
Follow the path |goto 35.95,63.08 < 20 |only if walking
click Crate of Mandrake Essence##9093
turnin In Need of Ingredients##14320 |goto 32.8,66.4
step
clicknpc Slain Watchman##36205
accept Invasion##14321 |goto 32.76,66.15
step
Follow the path up |goto 34.38,63.87 < 20 |only if walking
Follow the path |goto 35.96,63.46 < 20 |only if walking
talk Gwen Armstead##34571
|tip Inside the building.
turnin Invasion##14321 |goto 37.41,63.35
accept Kill or Be Killed##14336 |goto 37.41,63.35
step
Follow the path |goto 36.55,65.25 < 15 |only if walking
talk Prince Liam Greymane##36140
|tip He moves around, fighting around this area near the buildings, so you may need to search for him.
turnin Kill or Be Killed##14336 |goto 35.5,66.3
accept Hold the Line##14347 |goto 35.5,66.3
accept You Can't Take 'Em Alone##14348 |goto 35.5,66.3
stickystart "Forsaken_Invaders"
step
click Black Gunpowder Kegs
|tip They look like brown barrels on the ground around this area.
collect Black Gunpowder Keg##49202 |n
Use the Black Gunpowder Kegs on Horrid Abominations |use Black Gunpowder Keg##49202
|tip They look like big flesh monsters around this area.
Throw Gunpowder Kegs at #4# Horrid Abominations |q 14348/1 |goto 34.1,68.0
step
label "Forsaken_Invaders"
kill 10 Forsaken Invader##34511 |q 14347/1 |goto 34.1,68.0
step
talk Prince Liam Greymane##36140
|tip He moves around, fighting around this area near the buildings, so you may need to search for him.
turnin Hold the Line##14347 |goto 35.5,66.2
turnin You Can't Take 'Em Alone##14348 |goto 35.5,66.2
accept Holding Steady##14366 |goto 35.5,66.2
step
Follow the path |goto 36.26,65.71 < 15 |only if walking
talk Gwen Armstead##34571
|tip Inside the building.
turnin Holding Steady##14366 |goto 37.41,63.34
accept The Allens' Storm Cellar##14367 |goto 37.41,63.34
step
Follow the path |goto 35.97,63.43 < 20 |only if walking
Enter the cellar |goto 28.44,64.27 < 7 |walk
Follow the path |goto 28.26,63.86 < 7 |walk
talk Lord Godfrey##36290
|tip In the cellar.
turnin The Allens' Storm Cellar##14367 |goto 29.0,63.9
accept Unleash the Beast##14369 |goto 29.0,63.9
accept Two By Sea##14382 |goto 29.0,63.9
step
talk Melinda Hammond##36291
|tip In the cellar.
accept Save the Children!##14368 |goto 28.93,64.02
stickystart "Forsaken_Combatants"
step
Run up the stairs |goto 28.25,63.92 < 7 |walk
Leave the cellar |goto 28.46,64.35 < 7 |walk
talk James##36289
|tip He walks around this small area.
Rescue James |q 14368/3 |goto 28.5,66.8
step
talk Ashley##36288
|tip Upstairs in the house.
Rescue Ashley |q 14368/2 |goto 27.9,66.7
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto 29.6,69.3
step
kill Forsaken Machinist##36292 |n
|tip They are riding on big metal catapults around this area.
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |q 14382 |goto 25.1,72.3
step
_Aim at the Ship:_
|tip Use the Launch ability on your action bar.
Launch Yourself Onto the Deck of the Forsaken Ship |goto 24.68,75.90 < 30 |c |q 14382
step
Run down the stairs |goto 24.77,76.39 < 7 |walk
Continue down the stairs |goto 24.99,76.44 < 7 |walk
kill Captain Anson##36397 |q 14382/1 |goto 23.76,74.70
|tip Downstairs in the ship, on the middle floor.
step
kill Forsaken Machinist##36292 |n
|tip They are riding on big metal catapults around this area.
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |q 14382 |goto 25.1,72.3
step
_Aim at the Ship:_
|tip Use the Launch ability on your action bar.
Launch Yourself Onto the Deck of the Forsaken Ship |goto 27.81,80.73 < 30 |c |q 14382
step
Run down the stairs |goto 27.88,81.17 < 7 |walk
Continue down the stairs |goto 28.12,81.26 < 7 |walk
kill Captain Morris##36399 |q 14382/2 |goto 26.84,79.31
|tip Downstairs in the ship, on the middle floor.
step
label "Forsaken_Combatants"
Kill Forsaken enemies around this area
Slay #8# Forsaken Combatants |q 14369/1 |goto 25.2,70.3
step
Follow the path |goto 28.52,68.58 < 20 |only if walking
Enter the cellar |goto 28.44,64.27 < 7 |walk
Follow the path |goto 28.26,63.86 < 7 |walk
talk Lord Godfrey##36290
|tip In the cellar.
turnin Unleash the Beast##14369 |goto 29.0,63.9
turnin Two By Sea##14382 |goto 29.0,63.9
step
talk Melinda Hammond##36291
|tip In the cellar.
turnin Save the Children!##14368 |goto 28.93,64.02
step
talk Lord Godfrey##36290
|tip In the cellar.
accept Leader of the Pack##14386 |goto 29.0,63.9
step
Run up the stairs |goto 28.25,63.92 < 7 |walk
Leave the cellar |goto 28.46,64.35 < 7 |walk
Follow the road |goto 25.53,67.11 < 20 |only if walking
Use the Mastiff Whistle near Dark Ranger Thyala |use Mastiff Whistle##49240
kill Dark Ranger Thyala##36312 |q 14386/1 |goto 23.47,67.53
step
Follow the road |goto 25.53,67.11 < 20 |only if walking
Enter the cellar |goto 28.44,64.27 < 7 |walk
Follow the path |goto 28.26,63.86 < 7 |walk
talk Lord Godfrey##36290
turnin Leader of the Pack##14386 |goto 29.0,63.9
accept As the Land Shatters##14396 |goto 29.0,63.9
step
Run up the stairs |goto 28.25,63.92 < 7 |walk
Leave the cellar |goto 28.46,64.35 < 7 |walk
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto 29.0,65.0
accept Gasping for Breath##14395 |goto 29.0,65.0
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Carry the Drowning Watchmen to [29.0,65.1]
Rescue #4# Drowning Watchmen |q 14395/1 |goto 27.20,68.86
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto 29.0,65.0
accept Evacuation##14397 |goto 29.0,65.0
step
Follow the road up |goto 31.94,63.04 < 20 |only if walking
Follow the path |goto 35.95,63.45 < 20 |only if walking
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto 37.6,65.2
accept Grandma Wahl##14398 |goto 37.6,65.2
accept The Hayward Brothers##14403 |goto 37.6,65.2
accept The Crowley Orchard##14406 |goto 37.6,65.2
step
Follow the path |goto 38.23,66.20 < 20 |only if walking
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto 37.7,72.8
accept The Hungry Ettin##14416 |goto 37.7,72.8
step
Cross the bridge |goto 38.24,76.65 < 15 |only if walking
clicknpc Mountain Horse##36540+
Use the Round Up Horse ability on 4 other Mountain Horses
|tip Watch out for the elite Ettin walking around this area.
Rescue #5# Mountain Horses |q 14416/1 |goto 39.6,78.8
Bring the Mountain Horses to Lorna Crowley at [37.7,72.8]
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto 37.7,72.8
step
Follow the path up |goto 33.90,76.42 < 15 |only if walking
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma Wahl##14398 |goto 32.5,75.5
accept Grandma's Lost It Alright##14399 |goto 32.5,75.5
step
click Linen-Wrapped Book##00255
|tip It looks like a yellow book sitting on the ground.
collect Linen-Wrapped Book##49280 |q 14399/1 |goto 33.95,77.38
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Lost It Alright##14399 |goto 32.5,75.5
accept I Can't Wear This##14400 |goto 32.5,75.5
step
click Grandma's Good Clothes##09122
|tip They look like clothes hanging on a line outside next to the building.
collect Grandma's Good Clothes##49279 |q 14400/1 |goto 32.0,75.5
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin I Can't Wear This##14400 |goto 32.5,75.5
accept Grandma's Cat##14401 |goto 32.5,75.5
step
Follow the path down |goto 33.78,76.52 < 15 |only if walking
clicknpc Chance##36459
|tip It looks like a tiny orange cat sitting on a rock.
kill Lucius the Cruel##36461
collect Chance the Cat##49281 |q 14401/1 |goto 35.16,74.82
step
Follow the path up |goto 33.90,76.42 < 15 |only if walking
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Cat##14401 |goto 32.5,75.5
step
Follow the path down |goto 33.02,78.01 < 20 |only if walking
Jump down into the water |goto 36.07,82.38 < 15 |only if walking
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto 36.9,84.2
accept Not Quite Shipshape##14404 |goto 36.9,84.2
accept Washed Up##14412 |goto 36.9,84.2
stickystart "Forsaken_Castaways"
step
click Planks of Wood##06736
|tip It looks like wooden boards laying on the ground.
collect Planks of Wood##49338 |q 14404/2 |goto 36.1,86.4
step
click Shipwright's Tools##00317
|tip It looks like a small wooden toolbox sitting on the ground inside the building.
collect Shipwright's Tools##49337 |q 14404/1 |goto 37.45,87.15
step
click Barrel of Coal Tar##09095
|tip It looks like a brown wooden barrel.
collect Coal Tar##49339 |q 14404/3 |goto 37.57,85.98
step
label "Forsaken_Castaways"
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto 36.7,85.8
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto 36.9,84.2
turnin Washed Up##14412 |goto 36.9,84.2
accept Escape By Sea##14405 |goto 36.9,84.2
step
Follow the path |goto 37.93,82.77 < 15 |only if walking
Follow the path |goto 36.40,76.30 < 20 |only if walking
Follow the path |goto 36.97,66.72 < 15 |only if walking
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto 37.6,65.2
accept To Greymane Manor##14465 |goto 37.6,65.2
step
Travel to Greymane Manor |goto 29.23,54.17 < 20 |c |q 14465
step
Follow the road up |goto 29.90,53.51 < 20 |only if walking
Continue up the road |goto 30.15,51.67 < 20 |only if walking
talk Queen Mia Greymane##36606
turnin To Greymane Manor##14465 |goto Gilneas 2/2 62.1,49.6
accept The King's Observatory##14466 |goto Gilneas 2/2 62.1,49.6
step
Follow the path |goto Gilneas 2/3 48.57,51.18 < 10 |walk
Run up the stairs |goto Gilneas 2/3 49.54,34.12 < 10 |walk
Run up the spiral stairs |goto Gilneas 2/3 39.48,14.81 < 10 |walk
talk King Genn Greymane##36743
|tip At the top of the tower.
turnin The King's Observatory##14466 |goto Gilneas 2/3 41.94,20.21
accept Alas, Gilneas##14467 |goto Gilneas 2/3 41.94,20.21 |instant
step
talk King Genn Greymane##36743
accept Exodus##24438 |goto 41.94,20.21
step
Run down the spiral stairs |goto 46.51,22.78 < 7 |walk
Follow the path |goto 48.29,49.95 < 10 |walk
Follow the road down |goto Gilneas 2/0 29.70,51.83 < 20 |only if walking
Continue down the road |goto Gilneas 2/0 30.49,52.30 < 20 |only if walking
clicknpc Stagecoach Carriage##44928
Ride in the Stagecoach Carriage |invehicle |c |goto Gilneas 2/0 28.88,54.19 |q 24438
step
Travel to the Stagecoach Crash Site |goto 51.6,80.0 < 20 |c |q 24438
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto 51.8,80.5
accept Stranded at the Marsh##24468 |goto 51.8,80.5
step
Follow the path |goto 52.64,77.81 < 20 |only if walking
kill Swamp Crocolisk##37078+
Rescue #5# Crash Survivors |q 24468/1 |goto 52.9,75.2
step
Follow the path up |goto 52.88,76.93 < 20 |only if walking
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto 51.8,80.5
accept Introductions Are in Order##24472 |goto 51.8,80.5
stickystart "Ogre_Minions"
step
Follow the path up |goto 50.81,83.32 < 15 |only if walking
Continue following the path up |goto 50.24,85.13 < 15 |only if walking
Continue following the path up |goto 48.82,84.39 < 15 |only if walking
Follow the path up |goto 47.72,85.74 < 15 |only if walking
click Koroth's Banner##6957
|tip It looks like a hanging tiger skin flag.
collect Koroth's Banner##49742 |q 24472/2 |goto 46.75,83.20
step
label "Ogre_Minions"
kill 4 Ogre Minion##36293+ |q 24472/1 |goto 46.86,84.51
step
Follow the path down |goto 48.29,85.56 < 15 |only if walking
Continue following the path down |goto 49.26,84.30 < 15 |only if walking
Continue following the path down |goto 50.65,84.73 < 15 |only if walking
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto 51.8,80.5
accept Stormglen##24483 |goto 51.8,80.5
step
Follow the road |goto 52.85,84.42 < 20 |only if walking
Continue following the road |goto 56.51,88.67 < 20 |only if walking
Follow the path |goto 58.99,92.58 < 20 |only if walking
talk Gwen Armstead##37102
|tip Inside the building.
turnin Stormglen##24483 |goto 59.86,91.70
accept Pest Control##24484 |goto 59.86,91.70
step
talk Willa Arnes##38792
|tip Inside the building.
home Stormglen Village |goto 60.06,91.67
step
talk Lorna Crowley##37815
|tip Inside the building.
accept Pieces of the Past##24495 |goto 60.26,91.85
stickystart "Old_Journal_Pages"
step
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto 63.70,91.61
step
label "Old_Journal_Pages"
click Old Journal Page##9130+
|tip They look like pieces of paper laying on the ground and on boxes in this area.
collect 6 Old Journal Page |q 24495/1 |goto 63.70,91.61
step
Follow the path |goto 60.61,92.63 < 15 |only if walking
talk Gwen Armstead##37102
|tip Inside the building.
turnin Pest Control##24484 |goto 59.86,91.70
accept Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
turnin Pieces of the Past##24495 |goto 60.26,91.85
step
Follow the path |goto 61.01,90.46 < 15 |only if walking
Continue following the path |goto 63.08,86.83 < 20 |only if walking
Follow the path |goto 66.96,84.92 < 20 |only if walking
kill Rygna##37045 |q 24501/1 |goto 68.34,81.66
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
accept The Blackwald##24578 |goto 60.26,91.85
step
Follow the path |goto 61.01,90.46 < 15 |only if walking
Follow the path |goto 61.83,88.85 < 20 |only if walking
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin The Blackwald##24578 |goto 63.34,82.91
accept Losing Your Tail##24616 |goto 63.34,82.91
step
Jump down here |goto 63.55,82.07 < 7 |only if walking
Use Belrysa's Talisman to Break Free |use Belrysa's Talisman##49944
|tip Walk over the Freezing Trap lying in the road first.
kill Dark Scout##37953 |q 24616/1 |goto 63.96,81.28
step
Follow the path up |goto 65.32,81.96 < 15 |only if walking
Follow the path |goto 65.05,85.01 < 15 |only if walking
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin Losing Your Tail##24616 |goto 63.35,82.91
accept Tal'doren, the Wild Home##24617 |goto 63.35,82.91
step
Jump down here |goto 63.55,82.07 < 7 |only if walking
Follow the path down |goto 66.01,81.12 < 20 |only if walking
Enter the hollow tree |goto 68.65,74.61 < 15 |walk
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Tal'doren, the Wild Home##24617 |goto 68.71,73.25
accept At Our Doorstep##24627 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
accept Preparations##24628 |goto 69.3,73.0
stickystart "Moonleaves"
step
Follow the path |goto 68.05,73.39 < 15 |walk
kill 6 Howling Banshee##37757+ |q 24627/1 |goto 63.23,75.65
step
label "Moonleaves"
click Moonleaf##270+
|tip They look like small plants at the base of trees around this area.
collect 6 Moonleaf##50017 |q 24628/1 |goto 63.23,75.65
step
Enter the hollow tree |goto 68.07,73.39 < 15 |walk
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin At Our Doorstep##24627 |goto 68.71,73.25
accept Take Back What's Ours##24646 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
turnin Preparations##24628 |goto 69.3,73.0
step
Follow the path |goto 68.05,73.39 < 15 |walk
Follow the path up |goto 65.58,73.89 < 20 |only if walking
Use the Horn of Tal'doren near the Veteran Dark Rangers |use Horn of Tal'doren##50134
|tip Using the horn will summon worgen to attack them and keep them occupied.
click Worn Coffer##5743
|tip It looks like a wooden chest on the ground inside the building.
collect Mysterious Artifact |q 24646/1 |goto 57.5,75.6
step
Follow the path down |goto 60.00,75.95 < 20 |only if walking
Enter the hollow tree |goto 68.07,73.39 < 15 |walk
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Take Back What's Ours##24646 |goto 68.71,73.25
accept Neither Human Nor Beast##24593 |goto 68.71,73.25
step
click Well of Fury##439
Activate the Well of Fury |q 24593/1 |goto 69.0,72.8
step
click Well of Tranquility##439
Activate the Well of Tranquility |q 24593/2 |goto 69.3,73.1
step
click Well of Balance##439
Activate the Well of Balance |q 24593/3 |goto 69.1,73.5
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Neither Human Nor Beast##24593 |goto 68.71,73.25
accept Return to Stormglen##24673 |goto 68.71,73.25
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Return to Stormglen##24673 |goto 59.86,91.71
accept Onwards and Upwards##24672 |goto 59.86,91.71
step
Follow the path |goto 61.01,90.50 < 15 |only if walking
Follow the path |goto 63.27,86.96 < 20 |only if walking
Follow the path up |goto 68.2,86.8 < 15 |only if walking
Follow the road |goto 71.40,85.73 < 20 |only if walking
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto 72.73,80.04
accept Betrayal at Tempest's Reach##24592 |goto 72.73,80.04
step
Cross the bridge |goto 73.33,79.50 < 15 |only if walking
Follow the path up |goto 75.18,76.67 < 20 |only if walking
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |c |goto 76.6,75.5 |q 24592
step
Follow the path down |goto 79.22,72.05 < 20 |only if walking
Continue on the path |goto 80.53,69.72 < 20 |only if walking
Cross the bridge |goto 82.65,69.20 < 15 |only if walking
Follow the path up |goto 84.43,72.87 < 15 |only if walking
Continue up the path |goto 85.66,73.14 < 15 |only if walking
kill Baron Ashbury##37735 |q 24592/1 |goto 85.29,74.27
|tip He walks around outside of the building.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |c |q 24592
step
Follow the path down |goto 85.62,73.11 < 15 |only if walking
Cross the bridge |goto 84.11,72.74 < 15 |only if walking
Follow the path |goto 82.62,69.19 < 15 |only if walking
Follow the path up |goto 82.06,67.38 < 15 |only if walking
Follow the path |goto 81.65,64.49 < 20 |only if walking
kill Lord Walden##37733 |q 24592/2 |goto 78.16,66.03
|tip He walks around this area and inside the house.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |c |q 24592
step
Jump down here |goto 79.78,68.28 < 15 |only if walking
Follow the path up |goto 79.58,70.61 < 20 |only if walking
Follow the path |goto 78.65,72.12 < 15 |only if walking
talk King Genn Greymane##37876
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
turnin Betrayal at Tempest's Reach##24592 |goto 78.3,72.1
accept Flank the Forsaken##24677 |goto 78.3,72.1
step
talk Lord Hewell##38764 |goto 78.33,71.88
Tell him _"I need a horse."_
Borrow a Horse |invehicle |c |goto 78.33,71.88 |q 24677
step
Travel to Livery Outpost |goto 71.6,39.6 < 20 |c |q 24677
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto 70.87,39.84
accept Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks back and forth in this small area.
accept Slaves to No One##24674 |goto 70.8,40.1
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat##50219 |q 24675/1 |goto 75.3,47.4
stickystart "Free_Enslaved_Gilneans"
step
Follow the road |goto 74.86,45.96 < 20 |only if walking
Continue following the road |goto 73.61,36.75 < 20 |only if walking
Follow the path |goto 74.05,33.03 < 20 |only if walking
Follow the path |goto Gilneas 2/1 28.00,61.14 < 15 |walk
Continue following the path |goto Gilneas 2/1 34.98,47.96 < 15 |walk
Follow the path |goto Gilneas 2/1 33.60,31.82 < 15 |walk
Follow the path |goto Gilneas 2/1 40.64,27.71 < 15 |walk
Continue on the path |goto Gilneas 2/1 53.69,33.93 < 15 |walk
Follow the path down |goto Gilneas 2/1 59.64,44.86 < 15 |walk
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto Gilneas 2/1 54.36,81.07
step "Free_Enslaved_Gilneans"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##181+
|tip They look like silver balls attached to the Enslaved Villagers' legs throughout the mine.
Free #5# Enslaved Gilnean |q 24575/1 |goto 59.38,72.79
step
Follow the path |goto 60.00,43.86 < 15 |walk
Follow the path up |goto 55.52,34.64 < 15 |walk
Follow the path |goto 38.24,27.61 < 15 |walk
Continue on the path |goto 33.26,35.64 < 15 |walk
Follow the path |goto 33.60,53.11 < 15 |walk
Continue following the path |goto 27.67,64.64 < 15 |walk
Follow the path |goto Gilneas 2/0 75.46,32.03 < 20 |only if walking
Follow the road |goto Gilneas 2/0 73.30,37.37 < 20 |only if walking
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto Gilneas 2/0 70.87,39.84
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks back and forth in this small area.
turnin Slaves to No One##24674 |goto 70.8,40.1
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto 70.87,39.84
stickystart "Forsaken_Infantry"
step
Follow the path |goto 72.22,31.42 < 10 |only if walking
kill Executor Cornell##37686 |q 24676/2 |goto 72.8,28.4
step
Follow the path |goto 73.46,28.97 < 15 |only if walking
kill Valnov the Mad##37685 |q 24676/3 |goto 74.15,27.38
step "Forsaken_Infantry"
kill 4 Forsaken Infantry##37692 |q 24676/1 |goto 73.49,29.14
step
Follow the road up |goto 73.35,30.95 < 15 |only if walking
Follow the road |goto 73.30,37.37 < 20 |only if walking
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto 70.87,39.84
accept The Battle for Gilneas City##24904 |goto 70.87,39.84
step
talk Krennan Aranas##38553 |goto 70.05,40.90 |n
Tell him _"Let us take back our city."_
|tip If someone else has already started the battle, you will have to tell him "I wish to join the battle underway." instead.
Arrive in Gilneas City |goto Gilneas City/0 |c |q 24904
|tip Follow the army into the gates of Gilneas City.
step
Use the Rapier of the Gilnean Patriots on your Allies |use Rapier of the Gilnean Patriots##50334
|tip Follow the army of Gilneans through the city and fight enemies.
|tip The Rapier of the Gilnean Patriots heals your allies.
kill Lady Sylvanas Windrunner##38469
Complete the Battle for Gilneas City |q 24904/1 |goto Gilneas City/0 36.28,62.14
step
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Battle for Gilneas City##24904 |goto 38.6,60.2
accept The Hunt For Sylvanas##24902 |goto 38.6,60.2
step
Follow the path |goto 37.00,54.02 < 15 |only if walking
Follow the path |goto 36.13,47.28 < 15 |only if walking
Follow the path |goto 33.93,38.66 < 15 |only if walking
Enter the building |goto 40.82,40.43 < 10 |walk
Follow the path |goto 43.35,44.25 < 10 |walk
Watch the dialogue
|tip Follow Tobias Mistmantle and hide in the water inside the building.
Hunt for Sylvanas |q 24902/1 |goto 44.1,51.6
step
Follow the path |goto 43.50,44.47 < 10 |walk
Leave the building |goto 40.78,40.33 < 10 |walk
Jump down here |goto 37.31,43.78 < 10 |only if walking
Follow the path |goto 37.18,53.87 < 15 |only if walking
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Hunt For Sylvanas##24902 |goto 38.6,60.3
accept Vengeance or Survival##24903 |goto 38.6,60.3
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Vengeance or Survival##24903 |goto 32.4,57.0
accept Slowing the Inevitable##24920 |goto 32.4,57.0
step
clicknpc Captured Riding Bat##38540
Ride the Captured Riding Bat |invehicle |c |goto 30.3,61.0 |q 24920
stickystart "Invading_Forsaken"
step
_While Riding the Captured Riding Bat:_
|tip Use the Iron Bomb ability on your action bar.
kill 6 Forsaken Catapult##38287 |q 24920/1
step
label "Invading_Forsaken"
_While Riding the Captured Riding Bat:_
|tip Use the "Iron Bomb" ability on your action bar.
kill 40 Invading Forsaken##38364 |q 24920/2
step
Return to Greymane Court |goto Gilneas City/0 30.5,60.9 < 20 |noway |c |q 24920
|tip Use the "Fly Back" ability on your action bar.
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Slowing the Inevitable##24920 |goto 32.4,57.0
accept Knee-Deep##24678 |goto 32.4,57.0
step
Run down the stairs |goto 32.9,57.6 < 5 |walk |n
Continue down the stairs |goto 34.2,56.3 < 5 |walk |n
Follow the path |goto 7.7,71.5 < 10 |walk |n
Continue following the path |goto 22.53,62.21 > 10000 |walk |n
Run up the ramp |goto Gilneas 2/0 52.32,55.57 < 15 |walk |n
Run up the stairs |goto Gilneas 2/0 49.87,57.20 < 7 |walk |n
Use the Half-Burnt Torch |use Half-Burnt Torch##50220
|tip Use the Half-Burnt Torch repeatedly to keep the rats and spiders from attacking you.
Enter the House |goto Gilneas 2/0 49.78,57.95 < 10 |c |q 24678
step
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto 49.82,56.93
accept Laid to Rest##24602 |goto 49.82,56.93
step
click Disturbed Soil##49
|tip They look like piles of dirt on the ground around this area.
collect 5 Unearthed Memento##49921 |q 24602/1 |goto 48.29,55.48
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto 49.82,56.93
accept Patriarch's Blessing##24679 |goto 49.82,56.93
step
Use the Blessed Offerings next to Aderic's Tomb |use Blessed Offerings##51956
|tip It looks like a silver plaque on a stone statue.
Place the Offering |q 24679/1 |goto 48.87,53.05
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto 49.82,56.93
accept Keel Harbor##24680 |goto 49.82,56.93
step
Follow the road |goto 46.92,55.15 < 20 |only if walking
Follow the road |goto 47.05,49.26 < 20 |only if walking
Continue following the road |goto 43.03,41.77 < 15 |only if walking
Follow the path down |goto 42.09,39.89 < 20 |only if walking
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto 41.93,37.63
accept They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
click Glaive Thrower##38150
Take Control of a Glaive Thrower |invehicle |c |q 24681 |goto 42.32,37.77
stickystart "Wolfmaw_Outriders"
stickystart "Orcish_War_Machines"
step
Follow the path |goto 41.70,40.14 < 15 |only if walking
kill 40 Orc Raider##37916+ |q 24681/1 |goto 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Wolfmaw_Outriders"
kill 8 Wolfmaw Outrider##37938+ |q 24681/2 |goto 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Orcish_War_Machines"
kill 4 Orcish War Machine##37921+ |q 24681/3 |goto 26.95,32.33
|tip They look like wooden siege vehicles spread out around this area.
|tip Use the abilities on your action bar.
step
Follow the path |goto 36.32,35.34 < 30 |only if walking |n
Return to Keel Harbor |goto 39.39,37.99 < 20 |c |q 24681
step
Leave the Glaive Thrower |outvehicle |c |q 24681
|tip Click the yellow arrow on your action bar.
step
Follow the path down |goto 40.60,38.65 < 15 |only if walking
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto 41.65,36.51
step
clicknpc Hippogryph##43747
|tip Wait until Tobias Mistmantle says "Hop on a hippogryph, now's our chance!" nearby.
Ride the Hippogryph |invehicle |c |q 26706 |goto 41.65,36.18
step
_On the Gunship:_
Watch the dialogue
|tip Click the Coiled Rope to be lowered down, then follow and protect Lorna Crowley.
|tip She will go to the bottom level of the gunship and plant explosives.
Destroy the Gunship |q 26706/1
step
Return to Keel Harbor |goto 42.6,38.3 < 20 |c |q 26706
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto 41.65,36.51
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto 42.59,35.95 |instant
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil/0 55.23,89.18
step
talk Genn Greymane##48736
|tip Inside the hollow tree.
turnin The Howling Oak##28517 |goto Darnassus/0 48.1,14.4
accept Breaking Waves of Change##26385 |goto Darnassus/0 48.1,14.4
]])
