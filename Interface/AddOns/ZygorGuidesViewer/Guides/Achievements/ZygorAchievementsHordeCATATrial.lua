local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Represent",{
condition_end="achieved(5755)",
achieveid={621,1020,1021},
description="Equip a tabard.",
},[[
step
You can _obtain various tabards_ through reputation, achievements, PvP, and questing
_Please refer_ to our reputation and achievment guides to earn your tabards
What follows is the seven faction tabards to _get you on your way_ to 30 tabards
confirm
step
talk Stone Guard Nargol##50488 |goto Orgrimmar 50.4,58.4
buy Orgrimmar Tabard##45581 |n
_Equip_ Orgrimmar Tabard |use Orgrimmar Tabard##45581
confirm
step
talk Champion Uru'zin##50477 |goto Orgrimmar 50.0,58.1
buy Darkspear Tabard##45582
_Equip_ Darkspear Tabard |use Darkspear Tabard##45582
confirm
step
talk Frizzo Villamar##50323 |goto Orgrimmar 50.1,58.6
buy Bilgewater Cartel Tabard##64884
_Equip_ Bilgewater Cartel Tabard |use Bilgewater Cartel Tabard##64884
confirm
step
talk Turtlemaster Odai##66022 |goto Orgrimmar 69.8,41.1
buy Huojin Tabard##83080
_Equip_ Huojin Tabard |use Huojin Tabard##83080
confirm
step
talk Brave Tuho##50483 |goto Thunder Bluff 47.0,50.2
buy Thunder Bluff Tabard##45584
_Equip_ Thunder Bluff Tabard |use Thunder Bluff Tabard##45584
confirm
step
talk Captain Donald Adams##50304 |goto Undercity 63.0,49.1
buy Undercity Tabard##45583
_Equip_ Undercity Tabard |use Undercity Tabard##45583
confirm
step
talk Magistrix Nizara##50484 |goto Eversong Woods 54.3,50.8
buy Silvermoon City Tabard##45585
_Equip_ Silvermoon City Tabard |use Silvermoon City Tabard##45585
confirm
step
Congratulations, you have _earned_ the _Represent_ achievement! |only if achieved(621)
Congratulations, you have _earned_ the _Ten Tabards_ achievement! |only if achieved(1020)
Congratulations, you have _earned_ the _Twenty-Five Tabards_ achievement! |only if achieved(1021)
Congratulations, you have _earned_ the _Thirty Tabards_ achievement! |only if achieved(5755)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eastern Kingdoms",{
condition_end="achieved(42) and achieved(4868)",
achieveid={4825,4864,4866,775,761,765,766,775,627,778,772,779,780,768,859,774,769,858,781,4995,782,773,802,841,777,770,771,868,776},
description="Explore the regions of Eastern Kingdoms.",
},[[
step
_Discover_ Temple of Earth |achieve 4864/9 |goto Deepholm 49.0,49.0
step
_Discover_ Storm's Fury Wreckage |achieve 4864/8 |goto Deepholm 55.8,75.4
step
_Discover_ Twilight Overlook |achieve 4864/12 |goto Deepholm 68.3,77.8
step
_Discover_ Deathwing's Fall |achieve 4864/11 |goto Deepholm 62.9,58.5
step
_Discover_ Crimson Expanse |achieve 4864/5 |goto Deepholm 74.2,40.7
step
_Discover_ Therazane's Throne |achieve 4864/2 |goto Deepholm 56.6,10.9
step
_Discover_ The Pale Roost |achieve 4864/3 |goto Deepholm 39.8,18.6
step
_Discover_ Needlerock Chasm |achieve 4864/6 |goto Deepholm 26.8,32.6
step
_Discover_ Needlerock Slag |achieve  4864/7 |goto Deepholm 21.7,47.7
step
_Discover_ Stonehearth |achieve 4864/1 |goto Deepholm 26.3,69.5
step
_Discover_ The Quaking Fields |achieve 4864/10 |goto Deepholm 35.2,80.3
step
_Discover_ Masters' Gate |achieve 4864/4 |goto Deepholm 39.2,69.1
step
_Explore_ Deepholm |achieve 4864
step
_Discover_ Korthun's End |achieve 4825/4 |goto Abyssal Depths 54.1,63.9
step
_Discover_ Underlight Canyon |achieve 4825/16 |goto Abyssal Depths 42.2,70.0
step
_Discover_ Abandoned Reef |achieve 4825/1 |goto Abyssal Depths 22.1,80.2
step
_Discover_ L'ghorek |achieve 4825/5 |goto Abyssal Depths 32.3,54.1
step
_Discover_ Deepfin Ridge |achieve 4825/3 |goto Abyssal Depths 39.4,19.3
step
_Discover_ Seabrush |achieve 4825/8 |goto Abyssal Depths 54.9,43.5
step
_Discover_ Abyssal Breach |achieve 4825/2 |goto Abyssal Depths 71.5,29.8
step
_Discover_ The Scalding Chasm |achieve 4825/20 |goto Abyssal Depths 47,24
step
_Discover_ Shimmering Grotto |achieve 4825/21 |goto Shimmering Expanse 50.9,21.5
step
_Discover_ Silver Tide Hollow |achieve 4825/15 |goto Shimmering Expanse 47.9,37.8
step
_Discover_ Glimmerdeep Gorge |achieve 4825/6 |goto Shimmering Expanse 43.6,48.4
step
_Discover_ Ruins of Vashj'ir |achieve 4825/14 |goto Shimmering Expanse 33.7,72.4
step
_Discover_ Beth'mora Ridge |achieve 4825/12 |goto Shimmering Expanse 55.4,83.0
step
_Discover_ Nespirah |achieve 4825/13 |goto Shimmering Expanse 59.2,56.5
step
_Discover_ Ruins of Thelserai Temple |achieve 4825/19 |goto Shimmering Expanse 66.4,41.7
step
_Discover_ The Clutch |achieve 4825/10 |goto Kelp'thar Forest 58.8,81.4
step
_Discover_ Gnaws' Boneyard |achieve 4825/7 |goto Kelp'thar Forest 61.5,58.9
step
_Discover_ Gurboggle's Ledge |achieve 4825/9 |goto Kelp'thar Forest 53.2,56.2
step
_Discover_ Legion's Fate |achieve 4825/11 |goto Kelp'thar Forest 39.7,29.7
step
_Discover_ Seafarer's Tomb |achieve 4825/18 |goto Kelp'thar Forest 50.3,24.1
step
_Discover_ The Skeletal Reef |achieve 4825/17 |goto Kelp'thar Forest 64.8,49.3
step
_Explore_ Vashj'ir |achieve 4825
step
_Discover_ Booty Bay |achieve 4995/1 |goto The Cape of Stranglethorn 39.7,71.0
step
_Discover_ The Wild Shore |achieve 4995/7 |goto The Cape of Stranglethorn 43.5,81.4
step
_Discover_ Jaquero Isle |achieve 4995/5 |goto The Cape of Stranglethorn 60.8,81.6
step
_Discover_ Mistvale Valley |achieve 4995/8 |goto The Cape of Stranglethorn 50.5,58.1
step
_Discover_ Nek'mani Wellspring |achieve 4995/9 |goto The Cape of Stranglethorn 43.0,49.1
step
_Discover_ Hardwrench Hideaway |achieve 4995/4 |goto The Cape of Stranglethorn 34.1,32.4
step
_Discover_ Gurubashi Arena |achieve 4995/3 |goto The Cape of Stranglethorn 46.3,22.5
step
_Discover_ Ruins of Jubuwal |achieve 4995/6 |goto The Cape of Stranglethorn 54.4,30.3
step
_Discover_ Ruins of Aboraz |achieve 4995/10 |goto The Cape of Stranglethorn 62.2,43.7
step
_Discover_ Crystalvein Mine |achieve 4995/2 |goto The Cape of Stranglethorn 62.4,28.1
step
_Explore_ The Cape of Stranglethorn |achieve 4995
step
_Discover_ Lake Nazferiti |achieve 781/9 |goto Northern Stranglethorn 51.48,34.05
step
_Discover_ Fort Livingston |achieve 781/16 |goto Northern Stranglethorn 53.2,66.0
step
_Discover_ Balia'mah Ruins |achieve 781/13 |goto Northern Stranglethorn 59.0,55.2
step
_Discover_ Mosh'Ogg Ogre Mound |achieve 781/12 |goto Northern Stranglethorn 66.9,50.9
step
_Discover_ Bambala |achieve 781/14 |goto Northern Stranglethorn 64.7,39.7
step
_Discover_ Zul'Gurub |achieve 781/8 |goto Northern Stranglethorn 83.9,32.5
step
_Discover_ Kurzen's Compound |achieve 781/11 |goto Northern Stranglethorn 60.2,19.9
step
_Discover_ Rebel Camp |achieve 781/1 |goto Northern Stranglethorn 46.7,9.5
step
_Discover_ Nesingwary's Expedition |achieve 781/5 |goto Northern Stranglethorn 44.1,19.8
step
_Discover_ Kal'ai Ruins |achieve 781/10 |goto Northern Stranglethorn 42.2,38.4
step
_Discover_ Mizjah Ruins |achieve 781/3 |goto Northern Stranglethorn 46.1,52.9
step
_Discover_ Grom'gol Base Camp |achieve 781/4 |goto Northern Stranglethorn 37.8,48.4
step
_Discover_ The Vile Reef |achieve 781/7 |goto Northern Stranglethorn 33.0,42.5
step
_Discover_ Bal'lal Ruins |achieve 781/6 |goto Northern Stranglethorn 34.3,36.2
step
_Discover_ Zuuldaia Ruins |achieve 781/15 |goto Northern Stranglethorn 19.2,25.6
step
_Discover_ Ruins of Zul'Kunda |achieve 781/2 |goto Northern Stranglethorn 26.4,20.2
step
_Explore_ Northern Stranglethorn |achieve 781 |goto Northern Stranglethorn
step
_Discover_ The Dagger Hills |achieve 802/2 |goto Westfall 44.9,82.0
step
_Discover_ Demont's Place |achieve 802/11 |goto Westfall 33.9,73.6
step
_Discover_ Moonbrook |achieve 802/3 |goto Westfall 42.4,65.5
step
_Discover_ Alexston Farmstead |achieve 802/8 |goto Westfall 38.2,52.3
step
_Discover_ The Raging Chasm |achieve 802/13 |goto Westfall 39.2,43.2
step
_Discover_ the Molsen Farm |achieve 802/10 |goto Westfall 45.3,34.9
step
_Discover_ Jangolode Mine |achieve 802/7 |goto Westfall 44.9,23.9
step
_Discover_ Furlbrow's Pumpkin Farm |achieve 802/12 |goto Westfall 51.0,21.4
step
_Discover_ The Jansen Stead |achieve 802/6 |goto Westfall 57.7,15.8
step
_Discover_ Saldean's Farm |achieve 802/1 |goto Westfall 54.4,32.3
step
_Discover_ Sentinel Hill |achieve 802/5 |goto Westfall 55.9,49.3
step
_Discover_ The Dead Acre |achieve 802/4 |goto Westfall 61.5,59.2
step
_Discover_ The Dust Plains |achieve 802/9 |goto Westfall 64,72
step
_Explore_ Westfall |achieve 802
step
_Discover_ The Hushed Bank |achieve 778/8 |goto Duskwood 10.1,44.3
step
_Discover_ Raven Hill Cemetery |achieve 778/12 |goto Duskwood 19.6,41.3
step
_Discover_ Raven Hill |achieve 778/11 |goto Duskwood 19.8,55.2
step
_Discover_ Addle's Stead |achieve 778/7 |goto Duskwood 21.4,69.9
step
_Discover_ Vul'Gol Ogre Mound |achieve 778/2 |goto Duskwood 35.8,72.7
step
_Discover_ The Yorgen Farmstead |achieve 778/3 |goto Duskwood 51.0,74.0
step
_Discover_ The Rotting Orchard |achieve 778/13 |goto Duskwood 63.8,71.9
step
_Discover_ The Darkened Bank |achieve 778/6 |goto Duskwood 54.6,21.2
step
_Discover_ Brightwood Grove |achieve 778/4 |goto Duskwood 64.7,37.7
step
_Discover_ Manor Mistmantle |achieve 778/9 |goto Duskwood 77.1,35.9
step
_Discover_ Darkshire |achieve 778/1 |goto Duskwood 74.5,46.2
step
_Discover_ Tranquil Gardens Cemetery |achieve 778/5 |goto Duskwood 79.7,66.1
step
_Explore_ Duskwood |achieve 778
step
_Discover_ Deadman's Crossing |achieve 777/1 |goto Deadwind Pass 45.1,35.8
step
_Discover_ Karazhan |achieve 777/3 |goto Deadwind Pass 42.6,68.8
step
_Discover_ The Vice |achieve 777/2 |goto Deadwind Pass 58.6,64.7
step
_Explore_ Deadwind Pass |achieve 777
step
_Discover_ Dreadmaul Hold |achieve 766/1 |goto Blasted Lands 39.5,12.9
step
_Discover_ Rise of the Defiler |achieve 766/9 |goto Blasted Lands 45.1,26.7
step
_Discover_ the Altar of Storms |achieve 766/3 |goto Blasted Lands 39,32
step
_Discover_ Dreadmaul Post |achieve 766/5 |goto Blasted Lands 47.1,40.1
step
_Discover_ The Tainted Scar |achieve 766/6 |goto Blasted Lands 32.3,45.7
step
_Discover_ The Tainted Forest |achieve 766/14 |goto Blasted Lands 34.2,72.3
step
_Discover_ Surwich |achieve 766/12 |goto Blasted Lands 44.5,86.1
step
_Discover_ Sunveil Excursion |achieve 766/11 |goto Blasted Lands 50.7,70.9
step
_Discover_ The Red Reaches |achieve 766/13 |goto Blasted Lands 65.8,78.0
step
_Discover_ The Dark Portal |achieve 766/4 |goto Blasted Lands 54.4,52.9
step
_Discover_ Shattershore |achieve 766/10 |goto Blasted Lands 69.1,33.5
step
_Discover_ Serpent's Coil |achieve 766/1 |goto Blasted Lands 60.3,28.4
step
_Discover_ Nethergarde Keep |achieve 766/2 |goto Blasted Lands 64.3,15.8
step
_Discover_ Nethergarde Supply Camps |achieve 766/2 |goto 52.61,18.63
step
_Explore_ Blasted Lands |achieve 766
step
_Discover_ Stagalbog |achieve 782/2 |goto Swamp of Sorrows 67.8,74.9
step
_Discover_ Sorrowmurk |achieve 782/3 |goto Swamp of Sorrows 84.2,38.9
step
_Discover_ Misty Reed Strand |achieve 782/4 |goto Swamp of Sorrows 77.3,13.7
step
_Discover_ Bogpaddle |achieve 782/5 |goto Swamp of Sorrows 72.3,12.8
step
_Discover_ Marshtide Watch |achieve 782/11 |goto Swamp of Sorrows 68.4,35.8
step
_Discover_ Pool of Tears |achieve 782/9 |goto Swamp of Sorrows 62.6,50.0
step
_Discover_ The Shifting Mire |achieve 782/10 |goto Swamp of Sorrows 48.8,42.1
step
_Discover_ Stonard |achieve 782/1 |goto Swamp of Sorrows 47.1,54.2
step
_Discover_ Purespring Cavern |achieve 782/12 |goto Swamp of Sorrows 18.6,68.1
step
_Discover_ Splinterspear Junction |achieve 782/8 |goto Swamp of Sorrows 22.3,49.4
step
_Discover_ Misty Valley |achieve 782/6 |goto Swamp of Sorrows 14.7,35.8
step
_Discover_ The Harborage |achieve 782/7 |goto Swamp of Sorrows 28.8,32.1
step
_Explore_ Swamp of Sorrows |achieve 782
step
_Discover_ Lakeridge Highway |achieve 780/10 |goto Redridge Mountains 38.2,68.5
step
_Discover_ Lake Everstill |achieve 780/7 |goto Redridge Mountains 41.9,52.6
step
_Discover_ Camp Everstill |achieve 780/12 |goto Redridge Mountains 53.4,54.7
step
_Discover_ Stonewatch Keep |achieve 780/1 |goto Redridge Mountains 60.9,52.5
step
_Discover_ Render's Valley |achieve 780/9 |goto Redridge Mountains 64.7,71.3
step
_Discover_ Shalewind Canyon |achieve 780/13 |goto Redridge Mountains 81.0,62.4
step
_Discover_ Stonewatch Falls |achieve 780/8 |goto Redridge Mountains 71.25,54.57
step
_Discover_ Galardell Valley |achieve 780/2 |goto Redridge Mountains 70.28,34.66
step
_Discover_ Alther's Mill |achieve 780/6 |goto Redridge Mountains 47.2,39.2
step
_Discover_ Render's Camp |achieve 780/9 |goto Redridge Mountains 35.1,12.8
step
_Discover_ Redridge Canyons |achieve 780/11 |goto Redridge Mountains 30.2,26.1
step
_Discover_ Lakeshire |achieve 780/3 |goto Redridge Mountains 25.5,43.4
step
_Discover_ Three Corners |achieve 780/4 |goto Redridge Mountains 19.7,59.1
step
_Explore_ Redridge Mountains |achieve 780
step
_Discover_ Eastvale Logging Camp |achieve 776/8 |goto Elwynn Forest 83.5,66.9
step
_Discover_ Ridgepoint Tower |achieve 776/9 |goto Elwynn Forest 84.8,79.4
step
_Discover_ Brackwell Pumpkin Patch |achieve 776/7 |goto Elwynn Forest 69.4,79.4
step
_Discover_ Tower of Azora |achieve 776/6 |goto Elwynn Forest 64.6,69.3
step
_Discover_ Crystal Lake |achieve 776/10 |goto Elwynn Forest 52.9,66.2
step
_Discover_ Jerod's Landing |achieve 776/5 |goto Elwynn Forest 48.5,85.8
step
_Discover_ Fargodeep Mine |achieve 776/4 |goto Elwynn Forest 39.5,80.3
step
_Discover_ Westbrook Garrison |achieve 776/2 |goto Elwynn Forest 24.5,73.3
step
_Discover_ Goldshire |achieve 776/3 |goto Elwynn Forest 42.1,64.7
step
_Discover_ Northshire Valley |achieve 776/1 |goto Elwynn Forest 50.4,42.5
step
_Discover_ Stone Cairn Lake |achieve 776/11 |goto Elwynn Forest 74.0,51.5
step
_Explore_ Elwynn Forest |achieve 776
step
_Discover_ Blackrock Pass |achieve 775/2 |goto Burning Steppes 66.7,77.5
step
_Discover_ Morgan's Vigil |achieve 775/7 |goto Burning Steppes 73.5,68.0
step
_Discover_ Terror Wing Path |achieve 775/1 |goto Burning Steppes 73.9,53.4
step
_Discover_ Dreadmaul Rock |achieve 775/6 |goto Burning Steppes 69.7,40.5
step
_Discover_ Ruins of Thaurissan |achieve 775/9 |goto Burning Steppes 56.6,37.4
step
_Discover_ Black Tooth Hovel |achieve 775/3 |goto Burning Steppes 36.1,53.5
step
_Discover_ The Whelping Downs |achieve 775/8 |goto Burning Steppes 24.3,57.7
step
_Discover_ Blackrock Stronghold |achieve 775/10 |goto Burning Steppes 32.3,36.5
step
_Discover_ Blackrock Mountain |achieve 775/5 |goto Burning Steppes 20.7,29.2
step
_Discover_ Altar of Storms |achieve 775/4 |goto Burning Steppes 9.4,27.5
step
_Explore_ Burning Steppes |achieve 775
step
_Discover_ Lethlor Ravine |achieve 765/9 |goto Badlands 68.0,48.2
step
_Discover_ Camp Kosh |achieve 765/3 |goto Badlands 60.1,20.7
step
_Discover_ Uldaman |achieve 765/5 |goto Badlands 38.3,11.6
step
_Discover_ Angor Fortress |achieve 765/10 |goto Badlands 41.1,26.5
step
_Discover_ The Dustbowl |achieve 765/2 |goto Badlands 27.4,38.0
step
_Discover_ New Kargath |achieve 765/8 |goto Badlands 17.7,41.7
step
_Discover_ Camp Cagg |achieve 765/4 |goto Badlands 17.2,63.0
step
_Discover_ Scar of the Worldbreaker |achieve 765/6 |goto Badlands 31.7,54.6
step
_Discover_ Agmond's End |achieve 765/1 |goto Badlands 46.5,57.4
step
_Discover_ Bloodwatcher Point |achieve 765/8 |goto Badlands 52.3,51.2
step
_Explore_ Badlands |achieve 765
step
_Discover_ Blackrock Mountain |achieve 774/7 |goto Searing Gorge 39.9,82.9
step
_Discover_ The Sea of Cinders |achieve 774/4 |goto Searing Gorge 48,70
step
_Discover_ Balckchar Cave |achieve 774/3 |goto Searing Gorge 21.2,80.1
step
_Discover_ Firewatch Ridge |achieve 774/5 |goto Searing Gorge 23.8,31.8
step
_Discover_ Thorium Point |achieve 774/8 |goto Searing Gorge 37.7,29.9
step
_Discover_ The Cauldron |achieve 774/2 |goto Searing Gorge 52.7,49.6
step
_Discover_ Dustfire Valley |achieve 774/6 |goto Searing Gorge 71.8,26.8
step
Grimesilt Dig Site |achieve 774/1 |goto Searing Gorge 62,62.3
step
_Explore_ Searing Gorge |achieve 774
step
_Discover_ Helm's Bed Lake |achieve 627/2 |goto Dun Morogh 84.1,51.8
step
_Discover_ Gol'Bolar Quarry |achieve 627/5 |goto Dun Morogh 76.5,57.2
step
_Discover_ Amberstill Ranch |achieve 627/1 |goto Dun Morogh 71.5,46.2
step
_Discover_ The Tundrid Hills |achieve 627/10 |goto Dun Morogh 67.2,53.9
step
_Discover_ Frostmane Front |achieve 627/13 |goto Dun Morogh 58.6,57.7
step
_Discover_ Kharanos |achieve 627/9 |goto Dun Morogh 53.6,50.5
step
_Discover_ Coldridge Pass |achieve 627/11 |goto Dun Morogh 43.9,64.5
step
_Discover_ Coldridge Valley |achieve 627/12 |goto Dun Morogh 34.6,75.6
step
_Discover_ Frostmane Hold |achieve 627/7 |goto Dun Morogh 31.5,51.9
step
_Discover_ New Tinkertown |achieve 627/15 |goto Dun Morogh 33.8,37.5
step
_Discover_ Iceflow Lake |achieve 627/8 |goto Dun Morogh 41.4,40.2
step
_Discover_ Shimmer Ridge |achieve 627/4 |goto Dun Morogh 48.3,37.9
step
_Discover_ Gates of Ironforge |achieve 627/3 |goto Dun Morogh 59.6,33.8
step
_Discover_ Ironforge Airfield |achieve 627/14 |goto Dun Morogh 78.0,24.2
step
_Discover_ North Gate Outpost |achieve 627/6 |goto Dun Morogh 90.3,37.6
step
_Explore_ Dun Morogh |achieve 627
step
_Discover_ Valley of Kings |achieve 779/6 |goto Loch Modan 20.3,78.5
step
_Discover_ Stonesplinter Valley |achieve 779/5 |goto Loch Modan 32.5,78.3
step
_Discover_ Grizzlepaw Ridge |achieve 779/1 |goto Loch Modan 38.0,60.7
step
_Discover_ Thelsamar |achieve 779/4 |goto Loch Modan 35.2,47.6
step
_Discover_ Ironband's Excavation Site |achieve 779/9 |goto Loch Modan 69.4,65.3
step
_Discover_ The Farstrider Lodge |achieve 779/8 |goto Loch Modan 82.3,65.0
step
_Discover_ Mo'grosh Stronghold |achieve 779/2 |goto Loch Modan 71.0,23.8
step
_Discover_  The Loch |achieve 779/3 |goto Loch Modan 48.40,17.55
step
_Discover_ Stonewrought Dam |achieve 779/10 |goto Loch Modan 48.0,11.4
step
_Discover_ Silver Stream Mine |achieve 779/11 |goto Loch Modan 34.8,21.5
step
_Discover_ North Gate Pass |achieve 779/7 |goto Loch Modan 20.2,17.1
step
_Explore_ Loch Modan |achieve 779
step
_Discover_ Grim Batol |achieve 4866/16 |goto Twilight Highlands 18.9,51.4
step
_Discover_ Dragonmaw Pass |achieve 4866/9 |goto Twilight Highlands 28.18,37.67
step
_Discover_ Wyrms' Bend |achieve 4866/18 |goto Twilight Highlands 29.0,47.8
step
_Discover_ The Gullet |achieve 4866/26 |goto Twilight Highlands 36.39,38.03
step
_Discover_ The Twilight Breach |achieve 4866/11 |goto Twilight Highlands 39.9,46.6
step
_Discover_ Victor's Point |achieve 4866/6 |goto Twilight Highlands 43.2,58.1
step
_Discover_ Crushblow |achieve 4866/17 |goto Twilight Highlands 46.1,77.2
step
_Discover_ Dunwald Ruins |achieve 4866/14 |goto Twilight Highlands 49.5,68.8
step
_Discover_ Obsidian Forest |achieve 4866/3 |goto Twilight Highlands 64.4,78.9
step
_Discover_ Twilight Shore |achieve 4866/19 |goto Twilight Highlands 71.0,70.9
step
_Discover_ Discover Highbank |achieve 4866/10 |goto Twilight Highlands 80.7,76.8
step
_Discover_ Dragonmaw Port |achieve 4866/8 |goto Twilight Highlands 76.0,53.0
step
_Discover_ Firebeard's Patrol |achieve 4866/15 |goto Twilight Highlands 59.9,57.0
step
_Discover_ Highland Forest |achieve 4866/2 |goto Twilight Highlands 54.0,62.9
step
_Discover_ Crucible of Carnage |achieve 4866/13 |goto Twilight Highlands 50.7,56.9
step
_Discover_ Bloodgulch |achieve 4866/12 |goto Twilight Highlands 54.1,42.7
step
_Discover_ Gorshak War Camp |achieve 4866/1 |goto Twilight Highlands 62.7,46.0
step
_Discover_ Slithering Cove |achieve 4866/24 |goto Twilight Highlands 71.0,38.8
step
_Discover_ The Krazzworks |achieve 4866/27 |goto Twilight Highlands 76.8,14.5
step
_Discover_ Kirthaven |achieve 4866/22 |goto Twilight Highlands 54.9,17.3
step
_Discover_ The Black Breach |achieve 4866/25 |goto Twilight Highlands 57.9,30.3
step
_Discover_ Thundermar |achieve 4866/4 |goto Twilight Highlands 50.2,29.1
step
_Discover_ The Maw of Madness |achieve 4866/7 |goto Twilight Highlands 47.8,10.6
step
_Discover_ Ruins of Drakgor |achieve 4866/23 |goto Twilight Highlands 43.6,18.1
step
_Discover_ Humboldt Conflagration |achieve 4866/21 |goto Twilight Highlands 44.3,27.3
step
_Discover_ Glopgut's Hollow |achieve 4866/5 |goto Twilight Highlands 38.3,29.0
step
_Discover_ Vermillion Redoubt |achieve 4866/20 |goto Twilight Highlands 25.3,21.0
step
_Explore_ Twilight Highlands |achieve 4866
step
_Discover_ Raptor Ridge |achieve 841/10 |goto Wetlands 67.9,34.9
step
_Discover_ Direforge Hill |achieve 841/12 |goto Wetlands 60.87,25.46
step
_Discover_ Greenwarden's Grove |achieve 841/14 |goto Wetlands 57.9,40.6
step
_Discover_ Mosshide Fen |achieve 841/9 |goto Wetlands 61.9,56.6
step
_Discover_ Slabchisel's Survey |achieve 841/16 |goto Wetlands 58.4,71.0
step
_Discover_ Dun Algaz |achieve 841/13 |goto Wetlands 50.0,76.4
step
_Discover_ Thelgen Rock |achieve 841/15 |goto Wetlands 52.2,61.4
step
_Discover_ Angerfang Encampment |achieve 841/2 |goto Wetlands 48.5,48.0
step
_Discover_ Whelgar's Excavation Site |achieve 841/4 |goto Wetlands 35.8,48.9
step
_Discover_ Menethil Harbor |achieve 841/11 |goto Wetlands 10.2,58.2
step
_Discover_ Black Channel Marsh |achieve 841/3 |goto Wetlands 19.3,46.9
step
_Discover_ Bluegill Marsh |achieve 841/1 |goto Wetlands 18.9,36.0
step
_Discover_ Sundown Marsh |achieve 841/7 |goto Wetlands 24.5,24.3
step
_Discover_ Saltspray Glen |achieve 841/5 |goto Wetlands 32.5,17.6
step
_Discover_ Ironbeard's Tomb |achieve 841/6 |goto Wetlands 43.6,25.9
step
_Discover_ Dun Modr |achieve 841/8 |goto Wetlands 46.9,16.5
step
_Explore_ Wetland |achieve 841
step
_Discover_ Thandol Span |achieve 761/12 |goto Arathi Highlands 41.3,91.0
step
_Discover_ Boulderfist Hall |achieve 761/2 |goto Arathi Highlands 49.1,78.9
step
_Discover_ Witherbark Village |achieve 761/13 |goto Arathi Highlands 61.6,70.3
step
_Discover_ Go'Shek Farm |achieve 761/14 |goto Arathi Highlands 56.4,57.6
step
_Discover_ Hammerfall |achieve 761/10 |goto Arathi Highlands 69.3,37.2
step
_Discover_ Circle of East Binding |achieve 761/6 |goto Arathi Highlands 59.3,32.8
step
_Discover_ Dabyrie's Farmstead |achieve 761/15 |goto Arathi Highlands 49.9,41.3
step
_Discover_ Circle of Outer Binding |achieve 761/7 |goto Arathi Highlands 47.3,51.4
step
_Discover_ Refuge Pointe |achieve 761/4 |goto Arathi Highlands 39.8,46.4
step
_Discover_ Circle of Inner Binding |achieve 761/11 |goto Arathi Highlands 30.1,59.3
step
_Discover_ Faldir's Cove |achieve 761/3 |goto Arathi Highlands 23.8,81.8
step
_Discover_ Stromgarde Keep |achieve 761/5 |goto Arathi Highlands 16.5,64.1
step
_Discover_ Boulder'gor |achieve 761/16 |goto Arathi Highlands 27.5,44.2
step
_Discover_ Northfold Manor |achieve 761/9 |goto Arathi Highlands 27.0,27.1
step
_Discover_ Circle of West Binding |achieve 761/8 |goto Arathi Highlands 18.97,30.99
step
_Discover_ Galen's Fall |achieve 761/1 |goto Arathi Highlands 13.0,36.4
step
_Explore_ Arathi Highlands |achieve 761
step
_Discover_ Durnholde Keep |achieve 772/10 |goto Hillsbrad Foothills 68.3,60.0
step
_Discover_ Chillwind Point |achieve 772/24 |goto Hillsbrad Foothills 68.1,32.9
step
_Discover_ Sofera's Naze |achieve 772/16 |goto Hillsbrad Foothills 55.6,38.5
step
_Discover_ Strahnbrad |achieve 772/15 |goto Hillsbrad Foothills 58.3,23.4
step
_Discover_ Crushridge Hold |achieve 772/1 |goto Hillsbrad Foothills 50.16,24.37
step
_Discover_ Slaughter Hollow |achieve 772/17 |goto Hillsbrad Foothills 49.43,18.88
step
_Discover_ The Uplands |achieve 772/23 |goto Hillsbrad Foothills 52.4,12.6
step
_Discover_ Dandred's Fold |achieve 772/3 |goto Hillsbrad Foothills 44.9,9.1
step
_Discover_ Ruins of Alterac |achieve 772/14 |goto Hillsbrad Foothills 45.3,29.0
step
_Discover_ Growless Cave |achieve 772/6 |goto Hillsbrad Foothills 43.2,38.5
step
_Discover_ Gallows' Corner |achieve 772/5 |goto Hillsbrad Foothills 49.88,32.59
step
_Discover_ Tarren Mill |achieve 772/21 |goto Hillsbrad Foothills 56.7,46.9
step
_Discover_ Corrahn's Dagger |achieve 772/12 |goto Hillsbrad Foothills 49.6,46.7
step
_Discover_ Nethander Stead |achieve 772/26 |goto Hillsbrad Foothills 57.51,74.96
step
_Discover_ Dun Garok |achieve 772/8 |goto Hillsbrad Foothills 62.83,84.80
step
_Discover_ Ruins of Southshore |achieve 772/20 |goto Hillsbrad Foothills 48.97,71.89
step
_Discover_ Darrow Hill |achieve 772/4 |goto Hillsbrad Foothills 46.3,54.1
step
_Discover_ The Headland |achieve 772/22 |goto Hillsbrad Foothills 44.2,48.6
step
_Discover_ Gavin's Naze |achieve 772/7 |goto Hillsbrad Foothills 40.0,47.6
step
_Discover_ Misty Shore |achieve 772/25 |goto Hillsbrad Foothills 35.06,26.14
step
_Discover_ Brazie Farmstead |achieve 772/18 |goto Hillsbrad Foothills 33.8,46.5
step
_Discover_ Dalaran Crater |achieve 772/9 |goto Hillsbrad Foothills 30.4,36.2
step
_Discover_ Southpoint Gate |achieve 772/19 |goto Hillsbrad Foothills 29.5,63.6
step
_Discovered_ The Sludge Fields |achieve 772/11 |goto Hillsbrad Foothills 36.56,58.04
step
_Discover_ Azurelode Mine |achieve 772/2 |goto Hillsbrad Foothills 34.0,73.8
step
_Discover_ Purgation Isle |achieve 772/13 |goto Hillsbrad Foothills 27.0,85.6
step
_Explore_ Hillsbrad Foothills |achieve 772
step
_Discover_ The Battlefront |achieve 769/1 |goto Silverpine Forest 46.1,79.5
step
_Discover_ Shadowfang Keep |achieve 769/12 |goto Silverpine Forest 42.2,63.2
step
_Discover_ The Forsaken Front |achieve 769/3 |goto Silverpine Forest 50.9,66.6
step
_Discover_ Ambermill |achieve 769/11 |goto Silverpine Forest 61.2,62.4
step
_Discover_ Olsen's Farthing |achieve 769/10 |goto Silverpine Forest 46.1,51.0
step
_Discover_ The Sepulcher |achieve 769/8 |goto Silverpine Forest 45.0,40.0
step
_Discover_ North Tide's Beachead |achieve 769/5 |goto Silverpine Forest 37.3,28.0
step
_Discover_ The Skittering Dark |achieve 769/4 |goto Silverpine Forest 34.8,12.4
step
_Discover_ Forsaken Rear Guard |achieve 769/15 |goto Silverpine Forest 44.9,18.8
step
_Discover_ North Tide's Run |achieve 769/14 |goto Silverpine Forest 44.66,21.64
step
_Discover_ Valgan's Field |achieve 769/7 |goto Silverpine Forest 53.2,25.6
step
_Discover_ The Decrepit Fields |achieve 769/2 |goto Silverpine Forest 56.5,34.7
step
_Discover_ Deep Elem Mine |achieve 769/9 |goto Silverpine Forest 59.3,45.4
step
_Discover_ Fenris Isle |achieve 769/6 |goto Silverpine Forest 69.1,26.8
step
_Discover_ Forsaken High Command |achieve 769/13 |goto Silverpine Forest 62.0,8.7
step
_Explore_ Silverpine Forest |achieve 769
step
_Discover_ Deathknell |achieve 768/1 |goto Tirisfal Glades 32.2,63.8
step
_Discover_ Nightmare Vale |achieve 768/4 |goto Tirisfal Glades 45.1,65.4
step
_Discover_ Cold Hearth Manor |achieve 768/5 |goto Tirisfal Glades 53.8,58.7
step
_Discover_ Calston Estate |achieve 768/16 |goto Tirisfal Glades 46.2,51.4
step
_Discover_ Solliden Farmstead |achieve 768/2 |goto Tirisfal Glades 38.4,48.9
step
_Discover_ Agamand Mills |achieve 768/3 |goto Tirisfal Glades 45.6,32.9
step
_Discover_ Garren's Haunt |achieve 768/7 |goto Tirisfal Glades 56.9,35.6
step
_Discover_ Brill |achieve 768/6 |goto Tirisfal Glades 59.7,50.9
step
_Discover_ Brightwater Lake |achieve 768/8 |goto Tirisfal Glades 68.3,45.0
step
_Discover_ Scarlet Watch Post |achieve 768/11 |goto Tirisfal Glades 78.4,26.9
step
_Discover_ Scarlet Monastery Entrance |achieve 768/14 |goto Tirisfal Glades 85.08,31.34
step
_Discover_ Venomweb Vale |achieve 768/12 |goto Tirisfal Glades 87.00,47.2
step
_Discover_ Crusader Outpost |achieve 768/10 |goto Tirisfal Glades 79.1,54.7
step
_Discover_ Balnir Farmstead |achieve 768/9 |goto Tirisfal Glades 73.7,60.0
step
_Discover_ Ruins of Lordaeron |achieve 768/13 |goto Tirisfal Glades 61.87,67.55
step
_Discover_ The Bulwark |achieve 768/15 |goto Tirisfal Glades 84.9,69.4
step
_Explore_ Tirisfal Glades |achieve 768
step
_Discover_ The Bulwark |achieve 770/13 |goto Western Plaguelands 27.0,57.7
step
_Discover_ Felstone Field |achieve 770/1 |goto Western Plaguelands 36.5,54.6
step
_Discover_ Dalson's Farm |achieve 770/5 |goto Western Plaguelands 45.1,51.2
step
_Discover_ Redpine Dell |achieve 770/14 |goto Western Plaguelands 46.0,45.5
step
_Discover_ Northridge Lumber Camp |achieve 770/12 |goto Western Plaguelands 47.2,33.4
step
_Discover_ Hearthglen |achieve 770/7 |goto Western Plaguelands 44.9,17.0
step
_Discover_ The Weeping Cave |achieve 770/2 |goto Western Plaguelands 64.4,40.1
step
_Discover_ Thondroril River |achieve 770/4 |goto Western Plaguelands 69.6,50.7
step
_Discover_ Gahrron's Withering |achieve 770/6 |goto Western Plaguelands 63.9,58.2
step
_Discover_ The Writhing Haunt |achieve 770/11 |goto Western Plaguelands 54.9,66.2
step
_Discover_ Andorhal |achieve 770/3 |goto Western Plaguelands 47.63,67.18
step
_Discover_ Sorrow Hill |achieve 770/8 |goto Western Plaguelands 54.6,85.5
step
_Discover_ Darrowmere Lake |achieve 770/9 |goto Western Plaguelands 60.03,74.66
step
_Discover_ Caer Darrow |achieve 770/10 |goto Western Plaguelands 68.3,81.1
step
_Explore_ Western Plaguelands |achieve 770
step
_Discover_ Aerie Peak |achieve 773/2 |goto The Hinterlands 13.9,45.0
step
_Discover_ Plaguemist Ravine |achieve 773/13 |goto The Hinterlands 23.1,33.5
step
_Discover_ Zun'watha |achieve 773/3 |goto The Hinterlands 23.46,58.21
step
_Discover_ Quel'Danil Lodge |achieve 773/8 |goto The Hinterlands 33.3,45.6
step
_Discover_ Shadra'Alor |achieve 773/12 |goto The Hinterlands 34.6,72.0
step
_Discover_ Valorwind Lake |achieve 773/14 |goto The Hinterlands 40.5,59.3
step
_Discover_ The Altar of Zul |achieve 773/5 |goto The Hinterlands 48.4,66.9
step
_Discover_ The Creeping Ruin |achieve 773/4 |goto The Hinterlands 49.0,52.1
step
_Discover_ Agol'watha |achieve 773/7 |goto The Hinterlands 46.59,39.68
step
_Discover_ Jintha'Alor |achieve 773/6 |goto The Hinterlands 63.1,74.7
step
_Discover_ The Overlook Cliffs |achieve 773/10 |goto The Hinterlands 72.7,66.1
step
_Discover_ Shaol'watha |achieve 773/1 |goto The Hinterlands 73.2,54.2
step
_Discover_ Skulk Rock |achieve 773/11 |goto The Hinterlands 57.6,42.6
step
_Discover_ Seradane |achieve 773/9 |goto The Hinterlands 62.7,24.1
step
_Explore_ The Hinterlands |achieve 773
step
_Discover_ Darrowshire |achieve 771/1 |goto Eastern Plaguelands 35.1,84.2
step
_Discover_ The Undercroft |achieve 771/13 |goto Eastern Plaguelands 24.0,78.8
step
_Discover_ The Marris Stead |achieve 771/23 |goto Eastern Plaguelands 22.6,66.0
step
_Discover_ Thondroril River |achieve 771/12 |goto Eastern Plaguelands 08.63,66.20
step
_Discover_ Terrordale |achieve 771/7 |goto Eastern Plaguelands 12.5,26.3
step
_Discover_ Statholme |achieve 771/20 |goto Eastern Plaguelands 26.8,9.8
step
_Discover_ Plaguewood |achieve 771/6 |goto Eastern Plaguelands 33.6,24.4
step
_Discover_ The Fungal Vale |achieve 771/9 |goto Eastern Plaguelands 36.1,44.8
step
_Discover_ Crown Guard Tower |achieve 771/8 |goto Eastern Plaguelands 35.7,68.5
step
_Discover_ Lake Mereldar |achieve 771/10 |goto Eastern Plaguelands 57.4,74.1
step
_Discover_ Corin's Crossing |achieve 771/5 |goto Eastern Plaguelands 55.6,62.9
step
_Discover_ The Infectis Scar |achieve 771/2 |goto Eastern Plaguelands 48.90,62.25
step
_Discover_ Blackwood Lake |achieve 771/21 |goto Eastern Plaguelands 46.3,43.5
step
_Discover_ Quel'Lithien Lodge |achieve 771/19 |goto Eastern Plaguelands 48.1,13.1
step
_Discover_ Northpass Tower |achieve 771/16 |goto Eastern Plaguelands 50.5,20.5
step
_Discover_ Eastwall Tower |achieve 771/14 |goto Eastern Plaguelands 62.4,41.7
step
_Discover_ Pestilent Scar |achieve 771/4 |goto Eastern Plaguelands 68.7,56.5
step
_Discover_ Tyr's Hand |achieve 771/17 |goto Eastern Plaguelands 75.6,75.2
step
_Discover_ Ruins of the Scarlet Enclave |achieve 771/22 |goto Eastern Plaguelands 87.1,78.5
step
_Discover_ Light's Hope Chapel |achieve 771/18 |goto Eastern Plaguelands 76.8,53.9
step
_Discover_ The Noxious Glade |achieve 771/11 |goto Eastern Plaguelands 78.1,35.8
step
_Discover_ Northdale |achieve 771/15 |goto Eastern Plaguelands 66.1,25.0
step
_Discover_ Zul'Mashar |achieve 771/3 |goto Eastern Plaguelands 66.4,10.3
step
_Explore_ Eastern Plaguelands |achieve 771
step
_Discover_ Thalassian Pass |achieve 858/1 |goto Ghostlands 48.2,84.3
step
_Discover_ Deatholme |achieve 858/14 |goto Ghostlands 33.1,79.9
step
_Discover_ Windrunner Spire |achieve 858/16 |goto Ghostlands 12.4,57.0
step
_Discover_ Windrunner Village |achieve 858/11 |goto Ghostlands 17.9,41.4
step
_Discover_ Goldenmist Village |achieve 858/12 |goto Ghostlands 25.0,15.0
step
_Discover_ Sanctum of the Moon |achieve 858/8 |goto Ghostlands 33.4,32.2
step
_Discover_ Bleeding Ziggurat |achieve 858/4 |goto Ghostlands 34.3,47.6
step
_Discover_ Howling Ziggurat |achieve 858/3 |goto Ghostlands 40.4,49.8
step
_Discover_ Tranquillien |achieve 858/7 |goto Ghostlands 47.12,32.8
step
_Discover_ Sanctum of the Sun |achieve 858/9 |goto Ghostlands 54.7,49.7
step
_Discover_ Zeb'Nowa |achieve 858/2 |goto Ghostlands 66.6,58.9
step
_Discover_ Amani Pass |achieve 858/15 |goto Ghostlands 77.3,64.4
step
_Discover_ Farstrider Enclave |achieve 858/6 |goto Ghostlands 77.2,32.1
step
_Discover_ Dawnstart Spire |achieve 858/10 |goto Ghostlands 78.6,18.7
step
_Discover_ Suncrown Village |achieve 858/13 |goto Ghostlands 60.46,11.7
step
_Discover_ Elrendar Crossing |achieve 858/5 |goto Ghostlands 48.39,11.51
step
_Explore_ Ghostlands |achieve 858
step
_Discover_ The Scorched Grove |achieve 859/17 |goto Eversong Woods 36.2,86.0
step
_Discover_ Runestone Falithas |achieve 859/9 |goto Eversong Woods 44.1,85.8
step
_Discover_ Rusestone Shan'dor |achieve 859/10 |goto Eversong Woods 55.8,84.2
step
_Discover_ Zeb'Watha |achieve 859/11 |goto Eversong Woods 62.2,79.3
step
_Discover_ Lake Elrendar |achieve 859/7 |goto Eversong Woods 65.9,78.6
step
_Discover_ Tor'Watha |achieve 859/8 |goto Eversong Woods 72.0,79.3
step
_Discover_ Elreandar Falls |achieve 859/12 |goto Eversong Woods 64.6,73.1
step
_Discover_ Farstrider Rereat |achieve 859/23 |goto Eversong Woods 61.2,63.7
step
_Discover_ Stillwhisper Pond |achieve 859/1 |goto Eversong Woods 55.7,56.4
step
_Discover_ Thuron's Livery |achieve 859/20 |goto Eversong Woods 60.6,54.2
step
_Discover_ Duskwither Grounds |achieve 859/4 |goto Eversong Woods 69.27,46.54
step
_Discover_ Azurebreeze Coast |achieve 859/19 |goto Eversong Woods 71.6,45.3
step
_Discover_ Silvermoon City |achieve 859/6 |goto Eversong Woods 52.4,39.4
step
_Discover_ Sunstrider Isle |achieve 859/16 |goto Eversong Woods 31.3,16.0
step
_Discover_ Ruins of Silvermoon |achieve 859/21 |goto Eversong Woods 42.9,39.3
step
_Discover_ North Sanctum |achieve 859/22 |goto Eversong Woods 42.7,50.4
step
_Discover_ West Sanctum |achieve 859/14 |goto Eversong Woods 35.3,57.6
step
_Discover_ Tranquil Shore |achieve 859/15 |goto Eversong Woods 28.5,57.8
step
_Discover_ Sunsail Anchorage |achieve 859/2 |goto Eversong Woods 29.4,69.3
step
_Discover_ Golden Strand |achieve 859/25 |goto Eversong Woods 23.5,74.8
step
_Discover_ Goldenbough Pass |achieve 859/24 |goto Eversong Woods 33.4,77.6
step
_Discover_ Saltheril's Haven |achieve 859/13 |goto Eversong Woods 38.3,73.5
step
_Discover_ Fairbreeze Village |achieve 859/5 |goto Eversong Woods 43.9,73.7
step
_Discover_ East Sanctum |achieve 859/3 |goto Eversong Woods 52.3,73.1
step
_Discover_ The Living Wood |achieve 859/18 |goto Eversong Woods 54.2,71.9
step
_Explore_ Eversong Woods |achieve 859
step
_Explore_ Isle of Quel'Danas |achieve 868 |goto Isle of Quel'Danas 47.4,30.6
step
Congratulations, you have _earned_ the _Explore Eastern Kingdoms_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Kalimdor\\Explore Kalimdor",{
condition_end="achieved(43) and achieved(4868)",
achieveid={46,4868,4863,4865,728,736,842,860,750,857,4996,844,861,845,846,847,848,850,849,851,852,853,854,855,856},
description="Explore the regions of Kalimdor.",
},[[
step
_Discover_ Orgrimmar |achieve 728/6 |goto Orgrimmar 45.4,8.5
step
_Discover_ Skull Rock |achieve 728/1 |goto Durotar 54.0,9.0
step
_Discover_ Drygulch Ravine |achieve 728/5 |goto Durotar 52.4,24.2
step
_Discover_ Razor Hill |achieve 728/4 |goto Durotar 53.5,43.4
step
_Discover_ Tiragarde Keep |achieve 728/9 |goto Durotar 58.1,60.2
step
_Discover_ Echo Isles |achieve 728/7 |goto Durotar 66.6,82.9
step
_Discover_ Sen'jin Village |achieve 728/3 |goto Durotar 56.1,75.8
step
_Discover_ Northwatch Foothold |achieve 728/12 |goto Durotar 48.5,79.1
step
_Discover_ Valley of Trials |achieve 728/2 |goto Durotar 44.5,62.2
step
_Discover_ Razormane Grounds |achieve 728/10 |goto Durotar 44.6,50.6
step
_Discover_ Southfury Watershed |achieve 728/11 |goto Durotar 40.5,40.0
step
_Discover_ Thunder Ridge |achieve 728/8 |goto Durotar 40.3,24.7
step
_Explore_ Durotar |achieve 728
step
_Discover_ Boulder Lode Mine |achieve 750/1 |goto Northern Barrens 67.2,12.1
step
_Discover_ The Sludge Fen |achieve 750/9 |goto Northern Barrens 55.7,18.5
step
_Discover_ The Mor'shan Rampart |achieve 750/14 |goto Northern Barrens 39.6,14.1
step
_Discover_ The Dry Hills |achieve 750/5 |goto Northern Barrens 25.5,31.7
step
_Discover_ The Forgotten Pools |achieve 750/6 |goto Northern Barrens 36.8,45.9
step
_Discover_ Dreadmist Peak |achieve 750/10 |goto Northern Barrens 43.1,35.4
step
_Discover_ Grol'dom Farm |achieve 750/7 |goto Northern Barrens 54.9,41.1
step
_Discover_ Far Watch Post |achieve 750/4 |goto Northern Barrens 67.0,41.3
step
_Discover_ Thorn Hill |achieve 750/11 |goto Northern Barrens 58.8,50.0
step
_Discover_ The Crossroads |achieve 750/12 |goto Northern Barrens 50.2,57.3
step
_Discover_ Lushwater Oasis |achieve 750/13 |goto Northern Barrens 40.3,73.9
step
_Discover_ The Stagnant Oasis |achieve 750/3 |goto Northern Barrens 55.7,78.6
step
_Discover_ Ratchet |achieve 750/2 |goto Northern Barrens 67.93,72.28
step
_Discover_ The Merchant Coast |achieve 750/8 |goto Northern Barrens 70.3,84.1
step
_Explore_ Northern Barrens |achieve 750
step
_Discover_ Northwatch Hold |achieve 4996/10 |goto Southern Barrens 68.8,49.1
step
_Discover_ Forward Command |achieve 4996/9 |goto Southern Barrens 52.2,48.6
step
_Discover_ The Overgrowth |achieve 4996/11 |goto Southern Barrens 47.8,33.68
step
_Discover_ Hunter's Hill |achieve 4996/3 |goto Southern Barrens 39.3,22.3
step
_Discover_ Honor's Stand |achieve 4996/7 |goto Southern Barrens 36.5,11.1
step
_Discover_ Vendetta Point |achieve 4996/5 |goto Southern Barrens 42.4,44.0
step
_Discover_ Ruins of Taurajo |achieve 4996/4 |goto Southern Barrens 44.9,54.3
step
_Discover_ Battlescar |achieve 4996/2 |goto Southern Barrens 46.17,68.15
step
_Discover_ Frazzlecraz Motherlode |achieve 4996/8 |goto Southern Barrens 41.0,78.2
step
_Discover_ Razorfen Kraul |achieve 4996/6 |goto Southern Barrens 38.51,88.95
step
_Discover_ Bael Modan |achieve 4996/1 |goto Southern Barrens 50.7,84.0
step
_Explore_ Southern Barrens |achieve 4996
step
_Discover_ Shady Rest Inn |achieve 850/9 |goto Dustwallow Marsh 29.7,49.0
step
_Discover_ Brackenwall Village |achieve 850/3 |goto Dustwallow Marsh 36.3,30.4
step
_Discover_ Blackhoof Village |achieve 850/6 |goto Dustwallow Marsh 41.4,12.4
step
_Discover_ Alcaz Island |achieve 850/1 |goto Dustwallow Marsh 76.0,17.5
step
_Discover_ Dreadmurk Shore |achieve 850/4 |goto Dustwallow Marsh 61.5,30.2
step
_Discover_ Theramore Isle |achieve 850/2 |goto Dustwallow Marsh 67.1,49.8
step
_Discover_ Direhorn Post |achieve 850/7 |goto Dustwallow Marsh 46.6,46.1
step
_Discover_ Mudsprocket |achieve 850/8 |goto Dustwallow Marsh 41.4,75.1
step
_Discover_ Wyrmbog |achieve 850/5 |goto Dustwallow Marsh 43.4,75.5
step
_Explore_ Dustwallow Marsh |achieve 850
step
_Discover_ Razorfen Downs |achieve 846/10 |goto Thousand Needles 51.7,30.0
step
_Discover_ The Great Lift |achieve 846/1 |goto Thousand Needles 32.1,18.3
step
_Discover_ Darkcloud Pinnacle |achieve 846/5 |goto Thousand Needles 33.6,38.6
step
_Discover_ Westreach Summit |achieve 846/8 |goto Thousand Needles 13.4,10.3
step
_Discover_ Highperch |achieve 846/2 |goto Thousand Needles 13.1,37.5
step
_Discover_ Twilight Bulwark |achieve 846/7 |goto Thousand Needles 31.1,58.8
step
_Discover_ Freewind Post |achieve 846/4 |goto Thousand Needles 47.0,50.7
step
_Discover_ The Twilight Withering |achieve 846/12 |goto Thousand Needles 54.9,63.2
step
_Discover_ Sunken Dig Site |achieve 846/9 |goto Thousand Needles 67.1,85.7
step
_Discover_ The Shimmering Deep |achieve 846/3 |goto Thousand Needles 70.44,61.19
step
_Discover_ Splithoof Heights |achieve 846/11 |goto Thousand Needles 88.4,47.8
step
_Discover_ Southsea Holdfast |achieve 846/6 |goto Thousand Needles 92.4,78.8
step
_Explore_ Thousand Needles |achieve 846
step
_Discover_ Zul'Farrak |achieve 851/8 |goto Tanaris 37.3,14.3
step
_Discover_ Sandsorrow Watch |achieve 851/14 |goto Tanaris 40.9,27.3
step
_Discover_ Gadgetzan  |achieve 851/11 |goto Tanaris 50,28
step
_Discover_ Broken Pillar |achieve 851/9 |goto Tanaris 52.3,45.4
step
_Discover_ Abyssal Sands |achieve 851/15 |goto Tanaris 55.1,40.9
step
_Discover_ Caverns of Time |achieve 851/12 |goto Tanaris 64.2,50.0
step
_Discover_ Lost Rigger Cove |achieve 851/2 |goto Tanaris 71.6,49.4
step
_Discover_ Southbreak Shore |achieve 851/16 |goto Tanaris 63.0,59.2
step
_Discover_ The Gaping Chasm |achieve 851/5 |goto Tanaris 53.7,67.6
step
_Discover_ Land's End Beach |achieve 851/6 |goto Tanaris 53.6,91.7
step
_Discover_ Valley of the Watchers |achieve 851/1 |goto Tanaris 37.8,77.7
step
_Discover_ Southmoon Ruins |achieve 851/13 |goto Tanaris 40.8,70.6
step
_Discover_ Eastmoon Ruins |achieve 851/10 |goto Tanaris 47.2,64.9
step
_Discover_ Thistleshrub Valley |achieve 851/7 |goto Tanaris 30.4,66.4
step
_Discover_ Dunemaul Compound |achieve 851/4 |goto Tanaris 41.0,55.5
step
_Discover_ The Noxious Lair |achieve 851/3 |goto Tanaris 34.3,45.3
step
_Explore_ Tanaris |achieve 851
step
_Discover_ Ironstone Plateau |achieve 854/5 |goto Un'Goro Crater 77.1,39.2
step
_Discover_ The Roiling Gardens |achieve 854/11 |goto Un'Goro Crater 39.2,34.3
step
_Discover_ Fungal Rock |achieve 854/8 |goto Un'Goro Crater 65.7,14.3
step
_Discover_ Lakkari Tar Pits |achieve 854/7 |goto Un'Goro Crater 51.4,25.6
step
_Discover_ Mossy Pile |achieve 854/10 |goto Un'Goro Crater 42.2,41.7
step
_Discover_ The Screaming Reaches |achieve 854/12 |goto Un'Goro Crater 29.0,35.8
step
_Discover_ Golakka Hot Springs |achieve 854/3 |goto Un'Goro Crater 34.4,54.0
step
_Discover_ Terror Run |achieve 854/4 |goto Un'Goro Crater 33.2,70.7
step
_Discover_ Fire Plume Ridge |achieve 854/6 |goto Un'Goro Crater 54.5,48.0
step
_Discover_ Marshal's Stand |achieve 854/9 |goto Un'Goro Crater 54.0,60.9
step
_Discover_ The Marshlands |achieve 854/1 |goto Un'Goro Crater 67.9,54.8
step
_Discover_ The Slithering Scar |achieve 854/2 |goto Un'Goro Crater 51.1,77.5
step
_Explore_ Un'Goro Crater |achieve 854
step
_Discover_ Khartut's Tomb |achieve 4865/6 |goto Uldum 64.5,16.1
step
_Discover_ The Gate of Unending Cycles |achieve 4865/21 |goto Uldum 69.0,21.8
step
_Discover_ Obelisk of the Stars |achieve 4865/16 |goto Uldum 64.6,31.8
step
_Discover_ Nahorn |achieve 4865/13 |goto Uldum 67.1,40.9
step
_Discover_ Tombs of the Precursors |achieve 4865/4 |goto Uldum 72.16,44.35
step
_Discover_ The Cursed Landing |achieve 4865/8 |goto Uldum 84.7,52.8
step
_Discover_ The Trail of Devastation |achieve 4865/10 |goto Uldum 80.3,60.0
step
_Discover_ Lost City of the Tol'vir |achieve 4865/1 |goto Uldum 63.9,73.3
step
_Discover_ Neferset City |achieve 4865/14 |goto Uldum 51.2,82.0
step
_Discover_ Cradle of the Ancients |achieve 4865/11 |goto Uldum 43.7,70.4
step
_Discover_ Obelisk of the Sun |achieve 4865/9 |goto Uldum 45.6,56.2
step
_Discover_ Akhenet Fields |achieve 4865/2 |goto Uldum 54.3,52.2
step
_Discover_ Vir'naal Dam |achieve 4865/22 |goto Uldum 58.3,40.9
step
_Discover_ Tahret Grounds |achieve 4865/7 |goto Uldum 60.5,39.2
step
_Discover_ Ramkahen |achieve 4865/18 |goto Uldum 54.8,32.4
step
_Discover_ Mar'at |achieve 4865/12 |goto Uldum 49.0,38.4
step
_Discover_ Ruins of Ahmtul |achieve 4865/19 |goto Uldum 46.1,15.5
step
_Discover_ Obelisk of the Moon |achieve 4865/15 |goto Uldum 40.8,22.9
step
_Discover_ Temple of Uldum |achieve 4865/3 |goto Uldum 33.7,30.9
step
_Discover_ Orsis |achieve 4865/17 |goto Uldum 40.5,39.9
step
_Discover_ Ruins of Ammon |achieve 4865/20 |goto Uldum 32.1,65.5
step
_Discover_ Schnottz's Landing |achieve 4865/5 |goto Uldum 20.8,61.8
step
_Explore_ Uldum |achieve 4865
step
_Discover_ Hive'Regal |achieve 856/1 |goto Silithus 60.0,71.7
step
_Discover_ The Scarab Wall |achieve 856/2 |goto Silithus 32.0,78.9
step
_Discover_ Hive'Zora |achieve 856/6 |goto Silithus 31.4,53.8
step
_Discover_ The Crystal Vale |achieve 856/3 |goto Silithus 30.9,16.0
step
_Discover_ Hive'Ashi |achieve 856/4 |goto Silithus 49.4,22.4
step
_Discover_ Cenarion Hold |achieve 856/5 |goto Silithus 54.4,34.2
step
_Discover_ Southwind Village |achieve 856/7 |goto Silithus 65.3,47.4
step
_Discover_ Valor's Rest |achieve 856/8 |goto Silithus 81.3,17.8
step
_Explore_ Silithus |achieve 856
step
_Discover_ The Writhing Deep |achieve 849/1 |goto Feralas 75.9,62.4
step
_Discover_ Lower Wilds |achieve 849/7 |goto Feralas 83.0,40.9
step
_Discover_ Camp Mojache |achieve 849/8 |goto Feralas 76.5,44.4
step
_Discover_ Gordunni Outpost |achieve 849/10 |goto Feralas 75.6,29.8
step
_Discover_ Grimtotem Compound |achieve 849/6 |goto Feralas 68.7,40.3
step
_Discover_ Dire Maul |achieve 849/9 |goto Feralas 60.4,35.6
step
_Discover_ Darkmist Ruins |achieve 849/11 |goto Feralas 67.7,58.5
step
_Discover_ Ruins of Isildien |achieve 849/2 |goto Feralas 58.6,73.0
step
_Discover_ Feral Scar Vale |achieve 849/5 |goto Feralas 55.4,56.2
step
_Discover_ The Forgotten Coast |achieve 849/4 |goto Feralas 49.7,49.2
step
_Discover_ Feathermoon Stronghold |achieve 849/3 |goto Feralas 45.8,49.6
step
_Discover_ Ruins of Feathermoon |achieve 849/12 |goto Feralas 28.5,49.1
step
_Discover_ The Twin Colossals |achieve 849/13 |goto Feralas 46.3,17.9
step
_Explore_ Ferals |achieve 849
step
_Discover_ Gelkis Village |achieve 848/8 |goto Desolace 36.1,88.6
step
_Discover_ Mannoroc Coven |achieve 848/4 |goto Desolace 51.3,78.5
step
_Discover_ Thargad's Camp |achieve 848/16 |goto Desolace 36.5,69.9
step
_Discover_ Shadowprey Village |achieve 848/9 |goto Desolace 24.2,70.9
step
_Discover_ Valley of Spears |achieve 848/6 |goto Desolace 35.34,57.2
step
_Discover_ Slitherblade Shore |achieve 848/5 |goto Desolace 29.9,29.4
step
_Discover_ Ranazjar Isle |achieve 848/15 |goto Desolace 28.7,9.01
step
_Discover_ Tethris Aran |achieve 848/1 |goto Desolace 51.5,10.0
step
_Discover_ Thunder Axe Fortress |achieve 848/12 |goto Desolace 54.5,25.2
step
_Discover_ Nijel's Point |achieve 848/10 |goto Desolace 66.7,8.7
step
_Discover_ Sargeron |achieve 848/11 |goto Desolace 78.2,21.6
step
_Discover_ Magram Territory |achieve 848/14 |goto Desolace 74.7,45.6
step
_Discover_ Cenarion Wildlands |achieve 848/13 |goto Desolace 56.1,47.3
step
_Discover_ Kodo Graveyard |achieve 848/2 |goto Desolace 50.7,59.0
step
_Discover_ Shok'Thokar |achieve 848/7 |goto Desolace 70.6,74.8
step
_Discover_ Shadowbreak Ravine |achieve 848/3 |goto Desolace 80.3,79.3
step
_Explore_ Desolace |achieve 848
step
_Discover_ Bael'dun Digsite |achieve 736/7 |goto Mulgore 32.3,50.6
step
_Discover_ Palemane Rock |achieve 736/8 |goto Mulgore 35.5,61.3
step
_Discover_ Red Cloud Mesa |achieve 736/3 |goto Mulgore 53.8,85.8
step
_Discover_ Winterhoof Water Well |achieve 736/9 |goto Mulgore 53.7,66.7
step
_Discover_ Bloodhoof Village |achieve 736/2 |goto Mulgore 47.8,58.4
step
_Discover_ The Rolling Plains |achieve 736/6 |goto Mulgore 61.1,60.5
step
_Discover_ The Venture Co. Mine |achieve 736/1 |goto Mulgore 62.7,42.6
step
_Discover_ Ravaged Caravan |achieve 736/4 |goto Mulgore 54.2,47.9
step
_Discover_ Thunderhorn Water Well |achieve 736/10 |goto Mulgore 44.9,43.5
step
_Discover_ Red Rocks |achieve 736/12 |goto Mulgore 59.82,19.9
step
_Discover_ The Golden Plains |achieve 736/11 |goto Mulgore 54.2,20.9
step
_Discover_ Windfury Ridge |achieve 736/5 |goto Mulgore 51.14,09.25
step
_Discover_ Wildmane Water Well |achieve 736/13 |goto Mulgore 43.1,14.2
step
_Explore_ Mulgore |achieve 736
step
_Discover_ Malaka'jin |achieve 847/9 |goto Stonetalon Mountains 72.6,92.4
step
_Discover_ Unearthed Grounds |achieve 847/15 |goto Stonetalon Mountains 76.7,75.8
step
_Discover_ Greatwood Vale |achieve 847/6 |goto Stonetalon Mountains 69.6,85.1
step
_Discover_ Boulderslide Ravine |achieve 847/3 |goto Stonetalon Mountains 63.4,88.7
step
_Discover_ Webwinder Path |achieve 847/11 |goto Stonetalon Mountains 59.6,78.9
step
_Discover_ Webwinder Hollow |achieve 847/16 |goto Stonetalon Mountains 57.2,72.7
step
_Discover_ Ruins of Eldre'thar |achieve 847/14 |goto Stonetalon Mountains 48.8,76.3
step
_Discover_ Sun Rock Retreat |achieve 847/8 |goto Stonetalon Mountains 49.3,63.4
step
_Discover_ The Charred Vale |achieve 847/2 |goto Stonetalon Mountains 31.6,71.5
step
_Discover_ Battlescar Valley |achieve 847/5 |goto Stonetalon Mountains 37.0,54.3
step
_Discover_ Thal'darah Overlook |achieve 847/13 |goto Stonetalon Mountains 35.8,31.5
step
_Discover_ Stonetalon Peak |achieve 847/10 |goto Stonetalon Mountains 40.9,19.9
step
_Discover_ Cliffwalker Post |achieve 847/1 |goto Stonetalon Mountains 45.1,30.2
step
_Discover_ Mirkfallon Lake |achieve 847/4 |goto Stonetalon Mountains 51.6,47.3
step
_Discover_ Windshear Hold |achieve 847/12 |goto Stonetalon Mountains 59.1,57.7
step
_Discover_ Krom'gar Fortress |achieve 847/17 |goto Stonetalon Mountains 66.9,66.2
step
_Discover_ Windshear Crag |achieve 847/7 |goto Stonetalon Mountains 66.9,49.3
step
_Explore_ Stonetalon Mountains |achieve 847
step
_Discover_ Silverwind Refuge |achieve 845/16 |goto Ashenvale 50.15,67.08
step
_Discover_ Fallen Sky Lake |achieve 845/11 |goto Ashenvale 66,82
step
_Discover_ The Ruins of Stardust |achieve 845/5 |goto Ashenvale 32.6,65.6
step
_Discover_ Astranaar |achieve 845/2 |goto Ashenvale 35.9,50.2
step
_Discover_ The Shrine of Aessina |achieve 845/4 |goto Ashenvale 21.4,55.3
step
_Discover_ Lake Falathim |achieve 845/10 |goto Ashenvale 20.2,41.1
step
_Discover_ Maestra's Post |achieve 845/12 |goto Ashenvale 27.5,37.7
step
_Discover_ The Zoram Strand |achieve 845/9 |goto Ashenvale 14,23
step
_Discover_ Orendil's Retreat |achieve 845/15 |goto Ashenvale 26.0,19.7
step
_Discover_ Thistlefur Village |achieve 845/8 |goto Ashenvale 37.0,32.9
step
_Discover_ Thunder Peak |achieve 845/17 |goto Ashenvale 48.9,46.4
step
_Discover_ The Howling Vale |achieve 845/1 |goto Ashenvale 53.2,32.6
step
_Discover_ Raynewood Retreat |achieve 845/13 |goto Ashenvale 59.7,50.0
step
_Discover_ Splintertree Post |achieve 845/3 |goto Ashenvale 68.2,47.9
step
_Discover_ Satyrnaar |achieve 845/6 |goto Ashenvale 80.4,49.7
step
_Discover_ Felfire Hill |achieve 845/14 |goto Ashenvale 83.1,65.3
step
_Discover_ Warsong Lumber Camp |achieve 845/18 |goto Ashenvale 87.4,58.6
step
_Discover_ Bough Shadow |achieve 845/7 |goto Ashenvale 93.4,39.2
step
_Explore_ Ashenvale |achieve 845
step
_Discover_ Gates of Sothann |achieve 4863/6 |goto Mount Hyjal 72.5,76.7
step
_Discover_ Darkwhisper Gorge |achieve 4863/5 |goto Mount Hyjal 76.0,64.9
step
_Discover_ The Scorched Plain |achieve 4863/10 |goto Mount Hyjal 53.4,55.1
step
_Discover_ The Throne of Flame |achieve 4863/3 |goto Mount Hyjal 45.3,80.5
step
_Discover_ Sethria's Roost |achieve 4863/8 |goto Mount Hyjal 31.4,84.9
step
_Discover_ Rim of the World |achieve 4863/4 |goto Mount Hyjal 25.5,64.5
step
_Discover_ Ashen Lake |achieve 4863/2 |goto Mount Hyjal 31.8,53.5
step
_Discover_ The Flamewake |achieve 4863/11 |goto Mount Hyjal 32.9,51.2
step
_Discover_ Shrine of Goldrinn |achieve 4863/9 |goto Mount Hyjal 28.5,27.5
step
_Discover_ The Circle of Cinders |achieve 4863/1 |goto Mount Hyjal 45.1,26.0
step
_Discover_ Nordrassil |achieve 4863/7 |goto Mount Hyjal 63.4,21.0
step
_Explore_ Mount Hyjal |achieve 4863
step
_Discover_ Frostwhisper Gorge |achieve 857/6 |goto Winterspring 59.8,85.5
step
_Discover_ Owl Wing Thicket |achieve 857/8 |goto Winterspring 64.5,77.2
step
_Discover_ Ice Thistle Hills |achieve 857/3 |goto Winterspring 67.8,64.4
step
_Discover_ Winterfall Village |achieve 857/7 |goto Winterspring 68.1,48.5
step
_Discover_ Everlook |achieve 857/9 |goto Winterspring 59.9,48.9
step
_Discover_ The Hidden Grove |achieve 857/11 |goto Winterspring 62.7,24.7
step
_Discover_ Frostsaber Rock |achieve 857/12 |goto Winterspring 45.3,15.4
step
_Discover_ Starfall Village |achieve 857/1 |goto Winterspring 47.7,39.1
step
_Discover_ Lake Kel'Theril |achieve 857/2 |goto Winterspring 51.1,55.1
step
_Discover_ Mazthoril |achieve 857/10 |goto Winterspring 54.8,62.9
step
_Discover_ Timbermaw Post |achieve 857/5 |goto Winterspring 36.4,56.7
step
_Discover_ Frostfire Hot Springs |achieve 857/4 |goto Winterspring 31.9,49.3
step
_Explore_ Winterspring |achieve 857
step
_Discover_ Darnassian Base Camp |achieve 852/9 |goto Azshara 52.25,26.95
step
_Discover_ Bitter Reaches |achieve 852/7 |goto Azshara 73.69,20.98
step
_Discover_ Tower of Eldara |achieve 852/11 |goto Azshara 80.90,32.34
step
_Discover_ Ruins of Arkkoran |achieve 852/12 |goto Azshara 69.89,34.83
step
_Discover_ Bilgewater Harbor |achieve 852/8 |goto Azshara 58.29,51.00
step
_Discover_ Southridge Beach |achieve 852/16 |goto Azshara 68.41,75.62
step
_Discover_ Ravencrest Monument |achieve 852/4 |goto Azshara 64.65,79.31
step
_Discover_ Storm Cliffs |achieve 852/5 |goto Azshara 56.99,76.50
step
_Discover_ The Secret Lab |achieve 852/1 |goto Azshara 46.54,76.25
step
_Discover_ The Ruined Reaches |achieve 852/14 |goto Azshara 39.83,84.67
step
_Discover_ Lake Mennar |achieve 852/15 |goto Azshara 35.72,73.99
step
_Discover_ Orgrimmar Rear Gate |achieve 852/13 |goto Azshara 26.75,77.96
step
_Discover_ Gallywix Pleasure Palace |achieve 852/6 |goto Azshara 21.04,57.1
step
_Discover_ The Shattered Strand |achieve 852/10 |goto Azshara 39.21,55.46
step
_Discover_ Ruins of Eldarath |achieve 852/17 |goto Azshara 31.95,50.02
step
_Discover_ Bear's Head |achieve 852/2 |goto Azshara 25.47,38.00
step
_Discover_ Blackmaw Hold |achieve 852/3 |goto Azshara 33.06,32.76
step
_Explore_ Azshara |achieve 852
step
_Discover_ Stormrage Barrow Dens |achieve 855/4 |goto Moonglade 67.8,53.8
step
_Discover_ Lake Elune'ara |achieve 855/1 |goto Moonglade 52.5,55.4
step
_Discover_ Nighthaven |achieve 855/3 |goto Moonglade 48.2,37.9
step
_Discover_ Shrine of Remulos |achieve 855/2 |goto Moonglade 36.3,38.8
step
_Explore_ Moonglade |achieve 855
step
_Discover_ Felpaw Village |achieve 853/11 |goto Felwood 61.2,11.5
step
_Discover_ Talonbranch Glade |achieve 853/12 |goto Felwood 62.6,26.7
step
_Discover_ Irontree Woods |achieve 853/7 |goto Felwood 50.3,26.0
step
_Discover_ Jadefire Run |achieve 853/2 |goto Felwood 43.6,18.6
step
_Discover_ Shatter Scar Vale |achieve 853/9 |goto Felwood 43.1,41.9
step
_Discover_ Bloodvenom Falls |achieve 853/1 |goto Felwood 41,47
step
_Discover_ Emerald Sanctuary |achieve 853/4 |goto Felwood 52.2,78.2
step
_Discover_ Morlos'Aran |achieve 853/6 |goto Felwood 56.6,86.8
step
_Discover_ Deadwood Village |achieve 853/5 |goto Felwood 48.0,89.2
step
_Discover_ Jadefire Glen |achieve 853/10 |goto Felwood 41.8,85.4
step
_Discover_ Ruins of Constellas |achieve 853/8 |goto Felwood 38.0,72.3
step
_Discover_ Jaedenar |achieve 853/3 |goto Felwood 37.0,59.1
step
_Explore_ Felwood |achieve 853
step
_Discover_ The Master's Glaive |achieve 844/5 |goto Darkshore 40.3,86.2
step
_Discover_ Nazj'vel |achieve 844/2 |goto Darkshore 32.0,84.0
step
_Discover_ Wildbend River |achieve 844/11 |goto Darkshore 42.5,69.5
step
_Discover_ Ameth'Aran |achieve 844/4 |goto Darkshore 43.7,60.5
step
_Discover_ Withering Thicket |achieve 844/10 |goto Darkshore 43.96,39.82
step
_Discover_ The Eye of the Vortex |achieve 844/6 |goto Darkshore 42.9,54.9
step
_Discover_ Ruins of Auberdine |achieve 844/3 |goto Darkshore 37.9,44.1
step
_Discover_ Lor'danel |achieve 844/7 |goto Darkshore 51.2,19.2
step
_Discover_ Ruins of Mathystra |achieve 844/1 |goto Darkshore 63.9,21.9
step
_Discover_ Shatterspear Vale |achieve 844/8 |goto Darkshore 72.5,17.3
step
_Discover_ Shatterspear War Camp |achieve 844/9 |goto Darkshore 65.9,7.0
step
_Explore_ Darkshore |achieve 844
step
_Discover_ Lake Al'Ameth |achieve 842/5 |goto Teldrassil 55.0,61.0
step
_Discover_ Dolanaar |achieve 842/12 |goto Teldrassil 55.6,51.2
step
_Discover_ Starbreeze Village |achieve 842/1 |goto Teldrassil 64.7,49.1
step
_Discover_ Rut'theran Village |achieve 842/9 |goto Teldrassil 55.0,91.0
step
_Discover_ Shadowglen |achieve 842/6 |goto Teldrassil 58.4,33.0
step
_Discover_ The Cleft |achieve 842/11 |goto Teldrassil 50.7,38.0
step
_Discover_ Ban'ethil Hollow |achieve 842/7 |goto Teldrassil 46.16,50.68
step
_Discover_ Wellspring Lake |achieve 842/3 |goto Teldrassil 44.4,34.4
step
_Discover_ The Oracle Glade |achieve 842/2 |goto Teldrassil 40.0,26.7
step
_Discover_ Darnassus |achieve 842/4 |goto Teldrassil 30.4,50.1
step
_Discover_ Pools of Arlithrien |achieve 842/10 |goto Teldrassil 41.9,56.9
step
_Discover_ Gnarlpine Hold |achieve 842/8 |goto Teldrassil 44.8,67.4
step
_Explore_ Teldrassil |achieve 842
step
_Discover_ Valaar's Berth |achieve 860/10 |goto Azuremyst Isle 23.7,54.0
step
_Discover_ Bristlelimb Village |achieve 860/14 |goto Azuremyst Isle 26.5,65.1
step
_Discover_ Silvermyst Isle |achieve 860/16 |goto Azuremyst Isle 12.7,78.6
step
_Discover_ Wrathscale Point |achieve 860/13 |goto Azuremyst Isle 32.0,79.3
step
_Discover_ Pod Cluster |achieve 860/15 |goto Azuremyst Isle 37.0,58.4
step
_Discover_ Azure Watch |achieve 860/11 |goto Azuremyst Isle 49.3,50.7
step
_Discover_ Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle 46.6,72.4
step
_Discover_ Pod Wreckage |achieve 860/4 |goto Azuremyst Isle 52.7,61.3
step
_Discover_ Geezle's Camp |achieve 860/12 |goto Azuremyst Isle 58.3,67.0
step
_Discover_ Ammen Ford |achieve 860/2 |goto Azuremyst Isle 61.3,53.6
step
_Discover_ Ammen Vale |achieve 860/1 |goto Azuremyst Isle 77.6,43.7
step
_Discover_ Moongraze Woods |achieve 860/3 |goto Azuremyst Isle 52.7,41.8
step
_Discover_ The Exodar |achieve 860/6 |goto Azuremyst Isle 29.2,35.1
step
_Discover_ Silting Shore |achieve 860/8 |goto Azuremyst Isle 35.3,12.4
step
_Discover_ Stillpine Hold |achieve 860/5 |goto Azuremyst Isle 46.0,20.0
step
_Discover_ Emberglade |achieve 860/7 |goto Azuremyst Isle 58.8,17.6
step
_Discover_ Fairbridge Strand |achieve 860/17 |goto Azuremyst Isle 47.7,6.6
step
_Explore_ Azuremyst Isle |achieve 860
step
_Discover_ Kessel's Crossing |achieve 861/11 |goto Bloodmyst Isle 61.9,90.0
step
_Discover_ The Lost Fold |achieve 861/14 |goto Bloodmyst Isle 57.4,81.0
step
_Discover_ Bristlelimb Enclave |achieve 861/10 |goto Bloodmyst Isle 67.0,78.2
step
_Discover_ Wrathscale Lair |achieve 861/3 |goto Bloodmyst Isle 69.0,66.6
step
_Discover_ Bloodcurse Isle |achieve 861/7 |goto Bloodmyst Isle 85.4,52.8
step
_Discover_ Wyrmscar Island |achieve 861/13 |goto Bloodmyst Isle 72.0,29.6
step
_Discover_ Talon Stand |achieve 861/18 |goto Bloodmyst Isle 73.4,20.9
step
_Discover_ The Bloodcursed Reef |achieve 861/27 |goto Bloodmyst Isle 81.0,20.1
step
_Discover_ Veridian Point |achieve 861/22 |goto Bloodmyst Isle 74.4,7.5
step
_Discover_ The Crimson Reach |achieve 861/19 |goto Bloodmyst Isle 62.6,25.4
step
_Discover_ The Warp Piston |achieve 861/25 |goto Bloodmyst Isle 54.2,17.1
step
_Discover_ Ragefeather Ridge |achieve 861/28 |goto Bloodmyst Isle 56.1,34.9
step
_Discover_ Ruins of Loreth'Aran |achieve 861/15 |goto Bloodmyst Isle 61.6,45.2
step
_Discover_ Blood Watch |achieve 861/9 |goto Bloodmyst Isle 54.6,55.4
step
_Discover_ Middenvale |achieve 861/26 |goto Bloodmyst Isle 51.7,76.6
step
_Discover_ Mystwood |achieve 861/12 |goto Bloodmyst Isle 43.9,84.7
step
_Discover_ Blacksilt Shore |achieve 861/23 |goto Bloodmyst Isle 33.2,90.3
step
_Discover_ Nazzivian |achieve 861/17 |goto Bloodmyst Isle 37.9,75.7
step
_Discover_ The Cryo-Core |achieve 861/4 |goto Bloodmyst Isle 38.5,59.5
step
_Discover_ Bladewood |achieve 861/6 |goto Bloodmyst Isle 45.9,45.1
step
_Discover_ Axxarien |achieve 861/5 |goto Bloodmyst Isle 40.8,33.0
step
_Discover_ The Bloodwash |achieve 861/16 |goto Bloodmyst Isle 38.7,21.9
step
_Discover_ The Hidden Reef |achieve 861/1 |goto Bloodmyst Isle 32.7,19.8
step
_Discover_ The Foul Pool |achieve 861/21 |goto Bloodmyst Isle 29.2,36.8
step
_Discover_ Vindicator's Rest |achieve 861/2 |goto Bloodmyst Isle 30.2,46.2
step
_Discover_ Tel'athion's Camp |achieve 861/24 |goto Bloodmyst Isle 24.4,41.2
step
_Discover_ Amberweb Pass |achieve 861/8 |goto Bloodmyst Isle 18.8,30.9
step
_Discover_ The Vector Coil |achieve 861/20 |goto Bloodmyst Isle 18.0,53.4
step
_Explore_ Bloodmyst Isle |achieve 861
step
Congratulations, you have _earned_ the _Explore Kalimdor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Friend or Fowl?",{
condition_end="achieved(1254)",
description="Slay 15 turkeys in 3 minutes.",
},[[
step
kill Fjord Turkey##24746+
_Slay_ #15# Turkeys in 3 Minutes |achieve 1254 |goto Howling Fjord 66.3,71.1
|tip Kill them as fast as you can, then hurry to kill another one each time
step
Congratulations, you have _earned_ the _Friend or Fowl?_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Going Down?",{
condition_end="achieved(964)",
description="Fall 65 yards without dying.",
},[[
step
You can do this in several different waysdepending on yoiur class, but we listed the _easiest way regardless of level and class_
_Ride up_ to the Elevator to the Terrace of Light
_Jump off_ either the right or the left side of the Terrace to the flat ground
_MAKE SURE TO JUMP!_
Earn the Going Down? Achievement! |achieve 964 |goto Shattrath City 63.8,41.6
step
Congratulations, you have _earned_ the _Going Down?_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Higher Learning",{
condition_end="achieved(1956)",
description="Read the volumes of 'The Schools of Arcane Magic' found in Dalaran.",
},[[
step
_Warning:_ These books have respawn timers of about 3-4 hours (it seems to be random between those times) so this achievement may take you a while to get |tip The book you want won't always be there. Fake trash books spawn to make the achievement even harder to get, but keep at it. Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
This is an achievement that _you may want to dedicate a lot of time to_ if you want it
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide
_Good luck!_
confirm
step "RestartHigherLearning"
click The Schools of Arcane Magic - Illusion##8128
|tip It looks like a brown book laying on a wooden crate.
_Read_ The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran 64.4,52.4
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Introduction##8133
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
_Read_ The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto Dalaran 56.6,45.6
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Abjuration##8128
|tip It looks like a brown book laying on ground next to a small table inside this building.
_Read_ The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto Dalaran 52.3,54.8
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Enchantment##8051
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
_Read_ The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto Dalaran 43.6,46.7
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Transmutation##8051
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.
_Read_ The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto Dalaran 46.8,40.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Necromancy##8133
|tip It looks like a blue book laying on a bookshelf upstairs in this building.
_Read_ The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto Dalaran 46.8,39.1
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Conjuration##8345
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
_Read_ The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto Dalaran 30.8,46.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Divination##8051
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
_Read_ The Schools of Arcane Magic - Divination |achieve 1956/4 |goto Dalaran 26.5,52.1
_Click here_ if this book isn't available |confirm
step
Looks like _you still need more_ education! _Click here_ to start the guide over. |confirm |next "RestartHigherLearning" |only if not achieved(1956)
Congratulations, you have _earned_ the _Higher Learning_ achievement! |only if achieved(1956)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\It's Happy Hour Somewhere",{
condition_end="achieved(1833)",
description="Drink 25 different types of beverages.",
},[[
stickystart "tracker"
step
talk Innkeeper Gryshka##6929
buy 1 Refreshing Spring Water##159 |goto Orgrimmar 53.6,78.8
buy 1 Ice Cold Milk##1179 |goto Orgrimmar 53.6,78.8
buy 1 Melon Juice##1205 |goto Orgrimmar 53.6,78.8
buy 1 Sweet Nectar##1708 |goto Orgrimmar 53.6,78.8
buy 1 Moonberry Juice##1645 |goto Orgrimmar 53.6,78.8
buy 1 Morning Glory Dew##8766 |goto Orgrimmar 53.6,78.8
buy 1 Filtered Draenic Water##28399 |goto Orgrimmar 53.6,78.8
buy 1 Fresh Water##58274 |goto Orgrimmar 53.6,78.8
buy 1 Pugnent Seal Whey##33444 |goto Orgrimmar 53.6,78.8
buy 1 Honeymint Tea##33445 |goto Orgrimmar 53.6,78.8
buy 1 Sparkling Oasis Water##58256 |goto Orgrimmar 53.6,78.8
buy 1 Highland Spring Water##58257 |goto Orgrimmar 53.6,78.8
only if not achieved(1833)
step
Drink the Refreshing Spring Water |use Refreshing Spring Water##159
Drink the Ice Cold Milk |use Ice Cold Milk##1179
Drink the Melon Juice |use Melon Juice##1205
Drink the Sweet Nectar |use Sweet Nectar##1708
Drink the Moonberry Juice |use Moonberry Juice##1645
Drink the Morning Glory Dew |use Morning Glory Dew##8766
Drink the Filtered Draenic Water |use Filtered Draenic Water##28399
Drink the Pugnent Seal Whey |use Pugnent Seal Whey##33444
Drink the Fresh Water |use Fresh Water##58274
Drink the Honeymint Tea |use Honeymint Tea##33445
Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256
Drink the Highland Spring Water |use Highland Spring Water##58257
_Click here_ to continue |confirm
only if not achieved(1833)
step
talk Daisy##40832
buy 1 Bottle of Pinot Noir##2723 |goto Thousand Needles 76.5,74.8
buy 1 Glass of Eversong Wine##44570 |goto Thousand Needles 76.5,74.8
buy 1 Honey Mead##40035 |goto Thousand Needles 76.5,74.8
buy 1 Flask of Port##2593 |goto Thousand Needles 76.5,74.8
buy 1 Bottle of Silvermoon Port##44571 |goto Thousand Needles 76.5,74.8
buy 1 Skin of Dwarven Stout##2596 |goto Thousand Needles 76.5,74.8
buy 1 Flask of Bitter Cactus Cider##44575 |goto Thousand Needles 76.5,74.8
buy 1 Snowplum Brandy##40036 |goto Thousand Needles 76.5,74.8
buy 1 Flagon of Mead##2594 |goto Thousand Needles 76.5,74.8
buy 1 Cup of Frog Venom Brew##44573 |goto Thousand Needles 76.5,74.8
buy 1 Caraway Burnwine##40042 |goto Thousand Needles 76.5,74.8
buy 1 Jug of Bourbon##2595 |goto Thousand Needles 76.5,74.8
buy 1 Skin of Mulgore Firewater##44574 |goto Thousand Needles 76.5,74.8
only if not achieved(1833)
step
_Drink_ the Bottle of Pinot Noir |use Bottle of Pinot Noir##2723
_Drink_ the Glass of Eversong Wine |use Glass of Eversong Wine##44570
_Drink_ the Honey Mead |use Honey Mead##40035
_Drink_ the Flask of Port |use Flask of Port##2593
_Drink_ the Bottle of Silvermooon Port |use Bottle of Silvermoon Port##44571
_Drink_ the Skin of Dwarven Stout |use Skin of Dwarven Stout##2596
_Drink_ the Flask of Bitter Cactus |use Flask of Bitter Cactus Cider##44575
_Drink_ the Snowplum Brandy |use Snowplum Brandy##40036
_Drink_ the Flagon of Mead |use Flagon of Mead##2594
_Drink_ the Cup of Frog Venom Brew |use Cup of Frog Venom Brew##44573
_Drink_ the Caraway Burnwine |use Caraway Burnwine##40042
_Drink_ the Jug of Bourbon |use Jug of Bourbon##2595
_Drink_ the Skin of Mulgore Firewater |use Skin of Mulgore Firewater##44574
_Click here_ to continue |confirm
step "tracker"
_Drink_ #25# different types of beverages |achieve 1833 |only if not achieved(1833)
Congratulations, you have _earned_ the _It's Happy Hour Somewhere_ Achievement! |only if achieved(1833)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Shave and a Haircut",{
condition_end="achieved(545)",
description="Visit a Barber Shop and get your hair cut.",
},[[
step
_Click_ on the Barbershop Chair
_Change_ your hair style or hair color then click "Okay" |achieve 545 |goto Orgrimmar,40.0,60.7
|tip This will cost money to do so be sure you have the extra gold to purchase a hair style.
step
Congratulations, you have _earned_ the _Shave and a Haircut_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Tastes Like Chicken",{
condition_end="achieved(1832)",
description="Sample 50 different kinds of Azeroth's delectable dishes.",
},[[
stickystart "tracker"
step
talk Innkeeper Gryshka##6929
buy 1 Tough Jerky##117 |goto Orgrimmar 53.6,78.8
buy 1 Haunch of Meat##2287 |goto Orgrimmar 53.6,78.8
buy 1 Mutton Chop##3770 |goto Orgrimmar 53.6,78.8
buy 1 Wild Hog Shank##3771 |goto Orgrimmar 53.6,78.8
buy 1 Cured Ham Steak##4599 |goto Orgrimmar 53.6,78.8
buy 1 Roasted Quail##8952 |goto Orgrimmar 53.6,78.8
buy 1 Smoked Talbuk Venison##27854 |goto Orgrimmar 53.6,78.8
buy 1 Salted Venison##33454 |goto Orgrimmar 53.6,78.8
buy 1 Mead Basted Caribou##35953 |goto Orgrimmar 53.6,78.8
buy 1 Roasted Beef##58268 |goto Orgrimmar 53.6,78.8
only if not achieved(1832)
step
talk Innkeeper Gryshka##6929
buy 1 Massive Turkey Leg##58269 |goto Orgrimmar 53.6,78.8
buy 1 Tough Hunk of Bread##4540 |goto Orgrimmar 53.6,78.8
buy 1 Freshly Baked Bread##4541 |goto Orgrimmar 53.6,78.8
buy 1 Moist Cornbread##4542 |goto Orgrimmar 53.6,78.8
buy 1 Mulgore Spice Bread##4544 |goto Orgrimmar 53.6,78.8
buy 1 Soft Banana Bread##4601 |goto Orgrimmar 53.6,78.8
buy 1 Homemade Cherry Pie##8950 |goto Orgrimmar 53.6,78.8
buy 1 Mag'har Grainbread##27855 |goto Orgrimmar 53.6,78.8
buy 1 Crusty Flatbread##33449 |goto Orgrimmar 53.6,78.8
buy 1 Sweet Potato Bread##35950 |goto Orgrimmar 53.6,78.8
buy 1 Pine Nut Bread##58260 |goto Orgrimmar 53.6,78.8
buy 1 Buttery Wheat Roll##58261 |goto Orgrimmar 53.6,78.8
only if not achieved(1832)
step
_Eat_ the Tough Jerky |use Tough Jerky##117
_Eat_ the Tough Hunk |use Tough Hunk of Bread##4540
_Eat_ the Haunch of Meat |use Haunch of Meat##2287
_Eat_ the Freshly Baked Bread |use Freshly Baked Bread##4541
_Eat_ the Mutton Chop |use Mutton Chop##3770
_Eat_ the Moist Cornbread |use Moist Cornbread##4542
_Eat_ the Wild Hog Shank |use Wild Hog Shank##3771
_Eat_ the Mulgore Spice Bread |use Mulgore Spice Bread##4544
_Eat_ the Cured Ham Steak |use Cured Ham Steak##4599
_Eat_ the Soft Banana Bread |use Soft Banana Bread##4601
_Click here_ to continue |confirm
step
_Eat_ the Roasted Quail |use Roasted Quail##8952
_Eat_ the Homemade Cherry Pie |use Homemade Cherry Pie##8950
_Eat_ the Smoked Talbuk Venison |use Smoked Talbuk Venison##27854
_Eat_ the Mag'har Grainbread |use Mag'har Grainbread##27855
_Eat_ the Salted Venison |use Salted Venison##33454
_Eat_ the Crusty Flatbread |use Crusty Flatbread##33449
_Eat_ the Mead Basted Cariboy |use Mead Basted Caribou##35953
_Eat_ the Sweet Potato Bread |use Sweet Potato Bread##35950
_Eat_ the Roasted Beef |use Roasted Beef##58268
_Eat_ the Pine Nut Bread |use Pine Nut Bread##58260
_Eat_ the Massive Turkey |use Massive Turkey Leg##58269
_Eat_ the Buttery Wheat Roll |use Buttery Wheat Roll##58261
_Click here_ to continue |confirm
step
talk Batamsi##45008
buy 1 Slitherskin Mackerel##787 |goto Orgrimmar 32.1,69.5
buy 1 Longjaw Mud Snapper##4592 |goto Orgrimmar 32.1,69.5
buy 1 Bristle Whisker Catfish##4593 |goto Orgrimmar 32.1,69.5
buy 1 Rockscale Cod##4594 |goto Orgrimmar 32.1,69.5
buy 1 Striped Yellowtail##21552 |goto Orgrimmar 32.1,69.5
buy 1 Spinefin Halibut##8957 |goto Orgrimmar 32.1,69.5
buy 1 Sunspring Carp##27858 |goto Orgrimmar 32.1,69.5
buy 1 Fillet of Icefin##33451 |goto Orgrimmar 32.1,69.5
buy 1 Poached Emperor Salmon##35951 |goto Orgrimmar 32.1,69.5
buy 1 Sliced Raw Billfish##58262 |goto Orgrimmar 32.1,69.5
buy 1 Grilled Shark##58263 |goto Orgrimmar 32.1,69.5
only if not achieved(1832)
step
talk Batamsi##45008
buy 1 Shiny Red Apple##4536 |goto Orgrimmar 32.6,68.6
buy 1 Tel'Abim Banana##4537 |goto Orgrimmar 32.6,68.6
buy 1 Snapvine Watermelon##4538 |goto Orgrimmar 32.6,68.6
buy 1 Goldenbark Apple##4539 |goto Orgrimmar 32.6,68.6
buy 1 Moon Harvest Pumpkin##4602 |goto Orgrimmar 32.6,68.6
buy 1 Deep Fried Plantains##8953 |goto Orgrimmar 32.6,68.6
buy 1 Skethyl Berries##27856 |goto Orgrimmar 32.6,68.6
buy 1 Tundra Berries##35949 |goto Orgrimmar 32.6,68.6
buy 1 Savory Snowplum##35948 |goto Orgrimmar 32.6,68.6
buy 1 Sour Green Apple##58264 |goto Orgrimmar 32.6,68.6
buy 1 Highland Pomegranate##58265 |goto Orgrimmar 32.6,68.6
only if not achieved(1832)
step
_Eat_ the Slitherskin Mackerel |use Slitherskin Mackerel##787
_Eat_ the Shiny Red Apple |use Shiny Red Apple##4536
_Eat_ the Longjaw Mud Snapper |use Longjaw Mud Snapper##4592
_Eat_ the Tel'Abim Banana |use Tel'Abim Banana##4537
_Eat_ the Bristle Whisker Catfish |use Bristle Whisker Catfish##4593
_Eat_ the Snapvine Watermelon |use Snapvine Watermelon##4538
_Eat_ the Rockscale Cod |use Rockscale Cod##4594
_Eat_ the Goldenbark Apple |use Goldenbark Apple##4539
_Eat_ the Striped Yellowtail |use Striped Yellowtail##21552
_Eat_ the Moon Harvest Pumpkin |use Moon Harvest Pumpkin##4602
_Click here_ to continue |confirm
step
_Eat_ the Spinefin Hailibut |use Spinefin Halibut##8957
_Eat_ the Deep Fried Plantains |use Deep Fried Plantains##8953
_Eat_ the Sunspring Carp |use Sunspring Carp##27858
_Eat_ the Skethyl Berries |use Skethyl Berries##27856
_Eat_ the Fillet of Icefin |use Fillet of Icefin##33451
_Eat_ the Tundra Berries |use Tundra Berries##35949
_Eat_ the Poached Emperor |use Poached Emperor Salmon##35951
_Eat_ the Savory Snowplum |use Savory Snowplum##35948
_Eat_ the Sliced Raw Billfish |use Sliced Raw Billfish##58262
_Eat_ the Sour Green Apple |use Sour Green Apple##58264
_Eat_ the Grilled Shark |use Grilled Shark##58263
_Eat_ the Highland Pomegranate |use Highland Pomegranate##58265
_Click here_ to continue |confirm
step
talk Kor'jus##3329
buy 1 Forest Mushroom Cap##4604 |goto Orgrimmar 49.7,61.8
buy 1 Red-Speckeled Mushroom##4605 |goto Orgrimmar 49.7,61.8
buy 1 Spongy Morel##4606 |goto Orgrimmar 49.7,61.8
buy 1 Delicious Cave Mold##4607 |goto Orgrimmar 49.7,61.8
buy 1 Raw Black Truffle##4608 |goto Orgrimmar 49.7,61.8
buy 1 Dried King Bolete##8948 |goto Orgrimmar 49.7,61.8
only if not achieved(1832)
step
_Eat_ the Forest Mushroom |use Forest Mushroom Cap##4604
_Eat_ the Red-Speckeled Mushroom |use Red-Speckeled Mushroom##4605
_Eat_ the Spongy Morel |use Spongy Morel##4606
_Eat_ the Delicious Cave Mold |use Delicious Cave Mold##4607
_Eat_ the Raw Black Truffle |use Raw Black Truffle##4608
_Eat_ the Dried King Bolete |use Dried King Bolete##8948
_Click here_ to continue |confirm
step "tracker"
_Sample_ #50# different kinds of Azeroth's delectable dishes |achieve 1832 |only if not achieved(1832)
Congratulations, you have _earned_ the _Tastes Like Chicken_ Achievement! |only if achieved(1832)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\To All The Squirrels (Loved, Shared, Cared)/Pest Control",{
condition_end="achieved(5548)",
achieveid={1206,2557,2556},
description="Show the critters of Azeroth how much you /love them. Slay the pests.",
},[[
step
Use the _Love emote_ on a Rockchewer Whelk |clicknpc Rockchewer Whelk##48848 |script DoEmote("LOVE")
_Love_ a Rockchewer Whelk |achieve 5548/9 |goto Shimmering Expanse 41.3,53.9
step
Use the _Love emote_ on a Sea Cucumber |clicknpc Sea Cucumber##48802 |script DoEmote("LOVE")
_Love_ a Sea Cucumber |achieve 5548/11 |goto Shimmering Expanse 41.3,53.9
step
Use the _Love emote_ on a Toad |clicknpc Toad##1420 |script DoEmote("LOVE")
_Love_ a Toad |achieve 1206/20 |goto Orgrimmar 56.8,53.2
step
kill Water Snake##4953 |achieve 2556/2 |future |goto Orgrimmar 56.8,53.2
step
Use the _Love emote_ on an Alpine Chipmunk |clicknpc Alpine Chipmunk##49779 |script DoEmote("LOVE")
_Love_ an Alpine Chipmunk |achieve 5548/1 |goto Winterspring 51.5,47.9
step
kill Crystal Spider##32261 |achieve 2556/11 |goto Winterspring 48.8,54.8
step
Use the _Love emote_ on a Grotto Vole |clicknpc Grotto Vole##50419  |script DoEmote("LOVE")
_Love_ a Grotto Vole |achieve 5548/3 |goto Mount Hyjal 54.5,17.1
step
_Use_ the Love emote on a Rock Viper |clicknpc Rock Viper##50481 |script DoEmote("LOVE")
_Love_ a Rock Viper |achieve 5548/8 |goto Mount Hyjal 38.4,56.6
step
Use the _Love emote_ on a Hare |clicknpc Hare##5951 |script DoEmote("LOVE")
_Love_ a Hare |achieve 1206/10 |goto Durotar 45.6,16.0
step
kill Adder##3300 |achieve 2556/12 |goto Durotar 45.6,16.0
step
Use the _Love emote_ on a Swine |clicknpc Swine##10685 |script DoEmote("LOVE")
_Love_ a Swine |achieve 1206/19 |goto Durotar 48.5,15.9
step
Use the _Love emote_ on a Prairie Dog |clicknpc Prairie Dog##2620 |script DoEmote("LOVE")
_Love_ a Prairie Dog |achieve 1206/21 |future |goto Northern Barrens 66.0,42.1
step
Use the _Love emote_ on a Gazelle |clicknpc Gazelle##4166 |script DoEmote("LOVE")
_Love_ a Gazelle |achieve 1206/9 |goto Northern Barrens 51.8,56.4
step
Use the _Love emote_ on a Small Frog |clicknpc Small Frog##13321 |script DoEmote("LOVE")
_Love_ a Small Frog |achieve 1206/8 |future |goto Northern Barrens 37.9,46.1
step
kill Spider##14881 |achieve 2556/3 |goto Dustwallow Marsh 35.0,24.0
step
kill Mouse##6271 |achieve 2556/7 |goto Dustwallow Marsh 46.2,56.9
step
kill Snake##2914 |achieve 2556/10 |future |goto Dustwallow Marsh 50.0,57.6
step
Use the _Love emote_ on a Rattlesnake |clicknpc Rattlesnake##48686 |script DoEmote("LOVE")
_Love_ a Rattlesnake |achieve 5548/7 |goto Tanaris 46.9,26.9
step
Use the _Love emote_ on a Mac Frog |clicknpc Mac Frog##50491 |script DoEmote("LOVE")
_Love_ a Mac Frog |achieve 5548/5 |goto Uldum 56.6,35.1
step
Use the _Love emote_ on an Oasis Moth |clicknpc Oasis Moth##50496 |script DoEmote("LOVE")
_Love_ an Oasis Moth |achieve 5548/6 |goto Uldum 55.0,36.1
step
kill Rat##4075 |achieve 2556/18 |goto The Cape of Stranglethorn 40.0,67.7
step
kill Roach##4076 |achieve 2556/9 |goto The Cape of Stranglethorn 42.2,69.5
step
_Use_ the Love emote on a Wharf Rat |clicknpc Wharf Rat##47667 |script DoEmote("LOVE")
_Love_ a Wharf Rat |achieve 5548/12 |goto The Cape of Stranglethorn 42.7,72.8
step
Use the _Love emote_ on a Parrot |clicknpc Parrot##9600 |script DoEmote("LOVE")
_Love_ a Parrot |achieve 1206/11 |goto Northern Stranglethorn 50.5,66.4
step
kill Scorpion##61326 |achieve 2556/14 |future |goto Blasted Lands 42.5,21.9
step
kill Fire Beetle##9699 |achieve 2556/16 |future |goto Blasted Lands 44.4,32.9
step
_Use_ the Love emote on a Huge Toad |clicknpc Huge Toad##61368 |script DoEmote("LOVE")
_Love_ a Huge Toad |achieve 2557/7 |goto Swamp of Sorrows 39.7,51.0
step
_Use_ the Love emote on a Skunk |clicknpc Skunk##17467 |script DoEmote("LOVE")
_Love_ a Skunk |achieve 1206/16 |goto Duskwood 12.3,65.8
step
_Use_ the Love emote on a Rabbit |clicknpc Rabbit##61080 |script DoEmote("LOVE")
_Love_ a Rabbit |achieve 1206/12 |goto Elwynn Forest 36.3,85.8
step
_Use_ the Love emote on a Deer |clicknpc Deer##883 |script DoEmote("LOVE")
_Love_ a Deer |achieve 1206/5 |goto Elwynn Forest 24.9,83.0
step
_Use_ the Love emote on a Fawn##890 |clicknpc Fawn##890 |script DoEmote("LOVE")
_Love_ a Fawn |achieve 1206/7 |goto Elwynn Forest 24.9,83.0
step
_Use_ the Love emote on a Cow |clicknpc Cow##2442 |script DoEmote("LOVE")
_Love_ a Cow |achieve 1206/4 |goto Elwynn Forest 32.3,77.2
step
_Use_ the Love emote on a Chicken |clicknpc Chicken##620 |script DoEmote("LOVE")
_Love_ a Chicken |achieve 1206/3 |goto Elwynn Forest 36.5,60.1
step
_Use_ the Love emote on a Cat |clicknpc Cat##6368 |script DoEmote("LOVE")
_Love_ a Cat |achieve 1206/2 |goto Elwynn Forest 44.5,53.8
step
kill Gold Beetle##32258 |achieve 2556/17 |goto Badlands 50.4,43.9
step
_Use_ the Love emote on a Lava Crab |clicknpc Lava Crab##9700 |script DoEmote("LOVE")
_Love_ a Lava Crab |achieve 2557/8 |goto Searing Gorge 31.1,43.7
step
_Use_ the Love emote on a Sheep |clicknpc Sheep##1933 |script DoEmote("LOVE")
_Love_ a Sheep |achieve 1206/14 |goto Loch Modan 20.9,71.9
step
_Use_ the Love emote on a Ram |clicknpc Ram##2098 |script DoEmote("LOVE")
_Love_ a Ram |achieve 1206/13 |goto Loch Modan 25.1,37.8
step
_Use_ the Love emote on a Squirrel |clicknpc Squirrel##1412 |script DoEmote("LOVE")
_Love_ a Squirrel |achieve 1206/17 |goto Loch Modan 29.0,66.3
step
kill Squirrel##1412 |achieve 2556/4 |goto Loch Modan 29.0,66.3
step
_Use_ the Love emote on a Yellow-Bellied Marmot |clicknpc Yellow-Bellied Marmot##48683 |script DoEmote("LOVE")
_Love_ a Yellow-Bellied Marmot |achieve 5548/13 |goto Twilight Highlands 29.3,33.1
step
_Use_ the Love emote on a Highlands Turkey |clicknpc Highlands Turkey##48706 |script DoEmote("LOVE")
_Love_ a Highlands Turkey |achieve 5548/4 |goto Twilight Highlands 29.3,33.1
step
_Use_ the Love emote on a Shore Crab |clicknpc Shore Crab##60761 |script DoEmote("LOVE")
_Love_ a Shore Crab |achieve 1206/15 |goto Twilight Highlands 71.2,41.2
step
kill Maggot##16030 |achieve 2556/13 |goto The Hinterlands 31.9,57.9
step
kill Larva##16068 |achieve 2556/1 |goto Ghostlands 45.3,31.1
step
_Use_ the Love emote on an Ewe |clicknpc Ewe##19665 |script DoEmote("LOVE")
_Love_ a Ewe |achieve 1206/6 |goto Shattrath City 58.8,23.3
step
_Use_ the Love emote on a Borean Marmot |clicknpc Borean Marmot##31685 |script DoEmote("LOVE")
_Love_ a Borean Marmot |achieve 2557/2 |goto Borean Tundra 36.0,55.9
step
_Use_ the Love emote on a Tundra Penguin |clicknpc Tundra Penguin##28440 |script DoEmote("LOVE")
_Love_ a Tundra Penguin |achieve 2557/12 |goto Borean Tundra 24.5,61.8
step
_Use_ the Love emote on a Steam Frog |clicknpc Steam Frog##25679 |script DoEmote("LOVE")
_Love_ a Steam Frog |achieve 1206/18 |goto Borean Tundra 61.0,51.8
step
_Use_ the Love emote on a Borean Frog |clicknpc Borean Frog##25677 |script DoEmote("LOVE")
_Love_ a Borean Frog |achieve 1206/1 |goto Borean Tundra 72.7,41.0
step
_Use_ the Love emote on a Sholazar Tickbird |clicknpc Sholazar Tickbird##28093 |script DoEmote("LOVE")
_Love_ a Sholazar Tickbird |achieve 2557/11 |goto Sholazar Basin 27.1,60.5
step
_Use_ the Love emote on a Glacier Penguin |clicknpc Glacier Penguin##32498 |script DoEmote("LOVE")
_Love_ a Glacier Penguin |achieve 2557/5 |goto Icecrown 60.9,18.8
step
kill Underbelly Rat##32428 |achieve 2556/5 |goto Dalaran/2 47.4,42.5
step
kill Zul'Drak Rat##28202 |achieve 2556/8 |goto Zul'Drak 42.4,63.1
step
_Use_ the Love emote on an Arctic Hare |clicknpc Arctic Hare##29328 |script DoEmote("LOVE")
_Love_ an Artic Hare |achieve 2557/1 |goto Zul'Drak 71.8,69.8
step
_Use_ the Love emote on a Grizzly Squirrel |clicknpc Grizzly Squirrel##31889 |script DoEmote("LOVE")
_Love_ a Grizzly Squirrel |achieve 2557/6 |goto Grizzly Hills 66.7,13.1
step
_Use_ the Love emote on a Mountain Skunk |clicknpc Mountain Skunk##31890 |script DoEmote("LOVE")
_Love_ a Mountain Skunk |achieve 2557/9 |goto Grizzly Hills 68.6,11.8
step
kill Fjord Rat##24174 |achieve 2556/15 |goto Howling Fjord 45.0,30.3
step
_Use_ the Love emote on a Fjord Penguin |clicknpc Fjord Penguin##28407 |script DoEmote("LOVE")
_Love_ a Fjord Penguin |achieve 2557/3 |goto Howling Fjord 20.8,61.8
step
_Use_ the Love emote on a Scalawag Frog |clicknpc Scalawag Frog##26503 |script DoEmote("LOVE")
_Love_ a Scalawag Frog |achieve 2557/10 |goto Howling Fjord 35.6,81.8
step
_Follow_ the path to the bottom of the catacombs
kill Devouring Maggot##24270 |achieve 2556/6 |goto Howling Fjord 57.1,56.8
step
_Use_ the Love emote on a Fjord Turkey |clicknpc Fjord Turkey##24746 |script DoEmote("LOVE")
_Love_ a Fjord Turkey |achieve 2557/4 |goto Howling Fjord 66.4,71.1
step
_Use_ the Love emote on a Sassy Cat |clicknpc Sassy Cat##47682 |script DoEmote("LOVE")
_Love_ a Sassy Cat |achieve 5548/10 |goto Tol Barad Peninsula 61.2,35.5
step
_Use_ the Love emote on a Baradin Fox Kit |clicknpc Baradin Fox Kit##48630 |script DoEmote("LOVE")
_Love_ a Baradin Fox Kit |achieve 5548/2 |goto Tol Barad 44.5,25.8
step
Congratulations, you have _earned_ the
_To All The Squirrels I've Loved Before_ Achievement!
_To All The Squirrels Who Shared My Life_ Achievement!
_To All the Squirrels Who Cared for Me_ Achievement!
_Pest Control_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Well Read",{
condition_end="achieved(1244)",
author="support@zygorguides.com",
description="Read books.",
},[[
step
click The Betrayer Ascendant##2530 |achieve 1244/37 |goto Silvermoon City 68.6,64.1
|tip On a crate in the store behind Zathanna.
step
click Aegwynn and the Dragon Hunt##3871 |achieve 1244/22 |goto Tirisfal Glades 60.9,52.1
|tip The book is in front of the Inn next to Deathguard Burgess.
step
click Charge of the Dragonflights##560 |achieve 1244/34 |goto Tirisfal Glades 60.8,50.5
|tip The book is outside behind the Inn on the ground.
step
click The Old Gods and the Ordering of Azeroth##558 |achieve 1244/29 |goto Undercity 55.9,51.0
|tip The book is on the table.
step
click Icecrown and the Frozen Throne##559 |achieve 1244/12 |goto Undercity 55.9,51.0
|tip The book is on the table.
step
click Kel'Thuzad and the Forming of the Scourge##2530 |achieve 1244/12 |goto Undercity 55.9,51.0
|tip On the table.
step
click Exile of the High Elves##558 |achieve 1244/11 |goto Undercity/0 61.6,57.6
|tip The book is on a crate beside Ickabod Pimlen.
step
click Civil War in the Plaguelands##559 |achieve 1244/20 |goto Undercity 67.7,37.7
|tip The book is on the table next to the stable master.
step
click Arathor and the Troll Wars##559 |achieve 1244/8 |goto Hillsbrad Foothills 58.5,47.9
|tip Inside the downstairs level of the Tarren Mill Inn.
step
click The Alliance of Lordaeron##558 |achieve 1244/33 |goto Hillsbrad Foothills 57.2,45.5
|tip The book is upstairs on the second floor balcony.
step
click The Invasion of Draenor##3871 |achieve 1244/19 |goto Scholomance/2 56.1,41.2
|tip This book is found after fighting Lilian Voss on the floor in the corner.
step
_Make your way_ into The Scarlet Bastion |goto Stratholme/1 31.9,34.8 < 10 |only if walking
click Kil'jaeden and the Shadow Pact##2530 |achieve 1244/13 |goto Stratholme/1 30.5,40.7
|tip On the table next to Commander Malor
step
click The Seven Kingdoms##560 |achieve 1244/7 |goto Stratholme/1 30.1,41.3
|tip The book is on the table next to Commander Malor.
step
click Kel'Thuzad and the Forming of the Scourge##2530 |achieve 1244/28 |goto Stratholme/1 25.1,70.3
|tip The book is on the table between the bookshelves.
step
click The Lich King Triumphant##560 |achieve 1244/6 |goto Stratholme/1 25.5,70.5
|tip The book is on the table between the bookshelves.
step
click The Birth of the Lich King##2530 |achieve 1244/42 |goto Stratholme/1 25.5,70.6
|tip The book is on the table between the bookshelves.
step
click War of the Spider##558 |achieve 1244/14 |goto Stratholme/1 25.8,71.5
|tip The book is on the table between the bookshelves.
step
click Rise of the Blood Elves##3871 |achieve 1244/40 |goto Arathi Highlands 69.2,33.1
|tip The book is on the second floor of the Inn on the table between two benches.
step
_Remember_ this is an Alliance controlled area!
click The Last Guardian##559 |achieve 1244/1 |goto Loch Modan 37.2,47.0
|tip The book is downstairs inside the home on the nightstand next to the bed
step
_Remember_ this is an Alliance controlled area!
click Lethargy of the Orcs##3871 |achieve 1244/31 |goto Elwynn Forest 85.3,69.7
|tip The book is upstairs on the table.
step
_Remember_ this is an Alliance controlled area!
click The World Tree and the Emerald Dream##559 |achieve 1244/27 |goto Stormwind City 85.4,23.3
|tip The book is on the table.
step
_Remember_ this is an Alliance controlled area!
click The War of the Ancients##559 |achieve 1244/4 |goto Stormwind City 85.3,23.2
|tip The Book is on the table.
step
_Remember_ this is an Alliance controlled area!
click The Guardians of Tirisfal##2530 |achieve 1244/16 |goto Stormwind City 85.0,26.1
|tip The book is on the table.
step
_Remember_ this is an Alliance controlled area!
click Aftermath of the Second War##558 |achieve 1244/18 |goto Stormwind City 85.2,26.1
|tip The book is on the table.
step
_Remember_ this is an Alliance controlled area!
click The Kaldorei and the Well of Eternity##560 |achieve 1244/21 |goto Stormwind City 84.7,25.9
|tip On the pillar base next to the candles
step
click The Dark Portal and the Fall of Stormwind##558 |achieve 1244/15 |goto Swamp of Sorrows 49.3,55.5
|tip The book is in the building on the service counter.
step
click The New Horde##559 |achieve 1244/17 |goto Swamp of Sorrows 49.3,55.5
|tip The book is on the top floor of the building on the bench next to Dispatch Commander Ruag.
step
click Rise of the Horde##560 |achieve 1244/41 |goto Swamp of Sorrows 49.3,55.5
|tip The boook is on the top floor of the building on the bench next to Dispatch Commander Ruag.
step
_Remember_ this is an Alliance controlled area!
click Kil'jaeden and the Shadow Pact##2530 |achieve 1244/13 |goto Duskwood 74.2,45.3
|tip In the inn on the bookshelf on the second floor
step
_Remember_ this is an Alliance controlled area!
click The Founding of Quel'Thalas##3871 |achieve 1244/24 |goto Duskwood 73.7,45.1
|tip The book is in the next room over on the table.
step
click Sunwell - The Fall of Quel'Thalas##559 |achieve 1244/25 |goto The Cape of Stranglethorn 41.0,74.4
|tip The book is inside the inn on the corner table right up the stairs.
step
click Beyond the Dark Portal##559 |achieve 1244/9 |goto The Cape of Stranglethorn 40.7,73.8
|tip Inside the Inn on a top floor table easily accessible by entering by the flightmaster.
step
click The Twin Empires##559 |achieve 1244/3 |goto The Cape of Stranglethorn 42.1,73.7
|tip The book is downstairs on a bookshelf in the same room as the auctioneer.
step
click Empires' Fall##558 |achieve 1244/10 |goto The Cape of Stranglethorn 42.1,73.7
|tip The book is downstairs on a bookshelf in the same room as the auctioneer.
step
click Wrath of Soulflayer##3871 |achieve 1244/5 |goto The Cape of Stranglethorn 42.1,73.7
|tip The book is downstairs on a bookshelf in the same room as the auctioneer.
step
click The Scourge of Lordaeron##2530 |achieve 1244/26 |goto The Cape of Stranglethorn 41.9,73.5
|tip The book is downstairs on a bookshelf under the stairs in the same room as the auctioneer.
step
click The Sentinels and the Long Vigil##560 |achieve 1244/2 |goto The Cape of Stranglethorn 42.1,73.6
|tip The book is upstairs on the nightstand next to the bed.
step
click Mount Hyjal and Illidan's Gift##559 |achieve 1244/39 |goto Northern Barrens 66.9,74.6
|tip The book is in the Ratchet Inn on the wooden table on the western wall.
step
click Sargeras and the Betrayal##2530 |achieve 1244/23 |goto Northern Barrens 67.0,74.9
|tip The book is in the Ratchet Inn on the nightstand between two beds.
step
click Archimonde's Return and the Flight to Kalimdor##560 |achieve 1244/30 |goto Northern Barrens 68.0,73.5
|tip The book is inside Liv Rizzlefix's hut.
step
click The Battle of Grim Batol##560 |achieve 1244/36 |goto Mulgore 32.7,49.5
|tip The book is on the wooden table.
step
click Ironforge - the Awakening of the Dwarves##558 |achieve 1244/38 |goto Mulgore 32.7,49.5
|tip On the wooden table
step
click War of the Three Hammers##560 |achieve 1244/32 |goto Mulgore 32.7,49.5
|tip The book is on the wooden table.
step
click Old Hatreds - The Colonization of Kalimdor |achieve 1244/35 |goto Tanaris 50.97,30.29
|tip The boook is right next to the anvil.
step
Congratulations, you have _earned_ the _Well Read_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\You'll Feel Right as Rain",{
condition_end="achieved(5779)",
description="This guide will walk you through feeling 1000% better by eating Chocolate Cookies.",
},[[
step
Use the Stormwind City Cooking Dailies guide to
earn 6 Epicurean's Award##81
|tip Three for the recipe and the rest for the cocoa beans you'll need.
only if not achieved(5779)
step
talk Shazdar##49737
buy Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Orgrimmar 56.8,62.3
step
talk Shazdar##49737
buy 2 Imported Supplies##68689 |n
|tip If you need more buy another until you have 91 beans.
collect 91 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Orgrimmar 56.8,62.3
only if not achieved(5779)
step
talk Suja##46708
buy 91 Simple Flour##30817 |goto Orgrimmar 56.4,61.0
only if not achieved(5779)
step
Make a Cooking Fire |cast Cooking Fire##818
create 91 Chocolate Cookie##88013,Cooking,91 total |n
collect 91 Chocolate Cookie##62680
|tip You can also buy these from the Auction House.
only if not achieved(5779)
step
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779
step
Congratulations, you have earned the You'll Feel Right as Rain achievement!
]])
