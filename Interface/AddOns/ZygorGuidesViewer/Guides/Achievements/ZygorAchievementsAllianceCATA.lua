local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Armored Brown Bear",{
condition_end="achieved(2076)",
description="Obtain an Armored Brown Bear from Mei Francis in Dalaran.",
},[[
step
You will need 750 gold to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
confirm
step
talk Mei Francis##32216 |goto Dalaran 58.1,42.1
buy Reins of the Armored Brown Bear##44225 |n
use Reins of the Armored Brown Bear##44225
achieve 2076
step
Congratulations, you have earned the Armored Brown Bear achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Get to the Choppa!", {
condition_end="achieved(2097)",
description="Learn the Mekgineer's Chopper.",
},[[
step
In order to earn this achievement, you will need to either purcahse or create a Mekgineer's Chopper.
Click here to make this item yourself |next collect |confirm
Click here to purchase this item froomo the Auction House |confirm
step
talk Auctioneer Chilton##8670
buy Mekgineer's Chopper##44413 |condition itemcount(44413) >= 1 |goto Stormwind City 60.8,70.9
next learn
step
label "collect"
collect 12 Titansteel Bar##37663
|tip You will need Mining or a Miner for this. 450
collect 40 Handful of Cobalt Bolts##39681
|tip You will need Engineering or an Engineer to attain these. 350
collect 2 Arctic Fur##44128
|tip You will need Skinning or a Skinner to attain this. From Northrend Enemies
Once you have collected these items, you will need to collect 3 more, which come from vendors.
confirm
step
talk Big Keech##61650
buy 1 Salvaged Iron Golem Parts##44499 |condition itemcount(44499) >= 1 |goto Vale of Eternal Blossoms/0 64.1,41.4
|tip 3,000 gold
buy 8 Goblin-Machined Piston##44501 |condition itemcount(44501) >= 8 |goto Vale of Eternal Blossoms/0 64.1,41.4
|tip 8,000 gold
buy 1 Elementium-Plated Exhaust Pipe##44500 |condition itemcount(44500) >= 1 |goto Vale of Eternal Blossoms/0 64.1,41.4
|tip 1,500 gold
Note that these can also be salvaged or dropped from _Ulduar_.
_Flame Leviathan_ and _XT-002 Deconstructor_ are the bosses you are looking for.
modelnpc 33293
modenpc 33113
step
label learn
Use your Mekgineer's Chopper. |use Mekgineer's Chopper##44413
learnmount Mekgineer's Chopper##60867
achieve 2097
step
Congratulations, you have earned the _Get to the Choppa!_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\One Hump or Two?",{
condition_end="achieved(4888)",
description="This guide will walk you through obtaining a camel mount in Uldum (with just one hump).",
},[[
step
You will need 100 gold and you will need to be Exalted with the Ramkahen faction
|tip Use the Ramkahen Reputation guide in the Cataclysm Dailies guide to become Exalted with the Ramkahen faction.
confirm
step
Routing |next "buy" |only if rep('Ramkahen')==Exalted
Routing |next "end" |only if default
step
label "buy"
talk Blacksmith Abasi##48617
Buy either of these 2 camel mounts
buy Reins of the Brown Riding Camel##63044 |n |goto Uldum 54.0,33.3
buy Reins of the Tan Riding Camel##63045 |n |goto Uldum 54.0,33.3
Learn the Reins of the Brown Riding Camel |use Reins of the Brown Riding Camel##63044 |n
Learn the Reins of the Tan Riding Camel |use Reins of the Tan Riding Camel##63045 |n
achieve 4888
step
label "end"
Congratulations, you have earned the One Hump or Two? achievement! |only if achieved(4888)
Your Ramkahen reputation level isn't high enough to buy these mounts! |only if rep('Ramkahen')<=Revered
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Traveler's Tundra Mammoth",{
condition_end="achieved(2078)",
description="Obtain a Traveler's Tundra Mammoth from Mei Francis in Dalaran.",
},[[
step
You will need 20,000 gold to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
confirm
step
talk Mei Francis##32216 |goto Dalaran 58.1,42.1
buy Reins of the Traveler's Tundra Mammoth##44235 |n
use Reins of the Traveler's Tundra Mammoth##44235
achieve 2078
step
Congratulations, you have earned the Traveler's Tundra Mammoth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Vial of the Sands", {
condition_end="achieved(5749)",
description="Learn how to transform into a dragon and carry an ally.",
},[[
step
You will need at least 29,000 gold to complete this achievement
You can acquire gold through raids, dungeons, quests, or just by farming high level mobs.
confirm
next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")>=525
next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label AlchemistVialoftheSandsLearn
Since you're an Alchemist you can make this item yourself:
Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
collect Canopic Jar##64657 |n
Click the Canopic Jars |use Canopic Jar##64657
collect 1 Recipe: Vial of the Sands##67538
Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")>=25
step
Use your Recipe: Vial of the Sands |use Recipe: Vial of the Sands##67538
learn Vial of the Sands##93328
next "FarmVialoftheSands" |only if skill("Alchemy")>=525
only if skill("Alchemy")>=525
step
label AHVialoftheSands
talk Auctioneer Chilton##8670
buy Vial of the Sands##65891 |n |goto Stormwind City 60.9,71.0
Use the Vial of the Sands |use Vial of the Sands##65891
Earn the Vial of the Sands achievement |achieve 5749 |next "VialoftheSandsEarned"
Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label FarmVialoftheSands
talk Auctioneer Chilton##8670
buy 12 Truegold##58480 |condition itemcount(58480) >= 12 |goto Stormwind City 60.9,71.0
buy 8 Flask of the Winds##58087 |condition itemcount(58087) >= 8 |goto Stormwind City 60.9,71.0
buy 8 Flask of Titanic Strength##58088 |condition itemcount(58088) >= 8 |goto Stormwind City 60.9,71.0
buy 8 Deepstone Oil##56850 |condition itemcount(56850) >= 8 |goto Stormwind City 60.9,71.0
If you don't have enough gold or these items are not on the Auction House you will have to farm for these items.
step
talk Yasmin##49406
buy 8 Sands of Time##65893 |condition itemcount(65893) >= 8 |goto Uldum 26.6,7.2
buy 1 Pyrium-Laced Crystalline Vial##65892 |condition itemcount(65892) >= 1 |goto Uldum 26.6,7.2
step
create Vial of the Sands##93328,Alchemy,1 total |n |only if skill("Alchemy")>=525
Find an Alchemist to make your Vial of the Sands
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly. |only if default
collect 1 Vial of the Sands##65891 |n |goto Stormwind City 60.9,71.0
Use the Vial of the Sands |use Vial of the Sands##65891
Earn the Vial of the Sands achievement! |achieve 5749 |goto Stormwind City 60.9,71.0
step
label VialoftheSandsEarned
Congratulations!  You've earned the Vial of the Sands achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Wooly Mammoth",{
condition_end="achieved(2077)",
description="Obtain a Wooly Mammoth from Mei Francis in Dalaran.",
},[[
step
You will need 10,000 gold to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
confirm
step
talk Mei Francis##32216 |goto Dalaran 58.1,42.1
buy Reins of the Wooly Mammoth##44230 |n
use Reins of the Wooly Mammoth##44230
achieve 2077
step
Congratulations, you have earned the Wooly Mammoth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\My Sack is Gigantique",{
condition_end="achieved(1165)",
description="Equip Haris Pilton's 'Gigantique' Bag.",
},[[
step
For this achievement you will need to purchase and equip a bag you can purchase from Haris Pilton
The bag is 1,200 gold so you may have to save up before completing this achievement
confirm
step
talk Haris Pilton##18756 |goto Shattrath City 75.4,30.5
buy "Gigantique" Bag##38082 |condition itemcount(38082) >= 1
Right click the Gigantique Bag to equip it |achieve 1165
step
Congratulations, you have earned the My Sack is "Gigantique" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Represent",{
condition_end="achieved(5755)",
achieveid={621,1020,1021},
description="Equip a tabard.",
},[[
step
You can obtain various tabards through reputation, achievements, PvP, and questing
Please refer to our reputation and achievment guides to earn your tabards
What follows is the seven faction tabards to get you on your way to 30 tabards
confirm
step
talk Captain Lancy Revshon##49877 |goto Stormwind City 67.7,73.0
buy Stormwind Tabard##45574 |n
Equip Stormwind Tabard |use Stormwind Tabard##45574
confirm
step
talk Old Whitenose##65068 |goto Stormwind City 67.8,18.6
buy Tushui Tabard##83079 |n
Equip Tushui Tabard |use Tushui Tabard##83079
confirm
step
talk Master Tinker Trini##50308 |goto Ironforge 55.3,48.2
buy Gnomeregan Tabard##45578 |n
Equip Gnomeregan Tabard |use Gnomeregan Tabard##45578
confirm
step
talk Captain Stonehelm##50309 |goto Ironforge 55.6,47.3
buy Ironforge Tabard##45577 |n
Equip Ironforge Tabard |use Ironforge Tabard##45577
confirm
step
talk Moon Priestess Lasara##50305 |goto Darnassus 36.2,48.5
buy Darnassus Tabard##45579 |n
Equip Darnassus Tabard |use Darnassus Tabard##45579
confirm
step
talk Lord Candren##50307 |goto Darnassus 37.1,47.5
buy Gilneas Tabard##64882 |n
Equip Gilneas Tabard |use Gilneas Tabard##64882
confirm
step
talk Kadu##50306 |goto The Exodar 54.8,36.8
buy Exodar Tabard##45580 |n
Equip Exodar Tabard |use Exodar Tabard##45580
confirm
step
Congratulations, you have earned the Represent achievement! |only if achieved(621)
Congratulations, you have earned the Ten Tabards achievement! |only if achieved(1020)
Congratulations, you have earned the Twenty-Five Tabards achievement! |only if achieved(1021)
Congratulations, you have earned the Thirty Tabards achievement! |only if achieved(5755)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Ring of the Kirin Tor",{
condition_end="achieved(2084)",
description="Purchase a Signet of the Kirin Tor, Band of the Kirin Tor, Loop of the Kirin Tor, or Ring of the Kirin Tor in Dalaran.",
},[[
step
You will need 8,500 gold to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
confirm
step
talk Harold Winston##32172 |goto Dalaran 40.4,33.8
Buy one of the Kirin Tor rings
buy 1 Band of the Kirin Tor##40586 |n |only Rogue, Hunter, Monk, Shaman, Druid
buy 1 Loop of the Kirin Tor##44934 |n |only Mage, Warlock, Priest, Shaman, Druid, Paladin
buy 1 Ring of the Kirin Tor##44935 |n |only Warrior, Death Knight, Paladin
buy 1 Signet of the Kirin Tor##40585 |n |only Mage, Warlock, Priest, Shaman, Druid, Paladin
achieve 2084
step
Congratulations, you have earned the Ring of the Kirin Tor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\King of Dire Maul",{
condition_end="achieved(644)",
description="This guide will walk you through on how to get to and kill the 3 end bosses of the Dire Maul instances to complete this achievement.",
},[[
step "start"
Click here to be directed to the Warpwood Quarter. |confirm |next "Warpwood" |achieve 644/1
Click here to be directed to the Gordock Commons. |confirm |next "Gordock" |achieve 644/2
Click here to be directed to the Capital Gardens. |confirm |next "Capital" |achieve 644/3
Click here if you have completed the top 3 instances. |confirm always |next "end"
step "Warpwood"
Press _I_ and queue for Dire Maul: Warpwood Quarter or enter the dungeon with your group |goto Dire Maul/5 6.7,38.3 < 100 |c |or
|confirm |or
step
talk "Ambassador" Dagg'thol##44971
accept Pusillin The Thief##27107 |goto Dire Maul/5 7.1,36.3
accept Lethtendris's Web##27108 |goto Dire Maul/5 7.1,36.3
only if not completedq(27107) and not completedq(27108)
step
talk Pusillin##14354 |goto 12.5,30.9
Tell him _"Game? Are you crazy?"_
confirm
step
talk Furgus Warpwood##44969
accept Shards of the Felvine##27103 |goto 11.2,38.4
accept Alzzin the Wildshaper##27104 |goto 11.2,38.4
accept An Unwelcome Guest##27105 |goto 11.2,38.4
only if not completedq(27103) and not completedq(27104) and not completedq(27105)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	12.6,40.7	12.5,65.8	11.9,72.6
path	13.0,77.1	22.0,75.5	27.1,73.5
path	31.2,73.0	31.4,57.5	31.8,51.1
path	31.4,36.6	32.3,26.6	36.1,26.1
path	46.3,26.2	53.6,26.2	55.1,27.4
path	55.6,30.6	55.9,34.3	57.5,37.4
path	59.1,37.9	66.5,38.1	73.8,41.2
path	74.8,46.7	71.6,46.8
talk Pusillin##14354
_Follow_ the path and _talk to Pusillin_ whenever he stops |goto 71.6,46.8 < 5 |c |noway
step
talk Pusillin##14354
Tell him _"Prepare to meet your maker"_ |goto Dire Maul/5 75.8,45.2
kill 1 Pusillin##14354
Get the Book of Incantations |q Pusillin The Thief##27107/1 |goto 73.77,43.74 |only if havequest(27107)
confirm |only if not havequest(27107)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	73.4,40.2	65.7,37.7	60.8,37.8
path	58.2,37.8	57.0,36.6	55.8,33.5
path	55.6,29.1	54.7,26.6	52.0,26.2
path	43.8,26.2	43.7,48.0	45.3,60.5
path	44.4,67.1	43.8,64.6	43.8,58.9
_Follow_ the path |goto 43.8,58.9 < 5 |c |noway
step
kill 1 Lethtendris##14327 |goto 42.8,49.1
|tip Void Bolt deals shadow damage to her current target
|tip Shadow Bolt Volley will deal AoE damage to the whole group
|tip Curse of Thorns has a 50% chance per melee attack to cause shadow damage to the player afflicted
|tip Curse of Tongues will slow the casting speed of anyone effected by 50%
|tip Immolate will apply a standard fire DoT
|tip Lethtendris will Enlarge Pimgib, increasing his damage
|tip Burn down Pimgib and focus on Lethtendris
|tip Interrupt Shadow Bolt Volley, Curse of Thorns, and Curse of Tongues
collect Lethtendris' Web##18426 |q Lethtendris's Web##27108/1 |goto 42.8,49.1 |only if havequest(27108)
Defeat Lethtendris |scenariogoal 25058 |goto 42.8,49.1
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	43.8,57.2	43.8,66.7	44.8,66.5
path	46.9,63.4	47.0,63.3
_Follow_ the path |goto 47.0,63.3 < 5 |c |noway
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.5,82.6	63.2,84.8	63.0,90.3
path	60.9,92.3	58.1,90.9	57.5,87.6
path	58.1,80.3	58.3,76.2
_Follow_ the path |goto Dire Maul/6 58.3,76.2 < 8 |c |noway
step
kill 1 Hydrospawn##13280 |goto Dire Maul/6,55.5,71.4
|tip Submersion reduces the party's stamina by 10 per stack. Acts as a soft enrage
|tip Move away from Hydrospawn when he uses Riptide. This will disarm and knock back anyone within 10 yards
|tip Hydrospawn will Summon Massive Geyser, dealing frost damage to anyone standing in the geyser
|tip At 50% health, he will summon 2 Hydrolings. These have a knockback and drop threat every time they land a hit. Kill them quickly
collect Hydrospawn Essence##18299 |q An Unwelcome Guest##27105/1 |goto Dire Maul/6,55.5,71.4 |only if havequest(27105)
Defeat Hydrospawn |scenariogoal 25059 |goto Dire Maul/6,55.5,71.4
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	58.2,66.5	57.7,54.9	58.5,52.6
path	60.1,51.9	61.5,52.8	62.1,55.1
path	62.1,69.3	60.0,69.5
_Follow_ the path |goto Dire Maul/6 60.0,69.5 < 5 |c |noway
step
kill 1 Zevrim Thornhoof##11490 |goto 57.6,74.0 |only if default
|tip Players afflicted by Intense Pain will deal shadow damage to anyone standing nearby
|tip Occasionally, Thornhoof will Sacrifice players on his altar. The sacrificed player will take heavy damage over 6 seconds
_Healer:_
|tip You must heal the Sacrifice target or they will die
kill 1 Zevrim Thornhoof##11490 |q Alzzin the Wildshaper##27104/1 |goto 57.6,74.0 |only if havequest(27104)
Defeat Zevrim Thornhoof |scenariogoal 25060 |goto 57.6,74.0
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	53.5,77.3	52.8,88.0	52.9,91.2
path	48.8,90.9	40.7,80.5
_Jump down_ and follow the path |goto 40.7,80.5 < 8 |c |noway
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	39.6,78.4	40.4,71.4	41.0,66.6
path	39.3,60.9	40.2,48.9
talk Old Ironbark##11491
Tell him "Thank you, Ironbark. We are ready for you to open the door."
_Follow him_ and go through the door he opens |goto 40.2,48.9 < 5 |c
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	40.2,45.0	40.2,33.1	41.0,30.1
path	42.9,28.9	48.6,28.9	51.0,22.0
path	55.8,16.9	59.8,16.6	64.5,19.0
path	66.0,28.8
_Follow_ the path |goto 66.0,28.8 < 9 |c |noway
step
kill 1 Alzzin the Wildshaper##11492 |goto Dire Maul/6,57.7,28.9 |only if default
_Satyr Form:_
|tip Alzzin will leech mana from random players using Enervate
|tip Wither is a disease that deals nature damage and reduces strength by 50 for 21 seconds
_Tree Form:_
|tip Alzzin will Disarm and Knock Away the tank. Knock Away acts as a threat drop
|tip _Wild Regeneration_ will heal Alzzin over 16 seconds
_Dire Wolf Form:_
|tip Mangle will slow the tank's movement speed by 50% and inflict a short bleed
|tip At 50% health he will use Come Minions!, summoning imps which reset threat every time they hit. Kill them quickly
kill 1 Alzzin the Wildshaper##11492 |q Alzzin the Wildshaper##27104/2 |goto Dire Maul/6,57.7,28.9 |only if havequest(27104)
Defeat Alzzin the Wildshaper |scenariogoal 27854 |goto Dire Maul/6,57.7,28.9 |achieve 644/1
step
click Felvine Shard##5746
Click the Reliquary of Purity in your bags |use Reliquary of Purity##18539
Create a Sealed Reliquary of Purity |q Shards of the Felvine##27103/1 |goto 55.0,27.1
only if havequest(27103)
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.2,28.6	68.1,27.0	66.8,21.8
path	63.6,17.1	55.8,17.0	51.1,21.4
path	48.3,28.8	43.0,28.9	40.9,30.2
path	40.2,33.2	40.2,49.5	39.2,60.9
path	40.6,65.0	40.5,70.8	39.1,76.6
path	41.9,82.2	49.3,91.2	52.8,91.1
path	52.9,84.9	54.0,75.3	57.4,75.0
path	57.3,80.7	57.5,90.0	60.3,92.7
path	63.5,89.8	63.3,84.7	61.4,82.6
path	Dire Maul/5 45.7,63.0	Dire Maul/5 43.8,53.6
path	Dire Maul/5 43.8,26.2	Dire Maul/5 33.4,26.3
path	Dire Maul/5 31.5,30.3	Dire Maul/5 31.6,48.7
path	Dire Maul/5 31.1,63.9	Dire Maul/5 31.0,72.5
path	Dire Maul/5 21.4,75.4	Dire Maul/5 14.2,76.9
path	Dire Maul/5 12.4,72.9	Dire Maul/5 12.7,54.2
path	Dire Maul/5 12.4,38.3	Dire Maul/5 8.1,36.6
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the dungeon |goto Dire Maul/5 8.1,36.6 < 20 |c |noway
step
talk "Ambassador" Dagg'thol##44971
turnin Pusillin The Thief##27107 |goto Dire Maul/5 7.0,36.2
only if not completedq(27107)
step
talk "Ambassador" Dagg'thol##44971
turnin Lethtendris's Web##27108 |goto Dire Maul/5 7.0,36.2
only if not completedq(27108)
step
talk Furgus Warpwood##44969
turnin Shards of the Felvine##27103 |goto 11.2,38.4
only if not completedq(27103)
step
talk Furgus Warpwood##44969
turnin Alzzin the Wildshaper##27104 |goto 11.2,38.4
only if not completedq(27104)
step
talk Furgus Warpwood##44969
turnin An Unwelcome Guest##27105 |goto 11.2,38.4
only if not completedq(27105)
step
Congratulations, you have completed Dire Maul: Warpwood Quarter! |achieve 644/1
Click here to go to the start of the guide. |confirm |next "start"
step "Gordock"
You may choose to do a normal run or a special tribute run
The tribute run requires you to skip all bosses up to the king and rewards slightly better loot
Click here to do a normal run |confirm |next "Normal"
Or
Click here to do a tribute run |confirm |next "Tribute"
step
label "Normal"
Press _I_ and queue for Dire Maul: Gordock Commons |confirm |or
Or
Enter the dungeon with your group |goto Dire Maul/1 71.1,93.5 < 100 |c |or
step
talk Stonemaul Ogre##45052
accept King of the Gordok##27128 |goto Dire Maul 71.7,92.2
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.5,90.1	69.3,86.8	69.3,85.0
_Follow_ the path |goto 69.3,85.0 < 6 |c |noway
step
kill 1 Guard Mol'dar##14326 |goto 69.8,75.5
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Mol'dar
|tip Mol'dar will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Mol'dar will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Mol'dar |scenariogoal 25066 |or |goto 69.8,75.5
Start the scenario |confirm |or
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	69.3,73.6	69.3,69.9	66.5,68.3
_Follow_ the path |goto 66.5,68.3 < 8 |c |noway
step
kill 1 Stomper Kreeg##14322 |goto Dire Maul 62.2,66.0
|tip Booze Spit is a frontal cone attack that will reduce chance to hit by 75% and make you drunk for 8 seconds. Avoid standing in front of Kreeg
|tip War Stomp will knock back any player within 5 yards
|tip Anyone within 8 yards is vulnerable to Whirlwind. Run away when he does this
|tip At 50% health, Kreeg gains Frenzy and Drunken Rage. This will cause him to attack 60% faster and move 100% faster
_Tank:_
|tip Keep your back to a wall and save defensive cooldowns for the 50% enrage
Defeat Stomper Kreeg |scenariogoal 25070 |goto Dire Maul 62.2,66.0
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	61.1,68.3	59.1,71.1	57.4,70.6
path	55.1,68.3	50.0,67.2	49.5,69.8
_Follow_ the path |goto 49.5,69.8 < 8 |c |noway
step
kill 1 Guard Fengus##14321 |goto 49.4,78.7
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Fengus
|tip Fengus will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Fengus will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Fengus |scenariogoal 25067 |goto 49.4,78.7
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	48.1,78.1	44.1,78.1	40.4,78.2
path	36.5,78.2	31.8,78.1	29.4,77.1
path	27.6,74.6	27.0,69.5	27.0,63.0
_Follow_ the path |goto 27.0,63.0 < 10 |c |noway
step
kill 1 Guard Slip'kik##14323 |goto 26.5,57.8
|tip Important: Clear the ogres nearby before engaging Guard Slip'kik
|tip Slip'kik will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Slip'kik will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Slip'kik |scenariogoal 25068 |goto 26.5,57.8
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.8,57.5	25.3,57.7	23.9,60.0
path	24.2,66.1	23.3,67.0	23.3,61.2
path	23.9,56.9	25.6,54.5	27.6,54.5
path	27.6,59.9	27.7,64.0	29.1,65.8
path	31.8,65.5	31.8,61.5
_Follow_ the path |goto 31.8,61.5 < 5 |c |noway
step
kill 1 Captain Kromcrush##14325 |goto 31.9,50.8
|tip Keep Kromcrush away from the area in which he stands. He will use Frightening Shout, fearing anyone within 8 yards for 6 seconds
|tip Mortal Cleave will hit a melee target and another standing near them, reducing healing by 50%
|tip At 50% health, Kromcrush will use Intruder Alert!, calling 2 Gordok Reavers to aid him. CC or kill these first
|tip These reavers will use Cleave, Sunder Armor, and Mortal Strike
|tip At 25% health, Kromcrush will activate Retaliation for 8 seconds, instantly striking anyone hitting him in melee combat
_DPS:_
|tip Do not attack Kromcrush during Retaliation
_Healer:_
|tip Be aware that the healing reducting effects on this fight will require to you heal more frequently
Defeat Captain Kromcrush |scenariogoal 25071 |goto 31.9,50.8
step
kill 1 Cho'Rush the Observer##14324 |goto 31.8,26.4
kill 1 King Gordok##11501 |goto 31.8,26.4 |only if default
_Cho'Rush the Observer:_
|tip Cho'Rush can spawn as a Priest, Shaman, or Mage
|tip Interrupt Cho'Rush when he casts Heal, Healing Wave, or Arcane Explosion
|tip Dispel his Power Word: Shield and Bloodlust
_King Gordok:_
|tip Berserker Charge will deal damage to random players and knock them up in the air
|tip The tank will take more damage as the fight progresses thanks to stacks of Sunder Armor
|tip Mortal Strike will reduct healing on the tank by 50%
|tip The King will use War Stomp on anyone within 5 yards, dealing damage and stunning for 4 seconds
kill King Gordok##11501 |q King of the Gordok##27128/1 |goto 31.8,26.4 |only if havequest(27128)
Defeat King Gordok |scenariogoal 18535 |goto 31.8,26.4
step
talk Mizzle the Crafty##14353 |goto 31.7,27.4
Ask him: _"I'm the new king? What are you talking about?"_
Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well
click Gordok Tribute##3365
confirm |only if not completedq(27128) |next "Return"
confirm |only if completedq(27128) |next "end"
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	31.8,31.1	31.8,39.9	31.8,50.8
path	31.8,58.9	31.7,65.6	28.5,65.7
path	27.6,61.1	27.6,54.5	24.7,55.0
path	23.2,61.1	23.6,67.2	24.3,64.1
path	24.3,59.5	26.0,59.5	27.0,63.5
path	27.0,69.5	27.2,74.1	29.4,77.4
path	33.3,78.2	38.7,78.2	44.0,78.1
path	49.4,78.0	53.2,77.8	56.2,78.9
path	57.4,83.8	61.6,86.6	66.0,87.6
path	71.7,90.5
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the instance |goto 71.7,90.5 < 12 |c |noway
step
talk Druid of the Talon##45040
turnin King of the Gordok##27128 |goto Dire Maul 71.7,92.3
only if not completedq(27128)
step
Congratulations, you have completed Dire Maul: Gordock Commons |achieve 644/2
Click here to go to the start of the guide. |confirm |next "start"
step "Capital"
Press _I_ and queue for Dire Maul: Capital Gardens or enter the dungeon with your group |goto Dire Maul/2 93.5,47.7 < 100 |c |or
|confirm |or
step
talk Estulan##44991
accept The Cursed Remains##27112 |goto 90.6,44.9
accept The Shen'dralar Ancient##27113 |goto 90.6,44.9
step
talk Shen'dralar Watcher##44999
accept The Warped Defender##27109 |goto Dire Maul/2 87.3,52.6
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 73.2,53.8 |tip Kill all the Remnants around the crystal to deactivate it.
Kill all the Remnants around the crystal to deactivate it
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	68.6,56.3	61.6,55.4	50.6,43.6
path	45.2,36.6	40.5,35.1	Dire Maul/3 51.7,21.6
path	Dire Maul/3 38.5,23.4	Dire Maul/3 34.8,34.7
_Follow_ the path |goto Dire Maul/3 34.8,34.7 < 15 |c |noway
step
kill Magister Kalendris##11487 |goto Dire Maul/3,30.6,45.8 |only if default
|tip Kalendris will randomly cast Shadow Word: Pain or party members. Dispel this or heal through it
|tip Mind Flay will deal shadow damage to the target and reduce movement speed by 50%
|tip Mind Blast deals shadow damage to his current target
|tip Occasionally he will use Dominate Mind on a party member. CC or dispel the afflicted player
kill Magister Kalendris##11487 |q The Cursed Remains##27112/1 |goto Dire Maul/3,30.6,45.8 |only if havequest(27112)
Defeat Magister Kalendris |scenariogoal 25061 |goto Dire Maul/3,30.6,45.8
step
map Dire Maul/3
path follow loose; loop off; ants curved; dist 10
path	34.6,35.5	38.6,25.5	49.8,16.5
path	46.4,13.5	Dire Maul/2 20.3,21.6
path	Dire Maul/2 23.0,25.8	Dire Maul/2 34.1,23.7
_Follow_ the path |goto Dire Maul/2 34.1,23.7 < 15 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/2 42.0,22.4
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.5,27.5	48.4,49.4
_Follow_ the path |goto 48.4,49.4 < 8 |c |noway
step
talk Shen'dralar Ancient##14358
turnin The Shen'dralar Ancient##27113 |goto 48.4,53.8
accept The Madness Within##27110 |goto 48.4,53.8
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.5,59.1	48.3,78.9
_Follow_ the path |goto 48.3,78.9 < 8 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 39.5,83.4
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
kill Illyanna Ravenoak##11488 |goto 21.7,75.8 |only if default
|tip Ferra will use Charge on random players, dealing damage and stunning them. This will be followed by Maul, dealing physical damage
|tip Multi-Shot will hit players standing close to each other. Spread out
|tip Areas targeted with Volley will deal arcane damage to anyone standing within. Move out of it
|tip Ravenoak will drop Immolation Trap at her feet. Don't walk over these traps
|tip Concussive Shot will slow or stun random party members for 3 seconds
kill Illyanna Ravenoak##11488 |q The Cursed Remains##27112/2 |goto 21.7,75.8 |only if havequest(27112)
Defeat Illyanna Ravenoak |scenariogoal 25062 |goto 21.7,75.8
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	39.4,79.5	47.4,79.8	47.0,71.4
path	45.9,60.1	44.3,58.0	41.5,53.2
_Follow_ the path, jumping onto the ledge first and then jump down to the ramp |goto 41.5,53.2 < 10 |c |noway
step
kill 1 Tendris Warpwood##11489 |goto Dire Maul/2 34.6,53.3 |only if default
|tip Intruder Alert! will summon any Ironbark Protectors left alive in the instance to Warpwood's side
|tip Tendris will Trample anyone within 10 yards, dealing physical damage
|tip Grasping Vines will deal damage to the party, knocking them down and preventing movement for 10 seconds. Dispel this if possible
|tip If no player is within melee range, he will teleport a random person to him and Entangle them for 10 seconds
kill 1 Tendris Warpwood##11489 |q The Warped Defender##27109/1 |goto Dire Maul/2 34.6,53.3 |only if havequest(27109)
Defeat Tendris Warpwood |scenariogoal 25063 |goto Dire Maul/2 34.6,53.3
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	76.5,39.9	71.4,40.3	69.4,44.4
path	69.1,52.7	66.7,57.4	60.9,57.7
_Follow_ the path |goto Dire Maul/4 60.9,57.7 < 8 |c |noway
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	58.7,60.3	57.4,70.2	50.4,81.7
_Follow_ the path |goto Dire Maul/4 50.4,81.7 < 10 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 46.5,81.6
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	53.5,76.1	58.0,66.2	58.5,52.9
path	54.7,39.6	50.5,34.4
_Follow_ the path |goto Dire Maul/4 50.5,34.4 < 10 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 44.7,34.1
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	46.8,35.8	41.0,41.9
_Follow_ the path, _avoiding the elementals_ |goto Dire Maul/4 41.0,41.9 < 10 |c |noway
step
kill Immol'thar##11496 |goto 35.5,57.0 |only if default
|tip Eyes of Immol'thar cannot be tanked. Kill them quickly
|tip Portal of Immol'thar will teleport a random player and wipe their threat
|tip Immol'thar will use Infected Bite on the tank, increasing damage taken by a small amount and dealing nature damage. Dispel this disease
|tip Frenzy will cause Immol'thar to enrage, increasing his attack speed by 60% for 3 minutes
|tip He will occasionally Trample, dealing physical damage to anyone standing within 10 yards
kill Immol'thar##11496 |q The Madness Within##27110/1 |goto 35.5,57.0 |only if havequest(27110)
Defeat Immol'thar |scenariogoal 27855 |goto 35.5,57.0
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	43.6,46.8	51.7,42.6	56.9,37.4
path	59.3,33.4	60.2,27.3	67.2,24.2
path	74.1,23.1	69.8,21.4
_Follow_ the path |goto Dire Maul/4 69.8,21.4 < 8 |c |noway
step
kill Prince Tortheldrin##11486 |goto 60.4,23.5 |only if default
_Healer:_
|tip Price Tortheldrin attacks very quickly and is capable of dealing large amounts of burst damage
_Tank:_
|tip Save defensive cooldowns in case the healer gets hit with Counterspell
|tip Periodically he will _hrash, gaining 2 extra attacks
|tip Arcane Blast will deal damage to a random player and knock them back
|tip Anyone within 8 yards of Tortheldrin will take damage from Whirlwind. Move away during this
|tip He will also randomly Counterspell players. This spell can be very dangerous for healers, as it will prevent spellcasting for 15 seconds
kill Prince Tortheldrin##11486 |q The Madness Within##27110/2 |goto 60.4,23.5 |only if havequest(27110)
Defeat Prince Tortheldrin |scenariogoal 25065 |goto 60.4,23.5
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	66.2,21.8	74.2,22.4	72.7,24.1
path	67.1,24.0	60.3,27.2	59.3,33.0
path	56.4,37.9	59.3,57.6	66.3,57.8
path	68.9,54.5	69.6,43.0	71.9,40.1
path	76.9,39.9	Dire Maul/2 36.9,53.3
path	Dire Maul/2 44.4,53.2	Dire Maul/2 57.5,54.2
path	Dire Maul/2 64.8,56.3	Dire Maul/2 78.8,50.5
You can either run to the beginning of the dungeon to turn in your quests
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
Return to the beginning of the instance |goto Dire Maul/2 78.8,50.5 < 10 |c |noway
only if not completedq(27109) and not completedq(27112) and not completedq(27110)
step
talk Shen'dralar Watcher##44999
turnin The Warped Defender##27109 |goto Dire Maul/2,87.3,52.4
only if not completedq(27109)
step
talk Estulan##44991
turnin The Cursed Remains##27112 |goto 90.5,44.8
only if not completedq(27112)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	84.4,47.7	71.3,56.0	61.9,55.5
path	54.8,47.2	45.1,36.6	40.8,34.8
path	Dire Maul/3 50.0,12.7	Dire Maul/2 20.3,20.9
path	22.7,26.2	35.6,25.7	48.4,26.1
path	48.4,43.1
_Follow_ the path |goto Dire Maul/2 48.4,43.1 < 5 |c |noway
only if not completedq(27111)
step
talk Shen'dralar Ancient##14358
turnin The Madness Within##27110 |goto Dire Maul/2,48.4,53.8
accept The Treasure of the Shen'dralar##27111 |goto Dire Maul/2,48.4,53.8
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	47.0,59.8	44.3,59.4	41.2,53.4
path	30.0,42.6	Dire Maul/4 71.3,40.3
path	Dire Maul/4 69.3,45.5	Dire Maul/4 68.8,54.5
path	Dire Maul/4 65.7,57.4	Dire Maul/4 59.3,57.2
path	Dire Maul/4 56.3,38.4	Dire Maul/4 59.6,32.8
path	Dire Maul/4 60.6,26.4	Dire Maul/4 67.2,24.1
path	Dire Maul/4 74.1,23.8	Dire Maul/4 72.6,21.7
_Jump down_ and _follow_ the path |goto Dire Maul/4 72.6,21.7 < 5 |c |noway
only if not completedq(27111)
step
click Treasure of the Shen'dralar##1387
turnin The Treasure of the Shen'dralar##27111 |goto 70.6,24.1
only if not completedq(27111)
step
Congratulations, you have completed Dire Maul: Capital Gardens! |achieve 644/3
Click here to go to the start of the guide. |confirm |next "start"
step "end"
Congratulations you have completed the achievement "King of Dire Maul"! |achieve 644
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Parasite Evening",{
condition_end="achieved(5306)",
description="Defeat Magmaw in Blackwing Descent without anyone in the raid becoming infected with a parasite.",
},[[
step
map Blackwing Descent/1
path loop off
path	42.6,59.9	31.5,56.9
Follow the path to Magmaw |goto 31.5,56.9 < 10 |noway |c
step
The best way to earn this achievement will be to DPS it down quickly
Magmaw uses _Pillar of Flame_ which spawns the parasites, if you can't kill it fast enough, you will need to avoid them and DPS them down at range
Earn the Parasite Evening Achievement |achieve 5306 |goto Blackwing Descent/1 27.5,53.1
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Magmaw Achievement as well.
step
Congratulations, you have earned the Parasite Evening Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Achieve-a-tron",{
condition_end="achieved(5307)",
description="Defeat the Omnotron Defense System in Blackwing Descent while neutralizing the following attacks.",
},[[
step
map Blackwing Descent/1
path loop off
path	51.2,59.9	58.3,59.7	61.0,57.3
Follow the path, clearing trash as you make your way to the next boss, the Omnotron Defense System |goto 61.0,57.3 < 5 |noway |c
step
You will be able to earn this achievement over the course of multiple lock outs
To earn the portion of the achievement needed, you will need to engage the boss that uses the ability that you are to avoid
_Be sure not to kill them before you fight each of them_
No player hit by Static Shock (Electron) |achieve 5307/1
No player hit by Arcane Annihilator (Arcanotron) |achieve 5307/2
No player hit by Poison Bomb (Toxitron) |achieve 5307/3
No more than one player hit by each Flamthrower (Magmatron) |achieve 5307/4
Earn the Achieve-a-Tron Achievement |achieve 5307 |goto Blackwing Descent/1 65.4,57.4
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Omnotron Defense System Achievement as well.
step
Congratulations, you have earned the Achieve-a-tron Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Silence is Golden",{
condition_end="achieved(5308)",
description="Defeat Atramedes in Blackwing Descent without any raid member's sound bar going over 50%.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	47.44,84.71	57.6,69.5	47.4,53.0
path	47.5,40.9
Follow the path to Atramedes |goto Blackwing Descent/2 47.5,40.9 < 15 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
The best way to earn this achievement will be to DPS it down quickly
You can avoid getting sound by avoiding Atramedes' Area of Effect Abilities
There are Gongs on the side of the room that serve to reset your "Sound" bar, as well as interrupt powerful AoE abilitis from the boss
Use it as needed
If you need more DPS, bring a friend to help
Earn the Silence is Golden Achievement |achieve 5308 |goto Blackwing Descent/2 47.5,32.7
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Atramedes Achievement as well.
step
Congratulations, you  have earned the Silence is Golden Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Aberrant Behavior",{
condition_end="achieved(5310)",
description="Kill 12 Aberrations within 10 seconds on the Maloriak encounter in Blackwing Descent and then defeat Maloriak.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	47.4,88.1	57.6,69.5	65.5,69.7
Follow the path to Maloriak |goto Blackwing Descent/2 65.5,69.7 < 20 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
For this achievement, you will need to DPS Maloriak down to 25% health
Once you do that, enough Aberrations will should spawn to earn the acheivement
Gather all that have spawned, and AoE them down in _under 10 seconds_
Earn the Aberrant Behavior Achievement |achieve 5310 |goto Blackwing Descent/2 71.4,70.2
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Maloriak Achievement as well.
step
Congratulations, you have earned the Aberrant Behavior Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Full of Sound and Fury",{
condition_end="achieved(5309)",
description="Defeat Chimaeron in Blackwing Descent with no more than 2 raid member deaths.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	43.30,83.39	36.7,69.5	28.8,69.7
Follow the path to Chimaeron |goto Blackwing Descent/2 28.8,69.7 < 15 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
For this achievement, you will want to DPS Chimaeron as fast as possible
Having an item level of 580 or high will make you able to easily solo this acheivement
If you  have a pet of any type, you _MUST_ resurrect it before defeating Chimaeron or you won't earn the achievement
Earn the Full of Sound and Fury Achievement |achieve 5309 |goto Blackwing Descent/2 24.5,70.2
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Chimaeron Achievement as well.
step
Congratulations, you have earned the Full of Sound and Fury Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Keeping it in the Family",{
condition_end="achieved(4849)",
description="Damage Nefarian below 50% health before he lands for the final confrontation and then defeat Nefarian in Blackwing Descent.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	36.7,69.5	47.39,57.67
click Orb of Culmination
Follow the path to Nefarian |goto Blackwing Descent/2 47.39,57.67 < 20 |noway |c
Note that you will have to kill the other bosses before you can activate the Nefarian encounter
step
For the first part of this achievement, enter the arena and ignore Onyxia
Next, damage Nefarion to 60% of his health then stop DPS
Then, kill Onyxia
When the magma rises, jump onto a column and kill the add that is there
After that, attack Nefarian, bringing his health to 49% to 25%, but _DO NOT_ kill him or damage him further than 25% health
Allow  him to finish his speech and land, then kill him
Earn the Keeping it in the Family Achievement |achieve 4849 |goto Blackwing Descent/2 48,70.2
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Nefarian Achievement as well.
step
Congratulations, you have earned the Keeping it in the Family Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\The Only Escape",{
condition_end="achieved(5300)",
description="Defeat Halfus Wyrmbreaker after defeating two drakes within 10 seconds of each other. The Emerald Whelp pack counts as one drake for this purpose.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
Follow the path to Halfus Wyrmbreaker |goto The Bastion of Twilight/1 46.6,19.4 < 15 |noway |c
step
For this achievement, you will need to kill two of the dragons that are in the room with Halfus before defeating Halfus himself
To start, pull Halfus
Then, Release a dragon of your choice (There will be 3 of 5 possible present)
Avoid choosing the Whelps if possible unless you have strong AoE!
Release a second dragon of your choice
Then, pull the two dragons together, killing both within 10 seconds of the other
Finally, defeat Halfus
Earn The Only Escape Achievement |achieve 5300 |goto The Bastion of Twilight/1 53.4,19.3
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Halfus Wyrmbreaker Achievement as well.
step
Congratulations, you have earned The Only Escape Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Double Dragon",{
condition_end="achieved(4852)",
description="Kill 6 Twilight Fiends in the Twilight Realm and then defeat Valiona and Theralion in the Bastion of Twilight.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
path	53.7,29.1	53.7,48.9	53.7,68.3
Follow the path to Valiona and Theralion |goto The Bastion of Twilight/1 53.7,68.3 < 15 |noway |c
Note that you will have to have defeated Halfus the Wyrmbreaker to reach this boss
step
For this achievement, you will have to defeat 6 Twilight Fiends within the Twilight Realm
To start, pull Valiona and wait for her to cast Blackout Twice
_Don't damage the boss too much_
Theralion will cast Dazzling Destruction soon after
After Dazzling Destruction, stand in the Shadow Pool that appears, as it will take you into the Shadow Realm
Kill 6 Twilight Fiends as the appear
click Collapsing Twilight Portal
Kill Valiona and Theralion
Earn the Double Dragon Achievement |achieve 4852 |goto The Bastion of Twilight/1 53.9,78.4
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Valiona and Theralion Achievement as well.
step
Congratulations, you have earned the Double Dragon Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Elementary",{
condition_end="achieved(5311)",
description="Defeat the Elementium Monstrosity in the Bastion of Twilight while only allowing it to create a single Liquid Ice patch.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
path	53.7,29.1	53.7,48.9	53.7,68.3
path	53.6,86.7	47.1,92.8
map The Bastion of Twilight/2
path	42.4,18.2
Follow the path to the Twilight Ascendant Council |goto The Bastion of Twilight/2 42.4,18.2 < 15 |noway |c
step
For this achievement, you will need the Elementium Monstrosity to only create one Ice Patch
To start, stand at the center of the room close to the purple area on the floor
Then, pull the boss, damaging both as much as possible
_Note_ that if you defeat one of the bosses both will despawn, so spread your damage as equal as possible
Soon after you defeat the first two, the next two will spawn, repeat the same process
_STAY AT THE CENTER OF THE ROOM!_
Once you defeat the second pair, the final boss will spawn
Once the Elementium Monstrosity appears it will spawn an Ice Patch underneath it
_DO NOT MOVE!_ Kill the boss from where you are standing
Earn the Elementary Achievement |achieve 5311 |goto The Bastion of Twilight/2 42.5,45.5
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Ascendant Council Achievement as well.
step
Congratulations, you have earned the Elementary Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\The Abyss Will Gaze Back Into You",{
condition_end="achieved(5312)",
description="Defeat Cho'gall in the Bastion of Twilight before any raid member earns more than 30% Corrupted Blood.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
path	53.7,29.1	53.7,48.9	53.7,68.3
path	53.6,86.7	47.1,92.8
map The Bastion of Twilight/2
path	42.4,18.2	43.9,75.3	56.6,75.1
Follow the path Cho'gall |goto The Bastion of Twilight/2 56.6,75.1 < 15 |noway |c
step
For this achievement, you will need to defeat Cho'gall before any raid member earns more than 30% Corrupted Blood
The easiest way to do this is to just quickly burn him down
If you have multiple raid members, beware of mind control (This applies to pets as well)
Earn The Abyss Will Gaze Back Into You Achievement |achieve 5312 |goto The Bastion of Twilight/2 73.4,75.4
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Cho'gall Achievement as well.
step
Congratulations, you have earned The Abyss Will Gaze Back Into You Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Stay Chill",{
condition_end="achieved(5304)",
description="Defeat the Conclave of Wind in the Throne of the Four Winds while everyone in the raid has at least 7 stacks of Wind Chill.",
},[[
step
To start, Kill Anshal
Jump to the platform Nezir is on and wait until you have _3 stacks_ of the Wind Chill debuff
_Do NOT attack Nezir yet!_
Jump to the platform Rohash is on and kill hiim
Jump back to Nezir's platform, gaining _6 stacks_ of Wind Chill
_Do NOT attack Nezir yet!_
Let Anshal finish casting Zephyr, then jump to his platform and kill him
Jump Back to Nezir's platform and gain _7 stacks_ of Wind Chill before killing him
Earn the Stay Chill Achievement |achieve 5304 |goto Throne of the Four Winds/1 47.5,26
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Conclave of Wind Achievement as well.
step
Congratulations, you have earned the Stay Chill Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider Achievements\\Four Play",{
condition_end="achieved(5305)",
description="Defeat Al'Akir in the Throne of the Four Winds while he is affected by Feedback.",
},[[
step
To earn this achievement, defeat Al'Akir while he is affected by Feedback
To start, DPS him down until he's at 80% health
Then, wait for him to spawn Stormlings
Drop the boss to 40% health, then kill the Stormling
Kill the Al'Akir
Earn the Four Play Achievement |achieve 5305 |goto Throne of the Four Winds/1 47.5,50
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Al'Akir Achievement as well.
step
Congratulations, you have earned the Four Play Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Death From Above",{
condition_end="achieved(5821)",
description="Only kill Cinderweb Drones while they are atop the web canopy during the Beth'tilac encounter in Firelands.",
},[[
step
map Firelands/1
path loop off
path	33.2,77.0	41.7,70.4	26.00,58.85
path	23.66,51.27	16.23,50.40	16.42,46.26
path	26.20,47.00
Follow the path Beth'tilac |goto Firelands/1 26.20,47.00 < 15 |noway |c
only if not achieved(5821)
step
To start, kill a Cinder Web Spider that's hanging from the roof
Click the web it leaves behind to climb up to the boss
DPS Beth'tilac until it drops down
Avoid using AoE Attacks during the final phase
Kill the boss and earn the achievement
Earn the Death From Above Achievement |achieve 5821 |goto Firelands/1 20.8,32
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Beth'tilac Achievement as well.
step
Congratulations, you have earned the Death From Above Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Not an Ambi-Turner",{
condition_end="achieved(5810)",
description="Defeat Lord Rhyolith in the Firelands without ever causing him to turn left while his armor is intact.",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	64.15,56.84	68.67,62.49
path	69.52,73.56
Follow the path Lord Rhyolith |goto Firelands/1 69.52,73.56 < 15 |noway |c
only if not achieved(5810)
step
To start, you want to DPS his right leg
Burst him dow as fast as you can to earn the achievement
Earn the Not an Ambi-Turner Achievement |achieve 5810 |goto Firelands/1 65.6,75.6
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Lord Rhyolith Achievement as well.
step
Congratulations, you have earned the Not an Ambi-Turner Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Do a Barrel Roll!",{
condition_end="achieved(5813)",
description="Defeat Alysrazor in the Firelands without any raid member getting hit by the following attacks.",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	62.48,51.39
Follow the path to Alysrazor |goto Firelands/1 62.48,51.39 < 15 |noway |c
only if achieved(5813)
step
For this achievement, you will want to gather feathers after Majordomo Staghelms dialogue
Once you gather enough you will start to fly
Follow Alysrazor closely once you take flight
Avoid Incendiary Clouds and kill Alysrazor quickly to earn the achievement
Earn the Do a Barrel Roll! Achievement |achieve 5813 |goto Firelands/1 64,39
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Alysrazor Achievement as well.
step
Congratulations, you  have earned the Do a Barrel Roll! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Bucket List",{
condition_end="achieved(5829)",
description="During a single engagement, bring Shannox to each of the following locations in the Firelands before dispatching him.",
},[[
step
map Firelands/1
path loop off
path	33.1,29.3	32.9,52.8	41.7,70.4
path	56.7,62.5
Follow the path to Shannox |goto Firelands/1 56.7,62.5 < 15 |noway |c
only if achieved(5829)
step
For Shannox to appear, you need to kill trash in the dungeon
He will eventually spawn and patrol the instance
In order to earn this achievement, draw aggro on Shannox while mounted and kite Shannox to the provided locations:
Beth'tilac's Lair |achieve 5829/4 |goto 29.1,62.3
Flamebreachc |achieve 5829/1 |goto 34.1,75.1
The Ridge of Ancient Flame |achieve 5829/5 |goto 61.6,55.9
Shattershow |achieve 5829/3 |goto 61.2,45.4
Path of Corruuption |achieve 5829/2 |goto 34.0,30.8
_Note:_ If you can change to a tank spec, you won't be affected by the stun from the dogs
Earn the Bucket List Achievement |achieve 5829 |goto Firelands/1 49.2,46
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Shannox Achievement as well.
step
Congratulations, you have earned the Bucket List Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Share the Pain",{
condition_end="achieved(5830)",
description="Defeat Baleroc in the Firelands without allowing any member of your raid to suffer Torment more than three times.",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	54.11,49.50	49.24,41.92
Follow the path to Baleroc |goto 49.24,41.92 < 15 |noway |c
only if not achieved(5830)
step
For this achievement, you will need to kill Baleroc without gaining Torment 3 times
To start, when you see Baleroc casting torment, be on the lookout for a large purple pillar
Move at least 15 yards away from it to avoid the shard that will give you the debuff
DPS Baleroc down quickly to avoid any chance of gaining the debuff
Earn the Share the Pain Achievement |achieve 5830 |goto Firelands/1 49.2,32.8
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Baleroc Achievement as well.
step
Congratulations, you have earned the Share the Pain Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Only the Penitent...",{
condition_end="achieved(5799)",
description="Activate both of Fandral's Flames at once in Firelands without any raid member getting hit by Kneel to the Flame!",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	54.11,49.50	49.24,41.92
path	49.18,26.74	49.51,7.53
Cross the bridge to Fandral |goto 49.51,7.53 < 15 |noway |c
only not achieved(5799)
step
To Earn this achievement, you need a group of 6
There will be a Druid of Flame casting a spell called _Kneel to the Flame!_
Set your focus on the Druid of Flame to watch the cast bar
There will be 2 orbs on each side of the druid
Approach it carefully, _stopping completely when Kneel to the Flame! is about to complete_
Click Fandral's Flames at the following locations:
click Fandral's Flames
Orb 1 |goto Firelands/3 48.38,75.06 < 10
Orb 2 |goto 53.31,74.66 < 10
|achieve 5799
step
Congratulations, you have earned the Only the Penitent Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider Achievements\\Heroic: Fandral Staghelm",{
condition_end="achieved(5975)",
description="Activate both of Fandral's Flames at once in Firelands without any raid member getting hit by Kneel to the Flame!",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	54.11,49.50	49.24,41.92
path	49.18,26.74	49.51,7.53
only if not achieved(5975)
step
Kill Fandral Staghelm on Heroic Difficulty
Right click your character portrait and make sure that you are doing Heroic Fireladns
|achieve 5975
step
Congratulations, you have earned the Heroic: Fandral Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Boned (10 player)",{
condition_end="achieved(4534)",
description="Defeat Lord Marrowgar without any raid member remaining impaled for more than 8 seconds in 10-player mode.",
},[[
step
map Icecrown Citadel/1
path loop off
path	38.9,29.2	38.9,36.3	39.0,52.4
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto 39.0,52.4 < 20 |noway |c
step
In order to not be impaled, you should be sure to get hit by it's Bone Slice ability
People who have been hit by that will not be able to be impaled
|achieve 4534 |goto 39.0,52.4
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Boned (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Full House (10 player)",{
condition_end="achieved(4535)",
description="Defeat Lady Deathwhisper with at least five different types of Cultists active at the time of her demise in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat lady Deathwhisper with 5 specifc mobs active:
Deformed Fanatic
Reanimated Fanatic
Reanimated Adherent
Cult Fanatic
Cult Adherent
She will spawn adds every minute from when you begin the encounter, so don't dps her until you see what you need have spawned
If you dps her and send her to phase 2 without having the mobs up, you will not be able to earn the achievement
Defeat Lady Deathwhisper while 5 different type of cultists are active |achieve 4535 |goto Icecrown Citadel/1 38.96,86.68
|tip Set the duneong difficulty to Heroic to earn the Heroic: Lady Deathwhisper Achievement.
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Full House (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\I'm on a Boat (10 player)",{
condition_end="achieved(4536)",
description="Claim victory in the Gunship Battle without any raid member visiting the enemy gunship more than twice in 10-player mode.",
},[[
step
To start, hope in the gun ship as soon as you're able and shoot the horde ship
This achievement is still currently bugged, so as you spam 1 and 2 while in the cannon, you should earn this achievement
|achieve 4536 |goto Icecrown Citadel/2 24.66,55.30
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I'm on a Boat (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\I've Gone and Made a Mess (10 player)",{
condition_end="achieved(4537)",
description="Defeat the Deathbringer before Mark of the Fallen Champion is cast three times in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat the Deathbring beofre Mark of the Fallen Champion is cast 3 times
Just dps him down as it's a race
Defeat the Deathbringer before Mark of the Fallen Champion is cast three times |achieve 4537 |goto Icecrown Citadel/3 51.67,33.35
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I've Gone and Made a Mess Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Flu Shot Shortage (10 player)",{
condition_end="achieved(4577)",
description="Defeat Festergut while none of the players in your raid group ever had 3 stacks of Inoculated in 10-player mode.",
},[[
step
To earn this achievement, you will to defeat Festergut without allowing Inoculated to raise above 2 stacks
When Festergut uses Gas Spore, run away from him until it explodes to avoid being Inoculated, then DPS him down
Defeat Festergut without being Inoculated twice |achieve 4577 |goto Icecrown Citadel/5 19.79,65.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Flu Shot Shortage (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Dances with Oozes(10 player)",{
condition_end="achieved(4538)",
description="Defeat Rotface without a Big Ooze casting Unstable Ooze Explosion in 10-player mode.",
},[[
step
To start, you will need to maximize dps against Rotface to earn this achievement
If you are with multiple people, you can have the additional members kite the oozes away from each other as the spawn
Otherwise, you will have to use all cooldowns available and just burn the boss
|achieve 4538 |goto Icecrown Citadel/5 19.88,42.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the achievement Dances with Oozes(10 player)!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Nausea, Heartburn, Indigestion... (10 player)",{
condition_end="achieved(4578)",
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 10-player mode.",
},[[
step
To earn this achievement, don't drink any of the Ooze provided for the encounter as it will cause you to fail this achievement
|achieve 4578 |goto Icecrown Citadel/5 10.07,53.65
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Nausea, Heartburn, Indigestion... (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\The Orb Whisperer (10 player)",{
condition_end="achieved(4582)",
description="Defeat the Blood Council without anyone in the raid taking more than 23,000 spell damage in a single hit in 10-player mode.",
},[[
step
_Prince Valanar_ casts Empowered Shock Vortex
If you're with multiple people, have someone attack the Kinetic Bombs if you have dots available
_Prince Taldaram_ casts Conjure Empowered Flame, which you will have to run away from if you're the target
If you are with multiple people, stand together with your group members to mitigate some damage
_Prince Keleseth_ casts Empowered Shadow Lance, which damage can be negated by killing Dark Nuclei around the room
Keep around _4 Stacks_ of Shadow Resonance if possible
Defeat the Blood Council without anyone in the raid taking 23,000 or more in one hit |achieve 4582 |goto Icecrown Citadel/5 51.93,12.00
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned The Orb Whisperer (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Once Bitten, Twice Shy (10 player)",{
condition_end="achieved(4539)",
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat Blood-Queen Lana'thel twice:
It will take around 15 seconds for her to activate the Essence of the Blood-Queen debuff
So wait to DPS her if you are looking to get the debuff
|achieve 4539/2 |goto Icecrown Citadel/6 51.13,32.44
If you are wanting to defeat her without becoming a vampire, you may want to bring additional dps to burn her quickly
|achieve 4539/1	|goto Icecrown Citadel/6 51.13,32.44
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned the Once Bitten, Twice Shy (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Portal Jockey (10 player)",{
condition_end="achieved(4579)",
description="Enter every portal spawned by Valithria Dreamwalker before healing her to full health in 10-player mode.",
},[[
step
To start, you will need to be a healer for this achievement
You will need to heal up Valithria Dreamwalker before any Portals appear during the encounter
Enter every portal spawned during the encounter |achieve 4579 |goto Icecrown Citadel/5 76.62,73.26
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the Portal Jockey Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\All You Can Eat (10 player)",{
condition_end="achieved(4580)",
description="Defeat Sindragosa in 10-player mode without any member of your raid receiving more than 5 stacks of Mystic Buffet.",
},[[
step
This achievement is basically a DPS race
You will need to defeat Sidnragosa before anyone gets more than 5 stacks of Mystic Buffet
Defeat Sindragosa without gaining more than 5 stacks of Mystic Buffet |achieve 4580 |goto Icecrown Citadel/4 36.58,20.10
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the All You Can Eat (10 Player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player) Achievements\\Been Waiting a Long Time for This (10 player)",{
condition_end="achieved(4601)",
description="Allow Necrotic Plague to stack to 30 before defeating the Lich King in 10-player mode.",
},[[
step
_You need a pet or another player in order to earn this achievement!_
To start, begin the Lich King encounter, but be sure _not_ to damage him to 70 percent health or below
Eventually, you will notice Necrotic Plague on you
Being hit will stop the plague from building, so you will need to run away from adds
The Lich King will get a buff called Plague Siphon
Once he gets 30 stacks of Plague Siphon, Burn him down to Earn the achievmeent
Defeat the Lich King having allowed a stack of Necrotic Plague to reach 30 |achieve 4601 |goto Icecrown Citadel/7 48.15,60.23
step
Congratualtions, you have earned the Been Waiting a Long Time for This (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Orbit-uary (10 player)",{
condition_end="achieved(3056)",
description="Defeat Flame Leviathan with all 4 Orbital Defense Systems active in 10-player mode.",
},[[
step
talk Lore Keeper of Norgannon##33686 |goto Ulduar/1 52.64,88.26
Tell him "Activate the second defense system."
map Ulduar/1
path loop off; dist 20
path	50.03,71.16	49.73,56.07	49.00,42.60
Make your way through the Iron Concourse and reach the Flame Leviathan |goto 49.00,42.60 |noway |c
only if not achieved(2923)
step
For this achievement, you will need to defeat the Flame LEviathan with all defense systems active
Climb into a Salvaged Demolishers and head towards the boss, destroying a few towers on the path towards him
Once you get to the boss, spam you siege attacks
If your vehicle is destroyed, it shouldn't be too much of a problem, though you may end up needing self sufficient healing
If your vehicle ends up being destroyed, make sure that you never hold still or you'll be stunned
|achieve 3056 |goto Ulduar/1 49,40
step
Congratulations, you have earned the Orbit-uary (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Stokin' the Furnace (10 player)",{
condition_end="achieved(3056)",
description="Defeat Ignis the Furnace Master in 4 minutes in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
only if not achieved(3056)
step
This achievement is simple at level cap, simply DPS Ignis down in under 4 minutes
|achieve 2930 |goto Ulduar/1 37.5,26.5
step
Congratulations, you have earned the Stokin' the Furnace (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Iron Dwarf, Medium Rare (10 player)",{
condition_end="achieved(2923)",
description="Defeat 25 Dark Rune Guardian Dwarves with Razorscale's Flame Breath in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
only if not achieved(2923)
step
To start, ignore the Harpoon guns
You will need a powerful AoE
You can kill the large enemies, but leave the smaller ones alone for now
Once you have about 25 to 30 enemies on you, use the Harpoon Gun on Razorscale
Wait for Razorscale to start casting Flame BReath and as soon as it hits, use your AoE attack
|achieve 2923 |goto Ulduar/1 54.1,26.3
only if not achieved(2923)
step
Congratualtions, you have earned the Iron Dwarf, Medium Rare (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Heartbreaker (10 player)",{
condition_end="achieved(3058)",
description="Defeat XT-002 Deconstructor after destroying his heart in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
only if not achieved(3058)
step
To start, engage XT-002
Be sure to do very slow dps at first
Avoid using DoTs as you can accidentally kill it
Once you take it down to 75 percent of it's health, the heart will pop out
Kill the heart, then XT-002
|achieve 3058 |goto Ulduar/1 48.5,13.9
step
Congratulations, you have earned the Heartbreaker (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\I Choose You, Steelbreaker (10 player)",{
condition_end="achieved(2941)",
description="Defeat the Assembly of Iron with Steelbreaker as the last member alive in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(2941)
step
map Ulduar/2
path loop off; dist 20
path	37.20,48.71	27.66,30.15	17.15,30.68
path	15.51,41.96
Enter the Assembly of Iron |goto 15.51,41.96 |noway |c
only if not achieved(2941)
step
For this, kill Stormcaller Brundir, then Runemaster Molgeim then finally, Steelbreaker
|achieve 2941 |goto Ulduar/2 15,56
step
Congratulations, you have earned the I Choose You, Steelbreaker (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Disarmed (10 player)",{
condition_end="achieved(2953)",
description="Destroy both of Kologarn's arms and then Kologarn himself within 12 seconds in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(2953)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
Follow the path to Kologarn |goto Ulduar/2 37.06,18.31 |noway |c
only if not achieved(2953)
step
To start, DPS Kologarn's body until he's at about 25 percent health
_Make sure not to attack his arms at all while you do this!_
Once he's at the 25 percent mark, kill his Left Arm, then his Right Arm
Finish the boss off immidiately after
|achieve 2953 |goto Ulduar/2 37.3,14.0
step
Congratulations, you have earned the Disarmed (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Crazy Cat Lady (10 player)",{
condition_end="achieved(3006)",
description="Defeat Auriaya without destroying her Sanctum Sentries in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3006)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15
Follow the path to Auriaya |goto Ulduar/3 52.90,74.15 |noway |c
only if not achieved(3006)
step
For this achievement, simply avoid using any AoE and kill Auriaya
|achieve 3006 |goto Ulduar/3 52.90,74.15
step
Congratulations, you have earned the Crazy Cat Lady (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Knock, Knock, Knock on Wood (10 player)",{
condition_end="achieved(3179)",
description="Defeat Freya while leaving all 3 Elders alive in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3179)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	56.66,68.68	55.82,61.33
path	51.28,56.78	51.72,38.40	52.26,29.14
Follow the path to Freya |goto 52.26,29.14 |noway |c
only if not achieved(3179)
step
For this achievement, Kill Freya without killing the following enemies:
Elder Brightleaf
Elder Stonebark
Ironbranch
Go directly to Freya and just single target DPS her down
|achieve 3179 |goto Ulduar/3 53,23
step
Congratulations, you have earned the Knock, Knock, Knock on Wood (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Lose Your Illusion (10 player)",{
condition_end="achieved(3176)",
description="Defeat Thorim while Sif is present in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3176)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	56.66,68.68	55.82,61.33
path	59.45,51.49	65.59,48.56
Follow the path to Thorim |goto 65.59,48.56 |noway |c
only if not achieved(3176)
step
To start, kill the enemies inside of the room
After killing the initial enemies, click the lever at the provided location
click Lever
map Ulduar/3
path	loop off; dist 20
path	69.04,43.15	69.21,38.08	75.23,38.11
path	81.65,38.20	82.21,43.61	81.44,48.29
path	78.03,50.41	74.00,50.19	71.46,48.60
path	70.32,48.82
Run down the corridor kill mobs quickly
Reach the end of the hallway and jump down fast or it will reset the fight
Kill Thorim
|achieve 3176
step
Congratulations, you have earned the Lose Your Illusion (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\I Could Say That This Cache Was Rare (10 player)",{
condition_end="achieved(3182)",
description="Defeat Hodir before he shatters his rare cache in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3182)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	57.89,72.18	63.79,77.03
path	73.14,79.13	75.93,76.98	75.09,71.80
path	73.75,64.55	70.97,63.85
Enter the Halls of Winter |goto 70.97,63.85 |noway |c
only if not achieved(3182)
step
To earn this achievement, you need to kill Hodir within 3 minutes
Pop all cooldowns that increase your damage and defeat Hodir
|achieve 3182 |goto Ulduar/3 66.0,63.7
step
Congratulations, you have earned the I Could Say That This Cache Was Rare (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\Firefighter (10 player)",{
condition_end="achieved(3180)",
description="Defeat Mimiron after activating his Self-Destruct mechanism in 10-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/5
path	43.65,62.19
click Ulduar Teleporter
Teleport to The Spark of Imaginations |goto Ulduar/5 43.65,62.19 |noway |c
only if not achieved(3180)
step
map Ulduar/5
path loop off; dist 20
path	43.63,59.52	43.59,54.10	43.67,45.36
Follow the path to Mimiron |goto 43.67,45.36 |noway |c
only if not achieved(3180)
step
To earn this achievement, you will have to press a big red button at the back of the room before engaging Mimiron
Once you've clicked it, wait for his dialogue then kill him
|achieve 3180 |goto Ulduar/5 43.6,41.1
step
Congratulations, you have earned the Firefighter (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\I Love the Smell of Saronite in the Morning (10 player)",{
condition_end="achieved(3181)",
description="Defeat General Vezax after defeating the Saronite Animus in 10-player mode.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/3
path	51.02,54.02
Teleport to the Conservatory of Life |goto Ulduar/3 51.02,54.02 |noway |c
only if not achieved(3181)
step
map Ulduar/3
path loop off; dist 20
path	48.88,58.35	45.96,62.22	45.45,68.77
path	42.70,73.55	34.89,74.44
map Ulduar/4
path	33.82,51.62	27.85,50.21	28.71,58.83
path	35.66,67.97	41.56,65.68
Follow the path to General Vezax |goto 41.56,65.68 |noway |c
only if not achieved(3181)
step
To start, engage General Vezax without dpsing him too much
He will spawn Saronite Vapors, and eventually when there are enough he will absorb them
When that happens, a Saronite Animus will spawn
Kill the Saronite Animus, then General Vazax
|achieve 3181 |goto Ulduar/4 52.6,57.1
step
Congratulations, you have earned the I Love the Smell of Saronite in the Morning (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (10 Player) Achievements\\One Light in the Darkness (10 player)",{
condition_end="achieved(3158)",
description="Defeat Yogg-Saron with the assistance of one or fewer Keepers in 10-player mode.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/4
path	66.62,60.05
Teleport to the Prison of Yogg-Saron |goto 66.62,60.05 |noway |c
only if not achieved(3158)
step
To earn this achievement, simply defeat Yogg-Saron with the aid of one keeper or fewer
If you do use a keeper, we would suggest that you speak with Freya.
|achieve 3158 |goto Ulduar/4 68,40.8
step
Congratulations, you have earned the One Light in the Darkness (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\The Twilight Zone, Gonna Go When the Volcano Blows (10 player)",{
condition_end="achieved(2051) and achieved(2047)",
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2051 |goto The Obsidian Sanctum/0 50.26,47.34
|achieve 2047 |goto The Obsidian Sanctum/0 50.26,47.34
step
Congratulations, you have earned The Twilight Zone and Gonna Go When the Volcano Blows (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\The Dedicated Few (10 player)",{
condition_end="achieved(578)",
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
Kill the following bosses while in a raid group of 8 or less:
|tip Note that this achievement is soloable!
Anub'Rekhan |acheive 578/1
Heigan the Unclean |acheive 578/2
Instructor Razuvious |acheive 578/3
Gothik the Harvester |acheive 578/4
Sapphiron |acheive 578/5
Gluth |acheive 578/6
Thaddius |acheive 578/7
Noth the Plaguebringer |acheive 578/8
Laotheb |acheive 578/9
Kel'thuzad |acheive 578/10
Patchwerk |acheive 578/11
Grabbulus |acheive 578/12
Grand Widow Faerlina |acheive 578/13
Maexxna |acheive 578/14
step
Congratulations, you have earned The Dedicated Few (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\Make Quick Werk of Him (10 player)",{
condition_end="achieved(1856)",
description="Defeat Patchwerk in Naxxramas in 3 minutes or less in 10-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61
Follow the path through the Construct Quarter |goto 53.61,76.61 < 20 |noway |c
only if not achieved(1856)
step
To earn this achievement, defeat Patchwerk within the 3 mintue mark
|achieve 1856 |goto 45.88,70.09
|tip Patchwerk patrols along the path here.
step
Congratulations, you have earned the Make Quick Werk of Him Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\Subtraction, Shocking!(10 player)",{
condition_end="achieved(2180) and achieved(2178)",
description="Defeat Thaddius in Naxxramas with less than 9 players in 10-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61	47.17,60.43
path	51.03,54.41	54.49,40.95	57.37,40.87
path	64.04,52.60
Follow the path |goto 64.04,52.60 < 20 |noway |c
only if not achieved(2180) or achieved(2178)
step
map Naxxramas/1
path	loop off;dist 20
path	67.80,54.59	60.98,57.30	58.99,60.29
path	57.81,61.37	50.38,50.03	42.04,37.99
path	34.49,26.60
Follow the path to the Halls of Reanimation |goto 34.49,26.60 < 20 |noway |c
only if not achieved(2180) or achieved(2178)
step
Defeat Thaddius while in a raid group consisting of 8 or less players
Burn Thaddius as fast as you can to earn the Shocking! achievement
|achieve 2180 |goto 26.38,14.66
|achieve 2178 |goto 26.38,14.66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\Arachnophobia, Momma Said Knock You Out (10 player)",{
condition_end="achieved(1858) and achieved(1997)",
description="Defeat Maexxna in Naxxramas within 20 minutes of Anub'Rekhan's death in 10-player mode.",
},[[
step
map Naxxramas/2
path loop off;dist 20
path	30.91,77.57	32.99,64.88	30.60,56.82
Follow the path to Anub'Rekhan |goto 30.60,56.82 < 15 |noway |c
only if not achieved(1997) and not achieved(1858)
step
Once you kill Anub'Rekhan, you will have 20 minutes to reach Maexxna |goto 30.78,45.89
confirm
only if not achieved(1997) and not achieved(1858)
step
map Naxxramas/2
path loop off;dist 20
path	30.69,56.72	32.88,64.58	39.53,64.50
path	46.26,54.62	50.17,49.22	53.01,46.44
path	50.96,39.77	49.46,36.83
Follow the path to Grand Widow Faerlina |goto 49.46,36.83 < 15 |noway |c
only if not achieved(1997) and not achieved(1858)
step
For this achievement, simply kill the Grand Widow Faerlina without touching any adds
Again, make sure you _don't touch the adds!_
Take off any items that might cause AoE damage
|achieve 1997
only if not achieved(1997) and not achieved(1858)
step
map Naxxramas/2
path loop off;dist 20
path	50.74,40.11	53.89,47.49	57.53,53.55
path	59.50,67.94	62.63,70.86	67.89,62.26
path	67.91,51.71	64.38,36.56	64.16,26.40
Follow the path to Maexxna |goto 64.16,26.40 < 15 |noway |c
only if not achieved(1997) and not achieved(1858)
step
Simply kill Maexxna within the allotted time
|achieve 1858
step
Congratulations, you have earned the Arachnophobia and Momma Said Knock You Out Achievements!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\Saftey Dance(10 player)",{
condition_end="achieved(1996)",
description="Defeat Heigan the Unclean in Naxxramas without anyone in the raid dying in 10 player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(1996)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Follow the path to Heigan the Unclean |goto 49.88,39.52 < 15 |noway |c
only if not achieved(1996)
step
For this achievement, simply jump up onto the platform Heigan is standing on and kill him
|achieve 1996 |goto Naxxramas/4 51.46,42.98
step
Congratulations, you have earned the Saftey Dance (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\Spore Loser(10 player)",{
condition_end="achieved(2182)",
description="Defeat Loatheb in Naxxramas without killing any spores in 10-player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(2182)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Kill Heigan the Unclean |goto Naxxramas/4 51.46,42.98 < 15 |noway |c
only if not achieved(2182)
step
map Naxxramas/4
path loop off;dist 20
path	54.60,45.74	57.24,36.98	60.47,28.42
path	71.73,28.44
Follow the path into the  Necrotic Vault |goto 71.73,28.44 < 15 |noway |c
only if not achieved(2182)
step
To earn this achievement, simply dps Loatheb, ignoring any spores that may spawn
_Avoid using AoE_
|achieve 2182 |goto Naxxramas/4 75.40,28.38
step
Congratulations, you have earned the Spore Loser (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\And They Would All Go Down Together (10 player)",{
condition_end="achieved(2184)",
description="Defeat the 4 Horsemen in Naxxramas, ensuring that they all die within 15 seconds of each other in 10-player mode.",
},[[
step
map Naxxramas/5
path loop off;dist 20
path	51.41,52.47
map Naxxramas/3
path	63.64,26.43	54.38,32.35	50.25,44.75
Follow the path down |goto 50.25,44.75 < 20 |noway |c
only if not achieved(2184)
step
map Naxxramas/3
path loop off;dist 20
path	52.71,40.58	42.66,39.69	42.66,46.18
Kill Instructor Razuvious |goto 42.66,46.18 < 15 |noway |c
only if not achieved(2184)
step
map Naxxramas/3
path loop off;dist 20
path	42.83,51.71	54.96,49.40	58.02,43.77
path	66.31,44.77
Kill Gothik the Harvester |goto 66.84,57.37 < 20 |noway |c
only if not achieved(2184)
step
map Naxxramas/3
path loop off;dist 20
path	62.47,63.05	57.64,72.24	48.62,72.30
path	41.99,67.30	36.44,67.95
Follow the path to the Four Horsemen |goto 36.44,67.95 < 15 |noway |c
only if not achieved(2184)
step
This achievement is easiest earned with 4 other friends to kill the horsemen relatively quickly
If you are doing it solo however, get aggro on the Horsemen and use the alter to line of sight the casters so that they come to you
Pull the two melee to Lady Blaumeux and AoE the 3 Horsemen down |goto Naxxramas/3 30.18,83.77
Then, run to Sir Zeliek and kill him quickly |goto Naxxramas/3 26.12,77.65
Try as best you can to get them together and use powerful AoEs to kill them
|achieve 2184
step
Congratulations, you have earned the And They Would All Go Down Together (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\The Hundred Club (10 player)",{
condition_end="achieved(2146)",
description="Defeat Sapphiron in Naxxramas without any member of the raid having a frost resist value over 100 in 10-player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2146)
step
With the resistance stat being removed, you will earn this achievement no matter what simply by killing Sapphiron
|achieve 2146 |goto Naxxramas/6 60.10,68.33
step
Congratulations, you have earned the The Hundred Club (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\Just Can't Get Enough (10 player)",{
condition_end="achieved(2184)",
description="Defeat Kel'Thuzad in Naxxramas while killing at least 18 abominations in his chamber in 10 player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2184)
step
map Naxxramas/6
path loop off;dist 20
path	45.36,64.29	36.29,56.32	34.06,42.13
Follow the path to Kel'Thuzad's Chamber |goto 34.06,42.13 < 10 |noway |c
only if not achieved(2184)
step
To start, don't dps Kel'Thuzad
Instead, stand at the center of the room
Kill 18 Unstoppable Abomination before even touching Kel'Thuzad
Keep in mind, if you leave the green circle, it could cause Kel'Thuzad to despawn
That said, _you absolutely NEED ranged dps_ in order to pull the Abominations or they will despawn near the time Kel'Thuzad attacks
|achieve 2184 |goto Naxxramas/6 36.64,22.76
step
Congratulations, you have earned the Just Can't Get Enough (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)\\You Don't Have an Eternity, A Poke in the Eye, Denying the Scion, The Spellweaver's Downfall (10 player)",{
condition_end="achieved(622) and achieved(1869) and achieved(2180) and achieved(2148)",
description="Defeat Malygos in 6 minutes or less in 10-player mode.",
},[[
step
For this achievement, you will need to kill Malygos in under 6 minutes
Target Power Sparks as they spawn and kill them, standing in what's left over for a DPS boost
Pop cooldowns and do as much damage as you can before he switches phases
During phase 2, kill a Scion of Eternity and hop on one of the discs that they leave behind
Once on one, kill a Scion of Eternity again to earn an addition achievement
The goal is to dps him enough so that when entering phase 3, he will have very low health if he's not already defeated
_Also, invite a friend and turn the party into a raid with less than 8 people to earn A Poke in the Eye (10 player)
|achieve 2148 |goto The Eye of Eternity/1 37.83,50.10
|achieve 2180 |goto The Eye of Eternity/1 37.83,50.10
|achieve 1869 |goto The Eye of Eternity/1 37.83,50.10
|achieve 622 |goto The Eye of Eternity/1 37.83,50.10
step
Congratulation, you have earned the You Don't Have an Eternity, A Poke in the Eye, Denying the Scion, The Spellweaver's Downfall(10 player) Achievements!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Don't Stand So Close To Me",{
condition_end="achieved(6174)",
description="Defeat Morchok in Dragon Soul on Normal or Heroic Difficulty without any two players (three players on 25-player mode) ever being within 5 yards of each other while Morchok is channeling Black Blood of the Earth.",
},[[
step
If you go in solo on this encounter, you will earn the achievement upon killing the boss
If you are playing with others, stand 6 yards apart
If you kill the boss within a minute, you will be able to earn the achievement before he casts Black Blood of the Earth
|achieve 6174 |goto Dragon Soul/1 50.69,69.90
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Morchok Achievement.
step
Congratulations, you have earned the Don't Stand So Close To Me Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Taste the Rainbow!",{
condition_end="achieved(6129) and achieved(6111)",
description="Experience the following color combinations, and then defeat Yor'sahj the Unsleeping on Normal or Heroic Difficulty.",
},[[
step
talk Eiendormi##57288 |goto Dragon Soul/1 51.24,59.28
Fly into the Maw of Shu'ma |goto Dragon Soul/3 55.38,79.72 < 10 |noway |c
only if not achieved(6129)
step
Every couple of minutes, Yor'sahj will summon 4 Globules
There are 4 combinations that you wil need to keep an eye out for below
Since the game doesn't properly track which you have seen together during the encounter, you will need to keep track of which buffs he gains
Experience the following Globule Combinations:
Black and Yellow |achieve 6129/1 |goto Dragon Soul/3 45.29,53.86
Red and Green |achieve 6129/2 |goto Dragon Soul/3 45.29,53.86
Black and Blue |achieve 6129/3 |goto Dragon Soul/3 45.29,53.86
Purple and Yellow |achieve 6129/4 |goto Dragon Soul/3 45.29,53.86
|achieve 6111
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Yor'sahj Achievement.
step
Congratulations, you have earned the Taste the Rainbow! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Ping Pong Champion",{
condition_end="achieved(6128) and achieved(6110)",
description="Bounce the Void of the Unmaking 10 times off of players, and then defeat Warlord Zon'ozz on Normal or Heroic Difficulty.",
},[[
step
talk Valeera##57289 |goto Dragon Soul/1 49.16,58.99
Fly into the Maw Go'rath |goto Dragon Soul/2 32.66,45.49 < 10 |noway |c
_You will need a tanking pet or another player in order to earn this achievement!_
only if not achieved(6128)
step
For this achievement, have a player or your pet gain aggro on Warlord Zon'ozz, doing very little damage to it
Once they have gathered sufficient aggro, stop all dps or set your pet to passive
If you aren't tanking the boss, be sure to move to the direction the boss is facing
Eventually, Zon'ozz will cast Void of the Unmaking, causing a ball to spawn
You will need to bounce the ball 10 times, while avoiding sending it towards the boss
_If it hits the boss, it will disappear and you will have to try again!_
|achieve 6128 |goto Dragon Soul/2 48.47,55.43
|achieve 6110 |goto Dragon Soul/2 48.47,55.43
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Warlord Zon'ozz Achievement.
step
Congratulations, you have earned the Ping Pong Champ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Heroic: Hagara the Stormbinder",{
condition_end="achieved(6112) and achieved(6113)",
description="Defeat Ultraxion in Dragon Soul on Normal or Heroic Difficulty without any raid member being hit by Hour of Twilight more than once.",
},[[
step
Set the Raid Difficulty to Heroic before entering the raid
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 10 |noway |c
step
click Travel to the Eye of Eternity |goto Dragon Soul/1 50.69,60.60 < 10
Enter the Eye of Eternity |goto Dragon Soul/4 52.43,23.43 < 20 |noway |c
step
Defeat the waves of enemies that appear, then Hagara when She jumps off her disc
kill Hagara the Stormbinder##55689
|achieve 6112 |goto Dragon Soul/4 51.68,50.01
|achieve 6113 |goto Dragon Soul/4 51.68,50.01
step
Congatulations, you have earned the Heroic: Hagara the Stormbinder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Minutes to Midnight",{
condition_end="achieved(6084)",
description="Defeat Ultraxion in Dragon Soul on Normal or Heroic Difficulty without any raid member being hit by Hour of Twilight more than once.",
},[[
step
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 5 |noway |c
step
talk Kalecgos##56664 |goto Dragon Soul/1 50.41,59.47
Talk to Kalecgos to start the encounter
|tip You will have to have cleared the previous bosses in order to access this one.
After a bit, talk to _Thrall_
You should be able to kill Ultraxion before he even casts one Hour of Twilight
|achieve 6084 |goto Dragon Soul/1 50.10,57.02
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Ultraxion Achievement.
step
Congratulations, you have earned the Minutes to Midnight Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Deck Defender",{
condition_end="achieved(6105) and achieved(6114)",
description="Defeat Warmaster Blackhorn on Normal or Heroic Difficulty without allowing any Twilight Barrages to damage the Skyfire.",
},[[
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 5 |noway |c
step
Follow the path to the Battleship
talk Sky Captain Swayze##55870 |goto Dragon Soul/1 48.94,54.79 < 20
|tip You will have to have cleared the previous bosses in order to access the Battleship encounter.
Board the ship
|confirm
step
talk Sky Captain Swayze##55870
Find the achievement in your list and track it immidiately
It is important to watch the text to see if it turns red
If the text is red you have failed and should reset the fight
_To start, kill drakes as they come into range_, this is the most important part!
When a giant swirl appears on the ship, stand in it to absorb the damage
When Blackhorn lands on the ship, burn him down as fast as possible
|achieve 6105
|achieve 6114
step
Congratulations, you have earned the Deck Defender Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Maybe He'll Get Dizzy...",{
condition_end="achieved(6133)",
description="Defeat the Spine of Deathwing encounter on Normal or Heroic Difficulty after tricking Deathwing into performing the following roll sequence: Left, Right, Left, Right.",
},[[
step
talk Sky Captain Swayze##55870
|tip He's near the ship's cabin.
To earn this Achievement, you will have to make Deathwing roll Left, Right, Left, then Right again
Kill all tentacles in the lava pools to cause Corrupted Blood to spawn
Look at your map and move to a magma pool at a lower pool of the map (the left)
_Stay in the pool to not be flung off of Deathwing during the roll!_
After the first roll, move to the top pool of the map (the right)
_Again, stay in the pool to not be flung off of Deathwing during the roll!_
Repeat the process again
Once he has rolled left right left right, move to the literal left side of the map
For this portion you will need him to stop rolling, so when you see the yellow text appear, immidiatelly move to the other Lava Pool, staying on the left side
_You will have 3 seconds to move from one to the other!_
Stack corrupted blood as usual, so that the Abberations have 9 counts of Corrupted Blood before killing them against the wall on the left
|achieve 6133
step
Congratulations, you have earned the Maybe He'll Get Dizzy Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider\\Chromatic Champion",{
condition_end="achieved(6180)",
description="Destroy Deathwing in Dragon Soul on Normal or Heroic Difficulty after beginning the encounter on each Aspect's platform and allowing Deathwing to assault that Aspect:",
},[[
step
Note that it will take 4 lockouts to earn this achievement if you haven't done this before
confirm
step
To earn this achievement, start by jumping between the 2 platforms and gaining 2 stacks of the speed buff
Then, talk to Thrall and start the encounter
_Move as fast as you can to the fourth platform where Alexstrasza is!_ |only if not achieved(6180,1)
If you made it in time, you will see a message about Deathwing Assaulting Alexstrazsa |only if not achieved(6180,1)
Wait for the Mutation to case Impale at least 2 times |only if not achieved(6180,1)
Destroy the arm and move on |only if not achieved(6180,1)
Jump to Nozdomu's platform and repeat the process, only attacking after Deathwing has began assaulting Ysera |only if not achieved(6180,3)
Destroy the arm then move to Ysera's platform |only if not achieved(6180,4)
Wait for Deathwing to assault Ysera, wait for impale, then destroy the arm |only if not achieved(6180,4)
Finally, jump to Kalecgos' platform|only if not achieved(6180,2)
Wait for impale, then destroy the arm|only if not achieved(6180,2)
Once you have done so, kill Deathwing for the acheivement
|achieve 6180/1
|achieve 6180/2
|achieve 6180/3
|achieve 6180/4
step
Congratulations, you have earned the Chromatic Champion Acheiveemnt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Boned (25 player)",{
condition_end="achieved(4610)",
description="Defeat Lord Marrowgar without any raid member remaining impaled for more than 8 seconds in 25-player mode.",
},[[
step
map Icecrown Citadel/1
path loop off
path	38.9,29.2	38.9,36.3	39.0,52.4
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto 39.0,52.4 <5 |noway |c
step
In order to not be impaled, you should be sure to get hit by it's Bone Slice ability
People who have been hit by that will not be able to be impaled |achieve 4610 |goto 39.0,52.4
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Boned (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Full House (25 player)",{
condition_end="achieved(4611)",
description="Defeat Lady Deathwhisper with at least five different types of Cultists active at the time of her demise in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat lady Deathwhisper with 5 specifc mobs active:
Deformed Fanatic
Reanimated Fanatic
Reanimated Adherent
Cult Fanatic
Cult Adherent
She will spawn adds every minute from when you begin the encounter, so don't dps her until you see what you need have spawned
If you dps her and send her to phase 2 without having the mobs up, you will not be able to earn the achievement
Defeat Lady Deathwhisper while 5 different type of cultists are active |achieve 4611 |goto Icecrown Citadel/1 38.96,86.68
|tip Set the duneong difficulty to Heroic to earn the Heroic: Lady Deathwhisper Achievement.
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Full House (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\I'm on a Boat (25 player)",{
condition_end="achieved(4612)",
description="Claim victory in the Gunship Battle without any raid member visiting the enemy gunship more than twice in 25-player mode.",
},[[
step
To start, hope in the gun ship as soon as you're able and shoot the horde ship
This achievement is still currently bugged, so as you spam 1 and 2 while in the cannon, you should earn this achievement
|achieve 4612 |goto Icecrown Citadel/2 66.50,55.34
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I'm on a Boat (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\I've Gone and Made a Mess (25 player)",{
condition_end="achieved(4613)",
description="Defeat the Deathbringer before Mark of the Fallen Champion is cast five times in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat the Deathbring beofre Mark of the Fallen Champion is cast 3 times
Just dps him down as it's a race
Defeat the Deathbringer before Mark of the Fallen Champion is cast three times |achieve 4613 |goto Icecrown Citadel/3 51.67,33.35
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I've Gone and Made a Mess Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Flu Shot Shortage (25 player)",{
condition_end="achieved(4615)",
description="Defeat Festergut while none of the players in your raid group ever had 3 stacks of Inoculated in 25-player mode.",
},[[
step
To earn this achievement, you will to defeat Festergut without allowing Inoculated to raise above 3 stacks
When Festergut uses Gas Spore, run away from him until it explodes to avoid being Inoculated, then DPS him down
Defeat Festergut without being Inoculated twice |achieve 4615 |goto Icecrown Citadel/5 19.79,65.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Flu Shot Shortage (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Dances with Oozes(25 player)",{
condition_end="achieved(4614)",
description="Defeat Rotface without a Big Ooze casting Unstable Ooze Explosion in 25-player mode.",
},[[
step
To start, you will need to maximize dps against Rotface to earn this achievement
If you are with multiple people, you can have the additional members kite the oozes away from each other as the spawn
Otherwise, you will have to use all cooldowns available and just burn the boss
|achieve 4614 |goto Icecrown Citadel/5 19.88,42.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the achievement Dances with Oozes(25 player)!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Nausea, Heartburn, Indigestion... (25 player)",{
condition_end="achieved(4616)",
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 25-player mode.",
},[[
step
To earn this achievement, don't drink any of the Ooze provided for the encounter as it will cause you to fail this achievement
|achieve 4616 |goto Icecrown Citadel/5 10.07,53.65
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Nausea, Heartburn, Indigestion... (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\The Orb Whisperer (25 player)",{
condition_end="achieved(4617)",
description="Defeat the Blood Council without anyone in the raid taking more than 25,000 spell damage in a single hit in 25-player mode.",
},[[
step
_Prince Valanar_ casts Empowered Shock Vortex
If you're with multiple people, have someone attack the Kinetic Bombs if you have dots available
_Prince Taldaram_ casts Conjure Empowered Flame, which you will have to run away from if you're the target
If you are with multiple people, stand together with your group members to mitigate some damage
_Prince Keleseth_ casts Empowered Shadow Lance, which damage can be negated by killing Dark Nuclei around the room
Keep around _4 Stacks_ of Shadow Resonance if possible
Defeat the Blood Council without anyone in the raid taking 25,000 or more in one hit |achieve 4617 |goto Icecrown Citadel/5 51.93,12.00
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned The Orb Whisperer (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Once Bitten, Twice Shy (25 player)",{
condition_end="achieved(4618)",
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat Blood-Queen Lana'thel twice:
It will take around 15 seconds for her to activate the Essence of the Blood-Queen debuff
So wait to DPS her if you are looking to get the debuff
|achieve 4618/2 |goto Icecrown Citadel/6 51.13,32.44
If you are wanting to defeat her without becoming a vampire, you may want to bring additional dps to burn her quickly
|achieve 4618/1	|goto Icecrown Citadel/6 51.13,32.44
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned the Once Bitten, Twice Shy (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Portal Jockey (25 player)",{
condition_end="achieved(4619)",
description="Enter every portal spawned by Valithria Dreamwalker before healing her to full health in 25-player mode.",
},[[
step
To start, you will need to be a healer for this achievement
You will need to heal up Valithria Dreamwalker before any Portals appear during the encounter
Enter every portal spawned during the encounter |achieve 4619 |goto Icecrown Citadel/5 76.62,73.26
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the Portal Jockey (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\All You Can Eat (25 player)",{
condition_end="achieved(4620)",
description="Defeat Sindragosa in 25-player mode without any member of your raid receiving more than 5 stacks of Mystic Buffet.",
},[[
step
This achievement is basically a DPS race
You will need to defeat Sidnragosa before anyone gets more than 5 stacks of Mystic Buffet
Defeat Sindragosa without gaining more than 5 stacks of Mystic Buffet |achieve 4620 |goto Icecrown Citadel/4 36.58,20.10
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the All You Can Eat (25 Player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player) Achievements\\Been Waiting a Long Time for This (25 player)",{
condition_end="achieved(4621)",
description="Allow Necrotic Plague to stack to 30 before defeating the Lich King in 25-player mode.",
},[[
step
_You need a pet or another player in order to earn this achievement!_
To start, begin the Lich King encounter, but be sure _not_ to damage him to 70 percent health or below
Eventually, you will notice Necrotic Plague on you
Being hit will stop the plague from building, so you will need to run away from adds
The Lich King will get a buff called Plague Siphon
Once he gets 30 stacks of Plague Siphon, Burn him down to Earn the achievmeent
Defeat the Lich King having allowed a stack of Necrotic Plague to reach 30 |achieve 4621 |goto Icecrown Citadel/7 48.15,60.23
step
Congratualtions, you have earned the Been Waiting a Long Time for This (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Orbit-uary (25 player)",{
condition_end="achieved(3057)",
description="Defeat Flame Leviathan with all 4 Orbital Defense Systems active in 25-player mode.",
},[[
step
talk Lore Keeper of Norgannon##33686
Tell him "Activate the second defense system." |goto Ulduar/1 52.64,88.26
map Ulduar/1
path loop off; dist 20
path	50.03,71.16	49.73,56.07	49.00,42.60
Make your way through the Iron Concourse and reach the Flame Leviathan |goto 49.00,42.60 |noway |c
only if not achieved(3057)
step
For this achievement, you will need to defeat the Flame Leviathan with all defense systems active
Climb into a Salvaged Demolishers and head towards the boss, destroying a few towers on the path towards him
Once you get to the boss, spam you siege attacks
If your vehicle is destroyed, it shouldn't be too much of a problem, though you may end up needing self sufficient healing
If your vehicle ends up being destroyed, make sure that you never hold still or you'll be stunned
|achieve 3057 |goto Ulduar/1 49,40
step
Congratulations, you have earned the Orbit-uary (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Stokin' the Furnace (25 player)",{
condition_end="achieved(2929)",
description="Defeat Ignis the Furnace Master in 4 minutes in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
only if not achieved(2929)
step
This achievement is simple at level cap, simply DPS Ignis down in under 4 minutes
|achieve 2929 |goto Ulduar/1 37.5,26.5
step
Congratulations, you have earned the Stokin' the Furnace (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Iron Dwarf, Medium Rare (25 player)",{
condition_end="achieved(2924)",
description="Defeat 25 Dark Rune Guardian Dwarves with Razorscale's Flame Breath in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
only if not achieved(2924)
step
To start, ignore the Harpoon guns
You will need a powerful AoE
You can kill the large enemies, but leave the smaller ones alone for now
Once you have about 25 to 30 enemies on you, use the Harpoon Gun on Razorscale
Wait for Razorscale to start casting Flame BReath and as soon as it hits, use your AoE attack
|achieve 2923 |goto Ulduar/1 54.1,26.3
only if not achieved(2924)
step
Congratualtions, you have earned the Iron Dwarf, Medium Rare (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Heartbreaker (25 player)",{
condition_end="achieved(3059)",
description="Defeat XT-002 Deconstructor after destroying his heart in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
only if not achieved(3059)
step
To start, engage XT-002
Be sure to do very slow dps at first
Avoid using DoTs as you can accidentally kill it
Once you take it down to 75 percent of it's health, the heart will pop out
Kill the heart, then XT-002
|achieve 3059 |goto Ulduar/1 48.5,13.9
step
Congratulations, you have earned the Heartbreaker (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\I Choose You, Steelbreaker (25 player)",{
condition_end="achieved(2944)",
description="Defeat the Assembly of Iron with Steelbreaker as the last member alive in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(2944)
step
map Ulduar/2
path loop off; dist 20
path	37.20,48.71	27.66,30.15	17.15,30.68
path	15.51,41.96
Enter the Assembly of Iron |goto 15.51,41.96 |noway |c
only if not achieved(2944)
step
For this, kill Stormcaller Brundir, then Runemaster Molgeim then finally, Steelbreaker
|achieve 2944 |goto Ulduar/2 15,56
step
Congratulations, you have earned the I Choose You, Steelbreaker (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Disarmed (25 player)",{
condition_end="achieved(2954)",
description="Destroy both of Kologarn's arms and then Kologarn himself within 12 seconds in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(2954)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
Follow the path to Kologarn |goto Ulduar/2 37.06,18.31 |noway |c
only if not achieved(2954)
step
To start, DPS Kologarn's body until he's at about 25 percent health
_Make sure not to attack his arms at all while you do this!_
Once he's at the 25 percent mark, kill his Left Arm, then his Right Arm
Finish the boss off immidiately after
|achieve 2954 |goto Ulduar/2 37.3,14.0
step
Congratulations, you have earned the Disarmed (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Crazy Cat Lady (25 player)",{
condition_end="achieved(3007)",
description="Defeat Auriaya without destroying her Sanctum Sentries in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3007)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15
Follow the path to Auriaya |goto Ulduar/3 52.90,74.15 |noway |c
only if not achieved(3007)
step
For this achievement, simply avoid using any AoE and kill Auriaya
|achieve 3007 |goto Ulduar/3 52.90,74.15
step
Congratulations, you have earned the Crazy Cat Lady (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Knock, Knock, Knock on Wood (25 player)",{
condition_end="achieved(3187)",
description="Defeat Freya while leaving all 3 Elders alive in 25 player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3187)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	56.66,68.68	55.82,61.33
path	51.28,56.78	51.72,38.40	52.26,29.14
Follow the path to Freya |goto 52.26,29.14 |noway |c
only if not achieved(3187)
step
For this achievement, Kill Freya without killing the following enemies:
Elder Brightleaf
Elder Stonebark
Ironbranch
Go directly to Freya and just single target DPS her down
|achieve 3187 |goto Ulduar/3 53,23
step
Congratulations, you have earned the Knock, Knock, Knock on Wood (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Lose Your Illusion (25 player)",{
condition_end="achieved(3183)",
description="Defeat Thorim while Sif is present in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3183)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	56.66,68.68	55.82,61.33
path	59.45,51.49	65.59,48.56
Follow the path to Thorim |goto 65.59,48.56 |noway |c
only if not achieved(3183)
step
To start, kill the enemies inside of the room
After killing the initial enemies, click the lever at the provided location
click Lever
map Ulduar/3
path	loop off; dist 20
path	69.04,43.15	69.21,38.08	75.23,38.11
path	81.65,38.20	82.21,43.61	81.44,48.29
path	78.03,50.41	74.00,50.19	71.46,48.60
path	70.32,48.82
Run down the corridor kill mobs quickly
Reach the end of the hallway and jump down fast or it will reset the fight
Kill Thorim
|achieve 3183
step
Congratulations, you have earned the Lose Your Illusion (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\I Could Say That This Cache Was Rare (25 player)",{
condition_end="achieved(3184)",
description="Defeat Hodir before he shatters his rare cache in 25 player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3184)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	57.89,72.18	63.79,77.03
path	73.14,79.13	75.93,76.98	75.09,71.80
path	73.75,64.55	70.97,63.85
Enter the Halls of Winter |goto 70.97,63.85 < 25 |noway |c
only if not achieved(3184)
step
To earn this achievement, you need to kill Hodir within 3 minutes
Pop all cooldowns that increase your damage and defeat Hodir
|achieve 3184 |goto Ulduar/3 66.0,63.7
step
Congratulations, you have earned the I Could Say That This Cache Was Rare (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\Firefighter (25 player)",{
condition_end="achieved(3189)",
description="Defeat Mimiron after activating his Self-Destruct mechanism in 25-player mode.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/5
path	43.65,62.19
click Ulduar Teleporter
Teleport to The Spark of Imaginations |goto Ulduar/5 43.65,62.19 |noway |c
only if not achieved(3189)
step
map Ulduar/5
path loop off; dist 20
path	43.63,59.52	43.59,54.10	43.67,45.36
Follow the path to Mimiron |goto 43.67,45.36 |noway |c
only if not achieved(3189)
step
To earn this achievement, you will have to press a big red button at the back of the room before engaging Mimiron
Once you've clicked it, wait for his dialogue then kill him
|achieve 3189 |goto Ulduar/5 43.6,41.1
step
Congratulations, you have earned the Firefighter (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\I Love the Smell of Saronite in the Morning (25 player)",{
condition_end="achieved(3188)",
description="Defeat General Vezax after defeating the Saronite Animus in 25 player mode.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/3
path	51.02,54.02
Teleport to the Conservatory of Life |goto Ulduar/3 51.02,54.02 |noway |c
only if not achieved(3188)
step
map Ulduar/3
path loop off; dist 20
path	48.88,58.35	45.96,62.22	45.45,68.77
path	42.70,73.55	34.89,74.44
map Ulduar/4
path	33.82,51.62	27.85,50.21	28.71,58.83
path	35.66,67.97	41.56,65.68
Follow the path to General Vezax |goto 41.56,65.68 |noway |c
only if not achieved(3188)
step
To start, engage General Vezax without dpsing him too much
He will spawn Saronite Vapors, and eventually when there are enough he will absorb them
When that happens, a Saronite Animus will spawn
Kill the Saronite Animus, then General Vazax
|achieve 3188 |goto Ulduar/4 52.6,57.1
step
Congratulations, you have earned the I Love the Smell of Saronite in the Morning (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider (25 Player) Achievements\\One Light in the Darkness (25 player)",{
condition_end="achieved(3163)",
description="Defeat Yogg-Saron with the assistance of one or fewer Keepers in 25-player mode.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/4
path	66.62,60.05
Teleport to the Prison of Yogg-Saron |goto 66.62,60.05 |noway |c
only if not achieved(3163)
step
To earn this achievement, simply defeat Yogg-Saron with the aid of one keeper or fewer
If you do use a keeper, we would suggest that you speak with Freya.
|achieve 3163 |goto Ulduar/4 68,40.8
step
Congratulations, you have earned the One Light in the Darkness (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\The Twilight Zone, Gonna Go When the Volcano Blows (25 player)",{
condition_end="achieved(2051) and achieved(2047)",
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2051 |goto The Obsidian Sanctum/0 50.26,47.34
|achieve 2047 |goto The Obsidian Sanctum/0 50.26,47.34
step
Congratulations, you have earned The Twilight Zone and Gonna Go When the Volcano Blows (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\The Dedicated Few (25 player)",{
condition_end="achieved(579)",
description="Defeat the bosses of Naxxramas with less than 21 people in the zone in 25-player mode.",
},[[
step
Kill the following bosses while in a raid group of 21 or less:
|tip Note that this achievement is soloable!
Anub'Rekhan |acheive 579/1
Heigan the Unclean |acheive 579/2
Instructor Razuvious |acheive 579/3
Gothik the Harvester |acheive 579/4
Sapphiron |acheive 579/5
Gluth |acheive 579/6
Thaddius |acheive 579/7
Noth the Plaguebringer |acheive 579/8
Laotheb |acheive 579/9
Kel'thuzad |acheive 579/10
Patchwerk |acheive 579/11
Grabbulus |acheive 579/12
Grand Widow Faerlina |acheive 579/13
Maexxna |acheive 579/14
step
Congratulations, you have earned The Dedicated Few (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\Make Quick Werk of Him (25 player)",{
condition_end="achieved(1857)",
description="Defeat Patchwerk in Naxxramas in 3 minutes or less in 25-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61
Follow the path through the Construct Quarter |goto 53.61,76.61 < 20 |noway |c
only if not achieved(1857)
step
To earn this achievement, defeat Patchwerk within the 3 mintue mark
|achieve 1857 |goto 45.88,70.09
|tip Patchwerk patrols along the path here.
step
Congratulations, you have earned the Make Quick Werk of Him Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\Subtraction, Shocking!(25 player)",{
condition_end="achieved(2181) and achieved(2179)",
description="Defeat Thaddius in Naxxramas with less than 21 players in 25-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61	47.17,60.43
path	51.03,54.41	54.49,40.95	57.37,40.87
path	64.04,52.60
Follow the path |goto 64.04,52.60 < 20 |noway |c
only if not achieved(2181) or achieved(2179)
step
map Naxxramas/1
path	loop off;dist 20
path	67.80,54.59	60.98,57.30	58.99,60.29
path	57.81,61.37	50.38,50.03	42.04,37.99
path	34.49,26.60
Follow the path to the Halls of Reanimation |goto 34.49,26.60 < 20 |noway |c
only if not achieved(2181) or achieved(2179)
step
Defeat Thaddius while in a raid group consisting of 21 or less players
Burn Thaddius as fast as you can to earn the Shocking! achievement
|achieve 2181 |goto 26.38,14.66
|achieve 2179 |goto 26.38,14.66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\Arachnophobia, Momma Said Knock You Out (25 player)",{
condition_end="achieved(1859) and achieved(2140)",
description="Defeat Maexxna in Naxxramas within 20 minutes of Anub'Rekhan's death in 25-player mode.",
},[[
step
map Naxxramas/2
path loop off;dist 20
path	30.91,77.57	32.99,64.88	30.60,56.82
Follow the path to Anub'Rekhan |goto 30.60,56.82 < 15 |noway |c
only if not achieved(2140) and not achieved(1859)
step
Once you kill Anub'Rekhan, you will have 20 minutes to reach Maexxna |goto 30.78,45.89
confirm
only if not achieved(2140) and not achieved(1859)
step
map Naxxramas/2
path loop off;dist 20
path	30.69,56.72	32.88,64.58	39.53,64.50
path	46.26,54.62	50.17,49.22	53.01,46.44
path	50.96,39.77	49.46,36.83
Follow the path to Grand Widow Faerlina |goto 49.46,36.83 < 15 |noway |c
only if not achieved(2140) and not achieved(1859)
step
For this achievement, simply kill the Grand Widow Faerlina without touching any adds
Again, make sure you _don't touch the adds!_
Take off any items that might cause AoE damage
|achieve 2140
only if not achieved(2140) and not achieved(1859)
step
map Naxxramas/2
path loop off;dist 20
path	50.74,40.11	53.89,47.49	57.53,53.55
path	59.50,67.94	62.63,70.86	67.89,62.26
path	67.91,51.71	64.38,36.56	64.16,26.40
Follow the path to Maexxna |goto 64.16,26.40 < 15 |noway |c
only if not achieved(2140) and not achieved(1859)
step
Simply kill Maexxna within the allotted time
|achieve 1859
step
Congratulations, you have earned the Arachnophobia and Momma Said Knock You Out Achievements!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\Safety Dance(25 player)",{
condition_end="achieved(2139)",
description="Defeat Heigan the Unclean in Naxxramas without anyone in the raid dying in 25 player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(2139)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Follow the path to Heigan the Unclean |goto 49.88,39.52 < 15 |noway |c
only if not achieved(2139)
step
For this achievement, simply jump up onto the platform Heigan is standing on and kill him
|achieve 2139 |goto Naxxramas/4 51.46,42.98
step
Congratulations, you have earned the Safety Dance (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\Spore Loser (25 player)",{
condition_end="achieved(2183)",
description="Defeat Loatheb in Naxxramas without killing any spores in 25-player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(2183)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Kill Heigan the Unclean |goto Naxxramas/4 51.46,42.98 < 15 |noway |c
only if not achieved(2183)
step
map Naxxramas/4
path loop off;dist 20
path	54.60,45.74	57.24,36.98	60.47,28.42
path	71.73,28.44
Follow the path into the  Necrotic Vault |goto 71.73,28.44 < 15 |noway |c
only if not achieved(2183)
step
To earn this achievement, simply dps Loatheb, ignoring any spores that may spawn
_Avoid using AoE_
|achieve 2183 |goto Naxxramas/4 75.40,28.38
step
Congratulations, you have earned the Spore Loser (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\And They Would All Go Down Together (25 player)",{
condition_end="achieved(2177)",
description="Defeat the 4 Horsemen in Naxxramas, ensuring that they all die within 15 seconds of each other in 25-player mode.",
},[[
step
map Naxxramas/5
path loop off;dist 20
path	51.41,52.47
map Naxxramas/3
path	63.64,26.43	54.38,32.35	50.25,44.75
Follow the path down |goto 50.25,44.75 < 20 |noway |c
only if not achieved(2177)
step
map Naxxramas/3
path loop off;dist 20
path	52.71,40.58	42.66,39.69	42.66,46.18
Kill Instructor Razuvious |goto 42.66,46.18 < 15 |noway |c
only if not achieved(2177)
step
map Naxxramas/3
path loop off;dist 20
path	42.83,51.71	54.96,49.40	58.02,43.77
path	66.31,44.77
Kill Gothik the Harvester |goto 66.84,57.37 < 20 |noway |c
only if not achieved(2177)
step
map Naxxramas/3
path loop off;dist 20
path	62.47,63.05	57.64,72.24	48.62,72.30
path	41.99,67.30	36.44,67.95
Follow the path to the Four Horsemen |goto 36.44,67.95 < 15 |noway |c
only if not achieved(2177)
step
This achievement is easiest earned with 4 other friends to kill the horsemen relatively quickly
If you are doing it solo however, get aggro on the Horsemen and use the alter to line of sight the casters so that they come to you
Pull the two melee to Lady Blaumeux and AoE the 3 Horsemen down |goto Naxxramas/3 30.18,83.77
Then, run to Sir Zeliek and kill him quickly |goto Naxxramas/3 26.12,77.65
Try as best you can to get them together and use powerful AoEs to kill them
|achieve 2177
step
Congratulations, you have earned the And They Would All Go Down Together (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\The Hundred Club (25 player)",{
condition_end="achieved(2147)",
description="Defeat Sapphiron in Naxxramas without any member of the raid having a frost resist value over 100 in 25-player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2147)
step
With the resistance stat being removed, you will earn this achievement no matter what simply by killing Sapphiron
|achieve 2147 |goto Naxxramas/6 60.10,68.33
step
Congratulations, you have earned the The Hundred Club (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\Just Can't Get Enough (25 player)",{
condition_end="achieved(2185)",
description="Defeat Kel'Thuzad in Naxxramas while killing at least 18 abominations in his chamber in 25 player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2185)
step
map Naxxramas/6
path loop off;dist 20
path	45.36,64.29	36.29,56.32	34.06,42.13
Follow the path to Kel'Thuzad's Chamber |goto 34.06,42.13 < 10 |noway |c
only if not achieved(2185)
step
To start, don't dps Kel'Thuzad
Instead, stand at the center of the room
Kill 18 Unstoppable Abomination before even touching Kel'Thuzad
Keep in mind, if you leave the green circle, it could cause Kel'Thuzad to despawn
That said, _you absolutely NEED ranged dps_ in order to pull the Abominations or they will despawn near the time Kel'Thuzad attacks
|achieve 2185 |goto Naxxramas/6 36.64,22.76
step
Congratulations, you have earned the Just Can't Get Enough (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\You Don't Have an Eternity, A Poke in the Eye, Denying the Scion, The Spellweaver's Downfall (25 player)",{
condition_end="achieved(1394) and achieved(1870) and achieved(623) and achieved(1875)",
description="Defeat Malygos in 6 minutes or less in 25-player mode.",
},[[
step
For this achievement, you will need to kill Malygos in under 6 minutes
Target Power Sparks as they spawn and kill them, standing in what's left over for a DPS boost
Pop cooldowns and do as much damage as you can before he switches phases
During phase 2, kill a Scion of Eternity and hop on one of the discs that they leave behind
Once on one, kill a Scion of Eternity again to earn an addition achievement
The goal is to dps him enough so that when entering phase 3, he will have very low health if he's not already defeated
_Also, invite a friend and turn the party into a raid with less than 8 people to earn A Poke in the Eye (10 player)
|achieve 1875 |goto The Eye of Eternity/1 37.83,50.10
|achieve 623 |goto The Eye of Eternity/1 37.83,50.10
|achieve 1870 |goto The Eye of Eternity/1 37.83,50.10
|achieve 1394 |goto The Eye of Eternity/1 37.83,50.10
step
Congratulation, you have earned the You Don't Have an Eternity, A Poke in the Eye, Denying the Scion, The Spellweaver's Downfall(10 player) Achievements!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)\\The Twilight Zone, Gonna Go When the Volcano Blows (25 player)",{
condition_end="achieved(2054) and achieved(2047)",
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2054 |goto The Obsidian Sanctum/0 50.26,47.34
|achieve 2047 |goto The Obsidian Sanctum/0 50.26,47.34
step
Congratulations, you have earned The Twilight Zone and Gonna Go When the Volcano Blows (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Eastern Kingdoms\\Explore Eastern Kingdoms",{
condition_end="achieved(42) and achieved(4868)",
achieveid={4825,4864,4866,775,761,765,766,775,627,778,772,779,780,768,859,774,769,858,781,4995,782,773,802,841,777,770,771,868,776},
description="Explore the regions of Eastern Kingdoms.",
},[[
step
This guide is optimized for flying
|tip You can do this without a flying mount, but it will be much more efficient with one.
confirm
step
label "start"
_Click here_ to explore Arathi Highlands |achieve 761 |confirm |next "arathi"
_Click here_ to explore Badlands |achieve 765 |confirm |next "badlands"
_Click here_ to explore Blasted Lands |achieve 766 |confirm |next "blasted"
_Click here_ to explore Burning Steppes |achieve 775 |confirm |next "burning"
_Click here_ to explore Deadwind Pass |achieve 777 |confirm |next "deadwind"
_Click here_ to explore Deepholm |achieve 4864 |confirm |next "deepholm"
_Click here_ to explore Dun Morogh |achieve 627 |confirm |next "dun"
_Click here_ to explore Duskwood |achieve 778 |confirm |next "duskwood"
_Click here_ to explore Eastern Plaguelands |achieve 771 |confirm |next "e_plague"
_Click here_ to explore Elwynn Forest |achieve 776 |confirm |next "elwynn"
_Click here_ to explore Eversong Woods |achieve 859 |confirm |next "eversong"
_Click here_ to explore Ghostlands |achieve 858 |confirm |next "ghost"
_Click here_ to explore Hillsbrad Foothills |achieve 772 |confirm |next "hillsbrad"
_Click here_ to explore Isle of Quel'Danas |achieve 868 |confirm |next "isle_q"
_Click here_ to explore Loch Modan |achieve 779 |confirm |next "loch"
_Click here_ to explore Northern Stranglethorn |achieve 781 |confirm |next "n_strangle"
_Click here_ to explore Redridge Mountains |achieve 780 |confirm |next "redridge"
_Click here_ to explore Searing Gorge |achieve 774 |confirm |next "searing"
_Click here_ to explore Silverpine Forest |achieve 769 |confirm |next "silver"
_Click here_ to explore Swamp of Sorrows |achieve 782 |confirm |next "swamp"
_Click here_ to explore The Cape of Stranglethorn |achieve 4995 |confirm |next "strangle"
_Click here_ to explore The Hinterlands |achieve 773 |confirm |next "hinterlands"
_Click here_ to explore Tirisfal Glades |achieve 768 |confirm |next "tirisfal"
_Click here_ to explore Twilight Highlands |achieve 4866 |confirm |next "twilight"
_Click here_ to explore Vashj'ir |achieve 4825 |confirm |next "vashj'ir"
_Click here_ to explore Westfall |achieve 802 |confirm |next "westfall"
_Click here_ to explore Western Plaguelands |achieve 770 |confirm |next "w_plague"
_Click here_ to explore Wetlands |achieve 841 |confirm |next "wetlands"
_OR_
_Click here_ to complete Zygor's suggested path through all of the above zones |confirm |next |or
stickystart "stickyreturn"
step
label "deepholm"
_Skipping_ to the next part of guide |next "+vashj'ir" |only if step:Find("+deepholm1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Needlerock Slag |achieve 4864/7 |goto Deepholm 21.7,47.7
step
_Discover_ Stonehearth |achieve 4864/1 |goto Deepholm 26.3,69.5
step
_Discover_ The Quaking Fields |achieve 4864/10 |goto Deepholm 35.2,80.3
step
_Discover_ Masters' Gate |achieve 4864/4 |goto Deepholm 39.2,69.1
step
label	"deepholm1"
_Explore_ Deepholm |achieve 4864
step
label	"vashj'ir"
_Skipping_ to the next part of guide |next "+strangle" |only if step:Find("+vashj'ir1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"vashj'ir1"
_Explore_ Vashj'ir |achieve 4825
step
label	"strangle"
_Skipping_ to the next part of guide |next "+n_strangle" |only if step:Find("+strangle1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"strangle1"
_Explore_ The Cape of Stranglethorn |achieve 4995
step
label	"n_strangle"
_Skipping_ to the next part of guide |next "+westfall" |only if step:Find("+n_strangle1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Fort Livingston |achieve 781/16 |goto Northern Stranglethorn 53.2,66.0
step
_Discover_ Balia'mah Ruins |achieve 781/6 |goto Northern Stranglethorn 59.0,55.2
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
label	"n_strangle1"
_Explore_ Northern Stranglethorn |achieve 781 |goto Northern Stranglethorn
step
label	"westfall"
_Skipping_ to the next part of guide |next "+duskwood" |only if step:Find("+westfall1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ The Dagger Hills |achieve 802/2 |goto Westfall 44.9,82.0
step
_Discover_ The Dust Plains |achieve 802/9 |goto Westfall 65.55,70.95
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
_Discover_ the Dead Acre |achieve 802/4 |goto Westfall 61.5,59.2
step
label	"westfall1"
_Explore_ Westfall |achieve 802
step
label	"duskwood"
_Skipping_ to the next part of guide |next "+deadwind" |only if step:Find("+duskwood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Twilight Grove |achieve 778/10 |goto Duskwood 46.8,38.6
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
label	"duskwood1"
_Explore_ Duskwood |achieve 778
step
label	"deadwind"
_Skipping_ to the next part of guide |next "+blasted" |only if step:Find("+deadwind1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Deadman's Crossing |achieve 777/1 |goto Deadwind Pass 45.1,35.8
step
_Discover_ Karazhan |achieve 777/2 |goto Deadwind Pass 42.6,68.8
step
_Discover_ The Vice |achieve 777/3 |goto Deadwind Pass 58.6,64.7
step
label	"deadwind1"
_Explore_ Deadwind Pass |achieve 777
step
label	"blasted"
_Skipping_ to the next part of guide |next "+swamp" |only if step:Find("+blasted1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Dreadmaul Hold |achieve 766/12 |goto Blasted Lands 39.5,12.9
step
_Discover_ Rise of the Defiler |achieve 766/8 |goto Blasted Lands 45.1,26.7
step
_Discover_ Dreadmaul Post |achieve 766/5 |goto Blasted Lands 47.1,40.1
step
_Discover_ The Dark Portal |achieve 766/4 |goto Blasted Lands 54.4,52.9
step
_Discover_ The Tainted Scar |achieve 766/6 |goto Blasted Lands 32.3,45.7
step
_Discover_ The Tainted Forest |achieve 766/13 |goto Blasted Lands 34.2,72.3
step
_Discover_ Surwich |achieve 766/11 |goto Blasted Lands 44.5,86.1
step
_Discover_ Sunveil Excursion |achieve 766/10 |goto Blasted Lands 50.7,70.9
step
_Discover_ The Red Reaches |achieve 766/14 |goto Blasted Lands 65.8,78.0
step
_Discover_ Shattershore |achieve 766/9 |goto Blasted Lands 69.1,33.5
step
_Discover_ Serpent's Coil |achieve 766/1 |goto Blasted Lands 60.3,28.4
step
_Discover_ Nethergare Keep |achieve 766/7 |goto Blasted Lands 64.3,15.8
step
label	"blasted1"
_Explore_ Blasted Lands |achieve 766
step
label	"swamp"
_Skipping_ to the next part of guide |next "+redridge" |only if step:Find("+swamp1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"swamp1"
_Explore_ Swamp of Sorrows |achieve 782
step
label	"redridge"
_Skipping_ to the next part of guide |next "+elwynn" |only if step:Find("+redridge1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Alther's Mill |achieve 780/6 |goto Redridge Mountains 47.2,39.2
step
_Discover_ Render's Camp |achieve 780/5 |goto Redridge Mountains 35.1,12.8
step
_Discover_ Redridge Canyons |achieve 780/11 |goto Redridge Mountains 30.2,26.1
step
_Discover_ Lakeshire |achieve 780/3 |goto Redridge Mountains 25.5,43.4
step
_Discover_ Three Corners |achieve 780/4 |goto Redridge Mountains 19.7,59.1
step
label	"redridge1"
_Explore_ Redridge Mountains |achieve 780
step
label	"elwynn"
_Skipping_ to the next part of guide |next "+burning" |only if step:Find("+elwynn1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"elwynn1"
_Explore_ Elwynn Forest |achieve 776
step
label	"burning"
_Skipping_ to the next part of guide |next "+badlands" |only if step:Find("+burning1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"burning1"
_Explore_ Burning Steppes |achieve 775
step
label	"badlands"
_Skipping_ to the next part of guide |next "+searing" |only if step:Find("+badlands1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Bloodwatcher Point |achieve 765/7 |goto Badlands 52.3,51.2
step
label	"badlands1"
_Explore_ Badlands |achieve 765
step
label	"searing"
_Skipping_ to the next part of guide |next "+dun" |only if step:Find("+searing1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Blackrock Mountain |achieve 774/7 |goto Searing Gorge 39.9,82.9
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
label	"searing1"
_Explore_ Searing Gorge |achieve 774
step
label	"dun"
_Skipping_ to the next part of guide |next "+loch" |only if step:Find("+dun1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"dun1"
_Explore_ Dun Morogh |achieve 627
step
label	"loch"
_Skipping_ to the next part of guide |next "+twilight" |only if step:Find("+loch1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Valley of Kings |achieve 779/6 |goto Loch Modan 20.3,78.5
step
_Discover_ Stonesplinter Valley |achieve 779/5 |goto Loch Modan 32.5,78.3
step
_Discover_ Grizzlepaw Ridge |achieve 779/1 |goto Loch Modan 38.0,60.7
step
_Discover_ Ironband's Excavation Site |achieve 779/9 |goto Loch Modan 69.4,65.3
step
_Discover_ The Farstrider Lodge |achieve 779/8 |goto Loch Modan 82.3,65.0
step
_Discover_ Mo'grosh Stronghold |achieve 779/2 |goto Loch Modan 71.0,23.8
step
_Discover_ Thelsamar |achieve 779/4 |goto Loch Modan 35.2,47.6
step
_Discover_ North Gate Pass |achieve 779/7 |goto Loch Modan 20.2,17.1
step
_Discover_ Silver Stream Mine |achieve 779/11 |goto Loch Modan 34.8,21.5
step
_Discover_ Stonewrought Dam |achieve 779/10 |goto Loch Modan 48.0,11.4
step
label	"loch1"
_Explore_ Loch Modan |achieve 779
step
label	"twilight"
_Skipping_ to the next part of guide |next "+wetlands" |only if step:Find("+twilight1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Obsibian Forest |achieve 4866/3 |goto Twilight Highlands 64.4,78.9
step
_Discover_ Twilight Shore |achieve 4866/19 |goto Twilight Highlands 71.0,70.9
step
_Discover_ Discover Highbank |achieve 4866/10 |goto Twilight Highlands 80.7,76.8
step
_Discover_ Dragonmaw Port |achieve 4866/8 |goto Twilight Highlands 76.0,53.0
step
_Discover_ Firebeards's Patrol |achieve 4866/15 |goto Twilight Highlands 59.9,57.0
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
label	"twilight1"
_Explore_ Twilight Highlands |achieve 4866
step
label	"wetlands"
_Skipping_ to the next part of guide |next "+arathi" |only if step:Find("+wetlands1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Raptor Ridge |achieve 841/10 |goto Wetlands 67.9,34.9
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
label	"wetlands1"
_Explore_ Wetland |achieve 841
step
label	"arathi"
_Skipping_ to the next part of guide |next "+hillsbrad" |only if step:Find("+arathi1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Galen's Fall |achieve 761/1 |goto Arathi Highlands 13.0,36.4
step
label	"arathi1"
_Explore_ Arathi Highlands |achieve 761
step
label	"hillsbrad"
_Skipping_ to the next part of guide |next "+silver" |only if step:Find("+hillsbrad1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Durnholde Keep |achieve 772/10 |goto Hillsbrad Foothills 68.3,60.0
step
_Discover_ Chillwind Point |achieve 772/24 |goto Hillsbrad Foothills 68.1,32.9
step
_Discover_ Strahnbrad |achieve 772/15 |goto Hillsbrad Foothills 58.3,23.4
step
_Discover_ Nethander Stead |achieve 772/26 |goto Hillsbrad Foothills 57.51,74.96
step
_Discover_ The Uplands |achieve 772/23 |goto Hillsbrad Foothills 52.4,12.6
step
_Discover_ Dandred's Fold |achieve 772/9 |goto Hillsbrad Foothills 44.9,9.1
step
_Discover_ Ruins of Alterac |achieve 772/14 |goto Hillsbrad Foothills 45.3,29.0
step
_Discover_ Growless Cave |achieve 772/6 |goto Hillsbrad Foothills 43.2,38.5
step
_Discover_ Sofera's Naze |achieve 772/16 |goto Hillsbrad Foothills 55.6,38.5
step
_Discover_ Tarren Mill |achieve 772/21 |goto Hillsbrad Foothills 56.7,46.9
step
_Discover_ Corrahn's Dagger |achieve 772/12 |goto Hillsbrad Foothills 49.6,46.7
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
_Discover_ Azurlode Mine |achieve 772/2 |goto Hillsbrad Foothills 34.0,73.8
step
_Discover_ Purgation Isle |achieve 772/13 |goto Hillsbrad Foothills 27.0,85.6
step
label	"hillsbrad1"
_Explore_ Hillsbrad Foothills |achieve 772
step
label	"silver"
_Skipping_ to the next part of guide |next "+tirisfal" |only if step:Find("+silver1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"silver1"
_Explore_ Silverpine Forest |achieve 769
step
label	"tirisfal"
_Skipping_ to the next part of guide |next "+w_plague" |only if step:Find("+tirisfal1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"tirisfal1"
_Explore_ Tirisfal Glades |achieve 768
step
label	"w_plague"
_Skipping_ to the next part of guide |next "+hinterlands" |only if step:Find("+w_plague1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Sorrow Hill |achieve 770/8 |goto Western Plaguelands 54.6,85.5
step
_Discover_ Caer Darrow |achieve 770/10 |goto Western Plaguelands 68.3,81.1
step
label	"w_plague1"
_Explore_ Western Plaguelands |achieve 770
step
label	"hinterlands"
_Skipping_ to the next part of guide |next "+e_plague" |only if step:Find("+hinterlands1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Aerie Peak |achieve 773/2 |goto The Hinterlands 13.9,45.0
step
_Discover_ Plaguemist Ravine |achieve 773/13 |goto The Hinterlands 23.1,33.5
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
label	"hinterlands1"
_Explore_ The Hinterlands |achieve 773
step
label	"e_plague"
_Skipping_ to the next part of guide |next "+ghost" |only if step:Find("+e_plague1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Darrowshire |achieve 771/1 |goto Eastern Plaguelands 35.1,84.2
step
_Discover_ The Undercroft |achieve 771/13 |goto Eastern Plaguelands 24.0,78.8
step
_Discover_ The Marris Stead |achieve 771/23 |goto Eastern Plaguelands 22.6,66.0
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
label	"e_plague1"
_Explore_ Eastern Plaguelands |achieve 771
step
label	"ghost"
_Skipping_ to the next part of guide |next "+eversong" |only if step:Find("+ghost1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label	"ghost1"
_Explore_ Ghostlands |achieve 858
step
label	"eversong"
_Skipping_ to the next part of guide |next "+isle_q" |only if step:Find("+eversong1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ The Scorched Grove |achieve 859/17 |goto Eversong Woods 36.2,86.0
step
_Discover_ Runestone Falithas |achieve 859/9 |goto Eversong Woods 44.1,85.8
step
_Discover_ Runestone Shan'dor |achieve 859/10 |goto Eversong Woods 55.8,84.2
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
_Discover_ The Scorched Grove |achieve 859/17 |goto Eversong Woods 36.2,86.0
step
label	"eversong1"
_Explore_ Eversong Woods |achieve 859
step
label	"isle_q"
_Skipping_ to the next part of guide |next "+end" |only if step:Find("+isle_q1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
label	"isle_q1"
_Explore_ Isle of Quel'Danas |achieve 868 |goto Isle of Quel'Danas 47.4,30.6
step "stickyreturn"
_Click here_ at anytime to return to the checklist |next "start"
step
label	"end"
Congratulations, you have _earned_ the _Explore Eastern Kingdoms_ Achievement! |only if achieved(42)
Congratulations, you have _earned_ the _Explore Cataclysm_ Achievement! |only if achieved(4868)
Congratulations, you have _earned_ the _World Explorer_ Achievement! |only if achieved(46)
You _have not_ explored all of Eastern Kingdoms yet |only if not achieved(42)
|confirm |next "start" |only if not achieved(42)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Kalimdor\\Explore Kalimdor",{
condition_end="achieved(43) and achieved(4868)",
achieveid={46,4868,4863,4865,728,736,842,860,750,857,4996,844,861,845,846,847,848,850,849,851,852,853,854,855,856},
description="Explore the regions of Kalimdor.",
},[[
step
This guide is optimized for flying
|tip You can do this without a flying mount, but it will be much more efficient with one
|confirm
step
label "start"
_Click here_ to explore Ashenvale |achieve 845 |confirm |next "ashenvale"
_Click here_ to explore Azshara |achieve 852 |confirm |next "azshara"
_Click here_ to explore Azuremyst Isle |achieve 860 |confirm |next "azure"
_Click here_ to explore Bloodmyst Isle |achieve 861 |confirm |next "blood"
_Click here_ to explore Darkshore |achieve 844 |confirm |next "darkshore"
_Click here_ to explore Desolace |achieve 848 |confirm |next "desolace"
_Click here_ to explore Durotar |achieve 728 |confirm |next "durotar"
_Click here_ to explore Dustwallow Marsh |achieve 850 |confirm |next "dustwallow"
_Click here_ to explore Felwood |achieve 853 |confirm |next "felwood"
_Click here_ to explore Feralas |achieve 849 |confirm |next "feralas"
_Click here_ to explore Moonglade |achieve 855 |confirm |next "moon"
_Click here_ to explore Mount Hyjal |achieve 4863 |confirm |next "hyjal"
_Click here_ to explore Mulgore |achieve 736 |confirm |next "mulgore"
_Click here_ to explore Northern Barrens |achieve 750 |confirm |next "n_barrens"
_Click here_ to explore Silithus |achieve 856 |confirm |next "silithus"
_Click here_ to explore Southern Barrens |achieve 4996 |confirm |next "s_barrens"
_Click here_ to explore Stonetalon Mountains |achieve 847 |confirm |next "stonetalon"
_Click here_ to explore Tanaris |achieve 851 |confirm |next "tanaris"
_Click here_ to explore Teldrassil |achieve 842 |confirm |next "teldrassil"
_Click here_ to explore Thousand Needles |achieve 846 |confirm |next "thousand"
_Click here_ to explore Uldum |achieve 4865 |confirm |next "uldum"
_Click here_ to explore Un'Goro Crater |achieve 854 |confirm |next "ungoro"
_Click here_ to explore Winterspring |achieve 857 |confirm |next "winter"
_OR_
_Click here_ to complete Zygor's suggested path through all of the above zones |confirm |next
stickystart "stickyreturn"
step
label "durotar"
_Skipping_ to the next part of guide |next "+n_barrens" |only if step:Find("+durotar1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "durotar1"
_Explore_ Durotar |achieve 728
step
label "n_barrens"
_Skipping_ to the next part of guide |next "+s_barrens" |only if step:Find("+n_barrens1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Ratchet |achieve 750/2 |goto Northern Barrens 67.9,72.4
step
_Discover_ The Merchant Coast |achieve 750/8 |goto Northern Barrens 70.3,84.1
step
label "n_barrens1"
_Explore_ Northern Barrens |achieve 750
step
label "s_barrens"
_Skipping_ to the next part of guide |next "+dustwallow" |only if step:Find("+s_barrens1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ Bael Modan |achieve 4996/1 |goto Southern Barrens 50.7,84.00
step
label "s_barrens1"
_Explore_ Southern Barrens |achieve 4996
step
label "dustwallow"
_Skipping_ to the next part of guide |next "+thousand" |only if step:Find("+dustwallow1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "dustwallow1"
_Explore_ Dustwallow Marsh |achieve 850
step
label "thousand"
_Skipping_ to the next part of guide |next "+tanaris" |only if step:Find("+thousand1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "thousand1"
_Explore_ Thousand Needles |achieve 846
step
label "tanaris"
_Skipping_ to the next part of guide |next "+ungoro" |only if step:Find("+tanaris1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "tanaris1"
_Explore_ Tanaris |achieve 851
step
label "ungoro"
_Skipping_ to the next part of guide |next "+uldum" |only if step:Find("+ungoro1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "ungoro1"
_Explore_ Un'Goro Crater |achieve 854
step
label "uldum"
_Skipping_ to the next part of guide |next "+silithus" |only if step:Find("+uldum1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "uldum1"
_Explore_ Uldum |achieve 4865
step
label "silithus"
_Skipping_ to the next part of guide |next "+feralas" |only if step:Find("+silithus1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "silithus1"
_Explore_ Silithus |achieve 856
step
label "feralas"
_Skipping_ to the next part of guide |next "+desolace" |only if step:Find("+feralas1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ The Writhing Deep |achieve 849/8 |goto Feralas 75.9,62.4
step
_Discover_ Lower Wilds |achieve 849/1 |goto Feralas 83.0,40.9
step
_Discover_ Camp Mojache |achieve 849/9 |goto Feralas 76.5,44.4
step
_Discover_ Gordunni Outpost |achieve 849/11 |goto Feralas 75.6,29.8
step
_Discover_ Grimtotem Compound |achieve 849/10 |goto Feralas 68.7,40.3
step
_Discover_ Dire Maul |achieve 849/5 |goto Feralas 60.4,35.6
step
_Discover_ Darkmist Ruins |achieve 849/12 |goto Feralas 67.7,58.5
step
_Discover_ Ruins of Isildien |achieve 849/7 |goto Feralas 58.6,73.0
step
_Discover_ Feral Scar Vale |achieve 849/6 |goto Feralas 55.4,56.2
step
_Discover_ The Forgotten Coast |achieve 849/4 |goto Feralas 49.7,49.2
step
_Discover_ Feathermoon Stronghold |achieve 849/13 |goto Feralas 45.8,49.6
step
_Discover_ Ruins of Feathermoon |achieve 849/2 |goto Feralas 28.5,49.1
step
_Discover_ The Twin Colossals |achieve 849/3 |goto Feralas 46.3,17.9
step
label "feralas1"
_Explore_ Feralas |achieve 849
step
label "desolace"
_Skipping_ to the next part of guide |next "+mulgore" |only if step:Find("+desolace1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "desolace1"
_Explore_ Desolace |achieve 848
step
label "mulgore"
_Skipping_ to the next part of guide |next "+stonetalon" |only if step:Find("+mulgore1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "mulgore1"
_Explore_ Mulgore |achieve 736
step
label "stonetalon"
_Skipping_ to the next part of guide |next "+ashenvale" |only if step:Find("+stonetalon1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "stonetalon1"
_Explore_ Stonetalon Mountains |achieve 847
step
label "ashenvale"
_Skipping_ to the next part of guide |next "+hyjal" |only if step:Find("+ashenvale1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "ashenvale1"
_Explore_ Ashenvale |achieve 845
step
label "hyjal"
_Skipping_ to the next part of guide |next "+winter" |only if step:Find("+hyjal1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "hyjal1"
_Explore_ Mount Hyjal |achieve 4863
step
label "winter"
_Skipping_ to the next part of guide |next "+azshara" |only if step:Find("+winter1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "winter1"
_Explore_ Winterspring |achieve 857
step
label "azshara"
_Skipping_ to the next part of guide |next "+moon" |only if step:Find("+azshara1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Darnassian Base Camp |achieve 852/9 |goto Azshara 52.25,26.95
step
_Discover_ Bitter Reaches |achieve 852/7 |goto Azshara 73.69,20.98
step
_Discover_ Tower of Eldara |achieve 852/11 |goto Azshara 80.90,32.34
step
_Discover_ Ruins of Arkkoran |achieve 852/14 |goto Azshara 69.89,34.83
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
_Discover_ The Ruined Reaches |achieve 852/17 |goto Azshara 39.83,84.67
step
_Discover_ Lake Mennar |achieve 852/15 |goto Azshara 35.72,73.99
step
_Discover_ Orgrimmar Rear Gate |achieve 852/13 |goto Azshara 26.75,77.96
step
_Discover_ Gallywix Pleasure Palace |achieve 852/6 |goto Azshara 21.04,57.1
step
_Discover_ The Shattered Strand |achieve 852/10 |goto Azshara 39.21,55.46
step
_Discover_ Ruins of Eldarath |achieve 852/14 |goto Azshara 31.95,50.02
step
_Discover_ Bear's Head |achieve 852/2 |goto Azshara 25.47,38.00
step
_Discover_ Blackmaw Hold |achieve 852/3 |goto Azshara 33.06,32.76
step
label "azshara1"
_Explore_ Azshara |achieve 852
step
label "moon"
_Skipping_ to the next part of guide |next "+felwood" |only if step:Find("+moon1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Stormrage Barrow Dens |achieve 855/4 |goto Moonglade 67.8,53.8
step
_Discover_ Lake Elune'ara |achieve 855/1 |goto Moonglade 52.5,55.4
step
_Discover_ Nighthaven |achieve 855/3 |goto Moonglade 48.2,37.9
step
_Discover_ Shrine of Remulos |achieve 855/2 |goto Moonglade 36.3,38.8
step
label "moon1"
_Explore_ Moonglade |achieve 855
step
label "felwood"
_Skipping_ to the next part of guide |next "+darkshore" |only if step:Find("+felwood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "felwood1"
_Explore_ Felwood |achieve 853
step
label "darkshore"
_Skipping_ to the next part of guide |next "+teldrassil" |only if step:Find("+darkshore1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "darkshore1"
_Explore_ Darkshore |achieve 844
step
label "teldrassil"
_Skipping_ to the next part of guide |next "+azure" |only if step:Find("+teldrassil1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "teldrassil1"
_Explore_ Teldrassil |achieve 842
step
label "azure"
_Skipping_ to the next part of guide |next "+blood" |only if step:Find("+azure1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
label "azure1"
_Explore_ Azuremyst Isle |achieve 860
step
label "blood"
_Skipping_ to the next part of guide |next "+end" |only if step:Find("+blood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
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
_Discover_ The Bloodwash |achieve 861/9 |goto Bloodmyst Isle 38.7,21.9
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
label "blood1"
_Explore_ Bloodmyst Isle |achieve 861
step "stickyreturn"
_Click here_ at anytime to return to the checklist |next "start"
step
label "end"
Congratulations, you have _earned_ the _Explore Kalimdor_ Achievement! |only if achieved(43)
Congratulations, you have _earned_ the _Explore Cataclysm_ Achievement! |only if achieved(4868)
Congratulations, you have _earned_ the _World Explorer_ Achievement! |only if achieved(46)
You _have not_ explored all of Kalimdor yet |only if not achieved(43)
confirm |next "start" |only if not achieved(43)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Outland\\Bloody Rare/Medium Rare",{
condition_end="achieved(1312)",
achieveid={1311},
description="Kill all of the Rare enemies in Outlands",
},[[
step
kill Mekthorg the Wild##18677 |goto Hellfire Peninsula 69.0,71.4
If Mekthorg the Wild is not here you may be able to find him in the following locations:
_Click here_ [41.6,71.6]
_Click here_ [47.2,58.4]
_Click here_ [52.0,51.2]
_Click here_ [46.6,43.0]
achieve 1312/13
step
kill Fulgorge##18678 |goto Hellfire Peninsula 57.2,71.8
If Fulgorge is not here you may be able to find him in the following locations:
_Click here_ [42.8,71.8]
_Click here_ [43.6,50.6]
_Click here_ [30.8,63.0]
_Click here_ [27.6,42.6]
achieve 1312/4
step
kill Vorakem Doomspeaker##18679 |goto Hellfire Peninsula 41.0,32.8
If Vorakem Doomspeaker is not here you may be able to find him in the following locations:
_Click here_ [54.4,28.6]
_Click here_ [65.4,31.4]
_Click here_ [73.6,40.2]
_Click here_ [70.0,45.6]
_Click here_ [72.6,56.8]
achieve 1312/10
step
kill Hemathion##18692 |goto Blade's Edge Mountains 30.6,67.2
If Hemathion is not here you may be able to find him at [30.6,48.4]
achieve 1312/5
step
kill Morcrush##18690 |goto Blade's Edge Mountains 68.8,70.0
If Morcrush is not here you may be able to find him in the following locations:
_Click here_ [62.6,52.6]
_Click here_ [65.8,47.8]
_Click here_ [71.0,42.0]
_Click here_ [73.8,28.6]
_Click here_ [61.0,23.0]
achieve 1312/7
step
kill Speaker Mar'Grom##18693 |goto Blade's Edge Mountains 44.6,77.4
If Speaker Mar'Grom is not here you may be able to find him in the following locations:
_Click here_ [42.0,50.8]
_Click here_ [57.6,29.6]
_Click here_ [66.2,23.6]
achieve 1312/9
step
kill Bog Lurker##18682 |goto Zangarmarsh 25.0,24.0
If Bog Lurker is not here you may be able to find him in the following locations:
_Click here_ [41.2,60.8]
_Click here_ [50.6,59.4]
_Click here_ [86.6,82.6]
achieve 1312/2
step
kill Coilfang Emissary##18681 |goto Zangarmarsh 25.8,42.6
If Coilfang Emissary is not here you may be able to find him in the following locations:
_Click here_ [63.0,38.0]
_Click here_ [64.4,69.6]
_Click here_ [73.6,82.4]
achieve 1312/20
step
kill Marticar##18680 |goto Zangarmarsh 10.6,51.0
If Marticar is not here you may be able to find him in the following locations:
_Click here_ [18.0,34.4]
_Click here_ [38.6,34.8]
_Click here_ [54.4,33.8]
_Click here_ [72.0,35.8]
_Click here_ [79.6,53.6]
achieve 1312/6
step
kill Chief Engineer Lorthander##18697 |goto Netherstorm 59.8,66.4
If Chief Engineer Lorthander is not here you may be able to find him in the following locations:
_Click here_ [47.6,81.2]
_Click here_ [27.8,39.4]
achieve 1312/11
step
kill Ever-Core the Punisher##18698 |goto Netherstorm 58.2,37.8
|tip He walks around the towers in Netherstorm so you will need to search for him.
achieve 1312/12
step
kill Nuramoc##20932 |goto Netherstorm 25.6,82.6
If Nuramoc is not here you may be able to find him in the following locations:
_Click here_ [40.6,79.8]
_Click here_ [67.6,61.0]
_Click here_ [53.0,59.2]
_Click here_ [34.0,33.6]
_Click here_ [36.0,20.8]
achieve 1312/8
step
kill Voidhunter Yar##18683 |goto Nagrand 39.8,71.0
|tip He walks in a circle around Oshu'Gun so you may need to fly around to find him.
achieve 1312/19
step
kill Goretooth##17144 |goto Nagrand 34.0,50.0
If Goretooth is not here, you may be able to find him in the following locations:
_Click here_ [44.8,44.8]
_Click here_ [59.6,28.4]
_Click here_ [77.0,80.2]
achieve 1312/16
step
kill Crippler##18689 |goto Terokkar Forest 39.0,63.6
|tip He walks around and inside Auchindoun so you may need to search for him.
achieve 1312/3
step
kill Doomsayer Jurim##18686 |goto Terokkar Forest 70.2,49.0
If Doomsayer Jurim is not here you may be able to find him in the following locations:
_Click here_ [56.8,32.6]
_Click here_ [54.4,20.4]
_Click here_ [43.2,26.4]
_Click here_ [35.8,37.4]
achieve 1312/18
step
kill Okrek##18685 |goto Terokkar Forest 56.6,67.6
If Okrek is not here you may be able to find him in the following locations:
_Click here_ [31.8,42.6]
_Click here_ [50.0,19.6]
_Click here_ [59.8,24.2]
achieve 1312/14
step
kill Ambassador Jerrikar##18695 |goto Shadowmoon Valley 71.0,61.6
If Ambassador Jerrikar is not here you may be able to find him in the following locations:
_Click here_ [47.6,68.6]
_Click here_ [29.6,52.6]
_Click here_ [46.2,28.8]
_Click here_ [57.6,38.2]
achieve 1312/1
step
kill Collidus the Warp-Watcher##18694 |goto Shadowmoon Valley 70.8,66.8
If Collidus the Warp-Watcher is not here you may be able to find him in the following locations:
_Click here_ [58.6,71.6]
_Click here_ [46.0,53.2]
_Click here_ [37.6,43.6]
_Click here_ [60.0,22.0]
_Click here_ [73.8,29.2]
achieve 1312/15
step
kill Kraator##18696 |goto Shadowmoon Valley 59.6,46.6
If Kraator is not here you may be able to find him in the following locations:
_Click here_ [42.0,68.8]
_Click here_ [31.0,45.6]
_Click here_ [42.0,40.6]
_Click here_ [45.6,12.6]
achieve 1312/17
step
Congratulations, you have _earned_ the _Medium Rare_ achievement! |only if achieved(1311)
Congratulations, you have _earned_ the _Bloody Rare_ achievement! |only if achieved(1312)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Outland\\Explore Outland",{
condition_end="achieved(44)",
achieveid={862,863,867,866,865,843,864},
description="Explore the regions of Outlands.",
},[[
step
This guide is optimized for flying
|tip You can do this without a flying mount, but it will be much more efficient with one.
confirm
step
label "start"
_Click here_ to explore Blade's Edge Mountains |achieve 865 |confirm |next "blade"
_Click here_ to explore Hellfire Peninsula|achieve 862 |confirm |next "hellfire"
_Click here_ to explore Nagrand |achieve 866 |confirm |next "nagrand"
_Click here_ to explore Netherstorm |achieve 843 |confirm |next "nether"
_Click here_ to explore Shadowmoon Valley |achieve 864 |confirm |next "shadowmoon"
_Click here_ to explore Terokkar Forest |achieve 867 |confirm |next "terokkar"
_Click here_ to explore Zangarmarsh |achieve 863 |confirm |next "zangar"
_OR_
_Click here_ to complete Zygor's suggested path through all of the above zones |confirm |next
stickystart "stickyreturn"
step
label "hellfire"
_Skipping_ to the next part of guide |next "+terokkar" |only if step:Find("+hellfire1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ The Stair of Destiny |achieve 862/1 |goto Hellfire Peninsula 87.7,50.3
step
_Discover_ Throne of Kil'jaeden |achieve 862/12 |goto Hellfire Peninsula 62.0,17.8
step
_Discover_ Forge Camp: Mageddon |achieve 862/18 |goto Hellfire Peninsula 58.9,31.2
step
_Discover_ Thrallmar |achieve 862/11 |goto Hellfire Peninsula 55.4,38.7
step
_Discover_ The Legion Front |achieve 862/10 |goto Hellfire Peninsula 70.0,50.4
step
_Discover_ Void Ridge |achieve 862/16 |goto Hellfire Peninsula 79.1,72.9
step
_Discover_ Zeth'Gor |achieve 862/13 |goto Hellfire Peninsula 70.1,73.6
step
_Discover_ Expedition Armory |achieve 862/2 |goto Hellfire Peninsula 54.3,84.3
step
_Discover_ The Warp Fields |achieve 862/17 |goto Hellfire Peninsula 45.3,82.5
step
_Discover_ Honor Hold |achieve 862/5 |goto Hellfire Peninsula 54.8,64.5
step
_Discover_ Hellfire Citadel |achieve 862/4 |goto Hellfire Peninsula 47.2,52.9
step
_Discover_ Pools of Aggonar |achieve 862/7 |goto Hellfire Peninsula 41.2,32.6
step
_Discover_ Mag'har Post |achieve 862/6 |goto Hellfire Peninsula 31.3,26.9
step
_Discover_ Temple of Telhamat |achieve 862/9 |goto Hellfire Peninsula 23.5,40.0
step
_Discover_ Falcon Watch |achieve 862/3 |goto Hellfire Peninsula 26.9,62.3
step
_Discover_ Den of Haal'esh |achieve 862/14 |goto Hellfire Peninsula 27.5,77.0
step
_Discover_ Fallen Sky Ridge |achieve 862/15 |goto Hellfire Peninsula 14.3,41.0
step
_Discover_ Ruins of Sha'naar |achieve 862/8 |goto Hellfire Peninsula 13.3,59.4
step
label "hellfire1"
_Explore_ Hellfire Peninsula |achieve 862
step
label "terokkar"
_Skipping_ to the next part of guide |next "+shadowmoon" |only if step:Find("+terokkar1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Razorthorn Shelf |achieve 867/11 |goto Terokkar Forest 55.0,20.0
step
_Discover_ Tuurem |achieve 867/7 |goto Terokkar Forest 53.0,29.1
step
_Discover_ Cenarion Thicket |achieve 867/3 |goto Terokkar Forest 43.8,20.2
step
_Discover_ Shattrath City |achieve 867/8 |goto Terokkar Forest 29.1,23.3
step
_Discover_ The Barrier Hills |achieve 867/10 |goto Terokkar Forest 22.4,10.5
step
_Discover_ Bleeding Hollow Ruins |achieve 867/1 |goto Terokkar Forest 17.8,65.4
step
_Discover_ Veil Rhaze |achieve 867/19 |goto Terokkar Forest 24.4,59.9
step
_Discover_ Shadow Tomb |achieve 867/17 |goto Terokkar Forest 31.3,52.5
step
_Discover_ Refugee Caravan |achieve 867/15 |goto Terokkar Forest 37.5,49.6
step
_Discover_ Carrion Hill |achieve 867/14 |goto Terokkar Forest 42.9,51.0
step
_Discover_ Grangol'var Village |achieve 867/5 |goto Terokkar Forest 39.5,39.4
step
_Discover_ Stonebreaker Hold |achieve 867/6 |goto Terokkar Forest 46.6,43.0
step
_Discover_ Raastok Glade |achieve 867/9 |goto Terokkar Forest 60.6,40.2
step
_Discover_ Firewing Point |achieve 867/4 |goto Terokkar Forest 71.7,34.7
step
_Discover_ Bonechewer Ruins |achieve 867/12 |goto Terokkar Forest 66.5,52.3
step
_Discover_ Allerian Stronghold |achieve 867/2 |goto Terokkar Forest 57.1,56.6
step
_Discover_ Writhing Mound |achieve 867/20 |goto Terokkar Forest 49.1,66.0
step
_Discover_ Ring of Observance |achieve 867/16 |goto Terokkar Forest 39.5,65.5
step
_Discover_ Auchenai Grounds |achieve 867/13 |goto Terokkar Forest 33.0,71.8
step
_Discover_ Derelict Caravan |achieve 867/18 |goto Terokkar Forest 43.9,76.1
step
_Discover_ Skettis |achieve 867/21 |goto Terokkar Forest 58.9,76.4
step
label "terokkar1"
_Explore_ Terokkar Forest |achieve 867
step
label "shadowmoon"
_Skipping_ to the next part of guide |next "+nagrand" |only if step:Find("+shadowmoon1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Legion Hold |achieve 864/3 |goto Shadowmoon Valley 24.1,39.2
step
_Discover_ Illidari Point |achieve 864/12 |goto Shadowmoon Valley 29.8,52.3
step
_Discover_ Wildhammer Stronghold |achieve 864/10  |goto Shadowmoon Valley 35.5,60.2
step
_Discover_ Eclipse Point |achieve 864/2 |goto Shadowmoon Valley 44.9,66.8
step
_Discover_ Netherwing Ledge |achieve 864/4 |goto Shadowmoon Valley 70.8,85.7
step
_Discover_ Netherwing Fields |achieve 864/13 |goto Shadowmoon Valley 64.2,58.5
step
_Discover_ Warden's Cage |achieve 864/9 |goto Shadowmoon Valley 57.3,50.1
step
_Discover_ The Hand of Gul'dan |achieve 864/8 |goto Shadowmoon Valley 49.8,41.2
step
_Discover_ The Deathforge |achieve 864/7 |goto Shadowmoon Valley 39.6,39.6
step
_Discover_ Shadowmoon Village |achieve 864/5 |goto Shadowmoon Valley 29.4,26.1
step
_Discover_ Coilskar Point |achieve 864/1 |goto Shadowmoon Valley 45.3,26.3
step
_Discover_ Altar of Sha'tar |achieve 864/11 |goto Shadowmoon Valley 61.5,26.1
step
_Discover_ The Black Temple |achieve 864/6 |goto Shadowmoon Valley 77.6,40.6
step
label "shadowmoon1"
_Explore_ Shadowmoon Valley |achieve 864
step
label "nagrand"
_Skipping_ to the next part of guide |next "+zangar" |only if step:Find("+nagrand1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Windyreed Village |achieve 866/18 |goto Nagrand 74.3,52.9
step
_Discover_ Burning Blade Ruins |achieve 866/12 |goto Nagrand 75.1,66.8
step
_Discover_ Kil'sorrow Fortress |achieve 866/4 |goto Nagrand 68.9,79.9
step
_Discover_ Clan Watch |achieve 866/13 |goto Nagrand 62.5,64.3
step
_Discover_ The Ring of Trials |achieve 866/9 |goto Nagrand 65.8,54.0
step
_Discover_ Southwind Cleft |achieve 866/15 |goto Nagrand 49.8,55.9
step
_Discover_ Telaar |achieve 866/8 |goto Nagrand 52.8,69.1
step
_Discover_ Spirit Fields |achieve 866/6 |goto Nagrand 42.0,71.8
step
_Discover_ Halaa |achieve 866/3 |goto Nagrand 42.5,44.0
step
_Discover_ Sunspring Post |achieve 866/7 |goto Nagrand 33.5,44.7
step
_Discover_ Forge Camp: Fear |achieve 866/1 |goto Nagrand 20.6,51.3
step
_Discover_ The Twilight Ridge |achieve 866/16 |goto Nagrand 10.8,39.2
step
_Discover_ Forge Camp: Hate |achieve 866/14 |goto Nagrand 25.9,37.1
step
_Discover_ Warmaul Hill |achieve 866/11 |goto Nagrand 29.7,24.6
step
_Discover_ Zangar Ridge |achieve 866/19 |goto Nagrand 33.9,18.4
step
_Discover_ Laughing Skull Ruins |achieve 866/5 |goto Nagrand 46.9,18.9
step
_Discover_ Garadar |achieve 866/2 |goto Nagrand 56.1,36.4
step
_Discover_ Throne of the Elements |achieve 866/10 |goto Nagrand 60.8,21.1
step
_Discover_ Windyreed Pass |achieve 866/17 |goto Nagrand 72.4,36.3
step
label "nagrand1"
_Explore_ Nagrand |achieve 866
step
label "zangar"
_Skipping_ to the next part of guide |next "+blade" |only if step:Find("+zangar1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Darkcrest Shore |achieve 863/18 |goto Zangarmarsh 70.6,79.9
step
_Discover_ Umbrafen Village |achieve 863/11 |goto Zangarmarsh 83.5,82.0
step
_Discover_ Cenarion Refuge |achieve 863/1 |goto Zangarmarsh 81.1,63.4
step
_Discover_ The Dead Mire |achieve 863/8 |goto Zangarmarsh 82.5,37.5
step
_Discover_ Teredor |achieve 863/7 |goto Zangarmarsh 68.5,49.2
step
_Discover_ Bloodscale Grounds |achieve 863/14 |goto Zangarmarsh 62.7,41.2
step
_Discover_ The Lagoon |achieve 863/9 |goto Zangarmarsh 58.6,61.8
step
_Discover_ Twin Spire Ruins |achieve 863/10 |goto Zangarmarsh 47.8,51.7
step
_Discover_ Feralfen Village |achieve 863/3 |goto Zangarmarsh 44.9,66.3
step
_Discover_ Zabra'jin |achieve 863/17 |goto Zangarmarsh 31.8,52.3
step
_Discover_ Quagg Ridge |achieve 863/6 |goto Zangarmarsh 29.0,60.7
step
_Discover_ The Spawning Glen |achieve 863/16 |goto Zangarmarsh 14.5,61.9
step
_Discover_ Sporeggar |achieve 863/12 |goto Zangarmarsh 17.8,49.6
step
_Discover_ Marshlight Lake |achieve 863/5 |goto Zangarmarsh 21.7,39.6
step
_Discover_ Ango'rosh Grounds |achieve 863/2 |goto Zangarmarsh 18.0,23.1
step
_Discover_ Ango'rosh Stronghold |achieve 863/13 |goto Zangarmarsh 18.6,8.0
step
_Discover_ Hewn Bog |achieve 863/4 |goto Zangarmarsh 33.6,35.3
step
_Discover_ Orebor Harborage |achieve 863/15 |goto Zangarmarsh 44.9,25.2
step
label "zangar1"
_Explore_ Zangarmarsh |achieve 863
step
label "blade"
_Skipping_ to the next part of guide |next "+nether" |only if step:Find("+blade1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Forge Camp: Terror |achieve 865/10 |goto Blade's Edge Mountains 29.1,81.0
step
_Discover_ Vortex Summit |achieve 865/26 |goto Blade's Edge Mountains 30.5,59.5
step
_Discover_ Forge Camp: Wrath |achieve 865/11 |goto Blade's Edge Mountains 33.5,41.1
step
_Discover_ Raven's Wood |achieve 865/16 |goto Blade's Edge Mountains 31.9,27.5
step
_Discover_ Grishnath |achieve 865/12 |goto Blade's Edge Mountains 39.6,19.9
step
_Discover_ Bash'ir Landing |achieve 865/1 |goto Blade's Edge Mountains 51.7,16.7
step
_Discover_ Crystal Spine |achieve 865/21 |goto Blade's Edge Mountains 68.0,10.8
step
_Discover_ Broken Wilds |achieve 865/6 |goto Blade's Edge Mountains 77.9,25.9
step
_Discover_ Skald |achieve 865/19 |goto Blade's Edge Mountains 72.0,22.9
step
_Discover_ Gruul's Lair |achieve 865/13 |goto Blade's Edge Mountains 67.7,23.5
step
_Discover_ Bloodmaul Camp |achieve 865/4 |goto Blade's Edge Mountains 55.6,26.2
step
_Discover_ Bladespire Hold |achieve 865/3 |goto Blade's Edge Mountains 40.7,53.0
step
_Discover_ Sylvanaar |achieve 865/20 |goto Blade's Edge Mountains 37.0,65.4
step
_Discover_ Veil Lashh |achieve 865/23 |goto Blade's Edge Mountains 36.4,78.7
step
_Discover_ Bloodmaul Outpost |achieve 865/5 |goto Blade's Edge Mountains 46.3,77.2
step
_Discover_ Jagged Ridge |achieve 865/14 |goto Blade's Edge Mountains 48.0,64.9
step
_Discover_ Razor Ridge |achieve 865/17 |goto Blade's Edge Mountains 56.0,69.0
step
_Discover_ Death's Door |achieve 865/8 |goto Blade's Edge Mountains 64.2,61.0
step
_Discover_ Thunderlord Stronghold |achieve 865/22 |goto Blade's Edge Mountains 53.1,54.7
step
_Discover_ Circle of Blood |achieve 865/7 |goto Blade's Edge Mountains 53.6,43.9
step
_Discover_ Ruuan Weald |achieve 865/18 |goto Blade's Edge Mountains 61.2,36.5
step
_Discover_ Veil Ruuan |achieve 865/24 |goto Blade's Edge Mountains 65.1,31.6
step
_Discover_ Bladed Gulch |achieve 865/2 |goto Blade's Edge Mountains 65.9,36.8
step
_Discover_ Forge Camp: Anger |achieve 865/9 |goto Blade's Edge Mountains 74.7,41.8
step
_Discover_ Mok'Nathal Village |achieve 865/15 |goto Blade's Edge Mountains 73.9,62.6
step
_Discover_ Vekhaar Stand |achieve 865/25 |goto Blade's Edge Mountains 77.1,75.2
step
label "blade1"
_Explore_ Blade's Edge Mountains |achieve 865
step
label "nether"
_Skipping_ to the next part of guide |next "+end" |only if step:Find("+nether1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Manaforge B'naar |achieve 843/2 |goto Netherstorm 23.5,72.9
step
_Discover_ The Heap |achieve 843/9 |goto Netherstorm 28.4,77.5
step
_Discover_ Area 52 |achieve 843/1 |goto Netherstorm 33.5,66.0
step
_Discover_ Arklon Ruins |achieve 843/10 |goto Netherstorm 39.7,73.5
step
_Discover_ Manaforge Coruu |achieve 843/3 |goto Netherstorm 48.8,84.5
step
_Discover_ Kirin'Var Village |achieve 843/12 |goto Netherstorm 57.1,88.5
step
_Discover_ Sunfury Hold |achieve 843/15 |goto Netherstorm 56.0,77.8
step
_Discover_ Manaforge Duro |achieve 843/4 |goto Netherstorm 59.6,68.2
step
_Discover_ Tempest Keep |achieve 843/8 |goto Netherstorm 75.8,62.5
step
_Discover_ Celestial Ridge |achieve 843/11 |goto Netherstorm 72.5,38.7
step
_Discover_ Manaforge Ultris |achieve 843/6 |goto Netherstorm 61.7,38.2
step
_Discover_ Ethereum Staging Grounds |achieve 843/19 |goto Netherstorm 55.1,43.5
step
_Discover_ Ruins of Farahlon |achieve 843/7 |goto Netherstorm 54.4,21.3
step
_Discover_ Netherstone |achieve 843/13 |goto Netherstorm 49.5,17.0
step
_Discover_ Eco-Dome Farfield |achieve 843/18 |goto Netherstorm 46.1,9.6
step
_Discover_ Socrethar's Seat |achieve 843/20 |goto Netherstorm 29.9,16.0
step
_Discover_ Forge Base: Oblivion |achieve 843/21 |goto Netherstorm 37.5,26.4
step
_Discover_ The Stormspire |achieve 843/16 |goto Netherstorm 45.1,35.8
step
_Discover_ Eco-Dome Midrealm |achieve 843/21 |goto Netherstorm 45.3,53.7
step
_Discover_ Ruins of Enkaat |achieve 843/14 |goto Netherstorm 32.9,54.9
step
_Discover_ Gyro-Plank Bridge |achieve 843/17 |goto Netherstorm 23.2,55.9
step
_Discover_ Manaforge Ara |achieve 843/5 |goto Netherstorm 26.8,39.3
step
label "nether1"
_Explore_ Netherstorm |achieve 843
step "stickyreturn"
_Click here_ at anytime to return to the checklist |next "start"
step
label "end"
Congratulations, you have _earned_ the _Explore Outlands_ Achievement! |only if achieved(44)
Congratulations, you have _earned_ the _World Explorer_ Achievement! |only if achieved(46)
You _have not_ explored all of Outlands yet |only if not achieved(44)
confirm |next "start" |only if not achieved(44)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Northrend\\Explore Northrend",{
condition_end="achieved(45)",
achieveid={1264,1263,1265,1266,1267,1268,1457,1269,1270},
description="Explore the regions of Northrend.",
},[[
step
This guide is optimized for flying
|tip You can do this without a flying mount, but it will be much more efficient with one
confirm
step
label "start"
_Click here_ to explore Borean Tundra |achieve 1264 |confirm |next "borean"
_Click here_ to explore Crystalsong Forest |achieve 1457 |confirm |next "crystal"
_Click here_ to explore Dragonblight |achieve 1265 |confirm |next "dragon"
_Click here_ to explore Grizzly Hills |achieve 1266 |confirm |next "grizzly"
_Click here_ to explore Howling Fjord |achieve 1263 |confirm |next "howling"
_Click here_ to explore Icecrown |achieve 1270 |confirm |next "icecrown"
_Click here_ to explore Sholazar Basin |achieve 1268 |confirm |next "sholazar"
_Click here_ to explore Storm Peaks |achieve 1269 |confirm |next "storm"
_Click here_ to explore Zul'Drak |achieve 1267 |confirm |next "zul"
_OR_
_Click here_ to complete Zygor's suggested path through all of the above zones |confirm |next
stickystart "stickyreturn"
step
label "borean"
_Skipping_ to the next part of guide |next "+sholazar" |only if step:Find("+borean1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Valiance Keep |achieve 1264/11 |goto Borean Tundra 57.7,69.3
step
_Discover_ Warsong Hold |achieve 1264/10 |goto Borean Tundra 43.4,53.2
step
_Discover_ Riplash Stand |achieve 1264/3 |goto Borean Tundra 47.4,81.1
step
_Discover_ Garrosh's Landing |achieve 1264/5 |goto Borean Tundra 27.9,51.6
step
_Discover_ Coldarra |achieve 1264/7 |goto Borean Tundra 25.8,38.4
step
_Discover_ Amber Ledge |achieve 1264/9 |goto Borean Tundra 46.1,34.8
step
_Discover_ Steeljaw's Carvan |achieve 1264/2 |goto Borean Tundra 50.2,24.3
step
_Discover_ Bor'gorok Outpost |achieve 1264/8 |goto Borean Tundra 50.2,10.3
step
_Discover_ The Geyser Fields |achieve 1264/12 |goto Borean Tundra 66.3,28.5
step
_Discover_ Kaskala |achieve 1264/4 |goto Borean Tundra 66.2,51.1
step
_Discover_ Death's Stand |achieve 1264/6 |goto Borean Tundra 82.4,46.4
step
_Discover_ Temple City of En'kilah |achieve 1264/1 |goto Borean Tundra 87.6,25.1
step
_Discover_ The Dens of the Dying |achieve 1264/13 |goto Borean Tundra 76.4,16.4
step
label "borean1"
_Explore_ Borean Tundra |achieve 1264
step
label "sholazar"
_Skipping_ to the next part of guide |next "+icecrown" |only if step:Find("+sholazar1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Makers' Overlook |achieve 1268/4 |goto Sholazar Basin 81.0,55.4
step
_Discover_ The Lifeblood Pillar |achieve 1268/8 |goto Sholazar Basin 65.9,60.1
step
_Discover_ Rainspeaker Canopy |achieve 1268/7 |goto Sholazar Basin 53.7,52.5
step
_Discover_ River's Heart |achieve 1268/1 |goto Sholazar Basin 48.0,63.2
step
_Discover_ The Mosslight Pillar |achieve 1268/3 |goto Sholazar Basin 36.0,75.3
step
_Discover_ Kartak's Hold |achieve 1268/11 |goto Sholazar Basin 24.3,81.7
step
_Discover_ The Suntouched Pillar |achieve 1268/6 |goto Sholazar Basin 33.3,52.3
step
_Discover_ Makers' Perch |achieve 1268/5 |goto Sholazar Basin 29.7,40.1
step
_Discover_ The Stormwright's Shelf |achieve 1268/12 |goto Sholazar Basin 24.5,33.5
step
_Discover_ The Savage Thicket |achieve 1268/2 |goto Sholazar Basin 46.8,26.1
step
_Discover_ The Glimmering Pillar |achieve 1268/10 |goto Sholazar Basin 50.0,36.0
step
_Discover_ The Avalanche |achieve 1268/9 |goto Sholazar Basin 74.5,34.6
step
label "sholazar1"
_Explore_ Sholazar Basin |achieve 1268
step
label "icecrown"
_Skipping_ to the next part of guide |next "+dragon" |only if step:Find("+icecrown1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Onslaught Harbor |achieve 1270/3 |goto Icecrown 8.9,42.9
step
_Discover_ Jotunheim |achieve 1270/13 |goto Icecrown 27.1,39.0
step
_Discover_ Valhalas |achieve 1270/8 |goto Icecrown 36.5,24.1
step
_Discover_ The Shadow Vault |achieve 1270/15 |goto Icecrown 44.4,22.6
step
_Discover_ Aldur'thar: The Desolation Gate |achieve 1270/6 |goto Icecrown 52.8,30.6
step
_Discover_ The Bombardment |achieve 1270/1 |goto Icecrown 63.7,44.0
step
_Discover_ Sindragosa's Fall |achieve 1270/7 |goto Icecrown 74.0,37.7
step
_Discover_ Scourgeholme |achieve 1270/14 |goto Icecrown 78.4,60.2
step
_Discover_ Valley of Echoes |achieve 1270/9 |goto Icecrown 83.8,73.4
step
_Discover_ The Broken Front |achieve 1270/4 |goto Icecrown 69.2,64.4
step
_Discover_ Ymirheim |achieve 1270/10 |goto Icecrown 54.9,56.2
step
_Discover_ The Conflagration |achieve 1270/11 |goto Icecrown 43.6,56.5
step
_Discover_ The Fleshwerks |achieve 1270/5 |goto Icecrown 33.1,66.4
step
_Discover_ Corp'rethar: The Horror Gate |achieve 1270/12 |goto Icecrown 48.4,70.6
step
_Discover_ Icecrown Citadel |achieve 1270/2 |goto Icecrown 54.2,85.8
step
label "icecrown1"
_Explore_ Icecrown |achieve 1270
step
label "dragon"
_Skipping_ to the next part of guide |next "+crystal" |only if step:Find("+dragon1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Angrathar the Wrath Gate |achieve 1265/10 |goto Dragonblight 36.0,15.0
step
_Discover_ Obsidian Dragonshrine |achieve 1265/3 |goto Dragonblight 38.4,31.9
step
_Discover_ Icemist Village |achieve 1265/7 |goto Dragonblight 25.1,43.2
step
_Discover_ Westwind Refugee Camp |achieve 1265/13 |goto Dragonblight 13.8,46.2
step
_Discover_ Agmar's Hammer |achieve 1265/11 |goto Dragonblight 36.9,47.8
step
_Discover_ Lake Indu'le |achieve 1265/2 |goto Dragonblight 39.7,67.0
step
_Discover_ Galakrond's Rest |achieve 1265/1 |goto Dragonblight 54.9,32.7
step
_Discover_ Wyrmrest Temple |achieve 1265/12 |goto Dragonblight 59.7,49.8
step
_Discover_ Emerald Dragonshrine |achieve 1265/8 |goto Dragonblight 63.5,72.7
step
_Discover_ New Hearthglen |achieve 1265/4 |goto Dragonblight 71.0,75.2
step
_Discover_ Venomspite |achieve 1265/14 |goto Dragonblight 77.1,60.0
step
_Discover_ The Forgotten Shore |achieve 1265/15 |goto Dragonblight 82.5,70.7
step
_Discover_ Naxxramas |achieve 1265/5 |goto Dragonblight 88.9,44.0
step
_Discover_ Light's Trust |achieve 1265/6 |goto Dragonblight 83.6,25.6
step
_Discover_ Scarlet Point |achieve 1265/17 |goto Dragonblight 72.7,25.6
step
_Discover_ The Crystal Vice |achieve 1265/16 |goto Dragonblight 61.8,19.5
step
_Discover_ Coldwind Heights |achieve 1265/9 |goto Dragonblight 50.0,17.5
step
label "dragon1"
_Explore_ Dragonblight |achieve 1265
step
label "crystal"
_Skipping_ to the next part of guide |next "+storm" |only if step:Find("+crystal1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ The Azure Front |achieve 1457/1 |goto Crystalsong Forest 26.4,61.4
step
_Discover_ Violet Stand |achieve 1457/7 |goto Crystalsong Forest 14.5,44.1
step
_Discover_ The Great Tree |achieve 1457/6 |goto Crystalsong Forest 13.1,33.9
step
_Discover_ The Decrepit Flow |achieve 1457/2 |goto Crystalsong Forest 16.0,15.4
step
_Discover_ Forlorn Woods |achieve 1457/4 |goto Crystalsong Forest 43.0,42.5
step
_Discover_ The Unbound Thicket |achieve 1457/8 |goto Crystalsong Forest 64.7,60.4
step
_Discover_ Windrunner's Overlook |achieve 1457/5 |goto Crystalsong Forest 75.2,83.0
step
_Discover_ Sunreaver's Command |achieve 1457/3 |goto Crystalsong Forest 76.9,46.3
step
label "crystal1"
_Explore_ Crystalsong Forest |achieve 1457
step
label "storm"
_Skipping_ to the next part of guide |next "+zul" |only if step:Find("+storm1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Sparksocket Minefield |achieve 1269/7 |goto The Storm Peaks 35.1,84.0
step
_Discover_ Bor's Breath |achieve 1269/4 |goto The Storm Peaks 35.3,68.7
step
_Discover_ Temple of Storms |achieve 1269/12 |goto The Storm Peaks 35.9,58.0
step
_Discover_ Frosthold |achieve 1269/15 |goto The Storm Peaks 29.4,73.8
step
_Discover_ Valkyrion |achieve 1269/5 |goto The Storm Peaks 24.0,60.5
step
_Discover_ Nidavelir |achieve 1269/16 |goto The Storm Peaks 23.9,50.1
step
_Discover_ Snowdrift Plains |achieve 1269/13 |goto The Storm Peaks 27.3,41.9
step
_Discover_ Narvir's Cradle |achieve 1269/2 |goto The Storm Peaks 32.2,39.6
step
_Discover_ Ulduar |achieve 1269/10 |goto The Storm Peaks 41.3,17.4
step
_Discover_ Terrace of the Makers |achieve 1269/6 |goto The Storm Peaks 50.3,44.7
step
_Discover_ Temple of Life |achieve 1269/9 |goto The Storm Peaks 64.8,44.8
step
_Discover_ Thunderfall |achieve 1269/11 |goto The Storm Peaks 72.9,48.5
step
_Discover_ Dun Niffelem |achieve 1269/3 |goto The Storm Peaks 64.4,59.1
step
_Discover_ Engine of the Makers |achieve 1269/8 |goto The Storm Peaks 40.9,57.2
step
_Discover_ Brunnhildar Village |achieve 1269/1 |goto The Storm Peaks 47.8,68.2
step
_Discover_ Garm's Bane |achieve 1269/14 |goto The Storm Peaks 47.1,81.6
step
label "storm1"
_Explore_ The Storm Peaks |achieve 1269
step
label "zul"
_Skipping_ to the next part of guide |next "+grizzly" |only if step:Find("+zul1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Thrym's End |achieve 1267/12 |goto Zul'Drak 17.0,57.3
step
_Discover_ Voltarus |achieve 1267/2 |goto Zul'Drak 28.2,45.1
step
_Discover_ Altar of Sseratus |achieve 1267/9 |goto Zul'Drak 40.5,38.8
step
_Discover_ Altar of Rhunok |achieve 1267/10 |goto Zul'Drak 53.3,36.5
step
_Discover_ Gundrak |achieve 1267/1 |goto Zul'Drak 83.7,16.7
step
_Discover_ Altar of Mam'toth |achieve 1267/11 |goto Zul'Drak 73.2,45.6
step
_Discover_ Altar of Quetz'lun |achieve 1267/7 |goto Zul'Drak 76.9,59.3
step
_Discover_ Zim'Torga |achieve 1267/5 |goto Zul'Drak 59.3,57.8
step
_Discover_ Altar of Har'koa |achieve 1267/3 |goto Zul'Drak 64.4,68.9
step
_Discover_ Kolrama |achieve 1267/14 |goto Zul'Drak 62.0,77.6
step
_Discover_ Ampitheater of Anguish |achieve 1267/4 |goto Zul'Drak 48.2,56.4
step
_Discover_ Drak'Sorta Fields |achieve 1267/8 |goto Zul'Drak 41.7,76.8
step
_Discover_ Light's Breach |achieve 1267/13 |goto Zul'Drak 32.0,76.4
step
_Discover_ Zeramas |achieve 1267/6 |goto Zul'Drak 21.1,75.2
step
label "zul1"
_Explore_ Zul'Drak |achieve 1267
step
label "grizzly"
_Skipping_ to the next part of guide |next "+howling" |only if step:Find("+grizzly1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Drak'Tharon Keep |achieve 1266/4 |goto Grizzly Hills 17.5,23.6
step
_Discover_ Granite Springs |achieve 1266/2 |goto Grizzly Hills 15.8,49.6
step
_Discover_ Conquest Hold |achieve 1266/7 |goto Grizzly Hills 21.3,65.3
step
_Discover_ Venture Bay |achieve 1266/13 |goto Grizzly Hills 14.5,84.4
step
_Discover_ Voldrune |achieve 1266/1 |goto Grizzly Hills 29.0,76.5
step
_Discover_ Amberpine Lodge |achieve 1266/5 |goto Grizzly Hills 31.4,57.9
step
_Discover_ Blue Sky Logging Grounds |achieve 1266/6 |goto Grizzly Hills 36.0,37.9
step
_Discover_ Grizzlemaw |achieve 1266/10 |goto Grizzly Hills 48.2,42.2
step
_Discover_ Westfall Brigade Encampment |achieve 1266/14 |goto Grizzly Hills 56.8,28.4
step
_Discover_ Thor Modan |achieve 1266/12 |goto Grizzly Hills 68.1,14.8
step
_Discover_ Drakil'jin Ruins |achieve 1266/8 |goto Grizzly Hills 71.8,27.9
step
_Discover_ Camp Oneqwah |achieve 1266/3 |goto Grizzly Hills 64.9,45.6
step
_Discover_ Dun Argol |achieve 1266/9 |goto Grizzly Hills 77.9,59.3
step
_Discover_ Rage Fang Shrine |achieve 1266/11 |goto Grizzly Hills 50.3,57.2
step
label "grizzly1"
_Explore_ Grizzly Hills |achieve 1266
step
label "howling"
_Skipping_ to the next part of guide |next "+end" |only if step:Find("+howling1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
_Discover_ Gjalerbron |achieve 1263/2 |goto Howling Fjord 36.6,9.5
step
_Discover_ Camp Winterhoof |achieve 1263/3 |goto Howling Fjord 47.8,12.1
step
_Discover_ The Twisted Glade |achieve 1263/10 |goto Howling Fjord 54.2,16.8
step
_Discover_ Fort Wildervar |achieve 1263/20 |goto Howling Fjord 60.7,12.8
step
_Discover_ Giant's Run |achieve 1263/4 |goto Howling Fjord 68.6,26.5
step
_Discover_ Vengeance Landing |achieve 1263/19 |goto Howling Fjord 78.1,27.3
step
_Discover_ Ivald's Ruin |achieve 1263/7 |goto Howling Fjord 78.2,46.2
step
_Discover_ Baelgun's Excavation Site |achieve 1263/16 |goto Howling Fjord 72.5,71.3
step
_Discover_ Nifflevar |achieve 1263/5 |goto Howling Fjord 67.9,52.8
step
_Discover_ Baleheim |achieve 1263/12 |goto Howling Fjord 66.6,39.1
step
_Discover_ Cauldros Isle |achieve 1263/21 |goto Howling Fjord 57.6,35.9
step
_Discover_ Utgarde Keep |achieve 1263/11 |goto Howling Fjord 58.3,45.9
step
_Discover_ Halgrind |achieve 1263/8 |goto Howling Fjord 50.1,54.1
step
_Discover_ New Agamand |achieve 1263/15 |goto Howling Fjord 52.9,69.0
step
_Discover_ Scalawag Point |achieve 1263/14 |goto Howling Fjord 34.3,75.5
step
_Discover_ Kamagua |achieve 1263/17 |goto Howling Fjord 24.9,57.7
step
_Discover_ Ember Clutch |achieve 1263/6 |goto Howling Fjord 40.0,50.6
step
_Discover_ Skorn |achieve 1263/9 |goto Howling Fjord 45.1,33.1
step
_Discover_ Westguard Keep |achieve 1263/1 |goto Howling Fjord 30.3,41.4
step
_Discover_ Steel Gate |achieve 1263/13 |goto Howling Fjord 31.3,25.9
step
_Discover_ Apothecary Camp |achieve 1263/18 |goto Howling Fjord 27.0,24.1
step
label "howling1"
_Explore_ Howling Fjord |achieve 1263
step "stickyreturn"
_Click here_ at anytime to return to the checklist |next "start"
step
label "end"
Congratulations, you have _earned_ the _Explore Northrend_ Achievement! |only if achieved(45)
Congratulations, you have _earned_ the _World Explorer_ Achievement! |only if achieved(46)
You _have not_ explored all of Northrend yet |only if not achieved(45)
confirm |next "start" |only if not achieved(45)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Northrend\\Frostbitten/Northern Exposure",{
achieveid={2256},
condition_end="achieved(2257)",
description="Kill all of the extremely rare and hard to find Northrend Creatures.",
},[[
stickystart "Hunter"
step
kill Old Crystalbark##32357 |goto Borean Tundra 25.6,34.4
|tip He walks all around the Nexus so you may need to search for him.
achieve 2257/4
step
kill Fumblub Gearwind##32358 |goto Borean Tundra 63.8,26.6
|tip He is flying around this whole section of the map so you may need to search for him.
achieve 2257/5
step
kill Icehorn##32361 |achieve 2257/6 |goto Borean Tundra 88.6,39.8
If Icehorn is not here, you may be able to find him in the following locations:
Location 1: |goto 84.6,46.8
Location 2: |goto 80.8,46.0
Location 3: |goto 81.4,31.4
Location 4: |goto 85.8,34.6
Location 5: |goto 91.6,32.6
step
kill Crazed Indu'le Survivor##32409 |achieve 2257/11 |goto Dragonblight 26.6,58.6
|tip He walks around this area so you may need to search for him.
step
kill Tukemuth##32400 |achieve 2257/10 |goto Dragonblight 67.6,60.0
If Tukemuth is not here, you may be able to find him in the following locations:
Location 1: |goto 70.8,30.2
Location 2: |goto 62.6,42.2
Location 3: |goto 59.0,60.2
Location 4: |goto 54.6,56.8
Location 5: |goto 61.0,31.0
step
kill Scarlet Highlord Daion##32417 |achieve 2257/12 |goto Dragonblight 72.6,25.8
If Scarlet Highlord Daion is not here, you may be able to find him in the following locations:
Location 1: |goto 86.8,41.6
Location 2: |goto 72.0,74.0
step
kill Grocklar##32422 |achieve 2257/13 |goto Grizzly Hills 25.0,57.0
If Grocklar is not here, you may be able to find him in the following locations:
Location 1: |goto 13.2,48.6
Location 2: |goto 22.4,73.2
Location 3: |goto 12.2,70.6
step
kill Seething Hate##32429 |achieve 2257/14 |goto Grizzly Hills 40.2,48.8
If Seething Hate is not here, you may be able to find it in the following locations:
Locaiton 1: |goto 34.6,49.0
Location 2: |goto 28.6,45.8
step
kill Syreian the Bonecarver##32438 |achieve 2257/15 |goto Grizzly Hills 69.6,32.2
|tip She walks around in this area so you may need to search for her.
step
kill King Ping##32398 |achieve 2257/9 |goto Howling Fjord 33.2,80.6
|tip He is wandering about this island and the one north of it.
step
kill Vigdis the War Maiden##32386 |achieve 2257/8 |goto Howling Fjord 72.6,52.0
|tip She wanders around this area so you may need to search for her a bit.
step
kill Perobas the Bloodthirster##32377 |achieve 2257/7 |goto Howling Fjord 50.6,4.8
If Perobas the Bloodthirster is not here, you may be able to find him in the following locations:
Location 1: |goto 53.0,11.4
Location 2: |goto 60.8,20.2
Location 3: |goto 68.6,17.6
Location 4: |goto 71.6,13.8
step
kill High Thane Jorfus##32501 |achieve 2257/2 |goto Icecrown 48.6,80.2
If High Thane Jorfus is not here, you may be able to find him in the following locations:
Location 1: |goto 32.0,69.6
Location 2: |goto 60.8,20.2
Location 3: |goto 72.8,38.8
step
kill Hildana Deathstealer##32495 |achieve 2257/3 |goto Icecrown 32.4,29.6
If Hildana Deathstealer is not here, you may be able to find her in the following locations:
Location 1: |goto 31.8,41.8
Location 2: |goto 58.2,54.2
step
kill Putridus the Ancient##32487 |achieve 2257/23 |goto Icecrown 55.6,41.2
|tip He walks around this whole trench, so you may need to search for him.
step
kill Aotona##32481 |achieve 2257/19 |goto Sholazar Basin 54.8,52.6
If Aotona is not here, you may be able to find him in the following locations:
Location 1: |goto 58.2,64.0
Location 2: |goto 52.6,72.2
Location 3: |goto 41.8,69.6
Location 4: |goto 41.0,58.6
Location 5: |goto 45.8,54.4
step
kill King Krush##32485 |achieve 2257/20 |goto Sholazar Basin 64.6,81.0
If King Krush is not here, you may be able to find him in the following locations:
Location 1: |goto 59.0,80.8
Location 2: |goto 50.6,78.2
Location 3: |goto 27.6,45.2
Location 4: |goto 37.6,28.8
Location 5: |goto 49.8,45.0
step
kill Loque'nahak##32517 |achieve 2257/1 |goto Sholazar Basin 71.6,72.0
If Loque'nahak is not here, you may be able to find him in the following locations:
Location 1: |goto 67.0,79.6
Location 1: |goto 51.0,81.6
Location 1: |goto 22.6,70.6
Location 1: |goto 31.0,66.6
Location 1: |goto 36.6,31.0
Location 1: |goto 59.4,22.6
step
kill Dirkee##32500 |achieve 2257/22 |goto The Storm Peaks 68.0,47.6
If Dirkee is not here, you may be able to find him in the following locations:
Location 1: |goto 37.8,58.6
Location 2: |goto 41.0,51.6
Location 3: |goto 41.6,40.6
step
kill Vyragosa##32630 |achieve 2257/21 |goto The Storm Peaks 41.2,59.0
|tip This dragon flies around the whole zone so you may need to search for him a bit.
step
kill Griegen##32471 |achieve 2257/17 |goto Zul'Drak 21.2,79.8
If Griegen is not here, you may be able to find him in the following locations:
Location 1: |goto 25.8,76.8
Location 2: |goto 26.6,71.2
Location 3: |goto 22.0,70.6
Location 4: |goto 18.0,70.6
Location 5: |goto 14.6,56.8
Location 6: |goto 23.0,62.8
Location 7: |goto 26.6,55.4
step
kill Zul'drak Sentinel##32447 |achieve 2257/16 |goto Zul'Drak 40.4,64.0
|tip He wanders around this area so you may need to search for him.
step
kill Terror Spinner##32475 |achieve 2257/18 |goto Zul'Drak 53.6,31.6
If Terror Spinner is not here, you may be able to find him in the following locations:
Location 1: |goto 61.2,36.6
Location 2: |goto 71.6,23.4
Location 3: |goto 72.2,28.4
Location 4: |goto 81.6,34.6
Location 5: |goto 77.6,42.8
Location 6: |goto 74.8,66.4
step "Hunter"
If you want to tame the beasts found on this list, it is now possible to do so _AND_ still get credit for the kill!
|only Hunter
step
Congratulations, you have _earned_ the _Northern Exposure_ achievement! |only if achieved(2256)
Congratulations, you have _earned_ the _Frostbitten_ achievement! |only if achieved(2257)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\From Hell's Heart I Stab At Thee",{
condition_end="achieved(4975)",
description="This guide will walk you through defeating the Whale Shark in Vashj'ir (despite or perhaps because of the fact that he drops no loot).",
},[[
step
The Whale Shark swims in a circle around Nespirah so some searching may be required
When fighting the whale shark it is important to know that you cannot use melee attacks as he will kill you rather quickly.
|tip The best strategy is to use ranged attacks to kite him around and just slowly drain his health to 0.
kill Whale Shark##40728 |goto Shimmering Expanse 70.6,55.0
achieve 4975
step
Congratulations, you have earned the From Hell's Heart I Stab At Thee achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Stood in the Fire", {
condition_end="achieved(5518)",
description="This guide will walk you through geting killed by Deathwing.",
},[[
step
This achievement requires you to get to the end of the Dragon Soul raid and fight the final stage of Deathwing
During the fight, Deathwing will cast Cataclysm. Do not hit him and let the entire raid wipe in the fire |achieve 5518
step
Congratulations, you have earned the Stood in the Fire achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Surveying the Damage",{
condition_end="achieved(4827)",
description="This guide will walk you through exploring areas in Kalimdor and the Eastern Kingdoms to see the changes wrought by the Cataclysm.",
},[[
step
View The Raging Chasm in Westfall |achieve 4827/13 |goto Westfall/0 38.5,42.3
step
View The Sundering in Stranglethorn |achieve 4827/4 |goto Northern Stranglethorn 50.4,66.5
step
View The Scar of the Worldbreaker in Badlands |achieve 4827/1 |goto Badlands/0 43.4,42.5
step
View The Stonewrought Dam in Loch Modan |achieve 4827/10 |goto Loch Modan/0 42.0,11.3
step
View Ruins of Southshore in Hillsbrad Foothills |achieve 4827/9 |goto Hillsbrad Foothills/0 51.3,71.4
step
View The Greymane Wall in Silverpine |achieve 4827/3 |goto Ruins of Gilneas/0 60.2,10.5
step
View The Battlescar in Southern Barrens |achieve 4827/6 |goto Southern Barrens/0 45.5,70.3
step
View The Valley of the Watchers in Tanaris |achieve 4827/8 |goto Tanaris/0 37.7,78.9
step
View The Shimmering Deep in Thousand Needles |achieve 4827/2 |goto Thousand Needles/0 74.4,82.1
step
View Cenarion Wildlands in Desolace |achieve 4827/11 |goto Desolace/0 57.5,54.3
step
View Thunder Peak in Ashenvale |achieve 4827/7 |goto Ashenvale/0 48.2,53.5
step
View Southfury Watershed in Durotar |achieve 4827/12 |goto Durotar/0 38.8,38.5
step
View The Ruins of Auberdine in Darkshore |achieve 4827/5 |goto Darkshore/0 38.6,45.3
step
Congratulations, you have earned the Surveying the Damage achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Breaking The Sound Barrier",{
condition_end="achieved(5180)",
description="This guide will walk you through learning the master riding skill.",
},[[
step
This achievement requires level 80
The cost of this riding training is 5000 Gold
|tip The price can be reduced by home faction discounts based on current reputation.
confirm
step
talk Bralla Cloudwing##43769 |goto Stormwind City 70.6,73.0
learn Master Riding##90265
You can also purchase a mount from the vendor at [71.4,72.2]
step
Congratulations, you have earned the Breaking The Sound Barrier achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Cataclysmically Delicious", {
condition_end="achieved(5753)",
description="Sample Cataclysm delicacies.",
},[[
step
In order to get this achievement, it is suggested that you have a _Cooking_ skill of at least 500, and a _Fishing_ skill of at least 500.
If you don't have _Cooking_, you may be able to buy all of the items needed from the _Auction House_.
|tip You will need at least 79 Epicurean's Awards to complete this achievement.
confirm
step
talk Lenedil Moonwing##43411
buy 1 Tasty Puffball##58279 |condition itemcount(58279) >= 1 |achieve 5753 |goto Mount Hyjal/0 62.84,23.73
step
Sample a Tasty Puffball |use Tasty Puffball##58279 |achieve 5753/42
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in the waters of Nordrassil |cast Fishing##7620
collect 1 Mountain Trout##53063 |achieve 5753 |goto 61.56,23.90
collect 2 Striped Lurker##53067 |achieve 5753 |goto 61.56,23.90
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in the waters of Ramkahen |cast Fishing##7620
collect 2 Lavascale Catfish##53068 |achieve 5753 |goto Uldum/0 54.36,37.75
collect 3 Sharptooth##53062 |achieve 5753 |goto 54.36,37.75
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Blackbelly Mudfish Schools around Ramkahen |cast Fishing##7620
|tip These can be found all around the lake.
collect 2 Blackbelly Mudfish##53066 |achieve 5753 |goto 54.36,37.75
step
kill Riverbed Crocolisk##45321+
collect 2 Crocolisk Tail##62784 |achieve 5753 |goto 56.04,46.20
step
kill Marsh Serpent##51676+
collect 1 Toughened Flesh##62778 |achieve 5753 |goto 62.82,79.47
|tip Serpents can be found on land around this area.
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Fathom Eel Swarms |cast Fishing##7620
|tip These can be found all along the coast.
collect 1 Fathom Eel##53070 |achieve 5753 |goto 64.76,79.61
step
kill Brinescale Serpent##39948+
collect 1 Snake Eye##62780 |achieve 5753 |goto Kelp'thar Forest/0 56.50,38.51
step
kill Speckled Sea Turtle##40223+
collect 1 Giant Turtle Tongue##62781 |achieve 5753 |goto 52.60,45.01
step
kill Green Sand Crab##39418+
collect 1 Monstrous Claw##62779 |achieve 5753 |goto Shimmering Expanse/0 42.72,34.48
step
Enter Highbank Keep |goto Twilight Highlands/0 79.4,77.3
Go through the doorway |goto 79.0,77.6
talk Innkeeper Teresa##49686
buy 1 Hardtack##58275 |condition itemcount(58275) >= 1 |achieve 5753 |goto 79.0,77.8
buy 1 Highland Sheep Cheese##58259 |condition itemcount(58259) >= 1 |achieve 5753 |goto 79.0,77.8
buy 1 Gilnean White##58276 |condition itemcount(58276) >= 1 |achieve 5753 |goto 79.0,77.8
buy 1 Smoked String Cheese##58258 |condition itemcount(58258) >= 1 |achieve 5753 |goto 79.0,77.8
buy 1 Pine Nut Bread##58260 |condition itemcount(58260) >= 1 |achieve 5753 |goto 79.0,77.8
step
Sample a piece of Hardtack |use Hardtack##58275 |achieve 5753/16
Sample a Highland Sheep Cheese |use Highland Sheep Cheese##58259 |achieve 5753/19
Sample a Gilnean White |use Gilnean White##58276 |achieve 5753/13
Sample a Smoked String Cheese |use Smoked String Cheese##58258 |achieve 5753/39
Sample a Pine Nut Bread |use Pine Nut Bread##58260 |achieve 5753/28
step
Enter Highbank Keep |goto Twilight Highlands/0 79.80,78.07
Go through the doorway |goto Twilight Highlands/0 79.54,78.52
talk Innkeeper Francis##49688
buy 1 Stewed Rabbit##58280 |condition itemcount(58280) >= 1 |achieve 5753 |goto 79.37,78.53
buy 1 Roasted Beef##58268 |condition itemcount(58268) >= 1 |achieve 5753 |goto 79.37,78.53
buy 1 Massive Turkey Leg##58269 |condition itemcount(58269) >= 1 |achieve 5753 |goto 79.37,78.53
buy 1 Tropical Sunfruit##58278 |condition itemcount(58278) >= 1 |achieve 5753 |goto 79.37,78.53
buy 1 Sour Green Apple##58264 |condition itemcount(58264) >= 1 |achieve 5753 |goto 79.37,78.53
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1 |achieve 5753 |goto 79.37,78.53
step
Sample a Stewed Rabbit |use Stewed Rabbit##58280 |achieve 5753/41
Sample a Roasted Beef |use Roasted Beef##58268 |achieve 5753/29
Sample a Massive Turkey Leg |use Massive Turkey Leg##58269 |achieve 5753/24
Sample a Tropical Sunfruit |use Tropical Sunfruit##58278 |achieve 5753/44
Sample a Sour Green Apple |use Sour Green Apple##58264 |achieve 5753/40
Sample a Highland Pomegranate |use Highland Pomegranate##58265 |achieve 5753/18
step
talk Evan Silvia##49704
buy 1 Simmered Squid##58277 |condition itemcount(58277) >= 1 |achieve 5753 |goto 78.46,76.64
buy 1 Sliced Raw Billfish##58262 |condition itemcount(58262) >= 1 |achieve 5753 |goto 78.46,76.64
buy 1 Grilled Shark##58263 |condition itemcount(58263) >= 1 |achieve 5753 |goto 78.46,76.64
step
Sample a Grilled Shark |use Grilled Shark##58263 |achieve 5753/15
Sample a Simmered Squid |use Simmered Squid##58277 |achieve 5753/36
Sample a Sliced Raw Billfish |use Sliced Raw Billfish##58262 |achieve 5753/38
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Stand on the rock
Fish in the waters off Highbank |cast Fishing##7620
collect 1 Algaefin Rockfish##53071 |achieve 5753 |goto 82.8,76.3
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Deepsea Sagefish Schools |cast Fishing##7620
|tip These can be found all along the coast.
collect 2 Deepsea Sagefish##53072 |achieve 5753 |goto 78.44,68.01
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in open water along the Twilight Shore |cast Fishing##7620
collect 1 Murglesnout##53069 |achieve 5753 |goto 78.44,68.01
step
kill Obsidian Viletongue##47796+, Obsidian Pyrewing##46141+, Obsidian Charscale##47797+
collect 1 Dragon Flank##62782 |achieve 5753 |goto 65.2,79.0
step
talk Gronk Hamcheeks##57262
buy 1 Oily Giblets##59231 |condition itemcount(59231) >= 1 |achieve 5753 |goto 50.46,58.47
buy 1 Unidentifiable Meat Dish##59232 |condition itemcount(59232) >= 1 |achieve 5753 |goto 50.46,58.47
buy 1 Rock-Hard Biscuit##59227 |condition itemcount(59227) >= 1 |achieve 5753 |goto 50.46,58.47
buy 1 Vile Purple Fungus##59228 |condition itemcount(59228) >= 1 |achieve 5753 |goto 50.46,58.47
step
Sample some Oily Giblets |use Oily Giblets##59231 |achieve 5753/26
Sample an Unidentifiable Meat Dish |use Unidentifiable Meat Dish##59232 |achieve 5753/45
Sample a Rock-Hard Biscuit |use Rock-Hard Biscuit##59227 |achieve 5753/30
Sample a Vile Purple Fungus |use Vile Purple Fungus##59228 |achieve 5753/46
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Highland Guppy Schools |cast Fishing##7620
|tip These can be found in the river also.
collect 1 Highland Guppy##53064 |achieve 5753 |goto 39.53,56.43
step
kill Shalehide Basilisk##43181+
collect 1 Basilisk "Liver"##62783 |achieve 5753 |goto Deepholm/0 41.12,32.78
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Broiled Mountain Trout##65411 |condition itemcount(65411) >= 1 |achieve 5753 |goto Stormwind City/0 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Broiled Mountain Trout from the Auction House.
step
learn Broiled Mountain Trout##88012 |use Recipe: Broiled Mountain Trout##65411 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Broiled Mountain Trout##88012,Cooking,1 total |achieve 5753
step
Sample a Broiled Mountain Trout |use Broiled Mountain Trout##62655 |achieve 5753/6
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Lavascale Fillet##65407 |condition itemcount(65407) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lavascale Fillet from the Auction House.
step
learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lavascale Fillet##88024,Cooking,1 total |achieve 5753
step
Sample a Lavascale Fillet |use Lavascale Fillet##62654 |achieve 5753/20
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Lightly Fried Lurker##65412 |condition itemcount(65412) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lightly Fried Lurker from the Auction House.
step
learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lightly Fried Lurker##88028,Cooking,1 total |achieve 5753
step
Sample a Lightly Fried Lurker |use Lightly Fried Lurker##62651 |achieve 5753/22
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Lurker Lunch##65416 |condition itemcount(65416) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lurker Lunch from the Auction House.
step
learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lurker Lunch##88030,Cooking,1 total |achieve 5753
step
Sample a Lurker Lunch |use Lurker Lunch##62657 |achieve 5753/23
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Salted Eye##65410 |condition itemcount(65410) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Salted Eye from the Auction House.
step
learn Salted Eye##88035 |use Recipe: Salted Eye##65410 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Salted Eye##88035,Cooking,1 total |achieve 5753
step
Sample a Salted Eye |use Salted Eye##62653 |achieve 5753/31
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Seasoned Crab##65413 |condition itemcount(65413) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Seasoned Crab from the Auction House.
step
learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Seasoned Crab##88037,Cooking,1 total |achieve 5753
step
Sample a Seasoned Crab |use Seasoned Crab##62652 |achieve 5753/34
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Whitecrest Gumbo##65406 |condition itemcount(65406) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Whitecrest Gumbo from the Auction House.
step
Click here if you would like to farm for this Blood Shrimp |next "Farm Blood Shrimp"
Click here if you would like to attempt to recieve these Blood Shrimp through collecting Tasty Meat Crates through the Cataclysm Cooking dailies |next "Tasty Meat"
confirm
step
label "Farm Blood Shrimp"
kill Zin'jatar Raider##39313+
collect Abyssal Clam##52340+ |use Abyssal Clam##52340 |n
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Kelp'thar Forest/0 39.98,30.87
|next "Whitecrest"
step
label "Tasty Meat"
talk Bario Matalli##49701
buy 1 Crate of Tasty Meat##65513 |n
|tip These cost 2 Epicurean's Awards each. They have a chance to contain Blood Shrimp.
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Stormwind City/0 50.42,71.87
|next "Whitecrest"
step
label "Whitecrest"
learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Whitecrest Gumbo##88047,Cooking,1 total |achieve 5753
step
Sample a Whitecrest Gumbo |use Whitecrest Gumbo##62656 |achieve 5753/48
step
talk Bario Matalli##49701 |only if skill("Cooking")>=450
buy 1 Recipe: Tender Baked Turtle##65419 |condition itemcount(65419) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Tender Baked Turtle from the Auction House.
step
learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Tender Baked Turtle##88046,Cooking,1 total |achieve 5753
step
Sample a Tender Baked Turtle |use Tender Baked Turtle##62658 |achieve 5753/43
step
talk Bario Matalli##49701 |only if skill("Cooking")>=475
buy 1 Recipe: Fish Fry##65423 |condition itemcount(65423) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Fish Fry from the Auction House.
step
learn Fish Fry##88018 |use Recipe: Fish Fry##65423 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Fish Fry##88018,Cooking,1 total |achieve 5753
step
Sample a Fish Fry |use Fish Fry##62677 |achieve 5753/11
step
talk Bario Matalli##49701 |only if skill("Cooking")>=475
buy 1 Recipe: Hearty Seafood Soup##65418 |condition itemcount(65418) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Hearty Seafood Soup from the Auction House.
step
talk Bario Matalli##49701
buy Crate of Tasty Meat##65513 |n
|tip These cost 2 Epicurean's Awards each. They have a chance to contain Blood Shrimp.
collect 1 Blood Shrimp##62791 |achieve 5753 |goto 50.42,71.87
step
learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Hearty Seafood Soup##88021,Cooking,1 total |achieve 5753
step
Sample a Hearty Seafood Soup |use Hearty Seafood Soup##62659 |achieve 5753/17
step
talk Bario Matalli##49701 |only if skill("Cooking")>=475
buy 1 Recipe: Pickled Guppy##65417 |condition itemcount(65417) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Pickled Guppy from the Auction House.
step
learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Pickled Guppy##88033,Cooking,1 total |achieve 5753
step
Sample a Pickled Guppy |use Pickled Guppy##62660 |achieve 5753/27
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Baked Rockfish##65426 |condition itemcount(65426) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Baked Rockfish##88003,Cooking,1 total |achieve 5753
step
Sample a Baked Rockfish |use Baked Rockfish##62661 |achieve 5753/1
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Basilisk Liverdog##65427 |condition itemcount(65427) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Basilisk Liverdog##88004,Cooking,1 total |achieve 5753
step
Sample a Basilisk Liverdog |use Basilisk Liverdog##62665 |achieve 5753/2
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Beer-Basted Crocolisk##65429 |condition itemcount(65429) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Beer-Basted Crocolisk##88005,Cooking,1 total |achieve 5753
step
Sample a Beer-Basted Crocolisk |use Beer-Basted Crocolisk##62670 |achieve 5753/3
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Blackbelly Sushi##65424 |condition itemcount(65424) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Blackbelly Sushi##88034,Cooking,1 total |achieve 5753
step
Sample a Blackbelly Sushi |use Blackbelly Sushi##62670 |achieve 5753/4
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Crocolisk Au Gratin##65430 |condition itemcount(65430) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Crocolisk Au Gratin##88014,Cooking,1 total |achieve 5753
step
Sample a Crocolisk Au Gratin |use Crocolisk Au Gratin##62664 |achieve 5753/9
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Delicious Sagefish Tail##65422 |condition itemcount(65422) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Delicious Sagefish Tail##88016,Cooking,1 total |achieve 5753
step
Sample a Delicious Sagefish Tail |use Delicious Sagefish Tail##62666 |achieve 5753/10
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Grilled Dragon##65428 |condition itemcount(65428) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Grilled Dragon##88020,Cooking,1 total |achieve 5753
step
Sample a Grilled Dragon |use Grilled Dragon##62662 |achieve 5753/14
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Lavascale Minestrone##65409 |condition itemcount(65409) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lavascale Minestrone##88025,Cooking,1 total |achieve 5753
step
Sample a Lavascale Minestrone |use Lavascale Minestrone##62662 |achieve 5753/21
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |condition itemcount(65420) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Mushroom Sauce Mudfish##88031,Cooking,1 total |achieve 5753
step
Sample a Mushroom Sauce Mudfish |use Mushroom Sauce Mudfish##62667 |achieve 5753/25
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Scalding Murglesnout##68688 |condition itemcount(68688) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Scalding Murglesnout##96133 |use Recipe: Scalding Murglesnout##68688 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Scalding Murglesnout##96133,Cooking,1 total |achieve 5753
step
Sample a Scalding Murglesnout |use Scalding Murglesnout##68687 |achieve 5753/32
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Severed Sagefish Head##65421 |condition itemcount(65421) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Severed Sagefish Head##88039,Cooking,1 total |achieve 5753
step
Sample a Severed Sagefish Head |use Severed Sagefish Head##62671 |achieve 5753/35
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Skewered Eel##65425 |condition itemcount(65425) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Skewered Eel##88042 |use Recipe: Skewered Eel##65425 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Skewered Eel##88042,Cooking,1 total |achieve 5753
step
Sample a Skewered Eel |use Skewered Eel##62669 |achieve 5753/37
step
talk Bario Matalli##49701 |only if skill("Cooking")>=500
buy 1 Recipe: Chocolate Cookie##65431 |condition itemcount(65431) >= 1 |achieve 5753 |goto 50.42,71.87 |only if skill("Cooking")>=505
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=505
buy 1 Imported Supplies##68689 |condition itemcount(68689) >= 1 |achieve 5753 |goto 60.4,75.3 |only if skill("Cooking")>=505
|tip One bag of Imported Supplies costs a single Epicurean's Award. These are obtained by doing cooking dailies. |only if skill("Cooking")>=505
Your cooking skill is not high enough (505) to use this recipe. Reach at least 505 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 504
step
Open the bag of supplies |use Imported Supplies##68689
collect 1 Cocoa Beans##62786 |achieve 5753
|tip You may also purchase Cocoa Beans from the Auction House.
step
Enter the _Pig and Whistle Tavern_ |goto 75.1,55.3
Enter the kitchen |goto 76.8,53.6
talk Erika Tate##5483
buy 2 Simple Flour##30817 |condition itemcount(30817) >= 1 |achieve 5753 |goto 77.6,53.1
|tip The extra Flour will be used to make a Fortune Cookie.
step
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Chocolate Cookie##88013,Cooking,1 total |achieve 5753
step
Sample a Chocolate Cookie |use Chocolate Cookie##62680 |achieve 5753/8
step
talk Stephen Ryback##5482
learn Blackened Surprise##88006 |achieve 5753 |goto Stormwind City/0 77.29,53.22
step
Create a cooking fire |cast Cooking Fire##818
create Blackened Surprise##88006,Cooking,1 total |achieve 5753
step
Sample a Blackened Surprise |use Blackened Surprise##62676 |achieve 5753/5
step
talk Maegan Tillman##44237
buy 1 Buttery Wheat Roll##58261 |goto 75.68,54.10
buy 1 Scarlet Polypore##58267 |goto 75.68,54.10
buy 1 Violet Morel##58266 |goto 75.68,54.10
step
Sample a Buttery Wheat Roll |use Buttery Wheat Roll##58261 |achieve 5753/7
Sample a Scarlet Polypore |use Scarlet Polypore##58267 |achieve 5753/33
Sample a Violet Morel |use Violet Morel##58266 |achieve 5753/47
step
talk Bario Matalli##49701 |only if skill("Cooking")>=525
buy 1 Recipe: Fortune Cookie##65432 |condition itemcount(65432) >= 1 |achieve 5753  |only if skill("Cooking")>=525 |goto 50.42,71.87
|tip This recipe costs 5 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=525
Your cooking skill is not high enough (525) to use this recipe. Reach at least 525 cooking |confirm |only if skill("Cooking") <= 524
step
#include "auctioneer"
buy 1 Mysterious Fortune Card##60838 |condition itemcount(60838) >= 1 |achieve 5753
|tip These are made with the Inscription profession. You can purchase them from the Auction House.
step
learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Fortune Cookie##88019,Cooking,1 total |achieve 5753
step
Sample a Fortune Cookie |use Fortune Cookie##62649 |achieve 5753/12
step
Congratulations! You have completed the _Cataclysmically Delicious_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Cataclysmically Epic",{
condition_end="achieved(5372)",
description="This guide will walk you through equipping items in each slot that have at least an item level of 359.",
},[[
step
For this achievement you will need to simply equip an Epic (purple) item of at least item level 359 in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
You can either purchase these items from the Auction House or run dungeons and raids for them
confirm |only if not achieved(5372)
step
Your progress will be tracked per slot below
Head |achieve 5372/1
Neck |achieve 5372/2
Shoulder |achieve 5372/3
Chest |achieve 5372/4
Waist |achieve 5372/5
Legs |achieve 5372/6
Feet |achieve 5372/7
Wrist |achieve 5372/8
Hands |achieve 5372/9
Left Ring |achieve 5372/10
Right Ring |achieve 5372/11
Second Trinket |achieve 5372/12
Cloak |achieve 5372/13
Weapon |achieve 5372/14
First Trinket |achieve 5372/15
step
Congratulations, you have earned the Cataclysmically Epic achievement! |only if achieved(5372)
You still have gear to equip please refer back to the list |only if not achieved(5372)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Cataclysmically Superior",{
condition_end="achieved(5373)",
description="This guide will walk you through equipping a superior item in every slot with a minimum item level of 333.",
},[[
step
For this achievement you will need to simply equip a Superior (blue) item of at least item level 333 in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
You can either purchase these items from the Auction House or run dungeons and quests for them
The lowest level dungeons you can run are normal Grim Batol, normal Halls of Origination, and normal Lost City of the Tol'vir
confirm |only if not achieved(5373)
step
Your progress will be tracked per slot below
Head |achieve 5373/1
Neck |achieve 5373/2
Shoulder |achieve 5373/3
Chest |achieve 5373/4
Waist |achieve 5373/5
Legs |achieve 5373/6
Feet |achieve 5373/7
Wrist |achieve 5373/8
Hands |achieve 5373/9
Left Ring |achieve 5373/10
First Trinket |achieve 5373/11
Second Trinket |achieve 5373/12
Cloak |achieve 5373/13
Weapon |achieve 5373/14
Right Ring |achieve 5373/15
step
Congratulations, you have earned the Cataclysmically Superior achievement! |only if achieved(5373)
You still have gear to equip please refer back to the list |only if not achieved(5373)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Drown Your Sorrows",{
condition_end="achieved(5754)",
description="This guide will walk you through drinking these Cataclysm beverages.",
},[[
step
talk Kylene##19186
buy 1 Jug of Badlands Bourbon##2595 |condition itemcount(2595) >= 1 |goto Shattrath City 74.8,30.8
buy 2 Skin of Dwarven Stout##2596 |condition itemcount(2596) >= 2 |goto Shattrath City 74.8,30.8
only if not achieved(5754,1)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Darkbrew Lager##88015,Cooking,1 total |n
Drink the Darkbrew Lager |use Darkbrew Lager##62790 |achieve 5754/1 |goto Shattrath City 75.2,32.4
step
talk Thaegra Tillstone##44235 |goto Stormwind City,64.9,31.9
buy 3 Refreshing Spring Water##159 |condition itemcount(159) >= 3
buy 1 Fresh Water##58274 |condition itemcount(58274) >= 1 |only if not achieved(5754,2)
buy 1 Sparkling Oasis Water##58256 |condition itemcount(58256) >= 1 |only if not achieved(5754,9)
buy 1 Highland Spring Water##58257 |condition itemcount(58257) >= 1 |only if not achieved(5754,6)
step
Drink the Fresh Water |use Fresh Water##58274 |achieve 5754/2
Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256 |achieve 5754/9
Drink the Highland Spring Water |use Highland Spring Water##58257 |achieve 5754/6
step
talk Caretaker Movra##39878
buy 1 Greasy Whale Milk##59029 |n
Drink the Greasy Whale Milk |use Greasy Whale Milk##59029 |achieve 5754/4 |goto Shimmering Expanse 49.1,42.0
step
talk Gronk Hamcheeks##57262
buy 1 Fungus Squeezings##59230 |condition itemcount(59230) >= 1 |goto Twilight Highlands 50.6,58.4 |only if not achieved(5754,3)
buy 1 Murky Water##59229 |condition itemcount(59229) >= 1 |goto Twilight Highlands 50.6,58.4 |only if not achieved(5754,7)
step
Drink the Fungus Squeezings |use Fungus Squeezings##59230 |achieve 5754/3
Drink the Murky Water |use Murky Water##59229 |achieve 5754/7
step
talk Innkeeper Francis##49688
buy 1 Tropical Sunfruit##58278 |condition itemcount(58278) >= 1 |goto Twilight Highlands 79.4,78.5
only if not achieved(5754)
step
talk Innkeeper Allison##6740
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1 |goto Stormwind City 60.4,75.3
next "CookYourself"
only if not achieved(5754)
step
label "CookYourself"
Use the Stormwind Cooking Dailies guide to
earn 12 Epicurean's Award##81
Click here line if you would rather not spend the time earning these Epicurean's Awards |confirm |next "RatherNotCook"
step
talk Bario Matalli##49701
buy 1 Recipe: Starfire Espresso##65414 |condition itemcount(65414) >= 1 |goto Stormwind City 50.8,71.4
buy 1 Recipe: Highland Spirits##65415 |condition itemcount(65415) >= 1 |goto Stormwind City 50.8,71.4
buy 1 Recipe: South Island Iced Tea##65433 |condition itemcount(65433) >= 1 |goto Stormwind City 50.8,71.4
only if not achieved(5754)
step
learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433
step
talk Bario Matalli##49701
buy 1 Imported Supplies##68689 |n
use Imported Supplies##68689
collect 1 Cocoa Beans##62786 |goto Stormwind City 50.8,71.4
only if not achieved(5754)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Starfire Espresso##88045,Cooking,1 total |n
collect 1 Starfire Espresso##62675
only if not achieved(5754)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Highland Spirits##88022,Cooking,1 total |n
collect 1 Highland Spirits##62674
only if not achieved(5754)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 South Island Iced Tea##88044,Cooking,1 total |n
collect 1 South Island Iced Tea##62672
next "ReadytoDrink"
only if not achieved(5754)
step
label "RatherNotCook"
Find a Cook to make your drinks
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly..
collect 1 Starfire Espresso##62675
collect 1 Highland Spirits##62674
collect 1 South Island Iced Tea##62672
only if not achieved(5754)
step
label "ReadytoDrink"
Drink the Starfire Espresso |use Starfire Espresso##62675 |achieve 5754/10
Drink the Highland Spirits |use Highland Spirits##62674 |achieve 5754/5
Drink the South Island Iced Tea |use South Island Iced Tea##62672 |achieve 5754/8
step
Congratulations, you have earned the Drown Your Sorrows Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Dual Talent Specialization",{
condition_end="achieved(2716)",
description="This guide will walk you through visiting your class trainer when you are at least level 30 and activate your Dual Talent Specialization.",
},[[
step
This achievement requires level 30
The cost of dual talent specialization is 10 Gold
confirm
step
talk Einris Brightspear##5515 |goto Stormwind City 67.6,36.3
Learn Dual Talent Specialization |achieve 2716
only Hunter
step
talk Osborne the Night Man##918 |goto Stormwind City 77.5,65.3
Learn Dual Talent Specialization |achieve 2716
only Rogue
step
talk Brother Joshua##5489 |goto Stormwind City 49.5,45.2
Learn Dual Talent Specialization |achieve 2716
only Priest
step
talk Celestine of the Harvest##44395 |goto Stormwind City 57.5,24.9
Learn Dual Talent Specialization |achieve 2716
only Druid
step
talk Lord Grayson Shadowbreaker##928 |goto Stormwind City 52.8,44.9
Learn Dual Talent Specialization |achieve 2716
only Paladin
step
talk Elsharin##5498 |goto Stormwind City 48.2,87.2
Learn Dual Talent Specialization |achieve 2716
only Mage
step
talk Farseer Umbrua##20407 |goto Stormwind City 65.9,31.4
Learn Dual Talent Specialization |achieve 2716
only Shaman
step
talk Ursula Deline##5495 |goto Stormwind City 39.9,84.2
Learn Dual Talent Specialization |achieve 2716
only Warlock
step
talk Wu Shen##5479 |goto Stormwind City 80.1,69.8
Learn Dual Talent Specialization |achieve 2716
only Warrior
step
talk Aysa Cloudsinger##62419 |goto Stormwind City 68.2,16.2
Learn Dual Talent Specialization |achieve 2716
only Monk
step
Congratulations, you have earned the Dual Talent Specialization achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Epic",{
condition_end="achieved(556)",
description="This guide will walk you through equipping items in each slot that have at least an item level of 213.",
},[[
step
For this achievement you will need to simply equip an Epic (purple) item of at least item level 213 in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
You can either purchase these items from the Auction House or run dungeons and raids for them
The lowest level dungeons you can run are normal Forge of Souls, normal Pit of Saron, and normal Halls of Reflection
confirm |only if not achieved(556)
step
Your progress will be tracked per slot below
Chest |achieve 556/1
Legs |achieve 556/2
Wrist |achieve 556/3
Hands |achieve 556/4
Left Ring |achieve 556/5
Cloak |achieve 556/6
Weapon |achieve 556/7
Head |achieve 556/8
Neck |achieve 556/9
Shoulder |achieve 556/10
Feet |achieve 556/11
Waist |achieve 556/12
First Trinket |achieve 556/13
Second Trinket |achieve 556/14
Right Ring |achieve 556/15
step
Congratulations, you have earned the Epic achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Fast and Furious",{
condition_end="achieved(889)",
description="This guide will walk you through learn the journeyman riding skill.",
},[[
step
This achievement requires level 40
confirm
step
talk Darlene Stokx##43693 |goto Stormwind City 77.6,67.2
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [77.0,67.8]
only Human
step
talk Ultham Ironhorn##4772 |goto Dun Morogh 71.2,48.4
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [70.6,48.8]
only Dwarf
step
talk Jartsam##4753 |goto Darnassus 42.6,33.6
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [42.6,32.8]
only Night Elf
step
talk Binjy Featherwhistle##7954 |goto Dun Morogh 56.2,46.4
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [56.2,46.2]
only Gnome
step
talk Aalun##20914 |goto The Exodar 81.4,52.6
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [81.6,52.6]
only Draenei
step
talk Jartsam##4753 |goto Darnassus 42.6,33.6
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [48.6,22.2]
only Worgen
step
talk Darlene Stokx##43693 |goto Stormwind City 77.6,67.2
learn Journeyman Riding##33391 |achieve 889
You can also purchase a mount from the vendor at [67.8,18.6]
only Pandaren
step
Congratulations, you have earned the Fast and Furious achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Friend or Fowl?",{
condition_end="achieved(1254)",
description="This guide will walk you through slaying 15 turkeys in 3 minutes.",
},[[
step
kill Fjord Turkey##24746+ |goto Howling Fjord 66.3,71.1
Slay #15# Turkeys in 3 Minutes |achieve 1254
|tip Kill them as fast as you can, then hurry to kill another one each time.
step
Congratulations, you have earned the Friend or Fowl? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Giddy Up!",{
condition_end="achieved(891)",
description="This guide will walk you through learning the apprentice riding skill.",
},[[
step
This achievement requires level 20
confirm
step
talk Darlene Stokx##43693 |goto Stormwind City 77.6,67.2
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [77.0,67.8]
only Human
step
talk Ultham Ironhorn##4772 |goto Dun Morogh 71.2,48.4
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [70.6,48.8]
only Dwarf
step
talk Jartsam##4753 |goto Darnassus 42.6,33.6
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [42.6,32.8]
only Night Elf
step
talk Binjy Featherwhistle##7954 |goto Dun Morogh 56.2,46.4
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [56.2,46.2]
only Gnome
step
talk Aalun##20914 |goto The Exodar 81.4,52.6
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [81.6,52.6]
only Draenei
step
talk Jartsam##4753 |goto Darnassus 42.6,33.6
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [48.6,22.2]
only Worgen
step
talk Darlene Stokx##43693 |goto Stormwind City 77.6,67.2
learn Apprentice Riding##33388 |achieve 891
You can also purchase a mount from the vendor at [67.8,18.6]
only Pandaren
step
Congratulations, you have earned the Giddy Up! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Going Down?",{
condition_end="achieved(964)",
description="This guide will walk you through falling 65 yards without dying.",
},[[
step
You can do this in several different waysdepending on yoiur class, but we listed the easiest way regardless of level and class
Ride up to the Elevator to the Terrace of Light and jump off either the right or the left side of the Terrace to the flat ground |goto Shattrath City 63.8,41.6 |achieve 964
|tip MAKE SURE TO JUMP.
step
Congratulations, you have earned the Going Down? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Greedy",{
condition_end="achieved(558)",
description="This guide will walk you through winning a greed roll on a superior or better item above level 185 by rolling 100.",
},[[
step
For this achievement you will need to be in a group and roll a 100 on a superior (blue) item of item level 185
The lowest level dungeons that drop this level gear area Normal Old Stratholme, The Oculus, Utgarde Pinnacle, and Halls of Lightning
You can also find items that will count in all of the Northrend Heroic Dungeons, Cataclysm dungeons (N and H), Pandaria dungeons (N and H), and Draenor dungeons (N and H)
confirm
step
Greed Roll a 100 on a Superior (Blue) item with iLvl 185+ |achieve 558
step
Congratulations, you have earned the Greedy achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Higher Learning",{
condition_end="achieved(1956)",
description="This guide will walk you through reading the volumes of 'The Schools of Arcane Magic' found in Dalaran.",
},[[
step
Warning: These books have respawn timers of about 3-4 hours (it seems to be random between those times) so this achievement may take you a while to get
|tip The book you want won't always be there. Fake trash books spawn to make the achievement even harder to get, but keep at it. Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
This is an achievement that you may want to dedicate a lot of time to if you want it
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide
Good luck!
confirm |only if not achieved(1956)
step "RestartHigherLearning"
click The Schools of Arcane Magic - Illusion##8128
|tip It looks like a brown book laying on a wooden crate.
Read The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran 64.4,52.4
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Introduction##8133
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
Read The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto Dalaran 56.6,45.6
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Abjuration##8128
|tip It looks like a brown book laying on ground next to a small table inside this building.
Read The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto Dalaran 52.3,54.8
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Enchantment##8051
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
Read The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto Dalaran 43.6,46.7
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Transmutation##8051
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.
Read The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto Dalaran 46.8,40.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Necromancy##8133
|tip It looks like a blue book laying on a bookshelf upstairs in this building.
Read The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto Dalaran 46.8,39.1
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Conjuration##8345
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
Read The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto Dalaran 30.8,46.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Divination##8051
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
Read The Schools of Arcane Magic - Divination |achieve 1956/4 |goto Dalaran 26.5,52.1
_Click here_ if this book isn't available |confirm
step
Looks like you still need more education! _Click here_ to start the guide over |confirm |next "RestartHigherLearning" |only if not achieved(1956)
Congratulations, you have earned the Higher Learning achievement! |only if achieved(1956)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Into The Wild Blue Yonder",{
condition_end="achieved(890)",
description="This guide will walk you through learning the expert riding skill.",
},[[
step
This achievement _requires_ level 60
The cost of this riding training is 250 Gold
|tip The price can be reduced by home faction discounts based on current reputation.
confirm
step
talk Bralla Cloudwing##43769 |goto Stormwind City 70.6,73.0
learn Expert Riding##34090 |achieve 890
You can also purchase a mount from the vendor at [71.4,72.2]
step
Congratulations, you have earned the Into The Wild Blue Yonder achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\It's Happy Hour Somewhere",{
condition_end="achieved(1833)",
description="This guide will walk you through drinking 25 different types of beverages.",
},[[
stickystart "tracker"
step
talk Innkeeper Allison##6740 |goto Stormwind City 60.4,75.3
buy 1 Refreshing Spring Water##159 |condition itemcount(159) >= 1
buy 1 Ice Cold Milk##1179 |condition itemcount(1179) >= 1
buy 1 Melon Juice##1205 |condition itemcount(1205) >= 1
buy 1 Sweet Nectar##1708 |condition itemcount(1708) >= 1
buy 1 Moonberry Juice##1645 |condition itemcount(1645) >= 1
buy 1 Morning Glory Dew##8766 |condition itemcount(8766) >= 1
buy 1 Filtered Draenic Water##28399 |condition itemcount(28399) >= 1
buy 1 Fresh Water##58274 |condition itemcount(58274) >= 1
buy 1 Pugnent Seal Whey##33444 |condition itemcount(33444) >= 1
buy 1 Honeymint Tea##33445 |condition itemcount(33445) >= 1
buy 1 Sparkling Oasis Water##58256 |condition itemcount(58256) >= 1
buy 1 Highland Spring Water##58257 |condition itemcount(58257) >= 1
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
step
talk Daisy##40832 |goto Thousand Needles 76.5,74.8
buy 1 Bottle of Pinot Noir##2723 |condition itemcount(2723) >= 1
buy 1 Glass of Eversong Wine##44570 |condition itemcount(44570) >= 1
buy 1 Honey Mead##40035 |condition itemcount(40035) >= 1
buy 1 Flask of Port##2593 |condition itemcount(2593) >= 1
buy 1 Bottle of Silvermoon Port##44571 |condition itemcount(44571) >= 1
buy 1 Skin of Dwarven Stout##2596 |condition itemcount(2596) >= 1
buy 1 Flask of Bitter Cactus Cider##44575 |condition itemcount(44575) >= 1
buy 1 Snowplum Brandy##40036 |condition itemcount(40036) >= 1
buy 1 Flagon of Mead##2594 |condition itemcount(2594) >= 1
buy 1 Cup of Frog Venom Brew##44573 |condition itemcount(44573) >= 1
buy 1 Caraway Burnwine##40042 |condition itemcount(40042) >= 1
buy 1 Jug of Bourbon##2595 |condition itemcount(2595) >= 1
buy 1 Skin of Mulgore Firewater##44574 |condition itemcount(44574) >= 1
only if not achieved(1833)
step
Drink the Bottle of Pinot Noir |use Bottle of Pinot Noir##2723
Drink the Glass of Eversong Wine |use Glass of Eversong Wine##44570
Drink the Honey Mead |use Honey Mead##40035
Drink the Flask of Port |use Flask of Port##2593
Drink the Bottle of Silvermooon Port |use Bottle of Silvermoon Port##44571
Drink the Skin of Dwarven Stout |use Skin of Dwarven Stout##2596
Drink the Flask of Bitter Cactus |use Flask of Bitter Cactus Cider##44575
Drink the Snowplum Brandy |use Snowplum Brandy##40036
Drink the Flagon of Mead |use Flagon of Mead##2594
Drink the Cup of Frog Venom Brew |use Cup of Frog Venom Brew##44573
Drink the Caraway Burnwine |use Caraway Burnwine##40042
Drink the Jug of Bourbon |use Jug of Bourbon##2595
Drink the Skin of Mulgore Firewater |use Skin of Mulgore Firewater##44574
_Click here_ to continue |confirm
step "tracker"
Drink #25# different types of beverages |achieve 1833 |only if not achieved(1833)
Congratulations, you have earned the It's Happy Hour Somewhere Achievement! |only if achieved(1833)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\To All The Squirrels (Loved, Shared, Cared)/Pest Control",{
condition_end="achieved(5548)",
achieveid={1206,2557,2556},
description="This guide will walk you through showing the critters of Azeroth how much you /love them and slaying the pests.",
},[[
step
label "start"
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City 60.4,75.3
only if not achieved(5548)
step
clicknpc Rockchewer Whelk##48848
Use the Love emote on a Rockchewer Whelk |script DoEmote("LOVE")
Love a Rockchewer Whelk |achieve 5548/9 |goto Shimmering Expanse 41.3,53.9
step
clicknpc Sea Cucumber##48802
Use the Love emote on a Sea Cucumber |script DoEmote("LOVE")
Love a Sea Cucumber |achieve 5548/11 |goto Shimmering Expanse 41.3,53.9
step
kill Rat##4075 |achieve 2556/18 |goto The Cape of Stranglethorn 40.0,67.7
step
kill Roach##4076 |achieve 2556/9 |goto The Cape of Stranglethorn 42.2,69.5
step
clicknpc Wharf Rat##47667
Use the Love emote on a Wharf Rat |script DoEmote("LOVE")
Love a Wharf Rat |achieve 5548/12 |goto The Cape of Stranglethorn 42.7,72.8
step
clicknpc Parrot##9600
Use the Love emote on a Parrot |script DoEmote("LOVE")
Love a Parrot |achieve 1206/11 |goto Northern Stranglethorn 50.5,66.4
step
kill Scorpion##61326 |achieve 2556/14 |goto Blasted Lands 42.5,21.9
step
kill Fire Beetle##9699 |achieve 2556/16 |goto Blasted Lands 44.4,32.9
step
clicknpc Huge Toad##61368
Use the Love emote on a Huge Toad |script DoEmote("LOVE")
Love a Huge Toad |achieve 2557/7 |goto Swamp of Sorrows 39.7,51.0
step
clicknpc Skunk##17467
Use the Love emote on a Skunk |script DoEmote("LOVE")
|tip It looks like a small skunk that walks around this area.
Love a Skunk |achieve 1206/16 |goto Duskwood 12.3,65.8
step
clicknpc Rabbit##61080
Use the Love emote on a Rabbit |script DoEmote("LOVE")
Love a Rabbit |achieve 1206/12 |goto Elwynn Forest 36.3,85.8
step
clicknpc Deer##883
Use the Love emote on a Deer |script DoEmote("LOVE")
|tip Be sure not to get it mixed up with the fawn also in the area.
Love a Deer |achieve 1206/5 |goto Elwynn Forest 24.9,83.0
step
clicknpc Fawn##890
Use the Love emote on a Fawn |script DoEmote("LOVE")
Love a Fawn |achieve 1206/7 |goto Elwynn Forest 24.9,83.0
step
clicknpc Cow##2442
Use the Love emote on a Cow |script DoEmote("LOVE")
Love a Cow |achieve 1206/4 |goto Elwynn Forest 32.3,77.2
step
clicknpc Chicken##620
Use the Love emote on a Chicken |script DoEmote("LOVE")
Love a Chicken |achieve 1206/3 |goto Elwynn Forest 36.5,60.1
step
clicknpc Cat##6368
Use the Love emote on a Cat |script DoEmote("LOVE")
Love a Cat |achieve 1206/2 |goto Elwynn Forest 44.5,53.8
step
kill Gold Beetle##32258 |achieve 2556/17 |goto Badlands 50.4,43.9
step
clicknpc Lava Crab##9700
Use the Love emote on a Lava Crab |script DoEmote("LOVE")
Love a Lava Crab |achieve 2557/8 |goto Searing Gorge 31.1,43.7
step
clicknpc Sheep##1933
Use the Love emote on a Sheep |script DoEmote("LOVE")
Love a Sheep |achieve 1206/14 |goto Loch Modan 20.9,71.9
step
clicknpc Ram##2098
Use the Love emote on a Ram |script DoEmote("LOVE")
Love a Ram |achieve 1206/13 |goto Loch Modan 25.1,37.8
step
clicknpc Squirrel##1412
Use the Love emote on a Squirrel |script DoEmote("LOVE")
Love a Squirrel |achieve 1206/17 |goto Loch Modan 29.0,66.3
step
kill Squirrel##1412 |achieve 2556/4 |goto Loch Modan 29.0,66.3
step
label "travel_twilight"
clicknpc Yellow-Bellied Marmot##48683
Use the Love emote on a Yellow-Bellied Marmot |script DoEmote("LOVE")
Love a Yellow-Bellied Marmot |achieve 5548/13 |goto Twilight Highlands 29.3,33.1
step
clicknpc Highlands Turkey##48706
Use the Love emote on a Highlands Turkey |script DoEmote("LOVE")
Love a Highlands Turkey |achieve 5548/4 |goto Twilight Highlands 29.3,33.1
step
clicknpc Shore Crab##60761
Use the Love emote on a Shore Crab |script DoEmote("LOVE")
Love a Shore Crab |achieve 1206/15 |goto Twilight Highlands 71.2,41.2
step
kill Maggot##16030 |achieve 2556/13 |goto The Hinterlands 31.9,57.9
step
kill Larva##16068 |achieve 2556/1 |goto Ghostlands 45.3,31.1
step
clicknpc Ewe##19665
Use the Love emote on a Ewe |script DoEmote("LOVE")
Love an Ewe |achieve 1206/6 |goto Shattrath City 58.8,23.3
step
clicknpc Borean Marmot##31685
Use the Love emote on a Borean Marmot |script DoEmote("LOVE")
Love a Borean Marmot |achieve 2557/2 |goto Borean Tundra 36.0,55.9
step
clicknpc Tundra Penguin##28440
Use the Love emote on a Tundra Penguin |script DoEmote("LOVE")
Love a Tundra Penguin |achieve 2557/12 |goto Borean Tundra 24.5,61.8
step
clicknpc Steam Frog##25679
Use the Love emote on a Steam Frog |script DoEmote("LOVE")
Love a Steam Frog |achieve 1206/18 |goto Borean Tundra 61.0,51.8
step
clicknpc Borean Frog##25677
Use the Love emote on a Borean Frog |script DoEmote("LOVE")
Love a Borean Frog |achieve 1206/1 |goto Borean Tundra 72.7,41.0
step
clicknpc Sholazar Tickbird##28093
Use the Love emote on a Sholazar Tickbird |script DoEmote("LOVE")
Love a Sholazar Tickbird |achieve 2557/11 |goto Sholazar Basin 27.1,60.5
step
clicknpc Glacier Penguin##32498
Use the Love emote on a Glacier Penguin |script DoEmote("LOVE")
Love a Glacier Penguin |achieve 2557/5 |goto Icecrown 60.9,18.8
step
kill Underbelly Rat##32428 |achieve 2556/5 |goto Dalaran/2 41.0,50.4
step
kill Zul'Drak Rat##28202 |achieve 2556/8 |goto Zul'Drak 42.4,63.1
step
clicknpc Arctic Hare##29328
Use the Love emote on an Arctic Hare |script DoEmote("LOVE")
Love an Artic Hare |achieve 2557/1 |goto Zul'Drak 71.8,69.8
step
clicknpc Grizzly Squirrel##31889
Use the Love emote on a Grizzly Squirrel |script DoEmote("LOVE")
Love a Grizzly Squirrel |achieve 2557/6 |goto Grizzly Hills 66.7,13.1
step
clicknpc Mountain Skunk##31890
Use the Love emote on a Mountain Skunk |script DoEmote("LOVE")
Love a Mountain Skunk |achieve 2557/9 |goto Grizzly Hills 68.6,11.8
step
kill Fjord Rat##24174 |achieve 2556/15 |goto Howling Fjord 45.0,30.3
step
clicknpc Fjord Penguin##28407
Use the Love emote on a Fjord Penguin |script DoEmote("LOVE")
Love a Fjord Penguin |achieve 2557/3 |goto Howling Fjord 20.8,61.8
step
clicknpc Scalawag Frog##26503
Use the Love emote on a Scalawag Frog |script DoEmote("LOVE")
Love a Scalawag Frog |achieve 2557/10 |goto Howling Fjord 35.6,81.8
step
Follow the path to the bottom of the catacombs
kill Devouring Maggot##24270 |achieve 2556/6 |goto Howling Fjord 57.1,56.8
step
clicknpc Fjord Turkey##24746
Use the Love emote on a Fjord Turkey |script DoEmote("LOVE")
Love a Fjord Turkey |achieve 2557/4 |goto Howling Fjord 66.4,71.1
step
clicknpc Sassy Cat##47682
Use the Love emote on a Sassy Cat |script DoEmote("LOVE")
Love a Sassy Cat |achieve 5548/10 |goto Tol Barad Peninsula 61.2,35.5
step
clicknpc Baradin Fox Kit##48630
Use the Love emote on a Baradin Fox Kit |script DoEmote("LOVE")
Love a Baradin Fox Kit |achieve 5548/2 |goto Tol Barad 44.5,25.8
step
clicknpc Toad##1420
Use the Love emote on a Toad |script DoEmote("LOVE")
Love a Toad |achieve 1206/20 |goto Darnassus 42.4,46.9
step
clicknpc Alpine Chipmunk##49779
Use the Love emote on an Alpine Chipmunk |script DoEmote("LOVE")
Love an Alpine Chipmunk |achieve 5548/1 |goto Winterspring 51.5,47.9
step
kill Crystal Spider##32261 |achieve 2556/11 |goto Winterspring 48.8,54.8
step
clicknpc Grotto Vole##50419
Use the Love emote on a Grotto Vole |script DoEmote("LOVE")
Love a Grotto Vole |achieve 5548/3 |tip Inside of the cave |goto Mount Hyjal 54.5,17.1
step
clicknpc Rock Viper##50481
Use the Love emote on a Rock Viper |script DoEmote("LOVE")
Love a Rock Viper |achieve 5548/8 |goto Mount Hyjal 38.4,56.6
step
clicknpc Gazelle##4166
Use the Love emote on a Gazelle |script DoEmote("LOVE")
Love a Gazelle |achieve 1206/9 |goto Northern Barrens 51.8,56.4
step
clicknpc Small Frog##13321
Use the Love emote on a Small Frog |script DoEmote("LOVE")
Love a Small Frog |achieve 1206/8 |goto Northern Barrens 37.9,46.1
step
clicknpc Prairie Dog##2620
Use the Love emote on a Prairie Dog |script DoEmote("LOVE")
Love a Prairie Dog |achieve 1206/21 |goto Northern Barrens 66.0,42.1
step
kill Water Snake##4953 |achieve 2556/2 |goto Durotar 36.4,40.8
step
clicknpc Hare##5951
Use the Love emote on a Hare |script DoEmote("LOVE")
Love a Hare |achieve 1206/10 |goto Durotar 50.5,30.2
step
kill Adder##3300 |achieve 2556/12 |goto Durotar 45.6,16.0
step
clicknpc Swine##10685
Use the Love emote on a Swine |script DoEmote("LOVE")
Love a Swine |achieve 1206/19 |goto Durotar 43.7,30.1
step
kill Spider##14881 |achieve 2556/3 |goto Dustwallow Marsh 35.0,24.0
step
kill Mouse##6271 |achieve 2556/7 |goto Dustwallow Marsh 46.2,56.9
step
kill Snake##2914 |achieve 2556/10  |goto Dustwallow Marsh 50.0,57.6
step
clicknpc Rattlesnake##48686
Use the Love emote on a Rattlesnake |script DoEmote("LOVE")
Love a Rattlesnake |achieve 5548/7 |goto Tanaris 46.9,26.9
step
clicknpc Mac Frog##50491
Use the Love emote on a Mac Frog |script DoEmote("LOVE")
Love a Mac Frog |achieve 5548/5 |goto Uldum 56.6,35.1
step
clicknpc Oasis Moth##50496
Use the Love emote on an Oasis Moth |script DoEmote("LOVE")
Love an Oasis Moth |achieve 5548/6 |goto Uldum 55.0,36.1
step
Congratulations, you have earned the To All The Squirrels I've Loved Before achievement! |only if achieved(1206)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(1206)
Congratulations, you have earned the To All The Squirrels Who Shared My Life achievement! |only if achieved(2557)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(2557)
Congratulations, you have earned the To All the Squirrels Who Cared for Me achievement! |only if achieved(5548)
You've missed some squirrels! _Click here_ to start over |confirm |next "start" |only if not achieved(5548)
Congratulations, you have earned the Pest Control achievement! |only if achieved(2556)
You've missed some pests! _Click here_ to start over |confirm |next "start" |only if not achieved(2556)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Safe Deposit",{
condition_end="achieved(546)",
description="This guide will walk you through buying 7 additional bank slots.",
},[[
step
This achievement will cost you _111 gold 10 silver_ to complete
confirm
step
talk Kristin Cazarez##43692 |goto Stormwind City 63.5,80.0
Purchase #7# Bank Slots |achieve 546
step
Congratulations, you have earned the Safe Deposit achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Shave and a Haircut",{
condition_end="achieved(545)",
description="This guide will walk you through visiting a Barber Shop and get your hair cut.",
},[[
step
Click on the Barbershop Chair |goto Stormwind City 61.6,64.6 |only if not achieved(545)
|tip It looks like a mechanical chair with a foot rest.
Change your hair style or hair color then click "Okay." |achieve 545
|tip This will cost money to do so be sure you have the extra gold to purchase a hair style.
step
Congratulations, you have earned the Shave and a Haircut achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Superior",{
condition_end="achieved(557)",
description="This guide will walk you through equipping a superior item in every slot with a minimum item level of 187.",
},[[
step
For this achievement you will need to simply equip a Superior (blue) item of at least item level 187 in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
You can either purchase these items from the Auction House or run dungeons and quests for them
The lowest level dungeons you can run are normal Old Stratholme, normal The Oculus, normal Halls of Lightning, and normal Utgarde Pinnacle
confirm |only if not achieved(557)
step
Your progress will be tracked per slot below
Feet |achieve 557/1
Waist |achieve 557/2
Legs |achieve 557/3
First Trinket |achieve 557/4
Head |achieve 557/5
Neck |achieve 557/6
Shoulder |achieve 557/7
Chest |achieve 557/8
Second Trinket |achieve 557/9
Cloak |achieve 557/10
Weapon |achieve 557/11
Wrist |achieve 557/12
Hands |achieve 557/13
Left Ring |achieve 557/14
Right Ring |achieve 557/15
step
Congratulations, you have earned the Superior achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Tastes Like Chicken",{
condition_end="achieved(1832)",
description="This guide will walk you through sampling 50 different kinds of Azeroth's delectable dishes.",
},[[
stickystart "tracker"
step
talk Innkeeper Firebrew##5111 |goto Ironforge 18.6,51.6
buy 1 Tough Jerky##117 |condition itemcount(117) >= 1
buy 1 Haunch of Meat##2287 |condition itemcount(2287) >= 1
buy 1 Mutton Chop##3770 |condition itemcount(3770) >= 1
buy 1 Wild Hog Shank##3771 |condition itemcount(3771) >= 1
buy 1 Cured Ham Steak##4599 |condition itemcount(4599) >= 1
buy 1 Roasted Quail##8952 |condition itemcount(8952) >= 1
buy 1 Smoked Talbuk Venison##27854 |condition itemcount(27854) >= 1
buy 1 Salted Venison##33454 |condition itemcount(33454) >= 1
buy 1 Mead Basted Caribou##35953 |condition itemcount(35953) >= 1
buy 1 Roasted Beef##58268 |condition itemcount(58268) >= 1
buy 1 Massive Turkey Leg##58269 |condition itemcount(58269) >= 1
only if not achieved(1832)
step
talk Myra Tyrngaarde##5109 |goto Ironforge 27.8,72.2
|tip She patrols the auction house area.
buy 1 Tough Hunk of Bread##4540 |condition itemcount(4540) >= 1
buy 1 Freshly Baked Bread##4541 |condition itemcount(4541) >= 1
buy 1 Moist Cornbread##4542 |condition itemcount(4542) >= 1
buy 1 Mulgore Spice Bread##4544 |condition itemcount(4544) >= 1
buy 1 Soft Banana Bread##4601 |condition itemcount(4601) >= 1
buy 1 Homemade Cherry Pie##8950 |condition itemcount(8950) >= 1
buy 1 Mag'har Grainbread##27855 |condition itemcount(27855) >= 1
buy 1 Crusty Flatbread##33449 |condition itemcount(33449) >= 1
buy 1 Sweet Potato Bread##35950 |condition itemcount(35950) >= 1
buy 1 Pine Nut Bread##58260 |condition itemcount(58260) >= 1
buy 1 Buttery Wheat Roll##58261 |condition itemcount(58261) >= 1
only if not achieved(1832)
step
Eat the Tough Jerky |use Tough Jerky##117
Eat the Tough Hunk of Bread |use Tough Hunk of Bread##4540
Eat the Haunch of Meat |use Haunch of Meat##2287
Eat the Freshly Baked Bread |use Freshly Baked Bread##4541
Eat the Mutton Chop |use Mutton Chop##3770
Eat the Moist Cornbread |use Moist Cornbread##4542
Eat the Wild Hog Shank |use Wild Hog Shank##3771
Eat the Mulgore Spice Bread |use Mulgore Spice Bread##4544
Eat the Cured Ham Steak |use Cured Ham Steak##4599
Eat the Soft Banana Bread |use Soft Banana Bread##4601
_Click here_ to continue |confirm
step
Eat the Roasted Quail |use Roasted Quail##8952
Eat the Homemade Cherry Pie |use Homemade Cherry Pie##8950
Eat the Smoked Talbuk Venison |use Smoked Talbuk Venison##27854
Eat the Mag'har Grainbread |use Mag'har Grainbread##27855
Eat the Salted Venison |use Salted Venison##33454
Eat the Crusty Flatbread |use Crusty Flatbread##33449
Eat the Mead Basted Cariboy |use Mead Basted Caribou##35953
Eat the Sweet Potato Bread |use Sweet Potato Bread##35950
Eat the Roasted Beef |use Roasted Beef##58268
Eat the Pine Nut Bread |use Pine Nut Bread##58260
Eat the Massive Turkey |use Massive Turkey Leg##58269
Eat the Buttery Wheat Roll |use Buttery Wheat Roll##58261
_Click here_ to continue |confirm
step
talk Thaegra Tillstone##44235 |goto Stormwind City 64.9,32.0
buy 1 Forest Mushroom Cap##4604 |condition itemcount(4604) >= 1
buy 1 Red-Speckeled Mushroom##4605 |condition itemcount(4605) >= 1
buy 1 Spongy Morel##4606 |condition itemcount(4606) >= 1
buy 1 Delicious Cave Mold##4607 |condition itemcount(4607) >= 1
buy 1 Raw Black Truffle##4608 |condition itemcount(4608) >= 1
buy 1 Dried King Bolete##8948 |condition itemcount(8948) >= 1
only if not achieved(1832)
step
Eat the Forest Mushroom |use Forest Mushroom Cap##4604
Eat the Red-Speckeled Mushroom |use Red-Speckeled Mushroom##4605
Eat the Spongy Morel |use Spongy Morel##4606
Eat the Delicious Cave Mold |use Delicious Cave Mold##4607
Eat the Raw Black Truffle |use Raw Black Truffle##4608
Eat the Dried King Bolete |use Dried King Bolete##8948
_Click here_ to continue |confirm
step
talk Talaelar##4221 |goto Darnassus 48.8,61.3
buy 1 Slitherskin Mackerel##787 |condition itemcount(787) >= 1
buy 1 Longjaw Mud Snapper##4592 |condition itemcount(4592) >= 1
buy 1 Bristle Whisker Catfish##4593 |condition itemcount(4593) >= 1
buy 1 Rockscale Cod##4594 |condition itemcount(4594) >= 1
buy 1 Striped Yellowtail##21552 |condition itemcount(21552) >= 1
buy 1 Spinefin Halibut##8957 |condition itemcount(8957) >= 1
buy 1 Sunspring Carp##27858 |condition itemcount(27858) >= 1
buy 1 Fillet of Icefin##33451 |condition itemcount(33451) >= 1
buy 1 Poached Emperor Salmon##35951 |condition itemcount(35951) >= 1
buy 1 Sliced Raw Billfish##58262 |condition itemcount(58262) >= 1
buy 1 Grilled Shark##58263 |condition itemcount(58263) >= 1
only if not achieved(1832)
step
talk Innkeeper Saelienne##6735 |goto Darnassus 62.5,32.8
buy 1 Shiny Red Apple##4536 |condition itemcount(4536) >= 1
buy 1 Tel'Abim Banana##4537 |condition itemcount(4537) >= 1
buy 1 Snapvine Watermelon##4538 |condition itemcount(4538) >= 1
buy 1 Goldenbark Apple##4539 |condition itemcount(4539) >= 1
buy 1 Moon Harvest Pumpkin##4602 |condition itemcount(4602) >= 1
buy 1 Deep Fried Plantains##8953 |condition itemcount(8953) >= 1
buy 1 Skethyl Berries##27856 |condition itemcount(27856) >= 1
buy 1 Tundra Berries##35949 |condition itemcount(35949) >= 1
buy 1 Savory Snowplum##35948 |condition itemcount(35948) >= 1
buy 1 Sour Green Apple##58264 |condition itemcount(58264) >= 1
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1
only if not achieved(1832)
step
Eat the Slitherskin Mackerel |use Slitherskin Mackerel##787
Eat the Shiny Red Apple |use Shiny Red Apple##4536
Eat the Longjaw Mud Snapper |use Longjaw Mud Snapper##4592
Eat the Tel'Abim Banana |use Tel'Abim Banana##4537
Eat the Bristle Whisker Catfish |use Bristle Whisker Catfish##4593
Eat the Snapvine Watermelon |use Snapvine Watermelon##4538
Eat the Rockscale Cod |use Rockscale Cod##4594
Eat the Goldenbark Apple |use Goldenbark Apple##4539
Eat the Striped Yellowtail |use Striped Yellowtail##21552
Eat the Moon Harvest Pumpkin |use Moon Harvest Pumpkin##4602
_Click here_ to continue |confirm
step
Eat the Spinefin Hailibut |use Spinefin Halibut##8957
Eat the Deep Fried Plantains |use Deep Fried Plantains##8953
Eat the Sunspring Carp |use Sunspring Carp##27858
Eat the Skethyl Berries |use Skethyl Berries##27856
Eat the Fillet of Icefin |use Fillet of Icefin##33451
Eat the Tundra Berries |use Tundra Berries##35949
Eat the Poached Emperor |use Poached Emperor Salmon##35951
Eat the Savory Snowplum |use Savory Snowplum##35948
Eat the Sliced Raw Billfish |use Sliced Raw Billfish##58262
Eat the Sour Green Apple |use Sour Green Apple##58264
Eat the Grilled Shark |use Grilled Shark##58263
Eat the Highland Pomegranate |use Highland Pomegranate##58265
_Click here_ to continue |confirm
step "tracker"
Sample #50# different kinds of Azeroth's delectable dishes |achieve 1832 |only if not achieved(1832)
Congratulations, you have earned the Tastes Like Chicken Achievement! |only if achieved(1832)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\The Right Stuff",{
condition_end="achieved(892)",
description="This guide will walk you through learning the artisan riding skill.",
},[[
step
This achievement requires level 70
The cost of this riding training is 5000 Gold
|tip The price can be reduced by home faction discounts based on current reputation.
confirm
step
talk Bralla Cloudwing##43769 |goto Stormwind City 70.6,73.0
learn Artisan Riding##34091 |achieve 892
You can also purchase a mount from the vendor at [71.4,72.2]
step
Congratulations, you have earned the The Right Stuff achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Well Read",{
condition_end="achieved(1244)",
description="This guide will walk you through reading the scattered books of Azeroth.",
},[[
step
click The World Tree and the Emerald Dream##559 |achieve 1244/27 |goto Stormwind City 85.4,23.3
|tip It's on the table.
step
click The War of the Ancients##559 |achieve 1244/4 |goto Stormwind City 85.3,23.2
|tip It's on the table.
step
click Aegwynn and the Dragon Hunt##3871 |achieve 1244/22 |goto Stormwind City 85.8,23.7
|tip On the pillar base next to the candles.
step
click The New Horde##559 |achieve 1244/17 |goto Stormwind City 86.1,25.5
|tip On the pillar base.
step
click The Guardians of Tirisfal##2530 |achieve 1244/16 |goto Stormwind City 85.0,26.1
|tip On the table.
step
click Aftermath of the Second War##558 |achieve 1244/18 |goto Stormwind City 85.2,26.1
|tip On the table.
step
click The Alliance of Lordaeron##558 |achieve 1244/33 |goto Stormwind City 85.2,26.1
|tip On the table.
step
click The Kaldorei and the Well of Eternity##560 |achieve 1244/21 |goto Stormwind City 84.7,25.9
|tip On the pillar base next to the candles.
step
click Beyond the Dark Portal##559 |achieve 1244/9 |goto Stormwind City 84.6,24.3
|tip On the chair.
step
click Civil War in the Plaguelands##559 |achieve 1244/20 |goto Stormwind City 85.0,23.4
|tip On the pillar base next to the candles.
step
click War of the Spider##558 |achieve 1244/14 |goto Stormwind City 86.7,35.8
|tip On the command table.
step
click The Battle of Grim Batol##560 |achieve 1244/36 |goto Stormwind City 86.5,36.0
|tip On the command table.
step
click The Dark Portal and the Fall of Stormwind##558 |achieve 1244/15 |goto Stormwind City 87.1,35.9
|tip On the command table.
step
click Archimonde's Return and the Flight to Kalimdor##560 |achieve 1244/30 |goto Stormwind City 51.8,74.5
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Mount Hyjal and Illidan's Gift##559 |achieve 1244/39 |goto Stormwind City 51.8,74.6
|tip Inside on the table behind Mazen Mac'Nadir.
step
click Rise of the Blood Elves##3871 |achieve 1244/40 |goto Elwynn Forest 64.6,69.5
|tip On top of the bookshelf on the top floor of the tower.
step
click Lethargy of the Orcs##3871 |achieve 1244/31 |goto Elwynn Forest 85.3,69.7
|tip Upstairs on the table.
step
click The Birth of the Lich King##2530 |achieve 1244/42 |goto Duskwood 72.1,46.6
|tip In the town hall on a table next to Role Dreuger.
step
click Kil'jaeden and the Shadow Pact##2530 |achieve 1244/13 |goto Duskwood 74.2,45.3
|tip In the inn on the bookshelf on the second floor.
step
click The Founding of Quel'Thalas##3871 |achieve 1244/24 |goto Duskwood 73.7,45.1
|tip In the next room over on the table.
step
click The Last Guardian##559 |achieve 1244/1 |goto Loch Modan 37.2,47.0
|tip Downstairs inside the home on the nightstand next to the bed.
step
click The Old Gods and the Ordering of Azeroth##558 |achieve 1244/29 |goto Ironforge 76.5,10.6
|tip On the center table.
step
click Charge of the Dragonflights##560 |achieve 1244/34 |goto Ironforge 76.5,10.6
|tip On the center table.
step
click Ironforge - the Awakening of the Dwarves##558 |achieve 1244/38 |goto Ironforge 75.1,9.1
|tip On the table.
step
click War of the Three Hammers##560 |achieve 1244/32 |goto Ironforge 75.1,9.2
|tip On the table.
step
click Arathor and the Troll Wars##559 |achieve 1244/8 |goto Ironforge 77.0,9.5
|tip On the table.
step
click Rise of the Horde##560 |achieve 1244/41 |goto Ironforge 76.8,12.3
|tip On the table.
step
click The Invasion of Draenor##3871 |achieve 1244/19 |goto Scholomance/2 56.1,41.2
|tip This book is found after fighting Lilian Voss on the floor in the corner.
step
Make your way into The Scarlet Bastion |goto Stratholme/1 31.9,34.8 < 10 |walk
click The Seven Kingdoms##560 |achieve 1244/7 |goto Stratholme/1 30.1,41.3
|tip On the table next to Commander Malor.
step
click Kel'Thuzad and the Forming of the Scourge##2530 |achieve 1244/28 |goto Stratholme/1 25.1,70.3
|tip On the table between the bookshelves.
step
click The Lich King Triumphant##560 |achieve 1244/6 |goto Stratholme/1 25.5,70.5
|tip On the table between the bookshelves.
step
click Icecrown and the Frozen Throne##559 |achieve 1244/12 |goto Stratholme/1 25.8,71.5
|tip On the table between the bookshelves.
step
click Sunwell - The Fall of Quel'Thalas##559 |achieve 1244/25 |goto The Cape of Stranglethorn 41.0,74.4
|tip Inside the inn on the corner table right up the stairs.
step
click The Twin Empires##559 |achieve 1244/3 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Empires' Fall##558 |achieve 1244/10 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click Wrath of Soulflayer##3871 |achieve 1244/5 |goto The Cape of Stranglethorn 42.1,73.7
|tip All the way downstairs on a bookshelf in the same room as the auctioneer.
step
click The Scourge of Lordaeron##2530 |achieve 1244/26 |goto The Cape of Stranglethorn 41.9,73.5
|tip All the way downstairs on a bookshelf under the stairs in the same room as the auctioneer.
step
click The Sentinels and the Long Vigil##560 |achieve 1244/2 |goto The Cape of Stranglethorn 42.1,73.6
|tip All the way upstairs on the nightstand next to the bed.
step
click Sargeras and the Betrayal##2530 |achieve 1244/23 |goto Northern Barrens 67.0,74.9
|tip In the Ratchet Inn on the nightstand between two beds.
step
click Exile of the High Elves##558 |achieve 1244/11 |goto Northern Barrens 67.1,73.4
|tip In the Ratchet Blacksmith second floor on a barrel sitting on the balcony.
step
click Old Hatreds - The Colonization of Kalimdor##560 |achieve 1244/35 |goto Tanaris 51.0,30.2
|tip In Godgetzan laying on the sand next to a set of baskets.
step
click The Betrayer Ascendant##2530 |achieve 1244/37 |goto Darnassus 62.0,74.6
|tip On the counter against the south west wall.
step
Congratulations, you have earned the Well Read Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\You'll Feel Right as Rain",{
condition_end="achieved(5779)",
description="This guide will walk you through feeling 1000% better by eating Chocolate Cookies.",
},[[
step
_Click here_ to buy them from the Auction House |confirm |next "buy"
_Click here_ to make them yourself  |confirm |next "cook"
step
label "buy"
talk Auctioneer Fitch##8719
buy 91 Chocolate Cookie##62680 |n |goto Stormwind City 61.0,70.7
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779 |next "end"
step
label "cook"
Use the Stormwind City Cooking Dailies guide to
earn 6 Epicurean's Award##81 |tip Three for the recipe and the rest for the cocoa beans you'll need.
step
talk Bario Matalli##49701
buy Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Stormwind City 50.4,71.8
step
talk Bario Matalli##49701
buy 2 Imported Supplies##68689 |n |tip If you need more buy another until you have 91 beans.
collect 91 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Stormwind City 50.4,71.8
step
talk Erika Tate##5483
buy 91 Simple Flour##30817 |condition itemcount(30817) >= 91 |goto Stormwind City 77.6,53.1
step
Make a Cooking Fire |cast Cooking Fire##818
create 91 Chocolate Cookie##88013,Cooking,91 total |n
collect 91 Chocolate Cookie##62680
step
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779
step
label "end"
Congratulations, you have earned the You'll Feel Right as Rain achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\General\\Taming Azeroth",{
author="support@zygorguides.com",
description="This guide will walk you through earning the 'Taming Azeroth' achievement.",
condition_end="achieved(6607)",
achieveid={6607},
condition_suggested="level>=1 and level<=90",
},[[
step
Earn the _Taming Eastern Kingdoms_ achievement |achieve 6607/5
Click here to load the "Battle Pet Tamers: Eastern Kingdoms" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Eastern Kingdoms" |only if not achieved(6607,5)
|tip
Earn the _Taming Outland_ achievement |achieve 6607/1
Click here to load the "Battle Pet Tamers: Outland" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Outland" |only if not achieved(6607,1)
|tip
Earn the _Taming Northrend_ achievement |achieve 6607/2
Click here to load the "Battle Pet Tamers: Northrend" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Northrend" |only if not achieved(6607,2)
|tip
Earn the _Taming Cataclysm_ achievement |achieve 6607/3
Click here to load the "Battle Pet Tamers: Cataclysm" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Cataclysm" |only if not achieved(6607,3)
|tip
Earn the _Taming Pandaria_ achievement |achieve 6607/4
Click here to load the "Battle Pet Tamers: Pandaria" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Pandaria" |only if not achieved(6607,4)
step
Congratulations!
You have earned the _Taming Azeroth_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Eastern Kingdoms Safari",{
condition_end="achieved(6586)",
description="Catch every battle pet in Eastern Kingdoms.",
},[[
step
Capturing pets in Eastern Kingdoms _will require_ level 25 pets so train up!
confirm
step
_Capture_ Wharf Rat
|tip If you are having trouble finding one of these in this area try fighting other pets in the area as the Wharf Rat may be a secondary for many of them.
learnpet Wharf Rat##61323 |achieve 6586/86 |goto The Cape of Stranglethorn 43.0,71.6
modelnpc Wharf Rat##61323
step
_Capture_ Forest Spiderling
learnpet Forest Spiderling##61320 |achieve 6586/57 |goto The Cape of Stranglethorn 58.2,78.6
modelnpc Forest Spiderling##61320
step
_Capture_ Lizard Hatchling
learnpet Lizard Hatchling##61321 |achieve 6586/58 |goto The Cape of Stranglethorn 58.2,78.6
modelnpc Lizard Hatchling##61321
step
_Capture_ Strand Crab
learnpet Strand Crab##61312 |achieve 6586/61 |goto The Cape of Stranglethorn 56.2,77.2
modelnpc Strand Crab##61312
step
_Capture_ Tree Python
learnpet Tree Python##61318 |achieve 6586/62 |goto The Cape of Stranglethorn 58.2,78.0
modelnpc Tree Python##61318
step
_Capture_ Beetle
learnpet Beetle##61319 |achieve 6586/17 |goto The Cape of Stranglethorn 58.2,78.0
modelnpc Beetle##61319
step
_Capture_ Baby Ape
|tip Can only be found when it's raining.
learnpet Baby Ape##61324 |achieve 6586/70 |goto The Cape of Stranglethorn 62.6,78.2
modelnpc Baby Ape##61324
step
_Capture_ Roach
learnpet Roach##61169 |achieve 6586/9 |goto The Cape of Stranglethorn 43.2,71.2
modelnpc Roach##61169
step
_Capture_ Long-tailed Mole
learnpet Long-tailed Mole##61317 |achieve 6586/5 |goto The Cape of Stranglethorn 43.2,71.2
modelnpc Long-tailed Mole##61317
step
_Capture_ Crimson Moth
learnpet Crimson Moth##61314 |achieve 6586/87 |goto The Cape of Stranglethorn 52.0,51.0
modelnpc Crimson Moth##61314
step
_Capture_ Polly
learnpet Polly##61322 |achieve 6586/60 |goto Northern Stranglethorn 39.6,30.8
modelnpc Polly##61322
step
_Capture_ Rat Snake
learnpet Rat Snake##61258 |achieve 6586/35 |goto Duskwood 72.6,69.0
modelnpc Rat Snake##61258
step
_Capture_ Black Rat
learnpet Black Rat##61257 |achieve 6586/3 |goto Duskwood 75.6,56.4
modelnpc Black Rat##61257
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6586/37 |goto Duskwood 66.4,36.6
modelnpc Skunk##61255
step
_Capture_ Dusk Spiderling
learnpet Dusk Spiderling##61253 |achieve 6586/33 |goto Duskwood 62.2,26.8
modelnpc Dusk Spiderling##61253
step
_Capture_ Widow Spiderling
|tip Only spawns at night.
learnpet Widow Spiderling##61259 |achieve 6586/82 |goto Duskwood 64.4,26.6
modelnpc Widow Spiderling##61259
step
_Capture_ Chicken
learnpet Chicken##62664 |achieve 6586/34 |goto Duskwood 77.0,55.2
modelnpc Chicken##62664
step
_Capture_ Small Frog
learnpet Small Frog##61071 |achieve 6586/10 |goto Duskwood 71.6,15.6
modelnpc Small Frog##61071
step
_Capture_ Mouse
learnpet Mouse##61143 |achieve 6586/36 |goto Duskwood 23.1,44.6
modelnpc Mouse##61143
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6586/11 |goto Westfall 47.2,16.4
modelnpc Snake##61142
step
_Capture_ Tiny Harvester
learnpet Tiny Harvester##61160 |achieve 6586/81 |goto Westfall 52.2,22.6
modelnpc Tiny Harvester##61160
step
_Capture_ Black Lamb
learnpet Black Lamb##60649 |achieve 6586/89 |goto Elwynn Forest 32.2,56.2
modelnpc Black Lamb##60649
step
_Capture_ Rabbit
learnpet Rabbit##61080 |achieve 6586/7 |goto Elwynn Forest 34.0,51.6
modelnpc Rabbit##61080
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6586/14 |goto Elwynn Forest 41.8,57.0
modelnpc Squirrel##61081
step
_Capture_ Fawn
learnpet Fawn##61165 |achieve 6586/43 |goto Elwynn Forest 36.8,56.0
modelnpc Fawn##61165
step
_Capture_ Cat
learnpet Cat##62019 |achieve 6586/15 |goto Elwynn Forest 44.6,53.6
modelnpc Cat##62019
step
_Capture_ Stormwind Rat
learnpet Stormwind Rat##62954 |achieve 6586/45 |goto Elwynn Forest 27.6,86.4
modelnpc Stormwind Rat##62954
step
_Capture_ Restless Shadeling
|tip Only spawns at 0:00 Server Time and despawns in the morning.
learnpet Restless Shadeling##61375 |achieve 6586/30 |goto Deadwind Pass 54.6,80.6
modelnpc Restless Shadeling##61375
step
_Capture_ Scorpling
learnpet Scorpling##61329 |achieve 6586/28 |goto Blasted Lands 60.0,58.6
modelnpc Scorpling##61329
step
_Capture_ Scorpid
learnpet Scorpid##61326 |achieve 6586/26 |goto Blasted Lands 55.4,32.6
modelnpc Scorpid##61326
step
_Capture_ Fire Beetle
learnpet Fire Beetle##61328 |achieve 6586/24 |goto Blasted Lands 44.6,33.4
modelnpc Fire Beetle##61328
step
_Capture_ Adder
learnpet Adder##61325 |achieve 6586/1 |goto Blasted Lands 59.9,26.1
modelnpc Adder##61325
step
_Capture_ Parrot
|tip If you are having trouble finding one of these in this area try fighting other pets in the area as the Wharf Rat may be a secondary for many of them.
learnpet Parrot##61313 |achieve 6586/59 |goto Swamp of Sorrows 39.6,50.6
modelnpc Parrot##61313
step
_Capture_ Water Snake
learnpet Water Snake##61367 |achieve 6586/63 |goto Swamp of Sorrows 33.6,56.8
modelnpc Water Snake##61367
step
_Capture_ Huge Toad
learnpet Huge Toad##61368 |achieve 6586/52 |goto Swamp of Sorrows 46.6,42.8
modelnpc Huge Toad##61368
step
_Capture_ Swamp Moth
learnpet Swamp Moth##61370 |achieve 6586/72 |goto Swamp of Sorrows 36.0,44.4
modelnpc Swamp Moth##61370
step
_Capture_ Moccasin
learnpet Moccasin##61372 |achieve 6586/71 |goto Swamp of Sorrows 38.0,44.6
modelnpc Moccasin##61372
step
_Capture_ Redridge Rat
learnpet Redridge Rat##61168 |achieve 6586/66 |goto Redridge Mountains 30.6,62.6
modelnpc Redridge Rat##61168
step
_Capture_ Fledgling Buzzard
learnpet Fledgling Buzzard##61171 |achieve 6586/64 |goto Redridge Mountains 24.2,32.8
modelnpc Fledgling Buzzard##61171
step
_Capture_ Mountain Cottontail
learnpet Mountain Cottontail##61167 |achieve 6586/47 |goto Redridge Mountains 16.0,46.2
modelnpc Mountain Cottontail##61167
step
_Capture_ Lava Crab
learnpet Lava Crab##61383 |achieve 6586/32 |goto Burning Steppes 54.8,26.6
modelnpc Lava Crab##61383
step
_Capture_ Lava Beetle
learnpet Lava Beetle##61386 |achieve 6586/29 |goto Burning Steppes 54.8,26.6
modelnpc Lava Beetle##61386
step
_Capture_ Cockroach
learnpet Cockroach##61384 |achieve 6586/31 |goto Burning Steppes 48.4,33.4
modelnpc Cockroach##61384
step
_Capture_ Ash Viper
learnpet Ash Viper##61385 |achieve 6586/27 |goto Burning Steppes 48.4,33.4
modelnpc Ash Viper##61385
step
_Capture_ Rattlesnake
learnpet Rattlesnake##61439 |achieve 6586/21 |goto Badlands 27.8,33.0
modelnpc Rattlesnake##61439
step
_Capture_ Stripe-Tailed Scorpid
learnpet Stripe-Tailed Scorpid##61440 |achieve 6586/25 |goto Badlands 24.0,37.8
modelnpc Stripe-Tailed Scorpid##61440
step
_Capture_ King Snake
learnpet King Snake##61443 |achieve 6586/22 |goto Badlands 22.0,37.0
modelnpc King Snake##61443
step
_Capture_ Gold Beetle
learnpet Gold Beetle##61438 |achieve 6586/20 |goto Badlands 29.0,30.8
modelnpc Gold Beetle##61438
step
_Capture_ Spiky Lizard
learnpet Spiky Lizard##61441 |achieve 6586/23 |goto Badlands 28.8,31.0
modelnpc Spiky Lizard##61441
step
_Capture_ Molten Hatchling
learnpet Molten Hatchling##61425 |achieve 6586/68 |goto Searing Gorge 31.6,75.0
modelnpc Molten Hatchling##61425
step
_Capture_ Ash Spiderling
learnpet Ash Spiderling##61420 |achieve 6586/67 |goto Searing Gorge 31.6,75.0
modelnpc Ash Spiderling##61420
step
_Capture_ Little Black Ram
learnpet Little Black Ram##61459 |achieve 6586/56 |goto Loch Modan 26.2,62.6
modelnpc Little Black Ram##61459
step
_Capture_ Snow Cub
learnpet Snow Cub##61689 |achieve 6586/12 |goto Dun Morogh 57.2,49.6
modelnpc Snow Cub##61689
step
_Capture_ Irradiated Roach
learnpet Irradiated Roach##61691 |achieve 6586/4 |goto Dun Morogh 59.0,44.0
modelnpc Irradiated Roach##61691
step
_Capture_ Alpine Hare
learnpet Alpine Hare##61690 |achieve 6586/2 |goto Dun Morogh 57.6,40.8
modelnpc Alpine Hare##61690
step
_Capture_ Toad
learnpet Toad##61369 |achieve 6586/51 |goto Wetlands 59.2,52.2
modelnpc Toad##61369
step
_Capture_ Tiny Bog Beast
learnpet Tiny Bog Beast##61686 |achieve 6586/85 |goto Wetlands 53.0,39.2
modelnpc Tiny Bog Beast##61686
step
_Capture_ Mountain Skunk
learnpet Mountain Skunk##61677 |achieve 6586/84 |goto Wetlands 67.8,44.0
modelnpc Mountain Skunk##61677
step
_Capture_ Highlands Mouse
learnpet Highlands Mouse##62905 |achieve 6586/80 |goto Wetlands 69.6,33.2
modelnpc Highlands Mouse##62905
step
_Capture_ Yellow-Bellied Marmot
learnpet Yellow-Bellied Marmot##62904 |achieve 6586/86 |goto Twilight Highlands 56.6,14.2
modelnpc Yellow-Bellied Marmot##62904
step
_Capture_ Twilight Spider
learnpet Twilight Spider##62117 |achieve 6586/77 |goto Twilight Highlands 58.6,33.4
modelnpc Twilight Spider##62117
step
_Capture_ Twilight Fiendling
learnpet Twilight Fiendling##62914 |achieve 6586/80 |goto Twilight Highlands 58.6,33.4
modelnpc Twilight Fiendling##62914
step
_Capture_ Highlands Skunk
learnpet Highlands Skunk##62907 |achieve 6586/79 |goto Twilight Highlands 46.6,30.2
modelnpc Highlands Skunk##62907
step
_Capture_ Grizzly Squirrel
learnpet Grizzly Squirrel##62818 |achieve 6586/65 |goto Twilight Highlands 46.6,30.2
modelnpc Grizzly Squirrel##62818
step
_Capture_ Highlands Turkey
learnpet Highlands Turkey##62906 |achieve 6586/80 |goto Twilight Highlands 46.6,30.2
modelnpc Highlands Turkey##62906
step
_Capture_ Wildhammer Gryphon Hatchling
learnpet Wildhammer Gryphon Hatchling##62900 |achieve 6586/83 |goto Twilight Highlands 56.6,15.6
modelnpc Wildhammer Gryphon Hatchling##62900
step
_Capture_ Tiny Twister
learnpet Tiny Twister##61703 |achieve 6586/39 |goto Arathi Highlands 47.6,50.4
modelnpc Tiny Twister##61703
step
_Capture_ Prairie Dog
learnpet Prairie Dog##61141 |achieve 6586/19 |goto Arathi Highlands 37.0,40.2
modelnpc Prairie Dog##61141
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6586/8 |goto Arathi Highlands 48.4,40.4
modelnpc Rat##61366
step
_Capture_ Grasslands Cottontail
learnpet Grasslands Cottontail##61704 |achieve 6586/18 |goto Arathi Highlands 24.6,43.6
modelnpc Grasslands Cottontail##61704
step
_Capture_ Jade Oozeling
learnpet Jade Oozeling##61718 |achieve 6586/74 |goto The Hinterlands 58.0,42.6
modelnpc Jade Oozeling##61718
step
_Capture_ Maggot
learnpet Maggot##61753 |achieve 6586/6 |goto The Hinterlands 58.0,42.6
modelnpc Maggot##61753
step
_Capture_ Hare
learnpet Hare##61751 |achieve 6586/16 |goto The Hinterlands 58.0,42.6
modelnpc Hare##61751
step
_Capture_ Brown Marmot
learnpet Brown Marmot##61752 |achieve 6586/73 |goto The Hinterlands 58.0,42.6
modelnpc Brown Marmot##61752
step
_Capture_ Infested Bear Cub
learnpet Infested Bear Cub##61758 |achieve 6586/53 |goto Hillsbrad Foothills 31.6,69.8
modelnpc Infested Bear Cub##61758
step
_Capture_ Snowshoe Hare
learnpet Snowshoe Hare##61755 |achieve 6586/55 |goto Hillsbrad Foothills 51.0,22.4
modelnpc Snowshoe Hare##61755
step
_Capture_ Red-Tailed Chipmunk
learnpet Red-Tailed Chipmunk##61757 |achieve 6586/54 |goto Hillsbrad Foothills 40.8,48.4
modelnpc Red-Tailed Chipmunk##61757
step
_Capture_ Blighted Squirrel
learnpet Blighted Squirrel##61890 |achieve 6586/70 |goto Silverpine Forest 51.6,76.2
modelnpc Blighted Squirrel##61890
step
_Capture_ Lost of Lordaeron
learnpet Lost of Lordaeron##61905 |achieve 6586/75 |goto Tirisfal Glades 61.8,59.2
modelnpc Lost of Lordaeron##61905
step
_Capture_ Festering Maggot
learnpet Festering Maggot##61830 |achieve 6586/40 |goto Eastern Plaguelands 45.4,59.6
modelnpc Festering Maggot##61830
step
_Capture_ Infected Fawn
learnpet Infected Fawn##61827 |achieve 6586/41 |goto Eastern Plaguelands 45.2,56.0
modelnpc Infected Fawn##61827
step
_Capture_ Infected Squirrel
learnpet Infected Squirrel##61828 |achieve 6586/42 |goto Eastern Plaguelands 45.2,56.0
modelnpc Infected Squirrel##61828
step
_Capture_ Bat
learnpet Bat##61829 |achieve 6586/38 |goto Eastern Plaguelands 45.2,56.0
modelnpc Bat##61829
step
_Capture_ Spider
learnpet Spider##61327 |achieve 6586/13 |goto Eastern Plaguelands 45.2,56.0
modelnpc Spider##61327
step
_Capture_ Larva
learnpet Larva##62022 |achieve 6586/50 |goto Ghostlands 29.6,47.0
modelnpc Larva##62022
step
_Capture_ Spirit Crab
learnpet Spirit Crab##62034 |achieve 6586/48 |goto Ghostlands 22.6,33.6
modelnpc Spirit Crab##62034
step
_Capture_ Ruby Sapling
learnpet Ruby Sapling##62020 |achieve 6586/46 |goto Eversong Woods 43.6,88.6
modelnpc Ruby Sapling##62020
step
_Capture_ Undercity Rat
|tip Since this achievement is counted as Account Wide you can perform this on a Horde alt to avoid the PvP that is guaranteed to keep you busy.
learnpet Undercity Rat##61889 |achieve 6586/49 |goto Undercity 62.8,34.2
modelnpc Undercity Rat##61889
step
_Capture_ Sea Gull
|tip Even though this is sending you to Kalimdor you will get credit.
learnpet Sea Gull##62953 |achieve 6586/44 |goto Tanaris 54.8,39.8
modelnpc Sea Gull##62953
step
Congratulations, you have _earned_ the _Eastern Kingdoms Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Family Reunion",{
condition_end="achieved(6608)",
description="Capture a battle pet from each family.",
},[[
step
To complete this pet battle achievement _you will need_ at least one level 13 battle pet |tip Two or three wouldn't hurt!
confirm
step
The _Mountain Cottontails_ in this area are level 4-5
|tip Challenge one to a pet battle and capture it.
learnpet Mountain Cottontail##61167 |goto Redridge Mountains 42.1,68.8
modeldisplay 328
achieve 6608/5
step
The _Fluxfire Felines_ in the area are around level 1
|tip Challenge one to a pet battle and capture it.
learnpet Fluxfire Feline##68838 |goto New Tinkertown 36.6,52.7
modeldisplay 46947
achieve 6608/10
step
The _King Snakes_ in the area are around level 13
|tip Challenge one to a pet battle and capture it.
learnpet King Snake##61443 |goto Badlands 12.9,29.7
modeldisplay 2954
achieve 6608/8
step
The _Tiny Twisters_ in the area are around level 5
|tip Challenge one to a pet battle and capture it.
learnpet Tiny Twister##61703 |goto Arathi Highlands 46.6,51.2
modeldisplay 45936
achieve 6608/7
step
The _Jade Oozelings_ in this area are around level 11
|tip Challenge one to a pet battle and capture it.
learnpet Jade Oozeling##61718 |goto The Hinterlands 57.4,43.5
modeldisplay 42218
achieve 6608/6
step
The _Lost of Lordaeron_ is level 1
|tip Challenge one to a pet battle and capture it.
learnpet Lost of Lordaeron##61905 |goto Tirisfal Glades 79.7,55.2
modeldisplay 42304
achieve 6608/4
step
The _Strand Crabs_ are around level 7
|tip Challenge one to a pet battle and capture it.
learnpet Strand Crab##61312 |goto Northern Stranglethorn 34.8,48.0
modeldisplay 32789
achieve 6608/9
step
The _Harpy Younglings_ in the area are around level 3
|tip Challenge one to a pet battle and capture it.
learnpet Harpy Youngling##68804 |goto Northern Barrens 31.1,40.6
modeldisplay 46936
achieve 6608/1
step
The _Spawn of Onyxia_ are around level 12
|tip They are a rare spawn so you may have to wait around a while for one.
learnpet Spawn of Onyxia##62201 |goto Dustwallow Marsh 52.2,75.9
modeldisplay 42745
achieve 6608/2
step
talk Shylenai##8665
buy 1 Great Horned Owl##8500 |n
modeldisplay 4566
achieve 6608/3 |goto Darnassus 64.0,53.6
step
Congratulations, you have _earned_ the _Family Reuinion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\High Quality",{
condition_end="achieved(7463)",
description="This guide will walk you through capturing 10 rare quality battle pets.",
},[[
step
Please refer to our pet battles guides to find specific pets to hunt. Most of them can be of rare quality
Collect #10# Rare pets from throughout the world of Azeroth |achieve 7463
step
Congratulations, you have earned the High Quality achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Kalimdor Safari",{
condition_end="achieved(6585)",
description="Catch every battle pet in Kalimdor.",
},[[
step
Capturing pets in Kalimdor _will require_ level 25 pets so train up!
confirm |only if not achieved(6585)
step
_Capture_ Emerald Boa
learnpet Emerald Boa##62127 |achieve 6585/78 |goto Northern Barrens 56.4,78.6
modelnpc Emerald Boa##62127
step
_Capture_ Small Frog
learnpet Small Frog##61071 |achieve 6585/16 |goto Northern Barrens 56.4,78.6
modelnpc Small Frog##61071
step
_Capture_ Prairie Dog
learnpet Prairie Dog##61141 |achieve 6585/30 |goto Northern Barrens 58.4,48.8
modelnpc Prairie Dog##61141
step
_Capture_ Adder
learnpet Adder##61325 |achieve 6585/18 |goto Northern Barrens 58.4,48.8
modelnpc Adder##61325
step
_Capture_ Cheetah Cub
learnpet Cheetah Cub##62129 |achieve 6585/77 |goto Northern Barrens 51.8,48.8
modelnpc Cheetah Cub##62129
step
_Capture_ Giraffe Calf
learnpet Giraffe Calf##62130 |achieve 6585/82 |goto Southern Barrens 50.4,48.2
modelnpc Giraffe Calf##62130
step
_Capture_ Mouse
learnpet Mouse##61143 |achieve 6585/23 |goto Dustwallow Marsh 51.0,76.0
modelnpc Mouse##61143
step
_Capture_ Black Rat
learnpet Black Rat##61257 |achieve 6585/21 |goto Dustwallow Marsh 51.0,76.0
modelnpc Black Rat##61257
step
_Capture_ Spawn of Onyxia
learnpet Spawn of Onyxia##62201 |achieve 6585/62 |goto Dustwallow Marsh 52.0,74.4
modelnpc Spawn of Onyxia##62201
step
_Capture_ Chicken
|tip If you are having trouble finding one of these in this area try fighting other pets in the area as the Wharf Rat may be a secondary for many of them.
learnpet Chicken##62664 |achieve 6585/13 |goto Dustwallow Marsh 53.2,55.4
modelnpc Chicken##62664
step
_Capture_ Twilight Iguana
learnpet Twilight Iguana##62255 |achieve 6585/89 |goto Thousand Needles 53.8,60.8
modelnpc Twilight Iguana##62255
step
_Capture_ Roach
learnpet Roach##61169 |achieve 6585/5 |goto Thousand Needles 53.8,60.8
modelnpc Roach##61169
step
_Capture_ Scorpid
learnpet Scorpid##61326 |achieve 6585/37 |goto Thousand Needles 53.8,60.8
modelnpc Scorpid##61326
step
_Capture_ Silithid Hatchling
|tip Spawns during sandstorms.
learnpet Silithid Hatchling##62258 |achieve 6585/87 |goto Tanaris 36.0,45.6
modelnpc Silithid Hatchling##62258
step
_Capture_ Desert Spider
learnpet Desert Spider##62186 |achieve 6585/54 |goto Tanaris 50.6,30.4
modelnpc Desert Spider##62186
step
_Capture_ Stripe-Tailed Scorpid
learnpet Stripe-Tailed Scorpid##61440 |achieve 6585/36 |goto Tanaris 50.6,30.4
modelnpc Stripe-Tailed Scorpid##61440
step
_Capture_ Stinkbug
learnpet Stinkbug##62256 |achieve 6585/88 |goto Tanaris 50.6,30.4
modelnpc Stinkbug##62256
step
_Capture_ Gold Beetle
learnpet Gold Beetle##61438 |achieve 6585/85 |goto Tanaris 50.6,30.4
modelnpc Gold Beetle##61438
step
_Capture_ Rattlesnake
learnpet Rattlesnake##61439 |achieve 6585/34 |goto Tanaris 50.6,30.4
modelnpc Rattlesnake##61439
step
_Capture_ Sand Kitten
learnpet Sand Kitten##62257 |achieve 6585/86 |goto Tanaris 50.6,30.4
modelnpc Sand Kitten##62257
step
_Capture_ Sea Gull
learnpet Sea Gull##62953 |achieve 6585/35 |goto Tanaris 54.8,39.8
modelnpc Sea Gull##62953
step
_Capture_ Long-Tailed Mole
learnpet Long-Tailed Mole##61317 |achieve 6585/40 |goto Un'Goro Crater 55.0,61.0
modelnpc Long-Tailed Mole##61317
step
_Capture_ Cockroach
learnpet Cockroach##61384 |achieve 6585/39 |goto Un'Goro Crater 50.8,25.4
modelnpc Cockroach##61384
step
_Capture_ Fire Beetle
learnpet Fire Beetle##61328 |achieve 6585/26 |goto Un'Goro Crater 51.0,49.8
modelnpc Fire Beetle##61328
step
_Capture_ Ash Lizard
learnpet Ash Lizard##62364 |achieve 6585/70 |goto Un'Goro Crater 51.0,49.8
modelnpc Ash Lizard##62364
step
_Capture_ Parrot
learnpet Parrot##61313 |achieve 6585/41 |goto Un'Goro Crater 36.4,66.8
modelnpc Parrot##61313
step
_Capture_ Tree Python
learnpet Tree Python##61318 |achieve 6585/42 |goto Un'Goro Crater 68.6,76.0
modelnpc Tree Python##61318
step
_Capture_ Beetle
learnpet Beetle##61319 |achieve 6585/1 |goto Un'Goro Crater 33.6,72.8
modelnpc Beetle##61319
step
_Capture_ Spotted Bell Frog
learnpet Spotted Bell Frog##62370 |achieve 6585/96 |goto Un'Goro Crater 65.2,69.8
modelnpc Spotted Bell Frog##62370
step
_Capture_ Diemetradon Hatchling
learnpet Diemetradon Hatchling##62375 |achieve 6585/90 |goto Un'Goro Crater 34.8,65.6
modelnpc Diemetradon Hatchling##62375
step
_Capture_ Rock Viper
learnpet Rock Viper##62184 |achieve 6585/27 |goto Silithus 31.4,14.4
modelnpc Rock Viper##62184
step
_Capture_ Spiky Lizard
learnpet Spiky Lizard##61441 |achieve 6585/32 |goto Silithus 40.8,35.0
modelnpc Spiky Lizard##61441
step
_Capture_ Scarab Hatchling
learnpet Scarab Hatchling##62524 |achieve 6585/80 |goto Silithus 37.6,77.8
modelnpc Scarab Hatchling##62524
step
_Capture_ Qiraji Guardling
|tip Only spawns during summer.
learnpet Qiraji Guardling##62526 |achieve 6585/79 |goto Silithus 37.6,77.8
modelnpc Qiraji Guardling##62526
step
_Capture_ Sidewinder
learnpet Sidewinder##62523 |achieve 6585/81 |goto Silithus 37.0,81.4
modelnpc Sidewinder##62523
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6585/6 |goto Feralas 51.2,15.6
modelnpc Squirrel##61081
step
_Capture_ Nether Faerie Dragon
learnpet Nether Faerie Dragon##62395 |achieve 6585/65 |goto Feralas 56.6,44.6
modelnpc Nether Faerie Dragon##62395
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6585/24 |goto Feralas 56.6,44.6
modelnpc Snake##61142
step
_Capture_ Gazelle Fawn
learnpet Gazelle Fawn##62176 |achieve 6585/76 |goto Mulgore 38.6,61.0
modelnpc Gazelle Fawn##62176
step
_Capture_ Amethyst Shale Hatchling
learnpet Amethyst Shale Hatchling##62182 |achieve 6585/55 |goto Desolace 30.4,59.6
modelnpc Amethyst Shale Hatchling##62182
step
_Capture_ Topaz Shale Hatchling
learnpet Topaz Shale Hatchling##62181 |achieve 6585/59 |goto Desolace 35.0,64.0
modelnpc Topaz Shale Hatchling##62181
step
_Capture_ Stone Armadillo
|tip Spawns at night.
learnpet Stone Armadillo##62187 |achieve 6585/58 |goto Desolace 70.8,46.6
modelnpc Stone Armadillo##62187
step
_Capture_ Elfin Rabbit
learnpet Elfin Rabbit##62178 |achieve 6585/56 |goto Desolace 52.6,47.4
modelnpc Elfin Rabbit##62178
step
_Capture_ Red-Tailed Chipmunk
learnpet Red-Tailed Chipmunk##61757 |achieve 6585/12 |goto Desolace 52.6,47.4
modelnpc Red-Tailed Chipmunk##61757
step
_Capture_ Forest Moth
learnpet Forest Moth##62177 |achieve 6585/45 |goto Desolace 52.6,47.4
modelnpc Forest Moth##62177
step
_Capture_ Horny Toad
learnpet Horny Toad##62185 |achieve 6585/57 |goto Desolace 64.4,23.2
modelnpc Horny Toad##62185
step
_Capture_ Spider
learnpet Spider##61327 |achieve 6585/11 |goto Stonetalon Mountains 57.0,72.0
modelnpc Spider##61327
step
_Capture_ Venomspitter Hatchling
learnpet Venomspitter Hatchling##62191 |achieve 6585/84 |goto Stonetalon Mountains 57.0,72.0
modelnpc Venomspitter Hatchling##62191
step
_Capture_ Rabbit
learnpet Rabbit##61080 |achieve 6585/9 |goto Stonetalon Mountains 63.6,61.6
modelnpc Rabbit##61080
step
_Capture_ Rabid Nut Varmint 5000
learnpet Rabid Nut Varmint 5000##62120 |achieve 6585/47 |goto Stonetalon Mountains 66.4,59.6
modelnpc Rabid Nut Varmint 5000##62120
step
_Capture_ Alpine Chipmunk
learnpet Alpine Chipmunk##62189 |achieve 6585/69 |goto Stonetalon Mountains 52.0,51.2
modelnpc Alpine Chipmunk##62189
step
_Capture_ Mountain Skunk
learnpet Mountain Skunk##61677 |achieve 6585/33 |goto Stonetalon Mountains 51.2,52.0
modelnpc Mountain Skunk##61677
step
_Capture_ Coral Snake
learnpet Coral Snake##62190 |achieve 6585/83 |goto Stonetalon Mountains 64.4,52.4
modelnpc Coral Snake##62190
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6585/4 |goto Ashenvale 12.4,34.2
modelnpc Rat##61366
step
_Capture_ Rusty Snail
learnpet Rusty Snail##62313 |achieve 6585/46 |goto  Ashenvale 14.0,28.4
modelnpc Rusty Snail##62313
step
_Capture_ Toad
learnpet Toad##61369 |achieve 6585/8 |goto  Ashenvale 80.8,63.8
modelnpc Toad##61369
step
_Capture_ Frog
learnpet Frog##62312 |achieve 6585/2 |goto  Ashenvale 80.8,63.8
modelnpc Frog##62312
step
_Capture_ Maggot
learnpet Maggot##61753 |achieve 6585/3 |goto  Ashenvale 83.2,69.0
modelnpc Maggot##61753
step
_Capture_ Water Snake
learnpet Water Snake##61367 |achieve 6585/98 |goto Durotar 39.0,41.6
modelnpc Water Snake##61367
step
_Capture_ Hare
learnpet Hare##61751 |achieve 6585/19 |goto Durotar 54.0,18.2
modelnpc Hare##61751
step
_Capture_ Creepy Crawly
learnpet Creepy Crawly##62116 |achieve 6585/20 |goto Durotar 48.6,18.8
modelnpc Creepy Crawly##62116
step
_Capture_ Spiny Lizard
learnpet Spiny Lizard##62114 |achieve 6585/61 |goto Durotar 57.8,15.4
modelnpc Spiny Lizard##62114
step
_Capture_ Dung Beetle
learnpet Dung Beetle##62115 |achieve 6585/60 |goto Durotar 57.8,15.4
modelnpc Dung Beetle##62115
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6585/10 |goto Azshara 42.2,67.8
modelnpc Skunk##61255
step
_Capture_ Shore Crab
learnpet Shore Crab##61158 |achieve 6585/49 |goto Azshara 42.4,39.8
modelnpc Shore Crab##61158
step
_Capture_ Turquoise Turtle
learnpet Turquoise Turtle##62121 |achieve 6585/50 |goto Azshara 42.4,39.8
modelnpc Turquoise Turtle##62121
step
_Capture_ Twilight Spider
learnpet Twilight Spider##62117 |achieve 6585/22 |goto Azshara 69.2,16.6
modelnpc Twilight Spider##62117
step
_Capture_ Twilight Beetle
learnpet Twilight Beetle##62118 |achieve 6585/28 |goto Azshara 69.2,16.6
modelnpc Twilight Beetle##62118
step
_Capture_ Nordrassil Wisp
learnpet Nordrassil Wisp##62888 |achieve 6585/74 |goto Mount Hyjal 58.6,27.6
modelnpc Nordrassil Wisp##62888
step
_Capture_ Silky Moth
learnpet Silky Moth##62373 |achieve 6585/68 |goto Mount Hyjal 58.6,27.6
modelnpc Silky Moth##62373
step
_Capture_ Death's Head Cockroach
learnpet Death's Head Cockroach##62887 |achieve 6585/72 |goto Mount Hyjal 45.0,21.2
modelnpc Death's Head Cockroach##62887
step
_Capture_ Carrion Rat
learnpet Carrion Rat##62885 |achieve 6585/71 |goto Mount Hyjal 78.8,49.0
modelnpc Carrion Rat##62885
step
_Capture_ Fire-Proof Roach
learnpet Fire-Proof Roach##62886 |achieve 6585/73 |goto Mount Hyjal 85.2,59.6
modelnpc Fire-Proof Roach##62886
step
_Capture_ Bat
|tip If you are having trouble finding one of these in this area try fighting other pets in the area as the Wharf Rat may be a secondary for many of them.
learnpet Bat##61829 |achieve 6585/25 |goto Mount Hyjal 41.4,24.6
modelnpc Bat##61829
step
_Capture_ Minfernal
|tip Rare pet spawn. Killing critters around the area helps speed up the process.
learnpet Minfernal##62317 |achieve 6585/63 |goto Felwood 45.8,42.6
modelnpc Minfernal##62317
step
_Capture_ Tainted Cockroach
learnpet Tainted Cockroach##62314 |achieve 6585/66 |goto Felwood 39.0,68.6
modelnpc Tainted Cockroach##62314
step
_Capture_ Tainted Moth
learnpet Tainted Moth##62315 |achieve 6585/67 |goto Felwood 47.4,33.2
modelnpc Tainted Moth##62315
step
_Capture_ Tainted Rat
learnpet Tainted Rat##62316 |achieve 6585/89 |goto Felwood 47.4,33.2
modelnpc Tainted Rat##62316
step
_Capture_ Robo-Chick
learnpet Robo-Chick##62119 |achieve 6585/48 |goto Winterspring 59.8,50.0
modelnpc Robo-Chick##62119
step
_Capture_ Crystal Spider
learnpet Crystal Spider##62435 |achieve 6585/44 |goto Winterspring 49.8,57.0
modelnpc Crystal Spider##62435
step
_Capture_ Snowy Owl
|tip Only spawns in winter from September to April.
learnpet Snowy Owl##7554 |achieve 6585/97 |goto Winterspring 61.4,70.2
modelnpc Snowy Owl##7554
step
_Capture_ Alpine Hare
learnpet Alpine Hare##61690 |achieve 6585/43 |goto Winterspring 58.4,70.2
modelnpc Alpine Hare##61690
step
_Capture_ Darkshore Cub
learnpet Darkshore Cub##62250 |achieve 6585/17 |goto Darkshore 42.2,76.6
modelnpc Darkshore Cub##62250
step
_Capture_ Shimmershell Snail
learnpet Shimmershell Snail##62246 |achieve 6585/52 |goto Darkshore 37.4,73.4
modelnpc Shimmershell Snail##62246
step
_Capture_ Strand Crab
learnpet Strand Crab##61312 |achieve 6585/7 |goto Darkshore 37.4,73.4
modelnpc Strand Crab##61312
step
_Capture_ Grey Moth
learnpet Grey Moth##62050 |achieve 6585/51 |goto Azuremyst Isle 29.6,62.6
modelnpc Grey Moth##62050
step
_Capture_ Infected Fawn
learnpet Infected Fawn##61827 |achieve 6585/14 |goto Bloodmyst Isle 58.8,88.2
modelnpc Infected Fawn##61827
step
_Capture_ Infected Squirrel
learnpet Infected Squirrel##61828 |achieve 6585/15 |goto Bloodmyst Isle 48.4,83.4
modelnpc Infected Squirrel##61828
step
_Capture_ Ravager Hatchling
learnpet Ravager Hatchling##62051 |achieve 6585/53 |goto Bloodmyst Isle 58.8,64.6
modelnpc Ravager Hatchling##62051
step
_Capture_ Crested Owl
learnpet Crested Owl##62242 |achieve 6585/99 |goto Teldrassil 42.2,60.6
modelnpc Crested Owl##62242
step
_Capture_ Tol'vir Scarab
learnpet Tol'vir Scarab##62899 |achieve 6585/95 |goto Uldum 41.4,40.4
modelnpc Tol'vir Scarab##62899
step
_Capture_ Locust
learnpet Locust##62893 |achieve 6585/92 |goto Uldum 57.0,49.4
modelnpc Locust##62893
step
_Capture_ Mac Frog
learnpet Mac Frog##62892 |achieve 6585/93 |goto Uldum 57.0,49.4
modelnpc Mac Frog##62892
step
_Capture_ Oasis Moth
learnpet Oasis Moth##62895 |achieve 6585/94 |goto Uldum 60.8,46.0
modelnpc Oasis Moth##62895
step
_Capture_ Horned Lizard
learnpet Horned Lizard##62894 |achieve 6585/38 |goto Uldum 69.2,45.8
modelnpc Horned Lizard##62894
step
_Capture_ Leopard Scorpid
learnpet Leopard Scorpid##62896 |achieve 6585/91 |goto Uldum 46.0,51.2
modelnpc Leopard Scorpid##62896
step
talk Zidormi##88206 |goto Blasted Lands/0 48.1,7.3
_Tell_ her "Show me the Blasted Lands before the invasion."
|tip You can go back to her to change it back again afterwards.
_Capture_ Scorpling
|tip Even though this is sending you to Eastern Kingdoms you will get credit.
learnpet Scorpling##61329 |achieve 6585/31 |goto Blasted Lands 60.0,58.6
modelnpc Scorpling##61329
step
_Capture_ Mountain Cottontail
|tip Even though this is sending you to Eastern Kingdoms you will get credit.
learnpet Mountain Cottontail##61167 |achieve 6585/29 |goto Redridge Mountains 16.0,46.2
modelnpc Mountain Cottontail##61167
step
_Capture_ Biletoad
|tip Even though this is sending you to Northrend you will get credit.
learnpet Biletoad##62815 |achieve 6585/75 |goto Sholazar Basin 47.6,66.4
modelnpc Biletoad##62815
step
Congratulations, you have _earned_ the _Kalimdor Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Northrend Safari",{
condition_end="achieved(6588)",
description="Catch every battle pet in Northrend.",
},[[
step
Capturing pets in Northrend _will require_ level 25 pets so train up!
confirm |only if not achieved(6588)
step
_Capture_ Shore Crab
learnpet Shore Crab##61158 |achieve 6588/10 |goto Borean Tundra 41.8,18.4
modelnpc Shore Crab##61158
step
_Capture_ Borean Marmot
learnpet Borean Marmot##62695 |achieve 6588/2 |goto Borean Tundra 49.0,26.6
modelnpc Borean Marmot##62695
step
_Capture_ Oily Slimeling
learnpet Oily Slimeling##62697 |achieve 6588/16 |goto Borean Tundra 58.2,23.6
modelnpc Oily Slimeling##62697
step
_Capture_ Arctic Hare
learnpet Arctic Hare##62693 |achieve 6588/1 |goto Borean Tundra 76.2,18.6
modelnpc Arctic Hare##62693
step
_Capture_ Tundra Penguin
learnpet Tundra Penguin##62835 |achieve 6588/24 |goto Dragonblight 10.8,63.2
modelnpc Tundra Penguin##62835
step
_Capture_ Dragonbone Hatchling
learnpet Dragonbone Hatchling##62852 |achieve 6588/6 |goto Dragonblight 55.0,41.2
modelnpc Dragonbone Hatchling##62852
step
_Capture_ Strand Crab
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Dragonblight.
learnpet Strand Crab##61312 |achieve 6588/5 |goto Dragonblight 55.0,41.2
modelnpc Strand Crab##61312
step
_Capture_ Stunted Shardhorn
learnpet Stunted Shardhorn##62816 |achieve 6588/28 |goto Sholazar Basin 39.6,43.4
modelnpc Stunted Shardhorn##62816
step
_Capture_ Biletoad
learnpet Biletoad##62815 |achieve 6588/27 |goto Sholazar Basin 53.4,58.2
modelnpc Biletoad##62815
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6588/21 |goto Sholazar Basin 24.0,50.2
modelnpc Snake##61142
step
_Capture_ Cockroach
learnpet Cockroach##61384 |achieve 6588/23 |goto Icecrown 68.4,67.6
modelnpc Cockroach##61384
step
_Capture_ Scourged Whelpling
learnpet Scourged Whelpling##62854 |achieve 6588/26 |goto Icecrown 72.2,39.4
modelnpc Scourged Whelpling##62854
step
_Capture_ Arctic Fox Kit
|tip It must be snowing on your home realm to see these guys.
learnpet Arctic Fox Kit##62864 |achieve 6588/29 |goto The Storm Peaks 31.0,48.2
modelnpc Arctic Fox Kit##62864
step
_Capture_ Mountain Skunk
learnpet Mountain Skunk##61677 |achieve 6588/15 |goto The Storm Peaks 65.2,49.2
modelnpc Mountain Skunk##61677
step
_Capture_ Mouse
learnpet Mouse##61143 |achieve 6588/12 |goto Crystalsong Forest 36.6,56.4
modelnpc Mouse##61143
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6588/3 |goto Crystalsong Forest 44.0,45.6
modelnpc Squirrel##61081
step
_Capture_ Water Waveling
learnpet Water Waveling##62820 |achieve 6588/31 |goto Zul'Drak 41.2,78.6
modelnpc Water Waveling##62820
step
_Capture_ Huge Toad
learnpet Huge Toad##61368 |achieve 6588/30 |goto Zul'Drak 44.0,60.6
modelnpc Huge Toad##61368
step
_Capture_ Grizzly Squirrel
learnpet Grizzly Squirrel##62818 |achieve 6588/11 |goto Grizzly Hills 35.8,56.6
modelnpc Grizzly Squirrel##62818
step
_Capture_ Fawn
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Grizzly Hills.
learnpet Fawn##61165 |achieve 6588/9 |goto Grizzly Hills 35.8,56.6
modelnpc Fawn##61165
step
_Capture_ Imperial Eagle Chick
learnpet Imperial Eagle Chick##62819 |achieve 6588/14 |goto Grizzly Hills 23.0,39.6
modelnpc Imperial Eagle Chick##62819
step
_Capture_ Fjord Worg Pup
learnpet Fjord Worg Pup##62669 |achieve 6588/13 |goto Howling Fjord 30.4,62.2
modelnpc Fjord Worg Pup##62669
step
_Capture_ Chicken
learnpet Chicken##62664 |achieve 6588/4 |goto Howling Fjord 31.8,43.6
modelnpc Chicken##62664
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6588/8 |goto Howling Fjord 46.6,31.6
modelnpc Rat##61366
step
_Capture_ Maggot
learnpet Maggot##61753 |achieve 6588/17 |goto Howling Fjord 50.8,54.6
modelnpc Maggot##61753
step
_Enter_ the cave here |goto Howling Fjord 56.7,49.3 < 20 |walk
_Capture_ Devouring Maggot
learnpet Devouring Maggot##62640 |achieve 6588/33 |goto Howling Fjord 57.6,56.6
modelnpc Devouring Maggot##62640
step
_Capture_ Fjord Rat
learnpet Fjord Rat##62641 |achieve 6588/18 |goto Howling Fjord 58.6,54.8
modelnpc Fjord Rat##62641
step
_Capture_ Turkey
|tip Can be found as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Turkey##62648 |achieve 6588/32 |goto Howling Fjord 58.6,54.8
modelnpc Turkey##62648
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6588/20 |goto Howling Fjord 52.6,61.6
modelnpc Skunk##61255
step
_Capture_ Rabbit
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Rabbit##61080 |achieve 6588/7 |goto Howling Fjord 52.6,61.6
modelnpc Rabbit##61080
step
_Capture_ Roach
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Roach##61169 |achieve 6588/19 |goto Howling Fjord 52.6,61.6
modelnpc Roach##61169
step
_Capture_ Spider
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Spider##61327 |achieve 6588/22 |goto Howling Fjord 52.6,61.6
modelnpc Spider##61327
step
_Capture_ Toad
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Toad##61369 |achieve 6588/25 |goto Howling Fjord 52.6,61.6
modelnpc Toad##61369
step
Congratulations, you have _earned_ the _Northrend Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Outland Safari",{
condition_end="achieved(6587)",
description="Catch every battle pet in Outland.",
},[[
step
Capturing pets in Outland _will require_ level 25 pets so train up!
confirm |only if not achieved(6587)
step
_Capture_ Adder
learnpet Adder##61325 |achieve 6587/6 |goto Hellfire Peninsula 63.0,52.2
modelnpc Adder##61325
step
_Capture_ Scorpid
learnpet Scorpid##61326 |achieve 6587/5 |goto Hellfire Peninsula 63.0,52.2
modelnpc Scorpid##61326
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6587/14 |goto Zangarmarsh 80.0,48.6
modelnpc Snake##61142
step
_Capture_ Sporeling Sprout
learnpet Sporeling Sprout##62564 |achieve 6587/25 |goto Zangarmarsh 18.8,51.8
modelnpc Sporeling Sprout##62564
step
_Capture_ Small Frog
learnpet Small Frog##61071 |achieve 6587/23 |goto Zangarmarsh 18.6,54.0
modelnpc Small Frog##61071
step
_Enter_ the cave here |goto Blade's Edge Mountains 51.6,75.4 < 20 |walk
_Capture_ Skittering Cavern Crawler
learnpet Skittering Cavern Crawler##62638 |achieve 6587/8 |goto Blade's Edge Mountains 52.6,88.8
modelnpc Skittering Cavern Crawler##62638
step
_Capture_ Rabbit
learnpet Rabbit##61080 |achieve 6587/1 |goto Blade's Edge Mountains 53.4,71.5
modelnpc Rabbit##61080
step
_Capture_ Rock Viper
learnpet Rock Viper##62184 |achieve 6587/3 |goto Blade's Edge Mountains 57.8,63.8
modelnpc Rock Viper##62184
step
_Capture_ Scalded Basilisk Hatchling
learnpet Scalded Basilisk Hatchling##62628 |achieve 6587/4 |goto Blade's Edge Mountains 73.0,19.4
modelnpc Scalded Basilisk Hatchling##62628
step
_Capture_ Brown Marmot
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Blade's Edge Mountains.
learnpet Brown Marmot##61752 |achieve 6587/2 |goto Blade's Edge Mountains 73.0,19.4
modelnpc Brown Marmot##61752
step
_Capture_ Fledgling Nether Ray
learnpet Fledgling Nether Ray##62627 |achieve 6587/15 |goto Netherstorm 29.8,36.8
modelnpc Fledgling Nether Ray##62627
step
_Capture_ Mouse
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Netherstorm.
learnpet Mouse##61143 |achieve 6587/16 |goto Netherstorm 29.8,36.8
modelnpc Mouse##61143
step
_Capture_ Nether Roach
learnpet Nether Roach##62625 |achieve 6587/17 |goto Netherstorm 29.8,63.4
modelnpc Nether Roach##62625
step
_Capture_ Cat
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Netherstorm.
learnpet Cat##62019 |achieve 6587/12 |goto Netherstorm 29.8,63.4
modelnpc Cat##62019
step
_Capture_ Flayer Youngling
learnpet Flayer Youngling##62555 |achieve 6587/7 |goto Terokkar Forest 50.6,11.0
modelnpc Flayer Youngling##62555
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6587/11 |goto Terokkar Forest 54.2,32.8
modelnpc Rat##61366
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6587/13 |goto Terokkar Forest 47.6,22.4
modelnpc Squirrel##61081
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6587/21 |goto Terokkar Forest 57.4,38.4
modelnpc Skunk##61255
step
_Capture_ Warpstalker Hatchling
learnpet Warpstalker Hatchling##62583 |achieve 6587/26 |goto Terokkar Forest 50.8,28.6
modelnpc Warpstalker Hatchling##62583
step
_Capture_ Stripe-Tailed Scorpid
learnpet Stripe-Tailed Scorpid##61440 |achieve 6587/22 |goto Terokkar Forest 39.4,54.2
modelnpc Stripe-Tailed Scorpid##61440
step
_Capture_ Prairie Dog
learnpet Prairie Dog##61141 |achieve 6587/10 |goto Nagrand 52.4,31.4
modelnpc Prairie Dog##61141
step
_Capture_ Toad
learnpet Toad##61369 |achieve 6587/24 |goto Nagrand 57.2,32.2
modelnpc Toad##61369
step
_Capture_ Clefthoof Runt
learnpet Clefthoof Runt##62620 |achieve 6587/9 |goto Nagrand 46.0,69.6
modelnpc Clefthoof Runt##62620
step
_Capture_ Tainted Cockroach
learnpet Tainted Cockroach##62314 |achieve 6587/20 |goto Shadowmoon Valley 51.8,31.6
modelnpc Tainted Cockroach##62314
step
_Capture_ Ash Viper
learnpet Ash Viper##61385 |achieve 6587/18 |goto Shadowmoon Valley 56.0,35.4
modelnpc Ash Viper##61385
step
_Capture_ Fel Flame
learnpet Fel Flame##62621 |achieve 6587/19 |goto Shadowmoon Valley 48.4,48.2
modelnpc Fel Flame##62621
step
Congratulations, you have _earned_ the _Outland Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\That's a Lot of Pet Food",{
condition_end="achieved(7501)",
achieveid={7500,5875,5877,5876,2516,1250,1248,15,1017},
},[[
step
talk Donni Anthania##6367
buy Cat Carrier (Bombay)##8485 |n
use Cat Carrier (Bombay)##8485
Can I Keep Him? Achievement |achieve 1017 |goto Elwynn Forest 44.2,53.4
step
The _Fawn_ is level 1. Challenge one to a pet battle and capture it.
learnpet Fawn##61165 |goto Elwynn Forest 45.1,67.4
modeldisplay 654
step
The _Rabbit_ is level 1. Challenge one to a pet battle and capture it.
learnpet Rabbit##61080 |goto Elwynn Forest 61.2,68.1
modeldisplay 328
step
The _Black Lamb_ is level 1. Challenge one to a pet battle and capture it.
learnpet Black Lamb##60649 |goto Elwynn Forest 72.4,76.4
modeldisplay 42906
step
The _Chicken_ is level 1. Challenge one to a pet battle and capture it.
learnpet Chicken##62664 |goto Elwynn Forest 77.6,66.2
modeldisplay 29331
step
The _Tiny Harvester_ is level 3. Challenge one to a pet battle and capture it.
learnpet Tiny Harvester##61160 |goto Westfall 40.6,52.4
modeldisplay 41886
step
The _Rat Snake_ is level 6. Challenge one to a pet battle and capture it.
learnpet Rat Snake##61258 |goto Duskwood 34.0,37.2
modeldisplay 3126
step
The _Mouse_ is level 5 or 6. Challenge one to a pet battle and capture it.
learnpet Mouse##61143 |goto Duskwood 22.1,37.8
modeldisplay 4959
step
The _Skunk_ is level 5 or 6. Challenge one to a pet battle and capture it.
learnpet Skunk##61255 |goto Duskwood 23.8,29.4
modeldisplay 16633
step
The _Dusk Spiderlings_ are level 5-6. Challenge one to a pet battle and capture it.
learnpet Dusk Spiderling##61253 |goto Duskwood 63.8,26.1
modeldisplay 14952
step
The _Roach_ can be found when challenging Rat Snakes and Dusk Spiderlings.
The _Roach_ is level 5 or 6. Challenge a Rat Snake or Dusk Spiderling to a pet battle and if the Roach is there capture it.
learnpet Roach##61169 |goto Duskwood 34.0,37.2
modeldisplay 2177
step
The _Widow Spiderling_ can be found when challenging Dusk Spiderlings. Challenge a Dusk Spiderling to a pet battle and if the Widow Spiderling is there capture it.
learnpet Widow Spiderling##61259 |goto Duskwood 31.2,39.5
modeldisplay 41949
step
The _Fledgling Buzzards_ in this area are level 3-5. Challenge one to a pet battle and capture it.
learnpet Fledgling Buzzard##61171 |goto Redridge Mountains 28.9,28.5
modeldisplay 41887
step
The _Redridge Rats_ are around level 5. Challenge one to a pet battle and capture it.
learnpet Redridge Rat##61168 |goto Redridge Mountains 67.6,31.4
modeldisplay 1141
step
The _Strand Crabs_ are around level 7. Challenge one to a pet battle and capture it.
learnpet Strand Crab##61312 |goto Northern Stranglethorn 34.8,48.0
modeldisplay 32789
step
_Polly_ is a level 8 Creature flying in circles around this point. Challenge one to a pet battle and capture it.
learnpet Polly##61322 |goto Northern Stranglethorn 50.8,66.6
modeldisplay 5866
step
The _Crimson Moth_ will be attached to a _Polly_. They are both level 7. Defeat _Polly_ and capture the _Crimson Moth_ when it is below 35% health.
learnpet Crimson Moth##61314 |goto Northern Stranglethorn
modeldisplay 36671
step
The _Lizard Hatchlings_ in this area are level 8. Challenge one to a pet battle and capture it.
learnpet Lizard Hatchling##61321 |goto Northern Stranglethorn 62.1,52.6
modeldisplay 36583
step
The _Scorplings_ are around level 16. Challenge one to a pet battle and capture it.
learnpet Scorpling##61329 |goto Blasted Lands 58.8,59.7
modeldisplay 41960
step
The _Swamp Moths_ are level 14. Challenge one to a pet battle and capture it.
learnpet Swamp Moth##61370 |goto Swamp of Sorrows 39.6,52.9
modeldisplay 36944
step
The _Moccasins_ are level 14. Challenge one to a pet battle and capture it.
learnpet Moccasin##61372 |goto Swamp of Sorrows 54.3,52.1
modeldisplay 1986
step
The _Molten Hatchlings_ in this area are around level 13-15. Challenge one to a pet battle and capture it.
learnpet Molten Hatchling##61425 |goto Searing Gorge 43.6,40.4
modeldisplay 42051
step
The _Gold Beetles_ are around level 13. Challenge one to a pet battle and capture it.
learnpet Gold Beetle##61438 |goto Badlands 46.0,57.6
modeldisplay 15467
step
The King Snakes are around level 13. Challenge one to a pet battle and capture it.
learnpet King Snake##61443 |goto Badlands 12.9,29.7
modeldisplay 2954
step
The _Rattlesnakes_ are around level 13. Challenge one to a pet battle and capture it.
learnpet Rattlesnake##61439 |goto Badlands 72.5,43.9
modeldisplay 35804
step
Refer to our pets and mount guides in order to collect all the pets required
confirm |only if not achieved(7501)
step
Earn the That's a Lot of Pet Food Achievement |achieve 7501
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\100 Cooking Awards", {
achieveid={1998,1999,2000,2001,2002},
condition_end="achieved(2002)",
description="Obtain 100 Cooking Awards.",
},[[
step
Use the Stormwind and Dalaran Cooking Dailies section of this guide to obtain 100 Cooking Awards.
|confirm
step
label "dailies"
#include "SW_Cooking_Dailies"
step
talk Brom Brewbaster##26905
accept Northern Cooking##13087 |goto Howling Fjord,58.2,62.1
|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
kill Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
collect 4 Chilled Meat |q 13087/1 |goto 79.0,73.1
|only if not completedq(13087)
step
talk Brom Brewbaster##26905
turnin Northern Cooking##13087 |goto 58.2,62.1
|only if not completedq(13087)
step
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |or |goto Dalaran,40.8,65.4
accept Convention at the Legerdemain##13101|daily |or|goto Dalaran,40.8,65.4
accept Infused Mushroom Meatloaf##13100|daily |or |goto Dalaran,40.8,65.4
accept Mustard Dogs!##13107|daily |or |goto Dalaran,40.8,65.4
accept Sewer Stew##13102|daily |or |goto Dalaran,40.8,65.4
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
step
Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs.  They spawn in random locations.
collect 1 Jug of Wine |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
create 4 Northern Stew##57421,Cooking,4 total |n
collect 4 Northern Stew |q 13101/1
step
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 59.5,43.6
|tip They spawn randomly along the sewer lines.
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf |q 13100/1
step
Click the Wild Mustard
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran,67.7,40.0
You can find more Wild Mustard flowers:
At [50.3,48.3]
At [37.2,43.9]
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra,46.7,43.6
step
#include "cooking_fire"
create Rhino Dogs##45553,Cooking,4 total |n
collect 4 Rhino Dogs##34752 |q 13107
step
Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket! |q 13107/1
step
Click the Crystalsong Carrots
|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest,26.7,44.1
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
Use your Stew Cookpot in your bags|use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran,36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran,48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran,52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran,68.6,42.0
step
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran,35.5,57.6
step
You have completed the maximum amount of Cooking dailies you can do today.
Click here to go back to the beginning of the dailies. |confirm |next "dailies"
|achieve 2002 |next
step
Congratualtions! You're earned the 100 Cooking Awards achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\A Bunch of Lunch", {
condition_end="achieved(5845)",
description="Complete each Let's Do Lunch achievement.",
},[[
step
Complete each of the following achievements using the appropiate sections of this guide:
Complete Let's Do Lunch: Stormwind |achieve 5474
Complete Let's Do Lunch: Ironforge |achieve 5841
Complete Let's Do Lunch: Darnassus |achieve 5842
confirm
step
label "dailies1"
Routing to next section |next "dailies2" |only if achieved(5474)
Routing to next section |next |only if default
step
talk Robby Flay##42288
You will only be able to complete 1 of the following quests per day
accept A Fisherman's Feast##26190 |or |goto Stormwind City,50.6,71.9
accept Feeling Crabby?##26177 |or |goto Stormwind City,50.6,71.9
accept Orphans Like Cookies Too!##26192 |or |goto Stormwind City,50.6,71.9
accept Penny's Pumpkin Pancakes##26153 |or |goto Stormwind City,50.6,71.9
accept The King's Cider##26183 |or |goto Stormwind City,50.6,71.9
step
Click Barrels of Canal Fish
|tip They look like dark wooden barrels near fishermen all along the canals.
collect 5 Gigantic Catfish |q 26190/1 |goto 54.9,68.2
step
Click Canal Crabs
|tip They look like small crabs underwater all along in the canals.
collect 10 Canal Crab |q 26177/1 |goto 54.5,66.7
step
Click Sacks of Confectioner's Sugar
|tip They look like cloth white sacks.  This one is laying on the ground inside The Slaughtered Lamb building.
collect 4 Confectioner's Sugar |q 26192/1 |goto 41.2,83.6
You can find more Sacks of Confectioner's Sugar:
at |goto Stormwind City,51.0,96.2
|tip Laying on the floor, next to the fireplace in The Blue Recluse building.
at |goto Stormwind City,77.8,53.2
|tip Laying on the floor, next to the fireplace in Pig and Whistle Tavern building.
at |goto Stormwind City,66.0,31.9
|tip Laying on the bar inside The Golden Keg building.
step
Click Stormwind Pumpkins |tip They look like big orange pumpkins on the ground around this area.
collect 6 Stormwind Pumpkin |q 26153/1 |goto 54.3,12.3
step
Click Juicy Apples
|tip They look like red apples laying on the ground under apple trees along the streets of Stormwind City.  There are different types of trees in Stormwind, so only look under the rounder shaped trees with red apples in them.
collect 12 Juicy Apple |q 26183/1 |goto 55.0,74.0
step
talk Robby Flay##42288
You will only be able to complete 1 of the following quests per day
turnin A Fisherman's Feast##26190 |goto 50.6,71.9
turnin Feeling Crabby?##26177 |goto 50.6,71.9
turnin Orphans Like Cookies Too!##26192 |goto 50.6,71.9
turnin Penny's Pumpkin Pancakes##26153 |goto 50.6,71.9
turnin The King's Cider##26183 |goto 50.6,71.9
step
label "dailies2"
Routing to next section |next "dailies3" |only if achieved(5841)
Routing to next section |next |only if default
step
talk Daryl Riknussun##5159
accept A Fowl Shortage##29352 |or |goto Ironforge,60.1,36.4
accept A Round for the Guards##29351 |or |goto Ironforge,60.1,36.4
accept Can't Get Enough Spice Bread##29355 |or |goto Ironforge,60.1,36.4
accept I Need to Cask a Favor##29356 |or |goto Ironforge,60.1,36.4
accept Keepin' the Haggis Flowin'##29353 |or |goto Ironforge,60.1,36.4
step
Click on the Dun Morogh Chickens
collect 6 Dun Morogh Chicken##69982 |q 29352/1 |goto Dun Morogh,60.3,34.0
|only if havequest(29352)
step
Click on the Cast of Drugan's IPA
Run the Cask back to Daryl Riknussun in Ironforge
|tip Be sure not to mount up, or else you lose the cask
Deliver Cask of Drugan's IPA |q 29356/1 |goto Dun Morogh,53.9,50.8
|only if havequest(29356)
step
Click on the Sack of Oatmeal
collect 4 Sack of Oatmeal##69985 |q 29353/2 |goto Ironforge,58.9,41.2
|tip They look like shinning white bags on the ground all around Ironforge
|only if havequest(29353)
step
talk Sognar Cliffbeard##5124
collect 1 Bag o' Sheep Innards##69984 |q 29353/1 |goto Ironforge,61.9,72.5
|only if havequest(29353)
step
talk Emrul Riknussun##5160 |q 29353
collect 5 Mild Spices##2678 |q 29353/3 |goto Ironforge,59.9,37.6
|only if havequest(29353)
step
Offer your Ironforge Rations to the Ironforge Guards around Ironforge |use Ironforge Rations##69981
6 Ironforge Guards Fed |q 29351/1 |goto Ironforge,57.9,50.0
|only if havequest(29351)
step
talk Emrul Riknussun##5160
buy 10 Simple Flour##30817 |condition itemcount(30817) >= 10 |q 29355 |goto Ironforge,59.9,37.6
buy 10 Mild Spices##2678 |condition itemcount(2678) >= 10 |q 29355 |goto Ironforge,59.9,37.6
|only if havequest(29355)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread |q 29355/1
|only if havequest(29355)
step
talk Daryl Riknussun##29351
turnin A Fowl Shortage##29352 |or |goto Ironforge,60.1,36.4
turnin A Round for the Guards##29351 |or |goto Ironforge,60.1,36.4
turnin Can't Get Enough Spice Bread##29355 |or |goto Ironforge,60.1,36.4
turnin I Need to Cask a Favor##29356 |or |goto Ironforge,60.1,36.4
turnin Keepin' the Haggis Flowin'##29353 |or |goto Ironforge,60.1,36.4
step
label "dailies3"
Routing to next section |next "end" |only if achieved(5842)
Routing to next section |next |only if default
step
talk Alegorn##4210
accept The Secret to Perfect Kimchi##29313 |or |goto Darnassus,50.0,36.6
accept Remembering the Ancestors##29314 |or |goto Darnassus,50.0,36.6
accept Back to Basics##29316 |or |goto Darnassus,50.0,36.6
accept Ribs for the Sentinels##29318 |or |goto Darnassus,50.0,36.6
accept Spice Bread Aplenty##29357 |or |goto Darnassus,50.0,36.6
step
Click on the Blessed Rice Cakes
collect Blessed Rice Cakes##69900 |q 29314/1 |goto Darnassus,43.2,78.4
|only if havequest(29314)
step
Click on the Buried Kimchi Jar
|tip They look like shinning jars covered in dirt all over Darnassus
collect 8 Buried Kimchi Jar |q 29313/1 |goto 48.0,37.0
|only if havequest(29313)
step
talk Fyldan##4223
buy 10 Simple Flour##30817 |condition itemcount(30817) >= 10 |q 29357 |goto 49.6,36.6
buy 10 Mild Spices##2678 |condition itemcount(2678) >= 10 |q 29357 |goto 49.6,36.6
|only if havequest(29357)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread |q 29357/1
|only if havequest(29357)
step
Click on the Rice Baskets found on the Craftmen's Terrace and the Warrior's Terrace
|tip They look like shinning light-brown baskets
Practice Making Rice Flour |q 29316/1
|only if havequest(29316)
step
Create a basic campfire |cast Basic Campfire##818
Cook your Uncooked Ribs (5) |use Uncooked Ribs##69904
collect 5 Delicious Ribs##69906 |n
Feed the Delicious Ribs to the Darnassus Sentinels, located all over Darnassus |use Delicious Ribs##69906
Feed Ribs to Sentinels (5) |q 29318/1 |goto 52.2,35.6
|only if havequest(29318)
step
talk Alegorn##4210
turnin The Secret to Perfect Kimchi##29313 |or |goto Darnassus,50.0,36.6
turnin Back to Basics##29316 |or |goto Darnassus,50.0,36.6
turnin Ribs for the Sentinels##29318 |or |goto Darnassus,50.0,36.6
turnin Spice Bread Aplenty##29357 |or |goto Darnassus,50.0,36.6
only if havequest(29313) or havequest(29316) or havequest(29318) or havequest(29357)
step
Click on the Shrine of the Ancestors
turnin Remembering the Ancestors##29314 |or |goto Darnassus,69.2,39.9
only if havequest(29314)
step
label "end"
Complete Let's Do Lunch: Stormwind |achieve 5474
Complete Let's Do Lunch: Ironforge |achieve 5841
Complete Let's Do Lunch: Darnassus |achieve 5842
Click here to go back to the beginning of the dailies. |confirm |next "dailies1"
step
Congratulations! You've earned the A Bunch of Lunch achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Captain Rumsey's Lager", {
condition_end="achieved(1801)",
description="Brew up some of Captain Rumsey's Lager.",
},[[
step
Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe
|confirm
step
Routing to the proper section |next "create" |only if knowspell(45695)
Routing to the proper section |next "dailies" |only if default
step
label "dailies"
talk Catherine Leland##5494
You will only be able to complete 1 of the following quests per day
accept Big Gulp##26488 |or |goto Stormwind City,55.0,69.7
accept Diggin' For Worms##26420 |or |goto Stormwind City,55.0,69.7
accept Hitting a Walleye##26414 |or |goto Stormwind City,55.0,69.7
accept Rock Lobster##26442 |or |goto Stormwind City,55.0,69.7
accept Thunder Falls##26536 |or |goto Stormwind City,55.0,69.7
step
Fish in the moat in this spot
collect Royal Monkfish##58856 |n
Click the Royal Monkfish in your bags |use Royal Monkfish##58856
collect Precious Locket |q 26488/1 |goto 75.4,84.0
|tip You may not always get the item inside the first Royal Monkfish, so you'll need to fish more of them.
step
Click a Worm Mound
|tip They look like tiny gray spots on the ground, almost invisible.  Look for sparkles above the ground to find them easier.
collect 1 Overgrown Earthworm##58788 |q 26420 |goto 58.6,11.5
Use your Overgrown Earthworm |use Overgrown Earthworm##58788
Fish in the lake in this spot
collect Crystal Bass |q 26420/1 |goto 58.6,11.5
step
Fish in the lake in this spot
collect 8 Hardened Walleye |q 26414/1 |goto 48.6,39.1
step
Click Stormwind Lobster Traps
|tip They look like gray metal cages on the ground underwater around this area under the Stormwind Harbor docks.
collect 6 Rock Lobster |q 26442/1 |goto 24.1,49.7
step
Follow the path up |goto Elwynn Forest,28.2,59.3 < 5 |noway |c |q 26536
step
Fish in the lake in this spot
collect 4 Violet Perch |q 26536/1 |goto 25.7,59.3
step
talk Catherine Leland##5494
You will only be able to complete 1 of the following quests per day
turnin Big Gulp##26488 |goto Stormwind City,55.0,69.7
turnin Diggin' For Worms##26420 |goto Stormwind City,55.0,69.7
turnin Hitting a Walleye##26414 |goto Stormwind City,55.0,69.7
turnin Rock Lobster##26442 |goto Stormwind City,55.0,69.7
turnin Thunder Falls##26536 |goto Stormwind City,55.0,69.7
step
talk The Rokk##24393
You will only be able to accept one of these daily quests per day
accept Soup for the Soul##11381 |or |next "soup" |goto Shattrath City,61.8,15.6
accept Super Hot Stew##11379 |or |next "stew" |goto Shattrath City,61.8,15.6
accept Manalicious##11380 |or |next "mana" |goto Shattrath City,61.8,15.6
accept Revenge is Tasty##11377 |or |next "tasty" |goto Shattrath City,61.8,15.6
step
label "soup"
talk Uriku##20096
buy Recipe: Roasted Clefthoof##27691 |n
Click the Recipe: Roasted Clefthoof in your bags |use Recipe: Roasted Clefthoof##27691
learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand,56.2,73.3
step
kill Clefthoof##18205+, Clefthoof Calf##19183+
collect 4 Clefthoof Meat##27678 |q 11381
You can find more Clefthooves at  45.5,72.7 |goto Nagrand,58.5,46.8
step
Build a Basic Campfire |cast Basic Campfire##818
create Roasted Clefthoof##33287,Cooking,4 total |q 11381
step
Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.4
|next "turnin"
step
label "stew"
talk Xerintha Ravenoak##20916
buy Recipe: Mok'Nathal Shortribs##31675 |n |goto Blade's Edge Mountains,62.5,40.3
Click the Recipe: Mok'Nathal Shortribs in your bags |use Recipe: Mok'Nathal Shortribs##31675
learn Mok'Nathal Shortribs##31672 |q 11379
buy Recipe: Crunchy Serpent##31674 |n
Click the Recipe: Crunchy Serpent in your bags |use Recipe: Mok'Nathal Shortribs##31674
learn Crunchy Serpent##31673 |q 11379
step
kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
collect 4 Raptor Ribs##31670+ |q 11379 |goto Blade's Edge Mountains,49.6,46.2
step
kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
collect 1 Serpent Flesh##31671 |q 11379 |goto 68.2,63.2
step
Build a Basic Campfire |cast Basic Campfire##818
create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
step
Build a Basic Campfire |cast Basic Campfire##818
create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
step
kill Abyssal Flamebringer##19973+
Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise |use Cooking Pot##33852
collect Demon Broiled Surprise |q 11379/1 |goto 29.0,84.5
|next "turnin"
step
label "mana"
click Mana Berry Bush##186729+
collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm,45.6,54.2
|next "turnin"
step
label "tasty"
talk Supply Officer Mills##19038
buy Recipe: Warp Burger##27692 |n |goto Terokkar Forest,55.8,53.0
Click the Recipe: Warp Burger in your bags |use Recipe: Warp Burger##27692
learn Warp Burger##33288 |q 11377
step
kill Blackwind Warp Chaser##23219+
collect 3 Warped Flesh##27681 |q 11377 |goto 64.0,83.5
step
kill Monstrous Kaliri##23051+
|tip They fly around in the sky close to the tree outposts and bridges.
collect Giant Kaliri Wing##33838 |q 11377 |goto 67.6,74.7
step
Build a Basic Campfire |cast Basic Campfire##818
create Warp Burger##33288,Cooking,3 total |q 11377 |goto 25.9,59.5
Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
|next "turnin"
step
label "turnin"
talk The Rokk##24393
turnin Soup for the Soul##11381 |goto Shattrath City,61.8,15.6
turnin Super Hot Stew##11379 |goto Shattrath City,61.8,15.6
turnin Manalicious##11380 |goto Shattrath City,61.8,15.6
turnin Revenge is Tasty##11377 |goto Shattrath City,61.8,15.6
step
talk Brom Brewbaster##26905
accept Northern Cooking##13087 |goto Howling Fjord,58.2,62.1
|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
kill Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
collect 4 Chilled Meat |q 13087/1 |goto 79.0,73.1
|only if not completedq(13087)
step
talk Brom Brewbaster##26905
turnin Northern Cooking##13087 |goto 58.2,62.1
|only if not completedq(13087)
step
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |or |goto Dalaran,40.8,65.4
accept Convention at the Legerdemain##13101|daily |or |goto Dalaran,40.8,65.4
accept Infused Mushroom Meatloaf##13100|daily |or |goto Dalaran,40.8,65.4
accept Mustard Dogs!##13107|daily |or |goto Dalaran,40.8,65.4
accept Sewer Stew##13102|daily |or |goto Dalaran,40.8,65.4
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
step
Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs.  They spawn in random locations.
collect 1 Jug of Wine |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
create 4 Northern Stew##57421,Cooking,4 total |n
collect 4 Northern Stew |q 13101/1
step
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 59.5,43.6
|tip They spawn randomly along the sewer lines.
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf |q 13100/1
step
Click the Wild Mustard
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran,67.7,40.0
You can find more Wild Mustard flowers:
At [50.3,48.3]
At [37.2,43.9]
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra,46.7,43.6
step
#include "cooking_fire"
create Rhino Dogs##45553,Cooking,4 total |n
collect 4 Rhino Dogs##34752 |q 13107
step
Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket! |q 13107/1
step
Click the Crystalsong Carrots
|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest,26.7,44.1
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight,30.0,49.8
step
#include "cooking_fire"
Use your Stew Cookpot in your bags|use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran,36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran,48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran,52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran,68.6,42.0
step
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran,35.5,57.6
step
talk Marcia Chase##28742
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
accept Blood Is Thicker##13833 |or |goto Dalaran,53.1,64.9
accept Dangerously Delicious##13834 |or |goto Dalaran,53.1,64.9
accept Jewel Of The Sewers##13832 |or |goto Dalaran,53.1,64.9
accept Disarmed!##13836 |or |goto Dalaran,53.1,64.9
accept The Ghostfish##13830 |or |goto Dalaran,53.1,64.9
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
Get the Animal Blood buff |havebuff 132311 |q 13833 |goto Borean Tundra,54.6,41.8
step
Walk into the water here to create a pool of blood
Fish in the pool of blood
collect 5 Bloodtooth Frenzy |q 13833/1 |goto 53.7,42.9
step
Fish in this big lake
collect 10 Terrorfish |q 13834/1 |goto Wintergrasp,79.9,41.8
step
The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7 < 5 |q 13832
Fish in the water in the Dalaran sewers
collect 1 Corroded Jewelry |q 13832/1 |goto 44.4,66.2
step
Leave the Dalaran sewers|goto Dalaran,60.2,47.7 < 5 |q 13832
collect Bloated Slippery Eel##45328|n
Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
collect 1 Severed Arm |q 13836/1 |goto Dalaran,64.8,60.8
step
Fish in the water here
collect 1 Phantom Ghostfish##45902|n
Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin,49.3,61.8
step
talk Marcia Chase##28742
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
turnin Blood Is Thicker##13833 |goto Dalaran,53.1,64.9
turnin Dangerously Delicious##13834 |goto Dalaran,53.1,64.9
turnin Jewel Of The Sewers##13832 |goto Dalaran,53.1,64.9
turnin The Ghostfish##13830 |goto Dalaran,53.1,64.9
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836
step
You have completed the maximum amount of dailies you can do today.
Click here to go back to the beginning of the dailies. |confirm |next "dailies"
collect 1 Recipe: Captain Rumsey's Lager##34834 |next "learn" |goto Dalaran,36.6,37.3
step
label "learn"
learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
step
label "create"
talk Reese Langston##1327
buy 1 Flask of Port##2593 |condition itemcount(2593) >= 1 |goto Stormwind City,76.3,53.0
buy 1 Flagon of Mead##2594 |condition itemcount(2594) >= 1 |goto Stormwind City,76.3,53.0
buy 1 Skin of Dwarven Stout##2596 |condition itemcount(2596) >= 1 |goto Stormwind City,76.3,53.0
step
create Captain Rumsey's Lager##45695,Cooking,1 total
Brew up Captain Rumsey's Lager |achieve 1801
step
Congratulations! You've earned the Captain Rumsey's Lager achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Cooking With Style", {
condition_end="achieved(3296)",
description="Obtain a Chef's Hat",
},[[
step
label "start"
You will need to complete Dalaran Cooking Dailies to earn 100 Dalaran Cooking awards
|confirm
step
talk Brom Brewbaster##26905
accept Northern Cooking##13087 |goto Howling Fjord,58.2,62.1
|tip This quest is only available to you if you have 350+ Cooking skill.
|only if not completedq(13087)
step
kill Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
collect 4 Chilled Meat |q 13087/1 |goto 79.0,73.1
|only if not completedq(13087)
step
talk Brom Brewbaster##26905
turnin Northern Cooking##13087 |goto 58.2,62.1
|only if not completedq(13087)
step
talk Katherine Lee##28705
You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
accept Cheese for Glowergold##13103 |or |goto Dalaran,40.8,65.4
accept Convention at the Legerdemain##13101 |or |goto Dalaran,40.8,65.4
accept Infused Mushroom Meatloaf##13100 |or |goto Dalaran,40.8,65.4
accept Mustard Dogs!##13107 |or |goto Dalaran,40.8,65.4
accept Sewer Stew##13102 |or |goto Dalaran,40.8,65.4
step
Click the Aged Dalaran Limburger
|tip They look like piles and pieces of yellow cheese on the tables inside this building.
collect 1 Aged Dalaran Limburger##43137 |q 13103 |goto 54.7,31.5
Click the Half Full Glasses of Wine
|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
collect 6 Half Full Dalaran Wine Glass##43138 |q 13103 |goto 54.7,31.5
You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
collect 1 Wine and Cheese Platter |q 13103/1
step
Click a Full Jug of Wine
|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
collect 1 Jug of Wine |q 13101/2 |goto 55.0,30.8
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13101 |goto Dragonblight,30.0,49.8
step
Use your Cooking ability to cook 4 Northern Stew
|tip You will need a cooking fire to do this.
collect 4 Northern Stew |q 13101/1
step
The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7 < 5 |q 13100
click Infused Mushroom##359+
collect 4 Infused Mushroom##43100 |q 13100 |goto Dalaran/2 51.6,41.6
step
Leave the Dalaran sewers|goto Dalaran,60.2,47.7 < 5 |q 13100
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 2 Chilled Meat##43013 |q 13100 |goto Dragonblight,30.0,49.8
step
Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101
|tip You will need a cooking fire to do this.
collect 1 Infused Mushroom Meatloaf |q 13100/1
step
click Wild Mustard##192827
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
collect 4 Wild Mustard##43143 |q 13107 |goto Dalaran,67.7,40.0
You can find more Wild Mustard flowers:
|goto Dalaran/0,50.3,48.3
|goto Dalaran/0,37.2,43.9
step
kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
collect 4 Rhino Meat##43012 |q 13107 |goto Borean Tundra,46.7,43.6
step
create 4 Rhino Dogs##45553,Cooking,4 total |n
Use your Cooking ability to cook 4 Rhino Dogs
|tip You will need a cooking fire to do this.
collect 4 Rhino Dogs##34752 |q 13107
step
Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
collect 1 Mustard Dog Basket! |q 13107/1
step
Click the Crystalsong Carrots
|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
collect 4 Crystalsong Carrot##43148 |q 13102 |goto Crystalsong Forest,26.9,45.5
step
kill Rabid Grizzly##26643+, Blighted Elk##26616+
collect 4 Chilled Meat##43013 |q 13102 |goto Dragonblight,30.0,49.8
step
Use your Stew Cookpot in your bags|use Stew Cookpot##43147
|tip You will need a cooking fire to do this.
collect 1 Vegetable Stew |q 13102/1
step
talk Ranid Glowergold##28718
turnin Cheese for Glowergold##13103 |goto Dalaran,36.6,27.8
step
talk Arille Azuregaze##29049
turnin Convention at the Legerdemain##13101 |goto Dalaran,48.6,37.5
step
talk Orton Bennet##29527
turnin Infused Mushroom Meatloaf##13100 |goto Dalaran,52.3,55.6
step
talk Archmage Pentarus##28160
turnin Mustard Dogs!##13107 |goto Dalaran,68.6,42.0
step
The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7 < 5 |c |q 13102
step
talk Ajay Green##29532
turnin Sewer Stew##13102 |goto Dalaran,35.5,57.6
step
earn 100 Dalaran Cooking Award##81 |next "turnin"
Click here to go back to the beginning of the dailies |confirm |next "start"
step
label "turnin"
Go to Dalaran |goto Dalaran
talk Derek Odds##31032
buy 1 Chef's Hat##46349 |condition itemcount(46349) >= 1
Obtain a Chef's Hat |achieve 3296 |goto Dalaran,41.6,64.8
step
Congratulations! You've earned the _Cooking with Style_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Critter Gitter", {
condition_end="achieved(1781)",
description="This guide will walk you through coerceing 10 critters to be your pet within 3 minutes or less using Critter Bites.",
},[[
step
This requires 10 Critter Bites
_Click here_ to craft these |confirm |next "farm1"
_Click here_ to buy these from the Auction House |confirm |next
step
talk Auctioneer Chilton##8670
collect 10 Critter Bites##43004 |goto Stormwind City 61.0,71.6
next "gitter"
step
label "farm1"
This requires 20 Chilled Meat and 10 Northern Spices
_Click here_ to go farm for these |confirm |next "farm2"
_Click here_ to buy these from the Auction House |confirm |next
step
talk Auctioneer Chilton##8670
collect 20 Chilled Meat##43013 |goto Stormwind City 61.0,71.6
collect 10 Northern Spices##43007 |goto Stormwind City 61.0,71.6
next "make"
step
label "farm2"
kill Scourged Mammoth##25452+
collect 20 Chilled Meat##43013 |goto Borean Tundra 78.2,24.0
step
Use the Dalaran Cooking Dailies guide to get Small Spice Bags
collect Spice Bag##44113 |n
collect 10 Northern Spices##43007
step
label "make"
Get someone to make your 10 Critter Bites
|tip Ask in your guild or in trade for someone to make these. Be sure to tip well!
Or... |only if skill("Cooking")>=400
Make a Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=400
create Critter Bites##57435,Cooking,10 total |only if skill("Cooking")>=400
collect 10 Critter Bites##43004
Click here if you don't have the recipe |confirm |next "recipe" |only if skill("Cooking")>=400
next "gitter"
step
label "recipe"
Use the Dalaran Cooking Dailies guide to earn 3 Dalaran Cooking Awards
earn 3 Dalaran Cooking Award##81
step
talk Derek Odds##31032
buy 1 Recipe: Critter Bites##43029 |condition itemcount(43029) >= 1 |goto Dalaran 41.6,64.8
step
learn Critter Bites##57435 |use Recipe: Critter Bites##43029
step
Make a Campfire |cast Basic Campfire##818
create Critter Bites##57435,Cooking,10 total
collect 10 Critter Bites##43004
step
label "gitter"
Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them |use Critter Bites##43004
|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
Coerce #10# critters to be your pet within 3 minutes or less |achieve 1781 |goto Eastern Plaguelands 4.7,35.5
step
Congratulations, you have earned the Critter Gitter achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Dinner Impossible",{
condition_end="achieved(1785)",
description="Present a Great Feast in each of the battlegrounds.",
},[[
step
You can either buy these items from the auction house or farm them
collect 5 Great Feast##34753
_Click here_ to go farm these materials |confirm |next "farm1"
next "usefeast"
step
label "farm1"
#include "trainer_Cooking"
learn Great Feast##45554
step
You can either buy these items from the auction house or farm them
collect 5 Chunk o'Mammoth##34736
collect 5 Shoveltusk Flank##43009
collect 5 Worm Meat##43010
collect 10 Chilled Meat##43013
_Click here_ to go farm these materials |confirm |next "farm2"
next "makefeast"
step
label "farm2"
kill Scourged Mammoth##25452+ |goto Borean Tundra 78.2,24.0
collect 5 Chunk o'Mammoth##34736
collect 10 Chilled Meat##43013
step
kill Tundra Crawler##25454+ |goto Borean Tundra 76.2,23.0
collect 5 Worm Meat##43010
step
kill Shoveltusk##23690+ |goto Howling Fjord 73.6,40.0
collect 5 Shoveltusk Flank##43009
step "makefeast"
Have someone make the Great Feasts for you
|tip Ask in your guild or in trade for someone to make these. Be sure to tip well! |only if skill("Cooking")<375
Make a Cooking Fire |cast Cooking Fire##818 |only if skill("Cooking")>=375
create 5 Great Feast##45554,Cooking,4 total |only if skill("Cooking")>=375
collect 5 Great Feast##34753
step "usefeast"
Push [H] on your keyboard to open your Player vs. Player interface
Click on Alterac Valley and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
|tip Wait for the que to pop-up in the middle of your screen and click on accept.
Use one of your Great Feasts |use Great Feast##34753 |achieve 1785/2
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
Push [H] on your keyboard to open your Player vs. Player interface
Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
|tip Wait for the que to pop-up in the middle of your screen and click on accept.
Use one of your Great Feasts |use Great Feast##34753 |achieve 1785/5
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
Push [H] on your keyboard to open your Player vs. Player interface
Click on Warsong Gulch and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
|tip Wait for the que to pop-up in the middle of your screen and click on accept.
Use one of your Great Feasts |use Great Feast##34753 |achieve 1785/3
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
Push [H] on your keyboard to open your Player vs. Player interface
Click on Strand of the Ancients and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
|tip Wait for the que to pop-up in the middle of your screen and click on accept.
Use one of your Great Feasts |use Great Feast##34753 |achieve 1785/1
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
Push [H] on your keyboard to open your Player vs. Player interface
Click on Eye of the Storm and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
|tip Wait for the que to pop-up in the middle of your screen and click on accept
Use one of your Great Feasts |use Great Feast##34753 |achieve 1785/4
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
Congratulations, you have earned the _Dinner Impossible_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Hail to the Chef Achievement", {
condition_end="achieved(1563)",
description="This guide will show you all the achievements you need to complete the Hail to the Chef Achievement.",
},[[
step
label	start
Complete the Achievement Grand Master Cook |achieve 125
Click here to use our _Cooking Guide_ and level up your Cooking skill. |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
step
Complete the Achievement The Cake Is Not A Lie |achieve 877
Click here to use our _The Cake Is Not A Lie_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\The Cake Is Not A Lie"
step
Complete the Achievement Kickin' It Up a Notch |achieve 906
Click here to use our _Kickin' It Up a Notch_ guide Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch"
step
Complete the Achievement The Northrend Gourmet |achieve 1779
Click here to use our _The Northrend Gourmet_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\The Northrend Gourmet"
step
Complete the Achievement Second That Emotion |achieve 1780
Click here to use our _Second That Emotion_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Second That Emotion"
step
Complete the Achievement Critter Gitter |achieve 1781
Click here to use our _Critter Gitter_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Critter Gitter"
step
Complete the Achievement Our Daily Bread |achieve 1783
Click here to use our _Our Daily Bread_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Our Daily Bread"
step
Complete the Achievement Dinner Impossible |achieve 1785
Click here to use our _Dinner Impossible_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Dinner Impossible"
step
Complete the Achievement Sous Chef |achieve 1798
Click here to use our _Sous Chef_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Iron Chef"
step
Complete the Achievement Captain Rumsey's Lager |achieve 1801
Click here to use our _Captain Rumsey's Lager_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Captain Rumsey's Lager"
step
Complete the Achievement The Outland Gourmet |achieve 1800
Click here to use our _The Outland Gourmet_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\The Outland Gourmet"
step
You still have some Achievements to earn before you complete the _Hail to the Chef_ Achievement. |only if not achieved(1563)
|only if not achieved(1563)
Click here to return to the beginning of this guide |confirm |only if not achieved(1563) |next start
Congratulations! You have earned the Achievement _Hail to the Chef_! |achieve 1563 |only if achieved(1563)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Iron Chef",{
condition_end="achieved(5471)",
achieveid={1795,1796,1797,1798,1799},
description="Learn 200 cooking recipes.",
},[[
stickystart "ticker"
step
#include "trainer_Cooking"
learn Charred Wolf Meat##2538
learn Roasted Boar Meat##2540
learn Herb Baked Egg##8604
learn Spice Bread##37836
learn Kaldorei Spider Kabob##6412
learn Spiced Wolf Meat##2539
learn Venison Jerky##93741
learn Coyote Steak##2541
learn Fillet of Frenzy##6415
learn Boiled Clams##6499
learn Crab Cake##2544
learn Dry Pork Ribs##2546
learn Goblin Deviled Clams##6500
learn Tasty Lion Steak##3399
learn Soothing Turtle Bisque##3400
learn Barbecued Buzzard Wing##4094
learn Spider Sausage##21175
learn Spotted Yellowtail##18238
learn Grilled Squid##18240
learn Nightfin Soup##18243
learn Poached Sunscale Salmon##18244
learn Charred Bear Kabobs##46684
learn Juicy Bear Burger##46688
learn Stewed Trout##42296
learn Smoked Rockfin##45560
learn Grilled Bonescale##45561
learn Sauteed Goby##45562
learn Mammoth Meal##45549
learn Shoveltusk Steak##45550
learn Worm Delight##45551
learn Roasted Worg##45552
learn Rhino Dogs##45553
learn Grilled Sculpin##45563
learn Smoked Salmon##45564
learn Poached Nettlefish##45565
learn Pickled Fangtooth##45566
learn Baked Manta Ray##45569
learn Dalaran Clam Chowder##58065
learn Fisherman's Feast##42302
learn Hot Buttered Trout##42305
learn Great Feast##45554
learn Black Jelly##64358
learn Darkbrew Lager##88015
learn Blackened Surprise##88006
step
talk Kendor Kabonka##340 |goto Stormwind City 76.6,53.6
buy 1 Recipe: Gooey Spider Cake##3683 |n
buy 1 Recipe: Seasoned Wolf Kabob##2701 |n
buy 1 Recipe: Murloc Fin Soup##3680 |n
buy 1 Recipe: Crocolisk Gumbo##3681 |n
buy 1 Recipe: Curiously Tasty Omelet##3682 |n
buy 1 Recipe: Redridge Goulash##2699 |n
buy 1 Recipe: Succulent Pork Ribs##2700 |n
buy 1 Recipe: Crocolisk Steak##3678 |n
buy 1 Recipe: Blood Sausage##3679 |n
buy 1 Recipe: Cooked Crab Claw##2698 |n
buy 1 Recipe: Westfall Stew##728 |n
buy 1 Recipe: Goretusk Liver Pie##2697 |n
buy 1 Recipe: Beer Basted Boar Ribs##2889 |n
learn Gooey Spider Cake##3377 |use Recipe: Gooey Spider Cake##3683
learn Seasoned Wolf Kabob##2549 |use Recipe: Seasoned Wolf Kabob##2701
learn Murloc Fin Soup##3372 |use Recipe: Murloc Fin Soup##3680
learn Crocolisk Gumbo##3373 |use Recipe: Crocolisk Gumbo##3681
learn Curiously Tasty Omelet##3376 |use Recipe: Curiously Tasty Omelet##3682
learn Redridge Goulash##2547 |use Recipe: Redridge Goulash##2699
learn Succulent Pork Ribs##2548 |use Recipe: Succulent Pork Ribs##2700
learn Crocolisk Steak##3370 |use Recipe: Crocolisk Steak##3678
learn Blood Sausage##3371 |use Recipe: Blood Sausage##3679
learn Cooked Crab Claw##2545 |use Recipe: Cooked Crab Claw##2698
learn Westfall Stew##2543 |use Recipe: Westfall Stew##728
learn Goretusk Liver Pie##2542 |use Recipe: Goretusk Liver Pie##2697
learn Beer Basted Boar Ribs##2795 |use Recipe: Beer Basted Boar Ribs##2889
step
talk Kriggon Talsone##4305 |goto Westfall 36.2,90.0
buy 1 Recipe: Clam Chowder##5528 |n
buy 1 Recipe: Slitherskin Mackerel##6326 |n
buy 1 Recipe: Spiced Chili Crab##16111 |n
learn Clam Chowder##6501 |use Recipe: Clam Chowder##5528
learn Slitherskin Mackerel##7752 |use Recipe: Slitherskin Mackerel##6326
learn Spiced Chili Crab##15915 |use Recipe: Spiced Chili Crab##16111
step
talk Khara Deepwater##1684 |goto Loch Modan 40.4,39.4
buy 1 Recipe: Longjaw Mud Snapper##6328 |n
buy 1 Recipe: Loch Frenzy Delight##6329 |n
buy 1 Recipe: Brilliant Smallfish##6325 |n
learn Longjaw Mud Snapper##7753 |use Recipe: Longjaw Mud Snapper##6328
learn Loch Frenzy Delight##7754 |use Recipe: Loch Frenzy Delight##6329
learn Brilliant Smallfish##7751 |use Recipe: Brilliant Smallfish##6325
step
talk Drac Roughcut##1465 |goto Loch Modan 35.6,49.0
buy 1 Recipe: Smoked Bear Meat##6892 |n
learn Smoked Bear Meat##8607 |use Recipe: Smoked Bear Meat##6892
step
talk Corporal Bluth##734 |goto Northern Stranglethorn 47.4,10.2
buy 1 Recipe: Jungle Stew##12231 |n
learn Jungle Stew##15861 |use Recipe: Jungle Stew##12231
step
talk Kelsey Yance##2664 |goto The Cape of Stranglethorn 42.8,69.0
buy 1 Recipe: Mightfish Steak##13948 |n
buy 1 Recipe: Hot Smoked Bass##13943 |n
buy 1 Recipe: Cooked Glossy Mightfish##13940 |n
buy 1 Recipe: Filet of Redgill##13941 |n
buy 1 Recipe: Giant Clam Scorcho##6039 |n
buy 1 Recipe: Sagefish Delight##21219 |n
buy 1 Recipe: Rockscale Cod##6369 |n
buy 1 Recipe: Mithril Head Trout##17062 |n
buy 1 Recipe: Smoked Sagefish##21099 |n
learn Mightfish Steak##18246 |use Recipe: Mightfish Steak##13948
learn Hot Smoked Bass##18242 |use Recipe: Hot Smoked Bass##13943
learn Cooked Glossy Mightfish##18239 |use Recipe: Cooked Glossy Mightfish##13940
learn Filet of Redgill##18241 |use Recipe: Filet of Redgill##13941
learn Giant Clam Scorcho##7213 |use Recipe: Giant Clam Scorcho##6039
learn Sagefish Delight##25954 |use Recipe: Sagefish Delight##21219
learn Rockscale Cod##7828 |use Recipe: Rockscale Cod##6369
learn Mithril Head Trout##20916 |use Recipe: Mithril Head Trout##17062
learn Smoked Sagefish##25704 |use Recipe: Smoked Sagefish##21099
step
talk Mrs. Gant##54232 |goto The Cape of Stranglethorn 42.6,72.8
buy 1 Recipe: Undermine Clam Chowder##16767 |n
learn Undermine Clam Chowder##20626 |use Recipe: Undermine Clam Chowder##16767
step
talk Kilxx##3497 |goto Northern Barrens 68.6,72.6
buy 1 Recipe: Bristle Whisker Catfish##6330 |n
buy 1 Recipe: Rainbow Fin Albacore##6368 |n
learn Bristle Whisker Catfish##7755 |use Recipe: Bristle Whisker Catfish##6330
learn Rainbow Fin Albacore##7827 |use Recipe: Rainbow Fin Albacore##6368
step
talk Zidormi##63546 |goto Dustwallow Marsh 55.9,49.5
_Tell her_ "Show me Theramore before the destruction." |tip If you don't see this option just click next to move on
confirm
step
talk Helenia Olden##4897 |goto Dustwallow Marsh 66.4,51.4
buy 1 Recipe: Dragonbreath Chili##12239 |n
buy 1 Recipe: Mystery Stew##12233 |n
buy 1 Recipe: Roast Raptor##12228 |n
learn Dragonbreath Chili##15906 |use Recipe: Dragonbreath Chili##12239
learn Mystery Stew##15865 |use Recipe: Mystery Stew##12233
learn Roast Raptor##15855 |use Recipe: Roast Raptor##12228
step
talk Dirge Quikcleave##40589 |goto Tanaris 52.6,29.0
buy 1 Recipe: Tender Wolf Steak##18046 |n
learn Tender Wolf Steak##22480 |use Recipe: Tender Wolf Steak##18046
step
talk Dirge Quikcleave##40589
turnin I Know A Guy...##6612 |goto Tanaris 52.6,29.0 |only if havequest(6612)
accept Clamlette Surprise##6610 |goto Tanaris 52.6,29.0 |only if not completedq(6610)
step
kill Fire Roc##5429+
collect 10 Giant Egg##12207 |q Clamlette Surprise##6610/1 |goto Tanaris/0 45.2,39.8
More _can be found_ at [47.9,46.1]
only if havequest(6610)
step
kill Tidal Strider##39022+, Steeljaw Snapper##14123+ |tip They will drop Big-Mouth Clams
use Big-Mouth Clam##7973
collect 10 Zesty Clam Meat##7974 |q Clamlette Surprise##6610/2 |goto Tanaris/0 53.8,37.1
only if havequest(6610)
step
talk Carmen Ibanozzle##38714
buy 20 Fine Aged Cheddar##3927 |q Clamlette Surprise##6610/3 |goto Tanaris 55.6,60.8
only if havequest(6610)
step
talk Dirge Quikcleave##40589
turnin Clamlette Surprise##6610 |goto Tanaris 52.6,29.0
learn Clamlette Magnifique##64054
only if havequest(6610)
step
talk Calandrath##15174
accept Desert Recipe##8307 |goto Silithus 55.4,36.6
only if not completedq(8307)
step
click Sandy Cookbook##470
turnin Desert Recipe##8307 |goto Silithus 43.6,42.0 |only if havequest(8307)
accept Sharing the Knowledge##8313 |goto Silithus 43.6,42.0 |only if not completedq(8313)
only if havequest(8307)
step
talk Calandrath##15174
turnin Sharing the Knowledge##8313 |goto Silithus 55.4,36.6
learn Smoked Desert Dumplings##24801
only if havequest(8313)
step
talk Vivianna##7947 |goto Feralas/0 46.4,41.6
buy 1 Recipe: Baked Salmon##13949 |n
buy 1 Recipe: Lobster Stew##13947 |n
buy 1 Recipe: Hot Wolf Ribs##12229 |n
learn Baked Salmon##18247 |use Recipe: Baked Salmon##13949
learn Lobster Stew##18245 |use Recipe: Lobster Stew##13947
learn Hot Wolf Ribs##15856 |use Recipe: Hot Wolf Ribs##12229
step
talk Janet Hommers##8150 |goto Desolace 66.2,6.6
buy 1 Recipe: Heavy Kodo Stew##12240 |n
learn Heavy Kodo Stew##15910 |use Recipe: Heavy Kodo Stew##12240
step
talk Himmik##11187 |goto Winterspring 59.8,51.6
buy 1 Recipe: Monster Omelet##16110 |n
learn Monster Omelet##15933 |use Recipe: Monster Omelet##16110
step
talk Acteon##17110
accept The Great Moongraze Hunt##9454 |goto Azuremyst Isle 49.8,51.8
only if not completedq(9454)
step
kill Moongraze Stag##17200+
collect 6 Moongraze Stag Tenderloin##23676 |q The Great Moongraze Hunt##9454/1 |goto Azuremyst Isle 51.4,54.0
only if havequest(9454)
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto Azuremyst Isle 49.8,51.8
only if havequest(9454)
step
collect Recipe: Roasted Moongraze Tenderloin##27686
learn Roasted Moongraze Tenderloin##33277
only if havequest(9454)
step
talk Fazu##18427 |goto Bloodmyst Isle 53.4,56.6
buy 1 Recipe: Crunchy Spider Surprise##22647 |n
learn Crunchy Spider Surprise##28267 |use Recipe: Crunchy Spider Surprise##22647
step
talk Sid Limbardi##16826 |goto Hellfire Peninsula 54.2,63.6
buy 1 Recipe: Ravager Dog##27688 |n
learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
only if not completedq(9349)
step
click Ravager Egg##1867
kill Razorfang Ravager##16933+, Razorfang Hatchling##16932+
collect 12 Ravager Egg##23217 |q Ravager Egg Roundup##9349/1 |goto Hellfire Peninsula 42.3,82.4
only if havequest(9349)
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8 |only if havequest(9349)
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8 |only if not completedq(9361)
step
kill Deranged Hellboar##16863+ |tip They drop the Tainted Helboar Meat you have to purify
use Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q Helboar, the Other White Meat##9361/1 |goto Hellfire Peninsula 50.0,67.9
only if havequest(9361)
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8 |only if havequest(9361)
accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8 |only if not completedq(9356)
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q Smooth as Butter##9356/1 |goto Hellfire Peninsula 59.0,69.1
only if havequest(9356)
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8 |only if havequest(9356)
step
collect Recipe: Buzzard Bites##27684
learn Buzzard Bites##33279
only if havequest(9356)
step
talk Juno Dufrain##18911 |goto Zangarmarsh/0 78.1,66.1
buy 1 Recipe: Blackened Sporefish##27696 |n
learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696
step
talk Doba##20028 |goto Zangarmarsh 42.2,27.8
buy 1 Recipe: Blackened Trout##27694 |n
buy 1 Recipe: Feltail Delight##27695 |n
learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694
learn Feltail Delight##33291 |use Recipe: Feltail Delight##27695
step
talk Mycah##18382 |goto Zangarmarsh 17.8,51.2
collect Glowcap##24245 |n |tip Glowcaps are scattered out around usually at bottom of the large mushrooms around Sporeggar
buy 1 Recipe: Clam Bar##30156 |n
learn Clam Bar##36210 |use Recipe: Clam Bar##30156
|tip You must be at least Neutral with Sporeggar to purchase this recipe. If you are not please refer to our Reputation Guide for Sporeggar to achieve this
model Glowcap##6874
step
talk Xerintha Ravenoak##20916 |goto Blade's Edge Mountains 62.4,40.2
buy 1 Recipe: Crunchy Serpent##31674 |n
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
learn Crunchy Serpent##31673 |use Recipe: Crunchy Serpent##31674
learn Mok'Nathal Shortribs##38867 |use Recipe: Mok'Nathal Shortribs##31675
step
talk Supply Officer Mills##19038 |goto Terokkar Forest 55.8,53.0
buy 1 Recipe: Blackened Basilisk##27690 |n
buy 1 Recipe: Warp Burger##27692 |n
learn Blackened Basilisk##33286 |use Recipe: Blackened Basilisk##27690
learn Warp Burger##33288 |use Recipe: Warp Burger##27692
step
talk Innkeeper Biribi##19296 |goto Terokkar Forest/0 56.7,53.3
buy 1 Recipe: Golden Fish Sticks##27699 |n
buy 1 Recipe: Spicy Crawdad##27700 |n
learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699
learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700
step
talk Uriku##20096 |goto Nagrand 56.2,73.2
buy 1 Recipe: Roasted Clefthoof##27691 |n
buy 1 Recipe: Talbuk Steak##27693 |n
buy 1 Recipe: Grilled Mudfish##27697 |n
buy 1 Recipe: Poached Bluefish##27698 |n
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691
learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693
learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697
learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698
step
talk Rollick MacKreel##26989
accept Northern Cooking##13088 |goto Borean Tundra 57.8,71.6
only if not completedq(13088) or not completedq(13087)
step
kill Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+, Wooly Rhino Calf##25488+
collect 4 Chilled Meat##43013 |q Northern Cooking##13088/1 |goto Borean Tundra 46.1,72.9
only if havequest(13088)
step
talk Rollick MacKreel##26989
turnin Northern Cooking##13088 |goto Borean Tundra 57.8,71.6
learn Northern Stew##57421
only if havequest(13088)
step
At max character level the fastest way to farm these is to _run a normal Northrend Dungeon repeatedly_ until all four have been collected
collect 1 Recipe: Bad Clams##43509 |n
collect 1 Recipe: Last Week's Mammoth##43508 |n
collect 1 Recipe: Haunted Herring##43510 |n
collect 1 Recipe: Tasty Cupcake##43507 |n
learn Bad Clams##58523 |use Recipe: Bad Clams##43509
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
step
talk Shay Pressler##46602 |goto Stormwind City 64.6,76.8
buy 1 Recipe: Broiled Dragon Feast##62799 |condition itemcount(62799) >= 1
buy 1 Recipe: Seafood Magnifique Feast##62800 |condition itemcount(62800) >= 1
learn Broiled Dragon Feast##88011
learn Seafood Magnifique Feast##88036
step
talk Bountiful Barrel##35337 |goto Elwynn Forest 34.0,51.6
buy 1 Bountiful Cookbook##46809 |condition itemcount(46809) >= 1
use Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861
collect Recipe: Candied Sweet Potato##44859
collect Recipe: Cranberry Chutney##44858
collect Recipe: Pumpkin Pie##44862
collect Recipe: Spice Bread Stuffing##44860
learn Slow-Roasted Turkey##62045
learn Candied Sweet Potato##62051
learn Cranberry Chutney##62049
learn Pumpkin Pie##62044
learn Spice Bread Stuffing##62050
step
talk Bario Matalli##49701 |goto Stormwind City 50.8,71.4
buy 1 Recipe: South Island Iced Tea##65433 |condition itemcount(65433) >= 1
buy 1 Recipe: Fortune Cookie##65432 |condition itemcount(65432) >= 1
buy 1 Recipe: Chocolate Cookie##65431 |condition itemcount(65431) >= 1
buy 1 Recipe: Baked Rockfish##65426 |condition itemcount(65426) >= 1
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |condition itemcount(65420) >= 1
buy 1 Recipe: Delicious Sagefish Tail##65422 |condition itemcount(65422) >= 1
buy 1 Recipe: Fish Fry##65423 |condition itemcount(65423) >= 1
buy 1 Recipe: Blackbelly Sushi##65424 |condition itemcount(65424) >= 1
buy 1 Recipe: Skewered Eel##65425 |condition itemcount(65425) >= 1
buy 1 Recipe: Severed Sagefish Head##65421 |condition itemcount(65421) >= 1
buy 1 Recipe: Basilisk Liverdog##65427 |condition itemcount(65427) >= 1
buy 1 Recipe: Grilled Dragon##65428 |condition itemcount(65428) >= 1
buy 1 Recipe: Beer-Basted Crocolisk##65429 |condition itemcount(65429) >= 1
buy 1 Recipe: Crocolisk Au Gratin##65430 |condition itemcount(65430) >= 1
buy 1 Recipe: Scalding Murglesnout##68688 |condition itemcount(68688) >= 1
buy 1 Recipe: Pickled Guppy##65417 |condition itemcount(65417) >= 1
buy 1 Recipe: Tender Baked Turtle##65419 |condition itemcount(65419) >= 1
buy 1 Recipe: Hearty Seafood Soup##65418 |condition itemcount(65418) >= 1
buy 1 Recipe: Seasoned Crab##65413 |condition itemcount(65413) >= 1
buy 1 Recipe: Starfire Espresso##65414 |condition itemcount(65414) >= 1
buy 1 Recipe: Highland Spirits##65415 |condition itemcount(65415) >= 1
buy 1 Recipe: Lurker Lunch##65416 |condition itemcount(65416) >= 1
buy 1 Recipe: Whitecrest Gumbo##65406 |condition itemcount(65406) >= 1
buy 1 Recipe: Feathered Lure##65408 |condition itemcount(65408) >= 1
buy 1 Recipe: Lavascale Minestrone##65409 |condition itemcount(65409) >= 1
buy 1 Recipe: Salted Eye##65410 |condition itemcount(65410) >= 1
buy 1 Recipe: Lavascale Fillet##65407 |condition itemcount(65407) >= 1
buy 1 Recipe: Broiled Mountain Trout##65411 |condition itemcount(65411) >= 1
buy 1 Recipe: Lightly Fried Lurker##65412 |condition itemcount(65412) >= 1
learn South Island Iced Tea##88044
learn Fortune Cookie##88019
learn Chocolate Cookie##88013
learn Baked Rockfish##88003
learn Mushroom Sauce Mudfish##88031
learn Delicious Sagefish Tail##88016
learn Fish Fry##88018
learn Blackbelly Sushi##88034
learn Skewered Eel##88042
learn Severed Sagefish Head##88039
learn Basilisk Liverdog##88004
learn Grilled Dragon##88020
learn Beer-Basted Crocolisk##88005
learn Crocolisk Au Gratin##88014
learn Scalding Murglesnout##96133
learn Pickled Guppy##88033
learn Tender Baked Turtle##88046
learn Hearty Seafood Soup##88021
learn Seasoned Crab##88037
learn Starfire Espresso##88045
learn Highland Spirits##88022
learn Lurker Lunch##88030
learn Whitecrest Gumbo##88047
learn Feathered Lure##88017
learn Lavascale Minestrone##88025
learn Salted Eye##88035
learn Lavascale Fillet##88024
learn Broiled Mountain Trout##88012
learn Lightly Fried Lurker##88028
step
talk Eebee Jinglepocket##23064 |goto Shattrath City 51.6,30.6
buy 1 Recipe: Hot Apple Cider##34413 |condition itemcount(34413) >= 1
buy 1 Recipe: Winter Veil Egg Nog##17201 |condition itemcount(17201) >= 1
buy 1 Recipe: Gingerbread Cookie##17200 |condition itemcount(17200) >= 1
learn Hot Apple Cider##45022
learn Winter Veil Egg Nog##21144
learn Gingerbread Cookie##21143
step
talk Chapman##34382 |goto Dalaran 34.6,38.4
buy 1 Recipe: Bread of the Dead##46710
learn Bread of the Dead##65454
step
talk Mera Mistrunner##33595 |goto Icecrown 72.4,20.8
|tip You will need a total of 74 Epicurean's Awards to get all of the recipes
_Use_ the Cooking Dailies in the Professions guides to earn Epicurean's Awards to buy the following recipies
buy 1 Recipe: Spicy Fried Herring##43027 |condition itemcount(43027) >= 1
buy 1 Recipe: Worg Tartare##44954 |condition itemcount(44954) >= 1
buy 1 Recipe: Fish Feast##43017 |condition itemcount(43017) >= 1
buy 1 Recipe: Mega Mammoth Meal##43018 |condition itemcount(43018) >= 1
buy 1 Recipe: Tender Shoveltusk Steak##43019 |condition itemcount(43019) >= 1
buy 1 Recipe: Spiced Worm Burger##43020 |condition itemcount(43020) >= 1
buy 1 Recipe: Very Burnt Worg##43021 |condition itemcount(43021) >= 1
buy 1 Recipe: Mighty Rhino Dogs##43022 |condition itemcount(43022) >= 1
buy 1 Recipe: Poached Northern Sculpin##43023 |condition itemcount(43023) >= 1
buy 1 Recipe: Firecracker Salmon##43024 |condition itemcount(43024) >= 1
buy 1 Recipe: Spicy Blue Nettlefish##43025 |condition itemcount(43025) >= 1
buy 1 Recipe: Imperial Manta Steak##43026 |condition itemcount(43026) >= 1
buy 1 Recipe: Small Feast##43506 |condition itemcount(43506) >= 1
buy 1 Recipe: Rhinolicious Wormsteak##43028 |condition itemcount(43028) >= 1
buy 1 Recipe: Critter Bites##43029 |condition itemcount(43029) >= 1
buy 1 Recipe: Hearty Rhino##43030 |condition itemcount(43030) >= 1
buy 1 Recipe: Snapper Extreme##43031 |condition itemcount(43031) >= 1
buy 1 Recipe: Blackened Worg Steak##43032 |condition itemcount(43032) >= 1
buy 1 Recipe: Cuttlesteak##43033 |condition itemcount(43033) >= 1
buy 1 Recipe: Spiced Mammoth Treats##43034 |condition itemcount(43034) >= 1
buy 1 Recipe: Blackened Dragonfin##43035 |condition itemcount(43035) >= 1
buy 1 Recipe: Dragonfin Filet##43036 |condition itemcount(43036) >= 1
buy 1 Recipe: Tracker Snacks##43037 |condition itemcount(43037) >= 1
buy 1 Recipe: Gigantic Feast##43505 |condition itemcount(43505) >= 1
learn Spicy Fried Herring##57433
learn Worg Tartare##62350
learn Fish Feast##57423
learn Mega Mammoth Meal##45555
learn Tender Shoveltusk Steak##45556
learn Spiced Worm Burger##45557
learn Very Burnt Worg##45558
learn Mighty Rhino Dogs##45559
learn Poached Northern Sculpin##45567
learn Firecracker Salmon##45568
learn Spicy Blue Nettlefish##45571
learn Imperial Manta Steak##45570
learn Small Feast##58528
learn Rhinolicious Wormsteak##57434
learn Critter Bites##57435
learn Hearty Rhino##57436
learn Snapper Extreme##57437
learn Blackened Worg Steak##57438
learn Cuttlesteak##57439
learn Spiced Mammoth Treats##57440
learn Blackened Dragonfin##57441
learn Dragonfin Filet##57442
learn Tracker Snacks##57443
learn Gigantic Feast##58527
step
This recipe is a _low drop rate reward_ from Outlands cooking, Northrend cooking, and Northrend fishing dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Delicious Chocolate Cake##33925
learn Delicious Chocolate Cake##43779
step
This recipe is a _low drop rate reward_ from Outlands cooking, Northrend cooking, Outlands fishing, Northrend fishing, and Cataclysm fishing dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Captain Rumsey's Lager##34834
learn Captain Rumsey's Lager##45695
step
This recipe is a _low drop rate reward_ from Outlands and Northrend cooking dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Stormchops##33871
learn Stormchops##43758
step
This recipe is a _low drop rate reward_ from Outlands cooking dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Broiled Bloodfin##33869
learn Broiled Bloodfin##43761
step
This recipe is a _low drop rate reward_ from Outlands cooking dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Kibler's Bits##33875
learn Kibler's Bits##43772
step
This recipe is a _low drop rate reward_ from Outlands cooking dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Skullfish Soup##33870
learn Skullfish Soup##43707
step
This recipe is a _low drop rate reward_ from Outlands cooking dailies
_Please refer to our respective daily guides for a chance to earn this recipe
collect Recipe: Spicy Hot Talbuk##33873
learn Spicy Hot Talbuk##43765
step "ticker"
Learn #200# more recipes |achieve 5471
step
Congratulations, you have _earned_ the _Chef de Cuisine_ achievement! |only if achieved(1799)
Congratulations, you have _earned_ the _Chef de Partie_ achievement! |only if achieved(1797)
Congratulations, you have _earned_ the _Iron Chef_ achievement! |only if achieved(5471)
Congratulations, you have _earned_ the _Lunch Lady_ achievement! |only if achieved(1795)
Congratulations, you have _earned_ the _Short Order Cook_ achievement! |only if achieved(1796)
Congratulations, you have _earned_ the _Sous Chef_ achievement! |only if achieved(1798)
step
talk Vidra Hearthstove##1963
accept Thelsamar Blood Sausages##26860 |goto Loch Modan 34.8,49.3
only if not completedq(26860)
step
kill Black Bear##1186+
collect 8 Bear Rump##60497 |q Thelsamar Blood Sausages##26860/1 |goto Loch Modan 35.1,32.6
only if not completedq(26860)
step
talk Vidra Hearthstove##1963
turnin Thelsamar Blood Sausages##26860 |goto Loch Modan 34.8,49.3
only if not completedq(26860)
step
collect Recipe: Blood Sausage |n
_Then_
learn Blood Sausage##3371 |use Recipe: Blood Sausage##3679
step
_Kill all_ creatures in this zone |goto Northern Barrens 55.1,51.5
collect 1 Recipe: Savory Deviate Delight##6661 |n |tip You can also purchase this from the Auction House
_Then_
learn Savory Deviate Delight##8238 |use Recipe: Savory Deviate Delight##6661
step
kill Dig Rat##3444+ |goto Southern Barrens 48.3,88.0
collect Plump Dig Rat##78342 |n
_Make_ a Cooking Fire |cast Cooking Fire##818
learn Dig Rat Stew##6417 |use Plump Dig Rat##78342
step
talk Pusillin##14354 |goto Dire Maul/5 12.2,31.2 |tip Turn to your left
_Say_ "Game? Are you crazy?"
Pusillin will run off, _chase_ him down |tip Kill anything in your way!
_Catch up_ to Pusillin |goto Dire Maul/5 22.0,75.6 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 22.0,75.6
_Say_ "Why you little..."
_Catch up_ to Pusillin |goto Dire Maul/5 32.2,27.2 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 32.2,27.2
_Say_ "Mark my words, I will catch you, imp. And when I do!"
_Catch up_ to Pusillin |goto Dire Maul/5 66.5,37.9 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 66.5,37.9
_Say_ "DIE!"
_Catch up_ to Pusillin |goto 74.9,44.9 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 75.8,44.9
_Say_ "Prepare to meet your maker."
kill Pusillin##14354
collect Recipe: Runn Tum Tuber Surprise##18267 |n
_Then_
learn Runn Tum Tuber Surprise##22761 |use Recipe: Runn Tum Tuber Surprise##18267
step
_Use_ the Professions section of this guide to get to 350 cooking |only if skill("Cooking")<350
talk Washed-Up Mage##32516 |goto Dalaran/2 44.2,25.6
You have to finish the _The Taste Test_ quest in Sholazar to get this quest. |only if completedq(12645)
accept Fletcher's Lost and Found##13571
turnin Fletcher's Lost and Found##13571
step
collect Recipe: Kungaloosh##19644 |n
_Then_
learn Kungaloosh##53056
step
The following recipes are obtained from the Horde. You can purchase them on neutral Auction House
Sometimes you can find them on the regular Auction House.
buy 1 Recipe: Roasted Kodo Meat##5484 |n
buy 1 Recipe: Crispy Bat Wing##12226 |n
buy 1 Recipe: Scorpid Surprise##5483 |n
buy 1 Recipe: Strider Stew##5486 |n
buy 1 Crispy Lizard Tail##5488 |n
.'_
learn Roasted Kodo Meat##6414 |use Recipe: Roasted Kodo Meat##5484 |or 5
learn Crispy Bat Wing##15935 |use Recipe: Crispy Bat Wing##12226 |or 5
learn Scorpid Surprise##6413 |use Recipe: Scorpid Surprise##5483 |or 5
learn Strider Stew##6416 |use Recipe: Strider Stew##5486 |or 5
learn Crispy Lizard Tail##6418 |use Crispy Lizard Tail##5488 |or 5
If you cannot find any of these recipes, click here for more. |confirm |or 5
step
The following recipes are obtained from the Horde. You can purchase them on neutral Auction House
Sometimes you can find them on the regular Auction House.
buy 1 Recipe: Heavy Crocolisk Stew##20075 |n
buy 1 Recipe: Hot Lion Chops##3735 |n
buy 1 Recipe: Carrion Surprise##12232 |n
buy 1 Recipe: Bat Bites##27687 |n
buy 1 Recipe: Lynx Steak##27685 |n
.'_
learn Heavy Crocolisk Stew##24418 |use Recipe: Heavy Crocolisk Stew##20075
learn Hot Lion Chops##3398 |use Recipe: Hot Lion Chops##3735
learn Carrion Surprise##15863 |use Recipe: Carrion Surprise##12232
learn Bat Bites##33278 |use Recipe: Bat Bites##27687
learn Lynx Steak##33276 |use Recipe: Lynx Steak##27685
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch",{
condition_end="achieved(906)",
description="Complete each of The Rokk's 4 cooking daily quests.",
},[[
step
talk The Rokk##24393
You will only be able to complete 1 of the following quests per day
accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6
accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6
accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6
accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6
step
talk Uriku##20096
buy Recipe: Roasted Clefthoof##27691 |n
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691 |goto Nagrand 56.2,73.3
only if havequest(11381)
step
kill Clefthoof##18205+, Clefthoof Calf##19183+
collect 4 Clefthoof Meat##27678 |c |goto Nagrand 58.5,46.8
You can find more Clefthooves at [45.5,72.7]
only if havequest(11381)
step
Make a Cooking Fire |cast Cooking Fire##818
create Roasted Clefthoof##33287,Cooking,4 total
Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
Cook a Spiritual Soup |q Soup for the Soul##11381/1 |goto Nagrand 25.9,59.4
only if havequest(11381)
step
talk Xerintha Ravenoak##20916 |goto Blade's Edge Mountains 62.5,40.3
buy Recipe: Mok'Nathal Shortribs##31675 |n
buy Recipe: Crunchy Serpent##31674 |n
learn Mok'Nathal Shortribs##31672 |use Recipe: Mok'Nathal Shortribs##31675
learn Crunchy Serpent##31673 |use Recipe: Mok'Nathal Shortribs##31674
only if havequest(11379)
step
kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
collect 4 Raptor Ribs##31670+ |c |goto Blade's Edge Mountains 49.6,46.2
only if havequest(11379)
step
kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
collect 1 Serpent Flesh##31671 |c |goto Blade's Edge Mountains 68.2,63.2
only if havequest(11379)
step
Make a Cooking Fire |cast Cooking Fire##818
create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |c
create 1 Crunchy Serpent##38868,Cooking,1 total |c
only if havequest(11379)
step
kill Abyssal Flamebringer##19973+
Use your Cooking Pot next to the Abyssal Flamebringer corpse to cook up some Demon Broiled Surprise |use Cooking Pot##33852
collect Demon Broiled Surprise##33848 |q Super Hot Stew##11379/1 |goto Blade's Edge Mountains 29.0,84.5
only if havequest(11379)
step
click Mana Berry Bush##28+
collect 15 Mana Berry##33849+ |q Manalicious##11380/1 |goto Netherstorm 45.6,54.2
only if havequest(11380)
step
talk Supply Officer Mills##19038 |goto Terokkar Forest 55.8,53.0
buy Recipe: Warp Burger##27692 |n
learn Warp Burger##33288 |use Recipe: Warp Burger##27692
only if havequest(11377)
step
kill Blackwind Warp Chaser##23219+
collect 3 Warped Flesh##27681 |c |goto Terokkar Forest 64.0,83.5
only if havequest(11377)
step
kill Monstrous Kaliri##23051+
|tip They fly around in the sky close to the tree outposts and bridges.
collect Giant Kaliri Wing##338381 |c |goto Terokkar Forest 67.6,74.7
only if havequest(11377)
step
Make a Cooking Fire |cast Cooking Fire##818
create Warp Burger##33288,Cooking,3 total
Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
create Kaliri Stew##43718,Cooking,1 total |q Revenge is Tasty##11377/1 |goto Terokkar Forest 25.9,59.5
only if havequest(11377)
step
talk The Rokk##24393
turnin Soup for the Soul##11381 |only if havequest(11381) |goto Shattrath City 61.8,15.6
turnin Super Hot Stew##11379 |only if havequest(11379) |goto Shattrath City 61.8,15.6
turnin Manalicious##11380 |only if havequest(11380) |goto Shattrath City 61.8,15.6
turnin Revenge is Tasty##11377 |only if havequest(11377) |goto Shattrath City 61.8,15.6
step
You'll need to come back tomorrow for another daily |only if not achieved(906)
Congratulations, you have earned the Kickin' It Up a Notch achievement! |only if achieved(906)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Darnassus", {
condition_end="achieved(5842)",
description="Complete each of the Darnassus cooking daily quests.",
},[[
step
You will only be able to complete one cooking daily per day in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Alegorn##4210
You will only be able to complete 1 of the following quests per day
accept The Secret to Perfect Kimchi##29313 |or |goto Darnassus 50.0,36.6
accept Remembering the Ancestors##29314 |or |goto Darnassus 50.0,36.6
accept Back to Basics##29316 |or |goto Darnassus 50.0,36.6
accept Ribs for the Sentinels##29318 |or |goto Darnassus 50.0,36.6
accept Spice Bread Aplenty##29357 |or |goto Darnassus 50.0,36.6
step
click Blessed Rice Cakes##8159
collect Blessed Rice Cakes##69900 |q Remembering the Ancestors##29314/1 |goto Darnassus 43.2,78.4
only if havequest(29314)
step
click Buried Kimchi Jar##6358
collect 8 Buried Kimchi Jar##69898 |q The Secret to Perfect Kimchi##29313/1 |goto Darnassus 48.0,37.0
only if havequest(29313)
step
talk Fyldan##4223
buy 10 Simple Flour##30817 |condition itemcount(30817) >= 10 |goto Darnassus 49.6,36.6
buy 10 Mild Spices##2678 |condition itemcount(2678) >= 10 |goto Darnassus 49.6,36.6
only if havequest(29357)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread##30816 |q Spice Bread Aplenty##29357/1
only if havequest(29357)
step
click Rice Basket##10097
|tip They look like shinning light-brown baskets
|tip They are scattered around inside the buildings in the Craftsmen's Terrace
Practice making Rice Flour #6# times |q Back to Basics##29316/1
only if havequest(29316)
step
Make a Cooking Fire |cast Cooking Fire##818
Cook your Uncooked Ribs |use Uncooked Ribs##69904
collect 5 Delicious Ribs##69906 |n
Feed #5# ribs to Sentinels |use Delicious Ribs##69906 |q Ribs for the Sentinels##29318/1 |goto Darnassus 52.2,35.6
only if havequest(29318)
step
talk Alegorn##4210
turnin The Secret to Perfect Kimchi##29313 |only if havequest(29313) |goto Darnassus 50.0,36.6
turnin Back to Basics##29316 |only if havequest(29316) |goto Darnassus 50.0,36.6
turnin Ribs for the Sentinels##29318 |only if havequest(29318) |goto Darnassus 50.0,36.6
turnin Spice Bread Aplenty##29357 |only if havequest(29357) |goto Darnassus 50.0,36.6
turnin Remembering the Ancestors##29314 |only if havequest(29314) |goto Darnassus 50.0,36.6
step
You'll need to come back tomorrow for another daily |only if not achieved(5842)
Congratulations, you have earned the Let's Do Luunch: Darnassus achievement! |only if achieved(5842)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Ironforge", {
condition_end="achieved(5841)",
description="Complete each of the Ironforge cooking daily quests.",
},[[
step
You will only be able to _complete one cooking daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Daryl Riknussun##5159
You will only be able to _complete 1 of the following quests_ per day
accept A Fowl Shortage##29352 |or |goto Ironforge 60.1,36.4
accept A Round for the Guards##29351 |or |goto Ironforge 60.1,36.4
accept Can't Get Enough Spice Bread##29355 |or |goto Ironforge 60.1,36.4
accept I Need to Cask a Favor##29356 |or |goto Ironforge 60.1,36.4
accept Keepin' the Haggis Flowin'##29353 |or |goto Ironforge 60.1,36.4
step
clicknpc Dun Morogh Chicken##80889
collect 6 Dun Morogh Chicken##69982 |q A Fowl Shortage##29352/1 |goto Dun Morogh 60.3,34.0
only if havequest(29352)
step
click Cask of Drugan's IPA##7414
_Run_ the Cask back to Daryl Riknussun in Ironforge |q I Need to Cask a Favor##29356/1 |goto Dun Morogh 53.9,50.8
|tip Be sure not to mount up, or else you lose the cask
only if havequest(29356)
step
click Sack of Oatmeal##5511
collect 4 Sack of Oatmeal##69985 |q Keepin' the Haggis Flowin'##29353/2 |goto Ironforge 58.9,41.2
only if havequest(29353)
step
talk Sognar Cliffbeard##5124
collect 1 Bag o' Sheep Innards##69984 |q Keepin' the Haggis Flowin'##29353/1 |goto Ironforge 61.9,72.5
only if havequest(29353)
step
talk Emrul Riknussun##5160
collect 5 Mild Spices##2678 |q Keepin' the Haggis Flowin'##29353/3 |goto Ironforge 59.9,37.6
only if havequest(29353)
step
_Offer_ your Ironforge Rations to the guards around Ironforge |use Ironforge Rations##69981
Feed #6# Ironforge Guards |q A Round for the Guards##29351/1 |goto Ironforge 57.9,50.0
only if havequest(29351)
step
talk Emrul Riknussun##5160
buy 10 Simple Flour##30817 |q Can't Get Enough Spice Bread##29355 |goto Ironforge 59.9,37.6
buy 10 Mild Spices##2678 |q Can't Get Enough Spice Bread##29355 |goto Ironforge 59.9,37.6
only if havequest(29355)
step
create Spice Bread##37836,Cooking,10 total
collect 10 Spice Bread |q Can't Get Enough Spice Bread##29355/1
only if havequest(29355)
step
talk Daryl Riknussun##5159
turnin A Fowl Shortage##29352 |only if havequest(29352) |goto Ironforge 60.1,36.4
turnin A Round for the Guards##29351 |only if havequest(29351) |goto Ironforge 60.1,36.4
turnin Can't Get Enough Spice Bread##29355 |only if havequest(29355) |goto Ironforge 60.1,36.4
turnin I Need to Cask a Favor##29356 |only if havequest(29356) |goto Ironforge 60.1,36.4
turnin Keepin' the Haggis Flowin'##29353 |only if havequest(29353) |goto Ironforge 60.1,36.4
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5841)
Congratulations, you have _earned_ the _Let's Do Luunch: Ironforge_ achievement! |only if achieved(5841)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Stormwind", {
condition_end="achieved(5474)",
description="Complete the Stormwind cooking daily quests.",
},[[
step
You will only be able to _complete one cooking daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Robby Flay##42288
You will only be able to _complete 1 of the following quests_ per day
accept A Fisherman's Feast##26190 |or |goto Stormwind City 50.6,71.9
accept Feeling Crabby?##26177 |or |goto Stormwind City 50.6,71.9
accept Orphans Like Cookies Too!##26192 |or |goto Stormwind City 50.6,71.9
accept Penny's Pumpkin Pancakes##26153 |or |goto Stormwind City 50.6,71.9
accept The King's Cider##26183 |or |goto Stormwind City 50.6,71.9
step
click Barrel of Canal Fish##9591
collect 5 Gigantic Catfish##57245 |q A Fisherman's Feast##26190/1 |goto Stormwind City 54.9,68.2
only if havequest(26190)
step
clicknpc Canal Crab##42339
collect 6 Canal Crab##57175 |q Feeling Crabby?##26177/1 |goto Stormwind City 54.5,66.7
only if havequest(26177)
step
click Sack of Confectioner's Sugar##5511
collect 4 Confectioner's Sugar##57246 |q Orphans Like Cookies Too!##26192/1 |goto Stormwind City 41.2,83.6
_You can find_ more sugar
_In_ The Blue Recluse building [51.0,96.2]
_In_ Pig and Whistle Tavern building [77.8,53.2]
_Inside_ The Golden Keg [66.0,31.9]
only if havequest(26192)
step
click Stormwind Pumpkin##60
collect 6 Stormwind Pumpkin##57137 |q Penny's Pumpkin Pancakes##26153/1 |goto Stormwind City 54.3,12.3
only if havequest(26153)
step
click Juicy Apple##433
collect 12 Juicy Apple##57197 |q The King's Cider##26183/1 |goto Stormwind City 55.0,74.0
only if havequest(26183)
step
talk Robby Flay##42288
turnin A Fisherman's Feast##26190 |only if havequest(26190) |goto Stormwind City 50.6,71.9
turnin Feeling Crabby?##26177 |only if havequest(26177) |goto Stormwind City 50.6,71.9
turnin Orphans Like Cookies Too!##26192 |only if havequest(26192) |goto Stormwind City 50.6,71.9
turnin Penny's Pumpkin Pancakes##26153 |only if havequest(26153) |goto Stormwind City 50.6,71.9
turnin The King's Cider##26183 |only if havequest(26183) |goto Stormwind City 50.6,71.9
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5474)
Congratulations, you have _earned_ the _Let's Do Luunch: Stormwind_ achievement! |only if achieved(5474)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Our Daily Bread", {
condition_end="achieved(1782)",
description="Complete each of the cooking daily quests offered by Katherine Lee in Dalaran.",
},[[
#include "Our_Daily_Bread"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Second That Emotion", {
condition_end="achieved(1780)",
description="Eat the 'emotion' foods.",
},[[
step
You can either _buy these_ items from the auction house _or farm them_
collect 1 Bad Clams##43491
collect 1 Haunted Herring##43492
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
_Click here_ to go farm these |confirm |next "farm1"
next "eat"
step "farm1"
You can either _buy these_ items from the auction house _or farm them_
collect 1 Succulent Clam Meat##36782
collect 1 Mote of Shadow##22577
collect 1 Chunk o' Mammoth##34736
collect 1 Northern Egg##43501
collect 1 Fangtooth Herring##41810
collect 1 Essence of Undeath##12808
collect 2 Simple Flour##30817
_Click here_ to go farm these |confirm |next "farm2"
next "make"
step "farm2"
kill Winterfin Warrior##25217+ |goto Borean Tundra 41.2,17.6
collect Darkwater Clam##36781 |n
_Open_ the Darkwater Clams in your bags |use Darkwater Clam##36781
collect 1 Succulent Clam Meat##36782 |c
step
kill Scourged Mammoth##25452+
collect 1 Chunk o' Mammoth##34736 |c |goto Borean Tundra 78.2,24.0
step
kill Carrion Condor##26174
collect 1 Northern Egg##43501 |c |goto Borean Tundra 85.2,36.2
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |c |goto Howling Fjord 60.2,33.6
step
talk Derek Odds##31032 |goto Dalaran 41.2,65.0
buy 2 Simple Flour##30817 |condition itemcount(30817) >= 2
step
kill Voidspawn##17981 |goto Nagrand 37.8,66.6
collect 1 Mote of Shadow##22577
step
_Enter_ Scholomance here |goto Western Plaguelands 69.1,73.0<20
_Kill_ all undead mobs in the dungeon
collect 1 Essence of Undeath##12808 |c
step "make"
_Get someone_ to make your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake
|tip Ask in your guild or in trade for someone to make these. Be sure to tip well! |only if skill("Cooking")<350
_Make_ your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake |only if skill("Cooking")>=350
_Make_ a Cooking Fire |cast Cooking Fire##818 |only if skill("Cooking")>=350
create Haunted Herring##58525,Cooking,1 total |only if skill("Cooking")>=350
create Bad Clams##58523,Cooking,1 total |only if skill("Cooking")>=350
create Last Week's Mammoth##58521,Cooking,1 total |only if skill("Cooking")>=350
create Tasty Cupcake##58512,Cooking,1 total |only if skill("Cooking")>=350
collect 1 Haunted Herring##43492
collect 1 Bad Clams##43491
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
_Click here_ if you don't have these recipes |confirm |next "recipes" |only if skill("Cooking")>=350
next "eat"
step "recipes"
kill Crypt Crawler##25227+ |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Bad Clams##43509
collect 1 Recipe: Last Week's Mammoth##43508
collect 1 Recipe: Haunted Herring##43510
collect 1 Recipe: Tasty Cupcake##43507
step
learn Bad Clams##58523 |use Recipe: Bad Clams##43509
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Haunted Herring##58525,Cooking,1 total
create Bad Clams##58523,Cooking,1 total
create Last Week's Mammoth##58521,Cooking,1 total
create Tasty Cupcake##58512,Cooking,1 total
collect 1 Haunted Herring##43492
collect 1 Bad Clams##43491
collect 1 Last Week's Mammoth##43488
collect 1 Tasty Cupcake##43490
step "eat"
_Eat_ the Haunted Herring to become scared |use Haunted Herring##43492
_Eat_ Haunted Herring |achieve 1780/3
step
_Eat_ the Bad Clams to become angry |use Bad Clams##43491
_Eat_ Bad Clams |achieve 1780/2
step
_Eat_ the Last Week's Mammoth to become sad |use Last Week's Mammoth##43488
_Eat_ Last Week's Mammoth |achieve 1780/1
step
_Eat_ the Tasty Cupcake to become happy! |use Tasty Cupcake##43490
_Eat_ Tasty Cupcake |achieve 1780/4
step
Congratulations, you have _earned_ the _Second That Emotion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Cake Is Not A Lie",{
author="support@zygorguides.com",
condition_end="achieved(877)",
description="Bake a Delicious Chocolate Cake.",
},[[
#include "the_cake_is_not_a_lie"
step
Congratulations!  You've earned The Cake Is Not A Lie Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Cataclysmic Gourmet",{
condition_end="achieved(5473)",
achieveid={5472},
description="Click Cataclysm recipes.",
},[[
step
You must be at least 525 in _Cooking_ to obtain this achievement.
This will take a few weeks to get all of the cooking recipes necessary to complete the achievement. If you want, you can skip to the steps titled "Gather Materials" to farm the materials before you get the recipes.
|tip It is very easy to also get requirements for the achievement Cataclysmically Delicious along side this achievement. It is advised you eat the food you make.
Click here to begin! |confirm
step
title +Learning Recipes
Use the Professions section of this guide to get to 415 cooking |only if skill("Cooking")<415
#include "trainer_Cooking"
learn Darkbrew Lager##88015
step
title +Gather Materials
talk Reese Langston##1327
buy 2 Skin of Dwarven Stout##2596 |condition itemcount(2596) >= 2 |goto Stormwind City,76.3,53.0
buy 1 Jug of Bourbon##2595 |condition itemcount(2595) >= 1 |goto Stormwind City,76.3,53.0
step
title +Creating Recipes
create 1 Darkbrew Lager##88015,Cooking,1 total
Cook Darkbrew Lager |achieve 5473/15
step
Use the Professions section of this guide to get to 415 cooking |only if skill("Cooking")<425
#include "trainer_Cooking"
learn Blackened Surprise##88006
step
title +Gather Materials
kill Hyjal Stag##39588+
collect 1 Toughened Flesh##62778 |goto Mount Hyjal,28.2,30.8
step
title +Creating Recipes
Create a basic campfire |cast Basic Campfire##818
create 1 Blackened Surprise##88006,Cooking,1 total
Cook Blackened Surprise |achieve 5473/27
step
title +Learning Recipes
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
Use the Cooking Dailies section of this guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=450
|tip You will need a total of 33 Epicurean's Awards to buy all of the recipes
talk Bario Matalli##49701
buy 1 Recipe: Whitecrest Gumbo##65406 |n |goto Stormwind City,50.8,71.4
buy 1 Recipe: Lavascale Fillet##65407 |n |goto Stormwind City,50.8,71.4
buy 1 Recipe: Lavascale Minestrone##65409 |n |goto Stormwind City,50.8,71.4
buy 1 Recipe: Salted Eye##65410 |n |goto Stormwind City,50.8,71.4
learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406
learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407
learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409
learn Salted Eye##88035 |use Recipe: Salted Eye##65410
step
buy 1 Recipe: Broiled Mountain Trout##65411 |n
buy 1 Recipe: Lightly Fried Lurker##65412 |n
buy 1 Recipe: Seasoned Crab##65413 |n
buy 1 Recipe: Starfire Espresso##65414 |n
learn Broiled Mountain Trout##88012 |use  Recipe: Broiled Mountain Trout##65411
learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412
learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413
learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
step
buy 1 Recipe: Feathered Lure##65408 |n
buy 1 Recipe: Highland Spirits##65415 |n
buy 1 Recipe: Lurker Lunch##65416 |n
learn Feathered Lure##88017 |use Recipe: Feathered Lure##65408
learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416
step
title +Gather Materials
kill Zin'jatar Raider##39313+
Open the Abyssal Clam that you get |use Abyssal Clam##52340 |n
collect 2 Blood Shrimp##62791 |goto Kelp'thar Forest,49.1,28.0
step
kill Speckled Sea Turtle##40223+
collect 1 Giant Turtle Tongue##62781 |goto 52.6,45.0
step
kill Brinescale Serpent##39948+
collect 1 Snake Eye##62780 |goto Kelp'thar Forest,56.6,37.8
step
kill Sabreclaw Skitterer##40276
collect 1 Monstrous Claw##62779 |goto 58.6,39.6
step
kill Glittergill Grouper##40309+,Ravenous Thresher##40219+,Slickskin Eel##41002+
collect 1 Algaefin Rockfish##53071 |goto 56.8,53.0
collect 2 Deepsea Sagefish##53072 |goto 56.8,53.0
collect 2 Murglesnout##53069 |goto 56.8,53.0
collect 1 Fathom Eel##53070 |goto 56.8,53.0
Or.. |only if skill("Fishing")>450
You can fish these from various pools of fish. |only if skill("Fishing")>450
step
kill Diseased Vulture##47202
collect 1 Delicate Wing##62785 |goto Uldum 44.6,69.8
step
kill Riverbed Crocolisk
collect 2 Crocolisk Tail##62784 |goto 55.6,45.8
step
Fish at this spot
collect 2 Lavascale Catfish##53068 |goto 54.9,37.1
collect 2 Blackbelly Mudfish##53066 |goto 54.9,37.1
collect 3 Sharptooth##53062 |goto 54.9,37.1
step
Fish at this spot
collect 2 Striped Lurker##53067 |goto Mount Hyjal 60.3,23.9
step
Find pools of Mountain Trout around this area.
|tip If there isn't a pool here, search all of Hyjal's lakes and rivers to find a pool.
collect 1 Mountain Trout##53063 |goto 60.3,23.9
step
Click on the portal to Stormwind |goto Mount Hyjal,62.7,23.1 |n |goto Stormwind City |noway |c
step
kill Jadecrest Basilisk##43981+
collect 1 Basilisk Liver##62783 |goto Deepholm 56.6,85.4
step
Go to Stormwind City |goto Stormwind City
talk Innkeeper Francis##49688
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1 |goto Twilight Highlands,79.4,78.6
buy 1 Tropical Sunfruit##58278 |condition itemcount(58278) >= 1 |goto Twilight Highlands,79.4,78.6
step
kill Obsidian Charscale##47797,Obsidian Viletongue##47796
collect 1 Dragon Flank##62782 |goto Twilight Highlands,63.2,76.2
step
Fish in the Highland Guppy School pools
collect 1 Highland Guppy##53064 |goto 57.8,36.7
step
You can either purchase this item from the Auction House or you can buy it from Bario Matalli:
talk Bario Matalli##49701
buy 1 Imported Supplies##68689 |n |goto Stormwind City,50.8,71.4
|use Imported Supplies##68689
collect 2 Cocoa Beans##62786
step
talk Innkeeper Allison##6740
buy 1 Refreshing Spring Water##159 |condition itemcount(159) >= 1 |goto Stormwind City,60.8,74.8
step
title +Creating Recipes
Create a basic campfire |cast Basic Campfire##818
create 1 Whitecrest Gumbo##88047,Cooking,1 total
|tip Save the extra Blood Shrimp for later
Cook Whitecrest Gumbo |achieve 5473/24
step
create 1 Salted Eye##88035,Cooking,1 total
Cook Salted Eye |achieve 5473/22
step
create 1 Seasoned Crab##88037,Cooking,1 total
Cook Seasoned Crab |achieve 5473/23
step
create 1 Lavascale Fillet##88024,Cooking,1 total
Cook Lavascale Fillet |achieve 5473/21
step
create Lavascale Minestrone##88025,Cooking,1 total
Cook Lavascale Minestrone |achieve 5473/31
step
create Broiled Mountain Trout##88012,Cooking,1 total
Cook Broiled Mountain Trout |achieve 5473/3
step
create Lightly Fried Lurker##88028,Cooking,1 total
Cook Lightly Fried Lurker |achieve 5473/4
step
create Starfire Espresso##88045,Cooking,1 total
Cook Starfire Espresso |achieve 5473/20
step
create Feathered Lure##88017,Cooking,1 total
Cook Feathered Lure |achieve 5473/18
step
create Highland Spirits##88022,Cooking,1 total
Cook Highland Spirits |achieve 5473/19
step
create Lurker Lunch##88030,Cooking,1 total
Cook Lurker Lunch |achieve 5473/1
step
title +Learning Recipes
Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
Use the Cooking Dailies section of this guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=475
|tip You will need a total of 12 Epicurean's Awards to buy all of the recipes
talk Bario Matalli##49701
buy 1 Recipe: Pickled Guppy##65417 |condition itemcount(65417) >= 1 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Hearty Seafood Soup##65418 |condition itemcount(65418) >= 1 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Tender Baked Turtle##65419 |condition itemcount(65419) >= 1 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Fish Fry##65423 |condition itemcount(65423) >= 1 |goto Stormwind City,50.8,71.4
step
Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417
learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418
learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419
learn Fish Fry##88018 |use Recipe: Fish Fry##65423
step
title +Creating Recipes
create 1 Pickled Guppy##88033,Cooking,1 total
Cook Pickled Guppy |achieve 5473/26
step
create 1 Hearty Seafood Soup##88021,Cooking,1 total
Cook Hearty Seafood Soup |achieve 5473/6
step
create 1 Tender Baked Turtle##88046,Cooking,1 total
Cook Tender Baked Turtle |achieve 5473/17
step
create 1 Fish Fry##88018,Cooking,1 total
Cook Fish Fry |achieve 5473/28
step
title +Learning Recipes
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
Use the Cooking Dailies section of this guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=500
|tip You will need a total of 30 Epicurean's Awards to buy all of the recipes
talk Bario Matalli##49701
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |condition itemcount(65420) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Severed Sagefish Head##65421 |condition itemcount(65421) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Delicious Sagefish Tail##65422 |condition itemcount(65422) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Scalding Murglesnout##68688 |condition itemcount(68688) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Blackbelly Sushi##65424 |condition itemcount(65424) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Skewered Eel##65425 |condition itemcount(65425) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Baked Rockfish##65426 |condition itemcount(65426) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Basilisk Liverdog##65427 |condition itemcount(65427) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Grilled Dragon##65428 |condition itemcount(65428) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Beer-Basted Crocolisk##65429 |condition itemcount(65429) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
buy 1 Recipe: Crocolisk Au Gratin##65430 |condition itemcount(65430) >= 1 |only if skill("Cooking")>=500 |goto Stormwind City,50.8,71.4
step
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |only if skill("Cooking")>=500
learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |only if skill("Cooking")>=500
learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |only if skill("Cooking")>=500
learn Scalding Murglesnout##96133 |use Recipe: Scalding Murglesnout##68688 |only if skill("Cooking")>=500
learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |only if skill("Cooking")>=500
learn Skewered Eel##88042 |use Recipe: Skewered Eel##65425 |only if skill("Cooking")>=500
learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |only if skill("Cooking")>=500
learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |only if skill("Cooking")>=500
learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |only if skill("Cooking")>=500
learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |only if skill("Cooking")>=500
learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |only if skill("Cooking")>=500
step
title +Creating Recipes
create Mushroom Sauce Mudfish##88031,Cooking,1 total
Cook Mushroom Sauce Mudfish |achieve 5473/11
step
create Severed Sagefish Head##88039,Cooking,1 total
Cook Severed Sagefish Head |achieve 5473/12
step
create Delicious Sagefish Tail##88016,Cooking,1 total
Cook Delicious Sagefish Tail |achieve 5473/16
step
create Blackbelly Sushi##88034,Cooking,1 total
Cook Blackbelly Sushi |achieve 5473/5
step
create Skewered Eel##88042,Cooking,1 total
Cook Skewered Eel |achieve 5473/14
step
create Baked Rockfish##88003,Cooking,1 total
Cook Baked Rockfish |achieve 5473/7
step
create Basilisk Liverdog##88004,Cooking,1 total
Cook Basilisk Liverdog |achieve 5473/8
step
create Grilled Dragon##88005 ,Cooking,1 total
Cook Grilled Dragon |achieve 5473/10
step
create Beer-Basted Crocolisk##88005,Cooking,1 total
Cook Beer-Basted Crocolisk |achieve 5473/29
step
create Crocolisk Au Gratin##88014,Cooking,1 total
Cook Crocolisk Au Gratin |achieve 5473/9
step
title +Learning Recipes
Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
Use the Cooking Dailies section of this guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=505
|tip You will need a total of 3 Epicurean's Awards to buy this recipe
talk Bario Matalli##49701
buy 1 Recipe: Chocolate Cookie##65431 |condition itemcount(65431) >= 1 |only if skill("Cooking")>=505 |goto Stormwind City,50.8,71.4
step
Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |only if skill("Cooking")>=505
step
title +Creating Recipes
Create a basic campfire |cast Basic Campfire##818
create 1 Chocolate Cookie##88013,Cooking,1 total
Cook Chocolate Cookie |achieve 5473/1
step
title +Learning Recipes
Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
Use the Cooking Dailies section of this guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=525
|tip You will need a total of 10 Epicurean's Awards to buy these recipes
talk Bario Matalli##49701
buy 1 Recipe: Fortune Cookie##65432 |condition itemcount(65432) >= 1 |only if skill("Cooking")>=525 |goto Stormwind City,50.8,71.4
buy 1 Recipe: South Island Iced Tea##65433 |condition itemcount(65433) >= 1 |only if skill("Cooking")>=525 |goto Stormwind City,50.8,71.4
step
Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |only if skill("Cooking")>=525
learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433 |only if skill("Cooking")>=525
step
title +Creating Recipes
Create a basic campfire |cast Basic Campfire##818
create 1 Fortune Cookie##88019,Cooking,1 total
|tip The Mysterious Fortune Card required for this recipe are acquired through Inscription.
create 1 South Island Iced Tea##62672,Cooking 1 total
Cook Fortune Cookie |achieve 5473/32
Cook South Island Iced Tea |achieve 5473/25
step
Earn the Cataclysm Gourmet achievement! |achieve 5473
step
Congratulations! You've earned the Cataclysm Gourmet achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Northrend Gourmet", {
condition_end="achieved(1779)",
achieveid={1777,1778},
description="Cook 45 of the Northrend recipes.",
},[[
step
#include "trainer_Cooking"
learn Dalaran Clam Chowder##58065
learn Grilled Sculpin##45563
learn Mammoth Meal##45549
learn Pickled Fangtooth##45566
learn Poached Nettlefish##45565
learn Rhino Dogs##45553
learn Roasted Worg##45552
learn Shoveltusk Steak##45550
learn Smoked Salmon##45564
learn Worm Delight##45551
learn Fisherman's Feast##42302
learn Hot Buttered Trout##42305
learn Great Feast##45554
learn Black Jelly##64358
learn Darkbrew Lager##88015
learn Blackened Surprise##88006
step
talk Rollick MacKreel##26989
accept Northern Cooking##13088 |goto Borean Tundra 57.8,71.4
step
kill Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
collect 4 Chilled Meat##43013 |q Northern Cooking##13088/1 |goto Borean Tundra 45,47.4
step
talk Rollick MacKreel##26989
turnin Northern Cooking##13088 |goto Borean Tundra 57.8,71.4
learn Northern Stew##57421
step
kill Crypt Crawler##25227 |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Bad Clams##43509
collect 1 Recipe: Last Week's Mammoth##43508
collect 1 Recipe: Haunted Herring##43510
collect 1 Recipe: Tasty Cupcake##43507
learn Bad Clams##58523 |use Recipe: Bad Clams##43509
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
step
talk Grimbooze Thunderbrew##29157
accept Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.8,60.1
step
click the Sturdy Vine##8129
|tip They look like brown vines that hang from trees around this area. Sometimes a Dwarf will fall out and give you fruit you need.
_Click_ the fruit that falls to the ground or talk to the dwarf that falls
collect Orange##38656 |q Some Make Lemonade, Some Make Liquor##12634/1 |goto Sholazar Basin 37.6,61.8
collect 2 Banana Bunch##38653 |q Some Make Lemonade, Some Make Liquor##12634/2 |goto Sholazar Basin 37.6,61.8
collect Papaya##38655 |q Some Make Lemonade, Some Make Liquor##12634/3 |goto Sholazar Basin 37.6,61.8
step
talk Grimbooze Thunderbrew##29157
turnin Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.8,60.1
accept Still At It##12644 |goto Sholazar Basin 26.8,60.1
step
talk "Tipsy" McManus##28566
_Tell him_ you are ready to start the distillation process
_Click_ the items on the ground or on the machine that he yells at you during the process, it's random
_Click_ the barrel on the ground when the process is done
collect Thunderbrew's Jungle Punch##38688 |q Still At It##12644/1 |goto Sholazar Basin 26.7,60
step
talk Grimbooze Thunderbrew##29157
turnin Still At It##12644 |goto Sholazar Basin 26.8,60.1
accept The Taste Test##12645 |goto Sholazar Basin 26.8,60.1
step
_Use_ your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697
|tip Standing next to a tiki torch.
_Complete_ Hadrius' taste test |q The Taste Test##12645/2 |goto Sholazar Basin 27.4,59.4
step
_Use_ your Jungle Punch Sample on Hemet Nesingwary |use Jungle Punch Sample##38697
|tip Standing in front of a tent.
_Complete_ Hemet's taste test |q The Taste Test##12645/1 |goto Sholazar Basin 27.1,58.6
step
_Use_ your Jungle Punch Sample on Tamara Wobblesprocket |use Jungle Punch Sample##38697
|tip Standing by a camp fire.
_Complete_ Hemet's taste test |q The Taste Test##12645/3 |goto Sholazar Basin 50.4,62.0
step
talk Grimbooze Thunderbrew##29157
turnin The Taste Test##12645 |goto Sholazar Basin 26.8,60.1
step
talk Washed-Up Mage##32516
accept Fletcher's Lost and Found##13571 |goto Dalaran/2 44.2,25.6
step
_Use_ the Professions guide to get to 450 cooking |only if skill("Cooking")<450
_Use_ the Dalaran Cooking Dailies guide to get the currency for these recipes
|tip You will need a total of 74 Epicurean Awards to get all of the recipes
#include "vendor_Cooking_Dalaran"
buy 1 Recipe: Mega Mammoth Meal##43018 |condition itemcount(43018) >= 1
buy 1 Recipe: Tender Shoveltusk Steak##43019 |condition itemcount(43019) >= 1
buy 1 Recipe: Spiced Worm Burger##43020 |condition itemcount(43020) >= 1
buy 1 Recipe: Very Burnt Worg##43021 |condition itemcount(43021) >= 1
buy 1 Recipe: Worg Tartare##44954 |condition itemcount(44954) >= 1
buy 1 Recipe: Mighty Rhino Dogs##43022 |condition itemcount(43022) >= 1
buy 1 Recipe: Poached Northern Sculpin##43023 |condition itemcount(43023) >= 1
buy 1 Recipe: Firecracker Salmon##43024 |condition itemcount(43024) >= 1
buy 1 Recipe: Spicy Blue Nettlefish##43025 |condition itemcount(43025) >= 1
buy 1 Recipe: Imperial Manta Steak##43026 |condition itemcount(43026) >= 1
buy 1 Recipe: Spicy Fried Herring##43027 |condition itemcount(43027) >= 1
buy 1 Recipe: Rhinolicious Wormsteak##43028 |condition itemcount(43028) >= 1
step
_Use_ the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
learn Mega Mammoth Meal##45555 |use Recipe: Mega Mammoth Meal##43018
learn Tender Shoveltusk Steak##45556 |use Recipe: Tender Shoveltusk Steak##43019
learn Spiced Worm Burger##45557 |use Recipe: Spiced Worm Burger##43020
learn Very Burnt Worg##45558 |use Recipe: Very Burnt Worg##43021
learn Worg Tartare##62350 |use Recipe: Worg Tartare##44954
learn Mighty Rhino Dogs##45559 |use Recipe: Mighty Rhino Dogs##43022
learn Poached Northern Sculpin##45567 |use Recipe: Poached Northern Sculpin##43023
learn Firecracker Salmon##45568 |use Recipe: Firecracker Salmon##43024
learn Spicy Blue Nettlefish##45571 |use Recipe: Spicy Blue Nettlefish##43025
learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026
learn Spicy Fried Herring##57433 |use Recipe: Spicy Fried Herring##43027
learn Rhinolicious Wormsteak##57434 |use  Recipe: Rhinolicious Wormsteak##43028
step
_Use_ the Professions guide to get to 450 cooking |only if skill("Cooking")<450
_Use_ the Dalaran Cooking Dailies guide to get the currency for these recipes
|tip You will need a total of 74 Epicurean Awards to get all of the recipes
#include "vendor_Cooking_Dalaran"
buy 1 Recipe: Critter Bites##43029 |condition itemcount(43029) >= 1
buy 1 Recipe: Hearty Rhino##43030 |condition itemcount(43030) >= 1
buy 1 Recipe: Snapper Extreme##43031 |condition itemcount(43031) >= 1
buy 1 Recipe: Blackened Worg Steak##43032 |condition itemcount(43032) >= 1
buy 1 Recipe: Cuttlesteak##43033 |condition itemcount(43033) >= 1
buy 1 Recipe: Spiced Mammoth Treats##43034 |condition itemcount(43034) >= 1
buy 1 Recipe: Blackened Dragonfin##43035 |condition itemcount(43035) >= 1
buy 1 Recipe: Dragonfin Fillet##43036 |condition itemcount(43036) >= 1
buy 1 Recipe: Tracker Snacks##43037 |condition itemcount(43037) >= 1
buy 1 Recipe: Gigantic Feast##43505 |condition itemcount(43505) >= 1
buy 1 Recipe: Small Feast##43506 |condition itemcount(43506) >= 1
buy 1 Recipe: Fish Feast##43017 |condition itemcount(43017) >= 1
step
_Use_ the Professions guide to get to 450 cooking |only if skill("Cooking")<450
learn Critter Bites##57435 |use Recipe: Critter Bites##43029
learn Hearty Rhino##57436 |use Recipe: Hearty Rhino##43030
learn Snapper Extreme##57437 |use Recipe: Snapper Extreme##43031
learn Blackened Worg Steak##57438 |use Recipe: Blackened Worg Steak##43032
learn Cuttlesteak##57439 |use Recipe: Cuttlesteak##43033
learn Spiced Mammoth Treats##57440 |use Recipe: Spiced Mammoth Treats##43034
learn Blackened Dragonfin##57441 |use Recipe: Blackened Dragonfin##43035
learn Dragonfin Fillet##57442 |use Recipe: Dragonfin Fillet##43036
learn Tracker Snacks##57443 |use Recipe: Tracker Snacks##43037
learn Gigantic Feast##58527 |use Recipe: Gigantic Feast##43505
learn Small Feast##58528 |use Recipe: Small Feast##43506
learn Fish Feast##57423 |use Recipe: Fish Feast##43017
step
You can either _purchase_ these items from the Auction House or farm them
collect 1 Barrelhead Goby##41812
collect 4 Bonescale Snapper##41808
collect 5 Chilled Meat##43013
collect 8 Chunk o' Mammoth##34736
collect 2 Deep Sea Monsterbelly##41800
collect 2 Dragonfin Angelfish##41807
collect 1 Essence of Undeath##12808
collect 2 Fangtooth Herring##41810
collect 6 Glacial Salmon##41809
collect 2 Imperial Manta Ray##41809
collect 1 Moonglow Cuttlefish##41801
collect 1 Mote of Shadow##22577
collect 4 Musselback Sculpin##41806
collect 6 Nettlefish##51813
collect 1 Northern Egg##43501
collect 23 Northern Spices##43007
collect 7 Rhino Meat##43012
collect 3 Rockfin Grouper##41803
collect 4 Shoveltusk Flank##43009
collect 3 Succulent Clam Meat##36782
collect 5 Worg Haunch##43011
collect 5 Worm Meat##43010
step
talk Erika Tate##5483 |goto Dalaran 77.6,53.1
buy 2 Simple Flour##30817 |condition itemcount(30817) >= 2
step
talk Innkeeper Allison##6740 |goto Stormwind City 60.8,74.8
buy 2 Tundra Berries##35949 |condition itemcount(35949) >= 2
buy 1 Savory Snowplum##35948 |condition itemcount(35948) >= 1
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Bad Clams##58523,Cooking,1 total
_Cook_ Bad Clams |achieve 1777/1
step
create Baked Manta Ray##45569,Cooking,1 total
_Cook_ Baked Manta Ray |achieve 1777/2
step
create Blackened Dragonfin##57441,Cooking,1 total
_Cook_ Blackened Dragonfin |achieve 1777/3
step
create Blackened Worg Steak##57438,Cooking,1 total
_Cook_ Blackened Worg Steak |achieve 1777/4
step
create Critter Bites##57435,Cooking,1 total
_Cook_ Critter Bites |achieve 1777/5
step
create Cuttlesteak##57439,Cooking,1 total
_Cook_ Cuttlesteak |achieve 1777/6
step
create Dalaran Clam Chowder##58065,Cooking,1 total
_Cook_ Dalaran Clam Chowder |achieve 1777/7
step
create Dragonfin Filet##57442,Cooking,1 total
_Cook_ Dragonfin Filet |achieve 1777/8
step
create Firecracker Salmon##45568,Cooking,1 total
_Cook_ Firecracker Salmon |achieve 1777/9
step
create Fish Feast##57423,Cooking,1 total
_Cook_ Fish Feast |achieve 1777/10
step
create Gigantic Feast##58527,Cooking,1 total
_Cook_ Gigantic Feast |achieve 1777/11
step
create Great Feast##45554,Cooking,1 total
_Cook_ Great Feast |achieve 1777/12
step
create Grilled Bonescale##45561,Cooking,1 total
_Cook_ Grilled Bonescale |achieve 1777/13
step
create Grilled Sculpin##45563,Cooking,1 total
_Cook_ Grilled Sculpin |achieve 1777/14
step
create Haunted Herring##58525,Cooking,1 total
_Cook_ Haunted Herring |achieve 1777/15
step
create Hearty Rhino##57436,Cooking,1 total
_Cook_ Hearty Rhino |achieve 1778/16
step
create Imperial Manta Steak##45570,Cooking,1 total
_Cook_ Imperial Manta Steak |achieve 1778/17
step
create Kungaloosh##53056,Cooking,1 total
_Cook_ Kungaloosh |achieve 1778/18
step
create Last Week's Mammoth##58521,Cooking,1 total
_Cook_ Last Week's Mammoth |achieve 1778/19
step
create Mammoth Meal##45549,Cooking,1 total
_Cook_ Mammoth Meal |achieve 1778/20
step
create Mega Mammoth Meal##45555,Cooking,1 total
_Cook_ Mega Mammoth Meal |achieve 1778/21
step
create Mighty Rhino Dogs##45559,Cooking,1 total
_Cook_ Mighty Rhino Dogs |achieve 1778/22
step
create Northern Stew##57421,Cooking,1 total
_Cook_ Northern Stew |achieve 1778/23
step
create Pickeled Fangtooth##45566,Cooking,1 total
_Cook_ Pickeled Fangtooth |achieve 1778/24
step
create Poached Nettlefish##45565,Cooking,1 total
_Cook_ Poached Nettlefish |achieve 1778/25
step
create Poached Northern Sculpin##45567,Cooking,1 total
_Cook_ Poached Northern Sculpin |achieve 1778/1
step
create Rhino Dogs##45553,Cooking,1 total
_Cook_ Rhino Dogs |achieve 1778/27
step
create Rhinolicious Wormsteak##57434,Cooking,1 total
_Cook_ Rhinolicious Wormsteak |achieve 1778/28
step
create Roasted Worg##45552,Cooking,1 total
_Cook_ Roasted Worg |achieve 1778/29
step
create Sauteed Goby##45562,Cooking,1 total
_Cook_ Sauteed Goby |achieve 1778/30
step
create Shoveltusk Steak##45550,Cooking,1 total
_Cook_ Shoveltusk Steak |achieve 1779/31
step
create Small Feast##58528,Cooking,1 total
_Cook_ Small Feast |achieve 1779/32
step
create Smoked Rockfin##45560,Cooking,1 total
_Cook_ Smoked Rockfin |achieve 1779/33
step
create Smoked Salmon##45564,Cooking,1 total
_Cook_ Smoked Salmon |achieve 1779/34
step
create Snapper Extreme##57437,Cooking,1 total
_Cook_ Snapper Extreme |achieve 1779/35
step
create Spiced Mammoth Treats##57440,Cooking,1 total
_Cook_ Spiced Mammoth |achieve 1779/36
step
create Spiced Worm Burger##45557,Cooking,1 total
_Cook_ Spiced Worm Burger |achieve 1779/37
step
create Spicy Blue Nettlefish##45571,Cooking,1 total
_Cook_ Spicy Blue Nettlefish |achieve 1779/38
step
create Spicy Fried Herring##57433,Cooking,1 total
_Cook_ Spicy Fried Herring |achieve 1779/39
step
create Tasty Cupcake##58512,Cooking,1 total
_Cook_ Tasty Cupcake |achieve 1779/40
step
create Tender Shoveltusk Steak##45556,Cooking,1 total
_Cook_ Tender Shoveltusk Steak |achieve 1779/41
step
create Tracker Snacks##57443,Cooking,1 total
_Cook_ Tracker Snacks |achieve 1779/42
step
create Very Burnt Worg##45558,Cooking,1 total
_Cook_ Very Burnt Worg |achieve 1779/43
step
create Worg Tartare##62350,Cooking,1 total
_Cook_ Worg Tartare |achieve 1779/44
step
create Worm Delight##45551,Cooking,1 total
_Cook_ Worm Delight |achieve 1779/45
step
Congratulations, you have _earned_ the _The Northrend Gourment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Outland Gourmet", {
condition_end="achieved(1800)",
description="Cook each of the Outland cooking recipes.",
},[[
step
#include "trainer_Cooking"
learn Stewed Trout##42296
learn Fisherman's Feast##42302
learn Hot Buttered Trout##42305
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
step
kill Razorfang Hatchling##16932+, Razorfang Ravager##16933+
collect 12 Ravager Egg##23217 |q Ravager Egg Roundup##9349/1 |goto Hellfire Peninsula 39.0,88.4
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
step
kill Deranged Helboar##16863
_Use_ the Purification Mixture on the Tainted Meat |use Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q Helboar, the Other White Meat##9361/1 |goto Hellfire Peninsula 51.2,69.8
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
step
kill Bonestripper Buzzard##16972
collect 12 Plump Buzzard Wing##23239 |q Smooth as Butter##9356/1 |goto Hellfire Peninsula 61.0,66.6
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
step
collect 1 Recipe: Buzzard Bites##27684 |n
learn Buzzard Bites##33279 |use Recipe: Buzzard Bites##27684
step
talk Sid Limbardi##16826 |goto Hellfire Peninsula 54.2,63.6
buy 1 Recipe: Ravager Dog##27688 |n
learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688
step
talk Mycah##18382 |goto Zangarmarsh 17.8,51.2
collect Glowcap##24245 |n
|tip Glowcaps are scattered out around usually at bottom of the large mushrooms around Sporeggar
buy 1 Recipe: Clam Bar##30156 |n
learn Clam Bar##36210 |use Recipe: Clam Bar##30156
|tip You must be at least Neutral with Sporeggar to purchase this recipe. If you are not please refer to our Reputation Guide for Sporeggar to achieve this
step
talk Doba##20028 |goto Zangarmarsh 42.2,27.8
buy 1 Recipe Feltail Delight##27695 |n
buy 1 Recipe: Blackened Trout##27694 |n
learn Feltail Delight##33291 |use Recipe Feltail Delight##27695
learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694
step
talk Juno Dufrain##18911 |goto Zangarmarsh 78.0,66.0
buy 1 Recipe: Blackened Sporefish##27696 |n
learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696
step
talk Uriku##20096 |goto Nagrand 56.2,73.2
buy 1 Recipe: Grilled Mudfish##27697 |n
buy 1 Recipe: Talbuk Steak##27693 |n
buy 1 Recipe: Poached Bluefish##27698 |n
buy 1 Recipe: Roasted Clefthoof##27691 |n
learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693
learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697
learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691
step
talk Innkeeper Biribi##19296 |goto Terokkar Forest 56.6,53.2
buy 1 Recipe: Golden Fish Sticks##27699 |n
buy 1 Recipe: Spicy Crawdad##27700 |n
learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699
learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700
step
talk Supply Officer Mills##19038 |goto Terokkar Forest 55.8,53.0
buy 1 Recipe Blackened Basilisk##27690 |n
buy 1 Recipe: Warp Burger##27692 |n
learn Blackened Basilisk##33286 |use Recipe Blackened Basilisk##27690
learn Warp Burger##33288 |use Recipe: Warp Burger##27692
step
talk Xerintha Ravenoak##20916 |goto Blade's Edge Mountains 62.4,40.2
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
buy 1 Recipe: Crunchy Serpent##31674 |n
learn Mok'Nathal Shortribs##38867 |use Recipe: Mok'Nathal Shortribs##31675
learn Crunchy Serpent##38868 |use Recipe: Crunchy Serpent##31674
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient
Make sure to _choose_ the Crate of Meat
collect 1 Recipe: Spicy Hot Talbuk##33873 |n
learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient
Make sure to _choose_ the Barrel of Fish
collect 1 Recipe: Broiled Bloodfin##33869 |n
collect 1 Recipe: Skullfish Soup##33870 |n
learn Broiled Bloodfin##43761 |use Recipe: Broiled Bloodfin##33869
learn Skullfish Soup##43707 |use Recipe: Skullfish Soup##33870
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient
You can _choose_ either the Crate of Meat or Barrel of Fish
collect 1 Recipe: Kibler's Bits##33875 |n
learn Kibler's Bits##43772 |use Recipe: Kibler's Bits##33875
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient
You can _choose_ either Crate of Meat, Barrel of Fish, or Small Spice Bag
collect 1 Recipe: Stormchops##33871 |n
collect 1 Recipe: Delicious Chocolate Cake##33925 |n
learn Stormchops##43758 |use Recipe: Stormchops##33871
learn Delicious Chocolate Cake##43779 |use Recipe: Delicious Chocolate Cake##33925
step
You can either _purchase_ these items from the Auction House or farm them
collect 8 Small Eggs##6889
collect 2 Buzzard Meat##27671
collect 2 Clefthoof Meat##27678
collect 2 Jaggal Clam Meat##24477
collect 2 Talbuk Venison##27682
collect 1 Chunk o' Basilisk##27677
collect 1 Raptor Ribs##31670
collect 1 Ravager Flesh##27674
collect 1 Serpent Flesh##31671
collect 1 Warped Flesh##27681
collect 3 Mageroyal##785
step
You can either _purchase_ these items from the Auction House or fish for them
collect 2 Barbed Gill Trout##27422
collect 1 Bloodfin Catfish##33823
collect 1 Crescent-Tail Skullfish##33824
collect 1 Enormous Barbed Gill Trout##27516
collect 1 Figluster's Mudfish##27435
collect 1 Golden Darter##27438
collect 1 Huge Spotted Feltail##27515
collect 1 Icefin Bluefish##27437
collect 1 Lightning Eel##13757
collect 1 Spotted Feltail##27425
collect 1 Zangarian Sporefish##27429
step
talk Innkeeper Allison##6740 |goto Stormwind City 60.8,74.8
buy 5 Goldenbark Apple##4539 |condition itemcount(4539) >= 5
buy 4 Ice Cold Milk##1179 |condition itemcount(1179) >= 4
step
talk Erika Tate##5483 |goto Stormwind City 77.6,53.1
buy 8 Simple Flour##30817 |condition itemcount(30817) >= 8
buy 4 Mild Spices##2678 |condition itemcount(2678) >= 4
step
talk Reese Langston##1327 |goto Stormwind City 76.3,53.0
buy 1 Flask of Port##2593 |condition itemcount(2593) >= 1
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Delicious Chocolate Cake##43779,Cooking,1 total
_Cook_ Delicious Chocolate Cake |achieve 1800/1
step
create Blackened Trout##33290,Cooking,1 total
_Cook_ Blackened Trout |achieve 1800/2
step
create Buzzard Bites##33279,Cooking,1 total
_Cook_ Buzzard Bites |achieve 1800/3
step
create Clam Bar##36210,Cooking,1 total
_Cook_ Clam Bar |achieve 1800/4
step
create Feltail Delight##33291,Cooking,1 total
_Cook_ Feltail Delight |achieve 1800/5
step
create Ravager Dog##33284,Cooking,1 total
_Cook_ Ravager Dog |achieve 1800/6
step
create Stormchops##43758,Cooking,1 total
_Cook_ Stormchops |achieve 1800/7
step
create Blackened Sporefish##33292,Cooking,1 total
_Cook_ Blackened Sporefish |achieve 1800/8
step
create Blackened Basilisk##33286,Cooking,1 total
_Cook_ Blackened Basilisk |achieve 1800/9
step
create Grilled Mudfish##33293,Cooking,1 total
_Cook_ Grilled Mudfish |achieve 1800/10
step
create Poached Bluefish##33294,Cooking,1 total
_Cook_ Poached Bluefish |achieve 1800/11
step
create Broiled Bloodfin##43761,Cooking,1 total
_Cook_ Broiled Bloodfin |achieve 1800/12
step
create Golden Fish Sticks##33295,Cooking,1 total
_Cook_ Golden Fish Sticks |achieve 1800/13
step
create Kibler's Bits##43772,Cooking,1 total
_Cook_ Kibler's Bits |achieve 1800/14
step
create Roasted Clefthoof##33287,Cooking,1 total
_Cook_ Roasted Clefthoof |achieve 1800/15
step
create Talbuk Steak##33289,Cooking,1 total
_Cook_ Talbuk Steak |achieve 1800/16
step
create Warp Burger##33288,Cooking,1 total
_Cook_ Warp Burger |achieve 1800/17
step
create Crunchy Serpent##38868,Cooking,1 total
_Cook_ Crunchy Serpent |achieve 1800/18
step
create Mok'Nathal Shortribs##38867,Cooking,1 total
_Cook_ Mok'Nathal |achieve 1800/19
step
create Fisherman's Feast##42302,Cooking,1 total
_Cook_ Fisherman's Feast |achieve 1800/20
step
create Hot Buttered Trout##42305,Cooking,1 total
_Cook_ Hot Buttered Trout |achieve 1800/21
step
create Skullfish Soup##43707,Cooking,1 total
_Cook_ Skullfish Soup |achieve 1800/22
step
create Spicy Crawdad##33296,Cooking,1 total
_Cook_ Spicy Crawdad |achieve 1800/23
step
create Spicy Hot Talbuk##43765,Cooking,1 total
_Cook_ Spicy Hot Talbuk |achieve 1800/24
step
create Stewed Trout##42296,Cooking,1 total
_Cook_ Stewed Trout |achieve 1800/25
step
Congratulations, you have _earned_ the _The Outland Gourmet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\25 Fish",{
condition_end="achieved(1556)",
description="Fish up 25 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #25# fish |achieve 1561 |goto Stormwind City 54.9,69.7
step
Congratulations, you have _earned_ the _25 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\50 Fish",{
condition_end="achieved(1557)",
description="Fish up 50 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #50# fish |achieve 1561 |goto Stormwind City 54.9,69.7
step
Congratulations, you have _earned_ the _50 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\100 Fish",{
condition_end="achieved(1558)",
description="Fish up 100 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #100# fish |achieve 1561 |goto Stormwind City 54.9,69.7
step
Congratulations, you have _earned_ the _100 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\250 Fish",{
condition_end="achieved(1559)",
description="Fish up 250 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #250# fish |achieve 1561 |goto Stormwind City 54.9,69.7
step
Congratulations, you have _earned_ the _250 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\500 Fish",{
condition_end="achieved(1560)",
description="Fish up 500 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #500# fish |achieve 1561 |goto Stormwind City 54.9,69.7
step
Congratulations, you have _earned_ the _500 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\1000 Fish",{
condition_end="achieved(1561)",
description="Fish up 1000 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #1000# fish |achieve 1561 |goto Stormwind City 54.9,69.7
step
Congratulations, you have _earned_ the _1000 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Accomplished Angler",{
condition_end="achieved(1516)",
description="Complete the fishing achievements listed.",
},[[
step "start"
_Click here_ to earn 1000 Fish |achieve 1516/2 |confirm |next "Fish"
_Click here_ to earn Fish Don't Leave Footprints |achieve 1516/5 |confirm |next "Footprints"
_Click here_ to earn Grand Master Fisherman |achieve 1516/13 |confirm |next "Fisherman"
_Click here_ to earn Master Angler of Azeroth |achieve 1516/9 |confirm |next "Azeroth"
_Click here_ to earn Mr. Pinchy's Magical Crawdad Box |achieve 1516/8 |confirm |next "Crawdad"
_Click here_ to earn Northrend Angler |achieve 1516/6 |confirm |next "Northrend"
_Click here_ to earn Old Man Barlowned |achieve 1516/11 |confirm |next "Barlowned"
_Click here_ to earn One That Didn't Get Away |achieve 1516/10 |confirm |next "Away"
_Click here_ to earn The Lurker Above |achieve 1516/12 |confirm |next "Lurker"
_Click here_ to earn The Old Gnome and the Sea |achieve 1516/14 |confirm |next "Gnome"
_Click here_ to earn Outland Angler |achieve 1516/4 |confirm |next "Outland"
_Click here_ to earn The Coin Master |achieve 1516/1 |confirm |next "Master"
_Click here_ to earn The Fishing Diplomat |achieve 1516/3 |confirm |next "Diplomat"
_Click here_ to earn The Scavenger |achieve 1516/7 |confirm |next "Scavenger"
next "end" |only if achieved(1516)
step "Gnome"
#include "Old_Gnome_and_the_Sea"
next "start"
step "Scavenger"
#include "The_Scavenger"
next "start"
step "Diplomat"
#include "The_Fishing_Diplomat"
next "start"
step "Crawdad"
#include "Mr_Pinchy"
next "start"
step "Lurker"
#include "The_Lurker_Above"
next "start"
step "Barlowned"
#include "Old_Man_Barlowned"
next "start"
step "Outland"
#include "Outland_Angler"
next "start"
step "Northrend"
#include "Northrend_Angler_Angler"
next "start"
step "Footprints"
#include "Fish_Don't_Leave_Footprints"
next "start"
step "Away"
#include "One_That_Didn't_Get_Away"
next "start"
step "Master"
#include "The_Coin_Master"
next "start"
step "Fisherman"
#include "Grand_Master_Fisherman"
next "start"
step "Fish"
#include "Thousand_Fish"
next "start"
step "Azeroth"
#include "Master_Angler_of_Azeroth"
next "start"
step
Congratulations, you have _earned_ the _Accomplished Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Artisan Fisherman",{
condition_end="achieved(128)",
description="Obtain 300 skill points in fishing.",
},[[
step
next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 300 skill points in fishing |achieve 128
step
Congratulations, you have _earned_ the _Artisan Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Chasing Marcia",{
condition_end="achieved(3217)",
description="Complete each of Marcia Chase's 5 fishing daily quests.",
},[[
step
talk Marcia Chase##28742
You will only be able to _complete 1 of the following quests_ per day
accept Blood Is Thicker##13833 |or |goto Dalaran 53.1,64.9
accept Dangerously Delicious##13834 |or |goto Dalaran 53.1,64.9
accept Jewel Of The Sewers##13832 |or |goto Dalaran 53.1,64.9
accept Disarmed!##13836 |or |goto Dalaran 53.1,64.9
accept The Ghostfish##13830 |or |goto Dalaran 53.1,64.9
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
_Get_ the Animal Blood buff |havebuff 132311 |q Blood Is Thicker##13833 |goto Borean Tundra 54.6,41.8
only if havequest (13833)
step
_Walk into_ the water here to create a pool of blood
_Use_ your fishing ability |cast Fishing##7620
collect 5 Bloodtooth Frenzy##45905 |q Blood Is Thicker##13833/1 |goto Borean Tundra 53.7,42.9
only if havequest (13833)
step
_Use_ your fishing ability |cast Fishing##7620
collect 10 Terrorfish##45904 |q Dangerously Delicious##13834/1 |goto Wintergrasp 79.9,41.8
only if havequest (13834)
step
_Go down_ into the sewers |goto Dalaran 36.3,45.5<10
_Use_ your fishing ability |cast Fishing##7620
collect 1 Corroded Jewelry##45903 |q Jewel Of The Sewers##13832/1 |goto Dalaran 44.4,66.2
only if havequest (13832)
step
_Use_ your fishing ability |cast Fishing##7620
collect Bloated Slippery Eel##45328 |n
use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q Disarmed!##13836/1 |goto Dalaran 64.8,60.8
only if havequest (13836)
step
_Use_ your fishing ability |cast Fishing##7620
collect Phantom Ghostfish##45902 |n
use Phantom Ghostfish##45902
_Discover_ the Ghostfish mystery |q The Ghostfish##13830/1 |goto Sholazar Basin 49.3,61.8
only if havequest (13830)
step
talk Marcia Chase##28742
turnin Blood Is Thicker##13833 |only if havequest(13833) |goto Dalaran 53.1,64.9
turnin Dangerously Delicious##13834 |only if havequest(13834) |goto Dalaran 53.1,64.9
turnin Jewel Of The Sewers##13832 |only if havequest(13832) |goto Dalaran 53.1,64.9
turnin The Ghostfish##13830 |only if havequest(13830) |goto Dalaran 53.1,64.9
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |only if havequest(13836) |goto Dalaran 36.6,37.3
step
Congratulations, you have _earned_ the _Chasing Marcia_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Expert Fisherman",{
condition_end="achieved(127)",
description="Obtain 225 skill points in fishing.",
},[[
step
next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 225 skill points in fishing |achieve 127
step
Congratulations, you have _earned_ the _Expert Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish Don't Leave Footprints",{
condition_end="achieved(1243)",
description="Learn the ability to find fish.",
},[[
step
_Use_ your fishing ability to fish from Schooner Wreckage along The Savage Coast |cast Fishing##7620
|tip You may need to fish out the other schools of fish to get them to spawn
collect Weather-Beaten Journal##34109
use Weather-Beaten Jounral##34109 |achieve 1243 |goto Northern Stranglethorn 31.0,37.7
step
Congratulations, you have _earned_ the _Fish Don't Leave Footprints_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Darnassus",{
condition_end="achieved(5848)",
description="Complete each of the Darnassus fishing daily quests.",
},[[
step
You will only be able to _complete one fishing daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Astaia##4156
You will only be able to _complete 1 of the following quests_ per day
accept Happy as a Clam Digger##29321 |or |goto Darnassus 49.1,61.0
accept Stocking Up##29323 |or |goto Darnassus 49.1,61.0
accept A Slippery Snack##29325 |or |goto Darnassus 49.1,61.0
accept The Sister's Pendant##29324 |or |goto Darnassus 49.1,61.0
accept An Old Favorite##29359 |or |goto Darnassus 49.1,61.0
step
click Teldrassil Clam##261
collect 10 Teldrassil Clam##69910 |q Happy as a Clam Digger##29321/1 |goto Teldrassil 55.6,92.5
only if havequest(29321)
step
_Use_ your fishing ability |cast Fishing##7620
collect 5 Lake Whitefish##69912 |q Stocking Up##29323/1 |goto Darnassus 49.0,60.8
only if havequest(29323)
step
click Baby Octopus##53522
collect 6 Baby Octopus##69915 |q A Slippery Snack##29325/1 |goto Teldrassil 54.7,92.9
only if havequest(29325)
step
_Use_ your fishing ability |cast Fishing##7620
collect Aquinne's Moon Pendant##69913 |q The Sister's Pendant##29324/1 |goto Darnassus 49.1,61.0
only if havequest(29324)
step
_Use_ your fishing ability |cast Fishing##7620
collect 8 Kaldorei Herring##69987 |q An Old Favorite##29359/1 |goto Teldrassil 55.6,91.7
only if havequest(29359)
step
talk Astaia##4156
turnin Happy as a Clam Digger##29321 |only if havequest(29321) |goto Darnassus 49.1,61.0
turnin Stocking Up##29323 |only if havequest(29323) |goto Darnassus 49.1,61.0
turnin A Slippery Snack##29325 |only if havequest(29325) |goto Darnassus 49.1,61.0
turnin The Sister's Pendant##29324 |only if havequest(29324) |goto Darnassus 49.1,61.0
turnin An Old Favorite##29359 |only if havequest(29359) |goto Darnassus 49.1,61.0
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5848)
Congratulations, you have _earned_ the _Fish or Cut Bait: Darnassus_ achievement! |only if achieved(5848)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Ironforge",{
condition_end="achieved(5847)",
description="Complete each of the Ironforge fishing daily quests.",
},[[
step
You will only be able to _complete one fishing daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Grimnur Stonebrand##5161
You will only be able to _complete 1 of the following quests_ per day
accept Cold Water Fishing##29342 |or |goto Ironforge 48.1,7.6
accept One fer the Ages##29343 |or |goto Ironforge 48.1,7.6
accept Fish fer Squirky##29344 |or |goto Ironforge 48.1,7.6
accept Live Bait##29347 |or |goto Ironforge 48.1,7.6
accept The Gnomish Bait-o-Matic##29350 |or |goto Ironforge 48.1,7.6
step
_Use_ your fishing ability |cast Fishing##7620
collect 5 Arctic Char##69931 |q Cold Water Fishing##29342/1 |goto Dun Morogh 83.92,51.19
only if havequest(29342)
step
_Use_ your fishing ability |cast Fishing##7620
collect Young Ironjaw##69932 |q One fer the Ages##29343 |goto Ironforge 46.5,14.5
only if havequest(29343)
step
_Click_ the Empty Plaque to display Young Ironjaw |q One fer the Ages##29343/1 |goto Ironforge 71.0,10.0
only if havequest(29343)
step
_Use_ your fishing ability |cast Fishing##7620
collect 3 Blind Minnow##69933 |q Fish fer Squirky##29344 |goto Ironforge 46.5,14.5
only if havequest(29344)
step
collect 3 Blind Minnow##69933
Feed Squirky #3# times |use Blind Minnow##69933 |q Fish fer Squirky##29344/1 |goto Ironforge 48.6,8.6
only if havequest(29344)
step
_Use_ Grimnur's Bait on yourself then jump into the water |use Grimnur's Bait##69940
_Catch_ Cold Water Crayfish |q Live Bait##29347/1 |goto Dun Morogh 84,51
_IMPORTANT_! _Do not mount_ after you catch the cold water crayfish
only if havequest(29347)
step
_Take_ the Crayfish to Cook Ghilm |q Live Bait##29347/2 |goto Dun Morogh 75.6,52.8
modelnpc Cook Ghilm##1355
only if havequest(29347)
step
talk Cook Ghilm##1355
turnin Live Bait##29347 |goto Dun Morogh 75.6,52.8
only if havequest(29347)
step
talk Tansy Puddlefizz##5162 |goto Ironforge 48.1,6.5
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5
only if havequest(29350)
step
talk Gearcutter Cogspinner##5175 |goto Ironforge 67.9,42.5
buy 1 Hair Trigger##39684 |condition itemcount(39684) >= 1
only if havequest(29350)
step
_Look_ for traps throughout the Ironforge Deeprun Tram station
click Rat Trap##10547+
collect 3 Rat Trap##69980 |n
_Use_ your Bait-o-Matic Blueprints to make a Gnomish Bait-o-Matic |use Bait-o-Matic##69979
collect Gnomish Bait-o-Matic##69978 |q The Gnomish Bait-o-Matic##29350/1
only if havequest(29350)
step
talk Grimnur Stonebrand##5161
turnin Cold Water Fishing##29342 |only if havequest(29342) |goto Ironforge 48.1,7.6
turnin One fer the Ages##29343 |only if havequest(29343) |goto Ironforge 48.1,7.6
turnin Fish fer Squirky##29344 |only if havequest(29344) |goto Ironforge 48.1,7.6
turnin The Gnomish Bait-o-Matic##29350 |only if havequest(29350) |goto Ironforge 48.1,7.6
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5847)
Congratulations, you have _earned_ the _Fish or Cut Bait: Ironforge_ achievement! |only if achieved(5847)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Stormwind",{
condition_end="achieved(5476)",
description="Complete each of the Stormwind fishing daily quests.",
},[[
step
You will only be able to _complete one fishing daily per day_ in either Darnassus, Ironforge, or Stormwind
confirm
step
talk Catherine Leland##5494
You will only be able to _complete 1 of the following quests_ per day
accept Hitting a Walleye##26414 |or |goto Stormwind City 55.0,69.7
accept Diggin' For Worms##26420 |or |goto Stormwind City 55.0,69.7
accept Rock Lobster##26442 |or |goto Stormwind City 55.0,69.7
accept Big Gulp##26488 |or |goto Stormwind City 55.0,69.7
accept Thunder Falls##26536 |or |goto Stormwind City 55.0,69.7
step
_Use_ your fishing ability |cast Fishing##7620
collect Hardened Walleye##58503 |q Hitting a Walleye##26414/1 |goto Stormwind City 56.5,41.6
only if havequest(26414)
step
collect 1 Overgrown Earthworm##58788 |n
_Use_ the Overgrown Earthworm |use Overgrown Earthworm##58788
_Use_ your fishing ability |cast Fishing##7620
collect Crystal Bass##58787 |q Diggin' For Worms##26420/1 |goto Stormwind City 58.3,13.2
only if havequest(26420)
step
click Stormwind Lobster Trap##9713
collect 6 Rock Lobster##58809 |q Rock Lobster##26442/1 |goto Stormwind City 22.4,29.0
only if havequest(26442)
step
_Use_ your fishing ability |cast Fishing##7620
collect Royal Monkfish##58856 |n
collect Precious Locket##58864 |use Royal Monkfish##58856 |q Big Gulp##26488/1 |goto Stormwind City 69.1,92.2
only if havequest(26488)
step
_Use_ your fishing ability |cast Fishing##7620
collect 4 Violet Perch##58899 |q Thunder Falls##26536/1 |goto Elwynn Forest 27.1,60.6
only if havequest(26536)
step
talk Catherine Leland##5494
turnin Hitting a Walleye##26414 |only if havequest(26414) |goto Stormwind City 55.0,69.7
turnin Diggin' For Worms##26420 |only if havequest(26420) |goto Stormwind City 55.0,69.7
turnin Rock Lobster##26442 |only if havequest(26442) |goto Stormwind City 55.0,69.7
turnin Big Gulp##26488 |only if havequest(26488) |goto Stormwind City 55.0,69.7
turnin Thunder Falls##26536 |only if havequest(26536) |goto Stormwind City 55.0,69.7
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5476)
Congratulations, you have _earned_ the _Fish or Cut Bait: Stormwind_ achievement! |only if achieved(5476)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Grand Master Fisherman",{
condition_end="achieved(130)",
description="Obtain 450 skill points in fishing.",
},[[
step
next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 450 skill points in fishing |achieve 130
step
Congratulations, you have _earned_ the _Grand Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\I Smell A Giant Rat",{
condition_end="achieved(1958)",
description="Fish up the Giant Sewer Rat from The Underbelly in Dalaran.",
},[[
step
_Go down_ into the sewers |goto Dalaran 36.3,45.5 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect Giant Sewer Rat##43698
use Giant Sewer Rat##43698 |achieve 1958 |goto Dalaran 44.1,66.4
step
Congratulations, you have _earned_ the _I Smell A Giant Rat achievement_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Illustrious Grand Master Fisherman",{
condition_end="achieved(4917)",
description="Obtain 525 skill points in fishing.",
},[[
step
next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 525 skill points in fishing |achieve 4917
step
Congratulations, you have _earned_ the _Illustrious Grand Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Journeyman Fisherman",{
condition_end="achieved(126)",
description="Obtain 150 skill points in fishing.",
},[[
step
next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 150 skill points in fishing |achieve 126
step
Congratulations, you have _earned_ the _Journeyman Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Master Angler of Azeroth",{
condition_end="achieved(306)",
description="Win first, second, or third place in the Booty Bay fishing contest.",
},[[
step
To earn this Achievement _you need to go_ to Booty Bay
|tip You can try this every Sunday from 2pm to 4pm SERVER TIME
It is recommended you _bring along as many items as you have_ to increase your fishing level
confirm
step
_Use_ your fishing ability on schools of Speckled Tastyfish |cast Fishing##7620
collect 40 Speckled Tastyfish##19807 |goto The Cape of Stranglethorn 39.1,57.9
map The Cape of Stranglethorn
path follow loose; loop off; ants curved
path	64.9,39.2	64.8,41.0	63.9,45.5
path	62.3,46.5	61.5,45.3	59.8,48.2
path	59.5,49.8	58.0,53.1	57.0,57.7
path	56.6,60.7	55.6,63.5	54.1,66.4
path	52.5,68.4	52.4,73.4	52.1,74.3
path	49.9,76.9	49.8,81.0	49.8,81.7
path	48.0,81.0	46.7,82.8	43.7,83.0
path	41.8,84.1	39.5,85.0	39.6,81.5
step
talk Riggle Bassbait##15077
turnin Grand Prize##8193 |or |goto The Cape of Stranglethorn 41.7,73.0
turnin Second Prize##32435 |or |goto The Cape of Stranglethorn 41.7,73.0
turnin Third Prize##32436 |or |goto The Cape of Stranglethorn 41.7,73.0
_Earn_ First, Second, or Third prize |achieve 306
step
Congratulations, you have _earned_ the _Master Angler of Azeroth_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Master Fisherman",{
condition_end="achieved(129)",
description="Obtain 375 skill points in fishing.",
},[[
step
next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 375 skill points in fishing |achieve 129
step
Congratulations, you have _earned_ the _Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Mr. Pinchy's Magical Crawdad Box",{
condition_end="achieved(726)",
description="Fish your way to Mr. Pinchy's Magical Crawdad Box.",
},[[
step
map Terokkar Forest
path follow loose; loop; ants curved
path	65.9,73.0	68.5,76.8	68.9,80.9
path	67.3,83.7	64.5,82.2	63.6,78.3
path	63.6,73.8	58.9,63.2	58.8,60.7
path	58.9,58.3	60.2,57.9	60.4,60.2
path	59.6,62.5
_Use_ your fishing ability in Highland Mixed Schools |cast Fishing##7620
collect Mr. Pinchy##27388
collect Magical Crawdad Box##27445
step
Mr. Pinchy will _grant you 3 wishes_ on a four hour cooldown
|tip He has a chance to grant you the Magical Crawdad Box
_If all three wishes fail_ to give you the pet you will have to fish him up again
use Mr. Pinchy##27388
collect Magical Crawdad Box##27445 |achieve 726
step
Congratulations, you have _earned_ the _Mr. Pinchy's Magical Crawdad Box_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Northrend Angler",{
condition_end="achieved(1517)",
description="Catch a fish in each of the specific nodes in Northrend.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from an Imperial Manta Ray school |achieve 1517/8 |goto Borean Tundra 49.5,79.0
|tip Check around this area
_Fish_ from a Borean Man O' War school |achieve 1517/10 |goto Borean Tundra 40.3,77.0
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Musselback Scuplin school |achieve 1517/2 |goto Borean Tundra 51.2,42.4
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Deep Sea Monsterbelly school |achieve 1517/3 |goto Borean Tundra 82.7,59.5
|tip Check around this area
_Fish_ from a Moonglow Cuttlefish school |achieve 1517/9 |goto Borean Tundra 82.7,59.5
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Nettlefish school |achieve 1517/1 |goto Sholazar Basin 46.8,64.7
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Dragonfin Angelfish school |achieve 1517/4 |goto Dragonblight 42.3,67.8
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Glassfin Minnow school |achieve 1517/7 |goto Crystalsong Forest 49.0,54.1
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Glacial Salmon school |achieve 1517/6 |goto Grizzly Hills 28.6,60.8
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Fangtooth Herring school |achieve 1517/5 |goto Howling Fjord 60.8,60.3
|tip Check around this area
step
Congratulations, you have _earned_ the _Northrend Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Old Crafty",{
condition_end="achieved(1836)",
description="Fish up Old Crafty in Orgrimmar.",
},[[
step
This achievement will _flag you for PVP_ while you are in Orgrimmar
|tip You can achieve this on a Horde character to avoid deaths
confirm
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Old Crafty##34486 |achieve 1836 |goto Orgrimmar 59.3,39.9
step
Congratulations, you have _earned_ the _Old Crafty_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Old Ironjaw",{
condition_end="achieved(1837)",
description="Fish up Old Ironjaw in Ironforge.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Old Ironjaw##34484 |achieve 1837 |goto Ironforge 47.6,14.2
step
Congratulations, you have _earned_ the _Old Ironjaw_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Old Man Barlowned",{
condition_end="achieved(905)",
description="Complete each of Old Man Barlo's 5 fishing daily quests.",
},[[
step
talk Old Man Barlo##25580
You will only be able to _complete 1 of the following quests_ per day
accept Crocolisks in the City##11665 |or |goto Terokkar Forest 38.7,12.8
accept Bait Bandits##11666 |or |goto Terokkar Forest 38.7,12.8
accept Felblood Fillet##11669 |or |goto Terokkar Forest 38.7,12.8
accept The One That Got Away##11667 |or |goto Terokkar Forest 38.7,12.8
accept Shrimpin' Ain't Easy##11668 |or |goto Terokkar Forest 38.7,12.8
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Baby Crocolisk##34864 |q Crocolisks in the City##11665/1 |goto Stormwind City 54.9,69.7
only if havequest(11665)
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Blackfin Darter##34865 |q Bait Bandits##11666/1 |goto Terokkar Forest 51.8,37.2
only if havequest(11666)
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 World's Largest Mudfish##34868 |q The One That Got Away##11667/1 |goto Nagrand 37.4,47.1
only if havequest(11667)
step
_Use_ your fishing ability |cast Fishing##7620
collect 10 Giant Freshwater Shrimp##34866 |use Bloated Barbed Gill Trout##35313 |q Shrimpin' Ain't Easy##11668/1 |goto Zangarmarsh 77.9,79.7
only if havequest(11668)
step
_Use_ your fishing ability |cast Fishing##7620
collect Monstrous Felblood Snapper |q Felblood Fillet##11669/1 |goto Shadowmoon Valley 18.9,22.2
only if havequest(11669)
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |only if havequest(11665) |goto Terokkar Forest 38.7,12.8
turnin Bait Bandits##11666 |only if havequest(11666) |goto Terokkar Forest 38.7,12.8
turnin Felblood Fillet##11669 |only if havequest(11669) |goto Terokkar Forest 38.7,12.8
turnin The One That Got Away##11667 |only if havequest(11667) |goto Terokkar Forest 38.7,12.8
turnin Shrimpin' Ain't Easy##11668 |only if havequest(11668) |goto Terokkar Forest 38.7,12.8
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(905)
Congratulations, you have _earned_ the _Old Man Barlowned_ achievement! |only if achieved(905)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\One That Didn't Get Away",{
condition_end="achieved(878)",
description="Catch one of the rare fish in the list.",
},[[
step
The fish required by this achievement have a _very low drop rate_ and will be difficult to catch
confirm
step "start"
You only need to _catch one of the below_ to earn this achievement so click one and start fishing!
_Click here_ to catch a 15 Pound Mud Snapper |achieve 878/6 |confirm |next "Snapper"
_Click here_ to catch a 22 Pound Lobster |achieve 878/8 |confirm |next "Lobster"
_Click here_ to catch a 29 Pound Salmon |achieve 878/5 |confirm |next "Salmon"
_Click here_ to catch a 32 Pound Catfish |achieve 878/4 |confirm |next "Catfish"
_Click here_ to catch a 52 Pound Redgill |achieve 878/9 |confirm |next "Redgill"
_Click here_ to catch a 68 Pound Grouper |achieve 878/1 |confirm |next "Grouper"
_Click here_ to catch a 103 Pound Mightfish |achieve 878/7 |confirm |next "Mightfish"
_Click here_ to catch a Dark Herring |achieve 878/3 |confirm |next "Herring"
_Click here_ to catch a Rockhide Strongfish |achieve 878/2 |confirm |next "Strongfish"
_Click here_ to catch a Steelscale Crushfish |achieve 878/10 |confirm |next "Crushfish"
next "end" |only if achieved(878)
stickystart "shortcut"
step "Snapper"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 15 Pound Mud Snapper |achieve 878/6 |goto Elwynn Forest 47.7,62.5
next "start"
step "Lobster"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 22 Pound Lobster |achieve 878/8 |goto Swamp of Sorrows 84.0,86.4
next "start"
step "Salmon"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 29 Pound Salmon |achieve 878/5 |goto Blasted Lands 41.4,64.7
next "start"
step "Catfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 32 Pound Catfish |achieve 878/4 |goto Ashenvale 48.1,68.1
next "start"
step "Redgill"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 52 Pound Redgill |achieve 878/9 |goto Felwood 42.6,46.4
next "start"
step "Grouper"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 68 Pound Grouper |achieve 878/1 |goto Thousand Needles 39.2,32.2
next "start"
step "Mightfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 103 Pound Mightfish |achieve 878/7 |goto Azshara 60.6,67.7
next "start"
step "Herring"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a Dark Herring |achieve 878/3 |goto Howling Fjord 57.2,33.9
next "start"
step "Strongfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a Rockhide Strongfish |achieve 878/2 |goto Northern Stranglethorn 33.8,41.8
next "start"
step "Crushfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a Steelscale Crushfish |achieve 878/10 |goto Darkmoon Island 52.1,91.3
next "start"
step "shortcut"
_Click here_ to return to the start at any time |next "start"
step "end"
Congratulations, you have _earned_ the _One That Didn't Get Away_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Outland Angler",{
condition_end="achieved(1225)",
description="Catch a fish in each of the specific nodes in Outland.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Sporefish school |achieve 1225/6 |goto Zangarmarsh 72.5,59.9
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Highland Mixed school |achieve 1225/5 |goto Terokkar Forest 60.8,59.0
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a School of Darter school |achieve 1225/4 |goto Terokkar Forest 55,44
|tip Check around this area
_Fish_ from a Brackish Mixed school |achieve 1225/1 |goto Terokkar Forest 53,38
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Bluefish school |achieve 1225/2 |goto Nagrand 53,39
|tip Check around this area
_Fish_ from a Mudfish school |achieve 1225/3 |goto Nagrand 54,30
|tip Check around this area
step
Congratulations, you have _earned_ the _Outland Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Coin Master",{
condition_end="achieved(2096)",
achieveid={2094,2095,1957},
description="Complete the coin fishing achievements.",
},[[
step
This guide will help you _earn_ the achievements A Penny For Your Thoughts, Silver in the City, There's Gold In That There Fountain, and finally The Coin Master
confirm
step "start"
_Use_ your fishing ability in the fountain |cast Fishing##7620
_Earn_ the A penny For Your Thoughts achievement |achieve 2096/2 |goto Dalaran 52.6,66.5
_Click here_ for a more detailed look of this achievement |confirm |next "penny"
_AND_
_Earn_ the Silver in the City achievement |achieve 2096/3 |goto Dalaran 52.6,66.5
_Click here_ for a more detailed look of this achievement |confirm |next "silver"
_AND_
_Earn_ the There's Gold In That There Fountain achievement |achieve 2096/1 |goto Dalaran 52.6,66.5
_Click here_ for a more detailed look of this achievement |confirm |next "gold"
next "end" |only if achieved(2096)
step
label "penny"
You will need to _fish up each_ one of the coins listed below to complete this acheivement
_Fish up_ Alonsus Faol's Copper Coin |achieve 2094/11 |goto Dalaran 52.6,66.5
_Fish up_ Ansirem's Copper Coin |achieve 2094/19 |goto Dalaran 52.6,66.5
_Fish up_ Attumen's Copper Coin |achieve 2094/21 |goto Dalaran 52.6,66.5
_Fish up_ Danath's Copper Coin |achieve 2094/13 |goto Dalaran 52.6,66.5
_Fish up_ Dornaa's Shiny Copper Coin |achieve 2094/1 |goto Dalaran 52.6,66.5
_Fish up_ Eitrigg's Copper Coin |achieve 2094/2 |goto Dalaran 52.6,66.5
_Fish up_ Elling Trias' Copper Coin |achieve 2094/3 |goto Dalaran 52.6,66.5
_Fish up_ Falstad Wildhammer's Copper Coin |achieve 2094/14 |goto Dalaran 52.6,66.5
_Fish up_ Genn's Copper Coin |achieve 2094/12 |goto Dalaran 52.6,66.5
_Fish up_ Inigo's Copper Coin |achieve 2094/9 |goto Dalaran 52.6,66.5
_Fish up_ Krasus' Copper Coin |achieve 2094/10 |goto Dalaran 52.6,66.5
_Fish up_ Kryll's Copper Coin |achieve 2094/22 |goto Dalaran 52.6,66.5
_Fish up_ Landro Longshot's Copper Coin |achieve 2094/20 |goto Dalaran 52.6,66.5
_Fish up_ Molok's Copper Coin |achieve 2094/4 |goto Dalaran 52.6,66.5
_Fish up_ Murky's Copper Coin |achieve 2094/5 |goto Dalaran 52.6,66.5
_Fish up_ Princess Calia Menethil's Copper Coin |achieve 2094/16 |goto Dalaran 52.6,66.5
_Fish up_ Private Marcus Jonathan's Copper Coin |achieve 2094/15 |goto Dalaran 52.6,66.5
_Fish up_ Salandria's Shiny Copper Coin |achieve 2094/17 |goto Dalaran 52.6,66.5
_Fish up_ Squire Rowe's Copper Coin |achieve 2094/6 |goto Dalaran 52.6,66.5
_Fish up_ Stalvan's Copper Coin |achieve 2094/7 |goto Dalaran 52.6,66.5
_Fish up_ Vareesa's Copper Coin |achieve 2094/8 |goto Dalaran 52.6,66.5
_Fish up_ Vargoth's Copper Coin |achieve 2094/18 |goto Dalaran 52.6,66.5
_OR_
_Click here_ to return to the achievement list |confirm |next "start"
step
label "silver"
_Fish up_ A Peasant's Silver Coin |achieve 2095/12 |goto Dalaran 52.6,66.5
_Fish up_ Aegwynn's Silver Coin |achieve 2095/7 |goto Dalaran 52.6,66.5
_Fish up_ Alleria's Silver Coin |achieve 2095/8 |goto Dalaran 52.6,66.5
_Fish up_ Antonidas' Silver Coin |achieve 2095/3 |goto Dalaran 52.6,66.5
_Fish up_ Arcanist Doan's Silver Coin |achieve 2095/14 |goto Dalaran 52.6,66.5
_Fish up_ Fandral Staghelm's Silver Coin |achieve 2095/4 |goto Dalaran 52.6,66.5
_Fish up_ High Tinker Mekkatorque's Silver Coin |achieve 2095/6 |goto Dalaran 52.6,66.5
_Fish up_ Khadgar's Silver Coin |achieve 2095/9 |goto Dalaran 52.6,66.5
_Fish up_ King Anasterian Sunstrider's Silver Coin |achieve 2095/10 |goto Dalaran 52.6,66.5
_Fish up_ King Terenas Menethil's Silver Coin |achieve 2095/13 |goto Dalaran 52.6,66.5
_Fish up_ King Varian Wrynn's Silver Coin |achieve 2095/5 |goto Dalaran 52.6,66.5
_Fish up_ Maiev Shadowsong's Silver Coin |achieve 2095/1 |goto Dalaran 52.6,66.5
_Fish up_ Medivh's Silver Coin |achieve 2095/15 |goto Dalaran 52.6,66.5
_Fish up_ Muradin Bronzebeard's Silver Coin |achieve 2095/11 |goto Dalaran 52.6,66.5
_Fish up_ Prince Magni Bronzebeard's Silver Coin |achieve 2095/2 |goto Dalaran 52.6,66.5
_OR_
_Click here_ to return to the achievement list |confirm |next "start"
step
label "gold"
_Fish up_ Anduin Wrynn's Gold Coin |achieve 1957/6 |goto Dalaran 52.6,66.5
_Fish up_ Archimonde's Gold Coin |achieve 1957/7 |goto Dalaran 52.6,66.5
_Fish up_ Arthas' Gold Coin |achieve 1957/5 |goto Dalaran 52.6,66.5
_Fish up_ Arugal's Gold Coin |achieve 1957/8 |goto Dalaran 52.6,66.5
_Fish up_ Brann Bronzebeard's Gold Coin |achieve 1957/10 |goto Dalaran 52.6,66.5
_Fish up_ Chromie's Gold Coin |achieve 1957/1 |goto Dalaran 52.6,66.5
_Fish up_ Kel'Thuzad's Gold Coin |achieve 1957/4 |goto Dalaran 52.6,66.5
_Fish up_ Lady Jaina Proudmoore's Gold Coin |achieve 1957/9 |goto Dalaran 52.6,66.5
_Fish up_ Lady Katrana Prestor's Gold Coin |achieve 1957/11 |goto Dalaran 52.6,66.5
_Fish up_ Prince Kael'thas Sunstrider's Gold Coin |achieve 1957/14 |goto Dalaran 52.6,66.5
_Fish up_ Sylvanas Windrunner's Gold Coin |achieve 1957/15 |goto Dalaran 52.6,66.5
_Fish up_ Teron's Gold Coin |achieve 1957/2 |goto Dalaran 52.6,66.5
_Fish up_ Thrall's Gold Coin |achieve 1957/3 |goto Dalaran 52.6,66.5
_Fish up_ Tirion Fordring's Gold Coin |achieve 1957/12 |goto Dalaran 52.6,66.5
_Fish up_ Uther Lightbringer's Gold Coin |achieve 1957/13 |goto Dalaran 52.6,66.5
_OR_
_Click here_ to return to the achievement list |confirm |next "start"
step
label "end"
Congratulations, you have _earned_ the _A Penny For Your Thoughts_ achievement! |only if achieved(2094)
Congratulations, you have _earned_ the _Silver in the City_ achievement! |only if achieved(2095)
Congratulations, you have _earned_ the _The Coin Master_ achievement! |only if achieved(2096)
Congratulations, you have _earned_ the _There's Gold In That There Fountain_ achievement! |only if achieved(1957)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Fishing Diplomat",{
condition_end="achieved(150)",
description="Fish something up in Orgrimmar and Stormwind.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
Fish something up in Stormwind City |achieve 150/2 |goto Stormwind City 69.0,92.2
step
_Use_ your fishing ability |cast Fishing##7620
Fish something up in Orgrimmar |achieve 150/1 |goto Orgrimmar 24.8,62.8
step
Congratulations, you have _earned_ the _The Fishing Diplomat_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Limnologist/The Oceanographer",{
condition_end="achieved(5478)",
achieveid={5478,5479},
description="Catch 42 different freshwater fish and catch 31 different saltwater fish.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Sagefish##21071 |achieve 5478/2 |goto Loch Modan 50.9,54.2
|tip Fished from pools around this area
collect 1 Raw Loch Frenzy##6317 |achieve 5478/22 |goto Loch Modan 50.9,54.2
|tip Fished from open water around this area
collect 1 Raw Longjaw Mud Snapper##6289 |achieve 5478/23 |goto Loch Modan 50.9,54.2
|tip Fished from open water around this area
collect 1 Raw Brilliant Smallfish##6291 |achieve 5478/8 |goto Loch Modan 50.9,54.2
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Murglesnout##53069 |achieve 5479/29 |goto Twilight Highlands 73.2,76.8
|tip Fished from open water around this area
collect 1 Deapsea Sagefish##53072 |achieve 5479/9 |goto Twilight Highlands 73.2,76.8
|tip Fished from pools around this area
collect 1 Algaefin Rockfish##53071 |achieve 5479/12 |goto Twilight Highlands 73.2,76.8
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Highland Guppy##53064 |achieve 5478/3 |goto Twilight Highlands 32.8,65.0
|tip Fished from open water around this area
collect 1 Striped Lurker##53067 |achieve 5478/4 |goto Twilight Highlands 32.8,65.0
|tip Fished from open water around this area
collect 1 Sharptooth##53062 |achieve 5478/31 |goto Twilight Highlands 32.8,65.0
|tip Fished from open water around this area
collect 1 Deepsea Sagefish## |achieve 5479/27 |goto Twilight Highlands 74.1,45.7
|tip Fished from pools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Bristle Whisker Catfish##6308 |achieve 5478/21 |goto Arathi Highlands 64.4,67.4
|tip Fished from open water around this area
collect 1 Raw Greater Sagefish##21153 |achieve 5478/1 |goto Arathi Highlands 64.4,67.4
|tip Fished from pools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Oily Blackmouth##6358 |achieve 5479/14 |goto Arathi Highlands 22.8,86.6
|tip Fished from open water around this area
collect 1 Raw Rainbow Fin Albacore##6361 |achieve 5479/10 |goto Arathi Highlands 22.8,86.6
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sickly Looking Fish##6299 |achieve 5478/26 |goto Tirisfal Glades 67.1,50.9
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Slitherskin Mackerel##6303 |achieve 5479/6 |goto Tirisfal Glades 71.7,25.4
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Mithril Head Trout##8365 |achieve 5478/34 |goto The Hinterlands 29.3,47.7
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Firefin Snapper##6359 |achieve 5479/4 |goto The Hinterlands 79.2,63.5
|tip Fished from open water around this area
collect 1 Raw Rockscale Cod##6362 |achieve 5479/31 |goto The Hinterlands 79.2,63.5
|tip Fished from open water around this area
collect 1 Raw Spotted Yellowtail##4603 |achieve 5479/22 |goto The Hinterlands 79.2,63.5
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Big-Mouth Clam##7973 |achieve 5479/2 |goto Eastern Plaguelands 96.5,54.8
|tip Fished from open water around this area
collect 1 Stonescale Eel##13422 |achieve 5479/9 |goto Eastern Plaguelands 96.5,54.8
|tip Fished from open water around this area
collect 1 Raw Glossy Mightfish##13754 |achieve 5479/20 |goto Eastern Plaguelands 96.5,54.8
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Giant Sunfish##35285 |achieve 5479/7 |goto Isle of Quel'Danas 47.7,21.9
|tip Fished from open water around this area
collect 1 Jaggal Clam##24476 |achieve 5479/18 |goto Isle of Quel'Danas 47.7,21.9
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Crescent-Tail Skullfish##33824 |achieve 5478/6 |goto Deadwind Pass 42.5,28.0
|tip Fished from open water around this area
collect 1 Bloodfin Catfish##33823 |achieve 5478/32 |goto Deadwind Pass 42.5,28.0
|tip Fished from open water around this area
collect 1 Barbed Gill Trout##27422 |achieve 5478/39 |goto Deadwind Pass 42.5,28.0
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Large Raw Mightfish##13893 |achieve 5479/8 |goto Blasted Lands 70.0,26.4
|tip Fished from open water around this area
collect 1 Darkclaw Lobster##13888 |achieve 5479/15 |goto Blasted Lands 70.0,26.4
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Summer Bass##13756 |achieve 5479/23 |goto Blasted Lands 70.8,35.7
|tip Can only be caught in open waters during Spring, Summmer, and Fall
collect 1 Winter Squid##13755 |achieve 5479/26 |goto Blasted Lands 70.8,35.7
|tip Can only be caught in open waters during Spring, Fall, and Winter
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Whitescale Salmon##13889 |achieve 5479/11 |goto Blasted Lands 43.1,83.8
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Felblood Snapper##27441 |achieve 5478/12 |goto Shadowmoon Valley 39.8,60.0
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Furious Crawdad##27439 |achieve 5478/15 |goto Terokkar Forest 63.2,73.5
|tip Fished from Highland Mixed Schools around this area
collect 1 Barbed Gill Trout##27422 |achieve 5478/2 |goto Terokkar Forest 63.2,73.5
|tip Fished from open water around this area
collect 1 Golden Darter##27438 |achieve 5478/16 |goto Terokkar Forest 63.2,73.5
|tip Fished from Highland Mixed Schools and Darter Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Figluster's Mudfish##27435 |achieve 5478/13 |goto Nagrand 33.8,47.0
|tip Fished from Mudfish Schools around this area
collect 1 Icefin Bluefish##27437 |achieve 5478/10 |goto Nagrand 33.8,47.0
|tip Fished from Bluefish Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Zangarian Sporefish##27429 |achieve 5478/5 |goto Zangarmarsh 60.3,44.6
|tip Fished from Sporefish Schools around this area
collect 1 Huge Spotted Feltail##27515 |achieve 5478/28 |goto Zangarmarsh 60.3,44.6
|tip Fished from various schools around this area
collect 1 Goldenscale Vendorfish##27442 |achieve 5478/7 |goto Zangarmarsh 60.3,44.6
|tip Fished from various schools around this area
collect 1 Spotted Feltail##27425 |achieve 5478/40 |goto Zangarmarsh 60.3,44.6
|tip Fished from Brackish Mixed Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Darkshore Grouper##12238 |achieve 5479/30 |goto Darkshore 48.6,18.0
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Nightfin Snapper##13759 |achieve 5478/38 |goto Moonglade 52.4,46.9
|tip Fished from open water, and have a higher drop chance at night
collect 1 Raw Sunscale Salmon##13760 |achieve 5479/24 |goto Moonglade 52.4,46.9
|tip Fished from open water, and have a higher drop chance in daylight
collect 1 Raw Redgill##13758 |achieve 5479/21 |goto Moonglade 52.4,46.9
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Striped Lurker##53067 |achieve 5478/41 |goto Mount Hyjal 60.6,23.7
|tip Fished from open water around this area
collect 1 Mountain Trout##53063 |achieve 5478/30 |goto Mount Hyjal 60.6,23.7
|tip Fished from Mountain Trout Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Deviate Fish##6522 |achieve 5478/37 |goto Northern Barrens 39.0,74.0
|tip Fished from Schools of Deviate Fish around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Blackbelly Mudfish##53066 |achieve 5478/9 |goto Uldum 54.4,37.7
|tip Fished from Blackbelly Mudfish Schools around this area
collect 1 Lavascale Catfish##53068 |achieve 5478/42 |goto Uldum 54.4,37.7
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fathom Eel##53070 |achieve 5479/28 |goto Uldum 60.5,85.9
|tip Fished from Fathom Eel Swarms around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Albino Cavefish##53065 |achieve 5478/29 |goto Deepholm 31.4,31.2
|tip Fished from Albino Cavefish Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Imperial Manta Ray##41802 |achieve 5479/17 |goto Borean Tundra 54.5,75.2
|tip Fished from Imperial Manta Ray Schools around this area
collect 1 Borean Man O' War##41805 |achieve 5479/13 |goto Borean Tundra 54.5,75.2
|tip Fished from Borean Man O' War Schools around this area
collect 1 Rockfin Grouper##41803 |achieve 5479/25 |goto Borean Tundra 54.5,75.2
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Musselback Sculpin##41806 |achieve 5478/36 |goto Borean Tundra 51.5,47.9
|tip Fished from Musselback Sculpin Schools around this area
collect 1 Dragonfin Angelfish##41807 |achieve 5478/11 |goto Borean Tundra 51.5,47.9
|tip Fished from Dragonfin Angelfish Schools around this area
collect 1 Bonescale Snapper##41808 |achieve 5478/35 |goto Borean Tundra 51.5,47.9
|tip Fished from open water around this area
step
kill Winterfin Warrior##25217+, Winterfin Shorestriker##25215+, Winterfin Oracle##25216+
collect 1 Darkwater Clam##36781 |achieve 5479/3 |goto Borean Tundra 41.3,16.9
|tip Dropped from killing the above mobs in the area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Moonglow Cuttlefish##41801 |achieve 5479/5 |goto Borean Tundra 82.7,59.5
|tip Fished from open water around this area
collect 1 Deep Sea Monsterbelly##41800 |achieve 5479/16 |goto Borean Tundra 82.7,59.5
|tip Fished from Deep Sea Monsterbelly Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Nettlefish##41813 |achieve 5478/20 |goto Sholazar Basin 49.6,62.1
|tip Fished from Nettlefish Schools around this area
collect 1 Barrelhead Goby##41812 |achieve 5478/17 |goto Sholazar Basin 49.6,62.1
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Giant Darkwater Clam##45909 |achieve 5478/41 |goto Wintergrasp 77.6,39.8
|tip Fished from open water around this area
collect 1 Glacial Salmon##41809 |achieve 5478/18 |goto Wintergrasp 77.6,39.8
|tip Fished from Glacial Salmon Schools around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Glassfin Minnow |achieve 5478/33 |goto Crystalsong Forest 48.6,53.9
|tip Fished from Glassfin Minnow Schools around this area
step
_Go down_ into the sewers |goto Dalaran 36.3,45.5 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sewer Carp##43571 |achieve 5478/24 |goto Dalaran 43.9,66.8
|tip Fished from open water around this area
step
_Go up_ the ramp out of the sewers |goto Dalaran 36.3,45.5 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fountain Goldfish##43646 |achieve 5478/14 |goto Dalaran 52.7,66.8
|tip Fished from fountain water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Slippery Eel##43652 |achieve 5478/27 |goto Dalaran 64.3,66.1
|tip Fished from open water around this area
collect 1 Shimmering Minnow##43647 |achieve 5478/25 |goto Dalaran 64.3,66.1
|tip Fished from open water around this area
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |achieve 5478/40 |goto Howling Fjord 59.8,59.1
|tip Fished from Fangtooth Herring Schools around this area
step
Congratulations, you have _earned_ the _The Limnologist_ achievement! |achieve 5478 |only if achieved(5478)
Congratulations, you have _earned_ the _The Oceanographer_ achievement! |achieve 5479 |only if achieved(5479)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Lurker Above",{
condition_end="achieved(144)",
description="Fish up The Lurker Below in Serpentshrine Cavern.",
endlevel=70
},[[
step
ding 70
step
_Swim down_ underwater through the tube to the Coilfang Reservoir |goto Zangarmarsh 50.4,41.0<20
step
_Ride_ the elevator down |goto Serpentshrine Cavern 13.5,59.6 < 10
_Walk up_ the ramp and ride the elevator up |goto Serpentshrine Cavern 19.6,68.5<20
_Walk over_ to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5<20
_Use_ your fishing ability |cast Fishing##7620
_Fish up_ The Lurker Below |achieve 144 |goto Serpentshrine Cavern,38.6,59.5
step
Congratulations, you have _earned_ the _The Lurker Above_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Old Gnome and the Sea",{
condition_end="achieved(153)",
description="Successfully fish from a school.",
},[[
#include "Old_Gnome_and_the_Sea"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Scavenger",{
condition_end="achieved(1257)",
description="Successfully fish in each of the junk nodes.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from Steam Pump Flotsam |achieve 1257/1 |goto Zangarmarsh 57.0,56.0
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from Schooner Wreckage |achieve 1257/5 |goto Northern Stranglethorn 31.0,37.7
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from Bloodsail Wreckage |achieve 1257/2 |goto The Cape of Stranglethorn 30.9,81.5
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from Floating Wreckage |achieve 1257/4 |goto Tanaris 67.4,38.2
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from Waterlogged Wreckage |achieve 1257/3 |goto Feralas 63.1,51.5
step
Congratulations, you have _earned_ the _The Scavenger_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Turtles All the Way Down",{
condition_end="achieved(3218)",
description="Fish up a Sea Turtle mount from any fishing pool in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, Northrend, or Pandaria.",
},[[
step
In order to earn this achievement, you will _need to fish_ in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, Northrend, or Pandaria
We will _recommend a location_ to begin your journey, but you can do this anywhere listed above
confirm
step
map Uldum
path follow loose; loop off; ants curved
path	86.5,45.5	77.4,70.6	67.9,72.3
path	64.0,68.3	60.7,63.0	57.6,34.8
path	57.5,16.8	56.6,21.1	54.9,37.1
path	42.9,25.6	50.9,38.1	57.3,51.1
path	59.1,70.1	64.1,78.0	58.4,85.7
path	48.3,90.1	45.4,83.7	31.0,71.9
path	29.6,69.3	23.8,65.8
_Use_ your fishing ability along the river here |cast Fishing##7620
_You will only be able to catch the sea turtle from fish schools_
collect Sea Turtle##46109
use Sea Turtle##46109 |achieve 3218
step
Congratulations, you have _earned_ the _Turtles All the Way Down_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Artisan Medic",{
condition_end="achieved(133)",
description="Obtain 300 skill points in first aid.",
},[[
step
next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 300 skill points in first aid |achieve 133
step
Congratulations, you have _earned_ the _Artisan Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Expert Medic",{
condition_end="achieved(132)",
description="Obtain 225 skill points in first aid.",
},[[
step
next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 225 skill points in first aid |achieve 132
step
Congratulations, you have _earned_ the _Expert Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Grand Master Medic",{
condition_end="achieved(135)",
description="Obtain 450 skill points in first aid.",
},[[
step
next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 450 skill points in first aid |achieve 135
step
Congratulations, you have _earned_ the _Grand Master Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Illustrious Grand Master Medic",{
condition_end="achieved(4918)",
description="Obtain 525 skill points in first aid.",
},[[
step
next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 525 skill points in first aid |achieve 4918
step
Congratulations, you have _earned_ the _Illustrious Grand Master Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Journeyman Medic",{
condition_end="achieved(131)",
description="Obtain 150 skill points in first aid.",
},[[
step
next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 150 skill points in first aid |achieve 131
step
Congratulations, you have _earned_ the _Journeyman Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Master Medic",{
condition_end="achieved(134)",
description="Obtain 375 skill points in first aid.",
},[[
step
next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 375 skill points in first aid |achieve 134
step
Congratulations, you have _earned_ the _Master Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Preparing for Disaster",{
condition_end="achieved(5480)",
description="Create 500 Dense Embersilk Bandages.",
},[[
step
label "aid_350-450"
#include "trainer_FirstAid"
skillmax First Aid,525 |tip You must be at least level 65
learn Dense Embersilk Bandage##88893
step
label "create"
#include "auctioneer"
buy 1500 Embersilk Cloth##53010 |n
create 500 Dense Embersilk Bandage##88893,First Aid,500 total |n
_Create_ a total of #500# Dense Embersilk Bandages |achieve 5480 |next "end"
_Click here_ to farm these instead of buying them |confirm |next "farm"
step
label "farm"
kill Twilight Augur##40713+, Twilight Retainer##40767+ |goto Mount Hyjal 35.0,24.0
collect 1500 Embersilk Cloth##53010
confirm |next "create"
step "end"
Congratulations, you have _earned_ the _Stocking Up_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Stocking Up",{
condition_end="achieved(137)",
description="Create 500 Heavy Frostweave Bandages.",
},[[
step
label "aid_350-450"
#include "trainer_FirstAid"
skillmax First Aid,450 |tip You must be at least level 65
learn Heavy Frostweave Bandage##45546
step
label	create
#include "auctioneer"
buy 1000 Frostweave Cloth##33470 |n
create 500 Heavy Frostweave Bandage##45546,First Aid,500 total |n
_Create_ a total of #500# Heavy Frostweave Bandages |achieve 137 |next "end"
_Click here_ to farm the cloth instead of buying it |confirm |next "farm"
step
label "farm"
kill Dark Ritualist##34734+, Dark Zealot##34728+ |goto Icecrown 61.8,20.8
collect 1000 Frostweave Cloth##33470 |n
confirm |next "create"
step
Congratulations, you have _earned_ the _Stocking Up_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Ultimate Triage",{
condition_end="achieved(141)",
description="Use a Heavy Frostweave Bandage, or any Embersilk or Windwool Bandage, to heal a player who has less than 5% health.",
},[[
step
The easiest way to earn this achievement is to _use the bandage on yourself during combat_ |achieve 141
Enter a zone at your level and _let enemies damage you down to five percent_ and then use one of the below bandages
_Use_ Heavy Frostweave Bandage |use Heavy Frostweave Bandage##34722
_Use_ Embersik Bandage |use Embersilk Bandage##53049
_Use_ Dense Embersilk |use Dense Embersilk##53050
_Use_ Heavy Embersilk Bandage |use Heavy Embersilk Bandage##53050
_Use_ Field Bandage: Dense Embersilk |use Field Bandage: Dense Embersilk##53051
_Use_ Windwool Bandage |use Windwool Bandage##72985
_Use_ Heavy Windwool Bandage Rank 1 |use Heavy Windwool Bandage##72986
_Use_ Heavy Windwool Bandage Rank 2 |use Heavy Windwool Bandage##82830
step
Congratulations, you have _earned_ the _Ultimate Triage_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Zen Master Medic",{
condition_end="achieved(6838)",
description="This guide will tell you how to\nearn the achievment Journeyman Medic",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next end |only if achieved(6838)
step
You can use our First Aid guide to earn the achievement Zen Master Medic
Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
label	end
Congratulations! You have earned the Achievement Zen Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Professional Zen Master",{
achieveid={116,731,732,733,734,4924,6830},
condition_end="achieved(6830)",
description="Obtain 525 skill points in a profession.",
},[[
step
This achievement requires using our Professions guide to level your characters skill level to 600 in a profession.
Click here to select the profession you wish to level to obtain this achievement |confirm
step
Choose any primary profession below:
Click here to use _Alchemy_ for the achievement. |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-600 Leveling Guide"
Click here to use _Blacksmithing_ for the achievement. |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
Click here to use _Enchanting_ for the achievement. |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-600 Leveling Guide"
Click here to use _Engineering_ for the achievement. |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-600 Leveling Guide"
Click here to use _Herbalism_ for the achievement. |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-600 Leveling Guide"
Click here to use _Inscription_ for the achievement. |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-600 Leveling Guide"
Click here to use _Jewelcrafting_ for the achievement. |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-600 Leveling Guide"
Click here to use _Leatherworking_ for the achievement. |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-600 Leveling Guide"
Click here to use _Mining_ for the achievement. |next "Profession Guides\\Mining\\Leveling Guides\\Mining 1-600 Leveling Guide"
Click here to use _Skinning_ for the achievement. |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-600 Leveling Guide"
Click here to use _Tailoring_ for the achievement. |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-600 Leveling Guide"
confirm
step
Earn the achievement Professional Illustrious Grand Master! |achieve 6830
step
'Congratulations! You've earned the Professional Zen Master achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Serious Skills to Pay the Bills",{
condition_end="achieved(6836)",
achieveid={730,4915},
description="Obtain 600 skill points in Fishing, First Aid, Cooking, and Archaeology.",
},[[
step
Use Zygor's Professions & Achievements guide to do the following:
Become a Grand Master Fisherman |achieve 730/1
Become a Grand Master in First Aid |achieve 730/2
Become a Grand Master Cook |achieve 730/3
|confirm
step
Click here to become a Grand Master Fisherman |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
Click here to become a Grand Master in First Aid |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
Click here to become a Grand Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
|achieve 730 |next
step
Earn the achievement Skills to Pay the Bills! |achieve 730
step
Use Zygor's Professions & Achievements guide to do the following:
Become an Illustrious Grand Master Fisherman |achieve 4915/1
Become an Illustrious Grand Master in First Aid |achieve 4915/2
Become an Illustrious Grand Master Cook |achieve 4915/3
Become an Illustrious Grand Master in Archaeology |achieve 4915/4
|confirm
step
Click here to become an Illustrious Grand Master Fisherman |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
Click here to become an Illustrious Grand Master in First Aid |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
Click here to become an Illustrious Grand Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
Click here to become an Illustrious Grand Master in Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
|achieve 4915 |next
step
Use Zygor's Professions & Achievements guide to do the following:
Become an Zen Master Fisherman |achieve 6836/1
Become an Zen Master in First Aid |achieve 6836/2
Become an Zen Master Cook |achieve 6836/3
Become an Zen Master in Archaeology |achieve 6836/4
|confirm
step
Click here to become an Zen Master Fisherman |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
Click here to become an Zen Master in First Aid |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
Click here to become an Zen Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
Click here to become an Zen Master in Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
|achieve 6836 |next
step
Earn the achievement Serious Skills to Pay the Bills! |achieve 6836
step
Congratulations! You've earned the Serious Skills to Pay the Bills achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Working Around the Clock",{
condition_end="achieved(6835)",
achieveid={4914,735,6835},
description="Obtain 600 skill points in two primary professions.",
},[[
step
This achievement requires using our Professions guide to level your characters skill level to 600 in _two professions_.
Click here to select the professions you wish to level to obtain this achievement |confirm
step
Choose any primary profession below:
Click here to use _Alchemy_ for the achievement. |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-600 Leveling Guide"
Click here to use _Blacksmithing_ for the achievement. |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
Click here to use _Enchanting_ for the achievement. |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-600 Leveling Guide"
Click here to use _Engineering_ for the achievement. |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-600 Leveling Guide"
Click here to use _Herbalism_ for the achievement. |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-600 Leveling Guide"
Click here to use _Inscription_ for the achievement. |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-600 Leveling Guide"
Click here to use _Jewelcrafting_ for the achievement. |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-600 Leveling Guide"
Click here to use _Leatherworking_ for the achievement. |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-600 Leveling Guide"
Click here to use _Mining_ for the achievement. |next "Profession Guides\\Mining\\Leveling Guides\\Mining 1-600 Leveling Guide"
Click here to use _Skinning_ for the achievement. |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-600 Leveling Guide"
Click here to use _Tailoring_ for the achievement. |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-600 Leveling Guide"
confirm
step
Earn the achievement Working Around the Clock! |achieve 6835
step
Congratulations! You've earned the Working Around the Clock achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\3000 Quests Completed",{
condition_end="achieved(978)",
achieveid={503,504,505,506,507,508,32},
description="This section will cover the achievements 50, 100, 250, 500, 1000, 1500, 2000, and 3000 quests completed.",
},[[
step
To complete these achievements you simply have to complete regular quests
|tip You can work through Zygor's Leveling and Loremaster guides to obtain all of these achievements.
Daily and Repeatable quests _do not count_ towards the achievements
confirm
step
_50_ quests completed |achieve 503
_100_ quests completed |achieve 504
_250_ quests completed |achieve 505
_500_ quests completed |achieve 506
_1000_ quests completed |achieve 507
_1500_ quests completed |achieve 508
_2000_ quests completed |achieve 32
_3000_ quests completed |achieve 978
|tip Once you earn this achievement you earn the title "The Seeker".
step
Congratulations, you have _earned_ the _50 Quests Completed_ achievement! |only if achieved(503)
Congratulations, you have _earned_ the _150 Quests Completed_ achievement! |only if achieved(504)
Congratulations, you have _earned_ the _250 Quests Completed_ achievement! |only if achieved(505)
Congratulations, you have _earned_ the _500 Quests Completed_ achievement! |only if achieved(506)
Congratulations, you have _earned_ the _1000 Quests Completed_ achievement! |only if achieved(507)
Congratulations, you have _earned_ the _1500 Quests Completed_ achievement! |only if achieved(508)
Congratulations, you have _earned_ the _2000 Quests Completed_ achievement! |only if achieved(32)
Congratulations, you have _earned_ the _3000 Quests Completed_ achievement! |only if achieved(978)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Daily Quests Complete",{
condition_end="achieved(5751)",
achieveid={973,974,975,976,977,5751,7410,7411},
description="This guide will walk you through completing 5, 50, 200, 500, 1000, 2500, 5000, 10000 Daily Quests.",
},[[
step
In order to complete these achievements, you simply have to complete daily quests. You can work through Zygor's Dailies guides to obtain all of these achievements
Regular and Repeatable quests will not count towards these achievements
confirm
step
Complete 5 Daily Quests |achieve 973
Congratulations, you have earned the 5 Daily Quests Complete achievement! |only if achieved(973)
step
Complete 50 Daily Quests |achieve 974
Congratulations, you have earned the 50 Daily Quests Complete achievement! |only if achieved(974)
step
Complete 200 Daily Quests |achieve 975
Congratulations, you have earned the 200 Daily Quests Complete achievement! |only if achieved(975)
step
Complete 500 Daily Quests |achieve 976
Congratulations, you have earned the 500 Daily Quests Complete achievement! |only if achieved(976)
step
Complete 1000 Daily Quests |achieve 977
Congratulations, you have earned the 1000 Daily Quests Complete achievement! |only if achieved(977)
step
Complete 2500 Daily Quests |achieve 5751
Congratulations, you have earned the 2500 Daily Quests Complete achievement! |only if achieved(5751)
step
Complete 5000 Daily Quests |achieve 7410
Congratulations, you have earned the 5000 Daily Quests Complete achievement! |only if achieved(7410)
step
Complete 10000 Daily Quests |achieve 7411
Congratulations, you have earned the 10000 Daily Quests Complete achievement! |only if achieved(7411)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Of Blood and Anguish",{
condition_end="achieved(1576)",
description="Complete the Ring of Blood and Amphitheater of Anguish.",
endlevel=75
},[[
step
_Skipping_ to the next part of guide |next "+anguish" |only if step:Find("+ringblood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
ding 65
step
talk Gurgthock##18471 |goto Nagrand 42.8,20.7
accept The Ring of Blood: Brokentoe##9962
step
kill Brokentoe##18398 |q 9962/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
kill Murkblood Twin##18399+ |q 9967/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
kill Rokdar the Sundered Lord##18400 |q 9970/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
kill Skra'gath##18401 |q 9972/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
kill Warmaul Champion##18402 |q 9973/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
kill Mogor##18069 |q 9977/1 |goto Nagrand 43.6,20.4
step
label "ringblood1"
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
label "anguish"
ding 75
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.4,56.4
step
kill Yggdras##30014 |q 12954/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.4,56.4
step
kill Stinkbeard##30017 |q 12933/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.4,56.4
step
kill Az'Barin Prince of the Gust##30026, Duke Singen##30019, Erathius King of Dirt##30025, Gargoral the Water Lord##30024
_Defeat_ an Elemental Lord |q 12934/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.4,56.4
step
kill Orinoko Tuskbreaker##30020 |q 12935/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.4,56.4
step
kill Korrak the Bloodrager##30023 |q 12936/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Champion of Anguish##12948 |goto Zul'Drak 48.4,56.4
step
kill Vladof the Butcher##30022 |q 12948/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Champion of Anguish##12948 |goto Zul'Drak 48.5,56.4
achieve 1576
step
Congratulations, you have _earned_ the _Of Blood And Anguish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\5 Dungeon Quests Complete",{
condition_end="achieved(4956)",
description="Complete 5 dungeon quests.",
},[[
step
Enter the swirling portal |goto The Deadmines 38.3,77.5
Click here to proceed |confirm
step
talk Lieutenant Horatio Laine##46612
accept The Foreman##27756 |goto The Deadmines 30.2,28.6
step
Follow the path to this spot |goto The Deadmines,30.0,46.7 < 10
kill Glubtok |q 27756/1 |goto The Deadmines 34.7,61.9
turnin The Foreman##27756
step
Open the heavy door here |goto The Deadmines,43.8,78.8 < 10
Click the _Quest Accept_ Box:
accept The Carpenter##27758 |goto 43.7,82.7
step
kill Helix Gearbreaker |q 27758/1 |goto 49.7,90.2
turnin The Carpenter##27758
step
Follow the path through the Deadmines |goto The Deadmines,65.3,87.5 < 10
Click the _Quest Accept_ Box:
accept The Machination##27781 |goto The Deadmines 61.0,71.8
|tip It will come up in a Quest Discovered! box.
step
Follow ramp down and kill the Defias Reapers at the bottom
kill Foe Reaper 5000 |q 27781/1 |goto The Deadmines 8.7,88.3
turnin The Machination##27781
step
Click the cannon to open the door |goto The Deadmines,12.6,68.9 < 5
accept The Admiral##27785 |goto The Deadmines 35.6,48.5
step
Follow the path across to the ship bridge
Click to proceed |confirm
step
Follow the path up to the boat and follow it to the right
Go up to the top of the ship
Click to proceed |confirm
step
kill Admiral Ripsnarl |q 27785/1
turnin The Admiral##27785
accept The Defias Kingpin##27790
step
kill "Captain" Cookie |q 27790/1 |goto The Deadmines 60.5,45.2
step
Wait for Lieutenant Horatio Laine to come up to the deck.
talk Lieutenant Horatio Laine##46612
turnin The Defias Kingpin##27790
step
Earn the 5 Dungeon Quests Completed! Achievement |achieve 4956
step
Congratulations, you have earn the 5 Dungeon Quests Completed! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\A Simple Re-Quest",{
condition_end="achieved(31)",
description="Complete a daily quest every day for five consecutive days.",
},[[
step
To earn this achievement, you must complete a daily quests every day for five consecutive days.
The easiest achievement to do for this achievement is Overstock in the Storm Peaks |tip For this quest, you must be at least level 77.
confirm
step
talk Ricket##29428
accept Overstock##12833 |goto The Storm Peaks 40.9,85.3
step
use Improved Land Mines##4067
|tip Use your Improved Land Mines to place mines on the ground close to each other.
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
Kill #12# Garm InvaderS |q 12833/1 |goto 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.9,85.3
step
Complete a daily quest every day for 5 consecutive days |achieve 31
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The Loremaster\\Loremaster of Eastern Kingdoms",{
condition_end="achieved(1676)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Eastern Kingdoms Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Arathi Highlands Quests |achieve 4896 |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-27)"
Badlands Quests |achieve 4900 |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Badlands (44-46)\\Badlands (44-46)"
Blasted Lands Quests |achieve 4909 |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)"
Burning Steppes Quests |achieve 4901  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)"
Cape of Stranglethorn Quests |achieve 4905  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (32-36)\\The Cape of Stranglethorn (32-36)"
Duskwood Quests |achieve 4903  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)"
Eastern Plaguelands Quests |achieve 4892  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)"
Hinterlands Quests |achieve 4897  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-31)"
Loch Modan Quests |achieve 4899  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)"
Northern Stranglethorn Quests |achieve 4906  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-32)\\Northern Stranglethorn (26-32)"
Redridge Quests |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)" |achieve 4902
Searing Gorge Quests |achieve 4910  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Searing Gorge (46-49)\\Searing Gorge (46-49)"
Swamp of Sorrows Quests |achieve 4904  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)"
Western Plaguelands Quests |achieve 4893  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)"
Westfall Quests |achieve 4903  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-15)"
Wetlands Quests |achieve 4899  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)"
step
Congratulations, you have _earned_ the _Loremaster of Eastern Kingdoms_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The Loremaster\\Loremaster of Kalimdor",{
condition_end="achieved(7520)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Kalimdor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Ashenvale Quests |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)" |achieve 4925
Bloodmyst Quests |achieve 4926 |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (11-12)"
Darkshore Quests |achieve 4928  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)"
Desolace Quests |achieve 4930  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (33-35)"
Dustwallow March Quests |loadguide 4929  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Dustwallow Marsh (37-41)\\Dustwallow Marsh (37-41)"
Felwood Quests |achieve 4931  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (48-49)"
Feralas Quests |achieve 4932  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Feralas (37-41)\\Feralas (37-41)"
Silithus Quests |achieve 4934  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Silithus (55-56)\\Silithus (55-56)"
Southern Barrens Quests |achieve 4937  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (33-35)"
Stonetalon Mountains Quests |achieve 4936  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Stonetalon Mountains (27-33)\\Stonetalon Mountains (27-33)"
Tanaris Quests |achieve 4935 |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (45-47)"
Thousand Needles Quests |achieve 4938  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Thousand Needles (41-45)\\Thousand Needles (41-45)"
Un'Goro Crater Quests |achieve 4939  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Un'Goro Crater (55-58)\\Un'Goro Crater (55-58)"
Winterspring Quests |achieve 4940  |loadguide "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)"
step
Congratulations, you have _earned_ the _Loremaster of Kalimdor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The Loremaster\\Loremaster of Outland",{
condition_end="achieved(1262)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Outland Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Hellfire Peninsula Quests |achieve 1189 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Hellfire Peninsula (60-62)"
Zangarmarsh Quests |achieve 1190 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Zangarmarsh (62-64)"
Terrokar Forest Quests |achieve 1191  |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Terokkar Forest (64-65)"
Nagrand Quests |achieve 1192  |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Nagrand (65-67)"
Blades Edge Mountains March Quests |achieve 1193  |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Blade's Edge Mountains (67-68)"
Netherstorm Quests |achieve 1194  |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Netherstorm (68-70)"
Shadowmoon Valley Quests |achieve 1195  |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Shadowmoon Valley (68-70)"
step
Congratulations, you have _earned_ the _Loremaster of Outland_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The Loremaster\\Loremaster of Northrend",{
condition_end="achieved(41)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Northrend Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Borean Tundra Quests |achieve 33 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Borean Tundra (70-72)"
Howling Fjord Quests |achieve 34 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Howling Fjord (70-72)"
Grizzly Hills Quests |achieve 35 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Grizzly Hills (74-75)"
Dragonblight Quests |achieve 35 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Dragonblight (71-74)"
Zul'drak Quests |achieve 36 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Zul'Drak (75-77)"
Sholazar Basin Quests |achieve 39 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Sholazar Basin (77-78)"
Storm Peaks Quests |achieve 38 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\The Storm Peaks (78-80)"
Icecrown Valley Quests |achieve 40 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Icecrown (78-80)"
step
Congratulations, you have _earned_ the _Loremaster of Northrend_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The Loremaster\\Loremaster of Cataclysm",{
condition_end="achieved(4875)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Cataclysm Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Mount Hyjal Quests |achieve 4870 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-85)\\Mount Hyjal (80-82)"
Vashj'ir Quests |achieve 4869 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-85)\\Vashj'ir (80-82)"
Deepholm Quests |achieve 4871  |loadguide "Zygor's Leveling Guides\\Cataclysm (80-85)\\Deepholm (82-83)"
Uldum Quests |achieve 4872  |loadguide "Zygor's Leveling Guides\\Cataclysm (80-85)\\Uldum (83-84)"
Twilight Highlands Quests |achieve 4873  |loadguide "Zygor's Leveling Guides\\Cataclysm (80-85)\\Twilight Highlands (84-85)"
step
Congratulations, you have _earned_ the _Loremaster of Cataclysm_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Full Caravan",{
condition_end="achieved(5442)",
description="Recruit all 8 characters into Fiona's travelling party in Eastern Plaguelands.",
},[[
step
talk Fiona##45417
accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands 9.0,66.3
accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.0,66.3
step
talk Gidwin Goldbraids##45428
turnin Gidwin Goldbraids##27367 |goto Eastern Plaguelands 4.2,36.1
accept Just Encased##27368 |goto Eastern Plaguelands 4.2,36.1
step
_Enter_ the tunnel |goto Eastern Plaguelands 4.7,35.6 < 10 |walk
kill Crypt Stalker##8555+, Crypt Horror##8557+
collect 8 Crypt Bile##60983 |q Just Encased##27368/1 |goto Eastern Plaguelands 5.1,33.4
step
_Leave_ the tunnel |goto 4.7,35.6 < 10 |walk
talk Gidwin Goldbraids##45428
turnin Just Encased##27368 |goto Eastern Plaguelands 4.1,36.0
accept Greasing the Wheel##27369 |goto Eastern Plaguelands 4.1,36.0
step
click Banshee's Bell##9889+
|tip They are located right along the edge of the water
collect 10 Banshee's Bells##60984 |q Greasing the Wheel##27369/1 |goto Eastern Plaguelands 3.4,38.0
More Banshee's Bells _can be found_ along the Thondroril River up to [8.9,55.7]
step
talk Fiona##45417
turnin Greasing the Wheel##27369 |goto Eastern Plaguelands 9.0,66.5
_Recruit_ Gidwin Goldbraids to the Caravan |achieve 5442/2
step
talk Tarenar Sunstrike##45429
turnin Tarenar Sunstrike##27370 |goto Eastern Plaguelands 18.4,74.8
accept What I Do Best##27371 |goto Eastern Plaguelands 18.4,74.8
step
kill 5 Death's Step Miscreation##45444+ |q What I Do Best##27371/1 |goto Eastern Plaguelands 18.6,76.9
step
Click the _Quest Complete_ Box:
turnin What I Do Best##27371 |goto Eastern Plaguelands 18.6,76.9
accept A Gift For Fiona##27372 |goto Eastern Plaguelands 18.6,76.9
step
kill Plaguehound Runt##8596+
|tip They share spawn locations with the Carrion Grubs so if you are having trouble find Plaguehound Runts kill Carrion Grubs and more should spawn.
collect 10 Plaguehound Blood##60986 |q A Gift For Fiona##27372/1 |goto Eastern Plaguelands 17.2,68.7
More Plaguehound Runts _can be found_ around [12.4,70.0]
step
talk Fiona##45417
turnin A Gift For Fiona##27372 |goto Eastern Plaguelands 9.0,66.5
accept Onward, to Light's Hope Chapel##27373 |goto Eastern Plaguelands 9.0,66.5
_Recruit_ Tarenar Sunstrike to the Caravan |achieve 5442/5
step
talk Fiona's Caravan##45400
_Ride the Caravan_ to the next destination |q Onward, to Light's Hope Chapel##27373/1 |goto Eastern Plaguelands 9.0,66.4
step
talk Fiona##45417
turnin Onward, to Light's Hope Chapel##27373 |goto Eastern Plaguelands 34.8,69.1
step
talk Tarenar Sunstrike##45429
accept Traveling Companions##27381 |goto Eastern Plaguelands 35.2,68.8
step
talk Argus Highbeacon##45451
|tip He's at the top of this tower.
_Ask him_ if he wants to join the Caravan |q Traveling Companions##27381/1 |goto Eastern Plaguelands 35.8,68.7
accept Rough Roads##27382
step
talk Tarenar Sunstrike##45429
turnin Traveling Companions##27381 |goto Eastern Plaguelands 35.2,68.8
step
kill 13 Plaguebat##8600 |q Rough Roads##27382/1 |goto Eastern Plaguelands 37.5,71.3
step
talk Argus Highbeacon##45451
|tip He's at the top of this tower.
turnin Rough Roads##27382 |goto Eastern Plaguelands 35.8,68.7
step
talk Urk Gagbaz##45500
accept Zaeldarr the Outcast##27432 |goto Eastern Plaguelands 35.0,68.2
step
talk Carlin Redpath##11063
accept Little Pamela##27383 |goto Eastern Plaguelands 35.5,68.9
step
_Enter_ the crypt |goto 24.2,78.3 < 10 |walk
_Go down_ to the bottom of the crypt
kill Zaeldarr the Outcast##12250+
collect Zaeldarr's Head |q Zaeldarr the Outcast##27432/1
step
talk Pamela Redpath##10926
turnin Little Pamela##27383 |goto Eastern Plaguelands 32.5,83.8
accept Pamela's Doll##27384 |goto Eastern Plaguelands 32.5,83.8
accept I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands 32.5,83.8
step
click Pamela's Doll's Head##4231
collect Pamela's Doll's Head##12886 |goto Eastern Plaguelands 34.0,85.3
step
click Pamela's Doll's Right Side##4233
collect Pamela's Doll's Right Side##12888 |goto Eastern Plaguelands 35.4,85.3
step
click Pamela's Doll's Left Side##4232
collect Pamela's Doll's Left Side##12887 |goto Eastern Plaguelands 35.5,85.5
step
Put the doll _back together_ again |use Pamela's Doll's Head##12886
collect 1 Pamel's Doll##12885 |q Pamela's Doll##27384/1
step
kill The Lone Hunter##45450
collect Joseph's Hunting Blade##60987 |q I'm Not Supposed to Tell You This##27392/1 |goto Eastern Plaguelands 40.1,83.7
step
talk Pamela Redpath##10926
turnin Pamela's Doll##27384 |goto Eastern Plaguelands 32.5,83.7
turnin I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands 32.5,83.7
accept Uncle Carlin##27385 |goto Eastern Plaguelands 32.5,83.7
step
talk Urk Gagbaz##45500
turnin Zaeldarr the Outcast##27432 |goto Eastern Plaguelands 35.0,68.3
step
talk Carlin Redpath##11063
turnin Uncle Carlin##27385 |goto Eastern Plaguelands 35.5,68.9
accept A Strange Historian##27386 |goto Eastern Plaguelands 35.5,68.9
step
talk Chromie##10667
turnin A Strange Historian##27386 |goto Eastern Plaguelands 35.2,68.1
accept Marauders of Darrowshire##27389 |goto Eastern Plaguelands 35.2,68.1
accept Villains of Darrowshire##27387 |goto Eastern Plaguelands 35.2,68.1
accept Heroes of Darrowshire##27388 |goto Eastern Plaguelands 35.2,68.1
step
click Shattered Sword of Marduk##4175
collect Shattered Sword of Marduk##12957 |q Villains of Darrowshire##27387/2 |goto Eastern Plaguelands 39.8,72.3
step
click Horgus' Skull##4173
collect Skull of Horgus##12956 |q Villains of Darrowshire##27387/1 |goto Eastern Plaguelands 37.4,60.4
step
kill Scourge Champion##8529+
collect 5 Fetid Skull##13157 |n
_Use_ the Mystic Crystal |use Mystic Crystal##13156
collect 5 Resonating Skull##13155 |q Marauders of Darrowshire##27389/1 |goto Eastern Plaguelands 34.0,48.8
step
click Redpath's Shield##4172
collect Redpath's Shield##12955 |q Heroes of Darrowshire##27388/3 |goto Eastern Plaguelands 22.2,68.2
step
click Davil's Libram##430
collect Davil's Libram##12954 |q Heroes of Darrowshire##27388/2 |goto Eastern Plaguelands 22.3,68.3
step
talk Carlin Redpath##11063
_Ask_ if he has the Annals of Darrowshire
collect Extended Annals of Darrowshire##13202 |q Heroes of Darrowshire##27388/1 |goto Eastern Plaguelands 35.5,68.8
step
talk Chromie##10667
turnin Villains of Darrowshire##27387 |goto Eastern Plaguelands 35.1,68.1
turnin Heroes of Darrowshire##27388 |goto Eastern Plaguelands 35.1,68.1
turnin Marauders of Darrowshire##27389 |goto Eastern Plaguelands 35.1,68.1
accept The Battle of Darrowshire##27390 |goto Eastern Plaguelands 35.1,68.1
step
_Use_ the Relic Bundle |use Relic Bundle##15209
_Kill_ the enemies at Darrowshire's entrance
kill Joseph Redpath##10936
|tip He'll become hostile as you kill enemies.
talk Joseph Redpath##10936
_Accept_ Redpath's Forgiveness |q The Battle of Darrowshire##27390/1 |goto Eastern Plaguelands 34.8,83.5
step
talk Pamela Redpath##10926
turnin The Battle of Darrowshire##27390
_Recruit_ Pamela Redpath to the Caravan |achieve 5442/6 |goto Eastern Plaguelands 32.5,83.7
step
talk Fiona##45417
accept The Trek Continues##27448 |goto Eastern Plaguelands 34.8,69.1
step
talk Fiona's Caravan##45400
_Ride the Caravan_ to the next destination |q The Trek Continues##27448/1 |goto Eastern Plaguelands 34.9,69.3
step
talk Fiona##45417
turnin The Trek Continues## |goto Eastern Plaguelands 52.9,53.2
step
_Recruit_ Argus Highbeacon to the Caravan |achieve 5442/3
accept Boys Will Be Boys##27455 |goto Eastern Plaguelands 52.9,53.2
step
talk Vex'tul##45574
accept Honor and Strength##27449 |goto Eastern Plaguelands 52.8,51.5
kill 3 Mossflayer Rogue##45579 |q Honor and Strength##27449/1 |goto Eastern Plaguelands 52.8,51.5
step
talk Vex'tul##45574
turnin Honor and Strength##27449 |goto Eastern Plaguelands 52.8,51.5
_Recruit_ Vex'tul to the Caravan |achieve 5442/8
step
talk Gidwin Goldbraids##45431
turnin Boys Will Be Boys##27455 |goto Eastern Plaguelands 74.3,53.4
accept A Boyhood Dream##27463 |goto Eastern Plaguelands 74.3,53.4
step
talk Lord Maxwell Tyrosus##11034
turnin A Boyhood Dream##27463 |goto Eastern Plaguelands 75.8,52.0
accept Argent Call: The Trial of the Crypt##27464 |goto Eastern Plaguelands 75.8,52.0
step
_Enter_ the crypt |goto 77.2,50.8 < 10 |walk
_Go down_ to the bottom floor
use Argent Scroll##61309
_Kill_ all the enemies that attack you |q Argent Call: The Trial of the Crypt##27464/1
step
talk Lord Maxwell Tyrosus##11034
turnin Argent Call: The Trial of the Crypt##27464 |goto Eastern Plaguelands 75.8,52.0
accept Argent Call: The Noxious Glade##27465 |goto Eastern Plaguelands 75.8,52.0
step
kill 16 Dread Weaver##8528+, Diseased Flayer##8532+, Death Singer##8542+, Stitched Golem##8545+ |q Argent Call: The Noxious Glade##27465/1 |goto Eastern Plaguelands 77.3,34.7
kill 8 Skullmage##45691+, Noxious Assassin##45692+ |q Argent Call: The Noxious Glade##27465/2 |goto Eastern Plaguelands 77.3,34.7
step
talk Lord Maxwell Tyrosus##11034
turnin Argent Call: The Noxious Glade##27465 |goto Eastern Plaguelands 75.8,52.1
step
talk Rimblat Earthshatter##16134
accept Gathering Some Grub(s)##27456 |goto Eastern Plaguelands 73.9,52.0
step
kill Carrion Grub##8603+
collect 15 Slab of Carrion Worm Meat##13853 |q Gathering Some Grub(s)##27456/1 |goto Eastern Plaguelands 71.9,61.0
step
talk Rimblat Earthshatter##16134
turnin Gathering Some Grub(s)##27456 |goto Eastern Plaguelands 73.9,52.0
accept An Opportune Alliance##27457 |goto Eastern Plaguelands 73.9,52.0
step
talk Fiona##45417
turnin Argent Call: Northdale##27466 |goto Eastern Plaguelands 61.5,42.9
turnin An Opportune Alliance##27457 |goto Eastern Plaguelands 61.5,42.9
_Recruit_ Rimblat Earthshatter to the Caravan |achieve 5442/7
step
talk Tarenar Sunstrike##45729
accept Ix'lar the Underlord##27487 |goto Eastern Plaguelands 61.5,43.2
step
kill Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+ |q Ix'lar the Underlord##27487/2 |goto Eastern Plaguelands 60.6,35.5
kill Ix'lar the Underlord##45744 |q Ix'lar the Underlord##27487/1 |goto Eastern Plaguelands 60.6,35.5
|tip He patrols the area.
step
talk Fiona##45417
turnin Ix'lar the Underlord##27487 |goto Eastern Plaguelands 61.4,42.8
step
talk Tarenar Sunstrike##45729
accept Impatience##27488 |goto Eastern Plaguelands 61.5,43.2
step
click Gidwin's Prayer Book##254
collect Gidwin's Prayer Book##61318 |q Impatience##27488/1 |goto Eastern Plaguelands 65.5,24.5
step
talk Tarenar Sunstrike##45729
turnin Impatience##27488 |goto Eastern Plaguelands 61.5,43.3
accept Nobody to Blame but Myself##27489 |goto Eastern Plaguelands 61.5,43.3
step
talk Fiona's Caravan##45400
_Ride the Caravan_ to the next destination |q Nobody to Blame but Myself##27489/1 |goto Eastern Plaguelands 61.5,42.6
step
talk Tarenar Sunstrike##45729
turnin Nobody to Blame but Myself##27489 |goto Eastern Plaguelands 50.5,20.3
accept Beat it Out of Them##27522 |goto Eastern Plaguelands 50.5,20.3
step
kill 6 Scourge Siege Engineer##17878 |q Beat it Out of Them##27522/1 |goto Eastern Plaguelands 55.1,17.1
_Discover_ Gidwin's captor |q Beat it Out of Them##27522/3 |goto Eastern Plaguelands 55.1,17.1
_Discover_ Gidwin's location |q Beat it Out of Them##27522/2 |goto Eastern Plaguelands 55.1,17.1
step
talk Fiona##45417
turnin Beat it Out of Them##27522 |goto Eastern Plaguelands 50.5,20.3
accept Blind Fury##27524 |goto Eastern Plaguelands 50.5,20.3
step
talk Tarenar Sunstrike##45729
turnin Blind Fury##27524 |goto Eastern Plaguelands 27.5,21.2
accept Guardians of Stratholme##27525 |goto Eastern Plaguelands 27.5,21.2
step
kill Karthis Darkrune##45868 |q Guardians of Stratholme##27525/2 |goto Eastern Plaguelands 29.8,20.0
step
kill Omasum Blighthoof |q Guardians of Stratholme##27525/1 |goto Eastern Plaguelands 25.3,20.0
collect The Baroness' Missive##61378
step
use The Baroness' Missive##61378
accept The Baroness' Missive##27551
step
talk Tarenar Sunstrike##45729
turnin Guardians of Stratholme##27525 |goto Eastern Plaguelands 27.4,21.3
turnin The Baroness' Missive##27551 |goto Eastern Plaguelands 27.4,21.3
accept Gidwin's Fate Revealed##27526 |goto Eastern Plaguelands 27.4,21.3
step
_Enter_ the ziggurat
_Find_ Gidwin Goldbraids |q Gidwin's Fate Revealed##27526/1 |goto Eastern Plaguelands 29.3,26.3
modelnpc Gidwin Goldbraids##46191
step
talk Gidwin Goldbraids##45730
turnin Gidwin's Fate Revealed##27526 |goto Eastern Plaguelands 28.3,25.9
accept Journey's End##27527 |goto Eastern Plaguelands 28.3,25.9
step
_Use_ Gidwin's Hearthstone to go to Lightshope Chapel |use Gidwin's Hearthstone##61379 |goto Eastern Plaguelands 75.6,52.5<0.5
talk Fiona##45417
turnin Journey's End##27527 |goto Eastern Plaguelands 73.8,52.1
step
talk Beezil Linkspanner##46022 |goto Eastern Plaguelands 73.8,52.3
_Recruit_ Beezil Linkspanner to the Caravan |achieve 5442/1
step
Congratulations, you have _earned_ the _Full Caravan_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Ready, Set, Goat!",{
condition_end="achieved(5444)",
description="Using the Billy Goat Blaster or the Billy Goat Blaster DX, blast 12 Billy Goats in under 1 minute.",
},[[
step
talk Garyanne Fleezlebop##46653
accept When the Going Gets Tough, Cheat##27775 |goto Badlands 64.2,38.0
only if not completedq(27776)
step
kill Dustbelcher Instructor##46693+
collect Instructor's Rod##62396 |q 27775/1 |goto Badlands 59.2,32.4
only if not completedq(27776)
step
talk Garyanne Fleezlebop##46653
turnin When the Going Gets Tough, Cheat##27775 |goto Badlands 64.2,38.0
accept It's Goat Time, Baby##27776 |goto Badlands 64.2,38.0
only if not completedq(27776)
step
_Use_ your Billy Goat Blaster on Billy Goats |use Billy Goat Blaster##62397
|tip They are rams all around the outskirts of this town.
_Nudge_ #12# Billy Goats in under 1 minute |q 27776/1 |goto Badlands 64.6,37.1
achieve 5444
only if not completedq(27776)
step
talk Gina Gotgoods##48067 |goto Badlands 64.2,37.5
buy 1 Billy Goat Blaster DX##65898 |condition itemcount(65898) >= 1
only if completedq(27776)
step
_Use_ your Billy Goat Blaster DX on Billy Goats |use Billy Goat Blaster DX##65898
|tip They are rams all around the outskirts of this town.
_Blast_ #12# Billy Goats in under 1 minute |achieve 5444 |goto Badlands 64.2,37.5
only if completedq(27776)
step
Congratulations, you have _earned_ the _Ready, Set, Goat!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Westfall and Duskwood Quests",{
condition_end="achieved(4903)",
author="support@zygorguides.com",
startlevel=18,
description="This guide will walk you through completing the \"Westfall and Duskwood Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 80 quests between Westfall and Duskwood_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Westfall (10-15)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Westfall (10-15)\\Westfall (10-15)"
Click here to load the "Duskwood (21-26)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Duskwood (21-26)\\Duskwood (21-26)"
Earn the _Westfall and Duskwood Quests_ achievement |achieve 4903
step
_Congratulations!_
You have earned the _Westfall and Duskwood Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Redridge Mountains Quests",{
condition_end="achieved(4902)",
author="support@zygorguides.com",
startlevel=18,
description="This guide will walk you through completing the \"Redridge Mountains Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 40 quests in Redridge Mountains_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Redridge Mountain (16-21)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Redridge Mountains (15-21)\\Redridge Mountains (16-21)"
Earn the _Redridge Mountains Quests_ achievement |achieve 4902
step
_Congratulations!_
You have earned the _Redridge Mountains Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Northern Stranglethorn Quests",{
condition_end="achieved(4906)",
author="support@zygorguides.com",
startlevel=18,
description="This guide will walk you through completing the \"Northern Stranglethorn Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 50 quests in Northern Stranglethorn_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Northern Stranglethorn (26-32)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-32)\\Northern Stranglethorn (26-32)"
Earn the _Northern Stranglethorn_ achievement |achieve 4906
step
_Congratulations!_
You have earned the _Northern Stranglethorn Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Cape of Stranglethorn Quests",{
condition_end="achieved(4905)",
author="support@zygorguides.com",
startlevel=18,
description="This guide will walk you through completing the \"Cape of Stranglethorn Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 60 quests in the Cape of Stranglethorn_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Cape of Stranglethorn (32-36)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (32-36)\\The Cape of Stranglethorn (32-36)"
Earn the _Cape of Stranglethorn_ achievement |achieve 4906
step
_Congratulations!_
You have earned the _Cape of Stranglethorn Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Blasted Lands Quests",{
condition_end="achieved(4909)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Blasted Lands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 35 quests in the Blasted Lands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Blasted Lands (58-60)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Blasted Lands (58-60)\\Blasted Lands (58-60)"
Earn the _Blasted Lands Quests_ achievement |achieve 4909
step
_Congratulations!_
You have earned the _Blasted Lands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Swamp of Sorrows Quests",{
condition_end="achieved(4904)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Swamp of Sorrows Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 25 quests in the Swamp of Sorrows_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Swamp of Sorrows (52-54)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)"
Earn the _Swamp of Sorrows Quests_ achievement |achieve 4904
step
_Congratulations!_
You have earned the _Swamp of Sorrows Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Burning Steppes Quests",{
condition_end="achieved(4901)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Burning Steppes Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 40 quests in the Burning Steppes_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Burning Steppes (49-52)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)"
Earn the _Burning Steppes Quests_ achievement |achieve 4901
step
_Congratulations!_
You have earned the _Burning Steppes Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Searing Gorge Quests",{
condition_end="achieved(4910)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Searing Gorge Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 35 quests in the Searing Gorge_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Searing Gorge (46-49)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Searing Gorge (46-49)\\Searing Gorge (46-49)"
Earn the _Searing Gorge Quests_ achievement |achieve 4910
step
_Congratulations!_
You have earned the _Searing Gorge Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Badlands Quests",{
condition_end="achieved(4900)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Badlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 35 quests in the Badlands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Badlands (44-46)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Badlands (44-46)\\Badlands (44-46)"
Earn the _Badlands Quests_ achievement |achieve 4900
step
_Congratulations!_
You have earned the _Badlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Eastern Plaguelands Quests",{
condition_end="achieved(4892)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Eastern Plaguelands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 35 quests in the Eastern Plaguelands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Eastern Plaguelands (39-44)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)"
Earn the _Eastern Plaguelands Quests_ achievement |achieve 4892
step
_Congratulations!_
You have earned the _Eastern Plaguelands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Western Plaguelands Quests",{
condition_end="achieved(4893)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Western Plaguelands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 35 quests in the Western Plaguelands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Western Plaguelands (39-44)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)"
Earn the _Western Plaguelands Quests_ achievement |achieve 4893
step
_Congratulations!_
You have earned the _Western Plaguelands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Hinterlands Quests",{
condition_end="achieved(4897)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Hinterlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 30 quests in the Hinterlands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Hinterlands (30-31)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-31)"
Earn the _Hinterlands Quests_ achievement |achieve 4897
step
_Congratulations!_
You have earned the _Hinterlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Arathi Highlands Quests",{
condition_end="achieved(4896)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Arathi Highlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 18 quests in the Arathi Highlands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Arathi Highlands (26-27)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-27)"
Earn the _Arathi Highlands Quests_ achievement |achieve 4896
step
_Congratulations!_
You have earned the _Arathi Highlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Loch Modan and Wetlands Quests",{
condition_end="achieved(4899)",
author="support@zygorguides.com",
startlevel=56,
description="This guide will walk you through completing the \"Loch Modan and Wetlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 85 quests in Loch Modan and the Wetlands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Loch Modan (10-12)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Loch Modan (10-19)\\Loch Modan (10-12)"
Click here to load the "Wetlands (19-21)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Eastern Kingdoms 1-60\\Wetlands (19-26)\\Wetlands (19-21)"
Earn the _Loch Modan and Wetlands Quests_ achievement |achieve 4899
step
_Congratulations!_
You have earned the _Loch Modan and Wetlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Hemet Nesingwary: The Collected Quests", {
condition_end="achieved(941)",
achieveid={940,939,938},
keywords={"Green","hills","stranglethorn","like","white","elekk","snows","northrend","of"},
description="Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.",
},[[
step
Redirecting to The Green Hills of Stranglethorn |next "TheGreenHills" |only if not completedq(208)
Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
Redirecting to end of guide |next "end" |only if default
step
label "TheGreenHills"
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Northern Stranglethorn 44.3,22.1
step
talk Hemet Nesingwary Jr.##715
turnin Welcome to the Jungle##583 |goto Northern Stranglethorn 44.0,23.3
accept Raptor Hunting##194 |goto Northern Stranglethorn 44.0,23.3
step
talk Sir S. J. Erlgadin##718
accept Panther Hunting##190 |goto Northern Stranglethorn 43.7,22.3
step
talk Barnil Stonepot##716
accept The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.2,22.1
step
talk Ajeck Rouack##717
accept Tiger Hunting##185 |goto Northern Stranglethorn 44.5,22.7
step
kill River Crocolisk##1150+
collect Green Hills of Stranglethorn - Page 14##57990 |q The Green Hills of Stranglethorn##26269/1 |goto Northern Stranglethorn 45.2,20.8
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.2,22.1
step
kill 10 Young Stranglethorn Tiger##681 |q Tiger Hunting##185/1 |goto Northern Stranglethorn 42.3,24.2
You can find more Young Stranglethorn Tigers to kill here [Northern Stranglethorn 38.7,20.3]
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tiger Hunting##185
accept Tiger Stalking##186
step
kill 10 Young Panther##683 |q Panther Hunting##190/1 |goto Northern Stranglethorn 52.0,23.8
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Panther Hunting##190
accept Panther Stalking##191
step
kill 10 Stranglethorn Tiger##682 |q Tiger Stalking##186/1 |goto Northern Stranglethorn 61.3,27.0
You can find more Stranglethorn Tigers around [Northern Stranglethorn 56.5,28.7]
step
Click the _Quest Complete_ Box:
turnin Tiger Stalking##186
accept Tiger Prowess##187
step
kill 5 Elder Stranglethorn Tiger##1085 |q Tiger Prowess##187/1 |goto Northern Stranglethorn 38.1,30.1
step
Click the _Quest Complete_ Box:
turnin Tiger Prowess##187
accept Tiger Mastery##188
step
from Sin'Dall##729
get Paw of Sin'Dall##3879 |q Tiger Mastery##188/1 |goto Northern Stranglethorn 38.5,32.5
stickystart "stranglerap"
step
kill 10 Panther##736 |q Panther Stalking##191/1 |goto Northern Stranglethorn 33.8,28.2
step
Click the _Quest Complete_ Box:
turnin Panther Stalking##191
accept Panther Prowess##192
step "stranglerap"
kill 10 Stranglethorn Raptor##685 |q Raptor Hunting##194/1 |goto Northern Stranglethorn 31.7,28.0
step
Click the _Quest Complete_ Box:
turnin Raptor Hunting##194
accept Raptor Stalking##195
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Northern Stranglethorn 44.5,22.7
step
kill 10 Lashtail Raptor##686 |q Raptor Stalking##195/1 |goto Northern Stranglethorn 45.8,43.1
You can find more Lashtail Raptors around [Northern Stranglethorn 39.3,43.9]
step
Click the _Quest Complete_ Box:
turnin Raptor Stalking##195
accept Raptor Prowess##196
step
kill 10 Jungle Stalker##687 |q Raptor Prowess##196/1 |goto Northern Stranglethorn 54.3,47.2
step
Click the _Quest Complete_ Box:
turnin Raptor Prowess##196
accept Raptor Mastery##197
step
kill 5 Shadowmaw Panther##684 |q Panther Prowess##192/1 |goto Northern Stranglethorn 61.9,49.0
|tip They are stealthed, so keep an eye out for them.
step
Click the _Quest Complete_ Box:
turnin Panther Prowess##192
accept Panther Mastery##193
step
kill Bhag'thera##728
collect Fang of Bhag'thera##3876 |q Panther Mastery##193/1 |goto Northern Stranglethorn 66.0,43.4
step
kill Tethis##730
collect Talon of Tethis##3877 |q Raptor Mastery##197/1 |goto Northern Stranglethorn 62.5,61.3
step
Follow this road |goto Northern Stranglethorn 48.4,41.9 < 15
talk Hemet Nesingwary Jr.##715
turnin Raptor Mastery##197 |goto Northern Stranglethorn 44.0,23.3
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Northern Stranglethorn 43.7,22.3
step
talk Hemet Nesingwary Jr.##715
accept Big Game Hunter##208 |goto Northern Stranglethorn 44.2,23.0
step
kill King Bangalash##731
|tip He's a white tiger that walks around on this big hill.
collect Head of Bangalash##3880 |q Big Game Hunter##208/1 |goto Northern Stranglethorn 47.8,59.0
step
talk Hemet Nesingwary Jr.##715
turnin Big Game Hunter##208 |goto Northern Stranglethorn 44.0,23.3
step
Congratulations, you have earned the The Green Hills of Stranglethorn achievement! |achieve 940
step
Redirecting to Hills Like White Elekks |next "WhiteElekks" |only if not completedq(9852)
Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
Redirecting to end of guide |next "end" |only if default
step
label "WhiteElekks"
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
accept Clefthoof Mastery##9789 |goto Nagrand 71.6,40.5
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto Nagrand 71.6,40.5
stickystart "clefthoof"
stickystart "windroc"
step
kill 12 Talbuk Stag##17130 |q Talbuk Mastery##9857/1 |goto Nagrand 72.2,38.4
You can find more Talbuk Stags around this area [Nagrand 70.8,46.4]
step "windroc"
kill 12 Windroc##17128 |q Windroc Mastery##9854/1 |goto Nagrand 66.5,39.5
step "clefthoof"
kill 12 Clefthoof##18205 |q Clefthoof Mastery##9789/1 |goto Nagrand 64,45.1
You can find more Clefthoofs around this area [Nagrand 70.8,46.4]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto Nagrand 71.6,40.5
accept Windroc Mastery##9855 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9789 |goto Nagrand 71.6,40.5
accept Clefthoof Mastery##9850 |goto Nagrand 71.6,40.5
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto Nagrand 71.6,40.5
accept Talbuk Mastery##9858 |goto Nagrand 71.6,40.5
step
kill 12 Ravenous Windroc##18220 |q Windroc Mastery##9855/1 |goto Nagrand 48.4,61.5
stickystart "cleftbull"
step
kill 12 Talbuk Thorngrazer##17131 |q Talbuk Mastery##9858/1 |goto Nagrand 52.1,25.6
step "cleftbull"
kill 12 Clefthoof Bull##17132 |q Clefthoof Mastery##9850/1 |goto Nagrand 51.6,30.8
You can find more Clefthoof Bulls around [Nagrand 49.7,35.6]
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto Nagrand 71.6,40.5
accept Talbuk Mastery##9859 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9850 |goto Nagrand 71.6,40.5
accept Clefthoof Mastery##9851 |goto Nagrand 71.6,40.5
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto Nagrand 71.6,40.5
accept Windroc Mastery##9856 |goto Nagrand 71.6,40.5
step
kill Gutripper##18257
collect Eye of Gutripper##24513 |q Windroc Mastery##9856/1 |goto Nagrand 32.6,25.6
step
kill Bach'lor##18258 |tip He sometimes roams up north.
collect Hoof of Bach'lor##24523 |q Talbuk Mastery##9859/1 |goto Nagrand 26.0,53.0
step
kill Banthar##18259
|tip He roams around this area and is sometimes past Oshu'gun.
collect Horn of Banthar##24496 |q Clefthoof Mastery##9851/1 |goto Nagrand 43.0,63.0
step
talk Harold Lane##18218
turnin Talbuk Mastery (3)##9859 |goto Nagrand 71.6,40.5
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery (3)##9856 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery (3)##9851 |goto Nagrand 71.6,40.5
accept The Ultimate Bloodsport##9852 |goto Nagrand 71.6,40.5
step
kill Tusker##18290
collect Heart of Tusker##24505 |q The Ultimate Bloodsport##9852/1 |goto Nagrand 44.2,65.2
step
talk Hemet Nesingwary##18180
turnin The Ultimate Bloodsport##9852 |goto Nagrand 71.6,40.5
step
Congratulations, you have earned the Hills Like White Elekk achievement! |achieve 939
step
Redirecting to The Snows of Northrend |next "Snows" |only if not completedq(12614)
Redirecting to end of guide |next "end" |only if default
step
label "Snows"
talk Archmage Pentarus##28160
accept Where in the World is Hemet Nesingwary?##12521 |goto Dalaran 68.3,42.2
step
talk Monte Muzzleshot##27987
turnin Where in the World is Hemet Nesingwary?##12521 |goto Sholazar Basin 39.7,58.6
accept Welcome to Sholazar Basin##12489 |goto Sholazar Basin 39.7,58.6
step
talk Hemet Nesingwary##27986
turnin Welcome to Sholazar Basin##12489 |goto Sholazar Basin 27.1,58.7
step
talk Debaar##28032
accept Venture Co. Misadventure##12524 |goto Sholazar Basin 27.2,59.8
step
talk Weslex Quickwrench##28033
accept Need an Engine, Take an Engine##12522 |goto Sholazar Basin 25.4,58.4
step
click Flying Machine Engine##304
collect Flying Machine Engine##38334 |q Need an Engine, Take an Engine##12522/1 |goto Sholazar Basin 38.7,56.7
step
talk Weslex Quickwrench##28033
turnin Need an Engine, Take an Engine##12522 |goto Sholazar Basin 25.4,58.5
accept Have a Part, Give a Part##12523 |goto Sholazar Basin 25.4,58.5
step
talk Engineer Helice##28787
accept Engineering a Disaster##12688 |goto Sholazar Basin 35.5,47.4
step
Escort Engineer Helice out of Swindlegrin's Dig |q Engineering a Disaster##12688/1
stickystart "venturco"
step
click Venture Co. Spare Parts##6867
collect 7 Venture Co. Spare Parts##38349 |q Have a Part, Give a Part##12523/1 |goto Sholazar Basin 32.7,46.9
step "venturco"
kill Venture Co. Excavator##28123+, Venture Co. Ruffian##28124+
Kill #15# Venture Company Members |q Venture Co. Misadventure##12524/1 |goto Sholazar Basin 37.4,46.1
step
talk Weslex Quickwrench##28033
turnin Have a Part, Give a Part##12523 |goto Sholazar Basin 25.4,58.4
step
talk Debaar##28032
turnin Venture Co. Misadventure##12524 |goto Sholazar Basin 27.2,59.8
accept Wipe That Grin Off His Face##12525 |goto Sholazar Basin 27.2,59.8
step
talk Hemet Nesingwary##27986
turnin Engineering a Disaster##12688 |goto Sholazar Basin 27.1,58.7
step
kill Foreman Swindlegrin |q Wipe That Grin Off His Face##12525/1 |goto Sholazar Basin 36.1,50.5
kill Meatpie |q Wipe That Grin Off His Face##12525/2 |goto Sholazar Basin 36.1,50.5
step
talk Debaar##28032
turnin Wipe That Grin Off His Face##12525 |goto Sholazar Basin 27.2,59.8
step
talk Buck Cantwell##28031
accept Dreadsaber Mastery: Becoming a Predator##12549 |goto Sholazar Basin 26.7,59
step
talk Hemet Nesingwary##27986
accept Rhino Mastery: The Test##12520 |goto Sholazar Basin 27.1,58.6
step
talk Drostan##28328
accept Kick, What Kick?##12589 |goto Sholazar Basin 27.1,59.9
step
Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
Keep using the rifle until you hit the apple
Shoot the apple on Lucky Wilhelm's Head |q Kick, What Kick?##12589/1
step
talk Drostan##28328
turnin Kick, What Kick?##12589 |goto Sholazar Basin 27.1,59.9
accept The Great Hunter's Challenge##12592 |goto Sholazar Basin 27.1,59.9
step
kill 15 Dreadsaber##28001 |q Dreadsaber Mastery: Becoming a Predator##12549/1 |goto Sholazar Basin 28,56
kill 15 Shardhorn Rhino##28009 |q Rhino Mastery: The Test##12520/1 |goto Sholazar Basin 28,56
kill Dreadsaber##28001+, Shardhorn Rhino##28009+
Kill #60# Game Animals |q The Great Hunter's Challenge##12592/1 |goto Sholazar Basin 28,56
You can find more Rhino's and Dreadsabers around this area [Sholazar Basin 38.2,45.3]
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Becoming a Predator##12549 |goto Sholazar Basin 26.7,59
accept Dreadsaber Mastery: Stalking the Prey##12550 |goto Sholazar Basin 26.7,59
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Test##12520 |goto Sholazar Basin 27.1,58.6
accept Rhino Mastery: The Chase##12526 |goto Sholazar Basin 27.1,58.6
step
talk Drostan##28328
turnin The Great Hunter's Challenge##12592 |goto Sholazar Basin 27.1,59.8
step
talk Debaar##28032
accept Crocolisk Mastery: The Trial##12551 |goto Sholazar Basin 27.2,59.8
step
Click Dreadsaber Tracks##8298
|tip They look like brown paw prints on the ground around this area.
Identify #3# Shango Tracks |q Dreadsaber Mastery: Stalking the Prey##12550/1 |goto Sholazar Basin 39.9,43.7
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Stalking the Prey##12550 |goto Sholazar Basin 26.7,59
accept Dreadsaber Mastery: Ready to Pounce##12558 |goto Sholazar Basin 26.7,59
step
talk Oracle Soo-rahm##28191
turnin Rhino Mastery: The Chase##12526 |goto Sholazar Basin 25.6,66.5
accept An Offering for Soo-rahm##12543 |goto Sholazar Basin 25.6,66.5
stickystart "empfang"
step
kill 15 Mangal Crocolisk##28002 |q Crocolisk Mastery: The Trial##12551/1 |goto Sholazar Basin 29,62.5
step "empfang"
kill Emperor Cobra##28011+
collect 5 Intact Cobra Fang##38505 |q An Offering for Soo-rahm##12543/1 |goto Sholazar Basin 36.3,65.8
step
talk Debaar##28032
turnin Crocolisk Mastery: The Trial##12551 |goto Sholazar Basin 27.2,59.9
accept Crocolisk Mastery: The Plan##12560 |goto Sholazar Basin 27.2,59.9
step
talk Oracle Soo-rahm##28191
turnin An Offering for Soo-rahm##12543 |goto Sholazar Basin 25.6,66.5
accept The Bones of Nozronn##12544 |goto Sholazar Basin 25.6,66.5
step
use Soo-rahm's Incense##38519
|tip Use Soo-rahm's Incense next to the Offering Bowl.
|tip It's a small bowl in front of the skull of these bones.
Reveal the Location of Farunn |q The Bones of Nozronn##12544/1 |goto Sholazar Basin 26.1,71.6
step
talk Hemet Nesingwary##27986
turnin The Bones of Nozronn##12544 |goto Sholazar Basin 27.1,58.6
accept Rhino Mastery: The Kill##12556 |goto Sholazar Basin 27.1,58.6
stickystart "sandferns"
step
kill Shango##28297
collect Shango's Pelt##38523 |q Dreadsaber Mastery: Ready to Pounce##12558/1 |goto Sholazar Basin 33.4,34.7
step "sandferns"
click Sandfern##8452
collect 5 Sandfern##38553 |q Crocolisk Mastery: The Plan##12560/1 |goto Sholazar Basin 34.7,41.5
step
kill Farunn##28288
collect Farunn's Horn##38522 |q Rhino Mastery: The Kill##12556/1 |goto Sholazar Basin 47.4,43.9
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Kill##12556 |goto Sholazar Basin 27.1,58.6
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Ready to Pounce##12558 |goto Sholazar Basin 26.7,59
step
talk Debaar##28032
turnin Crocolisk Mastery: The Plan##12560 |goto Sholazar Basin 27.2,59.9
accept Crocolisk Mastery: The Ambush##12569 |goto Sholazar Basin 27.2,59.9
step
use Sandfern Disguise##38564
|tip Use your Sandfern Disguise next to this big log laying halfway in the water.
kill Bushwhacker##28317
collect Bushwhacker's Jaw##38559 |q Crocolisk Mastery: The Ambush##12569/1 |goto Sholazar Basin 46.3,63.4
step
talk Debaar##28032
turnin Crocolisk Mastery: The Ambush##12569 |goto Sholazar Basin 27.2,59.9
step
talk Hemet Nesingwary##27986
accept In Search of Bigger Game##12595 |goto Sholazar Basin 27.1,58.6
step
talk Dorian Drakestalker##28376
turnin In Search of Bigger Game##12595 |goto Sholazar Basin 42.3,28.7
accept Sharpening Your Talons##12603 |goto Sholazar Basin 42.3,28.7
accept Securing the Bait##12605 |goto Sholazar Basin 42.3,28.7
step
kill 6 Primordial Drake##28378 |q Sharpening Your Talons##12603/1 |goto Sholazar Basin 44.7,27.4
|tip The Primordial Drakes fly around in the air around this area.
clicknpc Primordial Drake Egg##28408
|tip The Primordial Drake Eggs look like white eggs next to trees around this area.
clicknpc Primordial Hatchling##28389
collect 6 Primordial Hatchling##38600 |q Securing the Bait##12605/1 |goto Sholazar Basin 44.7,27.4
step
talk Dorian Drakestalker##28376
turnin Sharpening Your Talons##12603 |goto Sholazar Basin 42.3,28.7
turnin Securing the Bait##12605 |goto Sholazar Basin 42.3,28.7
step
talk Zootfizzle##28374
accept A Mammoth Undertaking##12607 |goto Sholazar Basin 42.1,28.9
step
use Mammoth Harness##38627
|tip Use your Mammoth Harness on a Shattertusk Mammoth
Ride the mammoth back to Zootfizzle at |goto Sholazar Basin 42.1,28.9
Use the Hand Over Mammoth ability on your hotbar
Deliver the Shattertusk Mammoth |q A Mammoth Undertaking##12607/1 |goto Sholazar Basin 39.3,27.3
step
talk Zootfizzle##28374
turnin A Mammoth Undertaking##12607 |goto Sholazar Basin 42.1,28.9
step
talk Dorian Drakestalker##28376
accept Post-partum Aggression##12614 |goto Sholazar Basin 42.3,28.8
step
kill Broodmother Slivina |q 12614/1 |goto Sholazar Basin 47.0,21.1
|tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
talk Dorian Drakestalker##28376
turnin Post-partum Aggression##12614 |goto Sholazar Basin 42.3,28.8
step
Congratulations, you have earned the The Snows of Northrend achievement! |achieve 938
step
label "end"
Congratulations, you have earned the Hemet Nesingwary: The Collected Quests achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\E'ko Madness",{
condition_end="achieved(5443)",
description="Obtain E'ko from creatures in Winterspring.",
},[[
step
kill Shardtooth Mauler##7443+
_Obtain_ E'ko from Shardtooth Bears |achieve 5443/2 |goto Winterspring 57.7,39.6
step
kill Frostsaber##7431+, Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+, Young Frostsaber##7430+, Shy-Rotam##10737
_Obtain_ E'ko from Frostsabers |achieve 5443/3 |goto Winterspring 46.5,18.4
step
kill Chillwind Chimaera##7448+
_Obtain_ E'ko from Chillwind Chimaera |achieve 5443/4 |goto Winterspring 58.2,21.8
step
kill Winterfall Shaman##7439+, Winterfall Ursa##7438+
_Obtain_ E'ko from Winterspring Furbolgs |achieve 5443/7 |goto Winterspring 66.5,47.3
step
kill Ice Thistle Yeti##7458+
_Obtain_ E'ko from Ice Thistle Yeti |achieve 5443/5 |goto Winterspring 66.1,55.9
step
kill Frostmaul Tumbler##50258+
_Obtain_ E'ko from Frostmaul Giants |achieve 5443/6 |goto Winterspring 61.3,80.1
step
kill Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
_Obtain_ E'ko from Wildkin |achieve 5443/1 |goto Winterspring 57.5,75.7
step
Congratulations, you have _earned_ the _E'ko Madness_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Ghosts in the Dark",{
condition_end="achieved(5453)",
description="Discover the secret buried beneath the Maw of the Void in Darkshore.",
},[[
step
_Jump down_ into the water |goto Darkshore 51.7,31.1 < 5 |only if walking
kill Telarius Voidstrider##48764
collect Writings of the Dark Herald##64450 |n
_Use_ Writings of the Dark Herald |use Writings of the Dark Herald##64450
accept Writings of the Void##28529 |goto Darkshore 52.4,31.0
step
talk Bielara Ivyshroud##48726 |goto Darkshore 51.7,31.1
_Say_ you'd like to leave this place |goto Darkshore 53.3,36.2,0.5 |noway |c
step
talk Ranger Glynda Nal'Shea##32971
turnin Writings of the Void##28529 |goto Darkshore 50.7,19.7
_Discover_ the secret buried beneath the Maw of the Void in Darkshore |achieve 5453
step
Congratulations, you have _earned_ the _Ghosts in the Dark_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Glutton for Fiery Punishment",{
condition_end="achieved(5448)",
description="In Archmage Xylem's Trial of Fire in Azshara, gain 10 stacks of Fire Dancing without taking damage.",
},[[
step
_Stand on the red fire runes_ without getting hit by fire 10 times in a row
|tip You can see which runes will shoot fire up because they will have a little flame in their center a few seconds before the fire shoots up. Follow the Blood Elf, he always runs to a safe spot.
_Gain_ #10# stacks of Fire Dancing without taking damage |achieve 5448 |goto Azshara 33.4,23.5
step
Congratulations, you have _earned_ the _Glutton for Fiery Punishment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Glutton for Icy Punishment",{
condition_end="achieved(5546)",
description="In Archmage Xylem's Trial of Frost in Azshara, gain 20 stacks of Essence of Ice without taking damage.",
},[[
step
_Run around_ on top of the mountain and get next to the floating white orbs
|tip Don't step on the snowy ground and try not to let the blue mist hit you. It will help to dismiss your pet if you have one. Take your time and stay on the outskirts.
_Gain_ #20# stacks of Essence of Ice without taking damage |achieve 5546 |goto Azshara 62.0,20.5
step
Congratulations, you have _earned_ the _Glutton for Icy Punishment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Glutton for Shadowy Punishment",{
condition_end="achieved(5547)",
description="In Archmage Xylem's Trial of Shadow in Azshara, trap 20 Weeping Souls without taking damage.",
},[[
step
_Click_ the Touch to Begin crystal
|tip It's a big floating purple crystal.
You have to _lure 20 Weeping Souls_ into the purple shadow runes on the ground without getting hit
|tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals. Position yourself so that the Weeping Souls that come out of the portals have to walk over the shadow runes on the ground in order to get to you.
_IMMEDIATELY_ try to mount up
|tip If you don't make it you'll have to do this the hard way!
_Trap_ #20# Weeping Souls of without taking damage |achieve 5547 |goto Azshara 31.0,27.5
step
Congratulations, you have _earned_ the _Glutton for Shadowy Punishment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Darkshore Quests",{
condition_end="achieved(4928)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Darkshores Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 90 quests in Darkshore_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Darkshore (11-16)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)"
Earn the _Darkshore Quests_ achievement |achieve 4928
step
_Congratulations!_
You have earned the _Darkshore Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Silithus Quests",{
condition_end="achieved(4934)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Silithus Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 19 quests in Silithus_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Silithus (55-56)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Silithus (55-56)\\Silithus (55-56)"
Earn the _Silithus Quests_ achievement |achieve 4934
step
_Congratulations!_
You have earned the _Silithus Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Feralas Quests",{
condition_end="achieved(4932)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Feralas Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 19 quests in Feralas_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Feralas (37-41)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Feralas (37-41)\\Feralas (37-41)"
Earn the _Feralas Quests_ achievement |achieve 4932
step
_Congratulations!_
You have earned the _Feralas Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Desolace Quests",{
condition_end="achieved(4930)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Desolace Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 55 quests in Desolace_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Desolace (33-35)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Desolace (33-37)\\Desolace (33-35)"
Earn the _Desolace Quests_ achievement |achieve 4930
step
_Congratulations!_
You have earned the _Desolace Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Un'Goro Crater Quests",{
condition_end="achieved(4939)",
author="support@zygorguides.com",
startlevel=16,
keywords={"Ungoro"},
description="This guide will walk you through completing the \"Un'Goro Crater Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 41 quests in Un'Goro Crater_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Un'Goro Crater (55-58)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Un'Goro Crater (55-58)\\Un'Goro Crater (55-58)"
Earn the _Un'Goro Crater Quests_ achievement |achieve 4939
step
_Congratulations!_
You have earned the _Un'Goro Crater Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Felwood Quests",{
condition_end="achieved(4931)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Felwood Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 55 quests in Felwood_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Felwood (48-49)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Felwood (48-51)\\Felwood (48-49)"
Earn the _Felwood Quests_ achievement |achieve 4931
step
_Congratulations!_
You have earned the _Felwood Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Tanaris Quests",{
condition_end="achieved(4935)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Tanaris Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 40 quests in Tanaris_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Tanaris (45-47)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Tanaris (45-48)\\Tanaris (45-47)"
Earn the _Tanaris Quests_ achievement |achieve 4935
step
_Congratulations!_
You have earned the _Tanaris Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Thousand Needles Quests",{
condition_end="achieved(4938)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Thousand Needles Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 60 quests in Thousand Needles_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Thousand Needles (41-45)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Thousand Needles (41-45)\\Thousand Needles (41-45)"
Earn the _Thousand Needles Quests_ achievement |achieve 4938
step
_Congratulations!_
You have earned the _Thousand Needles Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Dustwallow Marsh Quests",{
condition_end="achieved(4929)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Dustwallow Marsh Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 60 quests in Dustwallow Marsh_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Dustwallow Marsh (37-41)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Dustwallow Marsh (37-41)\\Dustwallow Marsh (37-41)"
Earn the _Dustwallow Marsh Quests_ achievement |achieve 4929
step
_Congratulations!_
You have earned the _Dustwallow Marsh Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Southern Barrens Quests",{
condition_end="achieved(4937)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Southern Barrens Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 60 quests in the Southern Barrens_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Southern Barrens (33-35)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Southern Barrens (33-37)\\Southern Barrens (33-35)"
Earn the _Southern Barrens Quests_ achievement |achieve 4937
step
_Congratulations!_
You have earned the _Southern Barrens Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Stonetalon Mountains Quests",{
condition_end="achieved(4936)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Stonetalon Mountains Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 55 quests in the Stonetalon Mountains_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Stonetalon Mountains (27-33)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Stonetalon Mountains (27-33)\\Stonetalon Mountains (27-33)"
Earn the _Stonetalon Mountains Quests_ achievement |achieve 4936
step
_Congratulations!_
You have earned the _Stonetalon Mountains Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Ashenvale Quests",{
condition_end="achieved(4925)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Ashenvale Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 70 quests in Ashenvale_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Ashenvale (21-27)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Ashenvale (21-27)\\Ashenvale (21-27)"
Earn the _Ashenvale Quests_ achievement |achieve 4925
step
_Congratulations!_
You have earned the _Ashenvale Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Winterspring Quests",{
condition_end="achieved(4940)",
author="support@zygorguides.com",
startlevel=16,
description="This guide will walk you through completing the \"Winterspring Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 58 quests in Winterspring_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Winterspring (51-52)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)"
Earn the _Winterspring Quests_ achievement |achieve 4940
step
_Congratulations!_
You have earned the _Winterspring Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Bloodmyst Isle Quests",{
condition_end="achieved(4926)",
author="support@zygorguides.com",
startlevel=16,
keywords={"Bloodmyst","Isle","Quests"},
description="This guide will walk you through completing the \"Bloodmyst Isle Quests\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 58 quests in Bloodmyst Isle_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Bloodmyst Isle (11-12)" guide |confirm |next "Zygor's Leveling Guides\\Classic (1-60)\\Kalimdor 1-60\\Bloodmyst Isle (11-20)\\Bloodmyst Isle (11-12)"
Earn the _Bloodmyst Isle Quests_ achievement |achieve 4926
step
_Congratulations!_
You have earned the _Bloodmyst Isle Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Blade's Edge Bomberman",{
condition_end="achieved(1276)",
description="Complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group.",
},[[
step
talk Chu'a'lor##23233
accept The Crystals##11025 |goto Blade's Edge Mountains 28.8,57.5
step
kill Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
collect 5 Apexis Shard##32569 |q The Crystals##11025/1 |goto Blade's Edge Mountains 29.5,63.1
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto Blade's Edge Mountains 28.8,57.5
accept An Apexis Relic##11058 |goto Blade's Edge Mountains 28.8,57.5
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.4,57.7
step
kill Mo'arg Extractor##22304+, Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
collect 10 Apexis Shard##32569 |goto Blade's Edge Mountains 29.5,63.1
step
click Fel Crystalforge##7391
buy 1 Unstable Flask of the Beast##32598 |condition itemcount(32598) >= 1
collect Unstable Flask of the Beast##32598 |q Our Boy Wants To Be A Skyguard Ranger##11030/1 |goto Blade's Edge Mountains 32.8,40.5
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.4,57.6
step
talk Chu'a'lor##23233
accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.8,57.5
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.5,52.7
step
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |only if not Druid |goto Blade's Edge Mountains 27.6,52.9
accept Bombing Run##11102 |only Druid |goto Blade's Edge Mountains 27.6,52.9
step
_Use_ your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the ground around this area.
_Destroy_ #15# Fel Cannonball Stacks |q Bombing Run##11010/1 |goto Blade's Edge Mountains 33.3,44.0
only if not Druid
step
use Skyguard Bombs##32456
|tip Use your Skyguard Bombs on Fel Cannonballs Stacks.
|tip They look like piles of gray stones on the ground around this area.
_Destroy_ #15# Fel Cannonball Stacks |q Bombing Run##11102/1 |goto Blade's Edge Mountains 33.3,44.0
only Druid
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |only if not Druid |goto Blade's Edge Mountains 27.6,52.9
turnin Bombing Run##11102 |only Druid |goto Blade's Edge Mountains 27.6,52.9
step
talk Sky Sergeant Vanderlip##23120
_Make sure_ you're not in a group
|tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.6,52.9
step
_HURRY!  HURRY!_
_Use_ the Skyguard Bombs to destroy the Fel Cannonball Stacks |use Skyguard Bombs##32456
|tip Bomb your way from here toward the Skyguard Outpost and remember to KEEP MOVING!
_Destroy_ #15# Fel Cannonball Stacks |q Bomb Them Again!##11023/1 |goto Blade's Edge Mountains 37.7,38.2
|tip They look like stacks of cannon balls next to the Fel Cannons, they have red markers over them.
step
_HURRY!  HURRY!_
|tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.6,52.9
Earn the Blade's Edge Bomberman achievement!
step
Too slow! You'll have to try again! |only if not achieved(1276)
Congratulations, you have _earned_ the _Blade's Edge Bomberman_ achievement! |only if achieved(1276)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Bombs Away",{
condition_end="achieved(1275)",
description="Complete the Fires Over Skettis quest in under 2 minutes 15 seconds while not in a group.",
},[[
step
talk Yuula##23449
accept To Skettis!##11098 |goto Shattrath City 64.2,42.3
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest 64.5,66.7
step
talk Sky Sergeant Doryn##23048
_Make sure_ you're not in a group
|tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
accept Fires Over Skettis##11008 |goto Terokkar Forest 64.5,66.7
step
_HURRY!  HURRY!_
use Skyguard Blasting Charges##32406
|tip Use your Skyguard Blasting Charges to destroy the Monstrous Kaliri Eggs.
|tip They look like big white egg cocoons all over the tops of buildings in Skettis. Bomb your way to here and fly toward the Blackwind Landing and remember to KEEP MOVING and hit as many eggs as you can!
_Destroy_ #20# Monstrous Kaliri Egg |q Fires Over Skettis##11008/1 |goto Terokkar Forest 74.5,88.3
step
_HURRY!  HURRY!_
|tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.5,66.7
step
Too slow! You'll have to try again! |only if not achieved(1275)
Congratulations, you have _earned_ the _Bombs Away_ achievement! |only if achieved(1275)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Into the Nether",{
condition_end="achieved(1194)",
author="support@zygorguides.com",
startlevel=66,
description="This guide will walk you through completing the \"Into the Nether\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 120 quests in the Netherstorm_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Netherstorm (68-70)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Netherstorm (68-70)"
Earn the _Into the Nether_ achievement |achieve 1194
step
_Congratulations!_
You have earned the _Into the Nether_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\On the Blade's Edge",{
condition_end="achieved(1193)",
author="support@zygorguides.com",
startlevel=65,
keywords={"Blades"},
description="This guide will walk you through completing the \"On the Blade's Edge\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 86 quests in Blade's Edge Mountains_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Blade's Edge Mountains (67-68)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Blade's Edge Mountains (67-68)"
Earn the _On the Blade's Edge_ achievement |achieve 1193
step
_Congratulations!_
You have earned the _On the Blade's Edge_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Nagrand Slam",{
condition_end="achieved(1192)",
author="support@zygorguides.com",
startlevel=64,
description="This guide will walk you through completing the \"Nagrand Slam\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 75 quests in Nagrand_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Nagrand (65-67)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Nagrand (65-67)"
Earn the _Nagrand Slam_ achievement |achieve 1192
step
_Congratulations!_
You have earned the _Nagrand Slam_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Terror of Terokkar",{
condition_end="achieved(1191)",
author="support@zygorguides.com",
startlevel=64,
description="This guide will walk you through completing the \"Terror of Terokkar\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 63 quests in Terokkar Forest_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Terokkar Forest (64-65)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Terokkar Forest (64-65)"
Earn the _Terror of Terokkar_ achievement |achieve 1191
step
_Congratulations!_
You have earned the _Terror of Terokkar_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\To Hellfire and Back",{
condition_end="achieved(1189)",
author="support@zygorguides.com",
startlevel=58,
description="This guide will walk you through completing the \"To Hellfire and Back\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 76 quests in Hellfire Peninsula_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Hellfire Peninsula (60-62)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Hellfire Peninsula (60-62)"
Earn the _To Hellfire and Back_ achievement |achieve 1189
step
_Congratulations!_
You have earned the _To Hellfire and Back_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Shadow of the Betrayer",{
condition_end="achieved(1195)",
author="support@zygorguides.com",
startlevel=58,
description="This guide will walk you through completing the \"Shadow of the Betrayer\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 90 quests in Shadowmoon Valley_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Shadowmoon Valley (68-70)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Shadowmoon Valley (68-70)"
Earn the _Shadow of the Betrayer_ achievement |achieve 1195
step
_Congratulations!_
You have earned the _Shadow of the Betrayer_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Mysteries of the Marsh",{
condition_end="achieved(1190)",
author="support@zygorguides.com",
startlevel=60,
description="This guide will walk you through completing the \"Mysteries of the Marsh\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 52 quests in Zangarmarsh_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Zangarmarsh (62-64)" guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-70)\\Zangarmarsh (62-64)"
Earn the _Mysteries of the Marsh_ achievement |achieve 1190
step
_Congratulations!_
You have earned the _Mysteries of the Marsh_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\D.E.H.T.A's Little P.I.T.A.",{
condition_end="achieved(561)",
description="This guide will walk you through completing the D.E.H.T.A. questline in Borean Tundra.",
},[[
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto Borean Tundra 57,44.3
accept Ears of Our Enemies##11866 |goto Borean Tundra 57,44.3
accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.3
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto Borean Tundra 57.3,44.1
step
talk Killinger the Den Watcher##25812
|tip He walks around the small pond in the middle of the camp.
accept Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
accept Unfit for Death##11865 |goto Borean Tundra 56.8,44
stickystart "lootdiver"
step
use D.E.H.T.A. Trap Smasher##35228
|tip Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves.
Free #8# Mammoth Calves |q Help Those That Cannot Help Themselves##11876/1 |goto Borean Tundra 53.8,40.6
modelnpc Trapped Mammoth Calf##25850
step "lootdiver"
kill 10 Loot Crazed Diver##25836 |q Happy as a Clam##11869/1 |goto Borean Tundra 53.4,42.7
kill Loot Crazed Diver##25836+ |n
collect 15 Nesingwary Lackey Ear##35188 |q Ears of Our Enemies##11866/1 |goto Borean Tundra 53.4,42.7
step
kill "Lunchbox"##25968 |q Ned, Lord of Rhinos...##11884/2 |goto Borean Tundra 46.4,40
kill Nedar, Lord of Rhinos##25801 |q Ned, Lord of Rhinos...##11884/1 |goto Borean Tundra 46.4,40
|tip He walks around this area. Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
Stand inside the Caribou Traps on the ground
|tip They look like metal spiked traps on the ground.
Use your Pile of Fake Furs |use Pile of Fake Furs##35127
Trap #8# Nesingwary Trappers |q Unfit for Death##11865/1 |goto Borean Tundra 56.2,50.5
step
Make sure you don't have Animal Blood on you. If you do, go for a swim to wash it off, before approaching the druids |nobuff Ability_Seal
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto Borean Tundra 57,44.3
turnin Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.3
accept Khu'nok Will Know##11878 |goto Borean Tundra 57,44.3
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto Borean Tundra 57.3,44.1
accept The Abandoned Reach##11870 |goto Borean Tundra 57.3,44.1
step
talk Killinger the Den Watcher##25812
|tip He walks around the small pond in the middle of the camp.
turnin Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto Borean Tundra 56.8,44
accept The Culler Cometh##11868 |goto Borean Tundra 56.8,44
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q Khu'nok Will Know##11878/1 |goto Borean Tundra 59.5,30.4
|tip The calf is slow so don't move too fast or you'll lose it.
modelnpc Orphaned Mammoth Calf##25861
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto Borean Tundra 59.5,30.4
accept Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 59.5,30.4
step
Ride around and find a Wooly Mammoth Bull |n
Click it to ride it |invehicle
modelnpc Wooly Mammoth Bull##25743
step
Use the skills on your mammoth action bar to do the following:
kill Kaw the Mammoth Destroyer##25802
click Kaw's War Halberd##7687
collect Kaw's War Halberd##35234 |q Kaw the Mammoth Destroyer##11879/1 |goto Borean Tundra 53.7,23.9
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 57,44.3
step
kill Karen "I Don't Caribou" the Culler##25803 |q The Culler Cometh##11868/1 |goto Borean Tundra 57.3,56.5
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto Borean Tundra 57.8,55.1
accept Not On Our Watch##11871 |goto Borean Tundra 57.8,55.1
step
kill Northsea Thug##25843+ |n
click Shipment of Animal Parts##7678
collect 12 Shipment of Animal Parts##35222 |q Not On Our Watch##11871/1 |goto Borean Tundra 59.1,55.9
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871 |goto Borean Tundra 57.8,55.1
accept The Nefarious Clam Master...##11872 |goto Borean Tundra 57.8,55.1
step
kill Clam Master K##25800 |q The Nefarious Clam Master...##11872/1 |goto Borean Tundra 61.5,66.5
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto Borean Tundra 57.3,44.1
step
talk Arch Druid Lathorius##25809
accept The Assassination of Harold Lane##11892 |goto Borean Tundra 57.0,44.2
step
use Cenarion Horn##35293
|tip Use the Cenarion Horn in your bags to help you fight Harold Lane.
kill Harold Lane##25804 |q The Assassination of Harold Lane##11892/1 |goto Borean Tundra 50.0,41.4
step
talk Arch Druid Lathorius##25809
turnin The Assassination of Harold Lane##11892 |goto Borean Tundra 57.0,44.2
step
Congratulations, you have earned the D.E.T.H.A's Little P.I.T.A. achievement! |achieve 561
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Guru of Drakuru",{
condition_end="achieved(1596)",
description="Complete the main storyline quests involving Drakuru.",
},[[
step
In order to complete this achievement, you will have to complete a large series of quests, as well as go through the Instance Drak'tharon Keep
step
There are 2 parts to the Guru of Drakuru Achievement:
Cleansing Drak'Tharon |achieve 1596/1
Betrayal |achieve 1596/2
step
#include CleansingDrakTharon
step
Earn Cleansing Drak'tharon |achieve 1596/1
step
#include BetrayalDrakuru
step
talk Stefan Vadu##28518
turnin Betrayal##12713 |goto Zul'Drak 14.1,73.8
step
Earn Betrayal |achieve 1596/2
step
Earn Guru of Drakuru |achieve 1596
step
Congratulations! You've earned the Guru of Drakuru achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Honorary Frenzyheart",{
condition_end="achieved(961)",
description="This guide will walk you through completing the 8 daily quests for the Frenzyheart.",
},[[
step
The 8 Dailies are as follows
Complete the "Chicken Party!" daily |achieve 961/1
Complete the "Tools of War" daily |achieve 961/2
Complete the "A Hero's Headgear" daily |achieve 961/3
Complete the "Secret Strength of the Frenzyheart" daily |achieve 961/4
Complete the "Strength of the Tempest" daily |achieve 961/5
Complete the "The Heartblood's Strength" daily |achieve 961/6
Complete the "Kartak's Rempage" daily |achieve 961/7
Complete the "Rejek: First Blood" daily |achieve 961/8
confirm
step
Routing |next "achieve" |only if default
Routing |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Sholazar Basin\\Frenzyheart Tribe Dailies" |only if not achieved(961)
step
label "achieve"
Congratulations, you have earned the Honorary Frenzyheart achievement! |achieve 961
step
Congratulations, you have earned the Honorary Frenzyheart achievement! |only if achieved(961)
You'll need to come back for another set of dailies to earn this achievment.  |only if not achieved(961)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Mine Sweeper",{
condition_end="achieved(1428)",
description="Get caught in 10 consecutive land mine explosions in the Sparksocket Minefield without landing.",
},[[
step
You will see a field of mines. Use a ground mount and run into them as fast as you can. There will be a short grace period to find the next mine before the timer runs out.
_Get "caught"_ by #10# mines consecutively |achieve 1428 |goto The Storm Peaks 36.2,86.9
step
Congratulations, you have _earned_ the _Mine Sweeper_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Rapid Defense",{
condition_end="achieved(1277)",
description="This guide will walk you through completing the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.",
},[[
step
talk Lord Afrasastrasz##27575
accept Defending Wyrmrest Temple##12372 |goto Dragonblight 59.2,54.3
step
talk Wyrmrest Defender##27629
Tell him "_I am ready to get into the fight._"
Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
kill 3 Azure Dragon |q Defending Wyrmrest Temple##12372/1 |goto Dragonblight 58.3,55.2
kill 5 Azure Drake |q Defending Wyrmrest Temple##12372/2 |goto Dragonblight 58.3,55.2
step
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
Destabilize the Azure Dragonshrine |q Defending Wyrmrest Temple##12372/3 |goto Dragonblight 55.1,66.4
step
Make your way here |goto Dragonblight 58.7,54.5 < 5
Click the red arrow to get off the dragon on the middle level of the temple |script VehicleExit() |outvehicle |c
step
talk Lord Afrasastrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto Dragonblight 59.2,54.3
step
Congratulations, you have earned the Rapid Defense achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Savior of the Oracles",{
condition_end="achieved(962)",
description="This guide will walk you through completing the 8 daily quests for the Oracles.",
},[[
step
The 8 Dailies are as follows
Complete the "Will of the Titans" daily |achieve 962/1
Complete the "Mastery of the Crystals" daily |achieve 962/2
Complete the "Power of the Great Ones" daily |achieve 962/3
Complete the "Song of Reflection" daily |achieve 962/4
Complete the "A Cleansing Song" daily |achieve 962/5
Complete the "Song of Fecundity" daily |achieve 962/6
Complete the "Song of Wind and Water" daily |achieve 962/7
Complete the "Appeasing the Great Rain Stone" daily |achieve 962/8
confirm
step
#include "Oracles_PreQuests"
step
#include "Oracles_Dailies"
step
Congratulations, you have earned the Savior of the Oracles achievement! |only if achieved(962)
You'll need to come back for another set of dailies to earn this achievment. |only if not achieved(962)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Veteran of the Wrathgate",{
condition_end="achieved(547)",
description="This guide will walk you through completing the Dragonblight quests leading up to and including the Return to Angrathar.",
},[[
step
talk Private Casey##26186
accept The Lost Courier##12157 |goto Borean Tundra 82.2,46.4
step
talk Courier Lanson##27060
turnin The Lost Courier##12157 |goto Dragonblight 28.8,56.2
accept Of Traitors and Treason##12171 |goto Dragonblight 28.8,56.2
step
talk Palena Silvercloud##26881
turnin Of Traitors and Treason##12171 |goto Dragonblight 29.2,55.3
accept High Commander Halford Wyrmbane##12174 |goto Dragonblight 29.2,55.3
step
talk High Commander Halford Wyrmbane##27136
turnin High Commander Halford Wyrmbane##12174 |goto Dragonblight 78.61,48.2
accept Naxxramas and the Fall of Wintergarde##12235 |goto Dragonblight 78.61,48.2
step
talk Gryphon Commander Urik##27317
turnin Naxxramas and the Fall of Wintergarde##12235 |goto Dragonblight 77.1,50.1
accept Flight of the Wintergarde Defender##12237 |goto Dragonblight 77.1,50.1
step
use Wintergarde Gryphon Whistle##37287
Use your Rescue Villager ability on your hotbar on Helpless Wintergarde Villagers on the ground around this area |petaction Rescue Villager
Fly them back to Gryphon Commander Urik at [77.1,50.1] |n |petaction Soar
Use your Drop Off Villager ability on your hotbar |petaction Drop Off Villager
Rescue #10# Helpless Villagers |q Flight of the Wintergarde Defender##12237/1 |goto Dragonblight 83.6,48.8
step
Click the red arrow button on your hotbar to get off the gryphon |script VehicleExit()|outvehicle
step
talk Gryphon Commander Urik##27317
turnin Flight of the Wintergarde Defender##12237 |goto Dragonblight 77.1,50.1
accept Return to the High Commander##12251 |goto Dragonblight 77.1,50.1
step
talk High Commander Halford Wyrmbane##27136
turnin Return to the High Commander##12251 |goto Dragonblight 78.61,48.2
accept Rescue from Town Square##12253 |goto Dragonblight 78.61,48.2
accept The Demo-gnome##12275 |goto Dragonblight 78.61,48.2
step
talk Siege Engineer Quarterflash##27159
turnin The Demo-gnome##12275 |goto Dragonblight 77.8,50.3
accept The Search for Slinkin##12276 |goto Dragonblight 77.8,50.3
step
Kill Vengeful Geists next to Trapped Wintergarde Villagers
|tip The Trapped Wintergarde Villagers looked like scared villagers getting harrassed by Vengeful Geists around this area and inside buildings.
Rescue #6# Trapped Wintergarde Villagers |q Rescue from Town Square##12253/1 |goto Dragonblight 79.9,49.7
step
talk High Commander Halford Wyrmbane##27136
turnin Rescue from Town Square##12253 |goto Dragonblight 78.61,48.2
accept Find Durkon!##12309 |goto Dragonblight 78.61,48.2
step
talk Cavalier Durkon##27318
turnin Find Durkon!##12309 |goto Dragonblight 79.1,53.2
accept The Noble's Crypt##12311 |goto Dragonblight 79.1,53.2
step
kill Necrolord Amarion##27508 |q The Noble's Crypt##12311/1 |goto Dragonblight 78.6,52.4
click Flesh-bound Tome##3731
accept Secrets of the Scourge##12312
step
talk Cavalier Durkon##27318
turnin The Noble's Crypt##12311 |goto Dragonblight 79.1,53.2
turnin Secrets of the Scourge##12312 |goto Dragonblight 79.1,53.2
accept Mystery of the Tome##12319 |goto Dragonblight 79.1,53.2
step
talk High Commander Halford Wyrmbane##27136
turnin Mystery of the Tome##12319 |goto Dragonblight 78.61,48.2
accept Understanding the Language of Death##12320 |goto Dragonblight 78.61,48.2
step
talk Inquisitor Hallard##27316
turnin Understanding the Language of Death##12320 |goto Dragonblight 76.8,47.4
accept A Righteous Sermon##12321 |goto Dragonblight 76.8,47.4
step
Watch the dialogue
|tip Downstairs in the fort, in front of a jail cell.
Hear the Righteous Sermon |q A Righteous Sermon##12321/1 |goto Dragonblight 76.8,47.4
step
talk High Commander Halford Wyrmbane##27136
turnin A Righteous Sermon##12321 |goto Dragonblight 78.61,48.2
step
talk Siege Engineer Quarterflash##27159
accept The Bleeding Ore##12272 |goto Dragonblight 77.8,50.3
stickystart "ore"
step
Enter the cave here |goto Dragonblight/0 80.4,45.1 < 10 |walk
talk Slinkin the Demo-gnome##27412
turnin The Search for Slinkin##12276 |goto Dragonblight 81.5,42.2
accept Leave Nothing to Chance##12277 |goto Dragonblight 81.5,42.2
step
click Wintergarde Mine Bomb##191
collect Wintergarde Mine Bomb##37465 |c |goto Dragonblight 80.7,41.3
step
use Wintergarde Mine Bomb##37465
|tip Use your Wintergarde Mine Bomb in the doorway.
|tip It's an entrance to the mine.
Destroy the Lower Wintergarde Mine Shaft |q Leave Nothing to Chance##12277/2 |goto Dragonblight 80.2,45.1
step
use Wintergarde Mine Bomb##37465
|tip Use your Wintergarde Mine Bomb in the doorway.
|tip It's an entrance to the mine. Go outside form the lower entrance and turn around.
Destroy the Upper Wintergarde Mine Shaft |q Leave Nothing to Chance##12277/1 |goto Dragonblight 80.4,44.8
step "ore"
click Strange Ore##7836
collect 10 Strange Ore##37359 |q The Bleeding Ore##12272/1
step
talk Siege Engineer Quarterflash##27159
turnin Leave Nothing to Chance##12277 |goto Dragonblight 77.8,50.3
turnin The Bleeding Ore##12272 |goto Dragonblight 77.8,50.3
accept Understanding the Scourge War Machine##12281 |goto Dragonblight 77.8,50.3
step
talk High Commander Halford Wyrmbane##27136
turnin Understanding the Scourge War Machine##12281 |goto Dragonblight 78.61,48.2
accept Into Hostile Territory##12325
step
talk Duke August Foehammer##27157
turnin Into Hostile Territory##12325 |goto Dragonblight 89.6,46.4
accept Steamtank Surprise##12326 |goto Dragonblight 89.6,46.4
step
clicknpc Alliance Steam Tank##27587 |goto Dragonblight 89.6,45.5 < 10 |walk
Use your hotbar abilities to
kill 6 Plague Wagon##27607 |q Steamtank Surprise##12326/1 |goto Dragonblight 85.7,49.8
step
Use your hotbar abilities to
Drop off 7th Legion Elite |q Steamtank Surprise##12326/2 |goto Dragonblight 85.7,49.8
step
Enter the crypt here |goto Dragonblight/0 85.9,50.0 < 10 |walk
talk Ambo Cash##1293
turnin Steamtank Surprise##12326 |goto Dragonblight 85.94,50.86
accept Scattered To The Wind##12455 |goto Dragonblight 85.94,50.86
step
Leave the crypt here |goto Dragonblight/0 85.9,50.0 < 10 |walk
click Wintergarde Munitions Crate##6708
|tip They are scattered throughout the area.
collect 8 Wintergarde Munitions##37879 |q Scattered To The Wind##12455/1 |goto Dragonblight/0 85.1,49.3
step
Enter the crypt here |goto Dragonblight/0 85.9,50.0 < 10 |walk
talk Ambo Cash##1293
turnin Scattered To The Wind##12455 |goto Dragonblight 85.94,50.86
accept The Chain Gun And You##12457 |goto Dragonblight 85.94,50.86
step
clicknpc 7th Legion Chain Gun##27714
Call out for an injured soldier using your cannon abilites
|tip Keep shooting the ghouls as the soldier run towwards you to save them.
Save #8# Injured 7th Legion Soldiers |q The Chain Gun And You##12457/1 |goto Dragonblight/0 86.2,51.0
modelnpc Mindless Ghoul##27556
step
talk Ambo Cash##1293
turnin The Chain Gun And You##12457 |goto Dragonblight 85.94,50.86
accept Plunderbeard Must Be Found!##12463 |goto Dragonblight 85.94,50.86
step
Go down the stairs |goto Dragonblight/0 85.7,51.6 < 5 |only if walking
Enter the tunnel |goto Dragonblight 84.5,54.7 < 5 |walk
talk Plunderbeard##27828
turnin Plunderbeard Must Be Found!##12463 |goto Dragonblight 84.17,54.67
accept Plunderbeard's Journal##12465 |goto Dragonblight 84.17,54.67
step
Move down the tunnel |goto Dragonblight/0 84.2,55.7 < 5 |walk
Keep going |goto Dragonblight/0 83.5,56.0 < 5 |walk
Exit here |goto Dragonblight/0 83.1,54.7 < 5 |walk
kill Dreadbone Construct##27835+, Wailing Soul##27836+
collect Page 4 of Plunderbeard's Journal##37910 |q Plunderbeard's Journal##12465/1 |goto Dragonblight/0 81.9,54.0
collect Page 5 of Plunderbeard's Journal##37911 |q Plunderbeard's Journal##12465/2 |goto Dragonblight/0 81.9,54.0
collect Page 6 of Plunderbeard's Journal##37912 |q Plunderbeard's Journal##12465/3 |goto Dragonblight/0 81.9,54.0
collect Page 7 of Plunderbeard's Journal##37913 |q Plunderbeard's Journal##12465/4 |goto Dragonblight/0 81.9,54.0
step
Enter here |goto Dragonblight/0 83.1,54.7 < 5 |walk
Keep going down the tunnel |goto Dragonblight/0 83.5,56.0 < 5 |walk
Exit here |goto Dragonblight/0 84.4,54.7 < 5 |walk
Go upstairs |goto Dragonblight/0 85.6,52.1 < 5 |walk
talk Ambo Cash##1293
turnin Plunderbeard's Journal##12465 |goto Dragonblight 85.94,50.86
accept Chasing Icestorm: The 7th Legion Front##12466 |goto Dragonblight 85.94,50.86
step
Leave the crypt here |goto Dragonblight/0 85.9,50.0 < 10 |walk
talk Legion Commander Tyralion##27844
turnin Chasing Icestorm: The 7th Legion Front##12466 |goto Dragonblight 64.76,27.93
accept Chasing Icestorm: Thel'zan's Phylactery##12467 |goto Dragonblight 64.76,27.93
step
talk "Wyrmbait"##27843
Tell him "_Wyrmbait, eh? Welp, go fetch us Icestorm_"!
kill Icestorm##26287 |n
click Thel'zan's Phylactery##4712
collect Thel'zan's Phylactery##37920 |q Chasing Icestorm: Thel'zan's Phylactery##12467/1 |goto Dragonblight 64.6,27.5
step
talk High Commander Halford Wyrmbane##27136
turnin Chasing Icestorm: Thel'zan's Phylactery##12467 |goto Dragonblight 78.61,48.2
accept Finality##12472 |goto Dragonblight 78.61,48.2
step
Enter the crypt here |goto Dragonblight/0 81.9,50.7 < 5 |walk
talk Legion Commander Yorik##27857
turnin Finality##12472 |goto Dragonblight 81.2,50.7
accept An End And A Beginning##12473 |goto Dragonblight 81.2,50.7
step
Watch the dialogue
Help fight the battle
kill Thel'zan the Duskbringer##27383 |q An End And A Beginning##12473/1 |goto Dragonblight/0 80.9,50.6
step
Leave the crypt here |goto Dragonblight/0 81.9,50.7 < 5 |walk
talk High Commander Halford Wyrmbane##27136
turnin An End And A Beginning##12473 |goto Dragonblight 78.61,48.2
accept To Fordragon Hold!##12474 |goto Dragonblight 78.61,48.2
step
talk Highlord Bolvar Fordragon##27872
turnin To Fordragon Hold!##12474 |goto Dragonblight 37.8,23.4
accept Audience With The Dragon Queen##12495 |goto Dragonblight 37.8,23.4
step
talk Alexstrasza the Life-Binder##26917
turnin Audience With The Dragon Queen##12495 |goto Dragonblight 59.8,54.7
accept Galakrond and the Scourge##12497 |goto Dragonblight 59.8,54.7
step
talk Torastrasza##26949
turnin Galakrond and the Scourge##12497 |goto Dragonblight 59.5,53.3
accept On Ruby Wings##12498 |goto Dragonblight 59.5,53.3
step
use Ruby Beacon of the Dragon Queen##38302
Click the red dragon to ride it |invehicle
step
Use the abilities on your hotbar
kill 30 Wastes Scavenger##28005 |q On Ruby Wings##12498/1 |goto Dragonblight 57.2,33.1
step
Use the abilities on your hotbar
kill Thiassi the Lightning Bringer##28018, Grand Necrolord Antiok##28006
click Scythe of Antiok##8102
collect Scythe of Antiok##38305|q On Ruby Wings##12498/2 |goto Dragonblight 54.5,31.3
step
talk Alexstrasza the Life-Binder##26917
turnin On Ruby Wings##12498 |goto Dragonblight 59.8,54.7
accept Return To Angrathar##12499 |goto Dragonblight 59.8,54.7
step
talk Highlord Bolvar Fordragon##27872
turnin Return To Angrathar##12499 |goto Dragonblight 37.8,23.4
step
achieve 547
Congratulations, you have earned the Veteran of the Wrathgate achievement! |only if achieved(547)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Icecrown: The Final Goal",{
condition_end="achieved(40)",
author="support@zygorguides.com",
startlevel=77,
description="This guide will walk you through completing the \"Icecrown: The Final Goal\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 140 quests in Icecrown_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Icecrown (78-80)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Icecrown (78-80)"
Earn the _Icecrown: The Final Goal_ achievement |achieve 40
step
_Congratulations!_
You have earned the _Icecrown: The Final Goal_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\The Empire of Zul'Drak",{
condition_end="achieved(36)",
author="support@zygorguides.com",
startlevel=73,
keywords={"Zuldrak"},
description="This guide will walk you through completing the \"The Empire of Zul'Drak\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 100 quests in Zul'Drak_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Zul'Drak (75-77)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Zul'Drak (75-77)"
Earn the _The Empire of Zul'Drak_ achievement |achieve 36
step
_Congratulations!_
You have earned the _The Empire of Zul'Drak_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Into the Basin",{
condition_end="achieved(39)",
author="support@zygorguides.com",
startlevel=73,
description="This guide will walk you through completing the \"Into the Basin\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 75 quests in Sholazar Basin_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Sholazar Basin (77-78)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Sholazar Basin (77-78)"
Earn the _Into the Basin_ achievement |achieve 39
step
_Congratulations!_
You have earned the _Into the Basin_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Might of Dragonblight",{
condition_end="achieved(35)",
author="support@zygorguides.com",
startlevel=71,
description="This guide will walk you through completing the \"Might of Dragonblight\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 115 quests in Dragonblight_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Dragonblight (72-74)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Dragonblight (72-74)"
Earn the _Might of Dragonblight_ achievement |achieve 35
step
_Congratulations!_
You have earned the _Might of Dragonblight_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\The Summit of Storm Peaks",{
condition_end="achieved(38)",
author="support@zygorguides.com",
startlevel=77,
description="This guide will walk you through completing the \"The Summit of Storm Peaks\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 100 quests in The Storm Peaks_
|tip Refer to our leveling guides to achieve this.
Click here to load "The Storm Peaks (78-80)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\The Storm Peaks (78-80)"
Earn the _The Summit of Storm Peaks_ achievement |achieve 38
step
_Congratulations!_
You have earned the _The Summit of Storm Peaks_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Fo' Grizzle My Shizzle",{
condition_end="achieved(37)",
author="support@zygorguides.com",
startlevel=77,
description="This guide will walk you through completing the \"Fo' Grizzle My Shizzle\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 85 quests in the Grizzly Hills_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Gizzly Hills (74-75)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Grizzly Hills (74-75)"
Earn the _Fo' Grizzle My Shizzle_ achievement |achieve 37
step
_Congratulations!_
You have earned the _Fo' Grizzle My Shizzle_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\I've Toured the Fjord",{
condition_end="achieved(34)",
author="support@zygorguides.com",
startlevel=68,
description="This guide will walk you through completing the \"I've Toured the Fjord\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 130 quests in the Howling Fjord_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Howling Fjord (70-72)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Howling Fjord (70-72)"
Earn the _I've Toured the Fjord_ achievement |achieve 34
step
_Congratulations!_
You have earned the _I've Toured the Fjord_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Nothing Boring About Borean",{
condition_end="achieved(33)",
author="support@zygorguides.com",
startlevel=68,
description="This guide will walk you through completing the \"Nothing Boring About Borean\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 130 quests in the Borean Tundra_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Borean Tundra (70-72)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (70-80)\\Borean Tundra (70-72)"
Earn the _Nothing Boring About Borean_ achievement |achieve 33
step
_Congratulations!_
You have earned the _Nothing Boring About Borean_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\And the Meek Shall Inherit Kalimdor",{
condition_end="achieved(5868)",
description="Help critters get revenge on the mean old fire elementals.",
},[[
step
label "MeekInheritStart"
talk Matoclaw##52669
accept Call the Flock##29147 |goto Mount Hyjal 27.2,62.6
confirm
step
talk Mylune##52671
You will only be able to accept one of these quests per day:
accept Punting Season##29101 |goto 27.1,62.0 |or
accept Those Bears Up There##29161 |goto 27.1,62.0 |or
confirm
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
Transform into the Wings of Aviana |invehicle |c |q 29147
only if havequest(29147)
step
Use your Call the Flock ability on your action bar near Alpine Songbirds, Forest Owls, and Goldwing Hawks
|tip They are all birds that fly in the sky all around this area. Alpine Songbirds are small and white. Forest Owls are medium sized and gray. Goldwing Hawks are big and brown.
Gather 12 Alpine Songbirds |q 29147/1 |goto 14.1,41.8
Gather 5 Forest Owls |q 29147/2 |goto 14.1,41.8
Gather 2 Goldwing Hawks |q 29147/3 |goto 14.1,41.8
only if havequest(29147)
step
Click the Complete Quest box that appears under your minimap
turnin Call the Flock##29147
accept Wings Aflame##29148
only if havequest(29147) or completedq(29147)
step
use Quill of the Bird-Queen##69212
kill Millagazor |q 29148/1 |goto 13.4,44.6
|tip One of your Alpine Songbirds must deal the killing blow on Millagazor, or you won't get credit. Luckily, you can summon Millagazor over and over until you get it.
Help an Alpine Songbird Get Revenge on the Mean Old Fire Elementals |achieve 5868/1
only if havequest(29148)
step
Click Children of Tortolla
|tip They look like small turtles on the ground around this area.
Use your Punt Turtle ability to punt the turtle at a Flame Terror
|tip Use your right mouse button to aim.
Help the Children of Tortolla Get Revenge on the Mean Old Fire Elementals |achieve 5868/3 |goto 23.6,60.1
only if havequest(29101)
step
Click the Climbing Tree
|tip They look like small ladders leaning aginst the trees around this area.
Click Hyjal Bear Cubs in the tree
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw a cub at a living Brimstone Hound
|tip They look like big orange fire beasts on the ground all around this area.
Help a Hyjal Bear Cub Get Revenge on the Mean Old Fire Elementals |achieve 5868/2 |goto 14.3,33.0
only if havequest(29161)
step
kill Brimstone Hound##52795
|tip There are 2 squirrels sitting on this huge gray rock. Fight a Brimstone Hound next to this rock until one of the squirrels throws an acorn at it. You will hear a Bonk sound.
Help an Angry Little Squirrel Get Revenge on the Mean Old Fire Elementals |achieve 5868/4 |goto 12.7,34.8
Earn the And the Meek Shall Inherit Kalimdor achievement! |achieve 5868
step
Congratulations! You've earned the And the Meek Shall Inherit Kalimdor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Beware of the 'Unbeatable?' Pterodactyl",{
condition_end="achieved(4959)",
description="Complete the jousting quests in Mount Hyjal up to and including Egg Wave.",
endlevel=81
},[[
step
click Hero's Call Board##10016
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City 62.9,71.6
step
When you enter Stormwind City:
You will automatically accept a quest
accept A Personal Summons##28825
step
talk Naraat the Earthspeaker##45226
turnin A Personal Summons##28825 |goto Stormwind City 74.5,19.0
accept Eye of the Storm##28826 |goto Stormwind City 74.5,19.0
step
click Waters of Farseeing##445
Peer into the Waters of Farseeing |q 28826/1 |goto 74.4,19.5
step
talk Naraat the Earthspeaker##45226
turnin Eye of the Storm##28826 |goto 74.5,19.0
step
talk Cenarion Emissary Jademoon##15187
Ask her to send you to Moonglade |goto 82.6,28.2 < 10
Teleport to Moonglade |goto Moonglade |noway |c
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade 45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade 45.5,44.9
step
clicknpc Aronus##39140 |goto 46.1,45.6 < 10
You will fly to Mount Hyjal |goto Mount Hyjal |noway |c
step
talk Sebelia##40843
home Nordrassil |goto 63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal 62.0,24.9
accept Protect the World Tree##25317 |goto Mount Hyjal 62.0,24.9
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.7
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.1,22.5
step
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto 67.1,22.6
click Juniper Berry##28+
collect 4 Juniper Berries##53009 |n
use Juniper Berries##53009
|tip Use your Juniper Berries on Faerie Dragons.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926 |q 25370/1 |goto 67.1,22.6
modelnpc Faerie Dragon##39921
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.1,22.5
accept Flames from Above##25574 |goto 64.1,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.7
step
Stand in this spot
use Tholo's Horn##55122
|tip Use Tholo's Horn to call for an emerald dragon.
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.7,15.9
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.1,22.5
step
talk Malfurion Stormrage##54173
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.6,35.5
stickystart "twiflavan"
step
click Charred Staff Fragment##758+
collect 8 Charred Staff Fragment |q 25472/1 |goto 48.4,29.3
You can find more fragments at [44.7,33.3]
step "twiflavan"
kill 4 Twilight Flamecaller##38926 |q 25319/1 |goto 47.2,25.6
kill 10 Twilight Vanquisher##38913 |q 25319/2 |goto 47.2,25.6
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
use Flameseer's Staff##53107
|tip Use your Flameseer's Staff on Blazebound Elementals.
kill 30 Unbound Flame Spirit##33838+ |q 25323/1 |goto 44.5,33.4
modelnpc Blazebound Elemental##38896
step
talk Malfurion Stormrage##54173
turnin Flamebreaker##25323
accept The Return of Baron Geddon##25464
step
use Flameseer's Staff##54463
|tip Use your Flameseer's Staff on Baron Geddon.
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.0,26.9
|tip Run away when you see Galrond of the Claw yell "Look out!".
modelnpc 40147
step
talk Malfurion Stormrage##54173
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.6,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,18.9
accept The Captured Scout##25320 |goto 48.4,18.9
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key |q 25321/1 |goto 44.5,21.5
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,18.9
accept A Prisoner of Interest##25324 |goto 48.4,18.9
step
Enter the cave |goto 52.5,17.3 < 10 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
talk Alysra##38917
turnin Through the Dream##25325 |goto 52.2,17.4
accept Return to Nordrassil##25578 |goto 52.2,17.4
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto 62.0,24.9
accept The Return of the Ancients##25584 |goto 62.0,24.9
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.7,19.4
accept Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.7,19.7
accept In the Rear With the Gear##25234 |goto 35.7,19.7
step
kill 6 Twilight Hunter##39437 |q 25255/1 |goto 38.1,23.0
kill 4 Twilight Proveditor##39436 |q 25233/1 |goto 38.1,23.0
click Twilight Supplies##9379+
|tip The slaves will drop them after you kill the Twilight Slavedriver.
collect 36 Twilight Supplies |q 25234/1 |goto 38.1,23.0
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.7,19.7
turnin In the Rear With the Gear##25234 |goto 35.7,19.7
accept The Voice of Goldrinn##25268 |goto 35.7,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto 30.1,31.3
accept Goldrinn's Ferocity##25271 |goto 30.1,31.3
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense |q 25271/1 |goto 29.3,30.3
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto 30.1,31.3
accept Lycanthoth the Corruptor##25273 |goto 30.1,31.3
step
use Lycanthoth's Incense##52682
|tip Use Lycanthoth's Incense next to Lycanthoth's Altar.
|tip It's inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto 32.4,37.3
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto 32.3,37.0
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto 29.6,29.3
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto 28.2,29.8
accept Cleaning House##25278 |goto 28.2,29.8
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.6,30.2
step
click Bitterblossom##7444
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.2
step
click Stonebloom##9386
collect Stonebloom##52726 |q 25297/1 |goto 27.6,34.2
step
click Eye of Twilight##7011
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##9569
|tip It is inside the brazier.
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##9387
turnin From the Mouth of Madness##25297 |goto 28.4,36.4
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.4
step
Enter the cave |goto 27.0,36.0 < 10 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
stickystart "miniongargol"
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##470
turnin Mastering Puppets##25301 |goto 25.8,41.7
accept Elementary!##25303 |goto 25.8,41.7
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.7,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
click Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.7
accept Return to Duskwhisper##25312 |goto 25.8,41.7
step "miniongargol"
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Kill #8# Minions of Gar'gol |q 25278/1
|tip This should be done while inside the cave.
step
talk Twilight Servitor##39644+
Select <"Administor the drought">
Free #8# Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave |goto 27.1,36.0 < 10 |walk
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto 28.2,29.8
accept Sweeping the Shelf##25352 |goto 28.2,29.8
accept Lightning in a Bottle##25353 |goto 28.2,29.8
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto 27.4,39.2
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto 27.4,39.2
step
click Lightning Channel##202731
collect Charged Condenser Jar##52834 |q 25353/1 |goto 27.4,39.2
step
use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
Go inside the blue portal |goto 26.2,41.0 < 10 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
use Smoldering Core##55123
|tip Use your Smoldering Cores next to Twilight Anvils.
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
click Twilight Arms Crate##9393+
Destroy #10# Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
turnin Crushing the Cores##25577 |goto 26.3,41.9
accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
step
kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
click Battered Stone Chest##1387
collect Tome of Openings |q 25599/2 |goto 30.7,41.7
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.6,46.0
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25611 |goto 26.3,41.9
step
Go inside the blue portal |goto 25.9,40.9 < 10
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto 28.2,29.8
turnin Return from the Firelands##25611 |goto 28.2,29.8
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal 28.3,29.7
|tip Skip if you have completed Wings Over Mount Hyjal.
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
accept Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.2,37.9
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.0,37.0
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.8,43.7
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
use Bottled Bileberry Brew##53120
|tip Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord.
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.4,45.4
step
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto 14.4,45.4
accept The Name Never Spoken##25412 |goto 14.4,45.4
stickystart "ragingtwi"
stickystart "frightenedanimals"
step
click Southern Firestone##9407
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##9407
Examine the Central Firestone |q 25412/2 |goto 11.6,41.5
step
click Northern Firestone##9407
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step "ragingtwi"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto 13.3,41.4
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto 13.3,41.4
step "frightenedanimals"
Click Panicked Bunnies and Terrified Squirrels
collect 10 Frightened Animal##53060 |q 25385/1 |goto 13.3,41.4
modelnpc 39997
modelnpc 39998
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 19.0,40.9
turnin Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.2,37.9
accept Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.3,44.9
accept Black Heart of Flame##25428 |goto 22.3,44.9
stickystart "injfawn"
step
use Charred Branch##53464
|tip Use your Charred Branch while in the burning forest area.
kill Thol'embaar##40107
collect Black Heart of Thol'embaar |q 25428/1 |goto 12.9,41.4
step "injfawn"
clicknpc Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.2,37.9]
Escort #3# Injured Fawns Home |q 25392/1 |goto 14.5,40.8
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.6,32.8
accept The Bears Up There##25462 |goto 13.6,32.8
step
Click the ladder at the base of the tree
clicknpc Hyjal Bear Cub##40240
Use your Climb Up ability to climb to the top of the tree
|tip Use your Chuck-a-bear ability to throw the cubs down. Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 14.2,32.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.6,32.8
accept Smashing Through Ashes##25490 |goto 13.6,32.8
step
kill 8 Charbringer##40336 |q 25490/1 |goto 21.6,59.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
stickystart "corehoundentrails"
stickystart "hyjalseedlings"
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 36.2,58.6
step "corehoundentrails"
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 36.2,58.6
step "hyjalseedlings"
click Scorched Soil##768+
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 36.2,58.6
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
ding 81
step
Click the Flameward
|tip It's a floating stone in a golden claw stand.
Activate the Flameward |q 25502/1 |goto 33.0,64.6
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
use Heap of Core Hound Innards##54744
|tip Use your Heap of Core Hound Innards near Nemesis.
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
collect Nemesis Shell Fragment |q 25507/1 |goto 39.3,54.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Hell's Shells##25507 |goto 27.1,62.6
accept Tortolla Speaks##25510 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.1,63.0
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.7,55.7
accept Breaking the Bonds##25514 |goto 24.7,55.7
accept Children of Tortolla##25519 |goto 24.7,55.7
step
click Rod of Subjugation##9469
Disable Rod of Subjugation 1 |q 25514/1 |goto 23.8,56.0
step
click Rod of Subjugation##9469
Disable Rod of Subjugation 2 |q 25514/2 |goto 25.3,54.8
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.7,55.7
step
kill Deep Corruptor##40561+
|tip They are found underwater.
Save #6# Tortolla's Eggs |q 25519/1 |goto 24.4,57.4
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.7,55.7
accept An Ancient Awakens##25520 |goto 24.7,55.7
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto 27.1,62.6
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.5
accept Scrambling for Eggs##25656 |goto 42.2,45.5
step
use Sacred Nectar##55208
|tip Use your Sacred Nectar next to Aviana's Burial Circle.
Offer the Nectar |q 25663/1 |goto 40.3,44.3
step
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663
accept A Plea From Beyond##25665
model Aviana's Burial Circle##439
stickystart "hyjaleggs"
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill #10# Wormwing Harpies |q 25655/1 |goto 38.5,43.0
step "hyjaleggs"
click Stolen Hyjal Egg##203143+
collect 8 Hyjal Eg##55189g |q 25656/1 |goto 38.5,43.0
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.5
turnin Scrambling for Eggs##25656 |goto 42.2,45.5
accept A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
click Harpy Signal Fire##7290
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.3,44.2
talk Marion Wormwing##41112
|tip Ask her why she is stealing eggs, then tell Thisalee to kill her.
Interrogate Marion Wormwing |q 25731/2 |goto 38.3,44.2
step
use Enormous Bird Call##55211
|tip Use your Enormous Bird Call in Blaithe's Roost.
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather |q 25664/1 |goto 35.7,42.3
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click the Codex of Shadows##470
accept The Codex of Shadows##25763 |goto 31.3,77.1
stickystart "twilightarmorplate"
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay #12# Sethria's Minions |q 25746/1 |goto 30.9,76.9
step "twilightarmorplate"
click Twilight Armor Plate##203198+
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.9
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
stickystart "avianasegg"
step
use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv on Twilight Juggernauts.
|tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 31.6,75.8
step "avianasegg"
click Shadow Cloak Generator##9532+
|tip It may not be in the first one, so keep searching.
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.6,75.8
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
Fight Sethria
use Thisalee's Signal Rocket##56003
|tip Use Thisalee's Signal Rocket when Sethria turns into a dragon.
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
use Herald's Incense##56016
|tip Use Herald's Incense next to Aviana's Egg.
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,48.0
modelnpc Aviana's Egg##41224
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.2,47.8
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto 43.8,46.0
If you cannot pick up the quest, go here to get it: [62.0,24.9]
step
Go inside the blue portal |goto 38.77,58.01 < 10
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.1
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723
Ride Aviana's Guardian |invehicle |c |q 25523 |goto 37.4,56.0
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
Visit the Guardian Flag |q 25523/1 |goto 36.6,53.4
model 9475
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
Kill #10# Twilight Knight Riders |q 25525/1 |goto 35.4,51.7
|tip The knights are riding buzzards.
modelnpc Twilight Buzzard##39833
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
Kill 10 Twilight Lancers |q 25544/1 |goto 35.4,51.7
|tip The lancers are riding buzzards.
modelnpc Twilight Firebird##40650
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy #40# Firelands Eggs |q 25560/1 |goto 36.6,53.3
You can find more Firelands Eggs at [39.3,54.1]
modelnpc 40762
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
achieve 4959
step
Congratulations, you have obtained the _Beware of the 'Unbeatable?' Pterodactyl_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Bounce",{
condition_end="achieved(5483)",
description="This guide will walk you through staying on the trampoline in the Whistling Grove in Mount Hyjal for 20 consecutive bounces.",
},[[
step
You will be able to control your character mid air by turning them in the direction you want to go
|tip Steer your character back into the area of the trampoline.
Hop onto the trampoline and jump on it #20# times consecutively |achieve 5483 |goto Mount Hyjal 13.6,33.2
step
Congratulations, you have earned the Bounce achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Consumed by Nightmare",{
condition_end="achieved(5451)",
description="This guide will walk you through enduring the nightmares of Iso'rath in the Twilight Highlands.",
},[[
step
click Hero's Call Board##10016
|tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
accept Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 62.9,71.6
step
talk King Varian Wrynn##29611
turnin Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 85.7,31.8
accept My Son, the Prince##26960 |goto Stormwind City 85.7,31.8
step
talk Anduin Wrynn##1747
Tell him "_Come with me._"
Become Introduced to Anduin |q My Son, the Prince##26960/1 |goto Stormwind City 85.7,31.6
step
talk King Varian Wrynn##29611
turnin My Son, the Prince##26960 |goto Stormwind City 85.7,31.8
accept Rallying the Fleet##26975 |goto Stormwind City 85.7,31.8
accept Twilight Investigation##26977 |goto Stormwind City 85.7,31.8
step
talk Major Samuelson##2439
turnin Twilight Investigation##26977 |goto Stormwind City 85.1,31.3
accept The Usual Suspects##26997 |goto Stormwind City 85.1,31.3
step
talk Stormwind Dock Worker##29152
Interrogate #6# Dock Workers |q The Usual Suspects##26997/1 |goto Stormwind City 29.3,26.5
step
talk Anduin Wrynn##44293
|tip He is next to you.
turnin The Usual Suspects##26997
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Escort Anduin to Supply Sergeant Graves |q Rallying the Fleet##26975/1 |goto Stormwind City 33.1,39.4
step
talk Supply Sergeant Graves##44749
turnin Rallying the Fleet##26975 |goto Stormwind City 33.1,39.5
accept Missing Parts##27038 |goto Stormwind City 33.1,39.5
step
talk Anduin Wrynn##44293
|tip He is next to you.
accept Peasant Problems##27044
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
click Missing Parts##205144
collect 5 Missing Parts##60757 |q Missing Parts##27038/1 |goto Stormwind City 34.6,46.1
step
talk Fargo Flintlocke##44806
turnin Missing Parts##27038 |goto Stormwind City 34.8,38.2
step
talk Anduin Wrynn##44293
|tip He is next to you.
accept He's Holding Out on Us##27064
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Escort Prince Anduin to Farmer Wollerton |q He's Holding Out on Us##27044/1 |goto Stormwind City 52.0,5.8
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
talk Farmer Wollerton##44807
turnin Peasant Problems##27044 |goto Stormwind City 52.1,6.0
accept Unholy Cow##27060 |goto Stormwind City 52.1,6.0
step
Discover the Crime Scene |q Unholy Cow##27060/1 |goto Stormwind City 43.8,4.6
kill Twilight Striker##44808+
Protect Prince Anduin |q Unholy Cow##27060/2 |goto Stormwind City 43.8,4.6
step
talk Anduin Wrynn##44293
|tip He is next to you.
turnin Unholy Cow##27060
If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Go inside this building and up the spiral staircase
Allow Anduin to Examine Samuelson's Papers |q He's Holding Out on Us##27064/1 |goto Stormwind City 80.2,62.1
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
talk Anduin Wrynn##44293
|tip He is next to you.
turnin He's Holding Out on Us##27064
accept Expert Opinion##28807
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
talk Master Mathias Shaw##332
turnin Expert Opinion##28807 |goto Stormwind City 81.3,63.5
accept The Old Barracks##27072 |goto Stormwind City 81.3,63.5
step
kill 6 Crazed Cultist##44814 |q The Old Barracks##27072/1 |goto Stormwind City 39.8,56.8
step
talk Jack Bauden##50049
turnin The Old Barracks##27072 |goto Stormwind City 37.2,56.2
accept Cataclysm in the Catacombs##27092 |goto Stormwind City 37.2,56.2
step
Enter the Cathedral |goto Stormwind City 52.9,51.0 < 5 |walk
Follow the spiral ramp down |goto Stormwind City 51.3,44.3 < 5 |walk
Follow the stairs down |goto Stormwind City 53.2,42.6 < 5 |walk
kill The Black Bishop |q Cataclysm in the Catacombs##27092/1
step
click Pile of Explosives##9278
turnin Cataclysm in the Catacombs##27092 |goto Stormwind City 50.2,42.6
accept A Villain Unmasked##27106 |goto Stormwind City 50.2,42.6
step
talk Major Samuelson##2439
Tell him "_It's over._"
Unmask Major Samuelson |q A Villain Unmasked##27106/1 |goto Stormwind City 85.1,31.0
kill Major Samuelson##2439 |q A Villain Unmasked##27106/2 |goto Stormwind City 85.1,31.0
step
talk King Varian Wrynn##29611
turnin A Villain Unmasked##27106 |goto Stormwind City 85.8,31.7
accept Twilight Shores##28238 |goto Stormwind City 85.8,31.7
step
talk Fargo Flintlocke##44806
turnin Twilight Shores##28238 |goto Stormwind City 26.1,47.3
accept Twilight Shores##28832 |goto Stormwind City 26.1,47.3
step
clicknpc Flintlocke's Seaplane##50300
Ride to Twilight Highlands |goto Twilight Highlands |goto Stormwind City 25.9,47.6 |noway |c
step
talk Lieutenant Fawkes##49022
turnin Twilight Shores##28832 |goto Twilight Highlands 81.0,79.4
accept Welcome to Highbank!##28596 |goto Twilight Highlands 81.0,79.4
step
kill Bilgewater Gunman##49009+, Axebite Infantry##49008+
Kill #10# Horde Attackers |q Welcome to Highbank!##28596/1 |goto Twilight Highlands 81.1,77.3
step
talk Lieutenant Fawkes##49022
turnin Welcome to Highbank!##28596 |goto Twilight Highlands 81.0,79.4
step
talk Fargo Flintlocke##49252
accept Burnin' at Both Ends##28597 |goto Twilight Highlands 81.0,79.4
step
clicknpc Cannon Powder Barrel##49143+
collect 10 Cannon Powder##64585 |q Burnin' at Both Ends##28597/1 |goto Twilight Highlands 81.1,77.3
step
talk Fargo Flintlocke##49252
turnin Burnin' at Both Ends##28597 |goto Twilight Highlands 78.8,76.8
accept Aiming High##28598 |goto Twilight Highlands 78.8,76.8
step
You may have to wait for a few minutes, so just stand here and wait
Wait to be launched from Flintlocke's Cannon |q Aiming High##28598/1
step
Go downstairs in the zeppelin
use Flintlocke's Explosives##64660
|tip Use Flintlocke's Explosives while downstairs.
Destroy the Skyshredder |q Aiming High##28598/2
step
talk Fargo Flintlocke##49252
turnin Aiming High##28598 |goto Twilight Highlands 78.9,76.7
accept Kurdran's Waitin'##28599 |goto Twilight Highlands 78.9,76.7
step
Go upstairs in the fort
talk Kurdran Wildhammer##49358
turnin Kurdran's Waitin'##28599 |goto Twilight Highlands 79.1,78.3
accept Our Boys on the Shore##27338 |goto Twilight Highlands 79.1,78.3
step
talk Simon Chandler##45170
accept Salvage Operation##27177 |goto Twilight Highlands 79.3,78.5
accept Naga Reinforcements##27178 |goto Twilight Highlands 79.3,78.5
step
talk Ephram Hardstone##45171
accept Siren's Song##27200 |goto Twilight Highlands 76.0,80.0
step
kill Ophelia##45183
Slay Ophelia and Protect Ephram |q Siren's Song##27200/1 |goto Twilight Highlands 76.1,79.8
step
talk Ephram Hardstone##45171
turnin Siren's Song##27200 |goto Twilight Highlands 76.0,80.0
stickystart "nagareinforcements"
step
click Water-Logged Crate##205250+
collect 8 Recovered Supplies##60857 |q Salvage Operation##27177/1 |goto Twilight Highlands 76.2,83.0
step "nagareinforcements"
kill Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
Slay #10# Blackscale Naga |q Naga Reinforcements##27178/1 |goto Twilight Highlands 76.2,83.0
step
Go upstairs in the fort
talk Simon Chandler##45170
turnin Salvage Operation##27177 |goto Twilight Highlands 79.3,78.5
turnin Naga Reinforcements##27178 |goto Twilight Highlands 79.3,78.5
step
talk Lieutenant Emry##45169
turnin Our Boys on the Shore##27338 |goto Twilight Highlands 76.8,69.8
accept Scouting the Shore##27341 |goto Twilight Highlands 76.8,69.8
accept Landgrab##27366 |goto Twilight Highlands 76.8,69.8
step
talk Fargo Flintlocke##49252
accept Shredderectomy##27433 |goto Twilight Highlands 77.0,69.9
stickystart "axebitemar"
stickystart "diabladshred"
step
Scout the Beach Head Control Point |q Scouting the Shore##27341/1 |goto Twilight Highlands 77.5,65.3
step "axebitemar"
kill 12 Axebite Marine##45175 |q Landgrab##27366/1 |goto Twilight Highlands 77.4,67.1
|tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground. Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step "diabladshred"
kill Diamond-Blade Shredder##45185+
collect 5 Abused Shredder Parts##61048 |q Shredderectomy##27433/1 |goto Twilight Highlands 74.3,68.0
step
talk Lieutenant Emry##45169
turnin Scouting the Shore##27341 |goto Twilight Highlands 76.8,69.8
turnin Landgrab##27366 |goto Twilight Highlands 76.8,69.8
accept Bird Down! Bird Down!##27514 |goto Twilight Highlands 76.8,69.8
step
talk Fargo Flintlocke##45168
turnin Shredderectomy##27433 |goto Twilight Highlands 77.0,69.9
accept Siege Tank Rescue##27468 |goto Twilight Highlands 77.0,69.9
step
talk Siege Tank Commander##45524
Tell him "_I'll cover you while you make repairs._"
Speak to a Siege Tank Commander |q Siege Tank Rescue##27468/1 |goto Twilight Highlands 73.4,71.2
step
kill Axebite Grunt##45187+
Defend the Siege Tank |q Siege Tank Rescue##27468/2 |goto Twilight Highlands 73.4,71.2
step
talk Fargo Flintlocke##45168
turnin Siege Tank Rescue##27468 |goto Twilight Highlands 77.0,69.9
step
talk Thordun Hammerblow##45172
turnin Bird Down! Bird Down!##27514 |goto Twilight Highlands 67.7,66.0
accept Roots'll Do 'Er##27515 |goto Twilight Highlands 67.7,66.0
step
click Thorny Stankroots##414
collect 8 Thorny Stankroot##61319 |q Roots'll Do 'Er##27515/1 |goto Twilight Highlands 71.4,66.2
step
talk Thordun Hammerblow##45172
turnin Roots'll Do 'Er##27515 |goto Twilight Highlands 67.7,66.0
accept Wings Over Highbank##27516 |goto Twilight Highlands 67.7,66.0
step
talk Thordun Hammerblow##45172
Tell him "_I'm ready, let's go!_"
Fly with Thordun Hammerblow to Highbank |q Wings Over Highbank##27516/1 |goto Twilight Highlands 67.7,66.0
step
talk Innkeeper Francis##49688
home Highbank |goto Twilight Highlands 79.4,78.5
step
Go upstairs in the fort
talk Kurdran Wildhammer##45167
turnin Wings Over Highbank##27516 |goto Twilight Highlands 79.1,78.3
accept Any Portal in a Storm##27537 |goto Twilight Highlands 79.1,78.3
step
talk Thordun Hammerblow##45172
accept The Perfect Poultice##27538 |goto Twilight Highlands 79.2,78.3
step
talk Glenn Arbuckle##47119
fpath Highbank |goto Twilight Highlands 81.7,77.1
stickystart "verrallrivermuck"
step
kill Muddied Water Elemental##44011+
collect 5 Whirlpool Core##60333 |q Any Portal in a Storm##27537/1 |goto Twilight Highlands 67.7,46.9
step "verrallrivermuck"
click Verrall River Muck##10352+
|tip They look like mounds of swirled gray and white sand on the ground around this area.
collect 10 Verrall River Muck##60337 |q The Perfect Poultice##27538/1 |goto Twilight Highlands 67.7,46.9
step
talk Talaa##45173
turnin Any Portal in a Storm##27537 |goto Twilight Highlands 79.4,77.6
turnin The Perfect Poultice##27538 |goto Twilight Highlands 79.4,77.6
accept The Way is Open##27545 |goto Twilight Highlands 79.4,77.6
step
Go upstairs in the fort
talk Kurdran Wildhammer##45167
turnin The Way is Open##27545 |goto Twilight Highlands 79.1,78.3
step
talk Thordun Hammerblow##45172
accept Firebeard's Patrol##27621 |goto Twilight Highlands 79.2,78.3
step
talk Keegan Firebeard##49271
turnin Firebeard's Patrol##27621 |goto Twilight Highlands 60.1,57.9
accept Welcome Relief##27803 |goto Twilight Highlands 60.1,57.9
accept The Only Homes We Have##27804 |goto Twilight Highlands 60.1,57.9
step
talk Innkeeper Corlin##49795
home Firebeard's Patrol |goto Twilight Highlands 60.4,58.1
step
talk Cailin Longfellow##46814
accept Small Comforts##27805 |goto Twilight Highlands 60.4,58.3
step
talk Farstad Stonegrip##47147
fpath Firebeard's Patrol |goto Twilight Highlands 60.4,57.6
stickystart "subjugfire"
stickystart "subjugatedfirestarters"
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Meara's Dried Roses##10073
|tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
collect Meara's Dried Roses##62545 |q Small Comforts##27805/1 |goto Twilight Highlands 59.8,56.2
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Aprika's Lost Doll##7514
collect Aprika's Doll##62543 |q Small Comforts##27805/3 |goto Twilight Highlands 59.5,55.9
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Parlan's Ivory Hammer##8215
collect Parlan's Ivory Hammer##62546 |q Small Comforts##27805/2 |goto Twilight Highlands 59.3,56.9
step "subjugfire"
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires.
Extinguish #50# Village Fires |q The Only Homes We Have##27804/1 |goto Twilight Highlands 59.8,56.9
step "subjugatedfirestarters"
kill 8 Subjugated Firestarter##46838 |q Welcome Relief##27803/1 |goto Twilight Highlands 59.8,56.9
step
talk Keegan Firebeard##49271
turnin Welcome Relief##27803 |goto Twilight Highlands 60.2,58.0
turnin The Only Homes We Have##27804 |goto Twilight Highlands 60.2,58.0
accept Honorable Bearing##27806 |goto Twilight Highlands 60.2,58.0
step
talk Cailin Longfellow##46814
turnin Small Comforts##27805 |goto Twilight Highlands 60.4,58.3
step
talk Iain Firebeard##46805
turnin Honorable Bearing##27806 |goto Twilight Highlands 57.5,58.1
accept Clan Mullan##27807 |goto Twilight Highlands 57.5,58.1
accept Stubborn as a Doyle##27808 |goto Twilight Highlands 57.5,58.1
accept Firebeard Bellows##27809 |goto Twilight Highlands 57.5,58.1
step
talk Duglas Mullan##46811
turnin Clan Mullan##27807 |goto Twilight Highlands 50.8,60.2
accept The Fighting Spirit##27810 |goto Twilight Highlands 50.8,60.2
step
talk Edana Mullan##46812
accept The Scent of Battle##27811 |goto Twilight Highlands 50.8,60.2
step
talk Mullan Gryphon Rider##46813
Tell him "_You're not backing out._"
kill Mullan Gryphon Rider##46813
Defeat a Mullan Gryphon Rider |q The Fighting Spirit##27810/1 |goto Twilight Highlands 51.1,59.9
step
talk Duglas Mullan##46811
turnin The Fighting Spirit##27810 |goto Twilight Highlands 50.8,60.2
step
talk Mullan Gryphon##46968
Let the gryphons smell the piece of charred highland birch
Find and Return #8# Mullan Gryphons |q The Scent of Battle##27811/1 |goto Twilight Highlands 57.3,67.6
step
talk Keeland Doyle##47317
turnin Stubborn as a Doyle##27808 |goto Twilight Highlands 61.4,67.4
accept The Fate of the Doyles##27999 |goto Twilight Highlands 61.4,67.4
step
talk Edana Mullan##46812
turnin The Scent of Battle##27811 |goto Twilight Highlands 50.8,60.2
step
talk Duglas Mullan##46811
accept The Loyalty of Clan Mullan##27812 |goto Twilight Highlands 50.8,60.3
step
talk Iain Firebeard##46805
turnin The Fate of the Doyles##27999 |goto Twilight Highlands 57.5,58.1
turnin The Loyalty of Clan Mullan##27812 |goto Twilight Highlands 57.5,58.1
step
talk Mackay Firebeard##46850
turnin Firebeard Bellows##27809 |goto Twilight Highlands 62.5,48.4
accept Death Worthy of a Dragonmaw##27813 |goto Twilight Highlands 62.5,48.4
step
talk Ella Forgehammer##48046
accept The Lost Brother##28233 |goto Twilight Highlands 62.6,48.6
step
talk Brom Forgehammer##46806
accept Anything We Can Get##27814 |goto Twilight Highlands 62.6,48.6
step
talk Bahrum Forgehammer##48053
turnin The Lost Brother##28233 |goto Twilight Highlands 63.1,47.6
accept They Took Me Pants!##28234 |goto Twilight Highlands 63.1,47.6
stickystart "dragonmawstraggler"
stickystart "dragonmawweapons"
step
Go upstairs in this building
kill Gorosh the Pant Stealer##48102
collect Bahrum's Pants##63374 |q They Took Me Pants!##28234/1 |goto Twilight Highlands 62.3,47.0
step "dragonmawstraggler"
talk Injured Dragonmaw Straggler##47465
Help the orcs up
Defeat #6# Dragonmaw Stragglers |q Death Worthy of a Dragonmaw##27813/1 |goto Twilight Highlands 62.3,46.8
step "dragonmawweapons"
click Dragonmaw Weapon Axe##206673+, Dragonmaw Weapon Rack##206672+, Dragonmaw Weapon Crate##206389+
collect 8 Dragonmaw Weapon##62511 |q Anything We Can Get##27814/1 |goto Twilight Highlands 62.3,46.8
step
talk Bahrum Forgehammer##48053
turnin They Took Me Pants!##28234 |goto Twilight Highlands 63.2,47.6
step
talk Mackay Firebeard##46850
turnin Death Worthy of a Dragonmaw##27813 |goto Twilight Highlands 62.5,48.4
step
talk Brom Forgehammer##46806
turnin Anything We Can Get##27814 |goto Twilight Highlands 62.6,48.6
step
talk Mackay Firebeard##46850
accept Somethin' for the Boys##27815 |goto Twilight Highlands 62.5,48.4
step
talk Iain Firebeard##46805
turnin Somethin' for the Boys##27815 |goto Twilight Highlands 57.5,58.1
accept Personal Request##27816 |goto Twilight Highlands 57.5,58.1
step
talk Keegan Firebeard##46804
turnin Personal Request##27816 |goto Twilight Highlands 60.2,57.8
accept Dropping the Hammer##27817 |goto Twilight Highlands 60.2,57.8
step
clicknpc Firebeard Gryphon Mount##17718
Ride the Firebeard Gryphon Mount |invehicle |c |goto Twilight Highlands 59.9,57.3
step
While flying on the Firebeard Gryphon Mount
Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks
|tip Use your Storm Shield ability when someone casts a lightning attack on you.
kill 12 Twilight Stormbender##47199 |q Dropping the Hammer##27817/1 |goto Twilight Highlands 58.8,53.1
step
While flying on the Firebeard Gryphon Mount
Use the abilities on your action bar to weaken Servias Windterror
|tip Eventually, you will get off the gryphon and fight him regularly,
kill Servias Windterror##46839 |q Dropping the Hammer##27817/2 |goto Twilight Highlands 58.6,51.7
|tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
talk Keegan Firebeard##49271
turnin Dropping the Hammer##27817 |goto Twilight Highlands 60.2,57.9
accept Dunwalds Don't Die##27640 |goto Twilight Highlands 60.2,57.9
accept A Coward's Due##28001 |goto Twilight Highlands 60.2,57.9
step
Enter this building |goto Twilight Highlands 46.7,66.0 < 5 |walk
talk Keely Dunwald##46177
turnin Dunwalds Don't Die##27640 |goto Twilight Highlands 45.9,65.5
accept Donnelly Dunwald##27643 |goto Twilight Highlands 45.9,65.5
accept Eoin Dunwald##27644 |goto Twilight Highlands 45.9,65.5
accept Cayden Dunwald##27645 |goto Twilight Highlands 45.9,65.5
step
talk Flynn Dunwald##46143
accept While Meeting The Family##27641 |goto Twilight Highlands 45.9,65.4
accept Sifting Through The Wreckage##27642 |goto Twilight Highlands 45.9,65.4
step
talk Cayden Dunwald##46174
turnin Cayden Dunwald##27645 |goto Twilight Highlands 45.8,71.7
accept Once More Into The Fire##27648 |goto Twilight Highlands 45.8,71.7
step
talk Cayden Dunwald##46174
Tell him "_Yeah... and let's get to it then._"
Escort Cayden Dunwald
Accompany Cayden through Dunwald Market Row |q Once More Into The Fire##27648/1 |goto Twilight Highlands 45.8,71.7
Cayden Dunwald can also be at [47.9,74.5]
step
talk Cayden Dunwald##46174
turnin Once More Into The Fire##27648 |goto Twilight Highlands 47.9,74.5
Cayden Dunwald can also be at [45.8,71.7]
step
talk Eoin Dunwald##46175
turnin Eoin Dunwald##27644 |goto Twilight Highlands 52.9,74.3
accept Anything But Water##27647 |goto Twilight Highlands 52.9,74.3
step
click Sacred Ale Tap##206203
|tip They look like 3 wooden kegs built into the wall in the basement of this building.
collect Sacred Wildhammer Ale##62317 |q Anything But Water##27647/1 |goto Twilight Highlands 52.8,69.8
step
talk Eoin Dunwald##46583
turnin Anything But Water##27647 |goto Twilight Highlands 52.4,70.3
accept A Steady Supply##27649 |goto Twilight Highlands 52.4,70.3
step
talk Donnelly Dunwald##46176
turnin Donnelly Dunwald##27643 |goto Twilight Highlands 46.4,59.1
accept Finding Beak##27646 |goto Twilight Highlands 46.4,59.1
stickystart "twiguests"
step
Go into the basement of this building
Search the cellar in southern Dunwald Hovel |q Finding Beak##27646/1 |goto Twilight Highlands 45.4,60.0
step
Go into the basement of this building
Search the cellar in northwestern Dunwald Hovel |q Finding Beak##27646/2 |goto Twilight Highlands 46.4,53.8
step
Search the buildings in eastern Dunwald Hovel |q Finding Beak##27646/3 |goto Twilight Highlands 48.4,52.6
step
talk Donnelly Dunwald##46176
turnin Finding Beak##27646 |goto Twilight Highlands 46.0,58.7
accept Home Again##27650 |goto Twilight Highlands 46.0,58.7
step "twiguests"
kill Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
Welcome #20# Twilight Guests to Dunwald |q While Meeting The Family##27641/1 |goto Twilight Highlands 45.9,54.8
step
talk Dunwald Victim##46609
Find #12# Dunwald Victims |q Sifting Through The Wreckage##27642/1
click Wildhammer Ale Cask##206292+
collect 6 Wildhammer Ale##62327 |q A Steady Supply##27649/1
You can find more of all these things
Around [47.0,66.1]
Around [46.4,72.6]
Around [50.7,69.8]
step
Enter this building |goto Twilight Highlands 46.7,66.0 < 5 |walk
talk Keely Dunwald##46177
turnin Home Again##27650 |goto Twilight Highlands 46.0,65.5
accept Doing It Like a Dunwald##27651 |goto Twilight Highlands 46.0,65.5
step
talk Eoin Dunwald##46585
turnin A Steady Supply##27649 |goto Twilight Highlands 50.5,70.7
step
talk Flynn Dunwald##46143
turnin While Meeting The Family##27641 |goto Twilight Highlands 50.5,70.7
turnin Sifting Through The Wreckage##27642 |goto Twilight Highlands 50.5,70.7
step
talk Flynn Dunwald##46628
Tell him "_I'm in._"
kill Darunga##46624 |q Doing It Like a Dunwald##27651/1 |goto Twilight Highlands 50.5,70.6
step
talk Flynn Dunwald##46628
turnin Doing It Like a Dunwald##27651 |goto Twilight Highlands 50.5,70.6
step
talk Colin Thundermar##46591
turnin A Coward's Due##28001 |goto Twilight Highlands 49.0,29.8
accept Dragonmaw Takedown##27754 |goto Twilight Highlands 49.0,29.8
accept My Sister, Fanny##28369 |goto Twilight Highlands 49.0,29.8
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##27752 |goto Twilight Highlands 49.8,29.2
step
talk Fanny Thundermar##48013
turnin My Sister, Fanny##28369 |goto Twilight Highlands 49.8,29.3
accept Never Leave a Dinner Behind##27753 |goto Twilight Highlands 49.8,29.3
step
talk Naveen Tendernose##49591
home Thundermar |goto Twilight Highlands 49.5,30.4
step
talk Doran Talonheart##47154
fpath Thundermar |goto Twilight Highlands 48.5,28.1
stickystart "kegofthunderale"
stickystart "wildhammerfood"
step
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q Dragonmaw Takedown##27754/1 |goto Twilight Highlands 46.2,37.4
step "kegofthunderale"
click Thundermar Ale Keg##7490+
collect 10 Keg of Thundermar Ale##62330 |q Fight Like a Wildhammer##27752/1 |goto Twilight Highlands 46.2,37.4
step "wildhammerfood"
click Wildhammer Food Store##206290+
collect 15 Wildhammer Food Store##62324 |q Never Leave a Dinner Behind##27753/1 |goto Twilight Highlands 46.2,37.4
You can find more around [49.1,37.3]
step
talk Colin Thundermar##46591
turnin Dragonmaw Takedown##27754 |goto Twilight Highlands 49.0,29.8
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##27752 |goto Twilight Highlands 49.8,29.2
step
talk Fanny Thundermar##48013
turnin Never Leave a Dinner Behind##27753 |goto Twilight Highlands 49.8,29.3
step
talk Low Shaman Blundy##48010
accept A Vision of Twilight##28241 |goto Twilight Highlands 49.8,29.2
step
talk Nivvet Channelock##48174
accept Tempered in Elemental Flame##28211 |goto Twilight Highlands 49.1,29.4
accept Hot Stuff##28212 |goto Twilight Highlands 49.1,29.4
accept Potential Energy##28215 |goto Twilight Highlands 49.1,29.4
step
talk Colin Thundermar##46591
accept Magmalord Falthazar##28216 |goto Twilight Highlands 49.0,29.7
step
click The Eye of Twilight##7011
|tip It's a purple orb above a spinning metal machine.
turnin A Vision of Twilight##28241 |goto Twilight Highlands 57.9,33.5
accept We All Must Sacrifice##28242 |goto Twilight Highlands 57.9,33.5
stickystart "twistedelementium"
step
kill 10 Shaman of the Black##46322 |q We All Must Sacrifice##28242/1 |goto Twilight Highlands 58.0,32.6
step "twistedelementium"
kill Obsidian Stoneslave##47226+
collect 10 Twisted Elementium Loop##63285 |q Potential Energy##28215/1 |goto Twilight Highlands 58.0,32.6
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin We All Must Sacrifice##28242 |goto Twilight Highlands 57.9,33.5
accept The Eyes Have It##28243 |goto Twilight Highlands 57.9,33.5
step
talk Nivvet Channelock##48174
turnin Potential Energy##28215 |goto Twilight Highlands 49.1,29.4
step
talk Low Shaman Blundy##48010
turnin The Eyes Have It##28243 |goto Twilight Highlands 49.7,29.2
accept Eye Spy##28244 |goto Twilight Highlands 49.7,29.2
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
Watch the cutscene
Peer into the Eye |q Eye Spy##28244/1 |goto Twilight Highlands 49.8,29.1
step
talk Low Shaman Blundy##48010
turnin Eye Spy##28244 |goto Twilight Highlands 49.7,29.2
stickystart "moltenfury"
stickystart "temperedspear"
step
kill Magmalord Falthazar##48015
collect Magmalord Falthazar's Head##63286 |q Magmalord Falthazar##28216/1 |goto Twilight Highlands 42.5,23.5
step "moltenfury"
kill Unbound Emberfiend##48016+
collect 5 Molten Fury##63283 |q Hot Stuff##28212/1 |goto Twilight Highlands 42.2,24.3
step "temperedspear"
click Tempered Spear##8490+
collect 8 Tempered Spear##63282 |q Tempered in Elemental Flame##28211/1 |goto Twilight Highlands 42.2,24.3
step
talk Colin Thundermar##46591
turnin Magmalord Falthazar##28216 |goto Twilight Highlands 49.0,29.7
step
talk Nivvet Channelock##48174
turnin Tempered in Elemental Flame##28211 |goto Twilight Highlands 49.1,29.4
turnin Hot Stuff##28212 |goto Twilight Highlands 49.1,29.4
accept Tear Them From the Sky!##28280 |goto Twilight Highlands 49.1,29.4
step
use Shoulder-Mounted Drake-Dropper##63393
|tip Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes.
|tip They are flying in the sky around this area.
kill 8 Dragonmaw Black Drake##48197 |q Tear Them From the Sky!##28280/1 |goto Twilight Highlands 49.2,29.8
step
talk Nivvet Channelock##48174
turnin Tear Them From the Sky!##28280 |goto Twilight Highlands 49.1,29.4
step
talk Colin Thundermar##48173
accept Last Stand at Thundermar##28281 |goto Twilight Highlands 49.0,29.7
step
kill 8 Dragonmaw Skyclaw##52038 |q Last Stand at Thundermar##28281/1 |goto Twilight Highlands 48.1,30.0
step
talk Colin Thundermar##48173
turnin Last Stand at Thundermar##28281 |goto Twilight Highlands 49.0,29.7
accept Narkrall, The Drake-Tamer##28282 |goto Twilight Highlands 49.0,29.7
step
talk Colin Thundermar##48173
Tell him "_I'm ready to fight!_"
kill Narkrall Rakeclaw##47559 |q Narkrall, The Drake-Tamer##28282/1 |goto Twilight Highlands 49.0,29.7
step
talk Colin Thundermar##48173
turnin Narkrall, The Drake-Tamer##28282 |goto Twilight Highlands 49.0,29.7
accept The Kirthaven Summit##28294 |goto Twilight Highlands 49.0,29.7
step
talk Vaughn Blusterbeard##49574
home Kirthaven |goto Twilight Highlands 54.6,18.0
step
talk Lachlan MacGraff##48367
turnin The Kirthaven Summit##28294 |goto Twilight Highlands 54.3,16.7
step
talk Kurdran Wildhammer##48365
accept The Bachelor##28346 |goto Twilight Highlands 54.9,17.2
step
talk Keegan Firebeard##48364
turnin The Bachelor##28346 |goto Twilight Highlands 54.4,16.8
accept Rescue at Glopgut's Hollow##28377 |goto Twilight Highlands 54.4,16.8
step
talk Shaina Talonheart##47155
fpath Kirthaven |goto Twilight Highlands 56.8,15.1
step
talk Colin Thundermar##48472
turnin Rescue at Glopgut's Hollow##28377 |goto Twilight Highlands 38.1,34.5
accept Find Fanny##28378 |goto Twilight Highlands 38.1,34.5
accept Ogre Bashin'##28379 |goto Twilight Highlands 38.1,34.5
stickystart "glopguthurl"
step
Enter the cave |goto Twilight Highlands 37.6,33.4 < 5 |walk
Rescue Fanny Thundermar |q Find Fanny##28378/1 |goto Twilight Highlands 35.0,31.1
modelnpc Fanny Thundermar##49032
step "glopguthurl"
Leave the cave |goto Twilight Highlands 37.6,33.4 < 5 |walk
kill Glopgut Pounder##48474+, Glopgut Hurler##48475+
Slay #10# Glopgut Ogres |q Ogre Bashin'##28379/1 |goto Twilight Highlands 38.7,30.9
step
talk Colin Thundermar##48472
turnin Find Fanny##28378 |goto Twilight Highlands 38.1,34.5
turnin Ogre Bashin'##28379 |goto Twilight Highlands 38.1,34.5
accept The Bachelorette##28407 |goto Twilight Highlands 38.1,34.5
step
talk Fanny Thundermar##48530
turnin The Bachelorette##28407 |goto Twilight Highlands 54.7,17.9
step
talk Russell Brower##48366
accept Words and Music By...##28413 |goto Twilight Highlands 54.6,17.5
step
talk Russell Brower##48366
Tell him "_I'm ready, let's write a song._"
Create a Song |q Words and Music By...##28413/1 |goto Twilight Highlands 54.6,17.5
step
talk Russell Brower##48366
turnin Words and Music By...##28413 |goto Twilight Highlands 54.6,17.5
step
talk Lachlan MacGraff##49374
accept Something Bold##28408 |goto Twilight Highlands 54.3,16.7
accept Something Brewed##28409 |goto Twilight Highlands 54.3,16.7
accept Something Stolen##28410 |goto Twilight Highlands 54.3,16.7
accept Something Stewed##28411 |goto Twilight Highlands 54.3,16.7
stickystart "worgribs"
stickystart "pristowl"
step
kill Highland Elk##46970+, Highland Doe##46971+
collect 8 Fresh Venison##64319 |q Something Stewed##28411/1 |goto Twilight Highlands 53.4,24.5
step "worgribs"
kill Highland Worg##46153+
collect 5 Worg Rib##64320 |q Something Stewed##28411/2 |goto Twilight Highlands 53.4,24.5
step "pristowl"
kill Tawny Owl##46162+
click Pristine Owl Feather##3651+
collect 12 Pristine Owl Feather##64317 |q Something Bold##28408/1 |goto Twilight Highlands 56.8,21.9
step
talk Hammelhand##48758
Tell him"_I'm here to escort a delivery to Kirthaven._"
Follow the dwarves
Escort the Supply Caravan |q Something Brewed##28409/1 |goto Twilight Highlands 64.4,22.6
step
Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
Fly onto the zeppelin and land on it
Go downstairs on the zeppelin
click Crate of Fine Cloth##9105
collect Fine Dark Cloth##64318 |q Something Stolen##28410/1 |goto Twilight Highlands 75.1,33.8
step
talk Lachlan MacGraff##49374
turnin Something Bold##28408 |goto Twilight Highlands 54.3,16.7
turnin Something Brewed##28409 |goto Twilight Highlands 54.3,16.7
turnin Something Stolen##28410 |goto Twilight Highlands 54.3,16.7
turnin Something Stewed##28411 |goto Twilight Highlands 54.3,16.7
step
talk Grundy MacGraff##48368
accept Wild, Wild, Wildhammer Wedding##28655 |goto Twilight Highlands 54.3,16.8
step
talk Grundy MacGraff##48368
Tell him "_Let the wedding commence!_"
Watch the cutscene
kill The Beast Unleashed##49234
Complete the Nuptuals |q Wild, Wild, Wildhammer Wedding##28655/1 |goto Twilight Highlands 54.3,16.8
step
talk Kurdran Wildhammer##49358
turnin Wild, Wild, Wildhammer Wedding##28655 |goto Twilight Highlands 55.3,17.3
step
talk Lachlan MacGraff##49374
accept The Maw of Madness##27374 |goto Twilight Highlands 55.2,17.3
step
talk Earthcaller Torunscar##43901
turnin The Maw of Madness##27374 |goto Twilight Highlands 44.0,10.6
accept Torn Ground##27299 |goto Twilight Highlands 44.0,10.6
step
kill 3 Tentacle of Iso'rath##45394 |q Torn Ground##27299/1 |goto Twilight Highlands 41.8,11.4
step
talk Earthcaller Torunscar##45332
turnin Torn Ground##27299 |goto Twilight Highlands 44.0,10.6
accept Pushing Back##27300 |goto Twilight Highlands 44.0,10.6
step
talk Earthmender Duarn##45391
accept Unbroken##27301 |goto Twilight Highlands 44.0,11.3
step
talk Initiate Goldmine##45432
accept Simple Solutions##27302 |goto Twilight Highlands 44.4,11.6
step
talk Earthcaller Yevaa##45362
turnin Unbroken##27301 |goto Twilight Highlands 44.2,18.1
accept Mercy for the Bound##27303 |goto Twilight Highlands 44.2,18.1
stickystart "fleshburnerheart"
stickystart "pyreoil"
step
kill Twilight Captivator##45359+, Twilight Bonebreaker##45334+
Kill #12# Drakgor Cultists |q Pushing Back##27300/1 |goto Twilight Highlands 42.3,17.2
step "fleshburnerheart"
kill Bound Fleshburner##45358+
collect 5 Fleshburner Heart##60981 |q Mercy for the Bound##27303/1 |goto Twilight Highlands 42.3,17.2
step "pyreoil"
click Barrel of Pyreburn Oil##457+
collect 10 Pyreburn Oil##60982 |q Simple Solutions##27302/1 |goto Twilight Highlands 42.3,17.2
step
talk Initiate Goldmine##45432
turnin Simple Solutions##27302 |goto Twilight Highlands 44.4,11.6
step
talk Earthcaller Yevaa##45386
turnin Mercy for the Bound##27303 |goto Twilight Highlands 43.8,11.3
step
talk Earthcaller Torunscar##45332
turnin Pushing Back##27300 |goto Twilight Highlands 44.0,10.6
accept The Maw of Iso'rath##27376 |goto Twilight Highlands 44.0,10.6
step
clicknpc Earthen Ring Gryphon##50473
Join the assault on Iso'rath |q The Maw of Iso'rath##27376/1 |goto Twilight Highlands 44.5,10.6
step
talk Earthcaller Yevaa##47991
turnin The Maw of Iso'rath##27376 |goto Twilight Highlands 48.4,14.6
accept Devoured##27377 |goto Twilight Highlands 48.4,14.6
step
Fight the oozes that attack and survive Iso'rath's defenses |q Devoured##27377/1
step
Click the _Quest Complete_ Box:
turnin Devoured##27377
accept The Worldbreaker##27378
step
Deathwing will attack you and Thrall
Aid Thrall in Battling Deathwing |q The Worldbreaker##27378/1
step
Click the _Quest Complete_ Box:
turnin The Worldbreaker##27378
accept The Terrors of Iso'rath##27379
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Jalara |q The Terrors of Iso'rath##27379/2 |goto Twilight Highlands 49.6,15.8
modelnpc Stormcaller Jalara##47990
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Earthmender Duarn |q The Terrors of Iso'rath##27379/3 |goto Twilight Highlands 49.1,13.1
modelnpc Earthmender Duarn##41531
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Hargoth Dimblaze |q The Terrors of Iso'rath##27379/1 |goto Twilight Highlands 47.0,13.1
modelnpc Hargoth Dimblaze##45392
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Mylra |q The Terrors of Iso'rath##27379/4 |goto Twilight Highlands 47.5,15.6
modelnpc Stormcaller Mylra##44673
step
talk Earthcaller Yevaa##48059
turnin The Terrors of Iso'rath##27379 |goto Twilight Highlands 48.7,16.6
accept Nightmare##27380 |goto Twilight Highlands 48.7,16.6
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Brain of Iso'rath##47960
Kill Iso'rath |q Nightmare##27380/1 |goto Twilight Highlands 48.8,14.9
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto Twilight Highlands 44.0,10.6
step
Congratulations, you have earned the Consumed by Nightmare achievement! |achieve 5451
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Death From Above",{
condition_end="achieved(5874)",
description="Bomb elementals during a bombing run in the Molten Front.",
},[[
step
The easiest way to do this achievement is to accept the daily and NEVER turn it in until you have completed the achievement
|tip This will allow you to try every single day.
confirm |only if not achieved(5874)
step
talk Arthorn Windsong##53259
accept Fire in the Skies##29290 |goto Molten Front 34.3,56.4
|tip You will not be able to accept this quest every single day - it's a random daily.
step
Click the Trained Fire Hawk to ride on it
|tip It looks like a big orange armored eagle.
Use your abilities on your action bar on these mobs below as you fly on the Fire Hawk
|tip They are all large fire elementals that spawn on a small hill to the right as you leave the Beth'tilac spider section as you fly. Hitting them with a single bomb will work, you don't have to kill them.
Bomb Singeslayer |achieve 5874/1 |goto 33.9,57.2
Bomb Ragepyre |achieve 5874/2 |goto 33.9,57.2
Bomb Flashfire |achieve 5874/3 |goto 33.9,57.2
Bomb Hatespark |achieve 5874/4 |goto 33.9,57.2
Bomb Heatflayer |achieve 5874/5 |goto 33.9,57.2
Bomb Blazefury |achieve 5874/6 |goto 33.9,57.2
Earn the Death From Above achievement! |achieve 5874 |goto 33.9,57.2
step
Congratulations! You've earned the Death From Above achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fireside Chat",{
condition_end="achieved(5870)",
description="Speak with characters during the attack on the Molten Front.",
},[[
step
Routing to proper section |next "prequest" |only if not completedq(25372)
Routing to proper section |next "achieve" |only if completedq(25372)
step
label "prequest"
#include "A_Firelands_PreQuests"
step
label "achieve"
Routing to proper section |next "day_2" |only if achieved(5870/1)
Routing to proper section |next |only if default
step
You will need to do the firelands daily quests in order to talk to the next npc's
If you haven't already done so, it will take you at least two days due to phasing
Do the dailies up until you get the quests 'The Forlorn Spire' or 'Into the Fire'
Click here to proceed |confirm
step
talk Matoclaw##52669
Ask about the ancient, Malorne |achieve 5870/2 |goto Mount Hyjal 27.2,62.6
achieve 5870/7
step
talk Commander Jarod Shadowsong##52134
Ask him what the Marks of the World Tree are |achieve 5870/3 |goto Molten Front 45.4,83.2
achieve 5870/2
step
talk Malfurion Stormrage##52135
Ask him how the battle is going |achieve 5870/1 |goto Molten Front 47.0,91.0
achieve 5870/1
step
label "day_2"
talk Avrilla##52489
You will only be able to accept one of these quests per day:
accept Some Like It Hot##29299 |goto Molten Front 50.6,87.2 |or
accept Embergris##29255 |goto Molten Front 50.6,87.2 |or
accept Steal Magmolias##29257 |goto Molten Front 50.6,87.2 |or
step
talk Rayne Feathersong##52467
You will only be able to accept one of these quests per day:
accept Aggressive Growth##29139 |goto 48.7,86.9 |or
accept Wisp Away##29143 |goto 48.7,86.9 |or
step
talk Ricket##53196
You will only be able to accept one of these quests per day:
|tip She will not offer a quest in this location, on some days. On those days, she will offer a quest later, in a different location.
accept A Bitter Pill##29263 |goto 46.8,90.2 |or
accept Living Obsidium##29278 |goto 46.8,90.2 |or
step
talk Captain Irontree##53080
accept Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
Ask about the Sentinel Tree  |achieve 5870/8 |goto 45.6,85.8
You will only be able to accept two of these quests per day:
accept Hostile Elements##29179 |goto 45.6,85.8 |or 2
accept Traitors Return##29142 |goto 45.6,85.8 |or 2
accept The Harder They Fall##29141 |goto 45.6,85.8 |or 2
accept Breach in the Defenses##29137 |goto 45.6,85.8 |or 2
accept The Dogs of War##29304 |goto 45.6,85.8 |or 2
stickystart "obsidiummeteor"
stickystart "magmolia"
step
Stand next to the fire portal with your Wisp
|tip It looks like 2 steam vents and black smoke riding out of the ground.
kill Firekin##53092+
Close a Fire Portal |q 29143/1 |goto 51.6,65.0
only if havequest(29143)
step
kill Emberspit Scorpion##53240+
|tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
Help the Crimson Lasher Drink From #6# Ember Pools |q 29299/1 |goto 50.7,50.8
only if havequest(29299)
step
click Lava Bubbles##10319+
|tip They look like big light orange bubbles in the pools of lava around this area.
use The Bitter Pill##69759
|tip Use The Bitter Pill when the Subterranean Magma Worm is almost don casting its Burning Hunger spell.
kill Subterranean Magma Worm |q 29263/1 |goto 52.8,49.9
only if havequest(29263)
step "obsidiummeteor"
clicknpc Magnetic Stones##53373+
|tip They look like stone spikes pointing upward on the ground around this area.
click Obsidium Meteorites##10159+
|tip They look like spiked rocks that crash to the ground in balls of fire after you click the Magnetic Stones.
collect 10 Obsidium Meteorite##69807 |q 29278/1 |goto 50.0,50.8
only if havequest(29278)
step "magmolia"
Click Magmolias
kill Lava Burster##53090+
|tip They look like white flowers on the surface of the pools of lave around this area.
collect 8 Magmolia##69725 |q 29257/1 |goto 50.7,50.8
only if havequest(29257)
step
kill Charred Soldier##52504+, Charred Vanquisher##52503+
collect 5 Embergris##69722 |q 29255/1 |goto 48.2,75.8
only if havequest(29255)
step
kill 8 Charred Combatant |q 29179/1 |goto 48.2,75.8
only if havequest(29179)
step
kill 3 Druid of the Flame |q 29142/1 |goto 48.2,75.8
only if havequest(29142)
step
kill 5 Lava Burster |q 29137/1 |goto 48.2,75.8
only if havequest(29137)
step
kill 5 Ancient Charhound |q 29304/1 |goto 48.2,75.8
only if havequest(29304)
step
use Enchanted Salve##69240
|tip Use your Enchanted Salve on Wounded Hyjal Defenders .
|tip They look like various race corpses laying on the ground around this area.
Save #8# Wounded Hyjal Defenders |q 29138/1 |goto 48.2,75.8
only if havequest(29138)
step
click Ash Pile##49+
|tip They look like brown mounds of dirt on the ground around this area.
Plant #5# Smothervines |q 29139/1 |goto 48.2,75.8
only if havequest(29139)
step
kill 3 Molten Behemoth##52552 |q 29141/1 |goto 47.2,83.7
only if havequest(29141)
step
talk Avrilla##52489
You will only be able to turn in one of these quests per day:
turnin Some Like It Hot##29299 |goto 50.6,87.2
turnin Embergris##29255 |goto 50.6,87.2
turnin Steal Magmolias##29257 |goto 50.6,87.2
step
talk Rayne Feathersong##52467
You will only be able to turn in one of these quests per day:
turnin Aggressive Growth##29139 |goto 48.7,86.9
turnin Wisp Away##29143 |goto 48.7,86.9
step
talk Damek Bloombeard##53214
You will only be able to turn in one of these quests per day:
turnin A Bitter Pill##29263 |goto 46.9,90.0
turnin Living Obsidium##29278 |goto 46.9,90.0
step
talk Captain Irontree##53080
turnin Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
You will only be able to turn in two of these quests per day:
turnin Hostile Elements##29179 |goto 45.6,85.8
turnin Traitors Return##29142 |goto 45.6,85.8
turnin The Harder They Fall##29141 |goto 45.6,85.8
turnin Breach in the Defenses##29137 |goto 45.6,85.8
turnin The Dogs of War##29304 |goto 45.6,85.8
step
talk General Taldris Moonfall##52824
Decide which daily quest line you want to complete:
|tip You can only do one of these quest lines per day.
accept Into the Fire##29206 |goto 45.6,85.8 |or |next "DruidoftheTalon"
accept The Forlorn Spire##29205 |goto 45.6,85.8 |or |next "ShadowWardens"
step
label "DruidoftheTalon"
Stand in this spot and wait for a Windcaller to start walking into the fire
|tip The Windcaller will be a Druid of the Talon, with Windcaller in their name, standing in this spot.
Follow the Windcaller through the fire
|tip Walk behind them so the flames don't burn you.
kill Flamewaker Assassin##53328+
kill Pyrelord##52683
Protect the Druid of the Talon Windcaller |q 29206/1 |goto 43.0,80.2
only if havequest(29206)
step
talk Thisalee Crow##52444
Ask her _"How do I get out of here?"_ |achieve 5870/5 |goto Molten Front 42.5,59.7
achieve 5870/8
step
talk Thisalee Crow##52444
turnin Into the Fire##29206
accept Flamewakers of the Molten Flow##29264
accept Fire Flowers##29265
step
talk Anren Shadowseeker##52478
accept Hounds of Shannox##29274 |goto 41.9,61.5
stickystart "lucifern"
step
kill Flamewaker Sentinel##53085+, Flamewaker Hunter##53143+, Flamewaker Shaman##53093+
Kill #8# Flamewaker |q 29264/1 |goto 48.8,60.0
only if havequest(29264)
step "lucifern"
click Lucifern##7845+
|tip They look like small red plants on the ground around this area.
collect 5 Lucifern##69765 |q 29265/1 |goto 48.8,60.0
only if havequest(29265)
step
kill Charhound##53152+
collect 6 Houndbone Ash##69816 |q 29274/1 |goto 43.2,51.2
only if havequest(29274)
step
talk Anren Shadowseeker##53233
accept Need... Water... Badly...##29272 |goto 51.9,31.0
step
talk Anren Shadowseeker##53233
Tell her "_Let's get him out of this cave_"
|tip Follow Anren Shadowseeker through the cave using the air vents.
Escort Anren to the Front of the Cave |q 29272/1 |goto 51.9,31.0
step
talk Thisalee Crow##52444
turnin Flamewakers of the Molten Flow##29264 |goto 42.5,59.7
step
Fly up out of the cavern |goto Molten Front 33.7,65.7 < 7
|tip Go to this spot and jump.
talk Arthorn Windsong##53259
Ask her what she can tell you about the fire hawks |achieve 5870/6 |goto Molten Front 34.2,56.4
achieve 5870/4
step
Earn the _Fireside Chat_ Achievement |achieve 5870 |next "gratz"
__
__
If you chose to do _Into the Fire_ first, click here to reset the guide for tomorrow. |confirm |next "day_2"
step
label "ShadowWardens"
Wait until the named mobs starts walking up the big ramp
|tip The named mobs' health bars will appear beneath your minimap.
Protect the named mobs and help them fight
|tip They must stay alive for the entire quest, so don't let them die.
Protect the Druid Assault Group |q 29205/1 |goto 54.7,70.9
only if havequest(29205)
step
talk Marin Bladewing##52494
turnin The Forlorn Spire##29205 |goto Molten Front 64.9,67.3
step
talk Deldren Ravenelm##52921
Ask what he can tell you about the spiders |achieve 5870/7 |goto 66.1,63.9
achieve 5870/5
step
Earn the _Fireside Chat_ Achievement |achieve 5870 |next "gratz"
__
__
If you chose to do _Into the Fire_ first, click here to reset the guide for tomorrow |confirm |next "day_2"
step
label "gratz"
Speak with the characters during the attack on the Molten Front |achieve 5870
step
Congratulations! You've earned the Fireside Chat achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Flawless Victory",{
condition_end="achieved(5867)",
description="This guide will walk you through Solo killing a Molten Behemoth in the Molten Front without taking any damage from Molten Stomp or Fiery Boulder.",
},[[
step
kill Molten Behemoth##52552+
|tip At level 100 the Molten Behemoths are a two shot kill, making this achievement hard not to accomplish.
Solo kill a Molten Behemoth without taking any damage from Molten Stomp or Fiery Boulder
achieve 5867 |goto Molten Front 52.9,49.0
step
Congratulations, you have earned the Flawless Victory achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fungal Frenzy",{
condition_end="achieved(5450)",
description="Suffer the effects of a Poolstool, Shuffletruffle, Shrinkshroom and Trapcap simultaneously.",
},[[
step
Routing to proper section |next "prequest" |only if not completedq(26709)
Routing to proper section |next "fury" |only if completedq(26709)
step
label "prequest"
#include "A_Therazane_PreQuest"
step
label "fury"
talk Gorsik the Tumultuous##43804
accept Fungal Fury##27050 |goto Deepholm 57.3,12.5
step
For this achievement you will be required to click mushrooms that put a buff on you
|tip Each buff lasts 2 minutes and you will need to have all three types on you at once when you click the last one.
Since the mushrooms spawn randomly, it's a good idea to survey the area first, finding as many of the different mushrooms as possible so you can plan your route
|tip Walking through water will remove any of the buffs you already have on.
confirm
step
click Sprouting Crimson Mushroom##205147
Click the mushrooms in this order:
Click a red mushroom and get the Poolstool buff.
Click a white mushroom with brown spots and get the Shrinkshroom buff.
Click a blue mushroom and get the Shuffletruffle buff.
Click a purple mushroom with pink spots.
Earn the Fungal Frenzy achievement! |achieve 5450 |goto 74.0,41.2
step
Congratulations!  You've earned the Funal Frenzy achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fungalophobia",{
condition_end="achieved(5445)",
description="This guide will walk you through defeating Fungalmancer Glop during the Glop, Son of Glop daily quest in Deepholm without taking any damage from his Boomshrooms.",
},[[
step
In able to obtain the daily quest needed for the achievement Fungalophobia you will need to have unlocked and be Revered with Therazane
_Click here_ if you need to complete the Therazane pre-quests |confirm |next "p_quest" |only if not completedq(26709)
_Click here_ if you need if you have done the prequests but not yet reached Revered |confirm |next "d_quest" |only if rep('Therazane')<Revered
You have reached Revered and are being directed to the achievement |next "next" |only if rep('Therazane')>=Revered
step "p_quest"
#include "A_Therazane_PreQuest"
step "d_quest"
#include "Therazane_Dailies"
step "next"
talk Ruberick##44973
accept Glop, Son of Glop##28390 |goto Deepholm 59.6,14.0
|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However the quest may not be offered everyday.
step
_Enter_ the cave |goto Deepholm/0 68.7,28.7 < 10 |walk
talk Earthmender Norsala##43503
Tell her "_I'm ready when you are_."
kill Fungalmancer Glop |q Glop, Son of Glop##28390/1 |goto Deepholm 69.8,31.9
Follow him each time he runs away. Avoid the mushrooms as you walk because they will give you a debuff
|tip While fighting Fungalmancer Glop kill the Boomshrooms he creates or avoid them altogether. You must not be hit by anything he creates so keep moving when he throws the Boomshrooms.
step
talk Ruberick##44973
turnin Glop, Son of Glop##28390 |goto Deepholm 59.6,14.0
step
If you didn't get the achievement you were hit during the encounter. You will have to try again another day |only if not achieved(5445)
Congratulations, you have earned the Fungalophobia achievement! |only if achieved(5445)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Gang War",{
condition_end="achieved(5864)",
description="This guide will walk you through wining a duel in Sethria's Roost while on the quest 'The Protectors of Hyjal.'",
},[[
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
step
Duel another player around this area and win
achieve 5864 |goto Mount Hyjal 30.7,75.9
|tip You and a friend can get this achievement easily by dueling each other and letting each other win.
step
Congratulations, you have earned the Gang War achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Have... Have We Met?",{
condition_end="achieved(5865)",
description="This guide will walk you through acknowledging your recognition by /waving at the following NPCs in Sethria's Roost.",
},[[
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
step
Perform the Wave emote on the following NPCs
|tip They are NPCs that follow players around this area. The NPCs that follow each player are not always the same, so you may have to look around in different groups for all of these.
clicknpc Linken##52233
Wave at Linken |achieve 5865/1 |goto Mount Hyjal 30.7,75.9 |script DoEmote("WAVE")
clicknpc Hemet Nesingwary##52261
Wave at Hemet Nesingwary |achieve 5865/2 |goto Mount Hyjal 30.7,75.9 |script DoEmote("WAVE")
clicknpc Nat Pagle##52244
Wave at Nat Pagle |achieve 5865/3 |goto Mount Hyjal 30.7,75.9 |script DoEmote("WAVE")
clicknpc Chromie##58195
Wave at Chromie |achieve 5865/4 |goto Mount Hyjal 30.7,75.9  |script DoEmote("WAVE")
clicknpc Mankrik##52238
Wave at Mankrik |achieve 5865/5 |goto Mount Hyjal 30.7,75.9  |script DoEmote("WAVE")
clicknpc Thassarian##53427
Wave at Thassarian |achieve 5865/6 |goto Mount Hyjal 30.7,75.9  |script DoEmote("WAVE")
step
Congratulations, you have earned the Have... Have We Met? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Help the Bombardier! I'm the Bombardier!",{
condition_end="achieved(5317)",
description="This guide will walk you through killing 10 Schnotzz infantry with one artillery shell during the Fire From the Sky daily quest in Uldum.",
},[[
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum 41.4,5.5
step
click Confiscated Artillery##27658
Use the Designate Target ability on one of the groups of mobs
|tip The achievement is done by hitting 10 targets at once. To do this you use two artillery shells in succession: target one group at the top of the stairs with the first shot, then target a group at the bottom for the second shot.
Kill 10 Schnotzz Infantry with one artillery shell during the Fire From the Sky daily quest
achieve 5317
step
Congratulations, you have earned the Help the Bombardier! I'm the Bombardier! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Infernal Ambassadors",{
condition_end="achieved(5869)",
description="Slay the elite invaders of Hyjal in the different ways.",
},[[
step
You will need to be able to do the Firelands dailies in order to earn this achievement
Click here if you need to do the prequests |confirm
Click here if you have completed the prequests |next achieve |confirm
step
#include "A_Firelands_PreQuests"
step
label achieve
kill Pyrachnis##52749
Slay Pyrachnis without using the Emerald of Aessina |achieve 5869/3 |goto Mount Hyjal 13.4,44.7
|tip This is easiest with a group, or with a pet, if you have one.
step
kill Millagazor##52649
Slay Millagazor without taking damage from Gout of Flame |achieve 5869/2 |goto 13.4,44.6
|tip When Millagazor starts casting Gout of Flame, move around so that you don't get hurt.
step
kill Lylagar##52766
Slay Lylagar without taking damage from Lylagar Breath |achieve 5869/1 |goto 41.8,56.0
|tip When Lylagar starts casting Lylagar Breath, move around so that you don't get hurt.
step
kill Galenges##52399
Slay Galenges before he is weakened a second time |achieve 5869/4 |goto 41.7,56.1
|tip Get a group of people to help you kill Galenges really fast.
step
kill Nemesis##52383
Slay Nemesis at Ashen Lake without taking damage from Molten Fury |achieve 5869/5 |goto 24.1,55.7
|tip Run into Tooga's yellow bubble shield before Nemesis finishes casting Molten Fury, so you don't take any damage from it. You will see a message in your chat when Nemesis is about to errupt.
Earn the Infernal Ambassadors achievement! |achieve 5869
step
Congratulations!  You've earned the Infernal Ambassadors achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\King of the Mountain",{
condition_end="achieved(5320)",
description="Complete the Twilight's Hammer quest chain in Twilight Highlands up to and including Skullcrusher the Mountain.",
},[[
step
click Hero's Call Board##10016
|tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
accept Hero's Call: Twilight Highlands!##28716 |goto Stormwind City 62.9,71.6
step
talk King Varian Wrynn##29611
turnin Hero's Call: Twilight Highlands!##28716 |goto 85.7,31.8
accept My Son, the Prince##26960 |goto 85.7,31.8
step
talk Anduin Wrynn##1747
Tell him to come with you
Become Introduced to Anduin |q 26960/1 |goto 85.7,31.6
step
talk King Varian Wrynn##29611
turnin My Son, the Prince##26960 |goto 85.7,31.8
accept Rallying the Fleet##26975 |goto 85.7,31.8
accept Twilight Investigation##26977 |goto 85.7,31.8
step
talk Major Samuelson##2439
turnin Twilight Investigation##26977 |goto 85.1,31.3
accept The Usual Suspects##26997 |goto 85.1,31.3
step
talk Stormwind Dock Worker##29152
Interrogate #6# Dock Workers |q 26997/1 |goto 29.3,26.5
step
Next to you:
talk Anduin Wrynn##44293
turnin The Usual Suspects##26997
If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Escort Anduin to Supply Sergeant Graves |q 26975/1 |goto 33.1,39.4
step
talk Supply Sergeant Graves##44749
turnin Rallying the Fleet##26975 |goto 33.1,39.5
accept Missing Parts##27038 |goto 33.1,39.5
step
Next to you:
talk Anduin Wrynn##44293
accept Peasant Problems##27044
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
click Missing Parts##1211+
|tip They look like brown metal buckets with mechanical parts in them on the ground around this area.
collect 5 Missing Parts##60757 |q 27038/1 |goto 34.6,46.1
step
talk Fargo Flintlocke##44806
turnin Missing Parts##27038 |goto 34.8,38.2
step
Next to you:
talk Anduin Wrynn##44293
accept He's Holding Out on Us##27064
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Escort Prince Anduin to Farmer Wollerton |q 27044/1 |goto 52.0,5.8
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
talk Farmer Wollerton##44807
turnin Peasant Problems##27044 |goto 52.1,6.0
accept Unholy Cow##27060 |goto 52.1,6.0
step
Discover the Crime Scene |q 27060/1 |goto 43.8,4.6
from Twilight Striker##44808+
Protect Prince Anduin |q 27060/2 |goto 43.8,4.6
step
Next to you:
talk Anduin Wrynn##44293
turnin Unholy Cow##27060
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Allow Anduin to Examine Samuelson's Papers |q 27064/1 |goto 80.2,62.1
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
Next to you:
talk Anduin Wrynn##44293
turnin He's Holding Out on Us##27064
accept Expert Opinion##28807
If Anduin Wrynn is not next to you, you can find him in Stormwind Keep at [85.7,31.6]
|tip Talk to him and tell him to come with you, if you have to go get him again.
step
talk Master Mathias Shaw##332
turnin Expert Opinion##28807 |goto 81.3,63.5
accept The Old Barracks##27072 |goto 81.3,63.5
step
kill 6 Crazed Cultist##44814 |q 27072/1 |goto 39.8,56.8
step
talk Jack Bauden##50049
turnin The Old Barracks##27072 |goto 37.2,56.2
accept Cataclysm in the Catacombs##27092 |goto 37.2,56.2
step
Enter the Cathedral |goto 52.9,51.0 < 10 |walk
Follow the spiral ramp down |goto 51.3,44.3 < 10 |walk
Follow the stairs down |goto 53.2,42.6 < 10 |walk
kill The Black Bishop |q 27092/1 |goto 50.6,42.2
step
click Pile of Explosives##9278
turnin Cataclysm in the Catacombs##27092 |goto 50.2,42.6
accept A Villain Unmasked##27106 |goto 50.2,42.6
step
talk Major Samuelson##2439
Tell him it's over
Unmask Major Samuelson |q 27106/1 |goto 85.1,31.0
kill Major Samuelson |q 27106/2 |goto 85.1,31.0
step
talk King Varian Wrynn##29611
turnin A Villain Unmasked##27106 |goto 85.8,31.7
accept Twilight Shores##28238 |goto 85.8,31.7
step
talk Fargo Flintlocke##44806
turnin Twilight Shores##28238 |goto 26.1,47.3
accept Twilight Shores##28832 |goto 26.1,47.3
step
clicknpc Flintlocke's Seaplane##50300 |goto 25.9,47.6 < 7
|tip It looks like an airplane flying in place above the water.
Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
talk Lieutenant Fawkes##49022
turnin Twilight Shores##28832 |goto Twilight Highlands 81.0,79.4
accept Welcome to Highbank!##28596 |goto Twilight Highlands 81.0,79.4
step
kill Bilgewater Gunman##49009+, Axebite Infantry##49008+
Kill #10# Horde Attackers |q 28596/1 |goto 81.1,77.3
step
talk Lieutenant Fawkes##49022
turnin Welcome to Highbank!##28596 |goto 81.0,79.4
step
talk Fargo Flintlocke##49252
accept Burnin' at Both Ends##28597 |goto 81.0,79.4
step
clicknpc Cannon Powder Barrel##49143
|tip They look like wooden barrels on the ground around this area.
collect 10 Cannon Powder##64585 |q 28597/1 |goto 81.1,77.3
step
talk Fargo Flintlocke##49252
turnin Burnin' at Both Ends##28597 |goto 78.8,76.8
accept Aiming High##28598 |goto 78.8,76.8
step
Wait to be launched from Flintlocke's Cannon |q 28598/1
|tip You may have to wait for a few minutes, so just stand here and wait.
step
_Go downstairs_ in the zeppelin
use Flintlocke's Explosives##64660
|tip Use Flintlocke's Explosives while downstairs.
Destroy the Skyshredder |q 28598/2
step
talk Fargo Flintlocke##49252
turnin Aiming High##28598 |goto 78.9,76.7
accept Kurdran's Waitin'##28599 |goto 78.9,76.7
step
talk Kurdran Wildhammer##49358
|tip He is upstairs in the fort.
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
Slay Ophelia and Protect Ephram |q 27200/1 |goto 76.1,79.8
step
talk Ephram Hardstone##45171
turnin Siren's Song##27200 |goto 76.0,80.0
stickystart "blackscalenaga"
step
click Water-Logged Crates##335+
|tip They look like wooden boxes on the ground underwater around this area.
collect 8 Recovered Supplies##60857 |q 27177/1 |goto 76.2,83.0
step "blackscalenaga"
kill Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
Slay #10# Blackscale Naga |q 27178/1 |goto 76.2,83.0
step
Go upstairs in the fort
talk Simon Chandler##45170
turnin Salvage Operation##27177 |goto 79.3,78.5
turnin Naga Reinforcements##27178 |goto 79.3,78.5
step
talk Lieutenant Emry##45169
turnin Our Boys on the Shore##27338 |goto 76.8,69.8
accept Scouting the Shore##27341 |goto 76.8,69.8
accept Landgrab##27366 |goto 76.8,69.8
step
talk Fargo Flintlocke##49252
accept Shredderectomy##27433 |goto 77.0,69.9
stickystart "axemarine"
stickystart "diamondshred"
step
Scout the Beach Head Control Point |q 27341/1 |goto 77.5,65.3
step "axemarine"
kill 12 Axebite Marine##45175 |q 27366/1 |goto 77.4,67.1
|tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground. Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step "diamondshred"
kill Diamond-Blade Shredder##45185+
collect 5 Abused Shredder Parts |q 27433/1 |goto 74.3,68.0
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
step
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
|tip They look like grey-ish bumps with green leaves on them on the ground around this area.
collect 8 Thorny Stankroot##61319 |q 27515/1 |goto 71.4,66.2
step
talk Thordun Hammerblow##45172
turnin Roots'll Do 'Er##27515 |goto 67.7,66.0
accept Wings Over Highbank##27516 |goto 67.7,66.0
step
talk Thordun Hammerblow##45172
Tell him you're ready, let's go!
Fly with Thordun Hammerblow to Highbank |q 27516/1 |goto 67.7,66.0
step
talk Innkeeper Francis##49688
home Highbank |goto 79.4,78.5
step
Go upstairs in the fort
talk Kurdran Wildhammer##45167
turnin Wings Over Highbank##27516 |goto 79.1,78.3
accept Any Portal in a Storm##27537 |goto 79.1,78.3
step
talk Thordun Hammerblow##45172
accept The Perfect Poultice##27538 |goto 79.2,78.3
step
talk Glenn Arbuckle##47119
fpath Highbank |goto 81.7,77.1
stickystart "rivermuckyuck"
step
kill Muddied Water Elemental##44011+
collect 5 Whirlpool Core##60333 |q 27537/1 |goto 67.7,46.9
step "rivermuckyuck"
click Verrall River Muck##10352+
|tip They look like mounds of swirled gray and white sand on the ground around this area.
collect 10 Verrall River Muck##60337 |q 27538/1 |goto 67.7,46.9
step
talk Talaa##45173
turnin Any Portal in a Storm##27537 |goto 79.4,77.6
turnin The Perfect Poultice##27538 |goto 79.4,77.6
accept The Way is Open##27545 |goto 79.4,77.6
step
talk Kurdran Wildhammer##45167
|tip He is upstairs in the fort.
turnin The Way is Open##27545 |goto 79.1,78.3
step
talk Thordun Hammerblow##45172
accept Firebeard's Patrol##27621 |goto 79.2,78.3
step
talk Keegan Firebeard##49271
turnin Firebeard's Patrol##27621 |goto 60.1,57.9
accept Welcome Relief##27803 |goto 60.1,57.9
accept The Only Homes We Have##27804 |goto 60.1,57.9
step
talk Innkeeper Corlin##49795
home Firebeard's Patrol |goto 60.4,58.1
step
talk Cailin Longfellow##46814
accept Small Comforts##27805 |goto 60.4,58.3
step
talk Farstad Stonegrip##47147
fpath Firebeard's Patrol |goto 60.4,57.6
stickystart "vilfire"
stickystart "villagefirestarts"
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Meara's Dried Roses##10073
|tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
collect Meara's Dried Roses##62545 |q 27805/1 |goto 59.8,56.2
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Aprika's Lost Doll##7514
|tip It looks like a white teddy bear with crossed out eyes sitting on the ground inside this burning building.
collect Aprika's Doll##62543 |q 27805/3 |goto 59.5,55.9
step
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires to extinguish them.
click Parlan's Ivory Hammer##76092
|tip It looks like a white hammer sitting on the stove inside this burning building.
collect Parlan's Ivory Hammer##62546 |q 27805/2 |goto 59.3,56.9
step "vilfire"
use Wildhammer Water Bucket##62508
|tip Use your Wildhammer Water Bucket next to fires.
Extinguish #50# Village Fires |q 27804/1 |goto 59.8,56.9
step "villagefirestarts"
kill 8 Subjugated Firestarter##46838 |q 27803/1 |goto 59.8,56.9
step
talk Keegan Firebeard##49271
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
kill Mullan Gryphon Rider##46813
Defeat a Mullan Gryphon Rider |q 27810/1 |goto 51.1,59.9
step
talk Duglas Mullan##46811
turnin The Fighting Spirit##27810 |goto 50.8,60.2
step
talk Mullan Gryphon##46968
Let the gryphons smell the piece of charred highland birch
Find and Return #8# Mullan Gryphons |q 27811/1 |goto 57.3,67.6
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
stickystart "straggle"
stickystart "dragonaxeandracks"
step
Go upstairs in this building
kill Gorosh the Pant Stealer##48102
collect Bahrum's Pants##63374 |q 28234/1 |goto 62.3,47.0
step "straggle"
talk Injured Dragonmaw Straggler##47465
Help the orcs up
Defeat 6 Dragonmaw Stragglers |q 27813/1 |goto 62.3,46.8
step "dragonaxeandracks"
click Dragonmaw Weapon Axe##9561+
|tip The Dragonmaw Stragglers drop them when you help them up. They look like axes stuck in the ground.
click Dragonmaw Weapon Rack##9921+
|tip They look like brown racks with 2 axes on them mounted on walls around this area.
collect 8 Dragonmaw Weapon##62511 |q 27814/1 |goto 62.3,46.8
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
clicknpc Firebeard Gryphon Mount##51141
|tip They look like big eagles standing here.
Ride the Firebeard Gryphon Mount |invehicle |c |q 27817 |goto 59.9,57.3
step
While flying on the Firebeard Gryphon Mount:
Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks
|tip Use your Storm Shield ability when someone casts a lightning attack on you.
kill 12 Twilight Stormbender##47199 |q 27817/1 |goto 58.8,53.1
step
While flying on the Firebeard Gryphon Mount:
Use the abilities on your action bar to weaken Servias Windterror
|tip Eventually, you will get off the gryphon and fight him regularly.
kill Servias Windterror |q 27817/2 |goto 58.6,51.7
|tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
talk Keegan Firebeard##49271
turnin Dropping the Hammer##27817 |goto 60.2,57.9
accept Dunwalds Don't Die##27640 |goto 60.2,57.9
accept A Coward's Due##28001 |goto 60.2,57.9
step
Enter this building |goto 46.7,66.0 < 10 |walk
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
talk Cayden Dunwald##46174
turnin Cayden Dunwald##27645 |goto 45.8,71.7
accept Once More Into The Fire##27648 |goto 45.8,71.7
step
talk Cayden Dunwald##46174
Tell him _"Yeah... and let's get to it then"_
Escort Cayden Dunwald
Accompany Cayden through Dunwald Market Row |q 27648/1 |goto 45.8,71.7
Cayden Dunwald can also be at [47.9,74.5]
step
talk Cayden Dunwald##46174
turnin Once More Into The Fire##27648 |goto 47.9,74.5
Cayden Dunwald can also be at [45.8,71.7]
step
talk Eoin Dunwald##46175
turnin Eoin Dunwald##27644 |goto 52.9,74.3
accept Anything But Water##27647 |goto 52.9,74.3
step
click Sacred Ale Tap##7415+
|tip They look like 3 wooden kegs built into the wall in the basement of this building.
collect Sacred Wildhammer Ale##62317 |q 27647/1 |goto 52.8,69.8
step
talk Eoin Dunwald##46583
turnin Anything But Water##27647 |goto 52.4,70.3
accept A Steady Supply##27649 |goto 52.4,70.3
step
talk Donnelly Dunwald##46176
turnin Donnelly Dunwald##27643 |goto 46.4,59.1
accept Finding Beak##27646 |goto 46.4,59.1
stickystart "wildvictim"
stickystart "victims"
stickystart "alecasks"
step
Search the cellar in southern Dunwald Hovel |q 27646/1 |goto 45.4,60.0
|tip Go down to the basement.
step
Search the cellar in northwestern Dunwald Hovel |q 27646/2 |goto 46.4,53.8
|tip Go down to the basement.
step
Search the buildings in eastern Dunwald Hovel |q 27646/3 |goto 48.4,52.6
step
talk Donnelly Dunwald##46176
turnin Finding Beak##27646 |goto 46.0,58.7
accept Home Again##27650 |goto 46.0,58.7
step "wildvictim"
kill Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
Welcome #20# Twilight Guests to Dunwald |q 27641/1 |goto 45.9,54.8
step "victims"
talk Dunwald Victim##46609
Find #12# Dunwald Victims |q 27642/1 |goto 45.9,54.8
step "alecasks"
click Wildhammer Ale Cask##7415+
|tip They look like brown barrels sitting on the ground around this area.
collect 6 Wildhammer Ale##62327 |q 27649/1 |goto 45.9,54.8
You can find more of all these things:
Around 47.0,66.1
Around 46.4,72.6
Around 50.7,69.8
step
Enter this building |goto 46.7,66.0 < 10 |walk
talk Keely Dunwald##46177
turnin Home Again##27650 |goto 46.0,65.5
accept Doing It Like a Dunwald##27651 |goto 46.0,65.5
step
talk Eoin Dunwald##46585
turnin A Steady Supply##27649 |goto 50.5,70.7
step
talk Flynn Dunwald##46143
turnin While Meeting The Family##27641 |goto 50.5,70.7
turnin Sifting Through The Wreckage##27642 |goto 50.5,70.7
step
talk Flynn Dunwald##46628
Tell him _"I'm in"_
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
home Thundermar |goto 49.5,30.4
step
talk Doran Talonheart##47154
fpath Thundermar |goto 48.5,28.1
stickystart "alekegs"
stickystart "foodstore"
step
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 27754/1 |goto 46.2,37.4
step "alekegs"
click Thundermar Ale Keg##76191+
|tip They look like wooden barrels on the ground around this area.
collect 10 Wildhammer Keg##62330 |q 27752/1 |goto 46.2,37.4
step "foodstore"
click Wildhammer Food Stores##224+
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 15 Wildhammer Food Stores##62324 |q 27753/1 |goto 46.2,37.4
You can find more around 49.1,37.3
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
talk Nivvet Channelock##48174
accept Tempered in Elemental Flame##28211 |goto 49.1,29.4
accept Hot Stuff##28212 |goto 49.1,29.4
accept Potential Energy##28215 |goto 49.1,29.4
step
talk Colin Thundermar##46591
accept Magmalord Falthazar##28216 |goto 49.0,29.7
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin A Vision of Twilight##28241 |goto 57.9,33.5
accept We All Must Sacrifice##28242 |goto 57.9,33.5
stickystart "elementloops"
step
kill 10 Shaman of the Black##46322 |q 28242/1 |goto 58.0,32.6
step "elementloops"
kill Obsidian Stoneslave##47226+
collect 10 Twisted Elementium Loop##63285 |q 28215/1 |goto 58.0,32.6
step
clicknpc The Eye of Twilight##39765
|tip It's a purple orb above a spinning metal machine.
turnin We All Must Sacrifice##28242 |goto 57.9,33.5
accept The Eyes Have It##28243 |goto 57.9,33.5
step
talk Nivvet Channelock##48174
turnin Potential Energy##28215 |goto 49.1,29.4
step
talk Low Shaman Blundy##48010
turnin The Eyes Have It##28243 |goto 49.7,29.2
accept Eye Spy##28244 |goto 49.7,29.2
step
clicknpc The Eye of Twilight##39765
|tip It's a spinning purple orb in a metal stand.
Watch the cutscene
Peer Into the Eye |q 28244/1 |goto 49.8,29.1
step
talk Low Shaman Blundy##48010
turnin Eye Spy##28244 |goto 49.7,29.2
stickystart "moltfury"
stickystart "tempspear"
step
kill Magmalord Falthazar##48015
collect Magmalord Falthazar's Head##63286 |q 28216/1 |goto 42.5,23.5
step "moltfury"
kill Unbound Emberfiend##48016+
collect 5 Molten Fury##63283 |q 28212/1 |goto 42.2,24.3
step "tempspear"
click Tempered Spear##8490+
|tip They look like spears with their points sticking out of the ground around this area.
collect 8 Tempered Spear##63282 |q 28211/1 |goto 42.2,24.3
step
talk Colin Thundermar##46591
turnin Magmalord Falthazar##28216 |goto 49.0,29.7
step
talk Nivvet Channelock##48174
turnin Tempered in Elemental Flame##28211 |goto 49.1,29.4
turnin Hot Stuff##28212 |goto 49.1,29.4
accept Tear Them From the Sky!##28280 |goto 49.1,29.4
step
use Shoulder-Mounted Drake-Dropper##63393
|tip Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes.
|tip They are flying in the sky around this area.
kill 8 Dragonmaw Black Drake##48197 |q 28280/1 |goto 49.2,29.8
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
home Kirthaven |goto 54.6,18.0
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
talk Shaina Talonheart##47155
fpath Kirthaven |goto 56.8,15.1
step
talk Colin Thundermar##48472
turnin Rescue at Glopgut's Hollow##28377 |goto 38.1,34.5
accept Find Fanny##28378 |goto 38.1,34.5
accept Ogre Bashin'##28379 |goto 38.1,34.5
stickystart "gloporge"
step
Enter the cave |goto 37.6,33.4 < 10 |walk
Rescue Fanny Thundermar |q 28378/1 |goto 35.0,31.1
step "gloporge"
kill Glopgut Pounder##48474+, Glopgut Hurler##48475+
Slay #10# Glopgut Ogres |q 28379/1 |goto 38.7,30.9
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
Create a Song |q 28413/1 |goto 54.6,17.5
step
talk Russell Brower##48366
turnin Words and Music By...##28413 |goto 54.6,17.5
step
talk Lachlan MacGraff##49374
accept Something Bold##28408 |goto 54.3,16.7
accept Something Brewed##28409 |goto 54.3,16.7
accept Something Stolen##28410 |goto 54.3,16.7
accept Something Stewed##28411 |goto 54.3,16.7
stickystart "riboftheworgs"
stickystart "tawnyfeath"
step
kill Highland Elk##46970+, Highland Doe##46971+
collect 8 Fresh Venison##64319 |q 28411/1 |goto 53.4,24.5
step "riboftheworgs"
kill Highland Worg##46153+
collect 5 Worg Rib##64320 |q 28411/2 |goto 53.4,24.5
step "tawnyfeath"
kill Tawny Owl##46162+
click Pristine Owl Feather##3651+
|tip They look like blue feathers on the ground around this mountainous area.
collect 12 Pristine Owl Feather##64317 |q 28408/1 |goto 56.8,21.9
step
talk Hammelhand##48758
Tell him you're here to escort a delivery to Kirthaven
Follow the dwarves
kill Dragonmaw Skirmisher##48799+
Escort the Supply Caravan |q 28409/1 |goto 64.4,22.6
step
Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
Fly onto the zeppelin and land on it
Go downstairs on the zeppelin
click Crate of Fine Cloth##9105
|tip They look like yellow metal boxes downstairs in the zeppelin.
collect Fine Dark Cloth##64318 |q 28410/1 |goto 75.1,33.8
step
talk Lachlan MacGraff##49374
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
from The Beast Unleashed##49234
Complete the Nuptuals |q 28655/1 |goto 54.3,16.8
step
talk Kurdran Wildhammer##49358
turnin Wild, Wild, Wildhammer Wedding##28655 |goto 55.3,17.3
step
talk Lachlan MacGraff##49374
accept The Maw of Madness##27374 |goto 55.2,17.3
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
stickystart "fleshheart"
stickystart "burningoil"
step
kill Twilight Captivator##45359+, Twilight Bonebreaker##45334+
Kill #12# Drakgor Cultists |q 27300/1 |goto 42.3,17.2
step "fleshheart"
kill Bound Fleshburner##45358+
collect 5 Fleshburner Heart##60981 |q 27303/1 |goto 42.3,17.2
step "burningoil"
click Barrels of Pyreburn Oil##457+
|tip They look like wooden kegs on the ground around this area.
collect 10 Pyreburn Oil##60982 |q 27302/1 |goto 42.3,17.2
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
|tip They look like big eagles standing in this spot.
Join the Assault on Iso'rath |q 27376/1 |goto 44.5,10.6
step
talk Earthcaller Yevaa##47991
turnin The Maw of Iso'rath##27376 |goto 48.4,14.6
accept Devoured##27377 |goto 48.4,14.6
step
Fight the oozes that attack
Try to fight as long as you can
Survive Iso'rath's defenses |q 27377/1
Click the Quest Complete box that pops up
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
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Jalara |q 27379/2 |goto 49.6,15.8
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Earthmender Duarn |q 27379/3 |goto 49.1,13.1
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Hargoth Dimblaze |q 27379/1 |goto 47.0,13.1
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Mylra |q 27379/4 |goto 47.5,15.6
step
talk Earthcaller Yevaa##48059
turnin The Terrors of Iso'rath##27379 |goto 48.7,16.6
accept Nightmare##27380 |goto 48.7,16.6
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom oof your screen. Don't let it get full. Go into the yellow bubbles to lower it.
kill Brain of Iso'rath##47960
Kill Iso'rath |q 27380/1 |goto 48.8,14.9
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto 44.0,10.6
step
talk Golluck Rockfist##48265
accept Warm Welcome##27485 |goto 44.1,10.5
step
Meet with Lirastrasza |q 27485/1 |goto 27.6,21.4
|tip You will get captured by a red dragon.
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
step
Protect the Vermillion Menders while they heal Celastrasza to hull health
Defend #5# Vermillion Menders |q 27505/1 |goto 29.7,33.1
kill Twilight Wyrmkiller##45748+
use Ruby Seeds##61323
|tip Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses.
Reclaim 6 Dragonkin corpses |q 27506/1 |goto 29.7,33.1
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
fpath Vermillion Redoubt |goto 28.6,24.9
stickystart "twilightvaders"
stickystart "vermilegg"
step
Enter the cave |goto 18.4,16.7 < 10 |walk
use Flashgrowth Mote##61385
|tip Use your Flashgrowth Mote next to the Twiligt Portal.
|tip It looks like a blue and pink swirled portal in a metal case.
Destroy the Twilight Portal |q 27509/1 |goto 18.0,16.9
step "twilightvaders"
kill Twilight Abductor##45642+, Twilight Flamequencher##45618+
Kill #12# Twilight Invaders |q 27507/1 |goto 20.9,15.7
step "vermilegg"
clicknpc Vermillion Egg##45651+
|tip They look like brown spiked eggs on the ground around this area.
collect 6 Vermillion Egg##61317 |q 27508/1 |goto 20.9,15.7
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
stickystart "hammergates"
stickystart "twilispearwarder"
step
kill Twilight Spearwarder##47490+
collect Twilight Caravan Cargo Key##62926 |q 28104/1 |goto 25.6,37.9
step "hammergates"
click Twilight Caravan Chest##10106
|tip They look like boxes with a big purple jewel on top of them, sitting in wagons around this area.
collect Twilight's Hammer Gatestone##62927 |q 28104/2 |goto 25.6,37.9
step "twilispearwarder"
kill 8 Twilight Spearwarder##47490 |q 28103/1 |goto 25.6,37.9
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
step
Next to you:
talk Master Mathias Shaw##47611
turnin If The Key Fits##28108
accept Pressing Forward##28109
step
kill Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
Kill #30# Wyrm's Bend Cultists |q 28107/1 |goto 27.5,54.6
step
Next to you:
talk Master Mathias Shaw##47611
turnin Paving the Way##28107
step
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
clicknpc Vermillion Vanguard##51173
|tip It's a red dragon.
Use the abilities on your hotbar on Twilight Shadowdrakes
|tip They are blue dragons that fly around in the air in the area you fly to.
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
stickystart "obvile"
stickystart "pyrewingkills"
step
use Alexstrasza's Tear##63139
|tip Use Alexstrasza's Tear in the small cave beneath this huge tree.
Plant Alexstrasza's Tear |q 28175/1 |goto 63.9,78.0
step "obvile"
kill Obsidian Viletongue##47796+, Obsidian Charscale##47797+
Kill #10# Obsidian Dragonkin |q 28191/1 |goto 62.7,76.2
step "pyrewingkills"
use Wyrmhunter Hooks##63092
|tip Use your Wyrmhunter Hooks on Obsidian Pyrewings.
|tip They are red dragons that fly in the sky around this area. You will get a message on your screen when the Obsidian Pyrewing is almost dead. When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it. If you fall, it can hurt you a lot.
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
use Mother's Flame##63126
|tip Use your Mother's Flame next to the big blue spikes eggs.
Hatch the Obsidian Whelps |q 28176/1 |goto 59.3,82.5
step
Enter the cave |goto 55.4,83.5 < 10 |walk
Infiltrate the Obsidian Lair |q 28176/2 |goto 49.8,85.8
step
talk Baleflame##47905
turnin Following the Young Home##28176 |goto 44.9,91.0
accept Last of Her Kind##28247 |goto 44.9,91.0
step
kill Obsidia##47929
Defeat Obsidia |q 28247/1 |goto 44.9,91.0
step
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
home Victor's Point |goto 43.6,57.2
step
talk Desmond Chadsworth##47118
fpath Victor's Point |goto 43.9,57.3
step
talk Angus Stillmountain##45904
Tell him you're here to lead the Wildhammer squad and drop off the SI:7 agents
Get Your Wildhammer Squad |q 27490/1 |goto 43.8,57.2
stickystart "bloodettin"
step
Drop off the SI:7 |q 27490/2 |goto 39.2,64.5
|tip Land on the flashing blue X on the ground.
step
use Artillery Flare##61363
Target the Northern Building |q 27496/1 |goto 38.8,64.3
step
use Artillery Flare##61363
Target the Northeastern Building |q 27496/2 |goto 40.0,64.4
step
use Artillery Flare##61363
Target the Southwestern Building |q 27496/3 |goto 40.4,69.2
step
use Artillery Flare##61363
Target the Southern Building |q 27496/4 |goto 41.4,71.2
step "bloodettin"
kill Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
Kill #10# Bloodeye Clan Ogres & Ettins |q 27492/1 |goto 41.1,69.8
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
|tip It looks like a wooden crate sitting up on this hill.
Detonate the Hidden Explosives |q 27494/1 |goto 38.1,66.2
step
Click the _Quest Complete_ Box:
turnin Move the Mountain##27494
accept Signal the Attack##27498
step
use Attack Signal##61511
|tip Use your Attack Signal at the top of the tower.
Signal the Attack |q 27498/1 |goto 40.5,62.3
step
Click the _Quest Complete_ Box:
turnin Signal the Attack##27498
accept Four Heads are Better than None##27500
step
Enter the cave |goto 39.8,71.3 < 10 |walk
kill Za'brox##46017
collect Za's Head##61924 |q 27500/1 |goto 37.6,71.3
collect Brox's Head##61925 |q 27500/4 |goto 37.6,71.3
step
kill Beeble'phod##46018
collect Phod's Head##61927 |q 27500/2 |goto 38.7,70.2
collect Beeble's Head##61926 |q 27500/3 |goto 38.7,70.2
step
talk Cassius the White##45669
turnin Four Heads are Better than None##27500 |goto 43.4,57.3
accept Up to the Citadel##27502 |goto 43.4,57.3
step
talk SI:7 Squad Commander##46076
Tell him you're ready
Speak to the Squad Commander |q 27502/1 |goto 38.9,64.0
step
Follow the SI:7 Squad Commander and the SI:7 Agents up the path
Escort the SI:7 |q 27502/2
step
Click the _Quest Complete_ Box:
turnin Up to the Citadel##27502
accept Just You and Mathias##27636
step
talk Master Mathias Shaw##45796
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
Click the Air Portal Controller##9849
|tip It looks like metal canister sitting on the ground up on this floating island.
kill Debilitated Aetharon |q 27659/2 |goto 44.1,81.4
step
click Earth Portal Controller##9849
|tip It looks like metal canister sitting on the ground.
kill Debilitated Apexar##46273 |q 27659/1 |goto 38.0,80.2
step
click Water Portal Controller##9849
|tip It looks like metal canister sitting on the ground.
kill Debilitated Edemantus |q 27659/3 |goto 33.2,62.4
step
talk Countess Verrall##46413
turnin Spirit of the Loch##27660 |goto 27.6,63.9
accept Fire the Cannon##27661 |goto 27.6,63.9
step
kill Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
Kill #10# Twilight Citadel Cultists |q 27654/1 |goto 35.2,67.4
step
kill Dark Assassin##46202+
|tip They look like black shades that wander around this whole area. They are much less common than the other enemies, so you will probably have to fly around this whole area and look for them.
collect 5 Dark Assassin's Pendant |q 27652/1
step
kill Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
Free #10# Enslaved Elementals |q 27662/1
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
use Water of Life##62503
|tip Use your Water of Life next to the Corpse of Forgemaster Finlay.
|tip He's chained to an ancor, drowned underwater.
Extract Artifact Information |q 27719/1 |goto 35.1,61.1
step
talk Master Mathias Shaw##45796
turnin Water of Life##27719 |goto 36.4,66.0
step
kill Master Klem##46342 |q 27688/2 |goto 36.1,70.7
|tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
step
kill Blindeye the Guardian##46399
collect The Elementium Axe##62230 |q 27695/1 |goto 40.2,84.0
step
kill Mia the Rose##46343 |q 27688/3 |goto 42.3,83.5
|tip She's in a small room at the top of this big building. Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
kill Dame Alys Finnsson##46341 |q 27688/1 |goto 43.4,88.5
|tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
talk Master Mathias Shaw##45796
turnin Distract Them for Me##27688 |goto 36.4,66.0
turnin The Elementium Axe##27695 |goto 36.4,66.0
accept Dragon, Unchained##27700 |goto 36.4,66.0
step
use The Elementium Axe##62248
Free Lirastrasza |q 27700/1 |goto 32.4,68.7
step
talk Master Mathias Shaw##45796
turnin Dragon, Unchained##27700 |goto 36.4,66.0
accept Coup de Grace##27702 |goto 36.4,66.0
step
kill Twilight Skyterror##46416+
|tip They look like blue dragons laying on the ground all around this area. You will need to fly around and search for them, as there aren't many of them at one time. Watch Lirastrasza in the sky and you will see the blue dragons fall, so you can immediately fly to them to make it easier.
Deliver #5# Coup de Graces |q 27702/1 |goto 37.5,75.4
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
Ride the Mine Cart |q 27720/2 |goto 37.5,88.7
step
Next to you:
talk Initiate Goldmine##46513
turnin Mr. Goldmine's Wild Ride##27720
accept A Little on the Side##27742
accept While We're Here##27743
stickystart "elemcultist"
stickystart "elementshard"
step
clicknpc Twilight Rune of Earth##46671
|tip It looks like a pink symbol on the ground.
accept Rune Ruination##27744 |goto 37.4,93.2
step
click Twilight Rune of Water##465
|tip It looks like a pink symbol on the ground.
Destroy the Rune of Water |q 27744/2 |goto 35.2,90.4
step
click Twilight Rune of Air##465
|tip It looks like a pink symbol on the ground.
Destroy the Rune of Air |q 27744/3 |goto 33.5,88.4
step
click Twilight Rune of Fire##465
|tip It looks like a pink symbol on the ground.
Destroy the Rune of Fire |q 27744/4 |goto 34.3,86.6
step "elemcultist"
kill Twilight Miner##46610+, Depths Overseer##46579+
Kill #12# Elementium Depths Cultists |q 27743/1
step "elementshard"
click Elementium Shard##10042+
|tip They look like small piles of flat rocks on the ground inside this cave.
collect 6 Elementium Shard##62331 |q 27742/1 |goto 34.5,86.3
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
Click The Hammer of Twilight
|tip It's a huge hammer floating in a beam of blue light on this high platform.
turnin The Hammer of Twilight##27784 |goto 45.4,88.0
accept Skullcrusher the Mountain##27787 |goto 45.4,88.0
Watch the cutscene
Survive Skullcrusher's Backhand |q 27787/1
step
kill Skullcrusher the Mountain |q 27787/2 |goto 45.4,87.9
|tip Follow the instructions that pop up on your screen.  Click the altars surrounding the fight, you will gain buffs from them to help you fight.  The altars are stone blocks with candles on them.  Click Warlord Zaela when she becomes unconscious.  You will see a green arrow bouncing above her when you need to click her.  Eventually, she will fall to the ground near the end of the fight.  Click her body to play the drums she drops to call reinforcements to help finish the fight.
step
talk Kurdran Wildhammer##45668
turnin Skullcrusher the Mountain##27787 |goto 43.4,57.4
step
Earn the King of the Mountain achievement! |achieve 5320
step
Congratulations! You've earned the King of the Mountain achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\King of the Spider-Hill",{
condition_end="achieved(5872)",
description="This guide will walk you through reaching the highest point in the Widow's Clutch within the Molten Front.",
},[[
step
NOTE: These are almost impossible to hit without killing at level 100. In order to avoid this use abilities that taunt but do not cuase damage. Hunter's Trap Launcher with an Ice Trap works well as an example
kill Cinderweb Spinner##52981+
|tip They're high up on the tall rock pillars. Attack them and they will shoot a web to bring you up.
Keep doing this to reach the highest point in the Widow's Clutch |achieve 5872 |goto Molten Front 66.0,56.8
step
Congratulations, you have earned the King of the Spider-Hill achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Legacy of Leyara",{
condition_end="achieved(5859)",
description="Complete the Leyara quests in Mount Hyjal and the Molten Front.",
},[[
#include "A_Firelands_PreQuests"
step
Complete venturing Into the Depths |achieve 5859/3
Earn the Legacy of Leyara achievement! |achieve 5859
step
Congratulations! You've earned the Legacy of Leyara achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Ludicrous Speed",{
condition_end="achieved(5862)",
description="This guide will walk you through obtaining 65 stacks of Soar while on the quest Call the Flock in Mount Hyjal.",
},[[
step
talk Matoclaw##52669
accept Call the Flock##29147 |goto Mount Hyjal 27.2,62.5
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
Abandon the quest Call of the Flock
_Click here_ once you've abandoned the quest |confirm
step
Use your Call the Flock ability near trees, Forest Owls, and the Goldwing Hawks that fly around this area
|tip Do this as fast as possible. Each bird you recruit gives and refreshes your a stacks of soar, but it wears off rather quickly. If you can, go for Goldwing Hawks.
Obtain 65 stacks of Soar |achieve 5862 |goto Mount Hyjal 19.8,41.4
step
Congratulations, you have earned the Ludicrous Speeds achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Master of the Molten Flow",{
condition_end="achieved(5871)",
description="This guide will walk you through completing various challenges within the Molten Flow.",
},[[
step
kill Flamewaker Shaman##53093
|tip When the Flamewaker Shaman casts Flamewave on you, back up so that the shaman moves to stand in the patch of fire on the ground, then kill it.
Kill a Flamewaker Shaman with his own Flamewave |achieve 5871/2 |goto Molten Front 48.8,60.0
step
kill Flamewaker Sentinel##53085
|tip When the Flamewaker Sentinel picks up one of your party members, quickly kill it while it's still carrying them.
Kill a Flamewaker Sentinel while it is carrying a party member |achieve 5871/1 |goto Molten Front 48.8,60.0
step
kill Flamewaker Hunter##53143
|tip Stand on one of the thermal air vents, and attack a Flamewaker Hunter. As it begins to channel its Wild Barrage ability, jump. Immediately run to the next air vent and keep doing that until the Wild Barrage is over. You might want to plan the air vent path you'll take before starting the fight, so you'll know exactly where you'll be running ahead of time.
Survive a Flamewaker Hunter's Wild Barrage without getting hit |achieve 5871/3 |goto Molten Front 48.8,60.0
step
Congratulations, you have earned the Master of the Molten Flow achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\My Very Own Broodmother",{
condition_end="achieved(5447)",
description="Complete the Restless Brood daily quest in Deepholm within 90 seconds of striking the Resonating Crystal.",
},[[
step
This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered every day.
|tip Also, it's a lot easier to have a friend help you with this, as you have to complete the quest within 90 seconds.
Click here if you need to complete the Therazane PreQuests. |confirm
Click here if you need if you have done the prequests, but not yet reached _Revered_. |next "d_quest_" |confirm
You have reached Revered. You are being directed to the achievement. |next next |only if rep("Therazane")>=Revered
step
#include "A_Therazane_PreQuest"
step
label d_quest
#include "Therazane_Dailies"
step
label next
talk Terrath the Steady##43806
accept The Restless Brood##28391 |goto Deepholm 56.6,14.1
|tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
Be sure to track the achievement 'My Very Own Broodmother' for the timer.
only if rep ('Therazane') >= Revered
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
|tip It's a huge green crystal sitting on the ground.
Strike the Pale Resonating Crystal |q 28391/1 |goto 32.7,24.3
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
Defeat Aeosera |q 28391/2 |goto 32.7,24.3
only if rep ('Therazane') >= Revered
step
Make sure your timer has hit 0 before hitting the crystal again.
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
|tip It's a huge green crystal sitting on the ground.
talk Terrath the Steady##43806
turnin The Restless Brood##28391 |goto 32.7,24.3
only if rep ('Therazane') >= Revered
step
Earn the My Very Own Broodmother achievement |achieve 5447
step
Congratulations! You've earned My Very Own Broodmother achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Ready for Raiding II",{
condition_end="achieved(5873)",
description="Slay Lieutenants of Flame in Ragnaros' Reach without getting hit by their special attacks.",
},[[
step
Routing to proper section |next "prequest" |only if not completedq(25372)
Routing to proper section |next "achieve" |only if completedq(25372)
step
label "prequest"
#include "A_Firelands_PreQuests"
step
label "achieve"
Use the Firelands Dailies guide to complete the Strike at the Heart daily
|tip You have to kill these mobs without getting hurt at all by their special abilities.
This is MUCH easier to do as part of group helping each other get this achievement.
confirm
step
During the Strike at the Heart Daily, kill the following mobs without getting hurt by their special abilities:
Ancient Charscale |achieve 5873/1
|tip Move far away from the spot you're at when he casts Javelin Breach, and dodge the Line of Fire spells he sends toward you.
Cinderweb Queen |achieve 5873/2
|tip Run away when she cast Cinder Web - you will get rooted if you get hit by the web.  Her Writhing Injection spell spawns a few spiders after a few seconds that you can't avoid, so you just kill them quickly with some kind of AoE attack.
Devout Harbinger |achieve 5873/3
|tip He will cast Creeping Inferno, which spawns a fire on the ground that chases you.  Run away as fast as you can and don't let it touch you.
Ancient Firelord |achieve 5873/4
|tip Run away to dodge the pillar of fire when he casts Flame Spout under you.  When he starts spinning and shooting fire, just move around to stay out of the way.
Ancient Smoldering Behemoth |achieve 5873/5
|tip Run away from him when he casts Groundfir.  Interrupt his Rain of Flame, or run away as fast as you can - the radius of that spell is pretty big.
Earn the Ready for Raiding II achievement! |achieve 5873
step
Congratulations!  You've earned the Ready for Raiding II achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Rock Lover",{
condition_end="achieved(5449)",
description="This guide will walk you through completing the Lost in the Deeps daily quest in Deepholm 10 times.",
},[[
step
In able to obtain the daily quest needed for the achievement Rock Lover you will need to have unlocked and be Revered with Therazane
_Click here_ if you need to complete the Therazane pre-quests |confirm |next "p_quest" |only if not completedq(26709)
_Click here_ if you need if you have done the prequests but not yet reached Revered |confirm |next "d_quest" |only if rep('Therazane')<Revered
You have reached Revered and are being directed to the achievement |next "next" |only if rep('Therazane')>=Revered
step "p_quest"
#include "A_Therazane_PreQuest"
step "d_quest"
#include "Therazane_Dailies"
step "next"
talk Pyrite Stonetender##44945
accept Lost In The Deeps##26710 |goto Deepholm 55.4,14.2
|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However the quest may not be offered everyday.
step
Enter the cave |goto Deepholm 58.3,25.6 < 5 |walk
Follow this path |goto Deepholm 65.3,18.4 < 5 |walk
talk Pebble##49956 |goto Deepholm 63.1,20.8
Tell him "_Follow me_."
confirm
step
Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
Bring Pebble to safety |q Lost In The Deeps##26710/1 |goto Deepholm 58.3,25.6
step
talk Pyrite Stonetender##44945
turnin Lost In The Deeps##26710 |goto Deepholm 55.4,14.2
step
If you didn't get the achievement you were hit during the encounter. You will have to try again another day |only if not achieved(5449)
Congratulations, you have earned the Rock Lover achievement! |only if achieved(5449)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The 'Unbeatable?' Pterodactyl: BEATEN.",{
condition_end="achieved(5860)",
description="Complete the Vigilance on Wings daily quest in Mount Hyjal 10 times.",
},[[
step
_Go inside_ the blue portal |goto Mount Hyjal 38.77,58.01 < 5 |walk
talk Farden Talonshrike##40578
You can only complete this quest _once a day_ so come back again tomorrow until you're finished
accept Vigilance on Wings##29177 |goto Mount Hyjal 37.2,56.2
step
click Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |goto Mount Hyjal 37.2,56.1
step
_Equip_ the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40719 |c |goto Mount Hyjal 37.4,56.0
step
_Use_ your Flap ability on your hotbar repeatedly to fly to this green flag
kill 10 Twilight Lancers |q Vigilance on Wings##29177/1 |goto Mount Hyjal 36.6,53.4
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto Mount Hyjal 37.2,56.2
step
_You have completed_ the daily available for today
_Complete_ the Vigilance on Wings daily #10# more times |achieve 5860
step
Congratulations, you have _earned_ the _'Unbeatable?' Pterodactyl: BEATEN._ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The Fiery Lords of Sethria's Roost",{
condition_end="achieved(5861)",
description="This guide will walk you through hunting down and slay the following minions of Ragnaros in Sethria's Roost.",
},[[
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.2,61.8
step
label "first"
kill Kelbnar##53265 |achieve 5861/3 |goto Mount Hyjal 30.8,82.2
_Click here_ if Kelbnar can't be found |confirm
step
kill Fah Jarakk##53271 |achieve 5861/1 |goto Mount Hyjal 31.0,86.6
_Click here_ if Fah Jarakk can't be found |confirm
step
kill Searris##53264 |achieve 5861/2 |goto Mount Hyjal 35.6,97.6
_Click here_ if Searris can't be found |confirm
step
kill Andrazor##53267 |achieve 5861/4 |goto Mount Hyjal 35.6,97.6
|tip He flies all around Setheria's Roost
_Click here_ if Searris can't be found |confirm |next "first"
step
Congratulations, you have earned The Fiery Lords of Setheria's Roost achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The Glop Family Line",{
condition_end="achieved(5446)",
description="This guide will walk you through completing the Glop, Son of Glop daily quest in Deepholm 10 times.",
},[[
step
In able to obtain the daily quest needed for the achievement The Glop Family Line you will need to have unlocked and be Revered with Therazane
_Click here_ if you need to complete the Therazane pre-quests |confirm |next "p_quest" |only if not completedq(26709)
_Click here_ if you need if you have done the prequests but not yet reached Revered |confirm |next "d_quest" |only if rep('Therazane')<Revered
You have reached Revered and are being directed to the achievement |next "next" |only if rep('Therazane')>=Revered
step "p_quest"
#include "A_Therazane_PreQuest"
step "d_quest"
#include "Therazane_Dailies"
step "next"
talk Ruberick##44973
accept Glop, Son of Glop##28390 |goto Deepholm 59.6,14.0
|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However the quest may not be offered everyday.
It is possible to earn the Fungalophobia achievement while working towards this. The instuctions will beincluded
step
talk Earthmender Norsala##43503
Tell her you're ready when she is
kill Fungalmancer Glop |q Glop, Son of Glop##28390/1 |goto Deepholm 69.8,31.9
While fighting Fungalmancer Glop kill the Boomshrooms he creates or avoid them altogether. You must not be hit by anything he creates so keep moving when he throws the Boomshrooms
step
talk Ruberick##44973
turnin Glop, Son of Glop##28390 |goto Deepholm 59.6,14.0
step
If you didn't get the achievement you were hit during the encounter. You will have to try again another day. |only if not achieved(5446)
Congratulations, you have earned the The Glop Family Line achievement! |only if achieved(5446)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive",{
condition_end="achieved(5866)",
description="Unlock the attack on the Molten Front.",
},[[
step
You will need to be able to do the Firelands dailies in order to earn this achievement.
Click here if you need to do the prequests |confirm
Click here if you have completed the prequests |next route |confirm
step
#include "A_Firelands_PreQuests"
step
label route
Routing to proper section |next "achieve" |only if not ZGV.guidesets['DailiesACATA']
Routing to proper section |next "Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests" |only if ZGV.guidesets['DailiesACATA']
step
label achieve
This achievement requires that you do the Firelands Dailies and Quests in order to complete it.
Click here to load the "Firelands Dailies Guide" |confirm |next "Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Wildhammer Tour of Duty",{
condition_end="achieved(5481)",
description="Explore all the nooks and crannies of the Thundermar Ruins in Twilight Highlands and impress your Wildhammer allies by killing a few enemies.",
},[[
step
_Kill_ Warlord Halthar |achieve 5481/2 |goto Twilight Highlands 49.2,36.4
modelnpc Warlord Halthar##46493
step
_Kill_ Karkrog the Exterminator |achieve 5481/3 |goto Twilight Highlands 51.6,33.0
modelnpc Karkrog the Exterminator##46756
step
_Go in_ the cellar and _kill_ Black Recluse |achieve 5481/1 |goto Twilight Highlands 45.8,31.6
modelnpc Black Recluse##47115
step
_Kill_ Korthalon |achieve 5481/4 |goto Twilight Highlands 52.0,27.6
modelnpc Korthalon##47171
step
Congratulations, you have _earned_ the _Wildhammer Tour of Duty_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Coming Down the Mountain",{
condition_end="achieved(4870)",
author="support@zygorguides.com",
startlevel=80,
description="This guide will walk you through completing the \"Coming Down the Mountain\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 115 quests in Mount Hyjal_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Mount Hyjal (80-82)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-85)\\Mount Hyjal (80-82)"
Earn the _Coming Down the Mountain_ achievement |achieve 4870
step
_Congratulations!_
You have earned the _Coming Down the Mountain_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fading into Twilight",{
condition_end="achieved(4873)",
author="support@zygorguides.com",
startlevel=84,
description="This guide will walk you through completing the \"Fading into Twilight\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 120 quests in Twilight Highlands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Twilight Highlands (84-85)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-85)\\Twilight Highlands (84-85)"
Earn the _Fading into Twilight_ achievement |achieve 4873
step
_Congratulations!_
You have earned the _Fading into Twilight_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Unearthing Uldum",{
condition_end="achieved(4872)",
author="support@zygorguides.com",
startlevel=83,
description="This guide will walk you through completing the \"Unearthing Uldum\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 105 quests in Uldum_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Uldum (83-84)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-85)\\Uldum (83-84)"
Earn the _Unearthing Uldum_ achievement |achieve 4872
step
_Congratulations!_
You have earned the _Unearthing Uldum_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Deep into Deepholm",{
condition_end="achieved(4871)",
author="support@zygorguides.com",
startlevel=83,
description="This guide will walk you through completing the \"Deep into Deepholm\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 105 quests in Deepholm_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Deepholm (82-83)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-85)\\Deepholm (82-83)"
Earn the _Deep into Deepholm_ achievement |achieve 4871
step
_Congratulations!_
You have earned the _Deep into Deepholm_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The First Rule of Ring of Blood is You Don't Talk About Ring of Blood", {
condition_end="achieved(4958)",
achieveid={4960},
keywords={"round","three.","fight!"},
description="Complete the Ring of Blood, Amphitheater of Anguish and Crucible of Carnage.",
endlevel=84
},[[
step
_Skipping_ to the next part of guide |next "+anguish" |only if step:Find("+ringblood1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
ding 65
step
talk Gurgthock##18471 |goto Nagrand 42.8,20.7
accept The Ring of Blood: Brokentoe##9962
step
kill Brokentoe##18398 |q 9962/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
kill Murkblood Twin##18399+ |q 9967/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
kill Rokdar the Sundered Lord##18400 |q 9970/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
kill Skra'gath##18401 |q 9972/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
kill Warmaul Champion##18402 |q 9973/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
kill Mogor##18069 |q 9977/1 |goto Nagrand 43.6,20.4
step
label "ringblood1"
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
label "anguish"
_Skipping_ to the next part of guide |next "+crucible" |only if step:Find("+anguish1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
ding 75
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.4,56.4
step
kill Yggdras##30014 |q 12954/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.4,56.4
step
kill Stinkbeard##30017 |q 12933/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.4,56.4
step
kill Az'Barin Prince of the Gust##30026, Duke Singen##30019, Erathius King of Dirt##30025, Gargoral the Water Lord##30024
_Defeat_ an Elemental Lord |q 12934/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.4,56.4
step
kill Orinoko Tuskbreaker##30020 |q 12935/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.4,56.4
step
kill Korrak the Bloodrager##30023 |q 12936/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Champion of Anguish##12948 |goto Zul'Drak 48.4,56.4
step
kill Vladof the Butcher##30022 |q 12948/1 |goto Zul'Drak 47.9,56.9
step
label "anguish1"
talk Wodin the Troll-Servant##30009
turnin The Champion of Anguish##12948 |goto Zul'Drak 48.5,56.4
step
label "crucible"
_Skipping_ to the next part of guide |next "+end" |only if step:Find("+anguish1"):IsComplete()
_Proceeding_ to the next step |next |only if default
step
ding 84
step
talk Gurgthock##46935 |goto Twilight Highlands 50.7,58.3
accept The Crucible of Carnage: The Bloodeye Bruiser!##27863 |or accept 27861 |or accept The Crucible of Carnage: The Bloodeye Bruiser!##27862
step
kill Hurp'derp##46944 |q 27863/1 |only if havequest(27863) or completedq(27863) |goto Twilight Highlands 51.4,57.8
kill Hurp'derp##46944 |q 27863/1 |only if havequest(27861) or completedq(27861) |goto Twilight Highlands 51.4,57.8
kill Hurp'derp##46944 |q 27863/1 |only if havequest(27862) or completedq(27862) |goto Twilight Highlands 51.4,57.8
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27863 |only if havequest(27863) or completedq(27863)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27861 |only if havequest(27861) or completedq(27861)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27862 |only if havequest(27862) or completedq(27862)
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Deadly Dragonmaw!##27864 |goto Twilight Highlands 50.7,58.3
step
kill Torg Drakeflayer##46945 |q 27864/1 |goto Twilight Highlands 51.4,57.8
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Deadly Dragonmaw!##27864 |goto Twilight Highlands 50.7,58.3
step
talk Gurgthock##46935
accept The Crucible of Carnage: Calder's Creation!##27866 |goto Twilight Highlands 50.7,58.3
step
kill Cadaver Collage##46947 |q 27866/1 |goto Twilight Highlands 51.4,57.8
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: Calder's Creation!##27866
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Earl of Evisceration!##27867 |goto Twilight Highlands 50.7,58.3
step
kill Lord Geoffery Tulvan##46948 |q 27867/1 |goto Twilight Highlands 51.4,57.8
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Earl of Evisceration!##27867
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Twilight Terror!##27868 |goto Twilight Highlands 50.7,58.3
step
kill Emberscar the Devourer##46949 |q 27868/1 |goto Twilight Highlands 51.4,57.8
step
label "anguish1"
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Twilight Terror!##27868
step
label "end"
Congratulations, you have _earned_ the _Round Three. Fight!_ achievement! |only if achieved(4960)
Congratulations, you have _earned_ the _The First Rule of Ring of Blood is You Don't Talk About Ring of Blood_ achievement! |only if achieved(4958)
]])
