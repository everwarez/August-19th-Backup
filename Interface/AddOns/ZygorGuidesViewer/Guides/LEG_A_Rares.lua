local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer.GuideMenuTier = "LEG"

ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\POI Legion Rares",{
	hidden=true,
	poi=true,
	poitype=rare,
},[[
--//Azsuna\\--
step //1
	|poi_rare Cailyn Paledoom
	|poilvl 100
	|poispot Azsuna 52.38,23.04
	|poiquest 38268
	|poicurrency OR
	|poiitem 129063
	Follow the path up |goto Azsuna/0 52.02,17.67 < 10 |only if walking
	kill Cailyn Paledoom##91289 |q 38268 |future |goto Azsuna 52.38,23.04
step //2
	|poi_rare Doomlord Kazrok
	|poilvl 100
	|poispot Azsuna 43.17,28.13
	|poiquest 38352
	|poicurrency OR
	|poiitem 129056
	Go up the path |goto Azsuna/0 46.47,27.73 < 10 |only if walking
	kill Doomlord Kazrok##91579 |q 38352 |future |goto Azsuna 43.17,28.13
step //3
	|poi_rare Arcanist Shal'iman
	|poilvl 100
	|poispot Azsuna 34.96,33.91
	|poiquest 42505
	|poicurrency OR
	|poiitem 141868
	Follow the path |goto Azsuna 41.1,35.3 |only if walking
	kill Arcanist Shal'iman##107657 |q 42505 |future |goto Azsuna 34.96,33.91
step //4
	|poi_rare Houndmaster Stroxis
	|poilvl 100
	|poispot Azsuna 30.77,47.99
	|poiquest 42286
	|poicurrency OR
	|poiitem 141873
	kill Houndmaster Stroxis##107136 |q 42286 |future |goto Azsuna 30.77,47.99
step //5
	|poi_rare Bilebrain
	|poilvl 100
	|poispot Azsuna 29.27,53.66
	|poiquest 42417
	|poicurrency OR
	|poiitem 129079
	Go up the path |goto Azsuna/0 29.40,53.30 < 10 |only if walking
	kill Bilebrain##107327 |q 42417 |future |goto Azsuna 29.27,53.66
step //6
	|poi_rare Vorthax
	|poilvl 100
	|poispot Azsuna 37.37,43.18
	|poiquest 42280
	|poicurrency OR
	|poiitem 141875
	Go up the ramp |goto Azsuna/0 36.57,44.05 < 10 |only if walking
	kill Vorthax##107113 |q 42280 |future |goto Azsuna 37.37,43.18
step //7
	|poi_rare Beacher
	|poilvl 100
	|poispot Azsuna 32.29,29.72
	|poiquest 38238
	|poicurrency OR
	|poiitem 129067
	kill Beacher##91187 |q 38238 |future |goto Azsuna 32.29,29.72
	|tip He walks up and down the beach and may not be in this exact spot.
step //8
	|poi_rare Warbringer Mox'na
	|poilvl 100
	|poispot Azsuna 49.10,55.19
	|poiquest 37909
	|poicurrency OR
	|poiitem 129069
	kill Warbringer Mox'na##90164 |q 37909 |future |goto Azsuna 49.10,55.19
step //9
	|poi_rare Normantis the Deposed
	|poilvl 100
	|poispot Azsuna 49.50,08.80
	|poiquest 37928
	|poicurrency OR
	|poiitem 129061
	Enter the cave |goto Azsuna/0 50.18,7.70 < 10 |walk
	kill Normantis the Deposed##90217 |q 37928 |future |goto Azsuna 49.50,08.80
step //10
	|poi_rare Pridelord Meowl
	|poilvl 100
	|poispot Azsuna 56.10,29.06
	|poiquest 38061
	|poicurrency OR
	|poiitem 138395
	kill Pridelord Meowl##90901 |q 38061 |future |goto Azsuna 56.10,29.06
step //11
	|poi_rare Infernal Lord
	|poilvl 100
	|poispot Azsuna 35.30,50.30
	|poiquest 38037
	|poicurrency OR
	|poiitem 129083
	kill Infernal Lord##90803 |q 38037 |future |goto Azsuna 35.30,50.30
step //12
	|poi_rare Ragemaw
	|poilvl 100
	|poispot Azsuna 32.60,48.80
	|poiquest 44108
	|poicurrency OR
	|poiitem 129075
	Enter the cave |goto Azsuna 34.8,49.8 < 10 |walk
	kill Ragemaw##109504 |q 44108 |future |goto Azsuna 32.60,48.80
step //13
	|poi_rare Valyaka the Stormbringer
	|poilvl 100
	|poispot Azsuna 47.30,34.60
	|poiquest 37726
	|poiitem 129082
	kill Valyaka the Stormbringer##???? |q 37726 |future |goto Azsuna 47.30,34.60
step //14
	|poi_rare Daggerbeak
	|poilvl 100
	|poispot Azsuna 51.08,31.69
	|poiquest 37869
	|poicurrency OR
	|poiitem 129084
	kill Daggerbeak##90057 |q 37869 |future |goto Azsuna 51.08,31.69
step //15
	|poi_rare Arcavellus
	|poilvl 100
	|poispot Azsuna/0 59.84,12.08
	|poiquest 37932
	|poicurrency OR
	|poiitem 129085
	kill Rift Wyrm##90242+
	kill Arcavellus##90244 |q 37932 |future |goto Azsuna/0 59.84,12.08
step //16
	|poi_rare Flog the Captain-Eater
	|poilvl 100
	|poispot Azsuna 45.30,57.80
	|poiquest 37824
	|poicurrency OR
	|poiitem 129090
	kill Flog the Captain-Eater##89884 |q 37824 |future |goto Azsuna 45.30,57.80
	|tip You may need a group to defeat him.
step //17
	|poi_rare Chief Bitterbrine
	|poilvl 100
	|poispot Azsuna 65.54,56.79
	|poiquest 42221
	|poicurrency OR
	|poiitem 129073
	Swim through a window underwater |goto Azsuna/0 65.24,56.80 < 6 |walk
	kill Chief Bitterbrine##106990 |q 42221 |future |goto Azsuna 65.54,56.79
	|tip He is underwater in the back of the ship.
step //18
	|poi_rare Tide Behemoth
	|poilvl 100
	|poispot Azsuna 61.30,62.00
	|poiquest 38217
	|poiitem 129062
	kill Tide Behemoth##91113 |q 38217 |future |goto Azsuna 61.30,62.00
step //19
	|poi_rare The Oracle
	|poilvl 100
	|poispot Azsuna 59.70,55.20
	|poiquest 37822
	|poicurrency OR
	|poiitem 129065
	Go up the stairs |goto Azsuna/0 59.68,54.64 < 10 |only if walking
	kill The Oracle##89850 |q 37822 |future |goto Azsuna 59.70,55.20
step //20
	|poi_rare Ravyn-Drath
	|poilvl 100
	|poispot Azsuna 41.05,41.78
	|poiquest 37537
	|poicurrency OR
	|poiitem 129080
	kill Ravyn-Drath##89016 |q 37537 |future |goto Azsuna 41.05,41.78
step //21
	|poi_rare Syphonus/Leodrath
	|poilvl 100
	|poispot Azsuna 67.10,51.40
	|poiquest 37989
	|poiitem 129064
	kill Syphonus/Leodrath##???? |q 37989 |future |goto Azsuna 67.10,51.40
step //22
	|poi_rare Mrrgrl the Tidereaver
	|poilvl 100
	|poispot Azsuna 50.00,34.40
	|poiquest 37823
	|poiitem 129072
	kill Mrrgrl the Tidereaver##???? |q 37823 |future |goto Azsuna 50.00,34.40
step //23
	|poi_rare Captain Volo'ren
	|poilvl 100
	|poispot Azsuna 53.40,44.00
	|poiquest 37821
	|poicurrency OR
	|poiitem 129066
	Go up the stairs |goto Azsuna/0 51.61,44.69 < 10 |only if walking
	Cross the bridge |goto 52.80,45.32 < 5 |only if walking
	kill Captain Volo'ren##89846 |q 37821 |future |goto Azsuna 53.40,44.00
step //24
	|poi_rare Brawlgoth
	|poilvl 100
	|poispot Azsuna 55.10,45.90
	|poiquest 42450
	|poicurrency OR
	|poiitem 129086
	kill Brawlgoth##107127 |q 42450 |future |goto Azsuna 55.10,45.90
	|tip He is on the upper platform.
step //25
	|poi_rare Golza the Iron Fin
	|poilvl 100
	|poispot Azsuna 65.16,40.00
	|poiquest 37820
	|poicurrency OR
	|poiitem 129091
	click Horn of the Siren
	kill Hatecoil Deepsinger##90774+, Hatecoil Reservist##90778+
	kill Golza the Iron Fin##89816 |q 37820 |future |goto Azsuna 65.16,40.00
step //26
	|poi_rare Brogozog
	|poilvl 100
	|poispot Azsuna 59.30,46.30
	|poiquest 38212
	|poicurrency OR
	|poiitem 129068
	Go up the path |goto Azsuna 58.9,50.0 < 10 |only if walking
	talk Tehd Shoemaker##91097 |goto Azsuna/0 59.30,46.42 < 5
	kill Brogozog##91100 |q 38212 |future |goto Azsuna 59.30,46.30
step //27
	|poi_rare Broodmother Lizax
	|poilvl 100
	|poispot Azsuna 33.40,41.20
	|poiquest 44670
	|poicurrency OR
	|poiitem 141869
	Enter the cave |goto Azsuna/0 33.32,42.50 < 10 |walk
	kill Broodmother Lizax##107105 |q 44670 |future |goto Azsuna 33.40,41.20
step //28
	|poi_rare Felwing
	|poilvl 100
	|poispot Azsuna 43.57,24.44
	|poiquest 42069
	|poiitem 129087
	Go up the path |goto Azsuna/0 39.14,32.84 < 10 |only if walking
	Continue up the mountain |goto Azsuna/0 39.11,26.88 < 10 |only if walking
	Go up the stairs |goto 43.62,24.03 < 10 |only if walking
	talk Tehd Shoemaker##91097 |goto 43.56,24.48 < 5
	kill Felwing##105197 |q 42069 |future |goto Azsuna 43.57,24.44
step //29
	|poi_rare Coura, Mistress of Arcana
	|poilvl 100
	|poispot Azsuna/19 62.52,30.72
	|poiquest 42699
	|poicurrency OR
	|poiitem 141877
	Enter the temple |goto Azsuna/0 56.04,68.69 < 10 |walk
	kill Coura, Mistress of Arcana##108255 |q 42699 |future |goto Azsuna/19 62.52,30.72
step //30
	|poi_rare Inquisitor Tivos
	|poilvl 100
	|poispot Azsuna/0 28.4,52.1
	|poiquest 42376
	|poicurrency OR
	|poiitem 141874
	click Legion Portal |goto Azsuna/0 26.82,49.06 < 5 |walk
	Go down the path |goto Azsuna/0 27.56,52.19 < 10
	kill Inquisitor Tivos##107269 |q 42376 |future |goto Azsuna/0 28.4,52.1
--//Val'sharah\\--
step //31
	|poi_rare Elindya Featherlight
	|poilvl 100
	|poispot Val'sharah 60.42,90.72
	|poiquest 38887
	|poiitem 130115
	clicknpc Elindya Featherlight##92334 |goto Val'sharah 60.42,90.72 < 5 |walk
	|tip Follow Elindya as she walks.
	kill Skul'vrax##93654 |q 38887 |future |goto Val'sharah 60.88,87.91
step //32
	|poi_rare Gorebeak
	|poilvl 100
	|poispot Val'sharah 59.75,77.59
	|poiquest 38468
	|poicurrency OR
	|poiitem 130154
	talk Lorel Sagefeather##92111 |goto Val'sharah/0 59.80,77.37 < 5 
	kill Gorebeak##92117 |q 38468 |future |goto Val'sharah 59.75,77.59
	|tip You may need a group to defeat him.
step //33
	|poi_rare Shivering Ashmaw Cub
	|poilvl 100
	|poispot Val'sharah 52.78,87.50
	|poiquest 38889
	|poiitem 128690
	Enter the cave |goto Val'sharah/0 53.07,87.78 < 10 |walk
	talk Shivering Ashmaw Cub##93677
	|tip Defeat the waves of enemies that come.
	accept Adopting the Adorable##38889 |future |goto Val'sharah 52.78,87.50
	
step //34
	|poi_rare Grelda the Hag
	|poilvl 100
	|poispot Val'sharah 65.80,53.44
	|poiquest 40126
	|poicurrency OR
	|poiitem 130122
	Enter the cave |goto Val'sharah/0 66.09,52.60 < 10 |walk
	kill Grelda the Hag##95123 |q 40126 |future |goto Val'sharah 65.80,53.44
step //35
	|poi_rare Thondrax
	|poilvl 100
	|poispot Val'sharah 62.60,47.50
	|poiquest 38780
	|poicurrency OR
	|poiitem 130121
	kill Thondrax##93205 |q 38780 |future |goto Val'sharah 62.60,47.50
step //36
	|poi_rare Dreadbog
	|poilvl 100
	|poispot Val'sharah 60.31,44.27
	|poiquest 39858
	|poicurrency OR
	|poiitem 130125
	kill Dreadbog##97517 |q 39858 |future |goto Val'sharah 60.31,44.27
step //37
	|poi_rare Darkshade
	|poilvl 100
	|poispot Val'sharah 44.14,52.09
	|poiquest 38767
	|poicurrency OR
	|poiitem 130166
	Follow the road |goto Val'sharah 37.74,56.26 < 10 |only if walking
	Enter Black Rook Hold |goto Val'sharah/0 39.00,53.73 < 10 |walk
	kill Darkshade##92965 |q 38767 |future |goto Val'sharah 44.14,52.09
	|tip He walks around this area.
step //38
	|poi_rare Perrexx
	|poilvl 100
	|poispot Val'sharah 61.05,69.40
	|poiquest 39596
	|poiitem 130137
	kill Perrexx##95318 |q 39596 |future |goto Val'sharah 61.05,69.40
step //39
	|poi_rare Bahagar
	|poilvl 100
	|poispot Val'sharah 45.59,88.79
	|poiquest 43446
	|poicurrency OR
	|poiitem 130135
	Follow the path |goto Val'sharah 45.9,85.06 < 10 |only if walking
	Enter the cave |goto Val'sharah/0 45.38,88.30 < 10 |walk
	kill Bahagar##110562 |q 43446 |future |goto Val'sharah 45.59,88.79
step //40
	|poi_rare Mad Henryk
	|poilvl 100
	|poispot Val'sharah 47.22,58.02
	|poiquest 39357
	|poicurrency OR
	|poiitem 130214
	Step into the Old Bear Trap
	kill Mad Henryk##95221 |q 39357 |future |goto Val'sharah 47.22,58.02
	|tip When he summons copies of himself walk into them to find the real one.
step //41
	|poi_rare Kiranys Duskwhisper
	|poilvl 100
	|poispot Val'sharah 34.42,58.28
	|poiquest 39121
	|poicurrency OR
	|poiitem 141876
	Go up the path |goto Val'sharah/0 35.03,59.57 < 10 |only if walking
	click Vibrating Arcane Trap
	kill Kiranys Duskwhisper##94414 |q 39121 |future |goto Val'sharah 34.42,58.28
step //42
	|poi_rare Ironbranch
	|poilvl 100
	|poispot Val'sharah 58.77,34.02
	|poiquest 40080
	|poicurrency 1220
	kill Ironbranch##93030 |q 40080 |future |goto Val'sharah 58.77,34.02
step //43
	|poi_rare Lyrath Moonfeather
	|poilvl 100
	|poispot Val'sharah 61.79,29.54
	|poiquest 40079
	|poicurrency OR
	|poiitem 130118
	kill Lyrath Moonfeather##98241 |q 40079 |future |goto Val'sharah 61.79,29.54
step //44
	|poi_rare Wraithtalon
	|poilvl 100
	|poispot Val'sharah 66.87,36.86
	|poiquest 39856
	|poicurrency OR
	|poiitem 130116
	Follow the path |goto Val'sharah/0 65.79,41.01 < 10 |only if walking
	Go up the hill |goto 67.61,37.49 < 10 |only if walking
	kill Wraithtalon##97504 |q 39856 |future |goto Val'sharah 66.87,36.86
step //45
	|poi_rare Undergrell Attack
	|poilvl 100
	|poispot Val'sharah 67.03,69.58
	|poiquest 43176
	|poiitem 130133
	kill Frantic Stag##109695, Crazed Undergrell##109714, Frantic Mauler##109694
	|tip Defeat the enemies that attack in waves.
	kill Undergrell Ringleader##109708 |q 43176 |future |goto Val'sharah 67.03,69.58
step //46
	|poi_rare Theryssia
	|poilvl 100
	|poispot Val'sharah 38.06,52.81
	|poiquest 38772
	|poicurrency OR
	|poiitem 130136
	clicknpc Theryssia##94194 |goto Val'sharah/0 37.95,52.81 < 5 |walk
	kill Theryssia##92423 |q 38772 |future |goto Val'sharah 38.06,52.81
step //47
	|poi_rare Seersei
	|poilvl 100
	|poispot Val'sharah 41.64,78.27
	|poiquest 38479
	|poicurrency OR
	|poiitem 130171
	kill Seersei##92180 |q 38479 |future |goto Val'sharah 41.64,78.27
step //48
	|poi_rare Pollous the Fetid
	|poilvl 100
	|poispot Val'sharah 67.50,45.10
	|poiquest 39130
	|poicurrency OR
	|poiitem 130168
	kill Pollous the Fetid##94485 |q 39130 |future |goto Val'sharah 67.50,45.10
--//Highmountain\\--
step //49
	|poi_rare Devouring Darkness
	|poilvl 100
	|poispot Highmountain 54.44,41.25
	|poiquest 40414
	|poicurrency OR
	|poiitem 131780
	Enter the cave |goto Highmountain/0 55.1,44.3 < 10 |walk
	Follow the path |goto Highmountain/0 55.10,41.88 < 10 |walk
	clicknpc Kobold Candle##97543+ |goto 54.44,41.25 < 5 |walk
	|tip Click all the candles to summon the Devouring Darkness.
	kill Devouring Darkness##100495 |q 40414 |future |goto Highmountain 54.44,41.25
step //50
	|poi_rare Taurson
	|poilvl 100
	|poispot Highmountain 53.75,51.23
	|poiquest 39872
	|poiitem 131800
	Follow the path |goto Highmountain/0 55.41,47.46 < 10 |only if walking
	Enter the cave |goto Highmountain/0 54.20,50.73 < 10 |walk
	talk Taurson##97653
	kill Taurson##97653
	click Taurson's Prize##3365 |q 39872 |future |goto Highmountain 53.75,51.23
step //51
	|poi_rare Slumber
	|poilvl 100
	|poispot Highmountain 41.51,31.84
	|poiquest 40175
	|poicurrency OR
	|poiitem 131921
	kill Slumber##98890 |q 40175 |future |goto Highmountain 41.51,31.84
step //52
	|poi_rare Majestic Elderhorn
	|poilvl 100
	|poispot Highmountain 46.64,31.44
	|poiquest 39646
	|poicurrency OR
	|poiitem 131900
	kill Majestic Elderhorn##96410 |q 39646 |future |goto Highmountain 46.64,31.44
	|tip Majestic Elderhorn runs around a large area. It is easiest to stand in this spot and wait.
step //53
	|poi_rare Mellok, Son of Torok
	|poilvl 100
	|poispot Highmountain 49.20,27.09
	|poiquest 40242
	|poicurrency OR
	|poiitem 131808
	Go up the path |goto Highmountain/0 47.49,29.16 < 10 |only if walking
	kill Mellok, Son of Torok##96621 |q 40242 |future |goto Highmountain 49.20,27.09
step //54
	|poi_rare Flamescale
	|poilvl 100
	|poispot Highmountain 40.97,57.75
	|poiquest 39963
	|poicurrency OR
	|poiitem 131773
	click Abandoned Fishing Pole##244667
	kill Flamescale##97793 |q 39963 |future |goto Highmountain 40.97,57.75
step //55
	|poi_rare Sekhan
	|poilvl 100
	|poispot Highmountain 45.70,55.00
	|poiquest 40681
	|poicurrency OR
	|poiitem 131730
	kill Sekhan##101077 |q 40681 |future |goto Highmountain 45.70,55.00
step //56
	|poi_rare Hartli the Snatcher
	|poilvl 100
	|poispot Highmountain 51.07,48.25
	|poiquest 39802
	|poicurrency OR
	|poiitem 138783
	Follow the path up Windripper Peak |goto Highmountain/0 53.20,48.01 < 10 |only if walking
	kill Hartli the Snatcher##97326 |q 39802 |future |goto Highmountain 51.07,48.25
step //57
	|poi_rare Amateur Hunters
	|poilvl 100
	|poispot Highmountain 43.16,48.00
	|poiquest 40413
	|poiitem 131781
	Enter the cave |goto Highmountain 43.16,48.00 < 10 |walk
	kill Dargok Thunderuin##100231, "Sure-Shot" Arnie##100230, Ryael Dawndrifter##100232
	click Battered Chest##245479 |q 40413 |future |goto Highmountain/0 43.46,47.37
step //58
	|poi_rare Frostshard
	|poilvl 110
	|poispot Highmountain 54.44,74.54
	|poiquest 40773
	|poicurrency OR
	Follow the path |goto Highmountain/0 54.52,73.19 < 25 |only if walking
	kill Frostshard##101649 |q 40773 |future |goto Highmountain 54.44,74.54
	|tip He patrols up and down the ravine.
	|tip You may need a group to defeat him.
step //59
	|poi_rare Skullhat
	|poilvl 100
	|poispot Highmountain 51.46,31.89
	|poiquest 39465
	|poicurrency OR
	|poiitem 131769
	Enter the cave |goto Highmountain 50.85,31.97 < 10 |walk
	kill Skullhat##95872 |q 39465 |future |goto Highmountain 51.46,31.89
step //60
	|poi_rare Tenpak Flametotem
	|poilvl 100
	|poispot Highmountain 41.94,41.49
	|poiquest 39782
	|poicurrency OR
	|poiitem 129175
	Follow the path |goto Highmountain 44.44,32.34 < 10 |only if walking
	Continue on the path up the mountain |goto Highmountain/0 44.66,35.44 < 10 |only if walking
	kill Tenpak Flametotem##97203 |q 39782 |future |goto Highmountain 41.94,41.49
step //61
	|poi_rare Beastmaster Pao'lek
	|poilvl 100
	|poispot Highmountain 48.60,50.00
	|poiquest 39784
	|poiitem 131756
	Go up the steep mountain path |goto Highmountain/0 46.56,49.68 < 10 |only if walking
	talk Beastmaster Pao'lek##97215 |goto Highmountain 48.65,50.09 < 5 
	kill Arru##97220 |q 39784 |future |goto Highmountain 48.91,49.93
step //62
	|poi_rare Bristlemaul
	|poilvl 100
	|poispot Highmountain 38.08,45.59
	|poiquest 40405
	|poicurrency OR
	|poiitem 131761
	Enter the cave |goto Highmountain 37.70,45.70 < 10 |walk
	kill Bristlemaul##97449 |q 40405 |future |goto Highmountain/0 38.08,45.59
step //63
	|poi_rare Crab Rider Grmlrml
	|poilvl 100
	|poispot Highmountain 44.20,12.10
	|poiquest 39994
	|poicurrency OR
	|poiitem 131798
	kill Crab Rider Grmlrml##97933 |q 39994 |future |goto Highmountain 44.20,12.10
step //64
	|poi_rare Mrrklr
	|poilvl 100
	|poispot Highmountain 46.50,07.44
	|poiquest 40096
	|poicurrency OR
	|poiitem 131797
	talk Sloppy "Sloppy Joe" Joe##98754 |goto Highmountain/0 46.64,7.43 < 5
	kill Mrrklr##98311 |q 40096 |future |goto Highmountain 46.69,7.31
step //65
	|poi_rare Gurbog da Basher
	|poilvl 100
	|poispot Highmountain 56.40,60.50
	|poiquest 40347
	|poicurrency OR
	|poiitem 131775
	kill Gurbog da Basher##96590 |q 40347 |future |goto Highmountain 56.40,60.50
	|tip He walks around the area and might not be in this exact spot.
step //66
	|poi_rare Brogul the Mighty
	|poilvl 100
	|poispot Highmountain 56.35,72.50
	|poiquest 39235
	|poiitem 138396
	Follow the path up |goto Highmountain/0 58.97,68.79 < 10 |only if walking
	Continue up the mountain |goto 57.98,73.73 < 10 |only if walking
	kill Brogul the Mighty##94877 |q 39235 |future |goto Highmountain 56.35,72.50
step //67
	|poi_rare Bodash the Hoarder
	|poilvl 100
	|poispot Highmountain 36.74,16.35
	|poiquest 40084
	|poicurrency OR
	|poiitem 131799
	kill Bodash the Hoarder##98299 |q 40084 |future |goto Highmountain 36.74,16.35
step //68
	|poi_rare Majestic Elderhorn
	|poilvl 100
	|poispot Highmountain 48.50,25.46
	|poiquest 39646
	|poicurrency OR
	|poiitem 131900
	kill Majestic Elderhorn##96410 |q 39646 |future |goto Highmountain 48.50,25.46
	|tip It runs around the area and may not be in this exact spot.
step //69
	|poi_rare Shara Felbreath
	|poilvl 100
	|poispot Highmountain 51.06,25.70
	|poiquest 39762
	|poicurrency OR
	|poiitem 131791
	kill Shara Felbreath##97093 |q 39762 |future |goto Highmountain 51.06,25.70
step //70
	|poi_rare Crawshuk the Hungry
	|poilvl 100
	|poispot Highmountain 48.41,40.15
	|poiquest 39806
	|poicurrency OR
	|poiitem 131809
	Go up the path |goto Highmountain/0 49.50,39.71 < 10 |only if walking
	kill Crawshuk the Hungry##97345 |q 39806 |future |goto Highmountain 48.41,40.15
step //71
	|poi_rare Mynta Talonscreech
	|poilvl 100
	|poispot Highmountain 54.50,40.60
	|poiquest 39866
	|poicurrency OR
	|poiitem 131792
	Follow the path up the mountain |goto Highmountain 53.48,35.60 < 10 |only if walking
	talk Scout Harefoot##97579 |goto Highmountain/0 54.54,40.63 < 5 
	kill Vilewing Ambusher##97591+
	kill Mynta Talonscreech##97593 |q 39866 |future |goto Highmountain 54.50,40.60
step //72
	|poi_rare Luggut the Eggeater
	|poilvl 100
	|poispot Highmountain 50.80,34.60
	|poiquest 40406
	|poicurrency OR
	|poiitem 131776
	Enter the cave |goto Highmountain 51.6,37.5 < 10 |walk
	Jump down here |goto Highmountain/0 50.63,35.91 < 10 |walk
	kill Luggut the Eggeater##98024 |q 40406 |future |goto Highmountain 50.80,34.60
	|tip It is at the bottom of the cave.
step //73
	|poi_rare Unethical Adventurers
	|poilvl 100
	|poispot Highmountain 52.56,58.38
	|poiquest 40423
	|poiitem 131767
	Enter the cave |goto Highmountain/0 52.27,58.58 < 10 |walk
	click Seemingly Unguarded Treasure##6478 |goto Highmountain/0 52.76,58.18 < 5 |walk
	kill Xaander##109498, Zenobia##100303, Puck##100302, Darkful##109501, Jak##109500
	Defeat the Unethical Adventurers |q 40423 |future |goto Highmountain 52.56,58.38
step //74
	|poi_rare Oubdob Da Smasher
	|poilvl 100
	|poispot Highmountain 47.6,73.8
	|poiquest 39435
	|poiitem 131793
	|poicurrency OR
	Follow the path |goto Highmountain 48.23,68.96 < 10 |only if walking
	kill Oubdob Da Smasher##95204 |q 39435 |future |goto Highmountain 47.6,73.8
	|tip This Rare is only here when the Danger: Oubdob Da Smasher world quest is active.
--//Stormheim\\--
step //75
	|poi_rare Thane Irglov the Merciless
	|poilvl 100
	|poispot Stormheim 40.67,72.38
	|poiquest 38424
	|poicurrency OR
	|poiitem 129113
	Enter the building |goto Stormheim/0 42.18,70.92 < 10 |walk
	kill Erling the Lightningborn##91893, Asger Jarlborn##91895, Strider Cuyler##91894 |goto Stormheim/0 41.18,71.89 < 5 |walk
	kill Thane Irglov the Merciless##91892 |q 38424 |future |goto Stormheim 40.67,72.38
step //76
	|poi_rare Bloodstalker Alpha
	|poilvl 100
	|poispot Stormheim 38.45,43.05
	|poiquest 38626
	|poicurrency OR
	|poiitem 129101
	kill Bloodstalker Alpha##92599 |q 38626 |future |goto Stormheim 38.45,43.05
	|tip It runs around the area and may not be in this exact spot.
step //77
	|poi_rare Starbuck
	|poilvl 100
	|poispot Stormheim 54.80,29.41
	|poiquest 42437
	|poicurrency OR
	|poiitem 130132
	kill Starbuck##107487 |q 42437 |future |goto Stormheim 54.80,29.41
step //78
	|poi_rare Inquisitor Ernstenbok
	|poilvl 100
	|poispot Stormheim 63.70,74.22
	|poiquest 37908
	|poicurrency OR
	|poiitem 140686
	Enter the cave |goto Stormheim/0 62.35,75.01 < 10 |walk
	kill Inquisitor Ernstenbok##90139 |q 37908 |future |goto Stormheim 63.70,74.22
step //79
	|poi_rare Kottr Vondyr
	|poilvl 100
	|poispot Stormheim 73.45,47.63
	|poiquest 40109
	|poicurrency OR
	|poiitem 138419
	Enter Inkbinder's Rise |goto Stormheim/0 71.44,47.12 < 10
	kill Kottr Vondyr##98421 |q 40109 |future |goto Stormheim 73.45,47.63
step //80
	|poi_rare Grrvrgull the Conqueror
	|poilvl 100
	|poispot Stormheim 78.62,61.16
	|poiquest 40113
	|poicurrency OR
	|poiitem 138421
	kill Grrvrgull the Conqueror##98503 |q 40113 |future |goto Stormheim 78.62,61.16
step //81
	|poi_rare Whitewater Typhoon
	|poilvl 100
	|poispot Stormheim 36.49,51.75
	|poiquest 38472
	|poicurrency OR
	|poiitem 138418
	kill Whitewater Typhoon##92152 |q 38472 |future |goto Stormheim 36.49,51.75
step //82
	|poi_rare Tiptog the Lost
	|poilvl 100
	|poispot Stormheim 47.17,49.83
	|poiquest 38774
	|poicurrency OR
	|poiitem 129163
	kill Tiptog the Lost##93166 |q 38774 |future |goto Stormheim 47.17,49.83
	|tip He walks around the area and may not be in this exact spot.
step //83
	|poi_rare Fathnyr
	|poilvl 100
	|poispot Stormheim 46.82,84.06
	|poiquest 38425
	|poicurrency OR
	|poiitem 129206
	click Grapple Point |goto Stormheim/0 45.93,82.54 < 5 |only if walking
	Enter the cave |goto 46.29,82.87 < 10 |walk
	kill Fathnyr##91803 |q 38425 |future |goto Stormheim 46.82,84.06
	|tip It is inside the cave at the top of Thorim's Peak.
step //84
	|poi_rare Urgev the Flayer
	|poilvl 100
	|poispot Stormheim 64.80,51.76
	|poiquest 38847
	|poicurrency OR
	|poiitem 129219
	kill Urgev the Flayer##93401 |q 38847 |future |goto Stormheim 64.80,51.76
step //85
	|poi_rare Dread-Rider Cortis
	|poilvl 100
	|poispot Stormheim 73.90,60.60
	|poiquest 43343
	|poicurrency OR
	|poiitem 130134
	kill Dread-Rider Cortis##94347 |q 43343 |future |goto Stormheim 73.90,60.60
	|tip He flies around the area on a large bat.
	only Alliance
step //86
	|poi_rare Isel the Hammer
	|poilvl 100
	|poispot Stormheim 62.03,60.49
	|poiquest 39120
	|poicurrency OR
	|poiitem 129133
	Enter the building |goto Stormheim 61.8,60.9 < 10 |walk
	kill Isel the Hammer##94413 |q 39120 |future |goto Stormheim 62.03,60.49
step //87
	|poi_rare Ivory Sentinel
	|poilvl 100
	|poispot Stormheim 59.82,68.07
	|poiquest 39031
	|poicurrency OR
	|poiitem 132895
	kill Ivory Sentinel##92751 |q 39031 |future |goto Stormheim 59.82,68.07
step //88
	|poi_rare Glimar Ironfist
	|poilvl 100
	|poispot Stormheim 41.47,67.02
	|poiquest 38333
	|poicurrency OR
	|poiitem 129291
	click Grapple Point |goto Stormheim/0 41.43,65.67 < 5 |only if walking
	kill Glimar Ironfist##91529 |q 38333 |future |goto Stormheim/0 41.55,66.56
step //89
	|poi_rare Stormwing Matriarch
	|poilvl 100
	|poispot Stormheim 49.50,71.75
	|poiquest 38423
	|poiitem 129208
	Follow the path up |goto Stormheim/0 51.58,76.58 < 25 |only if walking
	kill Stormwing Matriarch##91795 |q 38423 |future |goto Stormheim 49.50,71.75
step //90
	|poi_rare Hannval the Butcher
	|poilvl 100
	|poispot Stormheim 51.60,74.65
	|poiquest 42591
	|poicurrency OR
	|poiitem 138417
	Follow the path |goto Stormheim/0 56.55,75.63 < 10 |only if walking
	Continue up the path |goto Stormheim/0 57.35,79.10 < 10 |only if walking
	kill Hannval the Butcher##107926 |q 42591 |future |goto Stormheim 51.60,74.65
step //91
	|poi_rare Bladesquall
	|poilvl 100
	|poispot Stormheim 45.87,77.36
	|poiquest 38431
	|poicurrency OR
	|poiitem 129048
	click Grapple Point |goto Stormheim/0 46.36,74.37 < 5 |only if walking
	Follow the narrow path up |goto 46.68,75.28 < 10 |only if walking
	kill Bladesquall##91874 |q 38431 |future |goto Stormheim 45.87,77.36
step //92
	|poi_rare Tarben
	|poilvl 100
	|poispot Stormheim 61.53,43.33
	|poiquest 40081
	|poicurrency OR
	|poiitem 129199
	click Grapple Point |goto Stormheim/0 60.37,43.81 < 5 |only if walking
	click Grapple Point |goto 60.90,43.91 < 5 |only if walking
	kill Tarben##98268 |q 40081 |future |goto Stormheim 61.53,43.33
step //93
	|poi_rare Captain Brvet
	|poilvl 100
	|poispot Stormheim 58.00,45.16
	|poiquest 38642
	|poicurrency OR
	|poiitem 129123
	click Horn of the Hellmouth
	kill Captain Brvet##92685 |q 38642 |future |goto Stormheim 58.00,45.16
	|tip You will need to kill two raiders before Brvet leaves the boat.
step //94
	|poi_rare Roteye
	|poilvl 100
	|poispot Stormheim 58.35,33.92
	|poiquest 43342
	|poicurrency OR
	|poiitem 139387
	Enter the cave |goto Stormheim 57.7,34.8 < 10 |walk
	|tip It's down in Tideskorn Harbor.
	kill Roteye##110363 |q 43342 |future |goto Stormheim 58.35,33.92
step //95
	|poi_rare Mordvigbjorn
	|poilvl 100
	|poispot Stormheim 72.50,49.91
	|poiquest 38837
	|poicurrency OR
	|poiitem 129035
	kill Mordvigbjorn##93371 |q 38837 |future |goto Stormheim 72.50,49.91
step //96
	|poi_rare The Nameless King
	|poilvl 100
	|poispot Stormheim 67.30,39.90
	|poiquest 38685
	|poicurrency OR
	|poiitem 129041
	click Offering Shrine##6478
	kill The Nameless King##92763 |q 38685 |future |goto Stormheim 67.30,39.90
step //97
	|poi_rare Egyl the Enduring
	|poilvl 100
	|poispot Stormheim 41.77,34.11
	|poiquest 40068
	|poicurrency OR
	|poiitem 132898
	Enter the cave |goto Stormheim 41.4,31.9 < 10 |walk
	kill Egyl the Enduring##98188 |q 40068 |future |goto Stormheim 41.77,34.11
step //98
	|poi_rare Fenri
	|poilvl 100
	|poispot Helheim/0 84.83,49.86
	|poiquest 38461
	|poicurrency OR
	|poiitem 129044
	Follow the path down |goto Stormheim/0 72.78,40.59 < 10 |only if completedq(39855)
	Use the portal back to Helheim |goto Stormheim 73.64,39.36 < 10 |only if completedq(39855)
	Enter the cave |goto Helheim/0 82.02,43.54 < 10 |walk
	kill Fenri##92040 |q 38461 |future |goto Helheim/0 84.83,49.86
step //99
	|poi_rare Soulthirster
	|poilvl 100
	|poispot Helheim/0 28.69,63.65
	|poiquest 39870
	|poicurrency OR
	|poiitem 129188
	Follow the path down |goto Stormheim/0 72.78,40.59 < 10 |only if completedq(39855)
	Use the portal back to Helheim |goto Stormheim 73.64,39.36 < 10 |only if completedq(39855)
	kill Soulthirster##97630 |q 39870 |future |goto Helheim/0 28.69,63.65
step //100
	|poi_rare Horde Kill Squad
	|poilvl 100
	|poispot Stormheim 44.20,22.96
	|poiquest 38630
	|poiitem 129266
	Follow the path up |goto Stormheim/0 49.15,31.35 < 20 |only if walking
	Follow the path |goto 47.59,32.28 < 20 |only if walking
	Drop down |goto 43.01,27.99 < 10 |only if walking
	Follow the path |goto 43.78,25.32 < 20 |only if walking
	kill Deathguard Adams##92626, Dark Ranger Jess##92631, Apothecary Perez##92634, Assassin Huwe##92633
	Defeat the Horde Kill Squad |q 38630 |future |goto Stormheim 44.20,22.96
	only Alliance
step //101
	|poi_rare Hook and Sinker
	|poilvl 100
	|poispot Stormheim 42.01,57.67
	|poiquest 38625
	|poiitem 129100
	kill Hook##92590, Sinker##92591
	Defeat Hook and Sinker |q 38625 |future |goto Stormheim 42.01,57.67
	only Alliance
--//Suramar\\--
step //102
	|poi_rare Maia the White
	|poilvl 110
	|poispot Suramar 24.39,35.17
	|poiquest 44071
	|poiitem 139897
	|poicurrency OR
	kill Maia the White##112497 |q 44071 |future |goto Suramar 24.39,35.17
step //103
	|poi_rare Shadowquill
	|poilvl 110
	|poispot Suramar 16.70,27.04
	|poiquest 43996
	|poicurrency AM
	|poiitem 140401
	kill Shadowquill##103841 |q 43996 |future |goto Suramar 16.70,27.04
step //104
	|poi_rare Mar'tura
	|poilvl 110
	|poispot Suramar 13.53,53.44
	|poiquest 44124
	|poicurrency AM
	|poiitem 140949
	kill Mar'tura##112802 |q 44124 |future |goto Suramar 13.53,53.44
step //105
	|poi_rare Tideclaw
	|poilvl 110
	|poispot Suramar/0 18.55,61.14
	|poiquest 43542
	|poicurrency AM
	|poiitem 140399
	kill Tideclaw##110824 |q 43542 |future |goto Suramar/0 18.55,61.14
step //106
	|poi_rare Matron Hagatha
	|poilvl 110
	|poispot Suramar 36.18,33.81
	|poiquest 43718
	|poicurrency OR
	|poiitem 140390
	Follow the path |goto Suramar 40.3,26.2 < 10 |only if walking
	Enter the cave |goto Suramar/0 35.87,34.54 < 10 |walk
	kill Matron Hagatha##111329 |q 43718 |future |goto Suramar 36.18,33.81
step //107
	|poi_rare Artificer Lothaire
	|poilvl 110
	|poispot Suramar 33.78,15.09
	|poiquest 43717
	|poicurrency AM
	|poiitem 140372
	kill Damaged Spell Seeker Construct##106349+
	|tip Kill the constructs as they become active.
	kill Artificer Lothaire##106351 |q 43717 |future |goto Suramar 33.78,15.09
step //108
	|poi_rare Reef Lord Raj'his
	|poilvl 110
	|poispot Suramar 75.52,57.29
	|poiquest 44003
	|poicurrency AM
	|poiitem 121801
	kill Reef Lord Raj'his##103575 |q 44003 |future |goto Suramar 75.52,57.29
step //109
	|poi_rare Rok'nash
	|poilvl 110
	|poispot Suramar 80.15,70.00
	|poiquest 40680
	|poicurrency AM
	|poiitem 140019
	kill Rok'nash##103183 |q 40680 |future |goto Suramar 80.15,70.00
step //110
	|poi_rare Har'kess the Insatiable
	|poilvl 110
	|poispot Suramar 67.67,71.06
	|poiquest 41136
	|poicurrency AM
	|poiitem 140381
	Enter the cave |goto Suramar 72.39,68.08 < 10 |walk
	kill Har'kess the Insatiable##103214 |q 41136 |future |goto Suramar 67.67,71.06
step //111
	|poi_rare Degren
	|poilvl 110
	|poispot Suramar 54.43,56.12
	|poiquest 43792
	|poicurrency AM
	|poiitem 121808
	kill Degren##111651 |q 43792 |future |goto Suramar 54.43,56.12
	|tip Clear the area of enemies before pulling Degren.
step //112
	|poi_rare Ambassador D'vwinn
	|poilvl 110
	|poispot Suramar 54.80,63.76
	|poiquest 43794
	|poicurrency AM
	|poiitem 139918
	Go up the stairs |goto Suramar/0 55.78,62.39 < 10 |only if walking
	kill Ambassador D'vwinn##111649 |q 43794 |future |goto Suramar 54.80,63.76
	|tip He is surrounded by enemies, you will probably need a group to defeat him.
step //113
	|poi_rare Mal'Dreth the Corruptor
	|poilvl 110
	|poispot Suramar 34.17,60.99
	|poiquest 43351
	|poicurrency AM
	|poiitem 140386
	kill Mal'Dreth the Corruptor##110024 |q 43351 |future |goto Suramar 34.17,60.99
step //114
	|poi_rare Cadraeus
	|poilvl 110
	|poispot Suramar 62.56,48.08
	|poiquest 43495
	|poicurrency AM
	|poiitem 139969
	kill Cadraeus##110726 |q 43495 |future |goto Suramar 62.56,48.08
step //115
	|poi_rare Hertha Grimdottir
	|poilvl 110
	|poispot Suramar 61.66,39.58
	|poiquest 43993
	|poicurrency AM
	|poiitem 121737
	Enter the cave |goto Suramar/0 61.75,39.59 < 10 |walk
	kill Hertha Grimdottir##103223 |q 43993 |future |goto Suramar 61.66,39.58
step //116
	|poi_rare Cora'Kar
	|poilvl 110
	|poispot Suramar 68.17,58.96
	|poiquest 41135
	|poiitem 139952
	|poicurrency OR
	Enter the cave |goto Suramar 70.0,56.9 < 10 |walk
	kill Cora'Kar##100864 |q 41135 |future |goto Suramar 68.17,58.96
step //117
	|poi_rare Pinchshank
	|poilvl 110
	|poispot Suramar 66.65,67.13
	|poiquest 43968
	|poicurrency AM
	|poiitem 140314
	kill Pinchshank##107846 |q 43968 |future |goto Suramar 66.65,67.13
step //118
	|poi_rare Myonix
	|poilvl 110
	|poispot Suramar 40.96,32.82
	|poiquest 43358
	|poicurrency AM
	|poiitem 121739
	kill Myonix##110340 |q 43358 |future |goto Suramar 40.96,32.82
step //119
	|poi_rare Anax
	|poilvl 110
	|poispot Suramar 33.72,51.23
	|poiquest 43954
	|poicurrency AM
	|poiitem 140934
	kill Anax##111197 |q 43954 |future |goto Suramar 33.72,51.23
step //120
	|poi_rare Shal'an
	|poilvl 110
	|poispot Suramar 26.24,41.19
	|poiquest 42831
	|poicurrency AM
	|poiitem 139926
	Enter the building |goto Suramar/0 25.94,40.82 < 10 |walk
	kill Shal'an##109054 |q 42831 |future |goto Suramar 26.24,41.19
step //121
	|poi_rare Oreth the Vile
	|poilvl 110
	|poispot Suramar 24.57,47.40
	|poiquest 43449
	|poicurrency AM
	|poiitem 140388
	kill Oreth the Vile##110577 |q 43449 |future |goto Suramar 24.57,47.40
step //122
	|poi_rare Elfbane
	|poilvl 110
	|poispot Suramar 22.13,51.78
	|poiquest 41319
	|poicurrency AM
	|poiitem 121806
	kill Elfbane##99792 |q 41319 |future |goto Suramar 22.13,51.78
	|tip You may need a group to defeat him.
step //123
	|poi_rare King Morgalash
	|poilvl 110
	|poispot Suramar 87.45,62.35
	|poiquest 41786
	|poicurrency OR
	|poiitem 140384
	clicknpc Jandvik Banner##103467
	kill Sashj'tar Wave Crusher##103930+, Sashj'tar Wave Breaker##103929+, Elder Trenchwalker##103932+
	|tip Kill the enemies that attack in waves.
	kill King Morgalash##103827 |q 41786 |future |goto Suramar 87.45,62.35
step //124
	|poi_rare Siegemaster Aedrin
	|poilvl 110
	|poispot Suramar 37.14,21.37
	|poiquest 43369
	|poicurrency AM
	|poiitem 140406
	Cross the bridge |goto Suramar/0 39.19,24.51 < 10 |only if walking
	kill Siegemaster Aedrin##110438 |q 43369 |future |goto Suramar 37.14,21.37
step //125
	|poi_rare Garvrulg
	|poilvl 110
	|poispot Suramar 53.19,30.21
	|poiquest 40897
	|poicurrency AM
	|poiitem 121755
	Enter the cave |goto Suramar 49.5,33.9 < 10 |walk
	Go up the path |goto Suramar/0 51.89,31.83 < 10 |walk
	Continue up the path |goto 51.01,30.67 < 10 |walk
	Follow the path around |goto 50.94,29.94 < 10 |walk
	kill Garvrulg##99610 |q 40897 |future |goto Suramar 53.19,30.21
step //126
	|poi_rare Apothecary Faldren
	|poilvl 110
	|poispot Suramar 42.17,56.41
	|poiquest 43580
	|poicurrency AM
	|poiitem 121754
	kill Apothecary Faldren##110870 |q 43580 |future |goto Suramar 42.17,56.41
step //127
	|poi_rare Lieutenant Strathmar
	|poilvl 110
	|poispot Suramar 48.53,56.68
	|poiquest 40905
	|poicurrency AM
	|poiitem 121735
	Enter the building |goto Suramar/0 47.70,54.52 < 10 |walk
	kill Lieutenant Strathmar##102303 |q 40905 |future |goto Suramar 48.53,56.68
step //128
	|poi_rare Gorgroth
	|poilvl 110
	|poispot Suramar 27.77,65.47
	|poiquest 43992
	|poicurrency AM
	|poiitem 121747
	click Portal Key |goto Suramar 27.77,65.47 < 5 |walk
	kill Gorgroth##110832 |q 43992 |future |goto Suramar 27.29,66.02
step //129
	|poi_rare Miasu
	|poilvl 110
	|poispot Suramar 62.50,63.69
	|poiquest 43793
	|poiitem 121810
	|poicurrency OR
	Go up the stairs |goto Suramar/0 61.16,63.11 < 10 |only if walking
	kill Miasu##111653 |q 43793 |future |goto Suramar 62.50,63.69
step //130
	|poi_rare Arcanist Lylandre
	|poilvl 110
	|poispot Suramar 65.57,59.14
	|poiquest 43481
	|poicurrency AM
	|poiitem 140403
	Go up the stairs |goto Suramar/0 64.82,58.44 < 10 |only if walking
	click Lylandre's Arcane Crystal |goto 65.49,58.87 < 5 |walk
	click Lylandre's Fire Crystal |goto Suramar/0 65.75,59.00 < 5 |walk
	click Lylandre's Fel Crystal |goto 65.67,59.38 < 5 |walk
	click Lylandre's Frost Crystal |goto 65.42,59.25 < 5 |walk
	kill Arcanist Lylandre##110656 |q 43481 |future |goto Suramar 65.57,59.14
step //131
	|poi_rare Guardian Thor'el
	|poilvl 110
	|poispot Suramar 61.01,52.98
	|poiquest 43597
	|poicurrency AM
	|poiitem 140404
	kill Guardian Thor'el##110944 |q 43597 |future |goto Suramar 61.01,52.98
	|tip He patrols up and down this road, and may not be in this exact spot.
step //132
	|poi_rare Randril
	|poilvl 110
	|poispot Suramar 49.60,79.00
	|poiquest 43603
	|poicurrency AM
	|poiitem 140396
	Go up the stairs |goto Suramar/0 46.72,76.99 < 10 |only if walking
	Cross the bridge |goto 48.31,77.46 < 10 |only if walking
	kill Randril##111007 |q 43603 |future |goto Suramar 49.60,79.00
step //133
	|poi_rare Rauren
	|poilvl 110
	|poispot Suramar 24.05,25.42
	|poiquest 43484
	|poicurrency AM
	|poiitem 121759
	kill Rauren##105547 |q 43484 |future |goto Suramar 24.05,25.42
step //134
	|poi_rare Magister Phaedris
	|poilvl 110
	|poispot Suramar 42.05,80.05
	|poiquest 43348
	|poicurrency OR
	|poiitem 140405
	Go up the stairs |goto Suramar/0 41.54,78.75 < 10 |only if walking
	kill Magister Phaedris##109954 |q 43348 |future |goto Suramar 42.05,80.05
step //135
	|poi_rare Llorian
	|poilvl 110
	|poispot Suramar 29.39,53.30
	|poiquest 44676
	|poiitem 138839
	|poicurrency OR
	Enter the cave |goto Suramar 29.3,50.8 < 10 |walk
	talk Llorian##113368 |goto Suramar 29.39,53.30 < 5 |walk
	kill Withered Shambler##98555+
	Select _<Feed Llorian 25 Ancient Mana.>_
	|tip Defeat the waves of enemies that attack.
	click Llorian's Supplies##255341 |q 44676 |future |goto Suramar 29.39,53.30
step //136
	|poi_rare Lady Rivantas
	|poilvl 110
	|poispot Suramar 35.23,67.23
	|poiquest 44675
	|poicurrency AM
	|poiitem 141866
	Enter the building |goto Suramar/0 33.92,66.99 < 10 |walk
	Go up the stairs |goto 34.25,68.58 < 10 |walk
	kill Lady Rivantas##106526 |q 44675 |future |goto Suramar 35.23,67.23
--//Mardum, the Shattered Abyss\\--
step //137
	|poi_rare Count Nefarious
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 63.6,23.6
	|poiquest 40231
	|poiitem 128948
	Go up the path |goto Mardum, the Shattered Abyss C/0 63.40,25.82 < 10
	kill Count Nefarious##97058 |q 40231 |future |goto Mardum, the Shattered Abyss C/2 51.43,56.25
	|tip Clicking the Wells of Souls in this room will stun Nefarious for a few seconds.
step //138
	|poi_rare General Volroth
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 68.6,27.6
	|poiquest 40234
	|poiitem 128947
	kill General Volroth##97370 |q 40234 |future |goto Mardum, the Shattered Abyss C/0 68.6,27.6
step //139
	|poi_rare Overseer Brutarg
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 80.8,41.6
	|poiquest 40233
	|poiitem 133580
	kill Overseer Brutarg##97057 |q 40233 |future |goto Mardum, the Shattered Abyss C/0 80.8,41.6
step //140
	|poi_rare King Voras
	|poilvl 98
	|poispot Mardum, the Shattered Abyss C/0 74.4,57.2
	|poiquest 40232
	|poiitem 128944
	Go up the path |goto Mardum, the Shattered Abyss C/0 73.32,56.05 < 10
	kill King Voras##97059 |q 40232 |future |goto Mardum, the Shattered Abyss C/0 74.4,57.2
step //141
	|poi_rare Wrath-Lord Lekos
	|poilvl 98
	|poispot Vault of the Wardens/1 69.0,26.8
	|poiquest 40301
	|poiitem 128958
	kill Wrath-Lord Lekos##97069 |q 40301 |future |goto Vault of the Wardens/1 69.0,26.8
	only if havequest(38672) or completedq(38672)
step //142
	|poi_rare Kethrazor
	|poilvl 98
	|poispot Vault of the Wardens/1 48.8,31.4
	|poiquest 40251
	|poiitem 128945
	Go up the path |goto Vault of the Wardens/1 46.14,34.80 < 10
	kill Kethrazor##96997 |q 40251 |future |goto Vault of the Wardens/1 48.8,31.4
	only if havequest(38672) or completedq(38672)
]])
