local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\JadeForest",
next="Zygor's Leveling Guides\\Pandaria (85-90)\\Valley of the Four Winds (86-87)",
startlevel=85.0,
dynamic=true,
},[[
step
accept The King's Command##29547 |goto Stormwind City 81.3,37.1
Visit Stormwind Keep |q 29547/1 |goto Stormwind City 81.3,37.1
step
talk Rell Nightwind##55789
turnin The King's Command##29547 |goto 78.8,40.0
accept The Mission##29548 |goto 78.8,40.0
step
Look for a ship in the air. You have to use a flying mount to get to Sky Admiral Rogers  |goto Eastern Kingdoms 41.46,70.19
|tip She is on the very top of the ship.
talk Sky Admiral Rogers##66292
Tell her: "I am ready to depart" |goto The Jade Forest 42.0,92.8 |noway |c |q 29548
step
talk to Sky Admiral Rogers##66292
turnin The Mission##29548 |goto The Jade Forest 42.0,92.8
accept Unleash Hell##31732 |goto The Jade Forest 42.0,92.8
step
clicknpc Skyfire Gyrocopter##66473 |goto 42.0,92.5
|invehicle |q 31732
step
Use the abilities on your bar in order to kill the enemies.
kill 60 Garrosh'ar Horde |q 31732/1
kill 8 Garrosh'ar Shredder |q 31732/2
Sink the Bladefist Reaper |q 31732/3
Sink the Stygian Scar |q 31732/4
step
talk to Sky Admiral Rogers##66292
turnin Unleash Hell##31732 |goto 42.0,92.7
accept Touching Ground##31733 |goto 42.0,92.7
step
click Skyfire Parachute##12345
Equip a Skyfire Parachute |q 31733/1 |goto 42.3,92.8
step
talk Sully 'The Pickle' McLeary##54616
turnin Touching Ground##31733 |goto 43.6,90.7
accept No Plan Survives Contact with the Enemy##30069 |goto 43.6,90.7
accept Welcome Wagons##31734 |goto 43.6,90.7
step
kill 6 Garrosh'ar Grunt |q 30069/1 |goto 45.0,93.4
kill 6 Garrosh'ar Gear-Greaser |q 30069/2 |goto 45.0,93.4
Stand next to Horde War Wagon's and use Sully's Flaregun. |use Sully's Flaregun##89612
Horde War Wagon destroyed |q 31734/1 |goto 45.0,93.4
|modelnpc 66339
step
talk Rell Nightwind##54617
turnin No Plan Survives Contact with the Enemy##30069 |goto 45.2,95.0
turnin Welcome Wagons##31734 |goto 45.2,95.0
accept The Right Tool For The Job##31735 |goto 45.2,95.0
step
Use Sully's Flaregun here. |use Sully's Flaregun##89624
First Barricade Destroyed |q 31735/1 |goto 45.6,95.2
step
Use Sully's Flaregun here. |use Sully's Flaregun##89624
Second Barricade Destroyed |q 31735/2 |goto 45.9,95.8
step
Ga'trul Confronted |q 31735/3 |goto 46.4,96.4
step
talk Rell Nightwind##54617
turnin The Right Tool For The Job##31735 |goto 46.5,96.3
accept Envoy of the Alliance##31736 |goto 46.5,96.3
accept The Cost of War##31737 |goto 46.5,96.3
step
kill 15 Sha Haunt |q 31737/1 |goto 44.7,93.6
kill 5 Sha Harbinger |q 31737/2 |goto 44.7,93.6
step
talk Taran Zhu##67012
Leader of Paw'don Village found |q 31736/1
turnin The Cost of War##31737 |goto 46.3,84.8
step
talk Sunke Khang##65910
turnin Envoy of the Alliance##31736 |goto 46.3,84.7
accept Pillaging Peons##31738 |goto 46.3,84.7
step
talk Teng Applebloom##64596
accept Priorities!##31739 |goto 46.2,84.7
step
talk Mishka##54614
accept Critical Condition##29552 |goto 46.1,84.6
step
talk Wing Kyo##66023
fpath Paw'Don Village |goto 46.0,85.1 |future |q 31740
stickystart "Applebloomcider"
stickystart "Woundedpilot"
stickystart "Twinspirepeon"
step "Applebloomcider"
click Applebloom Cider##11123
collect 6 Applebloom Cider |q 31739/1  |goto 42.7,88.6
|tip You cannot complete this portion of the quest if Teng is no longer following you. In order to get him back, you will have to abandon the quest and acquire it again from Teng.
step "Woundedpilot"
clicknpc Wounded Pilot##61492
6 Wounded Pilots revived |q 29552/1 |goto 42.7,88.6
step "Twinspirepeon"
kill 12 Twinspire Peon##59979+ |q 31738/1 |goto 42.7,88.6
step
talk Lin Applebloom##66199
turnin Priorities!##31739 |goto 39.6,90.0
accept Koukou's Rampage##31740 |goto 39.6,90.0
step
kill Koukou##66213 |q 31740/1 |goto 39.3,89.9
step
talk Mishka##54614
turnin Critical Condition##29552 |goto 46.1,84.6
step
talk Sunke Khang##65910
turnin Pillaging Peons##31738 |goto 46.3,84.7
turnin Koukou's Rampage##31740 |goto 46.3,84.7
accept Twinspire Keep##31741 |goto 46.3,84.7
accept Unfair Trade##31744 |goto 46.3,84.7
step
talk Rell Nightwind##54617
accept Fractured Forces##31742 |goto 46.2,84.8
accept Smoke Before Fire##31743 |goto 46.2,84.8
step
Target the ground inside the bubble full of imps. |use Alliance Flare##89602
Wild Imps bombed |q 31743/4 |goto 43.2,81.5
step
kill Eyes of Ga'trul##66367
8 Captive Pandaren Cub freed |q 31744/1
step
Target the ground underneath the Giant Spikey Bomb. |use Alliance Flare##89602
Twinspire munitions stockpile bombed |q 31743/1 |goto 40.9,82.3
step
Target the ground underneath the Demon inside of a bubble. |use Alliance Flare##89602
Xhu'daggab bombed |q 31743/3 |goto 40.2,81.6
|modelnpc 66321
step
Target the ground underneath the Twinspire Demolisher. |use Alliance Flare##89602
Twinspire Demolishers bombed |q 31743/2 |goto 41.8,81.3
|modelnpc 66279
step
kill 15 Twinspire Horde |q 31741/1 |goto 41.6,80.9
step
kill Bellandra Felstorm##66275 |q 31742/2 |goto 41.8,80.3
step
kill Dalgan##66274 |q 31742/1 |goto 41.2,80.3
step
talk Sully 'The Pickle' McLeary##54616
turnin Twinspire Keep##31741 |goto 41.4,79.6
turnin Unfair Trade##31744 |goto 41.4,79.6
turnin Fractured Forces##31742 |goto 41.4,79.6
turnin Smoke Before Fire##31743 |goto 41.4,79.6
accept The Fall of Ga'trul##30070 |goto 41.4,79.6
step
kill Ga'trul##66396 |q 30070/1 |goto 41.5,77.8
|tip He jumps around the room using portals, follow him closely and when he teleports click on that portal and you'll jump to him. At 50% health he transforms, stay stacked on him to reduce aoe damage from his attacks.
step
talk Rell Nightwind##54617
turnin The Fall of Ga'trul##30070 |goto 41.5,79.1
accept Onward and Inward##31745 |goto 41.5,79.1
step
clicknpc Rell's Gyrocopter##67067
Return to Paw'don Village |q 31745/1 |goto 41.5,79.7
step
talk Sky Admiral Rogers##66292
turnin Onward and Inward##31745 |goto 48.1,88.4
accept The White Pawn##29555 |goto 48.1,88.4
accept Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto 48.1,88.4
step
Go down the hill here |goto 50.5,88.1 < 8 |only if walking
clicknpc Alliance Bodyguard##55168 |goto 49.8,90.1
|tip On the top deck of the ship.
clicknpc Fine Leather Journal##55155 |goto 50.0,90.3
|tip Downstairs, underwater in the ship, sitting on some wooden boxes.
clicknpc Alliance Banner##55167 |goto 50.1,90.8
|tip Underwater in the ship, hanging from the ceiling.
Clues found |q 29555/1
step
kill Hozen Diver##66148
collect Encoded Captain's Log |q 29555/2 |goto 50.3,90.8
|tip He is swimming around underwater inside the back of the wrecked ship
step
kill 15 Hozen |q 29556/1 |goto The Jade Forest 49.8,89.2
|tip Their "Banana Toss" ability will stun you, move while they're casting it to avoid the getting stunned
|modelnpc 66106
|modelnpc 57119
step
talk Nodd Codejack##54615
turnin The White Pawn##29555 |goto 50.4,88.2
turnin Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto 50.4,88.2
accept The Missing Admiral##29553 |goto 50.4,88.2
step
talk Admiral Taylor##59022
turnin The Missing Admiral##29553 |goto 54.2,82.5
step
talk Bold Karasshi##55196
accept The Path of War##29558 |goto The Jade Forest 54.2,82.4
accept Freeing Our Brothers##29559 |goto The Jade Forest 54.2,82.4
accept Ancient Power##29560 |goto The Jade Forest 54.2,82.4
stickystart "Hozencage"
stickystart "Hozenskull"
step "Hozencage"
kill Slingtail Treeleaper##61562+, Slingtail Mudseer##55193+
kill 12 Slingtail hozen |q 29558/1 |goto The Jade Forest 53.9,82.1
collect Bamboo Key##74260+ |n
click Hozen Cage##11579
Free 6 Prisoners |q 29559/1 |goto The Jade Forest 53.9,82.1
step "Hozenskull"
click Hozen Skull##226
collect 8 Ancient Hozen Skull |q 29560/1 |goto The Jade Forest 53.9,82.1
step
talk Bold Karasshi##55196
turnin The Path of War##29558 |goto 54.2,82.4
turnin Freeing Our Brothers##29559 |goto 54.2,82.4
turnin Ancient Power##29560 |goto 54.2,82.4
accept Kung Din##29759 |goto 54.2,82.4
step
kill Kung Din##59037
collect Slingtail Key##79753 |q 29759/1 |goto 54.6,80.1
step
talk Bold Karasshi##55196
turnin Kung Din##29759 |goto 54.2,82.4
accept Jailbreak##29562 |goto 54.2,82.4
step
kill 10 Slingtail Fishripper##55195 |q 29562/1 |goto 56.1,81.6
step
talk Ut-Nam##56737
fpath Pearlfin Village |goto 57.9,82.5
step
talk Bold Karasshi##56222
turnin Jailbreak##29562 |goto 59.0,81.7
step
talk Rell Nightwind##66949
accept The Pearlfin Situation##29883 |goto 58.9,81.9
accept Road Rations##29885 |goto 58.9,81.9
stickystart "tortoiseflank"
step
talk Pearlkeeper Fujin##59058 |goto 58.8,81.3
Ask him to allow you to prove your friendship |q 29883/1
step
talk Elder Lusshan##54960
Tell him you wish to be allies |q 29883/4 |goto 58.1,80.6
step
talk Ot-Temmdo##56693
Ask him what he is doing |q 29883/2 |goto 59.9,83.9
step
talk Instructor Sharpfin##56690
Let him know that you come with peaceful intentions |q 29883/3 |goto 58.8,84.6
step "tortoiseflank"
kill Pearly Tortoise##59084
|tip They are swimming under water.
collect 6 Tortoise Flank##73368 |q 29885/1 |goto 57.5,83.1
step
talk Rell Nightwind##66949
turnin The Pearlfin Situation##29883 |goto 58.9,81.9
turnin Road Rations##29885 |goto 58.9,81.9
step
talk Pearlkeeper Fujin##59058
accept The Elder's Instruments##29887 |goto 58.8,81.3
step
talk Bold Karasshi##56222
accept Family Heirlooms##29762 |goto 59.0,81.7
step
kill Slingtail Stickypaw##55110
collect Waterspeaker's Staff |q 29887/1 |goto 65.3,87.1
collect Ceremonial Robes |q 29887/2 |goto 65.3,87.1
collect Jade Crown |q 29887/3 |goto 65.3,87.1
collect Rosewood Beads |q 29887/4 |goto 65.3,87.1
clicknpc Pearlfin Villager##56233
|tip These are corpses laying on the ground
collect 8 Glassfin Heirloom##79811 |q 29762/1 |goto 65.3,87.1
step
talk Bold Karasshi##56222
turnin Family Heirlooms##29762 |goto 59.0,81.7
step
talk Pearlkeeper Fujin##59058
turnin The Elder's Instruments##29887 |goto 58.8,81.3
accept Spirits of the Water##29894 |goto 58.8,81.3
step
talk Elder Lusshan##54960
Tell him you have brought the items for the ceremony |q 29894/1
Witness the waterspeaking ceremony |q 29894/2 |goto 58.6,82.9
step
talk Bold Karasshi##56222
turnin Spirits of the Water##29894 |goto 59.0,81.7
step
talk Rell Nightwind##66949
accept SI:7 Report: Lost in the Woods##29733 |goto 59.0,81.8
step
You will be teleported to Fox Grove.
You will be in control of Rell.
Follow Sully to the airplane wreck |goto 49.9,70.8 |noway|c |q 29733
step
talk Amber Kearnen##55343
Tell her she did well and get ready to fight.
kill Ambushing Hozen##55344+
kill General Rik-Rik##55454+
Use your abilities to defeat the oncoming Hozen.
Listen to Rell's report |q 29733/1
step
talk Rell Nightwind##55333
turnin SI:7 Report: Lost in the Woods##29733 |goto 59.0,81.8
step
talk Sully 'The Pickle' McLeary##55282
accept SI:7 Report: Fire From the Sky##29725 |goto 58.9,81.9
step
You will be teleported to Shadybranch Pocket.
You will be in control of Sully.
For this you will be given the _Light Scope_ ability.
Use it on the tigers that will attack you. Ready? Click below, you'll run around and go scout a few shrines around this area
|confirm |q 29725
step
Scout the southeastern shrine |q 29725/1 |goto 50.5,62.5
step
Scout the northern shrine |q 29725/3 |goto 48.0,58.6
step
Scout the southwestern shrine |q 29725/2 |goto 46.4,61.8
step
You will see Rell calling for help. Once you move to him, a Hozen will appear
Use your _Light Scope_ ability on the Hozen that is attacking him.
Return to camp |q 29725/4 |goto 50.9,63.1
step
talk Sully 'The Pickle' McLeary##55282
turnin SI:7 Report: Fire From the Sky##29725 |goto 58.9,81.9
step
talk Little Lu##55284
accept SI:7 Report: Hostile Natives##29726 |goto 59.1,81.9
step
You will be teleported to the Lair of the Jade Witch.
You will be in control of Little Lu.
|confirm |q 29726
step
click STAY OUT - NO VISITORS
Inspect the sign |q 29726/1 |goto 38.3,45.4
step
click Lifelike Jade Statue
Inspect the Lifelike Statue |q 29726/2 |goto 38.9,45.9
step
click Suspicious Jade Statue
Inspect the Suspicious Jade Statue |q 29726/3 |goto 38.9,46.4
step
talk Widow Greenpaw##55381
Ask Widow Greenpaw for help |q 29726/4 |goto 39.2,46.2
step
talk Little Lu##55284
turnin SI:7 Report: Hostile Natives##29726 |goto 59.1,81.9
step
talk Amber Kearnen##55283
accept SI:7 Report: Take No Prisoners##29727 |goto 58.9,81.9
step
You will be teleported to Scenic Overlook.
You will be in control of Amber.
|confirm |q 29727
step
Go up the hill and click the sniper rifle at the top |goto 28.6,54.5 < 5 |c |q 29727
step
Right click the Hozen Guards in the area. They will have a yellow arrow over thier heads
The screen will move on it's own. Kill the Guards as the screen moves
Once Sully plants the bombs, you will need to shoot the barrels
You will eventually have to protect Sully from oncoming attackers. Kill them then continue
You will have to kill more waves of Guards, then 4 horde guards that are in the area
Guide Sully through the hozen camp |q 29727/1
step
talk Amber Kearnen##55283
turnin SI:7 Report: Take No Prisoners##29727 |goto 58.9,81.9
step
talk Admiral Taylor##60970
accept A Perfect Match##29903 |goto 58.9,81.7
step
talk Bold Karasshi##56222
accept The Ancient Master##29888 |goto 59.0,81.7
step
Talk to _Pearlfin Aqualyte_
Run around the base talking to Aqualytes, depending on what they say requires you to give them a different response:
_Being small has its advantages_ = Give them daggers.
_Everyone here gets the standard..._ = Give them daggers.
_I never meet an enemy head on..._ = Give them daggers.
_From a young age..._ = Give them Book of Healing Prayers.
_I am a strong jinyu!_ = Give them a shield.
_I am terrible with a spear_ = Give them a Spellcaster's Staff.
_I bring bandages and food..._ = Give them Book of Healing Prayers.
_I have had basic warrior training..._ = Give them a Spellcaster's Staff.
_I prefer to shape the properties of water_ = Give them a Spellcaster's Staff.
_I have some skill in the magical arts..._ = Give them a Spellcaster's Staff.
_I'm quick and fast..._ = Give them daggers.
_In your land, is it true..._ = Give them Book of Healing Prayers.
_My sword is quick..._ = Give them a shield.
_My duty is to protect..._ = Give them a shield.
_There are too few..._ = Give them Book of Healing Prayers.
_While the enemies are focused..._ = Give them a shield.
#9# Pearlfin Aqualytes equipped |q 29903/1 |goto 59.1,84.52
|modelnpc Pealfin Aqualyte##56585
step
talk Admiral Taylor##60970
turnin A Perfect Match##29903 |goto 58.9,81.7
accept Bigger Fish to Fry##29904 |goto 58.9,81.7
step
kill Jeweled Macaw##61747+, Wild Stalker##56683+, Stoneskin Basilisk##56650+
Bamboo Wilds Wildlife slain |q 29904/1 |goto 61.0,74.0
step
talk Admiral Taylor##60970
turnin Bigger Fish to Fry##29904 |goto 58.9,81.7
accept Let Them Burn##29905 |goto 58.9,81.7
accept Carp Diem##29906 |goto 58.9,81.7
step
kill 15 Slingtail Recruit##61760 |q 29905/1 |goto 54.6,82.2
|modelnpc 55461
step
kill Chief Gukgut##54868 |q 29906/1 |goto 54.7,80.1
When he starts channeling "Monkey Tantrum" move away from him to avoid aoe damage.
step
talk Elder Lusshan##54960
turnin Let Them Burn##29905 |goto 58.9,81.5
turnin Carp Diem##29906 |goto 58.9,81.5
step
click Mouthwatering Brew##7141
turnin The Ancient Master##29888 |goto 53.72,91.5
accept Borrowed Brew##29889 |goto 53.72,91.5
step
click Mouthwatering Brew##7141
Taste the mouthwatering brew |q 29889/1 |goto 53.7,91.5
step
talk Lorewalker Cho##54961
turnin Borrowed Brew##29889 |goto 53.6,91.4
accept A Visit with Lorewalker Cho##31130 |goto 53.6,91.4
step
click Shapeless Tree
Trim the Tree |q 31130/1 |goto 53.8,91.0
step
click Cho's "Art"##7056
Paint the Wall |q 31130/2 |goto 54.1,90.7
step
click Bird Feed
Feed the Birds |q 31130/3 |goto 54.0,91.3
step
talk Lorewalker Cho##61218
turnin A Visit with Lorewalker Cho##31130 |goto 54.0,91.2
accept Potency##29891 |goto 54.0,91.2
accept Body##29892 |goto 54.0,91.2
accept Hue##29893 |goto 54.0,91.2
stickystart "Glitteringamber"
stickystart "Pristinecroc"
stickystart "Mistcreeper"
step "Glitteringamber"
kill Glittering Amberfly##54559+
Use your Delicate Shearing Knife on their corpses. |use Delicate Shearing Knife##76128
collect 8 Amberfly Wing##76115 |q 29893/1 |goto 58.2,91.8
step "Pristinecroc"
kill Bog Crocolisk##54558+
collect 5 Pristine Crocolisk Eye##76107+ |q 29892/1 |goto 58.2,91.8
step "Mistcreeper"
kill 8 Mist Creeper##56304+ |q 29891/1 |goto 58.2,91.8
kill Mist Horror##56310 |q 29891/2
|tip This enemy will appear after you defeat 8 Mist Creepers.
step
talk Lorewalker Cho##56287
turnin Potency##29891 |goto 53.8,90.6
turnin Body##29892 |goto 53.8,90.6
turnin Hue##29893 |goto 53.8,90.6
accept Finding Your Center##29890 |goto 53.8,90.6
step
click Potent Dream Brew##7141 |goto 54.67,92.0
|tip Lorewalker Cho will come put it down on the table
|invehicle
confirm
step
You will gain two functions:
Number 1 will move the marker to the left.
Number 2 will move the marker to the right.
Try to keep the marker in the middle of the bar along the bottom of your screen.
Meditated at the pagoda |q 29890/1
step
talk Anduin Wrynn##56434
turnin Finding Your Center##29890 |goto 65.9,79.3
accept Sacred Waters##29898 |goto 65.9,79.3
step
talk Ren Whitepaw##56432
accept Rest in Peace##29899 |goto 66.0,79.3
step
talk Lina Whitepaw##56433
accept The Vale of Eternal Blossoms##29900 |goto 66.0,79.4
step
Enter the cave here |goto The Jade Forest 66.2,82.2 < 5 |walk
click Restorative Body##445 |indoors Den of Sorrow
Waters of Restorative Body |q 29898/1 |goto 66.8,82.1 |indoors Den of Sorrow
step
Go up the ramp here |goto The Jade Forest 67.4,82.5 < 5 |indoors Den of Sorrow
click Restorative Mind##445 |indoors Den of Sorrow
Waters of Restorative Mind |q 29898/2 |goto 67.3,81.6 |indoors Den of Sorrow
step
Go up the ramp here |goto The Jade Forest 67.5,81.7 < 5 |indoors Den of Sorrow
click Restorative Spirit##445 |indoors Den of Sorrow
Waters of Restorative Spirit |q 29898/3 |goto 68.0,81.8 |indoors Den of Sorrow
step
Go up the ramp here |goto The Jade Forest 67.2,81.3 < 5 |indoors Den of Sorrow
kill Shade of Ling Heartfist##56441 |q 29900/1 |goto 66.8,80.4 |indoors Den of Sorrow
step
click Scroll of Sorrow##10981 |indoors Den of Sorrow
Get the Song of the Vale |q 29900/2 |goto 66.5,80.5 |indoors Den of Sorrow
step
click Restorative Heart##445 |indoors Den of Sorrow
Waters of Restorative Heart |q 29898/4 |goto 66.43,80 |indoors Den of Sorrow
step
Go down the ramp here |goto The Jade Forest 66.7,81.0 < 5 |indoors Den of Sorrow
talk Lina Whitepaw##56433 |indoors Den of Sorrow
turnin Sacred Waters##29898 |goto 66.0,79.4
step
talk Ren Whitepaw##56432
turnin Rest in Peace##29899 |goto 66.0,79.3
turnin The Vale of Eternal Blossoms##29900 |goto 66.0,79.3
step
Click the Auto Accept Quest Box in the top right corner.
accept Anduin's Decision##29901
step
talk Anduin Wrynn##56434
Tell him it's time to go home.
Speak to Anduin |q 29901/1 |goto 65.9,79.3
step
talk Admiral Taylor##60970
turnin Anduin's Decision##29901 |goto 58.9,81.7
step
talk Elder Lusshan##54960
accept In Search of Wisdom##29922 |goto 58.89,81.49
step
talk Ut-Nam##56737
Tell him you would like to travel to Dawn's Blossom.
Speak to Kitemaster Ot-Nam |q 29922/1 |goto 57.9,82.5
step
talk Keg Runner Lee##59186 |goto 47.0,46.2
fpath Dawn's Blossom
step
talk Lorewalker Cho##63577
turnin In Search of Wisdom##29922 |goto 46.8,46.1
step
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto 47.2,46.2
step
talk Kai Wanderbrew##59173
Speak with Kai Wanderbrew |q 31230/3 |goto 46.7,45.8
step
talk Peiji Goldendraft##55809
Speak with Peiji Goldendraft |q 31230/2 |goto 45.8,43.7
step
talk Master Windfur##59160
Speak with Master Windfur |q 31230/1 |goto 48.5,44.5
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto 47.2,46.2
step
talk An Windfur##55234
|tip She sometimes walks around a bit, so she may not be in this exact spot
accept The Double Hozu Dare##29716 |goto 46.6,46.2
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto 46.5,45.8
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto 46.6,45.3
stickystart "Silkwoodstalker"
stickystart "Silkstrand"
step "Silkwoodstalker"
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto 42.4,50.8
step "Silkstrand"
click Pristine Silk Strand
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto 42.4,50.8
step
talk An Windfur##55274
|tip She will appear when you approach this area.
accept Down Kitty!##29717 |goto 38.3,44.6
step
kill 8 Jade Guardian##55236 |q 29717/1 |goto 39.1,44.2
click Scared Pandaren Cub##55267
Tell them it's safe to come down.
|tip These are small Pandaren cubs that are hanging onto the base of trees around this area
Rescue 6 cubs |q 29716/1 |goto 39.1,44.2
More cubs and Jade Guardians can be found here |goto The Jade Forest,38,46.9
step
talk An Windfur##55274
|tip She will should be following you.
turnin The Double Hozu Dare##29716
turnin Down Kitty!##29717
accept The Jade Witch##29723
step
talk Widow Greenpaw##55368
Ask her where Shin went
Confront the Jade Witch |q 29723/1 |goto 39.3,46.2
|tip Note that if another player has talked to her, you can go to the back of the building and assist them.
step
Go to the road |goto 40,48 |only if walking
talk An Windfur##55413
|tip She usually walks around, so she may not be in this exact spot
turnin The Jade Witch##29723 |goto 47.3,45.9
step
talk Toya##56348
accept All We Can Spare##29925 |goto 47.2,46.2
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto 46.5,45.8
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto 46.6,45.3
step
talk Kai Wanderbrew##59173
|tip He walks around Dawn's Blossom.
accept Find the Boy##29993 |goto 47.2,46.0
step
talk Inkmaster Wei##56065
turnin Find the Boy##29993
|tip He walks around the area, so some searching may be required.
accept Shrine of the Dawn##29995 |goto 54.9,45.1
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto 54.9,45.3
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto 55.4,45.3
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 56.9,44.12
stickystart "Freshlyfallen"
stickystart "Orchardwasp"
step "Freshlyfallen"
click Freshly Fallen Petals##10966
collect 8 Freshly Fallen Petals##75219 |q 29881/1 |goto 53.6,44.5
step "Orchardwasp"
kill Orchard Wasp##56201
collect 6 Wasp Stinger##75221 |q 29882/1 |goto 53.6,44.5
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto 54.9,45.3
step
talk Inkmaster Jo Po##56063
turnin Quill of Stingers##29882 |goto 55.3,45.3
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto 52.6,38.1
accept Getting Permission##29920 |goto 52.6,38.1
step
Only one of these mobs will be available at a time.
talk Pandriarch Bramblestaff##56209 |goto 54.1,38.5
Challenge Pandriarch Bramblestaff  |q 29920/2
You can find Pandiarch Goldendraft at |goto 53.6,36.7
talk Pandriarch Goldendraft##56210
Challenge Pandriarch Goldendraft |q 29920/3
You can find Pandiarch Windfur at |goto 52.5,35.5
talk Pandriarch Windfur##56206
Challenge Pandriarch Windfur |q 29920/1
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto 52.6,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto 50.9,27.1
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto 50.9,27.0
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto The Jade Forest 50.8,26.9
step
kill Puckish Sprite##56349
When you kill them, they will toss Jade onto the ground.
click Chunk of Jade##9694
collect 15 Chunk of Jade##76209 |q 29928/1 |goto 48.3,31.0
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto 50.9,27.0
accept Calamity Jade##29926 |goto 50.9,27.0
accept Mann's Man##29927 |goto 50.9,27.0
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto 48.7,24.9
stickystart "stonebounddestroy"
step
Source of the Simulacra found |q 29745/2 |goto 48.4,20.6
step "stonebounddestroy"
kill 10 Stonebound Destroyer##55288+ |q 29745/1 |goto 49.8,19.4
You can find more at |goto The Jade Forest,49,21.8
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
click Shattered Destroyer##11370
accept Simulacrumble##29748 |goto 48.6,20.5
stickystart "Spiritbinder"
stickystart "Vacantdestroyer"
step "Spiritbinder"
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto 48.1,18.1
step "Vacantdestroyer"
click Vacant Destroyer##12700
6 Vacant Destroyer Kicked |q 29748/1 |goto 48.1,18.1
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Simulacrumble##29748
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##10931
|tip It is a small wooden staff laying next to a skeleton on this table
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto 44.2,15.0
kill Ancient Spirit##55489+
Kill Conjured Ancestor until the "Empowering the Staff" bar fills. |q 29749/2 |goto 44.2,15.0
|tip If they get to the purple swirling aura that the boss is channeling in the center they will be absorbed, so kill them before that happens. Also, when the charge bar reaches about half full two regular mobs will spawn and attack you.
step
talk Pei-Zhi##55614
turnin An Urgent Plea##29749 |goto 44.2,15.0
accept Vessels of the Spirit##29750 |goto 44.2,15.0
accept Ritual Artifacts##29751 |goto 44.2,15.0
accept The Wayward Dead##29752 |goto 44.2,15.0
stickystart "waywardancestor"
step
click Jade Cong##12702
collect Jade Cong##74762 |q 29751/1 |goto 42.7,15.8
step
click Pungent Ritual Candle##10924
collect Pungent Ritual Candle##74761 |q 29751/3 |goto 42.3,17.1
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto 41.6,14.4
step "waywardancestor"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763+ |q 29750/1 |goto The Jade Forest 41.0,14.7
Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
10 Wayward Ancestors Recovered |q 29752/1 |goto The Jade Forest 41.0,14.7
step
talk Pei-Zhi##55614
turnin Vessels of the Spirit##29750 |goto The Jade Forest 44.3,15.0
turnin Ritual Artifacts##29751 |goto The Jade Forest 44.3,15.0
turnin The Wayward Dead##29752 |goto The Jade Forest 44.3,15.0
accept Back to Nature##29753 |goto The Jade Forest 44.3,15.0
accept A Humble Offering##29756 |goto The Jade Forest 44.3,15.0
stickystart "Beastspirit"
stickystart "Tidemistcap"
step "Beastspirit"
Use the Spirit Bottles in your bag to summon Raging Beast Spirits |use Spirit Bottles##74808
kill Raging Beast Spirit##55790
Return 8 Beast Spirits to Nature |q 29753/1 |goto The Jade Forest 39.4,11.2
step "Tidemistcap"
click Tidemist Cap
|tip They look like mushrooms sprouting out of the base of trees
collect 10 Tidemist Cap##75214+ |q 29756/1 |goto The Jade Forest 39.4,11.2
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto The Jade Forest 44.2,15.0
turnin A Humble Offering##29756 |goto The Jade Forest 44.2,15.0
accept To Bridge Earth and Sky##29754 |goto The Jade Forest 44.2,15.0
step
Protect Pei-Zhi during his ritual |q 29754/1 |goto The Jade Forest 43.7,12.9
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Huanying##56595
|tip Attack and kill the Stonebound Colossus first. When your spirit is ripped from your body, run back and click it on it to return. Then immediately start attacking the Colossus again becuase it will start regenerating health when you're out-of-body. Killing the Colossus will free Pei-Zhi, who will make the boss killable.
kill Shan Jitong##56596 |q 29755/1 |goto The Jade Forest 42.6,10.7
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto The Jade Forest 43.8,12.6
step
Follow the left path up |goto 39.4,14.5 |only if walking
Follow the path here |goto 38.0,18.2 |only if walking
Follow the path here |goto 38.2,24.1  |only if walking
Follow the path into the Tian Monastery |goto 41.5,25.0 |only if walking
talk Studious Chu##59736
fpath Tian Monastery |goto 43.6,24.62
step
talk Lin Tenderpaw##54913
accept The High Elder##29618 |goto 45.0,25.0
step
talk High Elder Cloudfall##54914
|tip He's at the very top of this building.
turnin The High Elder##29618 |goto 45.2,25.1
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 45.0,25.0
step
kill Greenwood Thief##54930
|tip If they are holding oranges, they will drop them.
click Ripe Orange##435
collect 8 Ripe Orange##72589+ |q 29619/1 |goto 45.7,27.2
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 45.0,25.0
accept The Great Banquet##29620 |goto 45.0,25.0
step
talk High Elder Cloudfall##54914
Tell him you're ready to be introduced to the instructors.
Speak with High Elder Cloudfall |q 29620/1 |goto 42.7,23.2
Follow High Elder Cloudfall.
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto 42.7,23.2
step
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.1,23.6
accept Groundskeeper Wu##29626 |goto 43.1,23.6
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.2,24.8
step
talk Tian Pupil##54944
Tell them you want to fight
Defeat 8 Monastic Pupils |q 29632/1 |goto The Jade Forest/0 43.4,25.0
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.2,24.8
accept Zhi-Zhi, the Dextrous##29633 |goto 43.2,24.8
accept Husshun, the Wizened##29634 |goto 43.2,24.8
step
talk Zhi-Zhi##54924
|tip He is up on a slight hill
Tell him you want to fight.
Defeat Zhi-Zhi |q 29633/1 |goto 43.1,26.0
step
talk Husshun##54925
Challange him to a fight.
Defeat Husshun |q 29634/1 |goto 44.6,24.1
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.2,24.8
turnin Husshun, the Wizened##29634 |goto 43.2,24.8
accept Xiao, the Eater##29635 |goto 43.2,24.8
step
talk Xiao##54926
Challenge him to a fight.
Defeat Xiao |q 29635/1 |goto 43.1,23.6
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.2,24.8
accept A Test of Endurance##29636 |goto 43.2,24.8
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.6,23.7
accept A Proper Weapon##29627 |goto 41.6,23.7
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.4,24.2
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979+ |q 29627/3 |goto 41.8,24.6
step
click Rattan Switch
|tip They look like very thin plants around the Monastery grounds
collect 6 Rattan Switch |q 29627/1 |goto 42.4,25.5
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.6,23.7
accept A Strong Back##29628 |goto 41.6,23.7
accept A Steady Hand##29629 |goto 41.6,23.7
accept And a Heavy Fist##29630 |goto 41.6,23.7
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 39.0,24.1
accept The Rumpus##29637 |goto 39.0,24.1
step
Use your Monastary Fireworks. |use Monastary Fireworks##73369
Survive the Melee |q 29637/1 |goto 39.0,23.3
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 39.0,24.1
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.0,23.8
stickystart "greentrick"
stickystart "blushleafextract"
step
click Boiling Cauldron##10823
Boiling Cauldron Obtain |q 29628/1 |goto 37.8,17.5
|tip Do not mount once you get this, you will lose the cauldron if you do.
step "greentrick"
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto 37.3,21.9
step "blushleafextract"
kill 6 Waxwood Hunter##54988 |q 29631/1
click Blushleaf Cluster
|tip They look like small red plants; you channel as you collect them
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 35.1,22.1
|modelnpc 55238
step
Reminder: you still can't mount
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto 38.0,23.8
step
Reminder: no mounts. Now walk it out
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.6,23.7
turnin A Steady Hand##29629 |goto 41.6,23.7
turnin And a Heavy Fist##29630 |goto 41.6,23.7
step
You are able to use mounts again
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.6,28.3
accept Perfection##29623 |goto 41.6,28.3
step
Use the abilities on your hotbar to mimic the Tian instructor and practice strikes.
12 Practice Strike completed |q 29623/1 |goto 41.3,27.8
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.6,28.3
accept Attention##29624 |goto 41.6,28.3
step
You will see _LEFT_ AND _RIGHT_ above your head in yellow text.
Attack and destroy each bag, alternating between them as they are called out. You can use aoe's but when a bag is called out, the other bag absorbs 99% incoming damage.
2 Training Bag |q 29624/1 |goto 41.7,27.0
|modelnpc 55184
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.6,28.3
accept Flying Colors##29639 |goto 41.6,28.3
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29639 |goto 42.7,23.2
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto The Jade Forest 50.8,26.8
step
Locate Hao Mann |q 29927/1
talk Hao Mann##56347
turnin Mann's Man##29927 |goto The Jade Forest/6 63.9,32.4
accept Trapped!##29929 |goto The Jade Forest/6 63.9,32.4
stickystart "Greenstonegorger"
stickystart "Greenstoneminer"
step "Greenstonegorger"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/7 44.1,31.4
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/7 44.1,31.4
step "Greenstoneminer"
click Greenstone Miner##56464
Free 8 Greenstone Miner |q 29929/1 |goto The Jade Forest/7 44.1,31.4
|tip The miners are stuck under piles of rock
|modelnpc 61586
step
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.3,29.4
accept What's Mined Is Yours##29930 |goto The Jade Forest/0 46.3,29.4
step
clicknpc Jade Cart##56527 |goto 46.3,29.5
kill Brittle Greenstone Gorger##56543+
Defend the Jade Cart from the Brittle Greenstone Gorgers.
Jade Delivered |q 29930/1
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto 50.9,27.0
turnin What's Mined Is Yours##29930 |goto 50.9,27.0
accept The Serpent's Heart##29931 |goto 50.9,27.0
step
talk Shao the Defiant##54697
accept Defiance##29578 |goto 43.5,75.9
accept Rally the Survivors##29579 |goto 43.5,75.9
step
talk Gentle Mother Hanae##54854
accept Spitfire##29585 |goto 43.3,75.7
accept Orchard-Supplied Hardware##29580 |goto 43.3,75.7
stickystart "Orchardfire"
stickystart "Gormaliraider"
stickystart "Survivors"
stickystart "Orchardtool"
step "Orchardfire"
Use the Nectarbreeze Cider in your bags on fires around town |use Nectarbreeze Cider##72578
|tip You must be facing the fire for this to work.
12 Orchard Fires Put Out |q 29585/1
step "Gormaliraider"
kill 8 Gormali Incinerator##54703+ |q 29578/2 |goto 44.5,72.9
kill 8 Gormali Raider##54702+ |q 29578/1 |goto 44.5,72.9
step "Survivors"
talk Nectarbreeze Farmer##54763
Tell them to get to Hanae's house
Rescue 5 Survivors |q 29579/1 |goto 44.5,72.9
step "Orchardtool"
click Orchard Tool
collect 6 Orchard Tool##72133 |q 29580/1 |goto 44.5,72.9
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.5,75.9
turnin Rally the Survivors##29579 |goto 43.5,75.9
step
talk Gentle Mother Hanae##54854
turnin Spitfire##29585 |goto 43.3,75.7
turnin Orchard-Supplied Hardware##29580 |goto 43.3,75.7
step
talk Traumatized Nectarbreeze Farmer##55209
accept The Splintered Path##29586 |goto 43.2,75.9
step
Discover Camp Mogu |q 29586/1 |goto 41.0,74.0
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.0,74.0
accept Unbound##29587 |goto 41.0,74.0
accept Getting Down to Business##29670 |goto 41.0,74.0
stickystart "farmerfree"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.8,76.2
step "farmerfree"
clicknpc Captured Nectarbreeze Farmer##54990
kill Gormali Slaver##54989+
|tip They must be dragging a prisoner behind them.
Free 10 Farmers |q 29587/1 |goto 39.8,74.8
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.0,74.0
turnin Getting Down to Business##29670 |goto 41.0,74.0
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto 48.3,61.3
accept Love's Labor##30495 |goto 48.3,61.3
step
talk Historian Dinh##59395
Tell him you have the new jade shipment.
Delivery to Historian Dinh |q 30495/1 |goto 46.4,61.8
step
talk Surveyor Sawa##59401
Tell him you have his jade |q 30495/2 |goto 46.9,60.4
step
talk Kitemaster Shoku##59392
Tell him you have a jade delivery for him.
Delivery to Kitemaster Shoku |q 30495/3 |goto 48.2,60.0
Tell him you need a ride to the top of the statue |goto 47.5,60.6 < 5
step
talk Taskmaster Emi##59397
Ask her if someone said they needed jade |q 30495/4 |goto 47.6,60.7
step
talk Kitemaster Inga##59400 |goto 47.5,60.5
Ask her for a ride down |goto The Jade Forest 48.2,60.0 < 5
confirm
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto 48.3,61.3
accept The Temple of the Jade Serpent##29932 |goto 48.3,61.3
step
talk Kitemaster Shoku##59392 |goto 48.2,60.0
Ask him to take you to the Temple of the Jade Serpent |goto 55.7,57.1 < 5
confirm
step
talk Elder Sage Wind-Yi##57242
Tell her you have a message for the Jade Serpent |q 29932/1 |goto 55.8,57.1
step
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto 58.1,58.7
accept The Scryer's Dilemma##29997 |goto 58.1,58.7
accept The Librarian's Quandary##29998 |goto 58.1,58.7
step
talk Fei##56784
accept The Rider's Bind##29999 |goto 58.1,59.0
accept Lighting Up the Sky##30005 |goto 58.1,59.0
step
As you walk around the Temple, there will be Firework Launchers Click them as you see them |goto 57.8,60.2
|tip They look like metal pots sitting on a wooden pallet
|confirm
step
clicknpc Playful Crimson Serpent##56852
Playful Crimson Serpent found |q 29999/2 |goto 58.2,61.4
step
Enter the building here |goto 57.4,61.0 < 5 |walk
talk Lorewalker Stonestep##56786
turnin The Librarian's Quandary##29998 |goto 56.3,60.4
accept Moth-Ridden##30001 |goto 56.3,60.4
accept Pages of History##30002 |goto 56.3,60.4
stickystart "dappledmoth"
step
clicknpc Playful Gold Serpent##56850
Playful Gold Serpent found |q 29999/4 |goto The Jade Forest 56.0,60.3
step "dappledmoth"
click Infested Book
kill 12 Bookworm##57237 |q 30002/1 |goto 56.0,60.3
|tip Right click on the Bookworms until they die. You can attack and kill them like you would any other mob, but clicking will probably be faster.
kill 8 Dappled Moth##57232 |q 30001/1 |goto 56.0,60.3
step
talk Lorewalker Stonestep##56786
turnin Moth-Ridden##30001 |goto 56.3,60.4
turnin Pages of History##30002 |goto 56.3,60.4
accept Everything In Its Place##30004 |goto 56.3,60.4
Go up the steps here |goto 55.8,59.7 < 5 |walk
step
Go down the steps here |goto 55.9,59.3 < 5 |walk
clicknpc Playful Emerald Serpent##56851
Playful Emerald Serpent found |q 29999/3 |goto 56.5,58.4
step
Enter this building |goto 56.8,57.3 < 5 |walk
kill Water Fiend##56820
collect Scryer's Staff##76725 |q 29997/1 |goto 57.1,55.8
step
talk Wise Mari##56787
turnin The Scryer's Dilemma##29997 |goto 57.6,56.0
accept A New Vision##30011 |goto 57.6,56.0
step
clicknpc Playful Azure Serpent##56853
Playful Azure Serpent |q 29999/1 |goto 59.2,56.7
step
click Firework Launcher
Fireworks launched |q 30005/1 |goto The Jade Forest 57.5,61.4
step
talk Playful Gold Serpent##56850
Playful Gold Serpent found |q 29999/4 |goto 56.0,60.0
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto 58.1,58.7
turnin Everything In Its Place##30004 |goto 58.1,58.7
accept They Call Him... Stormstout##32019 |goto 58.1,58.7
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto 58.1,59.0
turnin Lighting Up the Sky##30005 |goto 58.1,59.0
accept The Jade Serpent##30000 |goto 58.1,59.0
step
You will fly around on Yu'lon.
Listen to the Jade Serpent |q 30000/1
step
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto 55.8,57.1
step
Click the quest complete box to accept the quest.
accept Get Back Here!##30498
step
talk Ginsa Arroweye##59727 |goto 54.6,61.8
fpath Jade Temple Grounds
Ask her to take you to Pearlfin Village |goto 58.2,84.2 |future |q 30565
step
talk Sully 'The Pickle' McLeary##59550
accept An Unexpected Advantage##30565 |goto 58.6,82.3
step
talk Admiral Taylor##55122
turnin Get Back Here!##30498 |goto 58.1,80.7
accept Helping the Cause##30568 |goto 58.1,80.7
step
talk Pearlfin Recruit##59572
Challenge a Pearlfin Recruit |q 30568/1 |goto 59.7,83.9
step
clicknpc Wounded Pearlfin##59609
Assist 3 wounded Pearlfin |q 30568/3 |goto 60.4,87.4
step
kill Slingtail Ambusher##59554
collect 4 Water-Damaged Gear##80176 |q 30565/1 |goto 63.7,77.6
collect 4 Rusty Locking Bolt##80177 |q 30565/2 |goto 63.7,77.6
step
talk Amber Kearnen##59563
Ask her how you can help
Fight the Captive Hozen that appears in the pit
Defeat the Captive Hozen |q 30568/2 |goto 54.8,79.8
step
talk Sully 'The Pickle' McLeary##59550
turnin An Unexpected Advantage##30565 |goto 58.6,82.3
step
talk Admiral Taylor##55122
turnin Helping the Cause##30568 |goto 58.1,80.7
step
talk Lorewalker Cho##59620
accept Last Piece of the Puzzle##31362 |goto 58.9,81.1
step
talk Mishi##64475 |goto 58.8,81.1
Tell him I'm ready to leave |goto 44.6,67.2
confirm
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.1,68.5
step
Heirloom placed at the Cho Family Shrine |use Cho Family Heirloom##80071 |q 31362/1 |goto 44.5,66.9
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##31362 |goto 44.8,67.1
accept The Seal is Broken##31303 |goto 44.8,67.1
step
talk Mishi##64475 |goto 44.8,67.0
Tell him let's do this! |invehicle
confirm
step
You will be flying around on Mishi
Use your ability on the hotbare in order to put out the smoke pillars.
Sha Fissures Sealed |q 31303/1
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto 49.3,61.5
accept Residual Fallout##30500 |goto 49.3,61.5
accept Jaded Heart##30502 |goto 49.3,61.5
accept Emergency Response##31319 |goto 49.3,61.5
stickystart "sharemnant"
step
Use Cho's Fireworks near Admiral Taylor's body |use Cho's Fireworks##86511
Admiral Taylor Recovered |q 31319/1 |goto 47.7,62.0
click Celestial Jade##9694
Use your Celestial Jade on Sha Remnants. |use Celestial Jade##80074
step
Use Cho's Fireworks near Mishka's body. |use Cho's Fireworks##86511
Mishka Recovered |q 31319/2 |goto 46.4,61.7
click Celestial Jade##9694
Use your Celestial Jade on Sha Remnants. |use Celestial Jade##80074
step
Use Cho's Fireworks near Sully'ss body. |use Cho's Fireworks##86511
Sully Recovered |q 31319/3 |goto 47.5,59.2
click Celestial Jade##9694 |goto 47.5,59.2
Use your Celestial Jade on Sha Remnants. |use Celestial Jade##80074
step "sharemnant"
kill 12 Sha Echo##59417+ |q 30500/1 |goto The Jade Forest 48.5,60.3
click Celestial Jade##9694
Use your Celestial Jade Sha Remnants. |use Celestial Jade##80074
kill 6 Sha Remnant##59434+ |q 30502/1 |goto The Jade Forest 48.5,60.3
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto 49.3,61.5
turnin Jaded Heart##30502 |goto 49.3,61.5
turnin Emergency Response##31319 |goto 49.3,61.5
step
talk Fei##59899
accept Moving On##30648 |goto 49.3,61.4
step
talk Fei##59899
Tell her that you're ready to leave.
Travel to the Valley of the Four Winds |q 30648/1 |goto 49.3,61.4
step
Click the Quest complete box located at the top right of your screen.
turnin Moving On##30648
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Valley of the Four Winds (86-87)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\ValleyOfTheFourWinds",
next="Zygor's Leveling Guides\\Pandaria (85-90)\\Krasarang Wilds (87)",
startlevel=86.2,
dynamic=true,
},[[
step
talk Chen Stormstout##56133
turnin They Call Him... Stormstout##32019 |goto Valley of the Four Winds 85.9,22.1
accept Chen and Li Li##29907 |goto Valley of the Four Winds 85.9,22.1
step
talk Princeton##60230
fpath Pang's Stead |goto 84.5,21.0
step
Follow Chen and Li Li to Pang's Stead |q 29907/1 |goto 83.7,21.0
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto 83.7,21.0
accept A Seemingly Endless Nuisance##29908 |goto 83.7,21.0
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto 82.7,21.2
stickystart "Burriedfarm"
stickystart "Virmenspotter"
step "Burriedfarm"
clicknpc Plow Plant##56281
clicknpc Hoe Tree##56280
click Rake Tree##56279
click Barrow Bush##56278
Find 7 burried farm equipment |q 29877/1 |goto 84.5,15.5
step "Virmenspotter"
kill Virmen Spotter##56184+, Snagtooth Tool-Grabber##56185+
kill 8 Large virmen |q 29908/1 |goto 84.5,15.5
kill 18 Virmen Pesterer##65504+ |q 29908/2 |goto 84.5,15.5
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto 82.7,21.2
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto 83.7,21.0
accept Low Turnip Turnout##29909 |goto 83.7,21.0
step
talk Xiao##56110
accept The Search for the Hidden Master##30086 |goto 84.1,21.0
turnin The Search for the Hidden Master##30086 |goto 84.1,21.0
accept Ken-Ken##29873 |goto 84.1,21.0
accept Clever Ashyo##29871 |goto 84.1,21.0
accept Kang Bramblestaff##29874 |goto 84.1,21.0
accept Lin Tenderpaw##29872 |goto 84.1,21.0
step
talk Ang Thunderfoot##56207
turnin Low Turnip Turnout##29909 |goto 81.6,25.2
accept Taking a Crop##29940 |goto 81.6,25.2
step
talk Ana Thunderfoot##56465
accept Rampaging Rodents##29910 |goto 82.0,26.5
stickystart "Marmot Hole"
step
clicknpc Plump Marmot##56203
Move 6 Plump Marmots |q 29910/1 |goto 82.4,25.4
step
label "Marmot Hole"
click Marmot Hole
6 Marmot Holes filled |q 29910/2 |goto 82.4,25.4
step
talk Ana Thunderfoot##56465
turnin Rampaging Rodents##29910 |goto 82.6,26.3
step
Enter the underground cave here |goto 86.6,28.1 < 5 |walk
click Stolen Turnip |indoors Virmen Nest
collectt 5 Stolen Turnips |q 29940/1 |goto 84.7,26.7 |indoors Virmen Nest
step
Leave the underground cave |goto 86.5,28.1 < 5 |walk
click Stolen Watermelon##10970
collect 5 Stolen Watermelon |q 29940/2 |goto 85.1,32.52
step
talk Ang Thunderfoot##56207
turnin Taking a Crop##29940 |goto 81.6,25.2
accept Practically Perfect Produce##29911 |goto 81.6,25.2
step
talk Pang Thunderfoot##56204
turnin Practically Perfect Produce##29911 |goto 83.7,21.0
accept The Fabulous Miss Fanny##29912 |goto 83.7,21.0
step
click Ang's Giant Pink Turnip##10867
collect 1 Ang's Giant Pink Turnip##75259 |q 29912 |future |goto 84.2,22.0 |c
click Ang's Summer Watermelon##10970
collect 1 Ang's Summer Watermelon##75258 |q 29912 |future |goto 84.2,22.0 |c
click Pang's Extra-Spicy Tofu##10823
collect 1 Pang's Extra-Spicy Tofu##75256 |q 29912 |future |goto 84.2,22.0 |c
confirm
step
talk Miss Fanny##56192
Hit the turnip with average power
Launch a pink turnip |q 29912/1 |goto 82.9,21.3
step
talk Miss Fanny##56192
Hit the watermelon very softly
Launch a watermelon |q 29912/2 |goto 82.9,21.3
step
talk Miss Fanny##56192
Hit the tofu as hard as possible
Launch the Extra-Spicy Tofu |q 29912/3 |goto 82.9,21.3
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto 75.2,24.1
accept The Meat They'll Eat##29913 |goto 75.2,24.1
accept Back to the Sty##29914 |goto 75.2,24.1
step
talk Kim of the Mountain Winds##62658
fpath Grassy Cline |goto 70.8,24.2
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto 75.2,24.1
accept The Meat They'll Eat##29913 |goto 75.2,24.1
accept Back to the Sty##29914 |goto 75.2,24.1
stickystart "turtlemeatscrap"
stickystart "adolmushan"
step
clicknpc Jian##56253 |q 29914/1 |goto 70.2,23.9
step
clicknpc Smelly##56255 |q 29914/3 |goto 70.1,28.7
step
clicknpc Ling##56254 |q 29914/2 |goto 66.9,29.3
step "turtlemeatscrap"
kill Wyrmhorn Turtle##56256
collect 80 Turtlemeat Scrap##75276 |q 29913/2 |goto 67.5,29.9
step "adolmushan"
kill Adolescent Mushan##56239
collect 4 Mushan Shoulder Steak##75275 |q 29913/1 |goto 72.3,31.6
step
talk Liang Thunderfoot##56205
turnin The Meat They'll Eat##29913 |goto 75.2,24.1
turnin Back to the Sty##29914 |goto 75.2,24.1
accept A Neighbor's Duty##29915 |goto 75.2,24.1
step
talk Francis the Shepherd Boy##56208
turnin A Neighbor's Duty##29915 |goto 78.1,32.9
accept Piercing Talons and Slavering Jaws##29916 |goto 78.1,32.9
accept Lupello##29917 |goto 78.1,32.9
stickystart "killwolfplain"
step
kill Lupello##56357 |q 29917/1 |goto 81.3,40.2
step "killwolfplain"
kill 6 Thieving Wolf##56106 |q 29916/2 |goto 83.4,31.4
kill 5 Thieving Plainshawk##56034 |q 29916/1 |goto 83.4,31.4
step
talk Francis the Shepherd Boy##56208
turnin Piercing Talons and Slavering Jaws##29916 |goto 78.1,32.9
turnin Lupello##29917 |goto 78.1,32.9
step
talk Shang Thunderfoot##56312
accept A Lesson in Bravery##29918 |goto 78.2,32.8
step
Use your Rancher's Lariat on a Great White Plainshawk |use Rancher's Lariat##75208
kill Great White Plainshawk##56171 |q 29918/1 |goto 78.8,31.4
|tip When it grasps you in its claws use the Escape Claws ability to break free.
step
talk Shang Thunderfoot##56312
turnin A Lesson in Bravery##29918 |goto 74.7,34.6
step
talk Chen Stormstout##56133
accept Great Minds Drink Alike##29919 |goto 75.3,35.5
step
talk Chen Stormstout##56133
Tell him you're ready.
Escort Chen and Li Li |q 29919/1 |goto 75.3,35.5
|tip Make sure you stay close to them even though you don't have to protect them. The quest will bug and you will fail otherwise.
step
talk Mudmug##56474
turnin Great Minds Drink Alike##29919 |goto 68.7,43.1
step
talk Chen Stormstout##56133
accept Leaders Among Breeders##29944 |goto 68.9,43.1
step
talk Li Li##56138
accept Yellow and Red Make Orange##29945 |goto 68.9,43.3
stickystart "meadowmari"
stickystart "meadow"
step
kill Jinanya the Clawblade##56513 |q 29944/2 |goto 67.0,38.7
step
kill Aiyu the Skillet##56520 |q 29944/1 |goto 69.2,37.0
step
kill Frenzyhop##56514 |q 29944/3 |goto 64.6,40.7
step "meadowmari"
kill Longfang Howler##56524+, Mushan Nomad##56523+, Tawnyhide Stag##56532+, Longfang Howler##56524, Tawnyhide Fawn##56526+
collect 40 Vial of Animal Blood##76335+ |q 29945/2 |goto 66.5,41.7
step
label "meadow"
click Meadow Marigold
|tip They look like golden petals on the ground.
collect 10 Meadow Marigold##76334 |q 29945/1 |goto 66.5,41.7
You can find more animals and marigolds around: |goto 69.7,46.8
step
talk Li Li##56138
turnin Yellow and Red Make Orange##29945 |goto 68.9,43.3
accept Crouching Carrot, Hidden Turnip##29947 |goto 68.9,43.3
step
talk Chen Stormstout##56133
turnin Leaders Among Breeders##29944 |goto 68.9,43.2
accept The Warren-Mother##29946 |goto 68.9,43.2
step
talk Mudmug##56474
accept Thieves to the Core##29948 |goto 68.7,43.1
stickystart "orangeturnip"
stickystart "stolensack"
step
Enter the tunnel |goto 69.1,40.0 < 10
kill Chufa##56537 |q 29946/1 |goto 67.9,37.4 |indoors The Twisted Warren
|tip Don't worry that it is elite, Chen comes to help you.
step
label "orangeturnip"
Throw your Orange-Painted Turnips at Virmen Hoarders |use Orange-Painted Turnip##76370
Trick 12 Virmen with Orange-Painted Turnips |q 29947/1 |goto 68.99,36.96 |indoors The Twisted Warren
step
label "stolensack"
click Stolen Sack of Hops##11499
collect 6 Stolen Sack of Hops##76337 |q 29948/1 |goto 68.99,36.96 |indoors The Twisted Warren
step
Exit the warren |goto 69.1,40.0 < 5 |walk
talk Mudmug##56474
turnin Thieves to the Core##29948 |goto 68.7,43.1
step
talk Li Li##56138
turnin Crouching Carrot, Hidden Turnip##29947 |goto 68.9,43.3
step
talk Chen Stormstout##56133
turnin The Warren-Mother##29946 |goto 68.9,43.1
accept Legacy##29949 |goto 68.9,43.1
step
talk Li Li##56138
turnin Legacy##29949 |goto 68.8,43.4
accept Li Li's Day Off##29950 |goto 68.8,43.4
step
If Li Li isn't with you than use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
Bring Li Li to Huangtze Falls |q 29950/3 |goto 74.8,42.5
step
If Li Li isn't with you than use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
Bring Li Li to New Cifera |q 29950/2 |goto 61.9,34.8
step
talk Clever Ashyo##56113
turnin Clever Ashyo##29871 |goto 61.2,34.3
accept Ashyo's Vision##29577 |goto 61.2,34.3
step
talk Gladecaster Lang##58736
accept Watery Woes##30267 |goto 61.0,32.9
step
talk Yan##56773
accept Bottletoads##29757 |goto 60.6,33.7
step
kill Manglemaw##58754
|tip After Manglemaw dies, his mother comes out.
kill Manglemaw's Mother##58755 |goto 57.4,26.5
collect 1 Enormous Crocolisk Tail##79238 |n
Click the Enormous Crocolisk Tail in your bags |use Enormous Crocolisk Tail##79238
accept A Crocolisk Tale##30275
stickystart "Gladeglimmer"
step
kill Glade Hunter##57299+, Glade Sprinter##58741+
collect 5 Spindly Bloodfeather##79198+ |q 30267/2 |goto 59.0,40.2
step
label "Gladeglimmer"
clicknpc Glade Glimmer##57301
collect 18 Glade Glimmer##79197+ |q 30267/1 |goto 59.0,40.2
step
talk Yan##56773
turnin A Crocolisk Tale##30275 |goto 60.6,33.7
step
talk Gladecaster Lang##58736
turnin Watery Woes##30267 |goto 61.0,32.9
step
Follow the path up |goto 63,33 < 5 |only if walking
talk Zhang Yue##56802
accept Snap Judgment##29600 |goto 59.8,27.9
step
talk Clever Ashyo##56113
Tell him to speak with the water.
Ashyo's Vision |q 29577/1 |goto 59.3,27.6
step
talk Zhang Yue##56802
turnin Ashyo's Vision##29577 |goto 59.8,27.9
accept The Golden Dream##29581 |goto 59.8,27.9
stickystart "razorsnapper"
stickystart "Dreamleafbush"
stickystart "Gurgling"
step
_Go up_ this path |goto 60.8,25.7 < 10 |only if walking
kill Krosh##56833
collect Krosh's Back##83767 |q 29758 |goto 65.3,25.82
Click Krosh's Back. |use Krosh's Back##83767
accept Guess Who's Back##29758
step
label "Dreamleafbush"
click Dreamleaf Bush
|tip It is a big green plant next to Krosh
collect Sprig of Dreamleaf####76973 |q 29581/1 |goto 65.3,25.82
step
label "razorsnapper"
kill 16 Razorback Snapper##56832 |q 29600/1 |goto 63.9,26.5
step
label "Gurgling"
click Gurgling Toadspawn
|tip These are found in the water around this area. The water will be bubbling if one is there. You can do this while mounted.
Scoop 8 Toad Eggs |q 29757/1 |goto 63.9,26.5
step
talk Zhang Yue##56802
turnin Snap Judgment##29600 |goto 59.8,27.9
step
talk Yan##56773
turnin The Golden Dream##29581 |goto 60.6,33.7
turnin Bottletoads##29757 |goto 60.6,33.7
turnin Guess Who's Back##29758 |goto 60.6,33.7
step
talk Innkeeper Lei Lan##59582
home The Lazy Turnip |q 32045 |future |goto 55.1,50.6
step
talk Wing Nga##60231
fpath Halfhill |goto 56.4,50.3
step
talk Stonecarver Mac##64315
accept Children of the Water##32045 |goto 55.1,47.4
step
talk Lolo Lio##59585
accept Got Silk?##32035 |goto 55.6,52.1
step
If Li Li isn't with you than use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
Bring Li Li to the Silkmasters |q 29950/1 |goto 61.7,58.7
step
talk Silkmaster Tsai##57405
turnin Got Silk?##32035 |goto 62.7,59.7
accept Where Silk Comes From##30072 |goto 62.7,59.7
step
talk Journeyman Chu##57424
accept The Moth Rebellion##30059 |goto 63.5,58.5
step
click Mulberry Barrel##7970
collect Mulberry Leaves##77455 |q 30072/1 |goto 62.5,55.2
stickystart "rawsilk"
step
clicknpc Hungry Silkworm##57403
Feed 5 Hungry Silkworms |q 30072/2 |goto 61.2,61.0
step "rawsilk"
click Silk Cocoon Bucket##7970
collect Raw Silk##77456 |q 30072/3 |goto 62.4,62.5
step
talk Silkmaster Tsai##57405
turnin Where Silk Comes From##30072 |goto 62.7,59.7
step
kill 6 Mutated Silkmoth##57422+ |q 30059/1 |goto 64.7,55.5
kill 8 Tiny Mutated Silkmoth##65984+ |q 30059/2 |goto 64.7,55.5
step
talk Journeyman Chu##57424
turnin The Moth Rebellion##30059 |goto 63.5,58.5
step
talk Master Goh##57407
accept Mothallus!##30058 |goto 63.6,58.5
step
click Mothallus Bait##10780
kill Mothallus##57421 |q 30058/1 |goto 64.3,58.3
When Mothallus ascends into the sky, destroy the cocoons to free the Mothfighters so they can pull Mothallus back down
step
talk Master Goh##57407
turnin Mothallus!##30058 |goto 63.6,58.5
step
talk Li Li##56138
turnin Li Li's Day Off##29950 |goto 68.8,43.4
step
talk Mudmug##56474
accept Muddy Water##29951 |goto 68.7,43.1
step
talk Chen Stormstout##56133
accept Broken Dreams##29952 |goto 68.8,43.4
step
talk Chen Stormstout##56133 |goto 68.8,43.4
Ask Chen what happened and listen to his story |goto 32.2,71.5 < 5 |q 29952
step
Use the abilities on your hotbar to defeat the various monsters as you follow Uncle Gao.
Listen to Chen's story |q 29952/1 |goto 34.5,70.4
|modelnpc Uncle Gao##56680
|modelnpc Unruly Alemental##56684
|modelnpc Wuk-Wuk##56691
step
talk Chen Stormstout##56133
turnin Broken Dreams##29952 |goto 68.8,43.4
step
click Muddy Water
Plan out your path before you start gathering mud.
|tip You will slowly lose mud as you swim.
|tip When you find a pile of glittering mud, there is usually multiple piles right next to each other.
|tip Make sure to grab them all before trying to move to another
Fill up your vial 100% with mud |q 29951/1 |goto 70.93,54.75
step
talk Mudmug##56474
turnin Muddy Water##29951 |goto 68.7,43.1
step
talk Chen Stormstout##56133
accept Chen's Resolution##30046 |goto 68.9,43.4
step
talk Chen Stormstout##56133
turnin Chen's Resolution##30046 |goto 55.9,49.4
accept Hop Hunting##30053 |goto 55.9,49.4
accept Li Li and the Grain##30048 |goto 55.9,49.4
accept Doesn't Hold Water##30049 |goto 55.9,49.4
step
talk Mudmug##56474
turnin Doesn't Hold Water##30049 |goto 54.3,38.7
accept The Great Water Hunt##30051 |goto 54.3,38.7
step
talk Mudmug##56474 |goto Valley of the Four Winds 54.3,38.7
Tell him you're ready to go
|confirm
stickystart "gladewater"
step
kill Kracor##67128 |q 32045/1 |goto 56.0,33.8
|tip It may be marked on your mini map as a white skill with red eyes
step "gladewater"
While Mudmug is following you:
Run through Swirling Pools located around this area
|tip They look like dark blue glittering spots on top of the water
Gather 30 Gladewater |q 30051/1 |goto Valley of the Four Winds 53.3,31.2
step
Next to you
talk Mudmug##58785
turnin The Great Water Hunt##30051
accept Barreling Along##30172
step
kill Thundergill##67125 |q 32045/2 |goto 54.1,25.6
|tip It may be marked on your mini map as a white skill with red eyes
step
kill Succula##67099 |q 32045/3 |goto 51.3,26.9
|tip It usually stays stealthed
step
talk Stonecarver Mac##64315
turnin Children of the Water##32045 |goto 55.1,47.4
step
talk Gardener Fran##62377
accept Gardener Fran and the Watering Can##30050 |goto 48.3,33.5
step
talk Gardener Fran##62377
You're going to run around her garden and water her vegetables for her
Tell her you are ready to go
All of the gardens are placed around the big hill |goto Valley of the Four Winds,50,29
|tip She will call out which vegetable patch you need to water. The order mostly stays the same. Once you start, proceed clockwise around the hill and water the vegetables.
Water 60 vegetables |q 30050/1 |goto 48.3,33.5
step
talk Gardener Fran##62377
turnin Gardener Fran and the Watering Can##30050 |goto 48.3,33.5
Tell her you're helping a friend brew some beer |q 30053/1 |goto 48.3,33.5
step
talk Mung-Mung##57401
accept Enough is Ookin' Enough##30054 |goto 44.2,34.2
step
talk Den Mudclaw##62385
accept The Farmer's Daughter##30056 |goto 44.3,34.2
Ask if he has any hops he can spare |q 30053/3 |goto 44.3,34.2
step
Enter the tunnel |goto 43.6,35.0 < 5 |walk
talk Mina Mudclaw##57408 |indoors Springtail Warren
turnin The Farmer's Daughter##30056 |indoors Springtail Warren |goto 41.3,38.1
accept Seeing Orange##30057 |indoors Springtail Warren |goto 41.3,38.1
step
Exit the warren |goto 43.6,35.0 < 5 |walk
kill Springtail Gnasher##57413, Springtail Leaper##57415
collect 100 Virmen Tooth##77379 |q 30054/1 |goto 43.4,39.1
step
talk Mung-Mung##57401
turnin Enough is Ookin' Enough##30054 |goto 44.2,34.3
step
talk Den Mudclaw##62385
turnin Seeing Orange##30057 |goto Valley of the Four Winds 44.3,34.2
step
talk Gai Lan##57385
accept Weed War##30052 |goto 38.6,51.7
step
talk Gai Lan##57385
Ask him "What weeds?"
clicknpc Ugly Weed##57306
clicknpc Nasty Weed##57308
click Weed-B-Gone Gas Bomb
You can stay mounted for all of this. Gai will throw the Weed-B-Gone Bomb onto the ground at different times during this, pick it up and use the skill it gives you.
Pull 100 Weeds |q 30052/1 |goto 38.6,51.7
step
talk Gai Lan##57385
turnin Weed War##30052 |goto 38.6,51.7
Ask him if you can buy some hops |q 30053/2 |goto 38.6,51.7
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Hop Hunting##30053
accept Stormstout's Hops##30055
step
If Mudmug is no longer following you, you can find him at |goto 54.3,38.7
talk Mudmug##58341
Take him to Halfhill |goto Valley of the Four Winds 56.0,49.5
Lead Mudmug back to Halfhill |q 30172/1 |goto 55.9,49.5
step
talk Chen Stormstout##56133
turnin Barreling Along##30172
turnin Stormstout's Hops##30055
step
talk Li Li##56138
turnin Li Li and the Grain##30048 |goto 52.7,62.8
accept Taste Test##30031 |goto 52.7,62.8
step
talk Grainlord Kai##57211
accept Wee Little Shenanigans##30029 |goto 52.8,63.0
step
talk Grainer Pan##57209
accept Out of Sprite##30030 |goto 52.6,63.0
stickystart "cornan"
stickystart "trickymaizer"
step
click Malted Grain##11036
Taste Malted Grain |q 30031/3 |goto 50.8,63.6
step
click Aged Grain##11035
Taste Aged Grain |q 30031/1 |goto 51.3,60.5
step
click Light Grain##11037
Taste Light Grain |q 30031/2 |goto 53.7,63.3
step
click Fresh Grain##11034
Taste Fresh Grain |q 30031/4 |goto 53.6,64.6
step "cornan"
kill Cornan##57213 |q 30030/1 |goto 51.5,64.5
step "trickymaizer"
kill 8 Tricky Maizer##57223 |q 30029/1 |goto 52.4,62.2
step
talk Li Li##56138
turnin Taste Test##30031 |goto 52.7,62.8
step
talk Grainer Pan##57209
turnin Out of Sprite##30030 |goto 52.6,63.0
step
talk Grainlord Kai##57211
turnin Wee Little Shenanigans##30029 |goto 52.7,63.0
accept The Quest for Better Barley##30032 |goto 52.7,63.0
accept Grain Recovery##30028 |goto 52.7,63.0
step
click Stolen Barley Sack##11045
collect 8 Sack of Grain##77033 |q 30028/1 |goto 54.7,67.7
step
click Rappeling Rope##7548
Use the Cliff Harness. |q 30032/1 |goto Valley of the Four Winds 51.2,77.5
step
Enter the cave |goto 53.6,76.4 < 5 |walk
click Malted Cave Barley##77034 |indoors The Dark Hollow
collect Malted Cave Barley |q 30032/2 |goto Valley of the Four Winds 53.6,75.2 |indoors The Dark Hollow
step
Exit the Cave |goto Valley of the Four Winds 53.6,76.3 < 5 |walk
click Climbing Rope##7548 |only if walking
Ride to the top of the Cliff |goto Krasarang Wilds/0 48.63,27.04 |only if walking
confirm
step
talk Li Li##56138
turnin The Quest for Better Barley##30032 |goto Valley of the Four Winds 52.7,62.8
accept The Chen Taste Test##30047 |goto 52.7,62.8
step
talk Grainlord Kai##57211
turnin Grain Recovery##30028 |goto 52.7,63.0
step
talk Chen Stormstout##56133
turnin The Chen Taste Test##30047 |goto 55.9,49.5
accept The Emperor##30073 |goto 55.9,49.5
step
Wait for the dialogue to end.
Help Chen brew his beer |q 30073/1
step
talk Chen Stormstout##56133
turnin The Emperor##30073 |goto 55.9,49.4
accept Knocking on the Door##30074 |goto 55.9,49.4
step
talk Chen Stormstout##56133
turnin Knocking on the Door##30074 |goto 32.2,68.5
step
talk Mudmug##56474
accept The Fanciest Water##30076 |goto 32.3,68.3
step
talk Li Li##56138
accept Barrels, Man##30077 |goto 32.3,68.5
step
talk Chen Stormstout##56133
accept Clear the Way##30075 |goto 32.1,68.3
stickystart "Barreledpandaren"
stickystart "Aleaddled"
stickystart "Curiouswater"
step "Barreledpandaren"
While completing this step be careful not to stray close to Ook-Ook. If he catches you, use the _Break Barrel_ button to escape your new prison
clicknpc Barreled Pandaren##57662
|tip A lot of these can be found along the main, center path
Free 7 Barreled Pandaren |q 30077/1 |goto 35.3,66.5
step "Aleaddled"
kill Mischievous Virmen##57671, Ale-Addled Hozen##57672
Kill 10 Ale-Addled Hozen or Mischievous Virmen |q 30075/1 |goto 35.3,66.5
step "Curiouswater"
kill Curious Water Sprite##57673
collect 3 Spritewater Essence##77471 |q 30076/1 |goto 35.3,66.5
step
talk Li Li##56138
turnin Barrels, Man##30077 |goto 36.1,69.0
step
talk Mudmug##56474
turnin The Fanciest Water##30076 |goto 36.0,69.1
step
talk Chen Stormstout##56133
turnin Clear the Way##30075 |goto 36.0,69.0
step
talk Chen Stormstout##56133
accept Cleaning House##30078 |goto 36.0,69.0
step
talk Chen Stormstout##56133 |goto 36.0,69.0 |n
"Crack your knuckles and nod your head." |goto 38.2,67.7 <5 |c
|confirm
step
The objectives of this quest can be done in any order depending on where the phase happens to take you
Click here if you start near Mudmug. |next |confirm |q 30078 |future
Click here if you start near Li Li. |next "lili" |confirm |q 30078 |future
Click here if you start near Chen. |next "chen" |confirm |q 30078 |future
step
label mudmug
talk Mudmug##58027
Tell him to calm down
kill Eddy##58014 |q 30078/1 |goto 34.9,70.3
|tip When Eddy activates his Watery Shield run over bubbles on the ground until it is weakened, then click the bubble.
Click here to move on to Li Li and Jooga. |next "lili" |confirm
Cleaned out the brewery. |goto Valley of the Four Winds 36.1,68.9 < 5 |noway |c |next "done" |q 30078 |future
step
label lili
talk Li Li##58028
Tell her you'll help
kill Jooga##58015 |q 30078/2 |goto 33.0,71.1
|tip You can keep Jooga pinned down by clicking the Empty Kegs around the room. Dodge the bananas that he throws at you.
Click here to move on to Chen and the Fizzy Yellow Alemental. |next "chen" |confirm
Cleaned out the brewery. |goto Valley of the Four Winds 36.1,68.9 < 5 |noway |c |next "done" |q 30078 |future
step
label chen
talk Chen Stormstout##58029
Tell him let's do this
|tip Kill the Fizzy Yellow Spirits around the room in order to summon the Alemental.
kill Fizzy Yellow Alemental##58253 |q 30078/3 |goto 38.2,68.2
Click here to move on to Mudmug and Eddy. |next "mudmug" |confirm
Cleaned out the brewery. |goto 36.1,68.9 < 5 |noway |c |next "done" |q 30078 |future
step
label done
talk Chen Stormstout##56133
turnin Cleaning House##30078 |goto 36.0,69.1
step
talk Emmi##61026
accept Stoneplow Thirsts##30117 |goto 36.2,68.3
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto Valley of the Four Winds 20.2,58.5
step
talk Lin Tenderpaw##56111
turnin Lin Tenderpaw##29872 |goto Valley of the Four Winds 19.9,56.9
accept Stemming the Swarm##29981 |goto Valley of the Four Winds 19.9,56.9
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto Valley of the Four Winds 19.5,56.8
accept Evacuation Orders##29982 |goto Valley of the Four Winds 19.5,56.8
step
talk Nan the Mason Mug##62878
home Stone Mug Tavern |q 29981 |future |goto Valley of the Four Winds 19.7,55.9
stickystart "ikthikmantid"
step
talk Haiyun Greentill##57123
Tell him Commander Loon Mai has issued evacuation orders
Evacuate the Greentil Family |q 29982/3 |goto Valley of the Four Winds 15.8,56.3
step
talk Mia Marlfur##57127
Tell her Commander Loon Mai has issued evacuation orders
Evacuate the Marlfur Family |q 29982/4 |goto Valley of the Four Winds 15.5,54.9
step
talk Feng Spadepaw##57121
Tell him Commander Loon Mai has issued evacuation orders
Evacuate the Spadepaw Family |q 29982/2 |goto Valley of the Four Winds 12.8,55.7
step
talk Wei Blacksoil##57120
Tell him Commander Loon Mai has issued evacuation orders
Kill the Ik'thallik Ambusher that spawns
Talk to Wei Blacksoil
Tell him let's go
Evacuate the Blacksoil Family |q 29982/1 |goto Valley of the Four Winds 7.2,54.8
step "ikthikmantid"
kill Ik'thik Swiftclaw##57195+, Ik'thik Wingblade##57196+
Kill 14 Ik'thik mantid |q 29981/1 |goto 13.1,52.9
step
talk Loon Mai##56720
turnin Evacuation Orders##29982 |goto Valley of the Four Winds 19.5,56.8
turnin Stemming the Swarm##29981 |goto Valley of the Four Winds 19.5,56.8
accept The Hidden Master##29983 |goto Valley of the Four Winds 19.5,56.8
step
talk Master Bruised Paw##56714
turnin The Hidden Master##29983 |goto 18.3,31.2
accept Unyielding Fists: Trial of Bamboo##29984 |goto 18.3,31.2
step
talk Master Bruised Paw##56714 |goto 18.3,31.2
Tell him you are ready for the trial of bamboo |invehicle
confirm
step
Follow the instructions and use the abilities on your hotbar to pass the trial.
Strike 3 stacks of Bamboo Reeds |q 29984/1
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Bamboo##29984 |goto 18.3,31.2
step
talk Master Bruised Paw##56714
accept They Will Be Mist##29985 |goto 18.3,31.2
accept Fog Wards##29986 |goto 18.3,31.2
step
talk Lin Tenderpaw##56111
accept Tenderpaw By Name, Tender Paw By Reputation##29992 |goto 18.1,31.0
stickystart "jademoonleaf"
step
click Northern Fog Ward
Light the Northern Fog Ward |q 29986/1 |goto 16.0,32.1
step
click Western Fog Ward
Light the Western Fog Ward |q 29986/2 |goto 14.8,36.8
step
click Southern Fog Ward
Light the Southern Fog Ward |q 29986/3 |goto 18.1,41.5
step "jademoonleaf"
kill 12 Mist Incarnation##56740+ |q 29985/1 |goto 18.0,37.0
click Jademoon Leaf##11006+
|tip On the rocks around this area.
collect 18 Jademoon Leaf##76499+ |q 29992/1 |goto 18.0,37.0
step
talk Lin Tenderpaw##56111
turnin Tenderpaw By Name, Tender Paw By Reputation##29992 |goto 18.1,31.0
step
talk Master Bruised Paw##56714
turnin They Will Be Mist##29985 |goto 18.3,31.2
turnin Fog Wards##29986 |goto 18.3,31.2
accept Unyielding Fists: Trial of Wood##29987 |goto 18.3,31.2
step
talk Master Bruised Paw##56714 |goto 18.3,31.2
Tell him your fists are ready |invehicle
confirm
step
Follow the instructions and use the abilities on your hotbar to pass the trial
Strike 4 stacks of Wooden Boards |q 29987/1
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Wood##29987 |goto 18.3,31.2
accept A Taste For Eggs##29988 |goto 18.3,31.2
stickystart "emperortern"
step
Follow the path up |goto 19.9,42.5 < 5 |only if walking
click Hornbill Strider Egg##3851
collect Hornbill Strider Egg##76516 |q 29988/3 |goto 27.0,39.0
step "emperortern"
click Whitefisher Crane Egg##1867
|tip These can be found near the tall grass
collect 4 Whitefisher Crane Egg##76503 |q 29988/2 |goto 25.3,42.1
click Emperor Tern Egg##372
|tip These are found at the base of rocks that have Emperor Ferns sitting on them
collect 10 Emperor Tern Egg##76501+ |q 29988/1 |goto 25.3,42.1
step
talk Master Bruised Paw##56714
turnin A Taste For Eggs##29988 |goto 18.3,31.2
step
talk Master Bruised Paw##56714
accept Unyielding Fists: Trial of Stone##29989 |goto 18.3,31.2
step
talk Master Bruised Paw##56714 |goto 18.3,31.2
Tell him you are ready for the trial of stone |invehicle
confirm
step
Follow the instructions and use the abilities on your hotbar to pass the trial.
Strike 5 stacks of Stone Blocks |q 29989/1
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Stone##29989 |goto 18.3,31.2
step
talk Lin Tenderpaw##56111
accept Training and Discipline##29990 |goto 18.1,31.0
step
_DO NOT_ turn in the quest _Training and Discipline_! You will need it later to move on to the next zone.
|confirm always
step
talk Tani##63822
accept Stalker Mastery##30183 |goto Valley of the Four Winds 16.2,82.5
step
talk Hemet Nesingwary Jr.##58422
accept Mushan Mastery##30181 |goto 16.1,82.6
stickystart "Gorgestalker"
stickystart "Dustbackmushan"
step "Gorgestalker"
kill 15 Gorge Stalker##58432 |q 30183/1 |goto 12.4,76.5
step "Dustbackmushan"
kill Young Dustback Mushan##58427+, Dustback Mushan##58424+
kill 15 Dustback Mushan |q 30181/1 |goto 12.4,76.5
You can find more Mushan and Stalkers at |goto 12.5,69.2
step
talk Tani##63822
turnin Stalker Mastery##30183 |goto 16.2,82.5
accept Fox Mastery##30182 |goto 16.2,82.5
step
talk Hemet Nesingwary Jr.##58422
turnin Mushan Mastery##30181 |goto Valley of the Four Winds 16.1,82.6
step
talk Hemet Nesingwary##58421
accept Mushan Mastery: Darkhide##30184 |goto Valley of the Four Winds 16.0,82.5
step
talk Matt "Lucky" Gotcher##58434
accept Stag Mastery##32038 |goto 15.9,82.3
stickystart "wilderstag"
stickystart "slypupfox"
step
kill Darkhide##58435
collect Darkhide's Head###79058 |q 30184/1 |goto 26.3,75.3
step "wilderstag"
kill 10 Wilderland Stag##58489+|q 32038/1 |goto 25.7,77.2
step "slypupfox"
kill Sly Pup##58549+, Sly Fox##58548+
Kill 15 Shadow Foxes |q 30182/1 |goto 27.6,71.4
|tip They're usually stealthed
More can be found around |goto Valley of the Four Winds,24.7,78.6
step
talk Hemet Nesingwary##58421
turnin Mushan Mastery: Darkhide##30184 |goto 16.1,82.6
step
talk Matt "Lucky" Gotcher##58434
turnin Stag Mastery##32038 |goto 15.9,82.3
step
talk Tani##63822
turnin Fox Mastery##30182 |goto Valley of the Four Winds 16.2,82.5
step
talk Hemet Nesingwary Jr.##58422
accept Tortoise Mastery##30185 |goto 16.1,82.6
step
kill Bulgeback Tortoise##58431
collect 5 Intact Tortoise Shell##79059 |q 30185/1 |goto 19.1,77.4
step
talk Hemet Nesingwary Jr.##58422
turnin Tortoise Mastery##30185 |goto 19.9,75.7
accept Parental Mastery##30186 |goto 19.9,75.7
step
Swim underwater and enter the cave here |goto 21.3,74.4 < 5 |walk
talk Hemet Nesingwary Jr.##58461 |indoors Lair of the Beast
Try shaking Hemet. |indoors Lair of the Beast
When the beast comes out take it to  |indoors Lair of the Beast |goto 23.8,74.8
kill Torjar's Bane##58439  |indoors Lair of the Beast
Rescue Hemet Nesingwary Jr. |q 30186/1  |indoors Lair of the Beast |goto 24.5,74.6
step
Exit the cave and swim up |goto 21.3,74.4 < 5 |walk
talk Hemet Nesingwary##58421
turnin Parental Mastery##30186 |goto 16.0,82.5
step
talk Loon Mai##56720
turnin Training and Discipline##29990 |goto Valley of the Four Winds 19.5,56.9
step
talk "Dragonwing" Dan##58843 |goto 20.2,58.5
Ask him to send you to Ken-Ken |goto Krasarang Wilds 76.4,7.7 <8 |c
|only if havebuff
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Krasarang Wilds (87)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\KrasarangWilds",
next="Zygor's Leveling Guides\\Pandaria (85-90)\\Kun-Lai Summit (87-88)",
startlevel=87.0,
},[[
step
talk Ken-Ken##56115
turnin Ken-Ken##29873 |goto Krasarang Wilds 76.2,7.1
accept What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds 76.2,7.1
step
talk Mei Barrelbottom##57744
accept Finding Yi-Mo##30080 |goto 75.8,7.6
Speak with Mei |q 30079/4 |goto 75.8,7.6
step
talk Gee Hung##60232
fpath Zhu's Watch |goto 76.7,8.4
step
talk Despondent Warden of Zhu##57457
Speak with Despondent Warden of Zhu |q 30079/1 |goto 76.5,8.6
step
talk Yun##57825
Speak with Yun |q 30079/3 |goto 75.5,9.3
step
talk Sunni##57830
Speak with Sunni |q 30079/2 |goto 77.5,8.7
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Bastion?##30079 |goto 76.2,7.1
step
talk Yi-Mo Longbrow##58376
Find Yi-Mo Longbrow |q 30080/1 |goto 81.3,6.8
step
turnin Finding Yi-Mo##30080 |goto 81.3,6.8
accept Cheer Up, Yi-Mo##30082 |goto 81.3,6.8
step
talk Yi-Mo Longbrow##58376
Tell Yi-Mo that his aunt is worried about him
Then tell him to move his ass
You will then be able to kick him towards Zhu's Watch |goto Krasarang Wilds 76.7,7.7
kill Thunderbird##58111+
|tip You won't be able to move him if you're in combat.
Bring Yi-Mo to Zhu's Watch |q 30082/1
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto 75.8,7.6
accept Tears of Pandaria##30091 |goto 75.8,7.6
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto 76.2,7.1
step
kill 12 Weeping Horror##57649 |q 30091/1 |goto 75.7,10.2
collect 4 Salty Core##78880+ |q 30081/1 |goto 75.7,10.2
click Slick Mudfish
collect 4 Slick Mudfish##78877+ |q 30081/2 |goto 75.7,10.2
You can find more _Weeping Horrors_ and _Slick Mudfish_ around |goto 72.0,11.1
step
click Rain-Slick Honeycomb
|tip Bright, glowing orange honeycombs in trees around this area
collect 4 Chunk of Honeycomb##78881+ |q 30081/3 |goto 72.7,8.5
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto 76.2,7.1
accept Why So Serious?##30088 |goto 76.2,7.1
step
talk Mei Barrelbottom##57744
turnin Tears of Pandaria##30091 |goto 75.8,7.6
accept Securing the Province##30083 |goto 75.8,7.6
accept Borderlands##30084 |goto 75.8,7.6
stickystart "windscalesaurok"
step
Enter the Cliffs of Despair |goto 70.5,9.5 < 5 |walk
Follow the path on the right to the back of the cave
click Jar of Pigment##11122
collect Jar of Pigment |q 30088/2 |goto Valley of the Four Winds 73.9,56.4
step "windscalesaurok"
kill Wildscale Saurok##58215+, Wildscale Herbalist##58216+
Kill 10 Wildscale Saurok |q 30083/1 |goto 75.7,56.7
Leave the cave here |goto 76.9,57.2 < 5 |walk
stickystart "hugepantherfang"
step
Use your Flame of Zhu's Bastion here. |use Flame of Zhu's Bastion##78928
Light the Memorial Flame of Rin |q 30084/3 |goto Krasarang Wilds 71.3,17.5
step
Use your Flame of Zhu's Bastion here. |use Flame of Zhu's Bastion##78928
Light the Memorial Flame of Zhu |q 30084/1 |goto 72.7,18.1
step
Use your Flame of Zhu's Bastion here. |use Flame of Zhu's Bastion##78928
Light the Memorial Flame of Po |q 30084/2 |goto Krasarang Wilds 73.9,16.8
step "hugepantherfang"
kill Krasari Stalker##58221
collect 18 Huge Panther Fang##78941+ |q 30088/1 |goto 72.9,16.2
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto 76.2,7.1
accept Apply Directly to the Forehead##30089 |goto 76.2,7.1
step
talk Mei Barrelbottom##57744
turnin Securing the Province##30083 |goto 75.8,7.6
turnin Borderlands##30084 |goto 75.8,7.6
step
talk Despondent Warden of Zhu##57457
Use Ken-Ken's mask on Despondent Wardens of Zhu |use Ken-Ken's Mask##79021
kill Manifestation of Despair##58312+
Cure 8 Despondent Wardens of Zhu |q 30089/1 |goto 76.3,8.9
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto 76.2,7.1
accept Zhu's Despair##30090 |goto 76.2,7.1
step
kill 8 Essence of Despair##58409+ |q 30090/1 |goto 76.5,8.8
step
talk Ken-Ken##56115
Tell him Let's do this!
talk Yi-Mo Longbrow##58410
Use Ken-Ken's Mask on Yi-Mo Longbrow. |use Ken-Ken's Mask##79057
Yi-Mo is at |goto Krasarang Wilds,76.5,8.8
kill Quintessence of Despair##58360
Cure Yi-Mo. |q 30090/2 |goto 76.2,7.1
step
After the dialogue finishes:
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto 76.2,7.1
step
talk Mei Barrelbottom##57744
accept Into the Wilds##30178 |goto 75.8,7.6
step
talk Daggle Bombstrider##58779
accept Crane Mastery##30352 |goto 67.6,25.7
accept Profit Mastery##30353 |goto 67.6,25.7
step
Click the Quest Discovered Box on the top right of the screen.
|tip You may have to move around the immediate area for the quest to appear
If it doesn't come up, try over here |goto Krasarang Wilds,66.7,29.6
accept The Arcanic Oubliette##30274 |goto Krasarang Wilds 67.6,27.62
step
talk Zhu's Watch Courier##59151
Take the supplies |q 30178/1 |goto 66.3,30.9
step
click Northwest Oubliette Shackle##327
Destroy the Northwest Oubliette Shackle |q 30274/2 |goto 66.7,31.6
step
talk Kang Bramblestaff##56114
turnin Kang Bramblestaff##29874 |goto 66.4,32.5
step
click Southwest Oubliette Shackle##327
Destroy the Southwest Oubliette Shackle |q 30274/3 |goto 66.8,33.5
step
click Northeast Oubliette Shackle##327
Destroy the Northeast Oubliette Shackle |q 30274/1 |goto 68.0,31.5
step
talk Tylen Moonfeather##59049
fpath The Incursion |goto 67.8,32.5
step
talk Lorekeeper Vaeldrin##58745
turnin The Arcanic Oubliette##30274 |goto 67.5,32.6
accept The Lost Dynasty##30344 |goto 67.5,32.6
step
talk Lyalia##58735
accept Blind Them!##30384 |goto 67.5,32.6
step
talk Kang Bramblestaff##56114
accept Squirmy Delight##30350 |goto 67.4,32.8
stickystart "Carphuntress"
stickystart "Krasarihuntress"
stickystart "Jungleskitterer"
step "Carphuntress"
kill 12 Carp Hunter##58116+ |q 30352/1 |goto 66.7,27.1
step "Krasarihuntress"
kill Krasari Huntress##58070+
|tip These are usually stealthed
collect 12 Vial of Tiger Blood##+|q 30353/1 |goto 66.7,27.1
You can find more around |goto 62.0,32.5
step "Jungleskitterer"
kill Jungle Skitterer##58067
collect 5 Intact Skitterer Glands##78911 |q 30350/1
You can find more at the lake here |goto 62.2,22.5
step
talk Daggle Bombstrider##58779
turnin Crane Mastery##30352 |goto 67.6,25.7
accept Crane Mastery: Needlebeak##31262 |goto 67.6,25.7
turnin Profit Mastery##30353 |goto 67.6,25.7
accept Profit Mastery: Chasheen##31260 |goto 67.6,25.7
step
kill Needlebeak##63796
collect The Needlebeak##85854 |q 31262/1 |goto 62.8,20.2
step
kill Chasheen##63767
collect Ancient Tiger's Blood##85774 |q 31260/1 |goto 61.8,32.3
step
talk Daggle Bombstrider##58779
turnin Crane Mastery: Needlebeak##31262 |goto 67.6,25.7
turnin Profit Mastery: Chasheen##31260 |goto 67.6,25.7
step
click Ancient Dynastic Tablet##7356
collect 6 Dynastic Tablet##79713+ |q 30344/1 |goto 68.0,22.4
step
kill Sunwalker Scout##58850 |q 30384/1 |goto 65.0,24.7
step
talk Kang Bramblestaff##56114
turnin Squirmy Delight##30350 |goto 67.4,32.8
step
talk Lyalia##58735
turnin Blind Them!##30384 |goto 67.5,32.6
step
talk Lorekeeper Vaeldrin##58745
turnin The Lost Dynasty##30344 |goto 67.5,32.6
accept Where are the Pools##30346 |goto 67.5,32.6
step
talk Lyalia##58735
accept Threat from Dojan##30349 |goto 67.5,32.6
step
talk Kang Bramblestaff##56114
accept Lotus Tea##30351 |goto 67.4,32.8
step
Follow the path up |goto 59.4,35.4 < 5 |only if walking
kill Dojani Dominator##58165
collect Dojani Orders##78917 |q 30346/1 |goto 55.5,34.5
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Where are the Pools##30346
accept The Pools of Youth##30347
stickystart "imperiallotus"
step
Follow the path here |goto 54.8,34.1 < 5 |q 30351 |future |only if walking
Cross the bridge |goto 54.6,33.0 < 5 |q 30351 |future |only if walking
talk Na Lek##55597
Attempt to free Na Lek from his prison
kill Sleeping Guardian##58419+
click Water of Youth##11049
collect The Water of Youth##78934 |q 30347/1 |goto 52.0,32.7
step "imperiallotus"
kill 4 Dojani Enforcer##65626 |q 30349/3 |goto 55.4,39.0
kill 6 Dojani Reclaimer##58117 |q 30349/2 |goto 55.4,39.0
kill 8 Dojani Surveyor##58068 |q 30349/1 |goto 55.4,39.0
click Imperial Lotus##7791
collect 20 Imperial Lotus Leaves |q 30351/1 |goto 55.4,39.0
step
talk Lyalia##58735
turnin Threat from Dojan##30349 |goto 67.4,32.7
step
talk Kang Bramblestaff##58814
turnin Lotus Tea##30351 |goto 67.4,32.6
step
talk Lorekeeper Vaeldrin##58745
turnin The Pools of Youth##30347 |goto 67.4,32.7
accept Immortality?##30348 |goto 67.4,32.7
step
Observe Lorekeeper Vaeldrin's Ritual |q 30348/1
step
talk Lorekeeper Vaeldrin##58745
turnin Immortality?##30348 |goto 67.4,32.7
step
talk Lyalia##58735
accept Going on the Offensive##30363 |goto 67.4,32.7
step
clicknpc Incursion Sentinel##59137
collect Sentinel Scout's Report##79332 |q 30363/1 |goto 43.9,43.4
step
talk Koro Mistwalker##59138
turnin Into the Wilds##30178 |goto 44.2,42.9
accept Unsafe Passage##30269 |goto 44.2,42.9
step
talk Koro Mistwalker##58978
Tell him you're ready
When Koro falls click him to help him up
Accompany Koro to Crane Wing Refuge |q 30269/1 |goto 44.2,42.9
step
talk Koro Mistwalker##59138
turnin Unsafe Passage##30269 |goto 40.6,33.7
accept Blinding the Riverblades##30270 |goto 40.6,33.7
accept Tread Lightly##30694 |goto 40.6,33.7
step
talk Anduin Wrynn##58609
accept The Murksweats##30268 |goto 40.5,34.7
stickystart "Riverbladepathstalker"
stickystart "Riverbladespiketrap"
step "Riverbladepathstalker"
kill 8 Riverblade Pathstalker##58858+ |q 30270/1 |goto 45.2,36.5
step "Riverbladespiketrap"
click Riverblade Spike Trap
Poke 10 traps |q 30694/1 |goto 45.2,36.5
|tip Don't get super close to these when you "poke" them; if you do you'll take damage when they explode and it won't count for the quest
You can find more Pathstalkers and traps at |goto Krasarang Wilds,41,41.1
step
kill Murkscale Striker##58631+
collect 6 Murkscale Head##79199+ |q 30268/1 |goto 39.8,37.0
step
talk Anduin Wrynn##58609
turnin The Murksweats##30268 |goto 40.5,34.7
step
talk Koro Mistwalker##59138
turnin Blinding the Riverblades##30270 |goto 40.6,33.7
turnin Tread Lightly##30694 |goto 40.6,33.7
accept Ahead on the Way##30695 |goto 40.6,33.7
accept Striking the Rain##30272 |goto 40.6,33.7
step
talk Anduin Wrynn##59189
accept Sha Can Awe##30271 |goto 40.5,34.7
step
kill Maw of Despair##59315
Cleanse the West Pagoda |q 30695/1 |goto 37.9,54.3
step
kill Maw of Despair##59315
Cleanse the East Pagoda |q 30695/2 |goto 43.1,54.2
step
kill 18 Haunt of Despair##59236+ |q 30272/1 |goto 40.5,47.1
Kill Haunts of Despair in front of Hopeless Monks and Hopeless Acolytes
Inspire 10 Hopeless Crane Wing Defenders |q 30271/1 |goto 40.5,47.1
step
Next to you
talk Anduin Wrynn##59608
turnin Ahead on the Way##30695
turnin Striking the Rain##30272
turnin Sha Can Awe##30271
accept In the House of the Red Crane##30273
step
Enter the building |goto 40.4,52.1 < 5 |walk
Go downstairs |goto 40.4,55.8 < 5 |indoors Temple of the Red Crane |walk
talk Chi-Ji##59653 |indoors Temple of the Red Crane
Reach out and touch Chi-Ji |indoors Temple of the Red Crane
Kill adds that spawn, as they will heal you upon death. They have around 21k health each. |indoors Temple of the Red Crane
kill Sha of Despair##59651 |q 30273/1 |goto 40.4,54.5 |indoors Temple of the Red Crane
|modelnpc 59687
step
Leave the building |goto 40.4,55.8 < 5 |walk
talk Chi-Ji##59719
turnin In the House of the Red Crane##30273 |goto 40.4,49.3
step
talk Nan-Po##60441
fpath Marista |goto Krasarang Wilds 52.4,76.6
step
talk Tony Tuna##60182
accept Particular Plumage##30667 |goto Krasarang Wilds 51.7,75.3
step
talk Jay Cloudfall##60173
accept Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.5,76.9
step
kill Crimson Lory##60198
collect 6 Crimson Tailfeather##80678+ |q 30667/2 |goto 46.4,68.6
kill Emerald Lory##60200+
collect 6 Emerald Tailfeather##80677+ |q 30667/1 |goto 46.4,68.6
kill Dusky Lory##60196+
collect 6 Dusky Tailfeather##80679+ |q 30667/3 |goto 46.4,68.6
kill Mortbreath Skulker##60202+, Mortbreath Snapper##60201+
Kill 8 Mortbreath crocolisk |q 30666/1 |goto 46.4,68.6
step
talk Tony Tuna##60182
turnin Particular Plumage##30667 |goto 51.7,75.3
step
talk Jay Cloudfall##60173
turnin Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.5,76.9
accept Build Your Own Raft##30668 |goto 51.5,76.9
stickystart "spareplank"
step
click Tough Kelp
collect Tough Kelp##80804 |q 30668/2 |goto 52.3,77.9
step "spareplank"
click Spare Plank
collect 4 Spare Plank##80685+ |q 30668/1 |goto 52.4,76.2
step
talk Jay Cloudfall##60173
turnin Build Your Own Raft##30668 |goto 51.5,76.9
accept The Lorewalker on the Lake##30669 |goto 51.5,76.9
step
click Your Raft##11496
Pick up your raft |q 30669/1 |goto 51.7,76.6
step
talk Wise Ana Wu##60139
turnin The Lorewalker on the Lake##30669 |goto 46.0,78.9
accept Wisdom Has A Price##30671 |goto 46.0,78.9
accept Misery##30691 |goto 46.0,78.9
step
Go underwater and enter the cave |goto 46.0,79.9 < 5 |walk
kill Nahassa##60203
|tip Nahassa will use an ability called _Feverish Deathbite_ that will cause you to hallucinate that more crocolisks have spawned, they aren't really there so don't panic.
Put Nahassa out of his misery |q 30691/1 |goto 46.2,83.5 |indoors Mortbreath Grotto
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Misery##30691
step
Exit the cave |goto 46.0,79.9 < 5 |walk
kill Great Grey Shark##60204+, Nayeli Hammerhead##60432+
collect 5 Shark Fillet##80810+ |q 30671/1 |goto 46.0,79.0
step
talk Wise Ana Wu##60139
turnin Wisdom Has A Price##30671 |goto 46.0,78.9
accept Balance##30672 |goto 46.0,78.9
step
kill Unga Fish-Getter##60299+, Unga Treasure-Hider##60357+
collect 1 Confusing Treasure Map##80827 |n
Click the Confusing Treasure Map in your bags |use Confusing Treasure Map##80827
accept Buried Hozen Treasure##30675 |goto 47.3,88.4
step
Run over one of the piles of fish along the beach.
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Balance Without Violence##30674
step
clicknpc Flailing Carp##60367 |goto 51.7,85.0
|tip You can find these all along the beach
Throw 6 Flailing Carp back into the water |q 30674/1 |goto 51.7,85.0
kill 10 Unga Fish-Getter##60299+ |q 30672/1 |goto 51.7,85.0
|tip A lot of these are found along the shore and out walking around in the shallow water
click Lump of Sand
collect Buried Hozen Treasure##80817 |q 30675/1
There are more at |goto 43.5,87.4
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Balance Without Violence##30674
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Buried Hozen Treasure##30675
step
talk Jay Cloudfall##60173
turnin Balance##30672 |goto 51.5,76.8
step
talk Tired Shushen##58278
accept Thieving Raiders##30168 |goto 29.7,39.0
accept Raid Leader Slovan##30169 |goto 29.7,39.0
stickystart "Slovan"
stickystart "Jinyuloot"
step "Slovan"
kill Slovan##58285 |q 30169/1 |goto Krasarang Wilds 31.8,28.9
|tip At the bottom of the cliff underneath the waterfall.
step "Jinyuloot"
kill Riverblade Flesh-hunter##58274
collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto Krasarang Wilds 31.8,28.9
step
talk Tired Shushen##58278
turnin Thieving Raiders##30168 |goto 29.7,39.1
turnin Raid Leader Slovan##30169 |goto 29.7,39.1
step
talk Maylen Moonfeather##59048
fpath Sentinel Basecamp |goto 25.2,33.5
step
talk Lyalia##58821
turnin Going on the Offensive##30363 |goto 24.7,34.0
accept No Sister Left Behind##30354 |goto 24.7,34.0
accept Sever Their Supply Line##30356 |goto 24.7,34.0
step
talk Kang Bramblestaff##56114
accept Re-Reclaim##30355 |goto 25.2,34.5
stickystart "Korjanreclaimer"
stickystart "Moduartifact"
stickystart "Captivesentinel"
step "Korjanreclaimer"
kill 8 Korjan Reclaimer##58614 |q 30356/1 |goto 23.2,45.1
step "Moduartifact"
click Mogu Artifact##11244
collect 10 Mogu Artifact##79120+ |q 30355/1 |goto 23.2,45.1
step "Captivesentinel"
clicknpc Captive Sentinel##58639
Free 8 Captives |q 30354/1
You can find more of all of these |goto Krasarang Wilds,25.1,38.4
step
talk Kang Bramblestaff##56114
turnin Re-Reclaim##30355 |goto 25.2,34.5
step
talk Lyalia##58821
turnin No Sister Left Behind##30354 |goto 24.7,34.0
turnin Sever Their Supply Line##30356 |goto 24.7,34.0
step
talk Ambassador Han##58630
accept The Mantid##30361 |goto 24.9,34.3
step
talk Lorekeeper Vaeldrin##58745
accept The Stoneplow Convoy##30357 |goto 15.1,39.4
stickystart "Stoneplowenvoy"
stickystart "Ikthinkmantid"
step "Stoneplowenvoy"
clicknpc Stoneplow Envoy##58955
|tip These are Pandaren laying on the ground around this area
Save 7 Stoneplow Envoy |q 30357/1 |goto 15.3,35.3
step "Ikthinkmantid"
kill Ik'thik Precursor##58367+, Ik'thik Vanguard##58368+
Kill 10 Ik'thik Mantid |q 30361/1 |goto 15.3,35.3
step
talk Lorekeeper Vaeldrin##58745
turnin The Stoneplow Convoy##30357 |goto 15.1,39.4
step
talk Ambassador Len##58954
turnin The Mantid##30361 |goto 15.7,39.7
step
talk Lorekeeper Vaeldrin##58745
accept The Lord Reclaimer##30359 |goto 15.1,39.4
step
talk Lyalia##58976
Try to untie Lyalia.
kill Groundbreaker Brojai##58224 |q 30359/1 |goto 23.6,48.8
|tip He will summon adds one at a time. They aren't too difficult to kill.
step
talk Lorekeeper Vaeldrin##58745
turnin The Lord Reclaimer##30359 |goto 24.7,34.0
accept The Waters of Youth##30445 |goto 24.7,34.0
step
Observe Vaeldrin's ritual |q 30445/1
step
talk Lyalia##58821
turnin The Waters of Youth##30445 |goto 24.7,34.0
accept Warn Stoneplow##30360 |goto 24.7,34.0
step
talk Loon Mai##56720
turnin Warn Stoneplow##30360 |goto Valley of the Four Winds 19.5,56.8
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto 20.2,58.5
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto 19.5,56.8
step
talk Loon Mai##56720
accept The Swarm Begins##30622 |goto 17.9,56.2
step
talk Mei Barrelbottom##59855
accept The Mantidote##30623 |goto 17.9,56.4
step
talk Mudmug##56474
accept It Does You No Good In The Keg##30624 |goto 18.2,55.8
step
talk Nan the Mason Mug##62878
home Stone Mug Tavern |q 30624 |future |goto 19.7,55.9
stickystart "kenkenmask"
step
Deliver beer to Zhu's Wardens |q 30624/1 |goto 17.4,50.4
step
Deliver beer to night elf settlers |q 30624/4 |goto 15.1,50.6
step
Deliver beer to Crane Wing Priests |q 30624/2 |goto Valley of the Four Winds 15.3,54.9
step
goal Deliver beer to Shado-Pan |q 30624/3 |goto 10.7,55.4
step "kenkenmask"
Use Ken-Ken's Mask on 5 Ik'thik Wing Commanders |q 30623/1 |goto 10.2,53.6 |use Ken-Ken's Mask##80337
kill 15 Ik'thallik Infestors or Warriors |q 30622/1 |goto 10.2,53.6
You can find more at |goto Valley of the Four Winds,14.4,55
|modelnpc 56723
|modelnpc 56722
|modelnpc 56721
step
Click the Quest complete box located at the top right of your screen.
turnin It Does You No Good In The Keg##30624
turnin The Mantidote##30623
step
talk Guard Captain Oakenshield##57198
turnin The Swarm Begins##30622 |goto 11.6,49.5
accept Students No More##30625 |goto 11.6,49.5
stickystart "2nd coord"
stickystart "3rd coord"
stickystart "4th coord"
step
The students may already be in the battlefield when you accept this quest.
Search at each of the locations if they aren't at the start and if they aren't at any, wait at the very first coordinate.
|tip When you find them just follow them as you kill the Ik'thik mobs
kill Ik'thik Bloodrager |q 30625/1 |goto 9.1,54.1
step
label "2nd coord"
Second coordinate |goto 9.0,51.3
kill Ik'thik Incubator |q 30625/2 |goto 9.0,51.3
step
label "3rd coord"
Third coordinate |goto 9.4,54.0
kill Ik'thik Tendon-Slicer |q 30625/3 |goto 9.4,54.0
step
label "4th coord"
Fourth coordinate |goto 9.5,58.1
kill Ik'thik Fearmonger |q 30625/4 |goto 9.5,58.1
step
talk Guard Captain Oakenshield##57198
turnin Students No More##30625 |goto 11.6,49.5
accept Retreat!##30626 |goto 11.6,49.5
step
talk Loon Mai##56720
turnin Retreat!##30626 |goto 17.8,56.2
step
talk Master Bruised Paw##59856
accept The Savior of Stoneplow##30627 |goto 17.9,55.7
step
talk Miss Fanny##59857 |goto 18.0,56.7
Tell her "Let's go". |invehicle
confirm
step
Use the abilities on your hotbar to defeat the Mantid Collossus.
|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange.
kill Mantid Colossus##56703 |q 30627/1
step
talk Loon Mai##56720
turnin The Savior of Stoneplow##30627 |goto 18.0,56.3
accept The Gratitude of Stoneplow##30628 |goto 18.0,56.3
step
click The Commander's Cache##10315
|tip Upstairs in the inn.
turnin The Gratitude of Stoneplow##30628 |goto 19.8,55.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Kun-Lai Summit (87-88)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\KunLai",
next="Zygor's Leveling Guides\\Pandaria (85-90)\\Townlong Steppes (88-89)",
startlevel=87.8,
},[[
step
talk Messenger Grummle##63778
accept The Road to Kun-Lai##31254 |goto Valley of the Four Winds 18.5,56.5
Grummle may also be found here |goto 70.0,23.6
Grummle may also be found here |goto 55.3,50.1
step
talk Highroad Grummle##62738
Speak with the Highroad Grummle |q 31254/1 |goto Valley of the Four Winds 70.1,23.5
|only if havequest(31254)
step
talk Shin the Weightless##61759
fpath Tavern in the Mists |goto The Veiled Stair 56.7,75.7
step
talk Len the Whisperer##63484
accept Robbing Robbers of Robbers##31286 |goto The Veiled Stair 53.5,65.7
accept Educating Saurok##31287 |goto The Veiled Stair 53.5,65.7
step
Enter the cave |goto The Veiled Stair 55.5,55.8 < 5 |walk
kill Leechfingers##63494 |q 31287/1 |goto 51.1,43.4 |indoors Hatescale Burrow
step "blackmarketmerch"
Before you leave this cave make sure you get 7 Black Market Merchandise |indoors Hatescale Burrow
click Smuggled Brewfather Statue##12103
click Cursed Hozen Totem##11436
click Smuggled Cannon##11244
click Priceless Mogu Artifact##12105
click Evil Monkey Idol##11304
collect 7 Black Market Merchandise##85891+ |q 31286/1 |indoors Hatescale Burrow
step
Exit the cave |goto 55.2,55.3 < 5 |walk |indoors Hatescale Burrow
talk Len the Whisperer##63484
turnin Robbing Robbers of Robbers##31286 |goto 53.5,65.7
turnin Educating Saurok##31287 |goto 53.5,65.7
step
talk Brewmaster Boof##63367
accept The Spring Drifter##31285 |goto 51.9,43.8
Speak with Brewmaster Boof |q 31254/2 |goto 51.9,43.8
step
clicknpc The Spring Drifter##63517
Survive a ride on the Spring Drifter |q 31285/1 |goto 52.1,43.3
step
talk Brewmaster Boof##63367
turnin The Spring Drifter##31285 |goto Kun-Lai Summit 72.7,93.0
step
talk Jo the Wind Watcher##61474
fpath Binan Village |goto 72.5,94.2
step
talk Mayor Bramblestaff##59073
turnin The Road to Kun-Lai##31254 |goto 72.3,91.9
accept Call Out Their Leader##30457 |goto 72.3,91.9
step
talk Puli the Even Handed##62871
home Binan Brew & Stew |q 30460 |future |goto 72.7,92.3
step
talk Apothecary Cheng##59077
accept Hit Medicine##30460 |goto 71.6,92.9
step
talk Commander Hsieh##59076
accept All of the Arrows##30459 |goto 70.7,90.4
step
kill Bataari Yaungol##59147+, Bataari Flamecaller##59021+
Kill 10 Bataari Tribe Members |q 30457/1 |goto 69.2,88.9
kill Bataari Fire-Warrior##59083 |q 30457/2 |goto 69.2,88.9
click Arrow of Commander Hsieh##8572
collect 12 Arrow of Commander Hsieh##79806 |q 30459/1 |goto 69.2,88.9
Use Dit Da Jow on Injured Binan Warriors |use Dit Da Jow##79819
Heal 8 Injured Binan Warrior |q 30460/1
step
talk Commander Hsieh##59076
turnin All of the Arrows##30459 |goto 70.7,90.4
step
talk Mayor Bramblestaff##59073
turnin Call Out Their Leader##30457 |goto 72.3,91.9
step
talk Apothecary Cheng##59077
turnin Hit Medicine##30460 |goto 71.6,92.9
accept Admiral Taylor has Awakened##30508 |goto 71.6,92.9
step
talk Admiral Taylor##59441
|tip He is upstairs in this building
turnin Admiral Taylor has Awakened##30508 |goto 71.5,93.1
accept Westwind Rest##30512 |goto 71.5,93.1
step
talk Merchant Shi##59263
accept Reposesssion##30469 |goto 75.0,88.9
accept My Son...##30467 |goto 75.0,88.9
step
talk Swordmistress Mei##59273
accept Enraged Vengeance##30468 |goto 74.8,88.7
step
talk Waterspeaker Gorai##60973
accept The Waterspeaker's Staff##30496 |goto 75.1,88.0
accept Free the Dissenters##30967 |goto 75.1,88.0
step
talk Wu-Peng##59272
turnin My Son...##30467 |goto Kun-Lai Summit 74.7,76.9
accept Father and Child Reunion##30834 |goto Kun-Lai Summit 74.7,76.9
stickystart "Inkgillritual"
stickystart "Enragedjinyu"
stickystart "Inkgill"
stickystart "Untaintedsupplies"
step "Inkgillritual"
kill Orachi##59180
collect 1 Stolen Inkgill Ritual Staff##81385 |q 30496/1 |goto 74.4,78.3
step "Enragedjinyu"
kill Enraged Priest##59166+, Enraged Inkgill Blacksmith##61130+, Enraged Enforcer##60995+, Enraged Tideweaver##59181+, Enraged Spearman##59165+, Enraged Cavalier##61537+
Kill 15 Enraged Jinyu |q 30468/1 |goto 74.4,78.3
step "Inkgill"
talk Inkgill Dissenter##61566
Tell them there is still hope
6 Inkgill Dissenters Escaped |q 30967/1
step "Untaintedsupplies"
click Untainted Supplies
collect 8 Stolen Supplies##79880 |q 30469/1
step
talk Waterspeaker Gorai##60973
turnin The Waterspeaker's Staff##30496 |goto 75.2,88.3
turnin Free the Dissenters##30967 |goto 75.2,88.3
step
Reunite Wu-Peng and Merchant Shi by standing here. |q 30834/1 |goto 75.0,88.9
step
talk Merchant Shi##59263
turnin Father and Child Reunion##30834 |goto 75.0,88.9
turnin Reposesssion##30469 |goto 75.0,88.9
step
talk Swordmistress Mei##59273
turnin Enraged Vengeance##30468 |goto 74.8,88.7
step
talk Waterspeaker Gorai##60973
accept The Ritual##30480 |goto 75.2,88.3
step
talk Waterspeaker Gorai##60973
Tell him to begin the ritual |q 30480/1 |goto 75.2,88.3
Follow Waterspeaker Gorai
Lay Dead Inkgill to Rest |q 30480/2 |goto 75.2,88.3
kill Explosive Hatred##61530
Ritual Complete |q 30480/3 |goto 75.2,88.3
step
talk Waterspeaker Gorai##60973
turnin The Ritual##30480 |goto 74.9,88.6
accept Cleansing the Mere##30828 |goto 74.9,88.6
step
clicknpc Pool of Corruption##61500
|tip They look like dark purple, swirling sources of light on top of the water in this area
kill Boiling Rage##59170+
Cleanse 6 Pools of Corruption |q 30828/1 |goto 72.0,85.6
step
Next to you
talk Waterspeaker Gorai##61065
turnin Cleansing the Mere##30828
accept The Fall of Shai Hu##30855
step
This can get a little intense because you will lose 5% of your health every 5 seconds.
kill Shai Hu##61069 |q 30855/1 |goto 71.3,82.5
|tip In order to kill Shai Hu you must bring Explosive Hatred from around the area into the bubble he has around him, kill them and when they die they will explode and take some of his health.
step
talk Waterspeaker Gorai##60973
turnin The Fall of Shai Hu##30855 |goto 74.9,88.6
step
talk Farmhand Bo##63754
accept Temple of the White Tiger##31392 |goto 58.9,80.5
Speak with Farmhand Bo |q 30512/1 |goto 58.9,80.5
step
talk Elder Tsulan##63542
Speak with Elder Tsulan |q 30512/2 |goto 56.4,84.4
step
talk Elder Tsulan##63542
turnin Westwind Rest##30512 |goto 56.4,84.4
accept Challenge Accepted##30514 |goto 56.4,84.4
step
click Yaungol Banner##11307
kill Ur-Bataar##59483 |q 30514/1 |goto 58.3,84.1
step
talk Elder Tsulan##63542
turnin Challenge Accepted##30514 |goto 54.6,84.2
step
talk Farmhand Bo##63754
accept Trouble on the Farmstead##30569 |goto 53.8,84.1
step
talk Tabo the Flyer##61744
fpath Westwind Rest |goto 54.0,84.3
step
talk Elder Tsulan##63542
accept Mogu?! Oh No-gu!##30619 |goto 54.2,83.4
step
talk Sully 'The Pickle' McLeary##59450
accept Blue Dwarf Needs Food Badly##30583 |goto 54.2,83.3
step
talk Kai the Restless##62882
home Westwind Rest |q 30575 |future |goto 54.1,82.9
step
talk Admiral Taylor##59441
accept Round 'Em Up##30575 |goto 53.8,82.7
step
talk Mishka##59451
accept Deanimate the Reanimated##30593 |goto 53.7,83.3
step
clicknpc Wild Plains Yak##59610
|tip Get 3 of these before going back to town
kill Highlands Mushan##59670+, Highlands Calf##59671+, Summit Bonestripper##59672+, Northwind Hawk##59700+, Razorquill Porcupine##65839+
collect 160 Kun-Lai Meaty Bits##80245 |q 30583/1 |goto 52.3,84.2
step
talk Sully 'The Pickle' McLeary##59450
turnin Blue Dwarf Needs Food Badly##30583 |goto 54.2,83.3
step
Round up 3 Yaks |q 30575/1
step
talk Admiral Taylor##59441
turnin Round 'Em Up##30575 |goto 53.8,82.7
step
talk Farmer Chow##59573
turnin Trouble on the Farmstead##30569 |goto 60.2,85.8
accept Farmhand Freedom##30571 |goto 60.2,85.8
step
talk Uyen Chow##59636
accept ... and the Pot, Too!##30581 |goto 60.2,85.9
stickystart "Ordooverseer"
stickystart "Wascallywirmen"
step "Ordooverseer"
kill Ordo Overseer##59580
Free 12 Farmstead Slaves |q 30571/1 |goto 58.6,89.5
step "Wascallywirmen"
kill Wascally Wirmen##59655
click Root Vegetable
collect 12 Root Vegetable##80227 |q 30581/1 |goto 58.6,89.5
step
click Cast Iron Pot
collect Cast Iron Pot |q 30581/2 |goto 60.0,88.4
|tip It is inside of this small building
step
talk Uyen Chow##59636
turnin ... and the Pot, Too!##30581 |goto 60.2,85.9
step
talk Farmer Chow##59573
turnin Farmhand Freedom##30571 |goto 60.2,85.8
accept Back to Westwind Rest##31252 |goto 60.2,85.8
step
talk Bao Jian##59821
accept Profiting off of the Past##30595 |goto 59.6,78.2
stickystart "mogurelic"
step
kill Mogujia Soul-Caller##59797 |q 30619/1 |goto 58.1,70.9
step "mogurelic"
kill Terracotta Guardian##59773+, Terracotta Warrior##59758+
Kill 14 Terracotta Guardians or Warriors |q 30593/1 |goto 58.8,74.3
click Mogu Relic##11371
collect 12 Mogu Relic##80294+ |q 30595/1 |goto 58.8,74.3
|model 11369
|model 11370
step
talk Farmhand Bo##63754
turnin Back to Westwind Rest##31252 |goto 53.8,84.1
step
talk Mishka##59451
turnin Deanimate the Reanimated##30593 |goto 53.7,83.3
step
talk Elder Tsulan##63542
turnin Mogu?! Oh No-gu!##30619 |goto 54.2,83.4
accept Pandaren Prisoners##30650 |goto 54.2,83.4
step
talk Sully 'The Pickle' McLeary##59450
accept Barrels of Fun##30651 |goto 54.2,83.3
step
talk Admiral Taylor##59441
accept In Tents Channeling##30652 |goto 53.8,82.7
stickystart "rescueprisoners"
step
While in this area, look for Pandaren Prisoners to set free
|modelnpc Pandaren Prisoner##60038
clicknpc Explosives Barrel##60095
collect 1 Explosives Barrel##80528 |q 30651 |goto 51.2,79.3
step
Use your Explosives Barrel |use Explosives Barrel##80528
Eastern Oil Rig Destroyed |q 30651/1 |goto 51.0,79.5
step
clicknpc Explosives Barrel##60095
collect 1 Explosives Barrel##80528 |q 30651 |goto 51.2,79.3
step
kill Musaan the Blazecaster##59969 |q 30652/1 |goto 50.6,78.5
step
kill Harala the Firespeaker##60030 |q 30652/3 |goto 49.3,78.4
step
Use your Explosives Barrel |use Explosives Barrel##80528
Southern Oil Rig Destroyed |q 30651/2 |goto 49.7,81.3
step
clicknpc Explosives Barrel##60095
collect 1 Explosives Barrel##80528 |q 30651 |goto 49.3,81.1
step
kill Pao-kun the Pyromancer##60031 |q 30652/4 |goto 49.1,80.2
step
kill Akonu the Embercaller##60032 |q 30652/2 |goto 47.7,79.9
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin In Tents Channeling##30652
accept The Ordo Warbringer##30660
step
Use your Explosives Barrel |use Explosives Barrel##80528
Western Oil Rig Destroyed |q 30651/3 |goto 47.8,81.4
step
Enter this small cave here |goto 49,77 < 5
kill Ordo Warbringer##60127 |q 30660/1 |goto 48.4,76.7
|tip When he becomes invulnerable kill the adds he spawns to break his shield.
step "rescueprisoners"
clicknpc Pandaren Prisoner##60038
Rescue 8 Pandaren Prisoners |q 30650/1 |goto 49.8,78.6
step
talk Sully 'The Pickle' McLeary##59450
turnin Barrels of Fun##30651 |goto 54.2,83.3
step
talk Admiral Taylor##59441
turnin Pandaren Prisoners##30650 |goto 54.0,83.4
turnin The Ordo Warbringer##30660 |goto 54.0,83.4
accept The Shado-Pan##31455 |goto 54.0,83.4
step
talk Mishka##59451
accept Cho's Missive##31460 |goto 53.7,83.3
step
talk Farmhand Bo##63754
accept Muskpaw Ranch##31456 |goto 53.8,84.1
step
talk Bao Jian##59821
turnin Profiting off of the Past##30595 |goto 59.6,78.3
step
talk Lao Muskpaw##59353
|tip He patrols around these two buildings
turnin Muskpaw Ranch##31456 |goto 71.1,69.2
accept The Missing Muskpaw##30488 |goto 71.1,69.2
accept Fresh Needle Scent##30489 |goto 71.1,69.2
stickystart "Needle Sprite"
step
Head to the back of the cave, killing Sprites as you go
Kill the Needle Sprites attacking Muskpaw Jr.
talk Muskpaw Jr.##61693
turnin The Missing Muskpaw##30488 |goto Kun-Lai Summit/9 64.6,60
accept At the Yak Wash##30491 |goto Kun-Lai Summit/9 64.6,60
step
label "Needle Sprite"
kill Needle Sprite##55593
collect 100 Pungent Sprite Needles |q 30489/1
step
clicknpc Tuffi##61874 |invehicle |goto 66.0,59.3
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Yakity Yak##30587 |goto Kun-Lai Summit 70.0,72.8
step
kill 9 Burilgi Despoiler##59335 |q 30587/1 |goto 69.9,73.4
collect 1 Muskpaw's Keepsake##80241 |n
Click the Muskpaw's Keepsake in your bags |use Muskpaw's Keepsake##80241
accept The Late Mrs. Muskpaw##30582
More Despoilers can be found at |goto Kun-Lai Summit,66.7,72.4
step
clicknpc Escaped Yak##59319 |invehicle
While on the Yak, run to this spot |goto 71.3,69.2
Wash 6 Escaped Yak |q 30491/1 |goto 71.3,72.9
step
talk Muskpaw Jr.##59354
turnin At the Yak Wash##30491 |goto 71.4,69.3
step
|tip He patrols around these two buildings
talk Lao Muskpaw##59353
turnin Fresh Needle Scent##30489 |goto 71.2,69.3
turnin Yakity Yak##30587 |goto 71.2,69.3
turnin The Late Mrs. Muskpaw##30582 |goto 71.2,69.3
accept The Fearmaster##30804 |goto 71.2,69.3
step
talk Muskpaw Jr.##59354
accept Back in Yak##30492 |goto 71.4,69.3
step
kill The Fearmaster##59656 |q 30804/1 |goto 67.8,74.1
step
talk Lao Muskpaw##59353
turnin The Fearmaster##30804 |goto 71.0,69.1
step
Bring the Yak Herd to Lucky Eightcoins |q 30492/1 |goto 64.8,61.6
step
talk Lucky Eightcoins##59371
turnin Back in Yak##30492 |goto 64.7,61.8
accept A Grummle's Luck##30808 |goto 64.7,61.8
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto 65.5,60.8
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.9,60.5
step
click Yaungol Oil Derrick##11333
collect Filled Oil Vial##80311 |q 30614/1 |goto 63.4,68.5
step "getstolenluckydoo"
kill Ruqin Elder##59826+, Ruqin Infantry##59790+, Ruqin Outrider##59538+
Kill 8 Ruqin Yaungols |q 30616/1 |goto 62.2,68.8
click Stolen Bag of Luckydos##11352
|tip They look like small brown bags on the ground and in huts around this area
collect 8 Stolen Luckydos##81293 |q 30808/1 |goto 62.2,68.8
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto 64.7,61.8
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto 65.5,60.8
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto 64.9,60.5
accept Roadside Assistance##30617 |goto 64.9,60.5
step
All along this road
click Lucky Burlap Incense
Light 8 Lucky Burlap Incense |q 30617/1 |goto 60.2,65.7
|tip They look like thin, light pink sticks stuck in the ground along the road
|tip You can light them while mounted
step
WARNING! Do not accept _The Burlap Trail: To Burlap Waystation_ yet.
talk Brother Lintpocket##59701
turnin Roadside Assistance##30617 |goto 58.1,61.5
step
talk Little Cleankite##61504
fpath One Keg |goto 57.7,59.7
step
talk Lorewalker Cho##61847
turnin Cho's Missive##31460 |goto 57.3,61.7
accept Path Less Traveled##30999 |goto 57.3,61.7
step
talk Uncle Cloverleaf##59696
turnin Path Less Traveled##30999 |goto 57.2,61.2
accept Instant Courage##30601 |goto 57.2,61.2
step
talk Big Sal##59695
accept Resupplying Onekeg##30618 |goto 57.7,61.8
step
talk Ji-Lu the Lucky##59716
accept They Stole My Luck!##30621 |goto 57.3,60.2
step
talk Chiyo Mistpaw##59688
home The Lucky Traveller |q 30621 |future |goto 57.4,60.0
stickystart "Luckyyakshoe"
stickystart "Hidingguides"
stickystart "Stolensupplies"
step "Luckyyakshoe"
Follow this path |goto 58.5,57.7 < 5 |walk
While you are in this cave do the following:
kill Mischievous Snow Sprite##59693
collect Lucky Virmen's Foot##80316 |q 30621/1 |goto Kun-Lai Summit/8 48.8,57.8
collect Lucky Four Winds Clover##90318 |q 30621/3 |goto Kun-Lai Summit/8 48.8,57.8
collect Lucky "Gold" Coin##80319 |q 30621/4 |goto Kun-Lai Summit/8 48.8,57.8
collect Lucky Yak Shoe##80317 |q 30621/2 |goto Kun-Lai Summit/8 48.8,57.8
step "Hidingguides"
talk Hiding Guide##59818
Inspire 3 Hiding Guides |q 30601/1
step "Stolensupplies"
click Stolen Supplies##11037
collect 12 Stolen Supplies##80315 |q 30618/1
step
talk Ji-Lu the Lucky##59716
turnin They Stole My Luck!##30621 |goto Kun-Lai Summit 57.3,60.2
step
talk Uncle Cloverleaf##59696
turnin Instant Courage##30601 |goto 57.2,61.2
step
talk Big Sal##59695
turnin Resupplying Onekeg##30618 |goto 57.7,61.7
step
talk Uncle Cloverleaf##59696
accept Comin' Round the Mountain##30487 |goto 57.2,61.2
step
clicknpc Ji-Lu's Cart##60094 |q 30487/1 |goto 57.3,61.6
step
Use the abilities on your hotbar to fight off Silverback Attackers and the Rampaging Yeti
Survive the mountain pass |q 30487/2
|modelnpc Silverback Attacker##60138
|modelnpc Rampaging Yeti##59694
step
talk Lucky Bluestring##60175
turnin Comin' Round the Mountain##30487 |goto 48.1,49.0
accept One Traveler's Misfortune##30683 |goto 48.1,49.0
step
click Abandoned Wreckage
Search the Abandoned Wreckage for Supplies |q 30683/1 |goto 50.0,49.3
kill General Sho Lien##60769 |q 30683/2 |goto 50.0,49.3
step
talk Lucky Bluestring##60175
turnin One Traveler's Misfortune##30683 |goto 48.1,49.0
You will only be able to accept one of these quests
accept Seeker's Folly##30684 |or |goto 48.1,49.0
accept Seeker's Folly##31306 |or |goto 48.1,49.0
step
Follow the path up |goto 47,48.15 < 5 |walk
click Shrine of the Seeker's Body |q 30684/1 |goto 44.8,49.3
|tip Make sure you avoid the falling snow.
|only if havequest(30684)
step
click Shrine of the Seeker's Breath |q 30684/2 |goto 42.7,50.0
|tip Make sure you avoid the freezing winds, they look like tornados.
|only if havequest(30684)
step
click Shrine of the Seeker's Heart |q 30684/3 |goto 43.2,52.0
|only if havequest(30684)
step
click Shrine of the Seeker's Body |q 31306/1 |goto 44.8,49.3
|tip Make sure you avoid the falling snow.
|only if havequest(31306)
step
click Shrine of the Seeker's Breath |q 31306/2 |goto 42.7,50.0
|tip Make sure you avoid the freezing winds, they look like tornados.
|only if havequest(31306)
step
click Shrine of the Seeker's Heart |q 31306/3 |goto 43.2,52.0
|only if havequest(31306)
step
talk Lorewalker Cho##60795
turnin Seeker's Folly##30684 |or |goto 43.8,51.1
turnin Seeker's Folly##31306 |or |goto 43.8,51.1
accept The Tongue of Ba-Shon##30829 |goto 43.8,51.1
step
talk Lorewalker Cho##60795
Tell Cho to go ahead with the binding.
Defend Loremaster Cho while he does the binding.
|tip Kill Reclaimer Zuan and his pets will run away
kill Reclaimer Zuan##61305
Tongue of Ba-Shon Bound |q 30829/1 |goto 43.8,51.1
step
talk Lorewalker Cho##60795
turnin The Tongue of Ba-Shon##30829 |goto 43.8,51.1
accept Staying Connected##30795 |goto 43.8,51.1
step
talk Mishi##60796 |goto 43.7,51.3
Tell them you are ready to leave. |goto 57.9,49.0
confirm
step
When you land:
Use The Tongue of Ba-Shon |q 30795/1 |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Staying Connected##30795
accept An End to Everything##30796
step
click Curious Text##11596
accept It Was Almost Alive##30797 |goto 57.1,47.9
stickystart "tormentspirit"
step
click Curious Text##11596
|tip It's sitting on the altar
collect Torn Page##81892 |q 30797/1 |goto 57.1,47.9
step "tormentspirit"
kill 8 Tormented Spirits##60825 |q 30796/1 |goto 56.7,47.9
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin It Was Almost Alive##30797
accept The Tomb of Shadows##30799
turnin An End to Everything##30796
step
Enter the Tomb of Shadows |goto 55.9,46.1 < 5 |walk
click Shen Dynasty Tablet##7356 |indoors Tomb of Shadows
collect Shen Dynasty Rubbing##82393 |q 30799/1 |goto 57.2,43.5  |indoors Tomb of Shadows
step
click Qiang Dynasty Tablet##211794  |indoors Tomb of Shadows
collect Qiang Dynasty Rubbing##82394 |q 30799/3 |goto 57.1,45.0  |indoors Tomb of Shadows
step
click Wai Dynasty Tablet##6420  |indoors Tomb of Shadows
collect Wai Dynasty Rubbing##82395 |q 30799/2 |goto 56.3,43.4  |indoors Tomb of Shadows
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin The Tomb of Shadows##30799
accept Breaking the Emperor's Shield##30798
step
Follow the path up |goto 55.2,47.6 < 5 |only if walking
Enter the Tomb of Secrets |goto 53.3,49.3 < 5 |walk
kill Nakk'rakas##60572 |indoors Tomb of Secrets
|tip When he casts his shield kill the Imperial Guards until he in vulnerable again |indoors Tomb of Secrets
Interrupt the Spiritbinding Ritual |q 30798/1 |goto 52.9,51.5 |indoors Tomb of Secrets
|modelnpc Imperial Guard##60826
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Breaking the Emperor's Shield##30798
accept Stealing Their Thunder... King##30800
step
Enter the Tomb of Conquerors |goto 53.0,46.5 < 5 |walk
Follow the path down |indoors Tomb of Conquerors
click King's Coffer |indoors Tomb of Conquerors
collect Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1 |goto Kun-Lai Summit/17 58.9,72.6 |indoors Tomb of Conquerors
step
click Top Fragment of Lei Shen's Tablet |indoors Tomb of Conquerors
Repair the Tablet of Thunder |q 30800/2 |goto Kun-Lai Summit/17 34.1,62.4 |indoors Tomb of Conquerors
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Stealing Their Thunder... King##30800
accept Lessons from History##30801
step
click Tablet of Thunder |indoors Tomb of Conquerors
Read the Tablet of Thunder |q 30801/1 |goto Kun-Lai Summit/17 34.1,62.4 |indoors Tomb of Conquerors
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Lessons from History##30801
accept Chasing the Storm##30802
step
kill Zandalari Warrior##61842|indoors Tomb of Conquerors
collect Blood-Revealed Map##81890 |q 30802/1 |goto Kun-Lai Summit/17 52.1,70.0 |indoors Tomb of Conquerors
step
Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
talk Image of Lorewalker Cho##61297
turnin Chasing the Storm##30802
accept Fisherman's Tale##30935
step
talk Mishi##61382
Tell them you are ready to leave. |q 30935/1 |goto Kun-Lai Summit 53.0,46.4
step
Follow this road up |goto 66.9,58.3 < 5 |only if walking
talk Big Greenfeather##61118
fpath Temple of the White Tiger |goto 66.3,50.7
step
talk Anduin Wrynn##64540
turnin Temple of the White Tiger##31392 |goto 68.8,43.1
accept A Celestial Experience##31394|goto 68.8,43.1
step
talk Xuen##64528
Speak to Xuen |q 31394/1 |goto 68.9,42.8
step
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto 68.9,42.8
step
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto 68.9,42.8
step
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto 68.9,42.8
step
talk Anduin Wrynn##64540
turnin A Celestial Experience##31394 |goto 68.8,43.1
accept A Witness to History##31512 |goto 68.8,43.1
step
Enter the cave here. |goto 63.9,49.8 < 5 |walk
|tip The cave is down the mountain below you. You can either go back down the path, or risk jumping off the side of the mountain to get to him.
Exit the cave |indoors Path of Conquerors |goto 63.2,42.1 < 5 |walk
confirm
step
talk Shin Whispercloud##61380 |goto 63.3,40.2
Tell him you are ready to leave. |q 30935/2 |goto 63.3,40.2
step
talk Bo the Wind Claimer##61511
fpath Zouchin Village |goto 62.4,30.1
step
talk Lorewalker Cho##61371
turnin Fisherman's Tale##30935 |goto 62.3,29.1
accept It Takes A Village##30944 |goto 62.3,29.1
step
talk Liu Ze##60605
home North Wind Tavern |q 30816 |future |goto 62.5,28.8
step
talk Li Hai##60436
accept Checking In##30816 |goto 63.2,29.3
step
talk Elder Shu##61495
accept Handle With Care##30943 |goto 63.3,28.6
step
talk Shomi##61503
|tip She is standing underneath the building
accept Make A Fighter Out of Me##30942 |goto 63.7,30.7
step
talk Steelbender Doshu##61496
accept What's Yours Is Mine##30945 |goto 63.4,30.7
step
talk Exhausted Defender##61417
Relieve 5 Exhausted Defenders |q 30944/1 |goto 64.2,30.9
kill 4 Amani Skirmisher##629 |q 30942/1 |goto 64.2,30.9
stickystart "Skullbreaker"
stickystart "Frostweaver"
stickystart "Volatilebloom"
step "Skullbreaker"
kill Zandalari Skullbreaker##60580+, Amani Raptor-Handler##60581+, Amani Raptor-Handler##60581+
collect 8 Blood-Stained Blade##82299 |q 30945/1 |goto 71.0,27.2
You can find more mobs at |goto Kun-Lai Summit,68.4,28
step "Frostweaver"
kill 4 Gurubashi Hexxer##64202+ |q 30942/2 |goto 71.0,27.2
kill 3 Drakkari Frostweaver##66707+ |q 30942/3
You can find more mobs at |goto Kun-Lai Summit,68.4,28
step "Volatilebloom"
click Volatile Blooms##11754
collect 50 Handful of Volatile Blooms##82298 |q 30943/1
You can find more mobs at |goto Kun-Lai Summit,68.4,28
step
Next to you
talk Shomi##61534
turnin Make A Fighter Out of Me##30942
step
talk Steelbender Doshu##61496
turnin What's Yours Is Mine##30945 |goto 63.4,30.7
step
talk Elder Shu##61495
|tip He walks around the upper level of this house
turnin Handle With Care##30943 |goto 63.2,28.6
step
talk Lorewalker Cho##61371
turnin It Takes A Village##30944 |goto 62.3,29.1
accept Enemies At Our Door##31011 |goto 62.3,29.1
step
kill 10 Zandalari Berserker##62299+ |q 31011/1 |goto 63.5,30.0
clicknpc Blasting Barrel##62591
|tip The barrel will roll and kill the Behemoths.
kill 5 Zandalari Behemoth##63516+ |q 31011/2 |goto 63.5,30.0
The Blasting Barrels and Behemoths can be found here |goto 61.2,29.1
kill 3 Zandalari Bloodrider##62362+ |q 31011/3
The Zandalari Bloodriders can be found at |goto 64.4,29.0
step
talk Lorewalker Cho##63750
turnin Enemies At Our Door##31011 |goto 62.3,29.1
accept Revelations##30946 |goto 62.3,29.1
step
talk Zandalari Prisoner##62629
|tip He is upstairs
Ask him where the Thunder King's Remains have been taken.
Zandalari Prisoner Questioned |q 30946/1 |goto 62.4,28.9
step
talk Lorewalker Cho##63750
turnin Revelations##30946 |goto 62.3,29.1
accept Prophet Khar'zul##31228 |goto 62.3,29.1
step
talk Sage Liao##60694
turnin Checking In##30816 |goto 60.6,21.3
accept Emergency Care##30794 |goto 60.6,21.3
step
click Sage Liao's Belongings##259
|tip It's a small chest on a table
collect 1 Pandaren Healing Draught##81177 |q 30794 |future |goto 61.0,21.5
Use Pandaren Healing Draught on Sage Liao |use Pandaren Healing Draught##81177
Sage Liao Healed |q 30794/1 |goto 60.6,21.3
step
talk Sage Liao##60785
turnin Emergency Care##30794 |goto 60.6,21.3
accept Justice##30805 |goto 60.6,21.3
accept The Scent of Life##30806 |goto 60.6,21.3
accept By the Falls, For the Fallen##30807 |goto 60.6,21.3
step
click Waterfall-Polished Stone##11483
collect 3 Waterfall-Polished Stone##81269+ |q 30807/1 |goto 60.0,30.4
stickystart "bluecrabshell"
step
kill Captain Ripflesh##60767 |q 30805/1 |goto 62.0,23.3
step "bluecrabshell"
kill Blackmane Brigand##60560+, Blackmane Pillager##60846+, Blackmane Tracker##60434+
Kill 6 Blackmane Merceraries |q 30805/2 |goto 63.2,21.5
click South Sea Booty Barrel##9095
collect 8 Stolen Pandaren Spices##81261 |q 30806/2 |goto 63.2,21.5
kill Azure Prickly Crawler##60437+
collect Opalescent Blue Crab Shell##80907 |q 30806/1 |goto 63.2,21.5
More crabs can be found around |goto 60.5,22.5
step
talk Sage Liao##60785
turnin Justice##30805 |goto 60.6,21.3
turnin The Scent of Life##30806 |goto 60.6,21.3
turnin By the Falls, For the Fallen##30807 |goto 60.6,21.3
accept Preparing the Remains##30819 |goto 60.6,21.3
step
talk Li Hai##60436
turnin Preparing the Remains##30819 |goto 63.2,29.4
accept Honoring the Dead##30820 |goto 63.2,29.4
step
click Incense of Life##11492
Light the Incense of Life |q 30820/1 |goto 66.9,33.3
step
talk Sage Liao##60757
turnin A Funeral##30820 |goto 67.0,33.3
step
Talk to Mishi
Tell him you're ready to leave. |q 31228/1
step
kill Prophet Khar'zul##61541 |q 31228/2 |goto 76.4,9.0
|tip Stay on top of the Altar when he causes the floor to turn purple. Make sure to interrupt the Crow Storm AoE attack.
step
kill 12 Gurubashi forces |q 31228/3 |goto 75.9,13.5
|modelnpc Gurubashi Headsplitter 64643
|modelnpc Amani Outrider 64639
|modelnpc Gurubashi Worshipper 64642
|modelnpc Gurubashi Witch Doctor  64631
step
talk Lorewalker Cho##63784
turnin Prophet Khar'zul##31228 |goto 62.3,29.0
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto 58.1,61.5
step
Wait for the Caravan to arrive or find them on your map.
|confirm
step
Protect the caravan and escort them to this point |goto 53.0,66.6 < 5 |n
Escort grummles to the Burlap Waystation |q 30592/1
|modelnpc Broketooth Spear-haver##59443
|modelnpc Broketooth Sneaker##60195
|modelnpc Broketooth Tosser##59416
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto 51.7,67.8
accept The Rabbitsfoot##30602 |goto 51.7,67.8
step
talk Brother Rabbitsfoot##59806
Rescue Brother Rabbitsfoot |q 30602/1
accept The Broketooth Ravage##30603 |goto 49.1,70.4
step
Follow the path up |goto 48.85,71.7 < 5 |only if walking
kill Mo Mo##59805
collect Rabbitsfoot's Luckydo |q 30603/1 |goto 48.0,73.2
|tip After you kill Mo Mo, check the back of his little den, there may be a treasure chest
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto Kun-Lai Summit 52.0,67.2
turnin The Broketooth Ravage##30603 |goto Kun-Lai Summit 52.0,67.2
accept A Monkey Idol##30599 |goto Kun-Lai Summit 52.0,67.2
accept No Pack Left Behind##30600 |goto Kun-Lai Summit 52.0,67.2
accept Breaking Broketooth##30604 |goto Kun-Lai Summit 52.0,67.2
stickystart "grummlebroketooth"
step
kill Tak Tak##59958
collect 1 Corpse of Tak Tak##80430 |q 30599 |future |goto 56.8,71.1
click Tak Tak's Altar##7871
Destroy Tak Tak's Altar |q 30599/3 |goto 56.8,71.1
step
kill Hateful Ko Ko##59430
collect 1 Corpse of Ko Ko##80429 |q 30599 |future |goto 52.3,71.3
click Ko Ko's Altar
Destroy Ko Ko's Altar |q 30599/2 |goto 52.3,71.5
step
Follow the left path deeper into the cave |walk
kill Dak Dak##59424
collect 1 Corpse Of Dak Dak##80428 |q 30599 |future |goto Kun-Lai Summit/12 49.2,39.0
click Dak Dak's Altar
Destroy Dak Dak's Altar |q 30599/1 |goto 49.2,39.0
step "grummlebroketooth"
Before you leave this cave do the following:
clicknpc Dead Packer##59896
collect 8 Grummlepack##80307+ |q 30600/1
kill 6 Broketooth Tosser##59416+ |q 30604/2
kill 8 Broketooth Charger##59414+ |q 30604/1
|tip If you run out of mobs there are more outside the cave
Exit the cave |goto Kun-Lai Summit/11 56.5,15.6 < 5 |walk
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto Kun-Lai Summit 52.0,67.3
turnin No Pack Left Behind##30600 |goto Kun-Lai Summit 52.0,67.3
accept Bros before Hozen##30605 |goto Kun-Lai Summit 52.0,67.3
turnin Breaking Broketooth##30604 |goto Kun-Lai Summit 52.0,67.3
step
clicknpc Mok Mok##60008
Rescue the Brother Yakshoe |q 30605/1 |goto 50.5,64.2
step
talk Brother Yakshoe##59894
turnin Bros before Hozen##30605 |goto 50.6,64.1
accept Hozen Love Their Keys##30607 |goto 50.6,64.1
accept The Snackrifice##30608 |goto 50.6,64.1
accept Thumping Knucklethump##30606 |goto 50.6,64.1
stickystart "rescueimprisoned"
step
kill Cho Cho the Wicked##60090
collect Yeti Shackle Key##80535 |q 30607/1 |goto Kun-Lai Summit/10 34.3,16.5
step "rescueimprisoned"
Before you release Old Poot Poot do the following inside the cave:
kill Knucklethump Jibstabber##59412+, Knucklethump Smasher##59410+
Kill 8 Silverback Hozen |q 30606/1
click Grummle Cage##11563
Rescue 5 Imprisoned Grummle |q 30608/1
step
click Ball and Chain
Release Old Poot Poot |q 30607/2 |goto 38.2,23.1
step
talk Brother Yakshoe##59894
turnin Hozen Love Their Keys##30607 |goto Kun-Lai Summit 52.0,67.2
turnin The Snackrifice##30608 |goto Kun-Lai Summit 52.0,67.2
accept Grummle! Grummle! Grummle!##30610 |goto Kun-Lai Summit 52.0,67.2
step
talk Brother Rabbitsfoot##59452
turnin Thumping Knucklethump##30606 |goto Kun-Lai Summit 52.0,67.2
accept Unleash The Yeti!##30611 |goto Kun-Lai Summit 52.0,67.2
stickystart "Cagemaster"
stickystart "Packers"
step "Cagemaster"
kill 4 Cagemaster##60169+ |q 30611/1 |goto 46.3,63.9
|tip They are located around the huge wooden dome.
step "Packers"
click Grummle Gear##11563
Pack 5 Packers |q 30610/1 |goto 46.3,63.9
step
talk Brother Yakshoe##59894
turnin Grummle! Grummle! Grummle!##30610 |goto 45.9,64.1
step
talk Brother Rabbitsfoot##59452
turnin Unleash The Yeti!##30611 |goto 45.9,64.1
accept The Leader Hozen##30612 |goto 45.9,64.1
step
Wait for Tassle to enrage Chomp Chomp |q 30612/1 |goto 46.0,63.1
kill The Ook of Dook##60188 |q 30612/2 |goto 46.0,63.1
|tip When he throws bananas just dodge them until he runs back to you.
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto Kun-Lai Summit 52.0,67.2
step
talk Brother Trailscenter##59703
accept The Burlap Trail: To Kota Basecamp##30692 |goto 51.7,67.8
step
Wait for the Caravan to arrive or find them on your map.
|confirm
step
Protect the caravan and escort them to this point |goto 43.9,68.9 <5
Escort grummles to the Kota Basecamp |q 30692/1
|modelnpc Knucklethump Snatcher##59682
step
talk Uncle Eastwind##60416
fpath Kota Basecamp |goto 42.8,69.6
step
talk Clover Keeper##60420
home Kota Basecamp |q 30742 |future |goto 42.7,69.8
step
talk Cousin Gootfur##60596
accept Shut it Down##30742 |goto 42.3,69.8
accept Gourmet Kafa##30743 |goto 42.3,69.8
step
talk Uncle Keenbean##60503
accept Kota Blend##30744 |goto 42.4,69.7
accept Trouble Brewing##30745 |goto 42.4,69.7
step
talk Brother Oilyak##59755
turnin The Burlap Trail: To Kota Basecamp##30692 |goto 42.5,68.9
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto 42.8,69.3
Follow the path marked by red flags up |goto 42.0,70.0 < 5
stickystart "Kafayeti"
stickystart "Kafaberries"
step "Kafayeti"
Enter the cave |goto 37.5,77.9 < 5 |walk
kill 8 Kafa-Crazed Yeti##60564+ |q 30745/1 |goto 35.4,77.0 |indoors Kota Peak
step "Kafaberries"
click Kafa'Kota Berries##10696 |indoors Kota Peak
collect 100 Kafa'kota Berry##81054 |q 30744/1 |goto 35.4,77.0 |indoors Kota Peak
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Kota Blend##30744
accept A Fair Trade##30746
stickystart "Kafacrazed"
stickystart "Kafagoot"
step "Kafacrazed"
Exit the cave |goto 37.5,77.9 < 5 |walk
kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1 |goto 38.5,77.9
step "Kafagoot"
click Kafa'goot "Deposit"
15 Kafa'goot "Deposits" Marked |q 30743/1 |goto 38.5,77.9
You can find more "Deposits" and Goats around |goto 39.8,77.1
step
Enter the cave |goto 37.2,75.9 < 5 |walk
talk Nephew Burrberry##60679 |indoors Kota Peak
turnin A Fair Trade##30746 |goto 36.9,76.2 |indoors Kota Peak
step
The Yeti will pick you up and carry you down the mountain |invehicle
confirm
step
talk Cousin Gootfur##60596
turnin Shut it Down##30742 |goto 42.5,69.4
turnin Gourmet Kafa##30743 |goto 42.5,69.4
step
talk Uncle Keenbean##60503
turnin Trouble Brewing##30745 |goto 42.4,69.7
step
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto 42.5,69.4
step
talk Kota Kon##60587 |goto 42.6,69.2
Unscrew the flask and offer it to her |invehicle
confirm
step
Use the abilities on your hotbar to kill Hozen
kill Silverback Piker##60746+, Ookin Marauder##60753+, Broketooth Leaper##60742+, Ookin Shaman##60752+, Silverback Smasher##60749+, Broketooth Ravager##60743+, Broketooth Charger##60744+
Kill 100 Burlap Trail Hozen |q 30747/1 |goto 49.5,68.5
step
Click the Leave Vehicle button |outvehicle |c |goto 42.5,69.3
step
talk Nephew Burrberry##60679
turnin The Burlap Grind##30747 |goto 42.5,69.3
step
talk Anduin Wrynn##64848
Tell him "Let's find out!" |q 31512/1 |goto 55.1,91.8
step
Enter the Vale of Eternal Blossoms through the gate here. |goto Kun-Lai Summit/0 55.5,92.4 |only if walking
talk Matron Vi Vinh##64149
turnin A Witness to History##31512 |goto Vale of Eternal Blossoms/3 35.4,65.9
step
talk Shado-Master Chong##60161
|tip He is located in the buiilding straight ahead after you open the doors.
turnin The Shado-Pan##31455 |goto Kun-Lai Summit 44.5,89.9
accept Turnabout##30670 |goto Kun-Lai Summit 44.5,89.9
accept The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit 44.5,89.9
step
talk Kite Master Ni##61473
|tip The flight path is located on the Serpent Wall and you can get there by going up the stairs.
fpath Shado-Pan Fallback |goto 43.9,89.6
stickystart "blindrage"
stickystart "shayaungol"
step
talk Sya Zhong##60178
|tip You can jump, but landing will leave you with about 30% health
accept Holed Up##30682 |goto 42.9,88.3
Rescue Sya Zhong |q 30682/4 |goto 42.9,88.3
step
talk Ya Firebough##60189
Tell him "Let's go".
Rescue Ya Firebough |q 30682/2 |goto 41.0,87.0
step
talk Old Lady Fung##60190
Ask her to "escort" you to safety.
Rescue Old Lady Fung |q 30682/3 |goto 42.8,85.7
step
talk Jin Warmkeg##60187
Tell him not to worry.
Rescue Jin Warmkeg |q 30682/1 |goto 43.9,86.2
step "blindrage"
kill Blind Rage##61224+
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto 43.9,87.2
step "shayaungol"
kill 15 Sha-Infested Yaungol##60164+ |q 30665/1 |goto 44.5,88.6
step
talk Shado-Master Chong##60161
|tip He is located in the buiilding straight ahead after you open the doors.
turnin Turnabout##30670 |goto 44.5,89.9
accept Unmasking the Yaungol##30690 |goto 44.5,89.9
turnin The Defense of Shado-Pan Fallback##30665 |goto 44.5,89.9
turnin Holed Up##30682 |goto 44.5,89.9
step
Use your Blinding Rage Trap and lure Kobai into it |use Blinding Rage Trap##81741
|modelnpc Kobai##61303
Click the Steal Mask button that appears on your screen |q 30690/1 |goto 45.4,85.6
|tip You must be targetting Kobai for this to work
kill Malevolent Fury##61333 |q 30690/2 |goto 45.4,85.6
step
talk Shado-Master Chong##60161
|tip He is located in the buiilding straight ahead after you open the doors.
turnin Unmasking the Yaungol##30690 |goto `44.5,89.9
accept To Winter's Blossom##30699 |goto 44.5,89.9
step
talk Lin Silentstrike##61816
Speak with Lin  Silentstrike
turnin To Winter's Blossom##30699 |goto 35.0,59.4
accept Honor, Even in Death##30723 |goto 35.0,59.4
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto 35.1,59.7
step
talk Kite Master Len##61512
fpath Winter's Blossom |goto 34.5,59.1
stickystart "kunlaicorpse"
step
clicknpc Shado-Master Zhiyao##61808
Shado-Master Zhiyao Released From his Oath |q 30715/1 |goto 30.3,60.1
step
clicknpc Liu of the Thousand Blows##61806
Liu of the Thousand Blows Released From his Oath |q 30715/2 |goto 30.1,62.5
step
clicknpc Shiya Boldblade##61810
Shiya Boldblade Released From her Oath |q 30715/3 |goto 30.0,64.4
step "kunlaicorpse"
kill 12 Kun-Lai Corpsepicker##61843+ |q 30723/1 |goto 30.9,62.0
|tip If you can't find any on the ground look upward and pull them with a ranged ability.
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto 35.1,59.7
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto 35.0,59.4
accept To the Wall!##30724 |goto 35.0,59.4
step
talk Kite Master Len##61512 |goto 34.5,59.1
Tell him you need a kite up to the wall. |goto Kun-Lai Summit 29.3,62.3 < 5 |noway |c |q 30724/1
step
talk Suna Silentstrike##61454 |indoors Serpent Spine
turnin To the Wall!##30724 |goto 29.3,62.3 |indoors Serpent Spine
accept Off the Wall!##30750 |goto 29.3,62.3 |indoors Serpent Spine
step
talk Lao-Chin the Iron Belly##61820 |indoors Serpent Spine
accept A Terrible Sacrifice##30751 |goto 29.2,62.3 |indoors Serpent Spine
step
kill Osul Fire-Warrior##63576+, Osul Veteran Archer##61886+ |indoors Serpent Spine
Kill 12 Veteran Archers or Fire-Warriors |q 30750/1 |goto 26.4,59.6 |indoors Serpent Spine
click Yaungol Oil Barrel |indoors Serpent Spine
collect 6 Yaungol Oil Barrel##82799 |q 30751/1 |goto 26.4,59.6 |indoors Serpent Spine
step
talk Lao-Chin the Iron Belly##61820 |indoors Serpent Spine
turnin A Terrible Sacrifice##30751 |goto 29.2,62.3 |indoors Serpent Spine
step
talk Suna Silentstrike##61454 |indoors Serpent Spine
turnin Off the Wall!##30750 |goto 29.3,62.3 |indoors Serpent Spine
accept Lao-Chin's Gambit##30994 |goto 29.3,62.3 |indoors Serpent Spine
step
talk Suna Silentstrike##61454 |indoors Serpent Spine
Tell her you're ready to get back to the front. |q 30994/1 |goto 29.3,62.3 |indoors Serpent Spine
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto 31.8,60.1
accept Do a Barrel Roll!##30991 |goto 31.8,60.1
step
clicknpc Keg Bomb##60553
Use the abilities on your hotbar blow up as many Osul as you can in 1 go, you will need to repeat this.
kill 50 Osul Invader##60455 |q 30991/1 |goto 32.1,60.6
kill 4 Osul Treelauncher##60483 |q 30991/2 |goto 32.1,60.6
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto 31.8,60.1
accept Finish This!##30992 |goto 31.8,60.1
step
kill Gong Da##62165
Complete the Battle for The Ox Gate |q 30992/1 |goto 30.9,62.1
step
talk Ban Bearheart##61819
turnin Finish This!##30992 |goto 31.3,61.5
accept Where are My Reinforcements?##30993 |goto 31.3,61.5
step
talk Ban Bearheart##61819
Tell him you're ready to leave. |q 30993/1 |goto 31.3,61.5
step
talk Ban Bearheart##61819
Tell him "Alright, let's go up to the monastery". |q 30993/2 |goto 34.0,58.6
step
talk Ban Bearheart##61819
turnin Where are My Reinforcements?##30993 |goto 35.3,49.5
accept Unbelievable!##30752 |goto 35.3,49.5
step
Talk to Shado-Pan Sentinel
Tell him you are here with Ban Bearheart.
kill Shado-Pan Sentinel##62220
Gain access to the Monastery |q 30752/1 |goto 36.7,47.7
step
Next to you
talk Ban Bearheart##61819
turnin Unbelievable!##30752
Pass through the Ox Gate and enter Townlong Steppes |goto 29.7,64.0 < 5
step
talk Shado-Master Chong##60161
accept Turnabout##30670 |goto Kun-Lai Summit 44.5,89.9
accept The Defense of Shado-Pan Fallback##30665 |goto Kun-Lai Summit 44.5,89.9
step
talk Kite Master Ni##61473 |goto 43.9,89.6
fpath Serpent's Spine
stickystart "blindrageessence"
stickystart "shainfestedyaungol"
step
talk Sya Zhong##60178
accept Holed Up##30682 |goto 42.9,88.3
Rescue Sya Zhong |q 30682/4 |goto 42.9,88.3
step
talk Ya Firebough##60189
Tell him "Let's go".
Rescue Ya Firebough |q 30682/2 |goto 41.0,87.0
step
talk Old Lady Fung##60190
Ask her to "escort" you to safety.
Rescue Old Lady Fung |q 30682/3 |goto 42.8,85.7
step
talk Jin Warmkeg##60187
Tell him "Let's get out of here."
Rescue Jin Warmkeg |q 30682/1 |goto 43.9,86.2
step "blindrageessence"
kill Blind Rage##61224+
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto 42.8,87.0
step "shainfestedyaungol"
kill 15 Sha-Infested Yaungol##60164+ |q 30665/1 |goto 44.5,88.6
step
talk Shado-Master Chong##60161
turnin Turnabout##30670 |goto 44.5,89.9
accept Unmasking the Yaungol##30690 |goto 44.5,89.9
turnin The Defense of Shado-Pan Fallback##30665 |goto 44.5,89.9
turnin Holed Up##30682 |goto 44.5,89.9
step
Use your Blinding Rage Trap and lure Kobai into it |use Blinding Rage Trap##81741
Click the Steal Mask button that appears on your screen |q 30690/1 |goto 45.4,85.6
|tip You must be targetting Kobai for this to work
kill Malevolent Fury##61333 |q 30690/2 |goto 45.4,85.6
|modelnpc Kobai##61303
step
talk Shado-Master Chong##60161
turnin Unmasking the Yaungol##30690 |goto 44.5,89.9
accept To Winter's Blossom##30699 |goto 44.5,89.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Townlong Steppes (88-89)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\TownlongSteppes",
next="Zygor's Leveling Guides\\Pandaria (85-90)\\Dread Wastes (89-90)",
startlevel=88.2,
},[[
step
talk Suna Silentstrike##60684
turnin My Husband...##30768 |goto Townlong Steppes 71.1,56.5
|only if havequest(30768)
step
talk Taran Zhu##60688
accept A Foot in the Door##30814 |goto 71.2,56.7
step
talk Kite Master Wong##62901
fpath Longying Outpost |goto 71.1,57.3
step
talk Saito the Sleeping Shadow##62873
home Longying Outpost |q 30814 |future |goto 71.1,57.9
step
kill 8 Osul Charger##60713+ |q 30814/1 |goto 71.6,52.9
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto 71.2,56.7
accept First Assault##30769 |goto 71.2,56.7
accept Running Rampant##30770 |goto 71.2,56.7
accept Perfect Pitch##30771 |goto 71.2,56.7
stickystart "Osulsharphorn"
stickystart "Yaksormushan"
stickystart "Pitchpot"
step "Osulsharphorn"
kill 6 Osul Sharphorn##60647+ |q 30769/1 |goto 67.3,54.4
step "Yaksormushan"
clicknpc Long-Haired Yak##60669+
clicknpc Steppebeast##60739+
Free 8 Yaks or Mushan |q 30770/1 |goto 67.3,54.4
step "Pitchpot"
click Pitch Pot##11377
collect 8 Dark Pitch##81174 |q 30771/1 |goto 67.3,54.4
step
talk Suna Silentstrike##60684
turnin First Assault##30769 |goto 67.2,52.2
step
talk Ban Bearheart##60687
turnin Running Rampant##30770 |goto 67.2,52.3
turnin Perfect Pitch##30771 |goto 67.2,52.3
accept Pitching In##30773 |goto 67.2,52.3
step
talk Suna Silentstrike##60684
accept Seeing Red##30772 |goto 67.2,52.2
accept Ranger Rescue##30774 |goto 67.2,52.2
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto 67.0,51.4
step
kill Battat##60728 |q 30775/1 |goto 65.7,51.7
|tip When he casts Raging Flurry step behind him to avoid the damage.
step
kill Urang##60725 |q 30775/2 |goto 64.8,50.2
step
talk Lin Silentstrike##60899
Examine the body
Free Lin Silentstrike |q 30774/2 |goto 66.6,49.1
step
kill Ku-Tong##60726 |q 30775/3 |goto 67.0,48.2
|tip When he casts Stalwart Defender hit him in the back.
step
Use Ban's Explosives on Osul Ballistas |use Ban's Explosives##81193
Destroy 6 Osul Ballistas |q 30773/1 |goto 66.9,44.1
stickystart "Osulballistas"
stickystart "Longyingranger"
step "Osulballistas"
kill 8 Osul Marauder##60692+ |q 30772/1 |goto 67.3,49.6
collect 4 Stone Key##81178+ |n
step "Longyingranger"
click Drywood Cage
Rescue 4 Longying Rangers |q 30774/1 |goto 67.3,49.6
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto 67.0,51.4
step
talk Ban Bearheart##60687
turnin Pitching In##30773 |goto 67.2,52.3
turnin Seeing Red##30772 |goto 67.2,52.3
turnin Ranger Rescue##30774 |goto 67.2,52.3
step
talk Suna Silentstrike##60684
accept Jung Duk##30776 |goto 67.3,52.2
step
click Ceremonial Pile
kill Jung Duk##60801 |q 30776/1 |goto 66.7,51.0
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto 71.0,56.6
accept In Search of Suna##30777 |goto 71.0,56.6
step
talk Orbiss##60857
accept A Spear Through My Side, A Chain Through My Soul##30786 |goto 68.0,67.7
step
kill Dmong Naruuk##60683 |q 30786/1 |goto 68.4,71.4
step
talk Orbiss##60857
turnin A Spear Through My Side, A Chain Through My Soul##30786 |goto 68.0,67.7
accept The Torches##30787 |goto 68.0,67.7
step
Kill the Osul Mist-Shamans near Mist-Shaman's Torches
clicknpc Mist-Shaman's Torch##60698
collect 6 Mist-Shaman's Torch##81176+ |q 30787/1 |goto 64.9,67.7
|modelnpc Osul Mist-Shaman##60697
step
talk Orbiss##60857
turnin The Torches##30787 |goto 68.0,67.7
accept Golgoss##30788 |goto 68.0,67.7
accept Arconiss##30789 |goto 68.0,67.7
step
Follow the path up |goto 68.4,67.8 < 5
click Peat Clump##7584
Defend Golgoss from the oncoming attack.
Summon Golgoss |q 30788/1 |goto 70.5,69.7
step
click Peat Mound##7584
Defend Arconiss from the oncoming attack.
Summon Arconiss |q 30789/1 |goto 71.5,72.3
step
talk Orbiss##60857
turnin Golgoss##30788 |goto 67.9,67.7
turnin Arconiss##30789 |goto 67.9,67.7
accept The Death of Me##30815 |goto 67.9,67.7
step
talk Orbiss##60857
"Remove the spear from Orbiss' side." |q 30815/1 |goto 67.9,67.7
step
talk Orbiss##60622
turnin The Death of Me##30815 |goto 67.9,67.7
step
talk Orbiss##60622
accept Golgoss Hungers##30790 |goto 67.9,67.7
accept Orbiss Fades##30792 |goto 67.9,67.7
accept Arconiss Thirsts##30791 |goto 67.9,67.7
stickystart "Snarlvine"
stickystart "Clottedrodent"
stickystart "Gushingmist"
step "Snarlvine"
Follow the path up |goto 68.4,67.8 < 5 |only if walking
click Snarlvine##11478
collect 10 Snarlvine |q 30790/1 |goto 74.5,70.4
step "Clottedrodent"
kill Swamp Rodent##60733+
collect 4 Clotted Rodent's Blood##81260+ |q 30791/1 |goto 74.5,70.4
step "Gushingmist"
Walk through the puffs of steam all over this area
Collect 8 Gushing Mist |q 30792/1 |goto 74.5,70.4
step
talk Orbiss##60622
turnin Golgoss Hungers##30790 |goto 67.9,67.7
turnin Orbiss Fades##30792 |goto 67.9,67.7
turnin Arconiss Thirsts##30791 |goto 67.9,67.7
accept Mists' Opportunity##30793 |goto 67.9,67.7
step
kill Jahesh of Osul##60802 |q 30793/1 |goto 76.5,72.5
step
talk Orbiss##60622
turnin Mists' Opportunity##30793 |goto 76.2,72.9
step
talk Ban Bearheart##61261
turnin In Search of Suna##30777 |goto 82.7,73.0
accept Dust to Dust##30778 |goto 82.7,73.0
accept Slaying the Scavengers##30779 |goto 82.7,73.0
step
talk Xiao Tu##60903
accept Last Toll of the Yaungol##30781 |goto 82.7,73.2
step
talk Yalia Sagewhisper##60864
accept Totemic Research##30780 |goto 82.6,73.0
stickystart "palewindvillage"
step
Wait for Xiao Tu to investigate.
Examine the Southern Smoke Trail |q 30781/3 |goto 83.5,78.5
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
Wait for Xiao Tu to investigate.
Examine the Eastern Smoke Trail |q 30781/1 |goto 84.9,71.4
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
Wait for Xiao Tu to investigate.
Examine the Northwestern Smoke Trail |q 30781/4 |goto 84.0,70.9
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step
Wait for Xiao Tu to investigate.
Examine the Western Smoke Trail |q 30781/2 |goto 81.1,72.0
If you lose Xiao head back to [Townlong Steppes 82.7,73.2] to retrieve him
step "palewindvillage"
kill 12 Ashfang Hyena##60932+ |q 30779/1 |goto 81.1,71.8
click Palewind Totem##11497
collect 9 Palewind Totem##81355 |q 30780/1 |goto 81.1,71.8
Use your Shado-Pan Torch to burn Palewind Villagers |use Shado-Pan Torch##81356
Burn 20 Palewind Villagers |q 30778/1
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto 82.6,73.0
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto 82.7,73.0
turnin Slaying the Scavengers##30779 |goto 82.7,73.0
turnin Last Toll of the Yaungol##30781 |goto 82.7,73.0
step
talk Yalia Sagewhisper##60864
accept What Lies Beneath##30827 |goto 82.6,73.0
step
talk Yalia Sagewhisper##60864
Tell her you are ready to begin the ritual |q 30827/1 |goto 82.6,73.0
clicknpc Totem of Tranquility##60990 |q 30827/3 |goto 82.6,73.0
clicknpc Totem of Serenity##60991 |q 30827/4 |goto 82.6,73.0
clicknpc Totem of Kindness##60933 |q 30827/2 |goto 82.6,73.0
Complete the Ritual |q 30827/5 |goto 82.6,73.0
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto 82.6,73.0
accept Hatred Becomes Us##30783 |goto 82.6,73.0
step
talk Ban Bearheart##61261
accept Spiteful Spirits##30782 |goto 82.7,73.0
step
While doing the following quests do not allow your Hatred bar to reach 100. You can lower it by standing in Pools of Harmony.
|confirm
step
kill 10 Spiteful Spirit##63839+ |q 30782/1 |goto 82.0,71.0
Use your Totem of Harmony on Crazed Shado-Pan Rangers |use Totem of Harmony##81417
kill Seething Hatred##61054+
Purify 8 Crazed Shado-Pan Rangers |q 30783/1 |goto 82.0,71.0
You can find more of all of these at |goto Townlong Steppes,83.4,73.8
step
talk Ban Bearheart##61261
turnin Spiteful Spirits##30782 |goto 82.7,73.0
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto 82.6,73.0
step
talk Ban Bearheart##61261
accept The Point of No Return##30784 |goto 82.7,73.0
step
Use the Totem of Harmony to buff yourself during the fight |use Totem of Harmony##81430
kill Suna Silentstrike##61055
Find Suna Silentstrike |q 30784/1 |goto 84.1,70.7
step
talk Ban Bearheart##61261
turnin The Point of No Return##30784 |goto 82.7,73.0
accept Gao-Ran Battlefront##30785 |goto 82.7,73.0
step
Follow the path up |goto 78.7,83.5 < 5 |only if walking
talk Taran Zhu##61066
turnin Gao-Ran Battlefront##30785 |goto 76.4,82.5
accept Behind the Blockade##30884 |goto 76.4,82.5
step
talk Kim the Quiet##62875
home Gao-Ran Battlefront |q 30884 |future |goto 76.0,82.9
step
talk Septi the Herbalist##61470
accept Treatment for the Troops##30891 |goto 75.9,83.1
step
talk Kite Master Nenshi##62903
fpath Gao-Ran Battlefront |goto 74.4,81.5
step
talk Taoshi##61469
turnin Behind the Blockade##30884 |goto 76.9,78.8
accept Unwelcome Intruders##30887 |goto 76.9,78.8
stickystart "Violetcitron"
stickystart "Deepscout"
step "Violetcitron"
click Violet Citron##11562
collect 10 Violet Citron##82342 |q 30891/1 |goto 78.8,79.2
step "Deepscout"
kill 12 Krik'thik Deep-Scout##61374 |q 30887/1 |goto 78.8,79.2
step
talk Septi the Herbalist##61470
turnin Treatment for the Troops##30891 |goto 75.9,83.1
step
talk Taoshi##61468
turnin Unwelcome Intruders##30887 |goto 79.5,84.5
accept Breach in the Defenses##30888 |goto 79.5,84.5
accept The Restless Watch##30890 |goto 79.5,84.5
step
talk Mao the Lookout##61467
accept Trap Setting##30889 |goto 79.4,84.5
stickystart "shadopanspiketrap"
step
talk Scout Jai-Gan##61397
Tell him you have orders for him to return to the battlefront |q 30890/4 |goto 79.0,90.1
step
talk Scout Ying##61396
Tell her you have orders for her to return to the battlefront |q 30890/3 |goto 82.5,89.6
step
talk Scout Long##61395
Tell her you have orders for her to return to the battlefront |q 30890/2 |goto 81.3,86.2
step
talk Scout Wei-Chin##61378
Tell him you have orders for him to return to the battlefront |q 30890/1 |goto 82.2,84.1
step "shadopanspiketrap"
Use the Shado-Pan Flare in your bags to reveal Scentlayers. |use Shado-Pan Flare##81925
kill 10 Krik'thik Scentlayer##61373+ |q 30888/1 |goto 80.7,86.5
clicknpc Shado-Pan Spike Trap##61426
Rearm 8 Shado-Pan Spike Traps |q 30889/1 |goto 80.7,86.5
step
talk Mao the Lookout##61467
turnin Trap Setting##30889 |goto 79.4,84.5
step
talk Taoshi##61468
turnin Breach in the Defenses##30888 |goto 79.5,84.5
turnin The Restless Watch##30890 |goto 79.5,84.5
accept Returning from the Pass##30960 |goto 79.5,84.5
step
talk Taran Zhu##61066
turnin Returning from the Pass##30960 |goto 76.4,82.4
accept The Endless Swarm##30893 |goto 76.4,82.4
step
talk Septi the Herbalist##61470
accept Back on Their Feet##30892 |goto 75.9,83.1
accept Rummaging Through the Remains##30894 |goto 75.9,83.1
stickystart "Injuredgaoran"
stickystart "Krikthinkattacker"
stickystart "Krikthiklimb"
step "Injuredgaoran"
Use your Citron-Infused Bandages on Injured Gao-Ran Blackguards |use Citron-Infused Bandages##82787
Heal 8 Injured Gao-Ran Blackguards |q 30892/1 |goto 74.0,87.5
|talk Injured Gao-Ran Blackguard##61692
step "Krikthinkattacker"
kill Krik'thik Locust-Guard##61365+, Krik'thik Limbpincer##61181+
Kill 12 Krik'thik attackers |q 30893/1 |goto 74.0,87.5
step "Krikthiklimb"
click Krik'thik Limb##12688
collect 22 Krik'thik Limb##82722+ |q 30894/1 |goto 74.0,87.5
step
talk Septi the Herbalist##61470
turnin Back on Their Feet##30892 |goto 75.9,83.1
turnin Rummaging Through the Remains##30894 |goto 75.9,83.1
step
talk Taran Zhu##61066
turnin The Endless Swarm##30893 |goto 76.4,82.4
accept Improvised Ammunition##30895 |goto 76.4,82.4
step
Follow this path |goto 73.2,86.9 < 5 |only if walking
talk Initiate Chao##61880
accept In the Wrong Hands##30897 |goto 70.4,86.7
step
talk Initiate Feng##61881
accept Thieves and Troublemakers##30896 |goto 70.5,86.4
stickystart "agitatedrootsprite"
step
kill Needlebottom##61818
collect Initiate Chao's Sword##82783 |q 30897/1 |goto 63.1,87.7
step "agitatedrootsprite"
kill Agitated Nettleskin##61811+, Agitated Seedstealer##61302+
Kill 10 Agitated Root Sprites |q 30896/1 |goto 65.7,87.8
click Dread Orb
collect 16 Volatile Dread Orb##82723+ |q 30895/1 |goto 65.7,87.8
step
talk Initiate Feng##61881
turnin Thieves and Troublemakers##30896 |goto 70.5,86.4
step
talk Initiate Chao##61880
turnin In the Wrong Hands##30897 |goto 70.3,86.7
step
talk Taran Zhu##61066
turnin Improvised Ammunition##30895 |goto 76.4,82.4
accept Cutting the Swarm##30898 |goto 76.4,82.4
step
clicknpc Dragon Launcher##61746 |invehicle
Use the ability on your hotbar kill Krik'thik
kill Krik'thik Drone##61960+, Krik'thik Acidslinger##62014+
Kill 50 Krik'thik Drones |q 30898/1 |goto 74.7,84.6
step
talk Taoshi##62444
turnin Cutting the Swarm##30898 |goto 74.2,85.0
accept Terror of the Dread Wastes##30900 |goto 74.2,85.0
step
kill Norvakess##62324 |q 30900/1 |goto 74.3,87.6
When he tunnels underground, he'll drop a yellow circle on the ground. Stand in it and it will attract some weak mobs, kill them and Norvakess will resurface.
step
talk Taran Zhu##61066
turnin Terror of the Dread Wastes##30900 |goto 76.4,82.4
accept Along the Southern Front##30901 |goto 76.4,82.4
step
Follow Taran Zhu and Taoshi |goto 67.4,80.6 < 10
|modelnpc 61066
|modelnpc 61021
talk Taoshi##62436
turnin Along the Southern Front##30901 |goto 67.3,80.9
accept Enraged By Hatred##30970 |goto 67.3,80.9
step
talk Initiate Pao-Me##62124
accept Taking Stock##30971 |goto 67.4,80.7
step
Enter the tunnel here. |goto 66.8,83.6 < 5 |walk
click Shado-Pan Fire Arrows##11658
collect 120 Shado-Pan Fire Arrows |q 30971/1 |goto 67.9,82.5 |indoors Dusklight Hollow
kill 9 Seething Fleshripper##61299+ |q 30970/1 |goto 67.9,82.5 |indoors Dusklight Hollow
You can find more Scorpions and Arrows outside around [64.4,82.6]
step
talk Taoshi##62436
turnin Enraged By Hatred##30970 |goto 67.3,80.9
step
talk Initiate Pao-Me##62124
turnin Taking Stock##30971 |goto 67.4,80.7
accept Joining the Fight##30972 |goto 67.4,80.7
step
talk Lao-Chin the Iron Belly##61016
turnin Joining the Fight##30972 |goto 61.7,79.3
step
talk Taran Zhu##62273
accept Up In Flames##30973 |goto 61.6,79.3
step
click Keg Bomb
Face the Kor'thik Timberhusk that you are targeting. Nearby archers will shoot them, causing the Timberhusk to lose their buff.
kill 10 Kor'thik Timberhusk##61355+ |q 30973/1 |goto 58.8,79.8
step
talk Taran Zhu##62273
turnin Up In Flames##30973 |goto 61.7,79.3
step
talk Lao-Chin the Iron Belly##61016
accept The Taking of Dusklight Bridge##30975 |goto 61.6,79.3
step
As you fight run through the bubbles to heal yourself and click the cask of Tasty Brew to gain a large damage buff.
kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |goto Dread Wastes 44.9,9.7
|tip Do not use any Area of Effect abilities, these units do large amounts of damage and should be tanked by Lao-Chin.
kill Hulking Kor'thik Fleshrender##62686 |q 30975/2 |goto Dread Wastes 44.9,9.7
step
talk Taran Zhu##62736
turnin The Taking of Dusklight Bridge##30975 |goto Townlong Steppes 61.1,83.1
accept Joining the Hunt##30976 |goto Townlong Steppes 61.1,83.1
step
Follow Taran Zhu |goto 54.1,78.0 < 5 |walk
talk Taran Zhu##62274
turnin Joining the Hunt##30976 |goto 54.0,78.1
accept In Skilled Hands##30899 |goto 54.0,78.1
step
talk Rensai Oakhide##62278
accept Grounded Welcome##30977 |goto 53.9,78.1
step
talk Kite Master Li-Sen##62898
fpath Rensai's Watchpost |goto 54.3,79.0
step
talk Marksman Ye##62573
accept Choking the Skies##31032 |goto 51.3,83.0
step
talk Hawkmaster Nurong##61020
turnin In Skilled Hands##30899 |goto 51.6,87.2
accept Hostile Skies##30978 |goto 51.6,87.2
step
click Nurong's Cannon
Use the abilities on your new hotbar to do the following:
kill Kor'thik Swarmer##62300
Shoot down 50 Korthi'thik Swarmers |q 30978/1 |goto 51.7,87.3
kill Voress'thalik##62269
Shot down Voress'thalik |q 30978/2 |goto 51.7,87.3
step
Click the Leave Vehicle button |outvehicle
talk Hawkmaster Nurong##61020
turnin Hostile Skies##30978 |goto 51.6,87.2
accept Devastation Below##30979 |goto 51.6,87.2
step
Follow the path down |goto 53.0,83.6 < 5 |only if walking
kill Voress'thalik##62270 |q 30979/1 |goto 54.2,86.8
step
talk Hawkmaster Nurong##62786
turnin Devastation Below##30979 |goto 54.0,87.0
accept Heroes of the Shado-Pan##30980 |goto 54.0,87.0
step "Fleetwingcorpse"
Use the Wu Kao Torch on Korth'thik Fleetwing corpses |use Wu Kao Torch##83768
Burn 10 Kor'thik Fleetwing corpses |q 31032/1 |goto 52.5,83.6
step "Kor"
Follow the path up |goto 54.2,85.3 < 5 |only if walking
kill 12 Kor'thik Fleetwing##62128+ |q 30977/1 |goto 52.5,83.6
step
talk Marksman Ye##62573
turnin Choking the Skies##31032 |goto 51.3,83.0
step
talk Rensai Oakhide##62278
turnin Grounded Welcome##30977 |goto 53.9,78.1
step
talk Taran Zhu##62274
turnin Heroes of the Shado-Pan##30980 |goto 54.1,77.9
accept Buried Beneath##31065 |goto 54.1,77.9
step
click Wukao Spyglass
Look through Taoshi's Spyglass |q 31065/1 |goto 53.5,77.4
step
talk Taran Zhu##62274
turnin Buried Beneath##31065 |goto 54.1,77.9
accept Taoshi and Korvexxis##30981 |goto 54.1,77.9
accept Lao-Chin and Serevex##31063 |goto 54.1,77.9
accept Nurong and Rothek##31064 |goto 54.1,77.9
step
talk Rensai Oakhide##62278
accept Thinning the Sik'thik##31687 |goto 53.9,78.1
accept The Search for Restless Leng##31688 |goto 53.9,78.1
stickystart "sikthikmantidcage"
step
kill Korvexxis##62579 |q 30981/1 |goto 46.7,83.1
|tip Beware of his landmines.
step
kill Rothek##62581 |q 31064/1 |goto 39.5,75.5
|tip Kite him around as much as possible to avoid his AoE's. Try to interrupt Howling Gale.
step
kill Serevex##62580 |q 31063/1 |goto 45.4,77.5
|tip Again, watch out for the Scorching Earth AoE
step "sikthikmantidcage"
kill Sik'thik Drone##62576+, Sik'thik Venomspitter##62575+, Sik'thik Vess-Guard##61354+
Kill 12 Sik'thik mantid. |q 31687/1 |goto 46.9,76.7
click Sik'thik Cage
Search 8 Sik'thik Cages. |q 31688/1 |goto 46.9,76.7
Find Restless Leng |q 31688/2 |goto 46.9,76.7
|tip He will be in the final cage.
You can find more cages around [47.4,84.7]
step
talk Taran Zhu##62275
turnin Taoshi and Korvexxis##30981 |goto 47.5,78.9
turnin Lao-Chin and Serevex##31063 |goto 47.5,78.9
turnin Nurong and Rothek##31064 |goto 47.5,78.9
accept The Sha of Hatred##30968 |goto 47.5,78.9
step
|subzone Sik'vess Lair
Follow Taran Zhu into Sik'vess Lair |goto 45.9,82.8 |indoors Sik'vess Lair
kill Sha of Hatred##62541 |q 30968/1 |indoors Sik'vess Lair
|tip The Sha of Hatred periodically shoots off Sha Bursts that deal 80k-90k damage. Keep an eye on the ground and move out of the circles that appear, you may need to turn up your spell detail to see them. It also summons many different adds, make sure to kill them so you do not get overwhelmed.
step
talk Taoshi##62802 |indoors Sik'vess Lair
turnin The Sha of Hatred##30968 |goto 46.1,82.5 |indoors Sik'vess Lair
accept The Threat in the South##31656 |goto 46.1,82.5 |indoors Sik'vess Lair
step
talk Rensai Oakhide##62278
turnin Thinning the Sik'thik##31687 |goto 53.9,78.1
turnin The Search for Restless Leng##31688 |goto 53.9,78.1
step
talk Kite Master Yao-Li##62909
fpath Shado-Pan Garrison |goto 50.1,72.0
step
talk Kali the Night Watcher##62874
home Shado-Pan Garrison |q 30921 |future |goto 48.9,70.8
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto 49.1,71.2
accept Set the Mantid Back##30923 |goto 49.1,71.2
step
talk Provisioner Bamfu##61625
|tip He is patrolling this area.
accept Natural Antiseptic##30922 |goto 49.2,71.3
accept The Field Armorer##30963 |goto 49.2,71.3
accept A Proper Poultice##30964 |goto 49.2,71.3
stickystart "discoverclues"
step
Use your Gunpowder Casks to explode the Kri'thik Supplies |use Gunpowder Casks##81891
Blow up the Kri'thik Supplies |q 30923/2 |goto 56.6,54.0
step
Use your Gunpowder Casks to blow up the Kri'thik Weapons |use Gunpowder Casks##81891
Blow up the Kri'thik Weapons |q 30923/1 |goto 55.5,53.2
step "discoverclues"
kill Kri'thik Screamer##61377+, Kri'thik Boneslicer##61376+
Discover the First Clue |q 30921/1 |goto 56.4,53.3
Discover the Second Clue |q 30921/2 |goto 56.4,53.3
Discover the Third Clue |q 30921/3 |goto 56.4,53.3
Discover the Fourth Clue |q 30921/4 |goto 56.4,53.3
stickystart "Maowillow"
stickystart "Rankbite"
stickystart "Longshadowmushan"
step "Maowillow"
click Mao-Willow
collect 11 Mao-Willow##82389+ |q 30964/1 |goto 58.0,48.7
|tip Often, these spawn around the base of trees
You can find more Willows, Turtles, and Mushan around |goto 51.2,60.9
step "Rankbite"
kill Rankbite Tortoise##61619+
collect 120 Rankbite Shell Fragment##82388+ |q 30963/1 |goto 58.0,48.7
step "Longshadowmushan"
kill Longshadow Mushan##61618
collect 800 Longshadow Mushan##82387+ |q 30922/1 |goto 58.0,48.7
You can find more Willows, Turtles, and Mushan around |goto 51.2,60.9
step
talk Tai Ho##61482
turnin Set the Mantid Back##30923 |goto 49.1,71.2
turnin The Motives of the Mantid##30921 |goto 49.1,71.2
accept The Wisdom of Niuzao##30924 |goto 49.1,71.2
step
talk Provisioner Bamfu##61625
turnin Natural Antiseptic##30922 |goto 49.2,70.7
turnin The Field Armorer##30963 |goto 49.2,70.7
turnin A Proper Poultice##30964 |goto 49.2,70.7
step
Cross the bridge |goto 48.4,68.9 < 5 |only if walking
talk Ku-Mo##61539
accept My Father's Crossbow##30931 |goto 43.9,65.8
step
kill Et'kil##61540
|tip He can be tough to kill, make sure you keep his adds crowd controlled or interrupted.
collect Father's Crossbow##82332 |q 30931/1 |goto 38.7,65.4
step
talk Ku-Mo##61539
turnin My Father's Crossbow##30931 |goto 43.9,65.8
step
talk Sentinel Commander Qipan##61584
accept Father's Footsteps##30932 |goto 39.4,62.0
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto 39.3,62.2
accept Niuzao's Price##30925 |goto 39.3,62.2
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto 39.2,62.0
step
clicknpc Ruthers##61163
Gently pet Ruthers |q 30929/1 |goto 39.3,61.9
Offer Ruthers an apple |q 30929/2 |goto 39.3,61.9
Lightly nudge Ruthers |q 30929/3 |goto 39.3,61.9
Attempt to mount Ruthers |q 30929/4 |goto 39.3,61.9
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto 39.2,62.0
step
clicknpc Sentinel Yalo##61683
|tip He will be patrolling around this area.
Find Sentinel Yalo |q 30932/4 |goto 39.3,61.2
step
click Father's Shield
Find Father's Shield |q 30932/2 |goto 37.5,61.4
step
click Father's Bedroll
Find Father's Bedroll |q 30932/1 |goto 37.4,60.9
step
clicknpc Ha-Cha##61685
Find Ha-Cha |q 30932/3 |goto 37.7,64.0
step
talk Ku-Mo##61539
turnin Father's Footsteps##30932 |goto 39.5,61.9
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto 35.4,56.6
step
Use your Yak Lasso on Wild Townlong Yaks |use Yak Lasso##82468
kill Wild Townlong Yak##61635
Find a Suitable Yak |q 30930/1 |goto 34.5,50.2
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto 35.4,56.6
step
kill Sra'thik Guard##61518+, Sra'thik Drone##61516+, Sra'thik Wound-Mender##61517+
Find Statuette Head |q 30925/1 |goto 43.2,48.7
Find Statuette Body |q 30925/2 |goto 43.2,48.7
Find Statuette Legs |q 30925/3 |goto 43.2,48.7
Find Statuette Tail |q 30925/4 |goto 43.2,48.7
step
talk Ogo the Younger##61581
turnin Niuzao's Price##30925 |goto 39.3,62.2
step
talk Ogo the Elder##61580
accept The Terrible Truth##30926 |goto 39.4,62.3
step
talk Yak-Keeper Kyana##61585
accept A Trail of Fear##30928 |goto 39.2,62.1
step
talk Sentinel Commander Qipan##61584
accept Give Them Peace##30927 |goto 39.4,62.0
step
Find the catacombs |q 30926/1 |goto 32.8,61.1
stickystart "peacetosentinels"
step
kill Dread Shadow##62307 |q 30926/3 |goto Townlong Steppes/13 50.1,26.0
Investigate the Niuzao Catacombs |q 30926/2 |goto Townlong Steppes/13 50.1,26.0
step
talk Tai Ho##61482
turnin The Terrible Truth##30926 |goto Townlong Steppes/13 55.9,20.1
step "peacetosentinels"
Before exiting the catatcombs complete the following:
kill 12 Dreadling##62306+ |q 30928/1
clicknpc Fear-Stricken Sentinel##62276+
Give peace to 10 Fear-Stricken Sentinels |q 30927/1
step
talk Sentinel Commander Qipan##61584
turnin Give Them Peace##30927 |goto Townlong Steppes 39.4,61.9
step
talk Yak-Keeper Kyana##61585
turnin A Trail of Fear##30928 |goto 39.1,62.1
step
Cross this bridge to the Dread Wastes. |goto 60.8,83.9 < 5
confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Dread Wastes (89-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\DreadWastes",
startlevel=89.3,
endlevel=90,
},[[
step
click Shado-Pan Rope##7548 |goto Dread Wastes 75.1,21.2
Climb up the wall. |goto Vale of Eternal Blossoms
confirm
step
talk Bowmistress Li##62112
turnin The Threat in the South##31656 |goto Vale of Eternal Blossoms 14.2,77.0
accept Nope##31002 |goto Vale of Eternal Blossoms 14.2,77.0
accept Falling Down##31001 |goto Vale of Eternal Blossoms 14.2,77.0
step
talk Mai of the Wall##63497
fpath Serpent's Spine |goto 14.2,79.3
step
click Shado-Pan Rope##7548 |goto 14.2,76.7 |n
Climb down the wall |goto Dread Wastes
confirm
step
Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807
Destroy 20 Dreadspinner Eggs |q 31002/1 |goto Dread Wastes 73.2,22.5
kill 6 Dreadspinner Tender##61981+ |q 31002/2 |goto Dread Wastes 73.2,22.5
step
Talk to Marksman Lann |q 31001/1 |modelnpc Marksman Lann##62166
turnin Falling Down##31001 |goto 72.6,28.7
turnin Nope##31002 |goto 72.6,28.7
accept Psycho Mantid##31003 |goto 72.6,28.7
step
Enter the hovel here. |goto 72.9,28.0 < 5 |walk
kill Adjunct Kree'zot##62301 |q 31003/1 |goto 73.1,27.7 |indoors Terrace of Gurthan
step
talk Klaxxi'va Tik##62203 |indoors Terrace of Gurthan
turnin Psycho Mantid##31003 |goto 73.7,27.6 |indoors Terrace of Gurthan
accept Preserved in Amber##31004 |goto 73.7,27.6 |indoors Terrace of Gurthan
step
click Ancient Amber Chunk
Klaxxi Tuning Fork used on Amber |q 31004/1 |goto 70.2,25.7
step
talk Kil'ruk the Wind-Reaver##62202
turnin Preserved in Amber##31004 |goto 70.2,25.7
accept Wakening Sickness##31005 |goto 70.2,25.7
accept Ancient Vengeance##31676 |goto 70.2,25.7
stickystart "Vengefulgurthani"
stickystart "Sapfly"
step "Vengefulgurthani"
kill 6 Vengeful Gurthani Spirit |q 31676/1 |goto 66.7,29.5
|modelnpc Vengeful Gurthani Spirit##65452
step "Sapfly"
kill Sapfly##62386+
collect 100 Sapfly Bits##83075 |q 31005/1 |goto 66.7,29.5
You can find more Sapfly at |goto Dread Wastes,71.3,32.9
step
talk Kil'ruk the Wind-Reaver##62202
turnin Wakening Sickness##31005 |goto 70.2,25.7
turnin Ancient Vengeance##31676 |goto 70.2,25.7
accept The Klaxxi Council##31006 |goto 70.2,25.7
step
talk Kil'ruk the Wind-Reaver##62413
Tell him to take you to Klaxxi'vess
Travel to Klaxxi Hub |q 31006/1 |goto 70.2,25.7
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto 55.0,34.0
accept The Dread Clutches##31007 |goto 55.0,34.0
accept Not Fit to Swarm##31660 |goto 55.0,34.0
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto 54.8,34.1
step
talk Ambersmith Zikk##64599
accept Amber Arms##31008 |goto 55.0,35.6
step
talk Kik'tik##63501
fpath Klaxxi'vess |goto 55.8,34.9
step
talk Zit'tix##65220
home Klaxxi'vess |q 31010 |future |goto 55.9,32.3
step
talk Kil'ruk the Wind-Reaver##62538 |goto 55.0,34.0
Ask him to fly you to the Clutches of Shek'zeer. |goto 39.0,40.5 < 5
confirm
step
Use the Klaxxi Resonating Crystal on the Inactive Sonic Relay. |use Klaxxi Resonating Crystal##83276
Sonic Relay activated |q 31009/1 |goto 40.0,39.0
step
Click the Complete Quest box that displays on the right side of the screen under your minimap
turnin Dead Zone##31009
accept In Her Clutch##31010
step
click Ancient Amber Chunk##11839
Hold off the swarm while Malik awakens.
Paragon Wakened |q 31010/1 |goto 44.9,41.5
step
click Sha-Haunted Crystal##12627
accept A Source of Terrifying Power##31661 |goto 44.6,41.4
stickystart "shekzeerswarm"
step
kill Shek'zeer Bladesworn##62563+
collect 6 Amber Blade##83135+ |q 31008/1 |goto 47.8,42.0
You can find more Bladesworn around |goto 41.8,43.0
step "shekzeerswarm"
kill 6 Shek'zeer Clutch-Keeper##64559+ |q 31007/1 |goto 43.5,41.4
kill 30 Shek'zeer Swarmborn##62582+ |q 31660/1 |goto 43.5,41.4
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto 55.0,34.1
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Dread Clutches##31007 |goto 55.0,34.1
turnin Not Fit to Swarm##31660 |goto 55.0,34.1
step
talk Kor'ik##64815
accept A Cry From Darkness##31066 |goto 54.8,34.1
step
talk Ambersmith Zikk##64599
turnin Amber Arms##31008 |goto 55.0,35.5
turnin A Source of Terrifying Power##31661 |goto 55.0,35.5
accept Concentrated Fear##31108 |goto 55.0,35.5
step
talk Malik the Unscathed##62774
accept Citizens of a New Empire##31107 |goto 55.1,35.5
accept The Dreadsworn##31689 |goto 55.1,35.5
stickystart "vorthikeggs"
step
kill Qi'tar the Deathcaller##62863 |q 31066/1 |goto 59.4,18.5
step "vorthikeggs"
kill Vor'thik Fear-Shaper##62814+
collect 4 Dread Amber Focus##86616 |q 31108/1 |goto 58.5,16.9
kill 6 Vor'thik Dreadsworn##62813+ |q 31689/1 |goto 58.5,16.9
click Vor'thik Egg##12392+
collect 10 Vor'thik Eggs##86598 |q 31107/1 |goto 58.5,16.9
step
talk Kor'ik##64815
turnin A Cry From Darkness##31066 |goto 54.8,34.1
accept Extending Our Coverage##31087 |goto 54.8,34.1
step
talk Malik the Unscathed##62774
turnin Citizens of a New Empire##31107 |goto Dread Wastes 55.1,35.5
turnin The Dreadsworn##31689 |goto Dread Wastes 55.1,35.5
step
talk Ambersmith Zikk##64599
turnin Concentrated Fear##31108 |goto 55.0,35.6
step
talk Kil'ruk the Wind-Reaver##62538
accept Amber Is Life##31019 |goto 55.0,35.9
stickystart "mantidrelic"
step
kill Mistblade Ripper##61970+
collect 1 Strange Relic##82870 |future |q 31023
Click the Strange Relic in your bags |use Strange Relic##82870
accept Relics of the Swarm##31023 |goto 62.3,57.1
step "mantidrelic"
kill 7 Mistblade Ripper##61970+ |q 31019/1 |goto 67.2,59.3
click Mantid Relic##6419
|tip More of these spawn in the water and along the shore
collect 8 Mantid Relic##82867 |q 31023/1 |goto 67.2,59.3
step
Enter the tunnel here. |goto 66.8,63.8 < 5 |walk
kill Mistblade Scale-Lord##63179 |q 31019/2 |goto 66.5,66.0 |indoors Mistblade Den
step
talk Ancient Amber Chunk##65354 |indoors Mistblade Den
turnin Amber Is Life##31019 |goto 66.8,65.4 |indoors Mistblade Den
step
Next to you:
talk Korven the Prime##62232
accept Feeding the Beast##31020
accept Living Amber##31021
stickystart "Coldbitecrocolisk"
step
Go underwater to |goto 65.5,59.1 |walk
click Amber Fragment
collect 9 Living Amber##82864 |n
Click the Living Amber in your bags |use Living Amber##82864
Feed Korven the Prime 9 Living Amber |q 31021/1
step
label "Coldbitecrocolisk"
kill 8 Coldbite Crocolisk##62023 |q 31020/1
step
Next to you:
talk Korven the Prime##62232
turnin Feeding the Beast##31020
turnin Living Amber##31021
accept Kypari Zar##31022
step
click Sonar Tower
Sonar Tower Examined |q 31022/1 |goto 59.8,59.5
kill Ik'thik Towerguard##63294+
Korven the Prime Defended. |q 31022/2 |goto 59.8,59.5
step
Next to you:
talk Korven the Prime##62232
turnin Kypari Zar##31022
accept The Root of the Problem##31026
step
Enter the tunnel here. |goto 58.7,59.5 < 5 |walk
kill Coldbite Matriarch##62008 |q 31026/1 |goto 57.3,57.8 |indoors Coldbite Burrow
step
Next to you:
talk Korven the Prime##62232
turnin The Root of the Problem##31026
step
Leave the tunnel. |goto 58.7,59.5 < 5 |walk
Locate Amberglow Hollow |q 31087/1 |goto 46.3,53.1
step
kill Adjunct Zet'uk##65478 |q 31087/2 |goto 48.2,49.7 |indoors Amberglow Hollow
click Inactive Beacon |indoors Amberglow Hollow
Use the Resonating Crystal on the Silent Beacon |q 31087/3 |goto 48.2,49.7 |indoors Amberglow Hollow
step
talk Kor'ik##65365 |indoors Amberglow Hollow
turnin Extending Our Coverage##31087 |goto 48.1,49.6 |indoors Amberglow Hollow
accept Isolating the Frequency##31088 |goto 48.1,49.6 |indoors Amberglow Hollow
accept The Color of Our Energy##31090 |goto 48.1,49.6 |indoors Amberglow Hollow
step
kill 8 Ik'thik Harvester##63206+ |q 31088/1 |goto 44.9,57.4
click Amber Collector##12109
|tip These are usually found at the base of trees in this area
collect 7 Amber-Filled Jar##85159 |q 31090/1 |goto 44.9,57.4
You can find more Amber and Harvesters around |goto 41.6,52.4
If you still need more, look here |goto Dread Wastes,34,51.7
step
Enter the building here. |goto 46.3,53.1 < 5 |walk
talk Kor'ik##65365 |indoors Amberglow Hollow
turnin Isolating the Frequency##31088 |goto 48.1,49.6 |indoors Amberglow Hollow
turnin The Color of Our Energy##31090 |goto 48.1,49.6 |indoors Amberglow Hollow
accept By the Sea, Nevermore##31089 |goto 48.2,49.8 |indoors Amberglow Hollow
step
Use the Klaxxi Tuning Fork in your bags on the Ocean Worn Rocks |use Klaxxi Tuning Fork##84119
Awaken Kaz'tik the Manipulator |q 31089/1 |goto 43.4,63.3
step
talk Kaz'tik the Manipulator##63758
turnin By the Sea, Nevermore##31089 |goto 43.4,63.3
accept Reunited##31091 |goto 43.4,63.3
step
talk Kaz'tik the Manipulator##63876
Tell him you're ready to help him find his weapon.
Escort Kaz'tik to |goto 41.8,72.0 |q 31091/1
Find Kaz'tik's greatest weapon |q 31091/2
step
talk Kaz'tik the Manipulator##63876
turnin Reunited##31091 |goto 41.8,72.0
accept The Kunchong Whisperer##31359 |goto 41.8,72.0
accept Feed or Be Eaten##31092 |goto 41.8,72.0
step
kill Oracle Hiss'ir##63998 |q 31359/1 |goto 41.7,63.6
|tip He patrols around The Briny Muck.
step
click Glowing Amber##11646
accept Falling to Pieces##31398 |goto 41.9,63.7
stickystart "Succulentturtle"
stickystart "Muckscaleripper"
step "Succulentturtle"
kill Brineshell Snapper##63981+, Trained Brineshell Snapper##65330+
collect 6 Succulent Turtle Filet##86489+ |n |goto 38.1,57.3
Click the Succulent Turtle Filets in your bags |use Succulent Turtle Filet##86489
Feed 6 Succulent Turtle Filets to Kovok |q 31092/1
step
label "Muckscaleripper"
kill Muckscale Ripper##63993+, Muckscale Shaman##64008+, Muckscale Slayer##63999+, Muckscale Flesh-Hunter##63997+
Kill 10 Muckscale Tribe |q 31359/2 |goto 38.1,57.3
|tip You can find more Tribe Members and Turtles all over The Briny Muck.
step
talk Kaz'tik the Manipulator##63758
turnin The Kunchong Whisperer##31359 |goto Dread Wastes 54.4,35.6
turnin Feed or Be Eaten##31092 |goto Dread Wastes 54.4,35.6
turnin Falling to Pieces##31398 |goto Dread Wastes 54.4,35.6
step
talk Ambersmith Zikk##64599
turnin Relics of the Swarm##31023 |goto 55.0,35.5
accept Gambling Problem##31727 |goto 55.0,35.5
step
talk Kil'ruk the Wind-Reaver##62538
accept A Not So Friendly Request##31730 |goto 55.0,35.9
|only if not completedq(31067)
step
talk Sapmaster Vu##62666
turnin A Not So Friendly Request##31730
accept The Heavens Hum With War##31067 |goto 51.2,11.4
step
Enter the building here |goto Dread Wastes/0 53.6,15.4 < 10 |walk
click Scroll of Auspice |indoors The Amber Vault
accept Sacred Recipe##31068 |goto Dread Wastes/0 53.1,12.4 |indoors The Amber Vault
step
kill Azzix K'tai##62843 |goto 52.7,10.1 |q 31067/1 |indoors The Amber Vault
step
talk Jin the Flying Keg##63500
fpath The Sunset Brewgarden |goto Dread Wastes 50.2,12.2
step
talk Lya of Ten Songs##62667
turnin Sacred Recipe##31068 |goto 50.7,11.7
step
Watch the dialogue.
talk Lya of Ten Songs##62667
accept Rending Daggers##31072 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
turnin The Heavens Hum With War##31067 |goto 51.2,11.4
accept Bound With Shade##31069 |goto 51.2,11.4
step
talk Olon##62668
accept Daggers of the Great Ones##31070 |goto 51.2,11.2
step
talk Thirsty Missho##62859
accept I Bring Us Great Shame##31071 |goto 51.1,11.1
step
talk Chen Stormstout##62779
accept Fate of the Stormstouts##31129 |goto 50.5,12.0
step
talk Lya of Ten Songs##62667
Ask her if she has seen any Stormstous in the Brewgarden. |q 31129/2 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
Ask him if he has seen anybody named Stormstout come through here. |q 31129/1 |goto 51.2,11.4
step
talk Big Dan Stormstout##62845
Ask him if his name is really Stormstout. |q 31129/3 |goto 50.9,11.4
step
talk Chen Stormstout##62779
turnin Fate of the Stormstouts##31129 |goto 50.5,12.0
step
talk Chen Stormstout##62779
accept Evie Stormstout##31077 |goto 54.1,20.5
stickystart "havestshades"
step
click Lost Keg##11783
collect Lost Keg##83781 |q 31071/2 |goto 54.5,20.3
step
click Lost Picnic Supplies##11790
collect Lost Picnic Supplies##83783 |q 31071/3 |goto 56.0,19.4
step
click Lost Mug##11784
collect Lost Mugs##83782 |q 31071/1 |goto 51.8,19.0
step
kill Kz'Kzik##62832
|tip Kite him around to avoid his proximity bombs
collect Blade of Kz'Kzik##84111 |q 31072/1 |goto 53.1,20.4
step
kill Ilikkax##62833
collect Blade of Ilikkax##84112 |q 31072/2 |goto 50.7,20.8
step "havestshades"
kill Dread Lurker##62751+
|tip The bigger, normal ones and the small, weak ones will both count for this
Harvest 100 Shade |q 31069/1 |goto 55.3,18.2
step
kill Frightened Mushan##62760
collect 3 Large Mushan Tooth##84107 |q 31070/1 |goto 51.1,15.9
You can find more Mushan around |goto Dread Wastes,57.1,21.6
step
talk Lya of Ten Songs##62667
turnin Rending Daggers##31072 |goto 50.7,11.7
accept Wood and Shade##31074 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
turnin Bound With Shade##31069 |goto 51.2,11.4
step
talk Olon##62668
turnin Daggers of the Great Ones##31070 |goto 51.2,11.2
step
talk Thirsty Missho##62859
turnin I Bring Us Great Shame##31071 |goto 51.1,11.1
step
talk Sapmaster Vu##62666
accept Bound With Wood##31073 |goto 51.2,11.4
step
talk Defender Azzo##63218
accept Kor'thik Aggression##31133 |goto 50.2,12.4
step
Meet up with Chen |q 31077/1 |goto 50.2,10.2
Listen to Chen's Eulogy. |q 31077/2 |goto 50.2,10.2
step
talk Chen Stormstout##62779
turnin Evie Stormstout##31077 |goto 50.2,10.2
accept Han Stormstout##31078 |goto 50.2,10.2
step
Enter the building here |goto 44.8,15.8 < 5 |walk
Find the Mark of the Empress |q 31074/1 |goto 44.5,16.8 |indoors Kor'vess
step
Enter the building here |goto 43.1,14.0 < 5 |walk
Find the Heartroot of Kypari Kor |q 31074/2 |goto 43.1,14.9 |indoors Kor'vess
step
Enter the Morrowchamber here. |goto 47.0,16.8 < 5 |walk
Work your way around one side of the room, if you go down the ramps on eiter side you can go underneath the beam. |indoors Morrowchamber
|tip If you used a ranged ability on an enemy on the other side of the beam, usually they'll run into the beam and be killed, or at least take extra damage from it. This seems to work the best on Kor'thik Havocs
clicknpc Han Stormstout##62776 |indoors Morrowchamber
Find Han Stormstout |q 31078/1 |goto 43.7,16.7 |indoors Morrowchamber
step
talk Chen Stormstout##62779 |indoors Morrowchamber
turnin Han Stormstout##31078 |goto 44.4,16.8 |indoors Morrowchamber
step
Inside this building:
kill Kor'thik Chitinel##62756+, Kor'thik Havoc##62757+, Kor'thik Battlesinger##62758+
Kill 17 Kor'thik Mantid |q 31133/1
stickystart "korthikmantidslain"
step
clicknpc Withered Husk##62876
collect 8 Fragrant Corewood##84118 |q 31073/1 |goto 48.3,12.3
|tip They look like Withered Husk corpses. You can stay mounted for this
step "korthikmantidslain"
talk Defender Azzo##63218
turnin Kor'thik Aggression##31133 |goto 50.2,12.4
step
talk Lya of Ten Songs##62667
turnin Wood and Shade##31074 |goto 50.7,11.7
step
talk Sapmaster Vu##62666
turnin Bound With Wood##31073 |goto 51.2,11.4
accept Sunset Kings##31075 |goto 51.2,11.4
step
talk Sapmaster Vu##62666
turnin Sunset Kings##31075 |goto 38.2,17.2
step
talk Boggeo##62772
accept The Horror Comes A-Rising##31079 |goto 38.2,17.3
step
talk Olon##62668
accept Fiery Wings##31080 |goto 38.2,17.1
step
talk Lya of Ten Songs##62667
accept Incantations Fae and Primal##31081 |goto 38.3,17.1
step
talk Chief Rikkitun##62771
accept Great Vessel of Salvation##31082 |goto 38.6,17.3
stickystart "shufflingmist"
step
kill Mygoness##62766 |q 31081/2 |goto 32.6,19.3
step
kill Ahgunoss##62765 |q 31081/1 |goto 32.1,17.4
step "shufflingmist"
kill 7 Shuffling Mistlurker##65404+ |q 31079/1 |goto 32.9,17.6
stickystart "Kyparite"
stickystart "Flitterlingdust"
step "Kyparite"
kill 2 Kyparite##63007 |q 31079/2 |goto 36.0,23.0
|tip You can see them burrowing underground, just like other worms do
step "Flitterlingdust"
clicknpc Rikkilea Flitterling##62764 |goto 36.0,23.0
|tip Click them, and then run behind them to catch all the dust
collect 88 Flitterling Dust##84239 |q 31080/1 |goto 36.0,23.0
step
Use the Rikkitun Bell in your bags |use Rikkitun Bell##84267
clicknpc Motherseed##62601 |goto 36.8,20.4
Bring the Motherseed to |goto 36.9,17.4
Bring 3 Motherseed back to the Motherseed Pit |q 31082/1
step
talk Boggeo##62772
turnin The Horror Comes A-Rising##31079 |goto 38.1,17.3
step
talk Olon##62668
turnin Fiery Wings##31080 |goto 38.2,17.1
step
talk Lya of Ten Songs##62667
turnin Incantations Fae and Primal##31081 |goto 38.3,17.1
step
talk Chief Rikkitun##62771
turnin Great Vessel of Salvation##31082 |goto 38.6,17.3
accept Bind the Glamour##31084 |goto 38.6,17.3
step
talk Chief Rikkitun##62771 |goto 38.6,17.3
Tell him the forked blade is ready.
Follow Chief Rikkitun to |goto 39.7,23.2
Allow Chief Rikkitun to enchant the forked blade. |q 31084/1
step
talk Chief Rikkitun##62771
turnin Bind the Glamour##31084 |goto 38.6,17.3
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto 38.3,17.1
step
talk Sapmaster Vu##62666
accept Blood of Ancients##31086 |goto 38.2,17.2
step
click Solidified Amber##11646
collect Chunk of Solidified Amber##84779 |q 31086/1 |goto 30.2,30.6
stickystart "Adjunct"
step
click Enormous Landslide |goto 30.0,31.1
|tip Looks like a big pile of rocks blocking the way.
Enter the building once the landslide is gone. |goto 30.2,31.7 < 8 |walk
Use the Ruining Fork in your bags |use Ruining Fork##84771 |indoors The Amber Hibernal
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto 32.4,33.7 |indoors The Amber Hibernal
step
label "Adjunct"
kill Adjunct G'kkal##63103, Adjunct Okzyk##63102, Adjunct Pivvika##63104 |indoors The Amber Hibernal
Protect Iyyokuk the Lucid until he escapes |q 31085/2 |goto 32.4,33.7 |indoors The Amber Hibernal
step
Leave the building. |goto 30.5,32.0 < 5 |walk
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto 50.3,12.1
step
talk Sapmaster Vu##62666
turnin Blood of Ancients##31086 |goto 50.3,12.1
step
talk Min the Breeze Rider##63498 |goto Dread Wastes 56.1,70.2
fpath Soggy's Gamble |goto Dread Wastes 56.1,70.2
step
talk Deck Boss Arie##63349
turnin Soggy's Gamble##31727 |goto Dread Wastes 54.7,72.2
accept Mazu's Breath##31265 |goto Dread Wastes 54.7,72.2
step
Use the Potion of Mazu's Breath in your bags |use Potion of Mazu's Breath##85869
Drink the Potion of Mazu's Breath |q 31265/1
step
talk Deck Boss Arie##63349
turnin Mazu's Breath##31265 |goto 54.7,72.2
accept Fresh Pots##31181 |goto 54.7,72.2
accept You Otter Know##31182 |goto 54.7,72.2
stickystart "Monarch"
stickystart "Otter"
step "Otter"
Use the Bag of Clams in your bags on Coldwhisker Otters |use Bag of Clams##85231
Feed Coldwhisker Otter |q 31182/1 |modelnpc Coldwhisker Otter##63376
step  "Monarch"
kill Sea Monarch##63470+ |goto 59.4,82.1
collect 20 Sea Monarch Chunks##85230
confirm
step
click Empty Crab Pot
Bait 10 Crab Pots |q 31181/1 |goto 59.4,82.1
step
talk Deck Boss Arie##63349
turnin Fresh Pots##31181 |goto 54.7,72.2
turnin You Otter Know##31182 |goto 54.7,72.2
accept Meet the Cap'n##31183 |goto 54.7,72.2
step
talk Captain "Soggy" Su-Dao##63317
turnin Meet the Cap'n##31183 |goto 55.7,72.5
accept Walking Dog##31185 |goto 55.7,72.5
accept Old Age and Treachery##31184 |goto 55.7,72.5
step
talk Deck Boss Arie##63349
accept On the Crab##31187 |goto 54.7,72.2
accept Shark Week##31188 |goto 54.7,72.2
step
Use Dog's Whistle while swimming in the Shelf of Mazu. |use Dog's Whistle##85955
Next to you:
talk Dog##63955
accept Dog Food##31186 |goto 50.9,78.1
stickystart "fullcrabpots"
step
Bring Dog to the Silt Vents |goto 46.2,74.2 <5 |q 31185/1
step
Bring Dog to the Wreck of the Mist-Hopper |goto 44.9,78.0 <5 |q 31185/2
step
click Soggy's Footlocker
|tip It's on this wrecked ship. It doesn't always spawn in this exact spot.
collect Sealed Charter Tube |q 31184/1 |goto 44.9,78.2
step
Bring Dog to the Whale Corpse |goto 40.2,79.1 <5 |q 31185/3
step "fullcrabpots"
kill Rockshell Snapclaw##63369
Feed Dog. |q 31186/1 |goto 46.0,77.1
kill Longfin Thresher##63944+
collect Thresher Jaw##85998+
Use the Thresher Jaw in your bags |use Thresher Jaw##85998
collect 200 Thresher Teeth##85999 |q 31188/1 |goto 46.0,77.1
click Full Crab Pot
Send 8 Full Crab Pots to the Surface |q 31187/1 |goto 46.0,77.1
confirm
step
Next to you:
talk Dog##63955
turnin Dog Food##31186
step
talk Deck Boss Arie##63349
turnin On the Crab##31187 |goto 54.7,72.2
turnin Shark Week##31188 |goto 54.7,72.2
step
talk Captain "Soggy" Su-Dao##63317
turnin Walking Dog##31185 |goto 55.7,72.5
turnin Old Age and Treachery##31184 |goto 55.7,72.5
step
talk Deck Boss Arie##63349
accept Reeltime Strategy##31189 |goto 54.7,72.2
step
talk Master Angler Ju Lien##64259
Deck Boss said you needed some help. |q 31189/1 |goto 53.6,76.0
step
Click each rod and fight the Jiao Spawns.
click Serpent Rod##12157
click Improvised Rod##11174
click Bamboo Rod##12160
click Classic Rod##6324
kill Jiao Spawn##64273+
Assist Master Angler Ju Lien |q 31189/2 |goto 53.7,76.0
step
talk Deck Boss Arie##63349
turnin Reeltime Strategy##31189 |goto 54.7,72.2
step
talk Captain "Soggy" Su-Dao##63317
accept The Mariner's Revenge##31190 |goto 54.8,72.1
step
Follow Captain "Soggy" Su-Dao to [56.2,76.3]
clicknpc Mist-Hopper Jr.##64350
Hold down Right click to aim and use the Harpoon Cannon ability on your new hotbar to attack the red circles all around Jiao. |modelnpc Jiao##63330
25 Bow Hits |q 31190/1
25 Port Side Hits |q 31190/2
25 Starboard Hits |q 31190/3
25 Stern Hits |q 31190/4
step
Hit the yellow Leave Vehicle button on your hotbar. |outvehicle
step
talk Captain "Soggy" Su-Dao##63317
turnin The Mariner's Revenge##31190 |goto 56.6,75.9
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto 56.6,75.8
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto 54.9,72.8
accept Once in a Hundred Lifetimes##32030 |goto 54.9,72.8
step
talk Klaxxi'va Ik##65395
turnin Once in a Hundred Lifetimes##32030 |goto 54.7,34.7
accept Overthrone##31782 |goto 54.7,34.7
step
Witness the Klaxxi Ritual |q 31782/1
step
talk Klaxxi'va Vor##62519
turnin Overthrone##31782 |goto 55.1,34.3
step
From this point on you must meet the reputation requirements for The Klaxxi faction in order to accept quests.
|confirm
step
talk Kil'ruk the Wind-Reaver##62538
accept Skeer the Bloodseeker##31175 |goto 55.0,35.9
|tip This quest is only available to those who are honored with The Klaxxi.
step
talk Kor'ik##64815
accept The Zan'thik Dig##31605 |goto 54.8,34.1
step
Swim underwater and enter this cave |goto 25.7,53.9 < 10 |walk
click Ancient Amber Chunk
|tip Be sure NOT to move while breaking the amber, the quest will bug.
Skeer the Bloodseeker Awakened |q 31175/1 |goto 25.7,50.4
step
talk Skeer the Bloodseeker##63071
turnin Skeer the Bloodseeker##31175 |goto 25.7,50.3
accept A Strange Appetite##31176 |goto 25.7,50.3
accept Fine Dining##31177 |goto 25.7,50.3
accept A Bloody Delight##31178 |goto 25.7,50.3
stickystart "Clacker"
stickystart "Starfish"
step
Leave the cave |goto 25.7,53.9 < 10 |walk
kill Dread Remora##63353
collect 100 Volatile Blood |q 31178/1 |goto 26.3,58.8
step "Clacker"
kill Briny Clacker##63348
collect 8 Clacker Tail |q 31177/1 |goto 26.3,58.8
step "Starfish"
click Spiny Starfish##11880
collect 12 Starfish Meat |q 31176/1 |goto 26.3,58.8
step
Swim underwater and enter this cave |goto 25.7,53.9 < 5 |walk
talk Skeer the Bloodseeker##63071
turnin A Strange Appetite##31176 |goto 25.7,50.3
turnin Fine Dining##31177 |goto 25.7,50.3
turnin A Bloody Delight##31178 |goto 25.7,50.3
accept The Scent of Blood##31179 |goto 25.7,50.3
step
Fight off the waves of Muckscale.
kill 12 Muckscale Flesheater##63465+ |q 31179/1 |goto 25.7,50.3
kill Muckscale Serpentus##63466 |q 31179/2 |goto 25.7,50.3
step
Leave the cave |goto 25.7,53.9 < 5 |walk
talk Rik'kal the Dissector##65253
turnin The Zan'thik Dig##31605 |goto 31.8,88.9
accept The Dissector Wakens##31606 |goto 31.8,88.9
step
Kill the Zan'thik while Rik'kal recovers.
kill Zan'thik Impaler##65273+, Zan'thik Manipulator##65274+
Paragon Wakened |q 31606/1
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto 31.8,88.9
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto 55.0,35.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Daily",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=1,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31840) or not completedq(31841) or not completedq(31842) or not completedq(31843) or not completedq(31844) or not completedq(31845) or not completedq(31846) and level>=20",
condition_end="completedq(31840)",
dynamic=true,
description="This guide will walk you through the Monk daily for extra experience.",
},[[
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31856
step
talk Master Hight##66260
accept Practice Makes Perfect: Master Cheng##31840 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Woo##31841 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Kistane##31842 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Yoon##31843 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31844 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Tsang##31845 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Hsu##31846 |or |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31840/1 |goto 47.1,40.1
|only if havequest(31840)
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Cheng's Training |q 31841/1 |goto 48.6,39.6
|only if havequest(31841)
step
talk Master Kistane##65899
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Kistane##65899
Complete Master Kistane's Training |q 31842/1 |goto 48.0,40.2
|only if havequest(31842)
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31843/1 |goto 48.0,40.2
|only if havequest(31843)
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31844/1 |goto 47.1,40.1
|only if havequest(31844)
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto 47.1,40.1
|only if havequest(31845)
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31846/1 |goto 47.1,40.1
|only if havequest(31846)
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31840 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Woo##31841 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Kistane##31842 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Yoon##31843 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Cheng##31844 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Tsang##31845 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Hsu##31846 |or |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 20",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=20,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31834) and level>=20",
condition_end="completedq(31834)",
dynamic=true,
description="This guide will walk you through the Monk daily for extra experience.",
},[[
step
Upon reaching level 20 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Begin Your Training##31856
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31856
step
talk Master Hight##66260
turnin The Peak of Serenity - Begin Your Training##31856 |goto Kun-Lai Summit 48.6,42.7
accept Begin Your Training: Master Cheng##31834 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31834/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Begin Your Training: Master Cheng##31834 |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31840 |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31840/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31840 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 30",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=30,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31833) and level>=30",
condition_end="completedq(31833)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 30.",
},[[
step
Upon reaching level 30 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31855
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31855
step
talk Master Hight##66260
turnin The Peak of Serenity -  Continue Your Training##31855 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Woo##31833 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Woo's Training |q 31833/1 |goto 48.6,39.6
step
talk Master Hight##66260
turnin Continue Your Training: Master Woo##31833 |goto 48.6,42.7
accept Practice Makes Perfect: Master Woo##31841 |goto 48.6,42.7
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Cheng's Training |q 31841/1 |goto 48.6,39.6
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Woo##31841 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 40",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=40,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31835) and level>=40",
condition_end="completedq(31835)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 40.",
},[[
step
Upon reaching level 40 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31857
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31857
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31857 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Kistane##65899
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Kistane##65899
Complete Master Kistane's Training |q 31835/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Continue Your Training: Master Kistane##31835 |goto 48.6,42.7
accept Practice Makes Perfect: Master Kistane##31842 |goto 48.6,42.7
step
talk Master Kistane##65899
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Kistane##65899
Complete Master Kistane's Training |q 31842/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Kistane##31842 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 50",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=50,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31836) and level>=50",
condition_end="completedq(31836)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 50.",
},[[
step
Upon reaching level 50 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31858
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31858
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31858 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31836/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Continue Your Training: Master Yoon##31836 |goto 48.6,42.7
accept Practice Makes Perfect: Master Yoon##31843 |goto 48.6,42.7
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31843/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Yoon##31843 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 60",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=60,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31837) and level>=60",
condition_end="completedq(31837)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 60.",
},[[
step
Upon reaching level 60 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31859
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31859 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31837/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Cheng##31837 |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31844 |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31844/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31844 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 70",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=70,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31838) and level>=70",
condition_end="completedq(31838)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 70.",
},[[
step
Upon reaching level 70 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31860
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31860
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31860 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31838/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Tsang##31838 |goto 48.6,42.7
accept Practice Makes Perfect: Master Tsang##31845 |goto 48.6,42.7
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Tsang##31845 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 80",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=80,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31861) and level>=80",
condition_end="completedq(31861)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 80.",
},[[
step
Upon reaching level 80 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31861
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31861
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31861 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31839/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Hsu##31839 |goto 48.6,42.7
accept Practice Makes Perfect: Master Hsu##31846 |goto 48.6,42.7
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31846/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Hsu##31846 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Pandaria (85-90)\\Peak of Serenity\\Monk Quest 90",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Serenity_Peak",
monkquest=90,
condition_valid="raceclass('Monk')",
condition_valid_msg="Monk only.",
condition_suggested="raceclass('Monk') and not completedq(31844) and level>=90",
condition_end="completedq(31844)",
dynamic=true,
description="This guide will walk you through the Monk quest at level 90.",
},[[
step
Upon reaching level 90 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Complete Your Training##31889
step
Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31889
step
talk Master Hight##66260
turnin The Peak of Serenity - Complete Your Training##31889 |goto Kun-Lai Summit 48.6,42.7
accept Complete Your Training: The Final Test##31844 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Hight##66260
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hight##66260
Complete Master Hight's Training |q 31844/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Complete Your Training: The Final Test##31844 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\The Loremaster\\Loremaster of Pandaria",{
condition_end="achieved(6541)",
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Pandaria Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Jade Forest Quests |achieve 6300 |loadguide "Zygor's Leveling Guides\\Pandaria (85-90)\\The Jade Forest (85-86)"
Valley of the Four Winds Quests |achieve 6301 |loadguide "Zygor's Leveling Guides\\Pandaria (85-90)\\Valley of the Four Winds (86-87)"
Townlong Steppes Quests |achieve 6539 |loadguide "Zygor's Leveling Guides\\Pandaria (85-90)\\Townlong Steppes (88-89)"
Dread Wastes Quests |achieve 6540 |loadguide "Zygor's Alliance Loremaster Guides\\Pandaria (85-90)\\Dread Wastes"
Krasarang Wilds Quests |achieve 6535 |loadguide "Zygor's Alliance Loremaster Guides\\Pandaria (85-90)\\Krasarang Wilds"
Kun-Lai Summit Quests |achieve 6537 |loadguide "Zygor's Leveling Guides\\Pandaria (85-90)\\Kun-Lai Summit (87-88)"
step
Congratulations, you have _earned_ the _Loremaster of Pandaria_ achievement!
]])
