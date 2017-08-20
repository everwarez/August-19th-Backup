local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCLEGION") then return end
if ZGV:DoMutex("PetsCommonLEGION") then return end
ZGV.CommonPets=true
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Benax",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Benax",
model={72658},
pet=1934,
},[[
step
kill Anax##111197
collect Benax##140934 |n |goto Suramar/0 33.69,51.75
learnpet Benax##113136 |use Benax##140934
step
_Congratulations!_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Bleakwater Jelly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Bleakwater Jelly",
model={65630},
pet=1753,
},[[
step
Enter the Helheim portal |goto Stormheim/0 73.38,39.74
kill Soulthirster##97630
collect Bleakwater Jelly##129188 |n |goto Helheim/0 29.29,63.96
|tip This pet has a small chance to drop.
learnpet Bleakwater Jellsuny##98116 |use Bleakwater Jelly##129188
step
_Congratulations!_
You have collected the _Bleakwater Jelly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Blorp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Blorp",
model={63693},
pet=1666,
},[[
step
talk Galissa Sundew##55103
buy 1 Blorp's Bubble##126925 |n |goto Darkmoon Island/0 52.52,88.59
|tip This pet costs 50 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed by fishing in the water on Darkmoon Island.
collect Blorp's Bubble##126925 |n
learnpet Blorp##93814 |use Blorp's Bubble##126925
step
_Congratulations!_
You have collected the _Blorp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Coralback Fiddler",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Coralback Fiddler",
model={65800},
pet=1775,
},[[
step
The _Coralback Fiddler_ is level 25
|tip It is a crab found along this coast
Challenge one to a pet battle and capture it
learnpet Coralback Fiddler##98428 |goto Highmountain/0 38.29,12.79
step
_Congratulations!_
You have collected the _Coralback Fiddler_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Ghostshell Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Ghostshell Crab",
model={63691},
pet=1665,
},[[
step
talk Galissa Sundew##55103
buy 1 Translucent Shell##126926 |n |goto Darkmoon Island/0 52.52,88.59
|tip This pet costs 100 Darkmoon Daggermaw.
|tip These can either be bought from the auction house or farmed by fishing in the water on Darkmoon Island.
collect Translucent Shell##126926 |n
learnpet Ghostshell Crab##93808 |use Translucent Shell##126926
step
_Congratulations!_
You have collected the _Ghostshell Crab_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Juvenile Scuttleback",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Juvenile Scuttleback",
model={65151},
pet=1728,
},[[
step
The _Juvenile Scuttleback_ is level 25
|tip It is a crab found around this area.
Challenge one to a pet battle and capture it
learnpet Juvenile Scuttleback##97283 |goto Azsuna/0 60.70,59.03
step
_Congratulations!_
You have collected the _Juvenile Scuttleback_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Plump Jelly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Plump Jelly",
model={65638},
pet=1755,
},[[
step
talk Draemus##107326
buy 1 Plump Jelly##129798 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 50 Pet Charms.
learnpet Plump Jelly##98132 |use Plump Jelly##129798
step
_Congratulations!_
You have collected the _Plump Jelly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sewer-Pipe Jelly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Sewer-Pipe Jelly",
model={65637},
pet=1754,
},[[
step
talk Laura Malley##97364
buy 1 Sewer-Pipe Jelly##136904 |n |goto Dalaran L/11 58.16,57.74
|tip This pet costs 250 Sightless Eyes. Sightless Eyes can be obtained by completing objectives in the Underbelly.
learnpet Sewer-Pipe Jelly##98128 |use Sewer-Pipe Jelly##136904 |goto Dalaran L/11 58.16,57.74
step
_Congratulations!_
You have collected the _Sewer-Pipe Jelly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Spring Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Spring Strider",
model={43798},
pet=1739,
},[[
step
The _Spring Strider_ is level 25
|tip It is a strider found around this area.
Challenge one to a pet battle and capture it
learnpet Spring Strider##97559 |goto Val'sharah/0 49.03,69.11
step
_Congratulations!_
You have collected the _Spring Strider_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Sting Ray Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Sting Ray Pup",
model={70937},
pet=1911,
},[[
step
This pet requires both a Good Friend reputation with Conjurer Margoss and 50 Drowned Mana
Gain Good Friend Reputation with Conjurer Margoss |condition rep("Conjurer Margoss")>=GoodFriend |goto Dalaran L/10 22.65,-11.70
|tip To gain reputation with Conjurer Margoss you will need to fish up and turn in Drowned Mana on this Island.
step
Once you are a Good Friend with Conjurer Margoss, you will need to collect 50 more Drowned Mana to buy this pet
Fish from the lake on this island |cast Fishing##131474 |goto Dalaran L/10 22.67,-12.00
collect 50 Drowned Mana##138777 |n
talk Conjurer Margoss##108825
buy 1 Sting Ray Pup##138810 |n |goto Dalaran L/10 23.03,-11.30
learnpet Sting Ray Pup##109216 |use Sting Ray Pup##138810
step
_Congratulations!_
You have collected the _Sting Ray Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Young Mutant Warturtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Aquatic pet: Young Mutant Warturtle",
model={71611},
pet=1912,
},[[
step
This pet can be battled by buying an item in the Underbelly
This item costs 1,500 Sighless Eyes and summons 4 Young Mutant Warturtles
|tip You can either farm for the item to summon these turtles, or you can wait around for someone else to.
Click here to continue |confirm
step
talk Laura Malley##97364
buy 1 Young Mutant Warturtles##139412 |n |goto Dalaran L/11 58.13,57.95
|tip This costs 1,500 Sightless Eyes.
|tip These can be obtained by killing players, killing enemies, or looting chests in the Underbelly.
|tip This item will summon 4 Young Mutant Warturtles.
The _Young Mutant Warturtles_ are level 25
Challenge one to a pet battle and capture it
learnpet Young Mutant Warturtle##110666 |goto Dalaran L/11 58.13,57.95
step
_Congratulations!_
You have collected the _Young Mutant Warturtle_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ash'ana",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ash'ana",
model={37949},
pet=1927,
},[[
step
Earn Revered reputation with the Dreamweavers |condition rep("Dreamweavers")>=Revered
talk Sylvia Hartshorn##106901
buy 1 Ash'ana##23712 |n |goto Val'sharah/0 54.69,73.25
|tip This pet costs 500 gold.
learnpet Ash'ana##17254 |use Ash'ana##23712
step
_Congratulations!_
You have collected the _Ash'ana_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ashmaw Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ashmaw Cub",
model={65070},
pet=1706,
},[[
step
Follow the path |goto Val'sharah/0 56.33,81.10 < 20 |only if walking
Follow the path |goto 56.87,88.04 < 25 |only if walking
Enter the cave |goto Val'sharah/0 53.07,87.82 |walk
talk Shivering Ashmaw Cub##93677
Tell it "I'll save you poor little thing." |goto Val'sharah/0 52.81,87.46
Kill the waves of enemies |q 38889
step
talk Shivering Ashmaw Cub##93677
accept Adopting the Adorable##38889 |goto 52.81,87.46
collect Ashmaw Cub##128690 |n |use Ashmaw Cub##128690
learnpet Ashmaw Cub##96649 |use Ashmaw Cub##128690 |goto 52.81,87.46
step
_Congratulations!_
You have collected the _Ashmaw Cub_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Baby Elderhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Baby Elderhorn",
model={66485},
pet=1884,
},[[
step
Earn Revered reputation with the Highmountain Tribe |condition rep("Highmountain Tribe")>=Revered
talk Ransa Greyfeather##106902
buy 1 Baby Elderhorn##136919 |n |goto Thunder Totem/0 38.25,46.02
|tip This pet costs 500 gold.
learnpet Baby Elderhorn##106152 |use Baby Elderhorn##136919
step
_Congratulations!_
You have collected the _Baby Elderhorn_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Black-Footed Fox Kit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Black-Footed Fox Kit",
model={65389},
pet=1743,
},[[
step
The _Black-Footed Fox Kit_ is level 25
|tip It is a fox that can be found around this area.
Challenge one to a pet battle and capture it
learnpet Black-Footed Fox Kit##97741 |goto Highmountain/0 52.66,43.07
step
_Congratulations!_
You have collected the _Black-Footed Fox Kit_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Burrow Spiderling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Burrow Spiderling",
model={65129},
pet=1726,
},[[
step
The _Burrow Spiderling_ is level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it
learnpet Burrow Spiderling##97236 |goto Highmountain/0 43.54,30.36
step
_Congratulations!_
You have collected the _Burrow Spiderling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Cavern Moccasin",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Cavern Moccasin",
model={74469},
pet=1999,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Cavern Moccasin##143754 |n |use Cavern Moccasin##143754
learnpet Cavern Moccasin##117182
step
_Congratulations!_
You have collected the _Cavern Moccasin_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Corgi Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Corgi Pup",
model={68729},
pet=1890,
},[[
step
This pet was available during the WoW 12th Aniversity Event
|tip You can no longer obtain this pet.
learnpet Corgi Pup##106283 |use Corgi Pup##136925
step
_Congratulations!_
You have collected the _Corgi Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Corgnelius",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Corgnelius",
model={68845},
pet=1929,
},[[
step
This pet is a reward for completing the Order Hall Mission _It's so FLUFFY!_
collect Corgnelius##140320 |n
learnpet Corgnelius##112144 |use Corgnelius##140320
step
_Congratulations!_
You have collected the _Corgnelius_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Crystalline Broodling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Crystalline Broodling",
model={66211},
pet=1809,
},[[
step
The _Crystalline Broodling_ is level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it
learnpet Crystalline Broodling##99527 |goto Suramar/33 50.98,34.09
step
_Congratulations!_
You have collected the _Crystalline Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Dreadmaw",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Dreadmaw",
model={73661},
pet=1952,
},[[
step
Enter the Trial of the Crusader raid |goto Icecrown/0 75.05,21.81 < 5 |c
|tip You can get this pet on any difficulty.
step
kill Icehowl##34797
|tip Icehowl is the first boss in the instance.
collect Giant Worm Egg##142083 |n |use Giant Worm Egg##142083
|tip Giant Worm Egg has a very low chance to drop.
learnpet Dreadmaw##115135
step
_Congratulations!_
You have collected the _Dreadmaw_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Fel Piglet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Fel Piglet",
model={65672},
pet=1760,
},[[
step
talk Draemus##107326
buy 1 Fel Piglet##129760 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 200 Pet Charms.
learnpet Fel Piglet##98185 |use Fel Piglet##129760
step
_Congratulations!_
You have collected the _Fel Piglet_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Felspider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Felspider",
model={72868},
pet=1731,
},[[
step
The _Felspider_ is level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it
learnpet Felspider##97323 |goto Azsuna/0 31.62,52.24
step
_Congratulations!_
You have collected the _Felspider_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Grumpy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Grumpy",
model={65071},
pet=1705,
},[[
step
This pet is a reward for completing the quest _Grumpy_ in Val'sharah |goto Val'sharah/0 38.63,65.66
talk Grumpy##92738
|tip Up the stairs in the building.
|tip Move quickly through the fire.
accept Grumpy##39015 |n
collect Grumpy's Leash##128354 |n
learnpet Grumpy##96622 |use Grumpy's Leash##128354
step
_Congratulations!_
You have collected the _Grumpy_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Leyline Broodling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Leyline Broodling",
model={66212},
pet=1808,
},[[
step
This pet is obtained from the chest at the end of the Withered Army Training scenario
This event is located in Suramar and can be completed every 3 days
|tip You must complete the quest "Building an Army", which is part of the main Suramar quest line.
|tip Check out our Suramar quest line guide to accomplish this.
Click here to continue |confirm
step
When inside the scenario, you will need to extract the chest at the end near First Arcanist Thalyssra
|tip This chest requries 5 Withered to extract.
collect Leyline Broodling##136914 |n
learnpet Leyline Broodling##99526 |use Leyline Broodling##136914
step
_Congratulations!_
You have collected the _Leyline Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Lurking Owl Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Lurking Owl Kitten",
model={71826},
pet=1922,
},[[
step
talk Mayruna Moonwing##103568
accept Feline Frantic##41452 |goto Suramar/0 25.67,30.88
step
click Ransacked Crate
Tidy the Ransacked Crate |q 41452/1 |goto 25.61,30.81
step
click Toppled Bench
Correct the Toppled Bench |q 41452/2 |goto 26.14,31.66
step
click Spilled Grain
Collect the Spilled Grain |q 41452/3 |goto 26.44,31.76
step
click Fallen Wagon
Right the Fallen Wagon |q 41452/4 |goto 26.75,30.62
step
talk Mayruna Moonwing##103568
turnin Feline Frantic##41452 |goto 25.67,30.88
accept Missing Along the Way##41463 |goto 25.67,30.88
step
talk Mardranel Forestheart##103570
accept Homeward Bounding##41453 |goto 25.66,30.93
step
Chase the Lost Owlkitten Across the Bridge |q 41453/1 |goto 24.49,32.03
|tip Position yourself and run towards the Lost Owlkin so that it runs toward the other side of the bridge.
step
Follow the Lost Owlkitten Home |q 41453/2 |goto 21.40,30.50
step
talk Mardranel Forestheart##103570
turnin Homeward Bounding##41453 |goto 21.40,30.62
accept You've Got to Be Kitten Me Right Meow##41197 |goto 21.40,30.62
step
Chase Lost Feathermoon Kittens
|tip They're running around on the ground all around this area.
|tip Position yourself and run towards the Lost Feathermoon Kittens so that they run back to where you picked up the quest.
Herd #7# Lost Feathermane Kittens |q 41197/1 |goto 22.35,28.23
step
talk Mardranel Forestheart##103570
turnin You've Got to Be Kitten Me Right Meow##41197 |goto 21.40,30.62
collect Lurking Owl Kitten##139791 |n
learnpet Lurking Owl Kitten##111421 |use Lurking Owl Kitten##139791
step
_Congratulations!_
You have collected the _Lurking Owl Kitten_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mischief",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Mischief",
model={73353},
pet=1936,
},[[
step
Mischief is available for purchase from the Blizzard store for _$10_
learnpet Mischief##113527 |use Mischief##141893
step
_Congratulations!_
You have collected the _Mischief_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mist Fox Kit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Mist Fox Kit",
model={65390},
pet=1744,
},[[
step
The _Mist Fox Kit_ is level 25
|tip It is a fox found around this area.
Challenge one to a pet battle and capture it
learnpet Mist Fox Kit##97743 |goto Highmountain/0 46.57,32.62
step
_Congratulations!_
You have collected the _Mist Fox Kit_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Nursery Spider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Nursery Spider",
model={65130},
pet=1727,
},[[
step
talk Breanni##96479
buy 1 Nursery Spider##129826 |n |goto Dalaran L/10 58.42,39.26
|tip This pet costs 200 gold.
learnpet Nursery Spider##97238 |use Nursery Spider##129826
step
_Congratulations!_
You have collected the _Nursery Spider_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\River Calf",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: River Calf",
model={55291},
pet=1453,
},[[
step
talk Draemus##107326
buy 1 River Calf##140274 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 50 Pet Charms.
learnpet River Calf##79730 |use River Calf##140274
step
_Congratulations!_
You have collected the _River Calf_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Rose Taipan",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Rose Taipan",
model={65457},
pet=1749,
},[[
step
The _Rose Taipan_ is level 25
|tip It is a snake found all around this area.
Challenge one to a pet battle and capture it
learnpet Rose Taipan##97840 |goto Stormheim/0 52.06,59.86
step
_Congratulations!_
You have collected the _Rose Taipan_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Slithering Brownscale",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Slithering Brownscale",
model={63674},
pet=1736,
},[[
step
The _Slithering Brownscale_ is level 25
|tip It is a snake found around this section of Stormheim.
|tip Search around the base of trees.
Challenge one to a pet battle and capture it
learnpet Slithering Brownscale##97542 |goto Stormheim/0 40.92,35.43
step
_Congratulations!_
You have collected the _Slithering Brownscale_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Snowfang",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Snowfang",
model={73093},
pet=1941,
},[[
step
This pet can only be obtained by Shamans
You must beat Snowfang in combat
Click here to continue |confirm
step
click Snowfang##114064 |goto The Maelstrom L/0 36.19,79.50
Defeat Snowfang in combat
|tip Snowfang is a Epic Beast type.
collect Snowfang's Trust##141530 |n |goto The Maelstrom L/0 36.19,79.50
learnpet Snowfang##114063 |use Snowfang's Trust##141530
step
_Congratulations!_
You have collected the _Snowfang_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Son of Skum",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Son of Skum",
model={76262},
pet=2049,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Son of Skum##147543 |n |use Son of Skum##147543
learnpet Son of Skum##121317
step
_Congratulations!_
You have collected the _Son of Skum_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Spiketail Beaver",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Spiketail Beaver",
model={40713},
pet=1763,
},[[
step
The _Spiketail Beaver_ is level 25
|tip It is a beaver found around this area.
Challenge one to a pet battle and capture it
learnpet Spiketail Beaver##98211 |goto Highmountain/0 41.38,50.53
step
_Congratulations!_
You have collected the _Spiketail Beaver_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Terror Larva",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Terror Larva",
model={30995},
pet=1735,
},[[
step
The _Terror Larva_ is level 25
|tip It is a worm found all around this area.
Challenge one to a pet battle and capture it
learnpet Terror Larva##97531 |goto Val'sharah/0 62.71,42.63
step
_Congratulations!_
You have collected the _Terror Larva_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Thornclaw Broodling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Thornclaw Broodling",
model={66213},
pet=1810,
},[[
step
The _Thornclaw Broodling_ is level 25
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it
learnpet Thornclaw Broodling##99528 |goto Suramar/0 29.96,63.40
step
_Congratulations!_
You have collected the _Thornclaw Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Vicious Broodling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Vicious Broodling",
model={66210},
pet=1807,
},[[
step
The _Vicious Broodling_ is level 25
|tip This is a rare spawn of the Thornclaw Broodling found in the same area.
|tip It is a spider found around this area.
Challenge one to a pet battle and capture it
learnpet Vicious Broodling##99513 |goto Suramar/0 32.83,75.27
step
_Congratulations!_
You have collected the _Vicious Broodling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ban-Fu, Cub of Ban-Lu",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Ban-Fu, Cub of Ban-Lu",
model={75989},
pet=2047,
},[[
step
This pet is only available to Monks |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Monk.
|only if not Monk
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |condition completedq(46246)
|only Monk
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Check out our "7.2 Order Hall Quests" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\7.2 Order Hall Quests"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |condition completedq(46246)
|only Monk
step
This pet can be bought after achieving _Power Ascended_ in one of the 3 specs
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from a single artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only Monk
step
talk Mei Chele##99154
buy 1 Ban-Fu, Cub of Ban-Lu##147542 |n |use Ban-Fu, Cub of Ban-Lu##147542 |goto The Wandering Isle/0 54.8,62.2
|tip This pet costs 1,000 Order Resources.
learnpet Ban-Fu, Cub of Ban-Lu##240794
|only Monk
step
_Congratulations!_
You are now the proud owner of Ban-Fu, Cub of Ban-Lu.
|only Monk
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Mining Monkey",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Mining Monkey",
model={78106},
pet=2064,
},[[
step
This pet is a reward for completing the Pet Battle Challenge: Deadmines achievement
|tip After completing the first run, you will recieve it as a weekly. Completing this weekly for the first time will reward this achievement.
Click here to check out our guide to accomplish this |confirm |or |next "Zygor's Dungeon Guides\\Legion Dungeons\\Pet Battle\\Deadmines"
Complete the _"Pet Battle Challenge: Deadmines"_ achievement |achieve 11856
step
collect Mining Monkey##151632 |n |use Mining Monkey##151632
learnpet Mining Monkey##247452
step
_Congratulations!_
You are now the proud owner of a Mining Monkey.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Twilight",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Beast pet: Twilight",
model={76595},
pet=2051,
},[[
step
This pet can be purchased for $10.00 from the official _Blizzard Store_.
collect Twilight##147900 |n
|tip After purchasing, check your in-game mailbox.
learnpet Twilight##122033 |use Twilight##147900
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Auburn Ringtail",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Auburn Ringtail",
model={64651},
pet=1738,
},[[
step
The _Auburn Ringtail_ is level 25
|tip It is a racoon that can be found around this area.
Challenge one to a pet battle and capture it
learnpet Auburn Ringtail##97555 |goto Val'sharah/0 62.02,72.70
step
_Congratulations!_
You have collected the _Auburn Ringtail_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Blind Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Blind Rat",
model={4960},
pet=1915,
},[[
step
Enter the Underbelly |goto Dalaran L/10 59.65,47.58
The _Blind Rat_ is level 25
|tip This pet can be found anywhere within the Underbelly in Dalaran.
|tip The Blind Rat can be difficult to find, as it can be killed by other players.
|tip Hire a guard to protect you while you capture this pet.
Challenge one to a pet battle and capture it
learnpet Blind Rat##111158 |goto Dalaran L/11 52.26,59.35
step
_Congratulations!_
You have collected the _Blind Rat_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Crispin",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Crispin",
model={65590},
pet=1752,
},[[
step
Follow the path up |goto Highmountain/0 51.96,34.12 < 20 |only if walking
Continue following the path up |goto Highmountain/0 49.98,34.58 < 20 |only if walking
Continue following the path up |goto Highmountain/0 47.98,37.45 < 20 |only if walking
Follow the path |goto Highmountain/0 44.57,39.02 < 25 |only if walking
kill Tenpak Flametotem##97203
collect Crispin##129175 |n |goto Highmountain/0 41.97,41.57
|tip This has a small chance to drop.
learnpet Crispin##98077 |use Crispin##129175
step
_Congratulations!_
You have collected the _Crispin_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dust Bunny",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Dust Bunny",
model={65854},
pet=1778,
},[[
step
click Dusty Rug |goto Dalaran L/10 52.58,30.22
Check the Barber Shop |goto 10 52.55,30.11
Check the Legerdemain Lounge |goto 48.31,40.88
|tip On the second floor.
Check the Magical menagerie |goto 59.09,37.95
Check the courtyard |goto 46.93,18.80
Check Greymane Enclave |goto 30.76,73.73 |only Alliance
Check next to The Filthy Animal |goto 64.25,38.04 |only Horde
|tip These rugs are a rare spawn.
|tip They are circle rugs that can be found here and in other buildings around Dalaran.
|tip Once the rug is clicked, you will receive a buff that will last for 15 minuites. This allows you to see the Dust Bunnies.
The _Dust Bunny_ is level 25
|tip It is a critter found all around Dalaran.
Challenge one to a pet battle and capture it
learnpet Dust Bunny##98506 |goto Dalaran L/10 45.48,34.94
step
_Congratulations!_
You have collected the _Dust Bunny_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Gleamhoof Fawn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Gleamhoof Fawn",
model={71224},
pet=1913,
},[[
step
The _Gleamhoof Fawn_ is level 25
|tip It is a fawn found around this area.
Challenge one to a pet battle and capture it
learnpet Gleamhoof Fawn##110741 |goto Val'sharah/0 52.76,75.16
step
_Congratulations!_
You have collected the _Gleamhoof Fawn_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Mudshell Conch",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Mudshell Conch",
model={45883},
pet=1776,
},[[
step
The _Mudshell Conch_ is level 25
|tip It is a snail found all along the northern coast of Highmountain.
Challenge one to a pet battle and capture it
learnpet Mudshell Conch##98446 |goto Highmountain/0 42.54,9.62
step
_Congratulations!_
You have collected the _Mudshell Conch_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Olivetail Hare",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Olivetail Hare",
model={4626},
pet=1729,
},[[
step
The _Olivetail Hare_ is level 25
|tip It is a rabbit found all around this area.
Challenge one to a pet battle and capture it
learnpet Olivetail Hare##97294 |goto Azsuna/0 60.36,20.25
step
_Congratulations!_
You have collected the _Olivetail Hare_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Rescued Fawn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Rescued Fawn",
model={70663},
pet=1938,
},[[
step
This pet is a reward for completing the pet collection achievement _Broken Isles Safari_
Check out our achievement guides to accomplish this
Click here to continue |confirm
step
Once this achievement is complete, this pet will be in your mailbox
collect Rescued Fawn##141352 |n
learnpet Rescued Fawn##113855 |use Rescued Fawn##141352
step
_Congratulations!_
You have collected the _Rescued Fawn_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Trashy",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Trashy",
model={74520},
pet=2004,
},[[
step
talk Conjurer Margoss##108825
|tip To reach Margoss, you will need to use a Goblin Glider to fly to the island |only if walking
buy 1 Trashy##143842 |n
|tip This pet costs 50 Drowned Mana.
|tip Drowned Mana is fished up in the pond on the island.
learnpet Trashy##117371 |goto Dalaran L/10 23.10,-11.40 |use Trashy##143842
step
_Congratulations!_
You have collected the _Trashy_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Zoom",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Zoom",
model={69896},
pet=1903,
},[[
step
Enter the cave |goto Highmountain/0 42.61,25.37 < 20 |walk
Follow the path |goto Highmountain/31 41.60,60.70 < 15 |walk
Follow the path |goto 58.91,42.30 < 25 |walk
Help Zoom win the snail race in Stonedark Grotto |achieve 10626 |goto 71.84,62.00
|tip You need to block the path of the other snails by standing in front of them.
|tip Using size-increasing items will help you accomplish this.
step
Once this achievement is complete, this pet should be in your mailbox
collect Zoom##137298 |n
learnpet Zoom##107206 |use Zoom##137298
step
_Congratulations!_
You have collected the _Zoom_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sneaky Marmot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Sneaky Marmot",
model={1072},
pet=2063,
},[[
step
This pet is only available to Rogues |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Rogue.
|only if not Rogue
step
To obtain this pet, you will first need to complete the Rogue pickpocketing quest line
Click here to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\Rogue Pickpocketing Quest Line"
Complete the Rogue pickpocketing quest line |condition completedq(47594)
|only Rogue
step
talk Griftah##103792
buy 1 Sneaky Marmot##151569 |n |use Sneaky Marmot##151569
|tip This pet costs 10,000 Coins of Air.
|tip These are obtained by pick pocketing humanoids and demons around the Broken Isles.
learnpet Sneaky Marmot##247123 |goto Dalaran L/4 45.41,26.64
|only Rogue
step
_Congratulations!_
You are now the proud owner of a Sneaky Marmot.
|only Rogue
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Dig Rat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Dig Rat",
model={1418},
pet=2065,
},[[
step
This pet is only available to Rogues |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Rogue.
|only if not Rogue
step
To obtain this pet, you will first need to complete the Rogue pickpocketing quest line
Click here to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\Rogue Pickpocketing Quest Line"
Complete the Rogue pickpocketing quest line |condition completedq(47594)
|only Rogue
step
talk Griftah##103792
buy 1 Dig Rat##151633 |n |use Dig Rat##151633
|tip This pet costs 10,000 Coins of Air.
|tip These are obtained by pick pocketing humanoids and demons around the Broken Isles.
learnpet Dig Rat##247474 |goto Dalaran L/4 45.41,26.64
|only Rogue
step
_Congratulations!_
You are now the proud owner of a Dig Rat.
|only Rogue
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Tricorne",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Tricorne",
model={76956},
pet=2057,
},[[
step
This pet can be bought with the currency obtained from completing the Pet Battle dungeon "Deadmines"
|tip You can only obtain one Old Bottle Cap per week. You will need 2 Old Bottle Caps to purchase this pet.
Check out our Pet Battle dungeon guide to accomplish this |confirm |or |next "Zygor's Dungeon Guides\\Legion Dungeons\\Pet Battle\\Deadmines"
collect 2 Old Bottle Cap##151191 |or
step
talk Marcus "Bagman" Brown##119390
buy 1 Tricorne##150741 |n |use Tricorne##150741
learnpet Tricorne##244440 |goto Westfall/0 41.47,71.13
step
_Congratulations!_
You are now the proud owner of a Tricorne.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Sun Darter Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Critter pet: Sun Darter Hatchling",
model={74529},
pet=382,
},[[
step
To obtain this pet, you will need to get several items
|tip These items are needed to pass challenges that are protecting the location of the Sun Darter Hatchling.
Click here to proceed |confirm
step
First you will need to purchase or craft 6 different Major Protection potions
|tip You may buy these from the AH or craft them with the Alchemy profession, if you have the recipes.
collect 1 Major Arcane Protection Potion##22845
collect 1 Major Holy Protection Potion##22847
collect 1 Major Fire Protection Potion##22841
collect 1 Major Nature Protection Potion##22844
collect 1 Major Frost Protection Potion##22842
collect 1 Major Shadow Protection Potion##22846
step
Next, you will need a Winterfall Firewater potion
|tip This can be bought from the AH or farmed from Winterfall enemies.
kill High Chief Winterfall##10738+, Winterfall Pathfinder##7442+, Winterfall Shaman##7439+, Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+, Winterfall Ursa##7438+
collect Winterfall Firewater##12820 |goto Winterspring/0 25.5,48.5
step
Now you need an Ethereal Oil.
|tip This can be bought from the AH or crafted with the Alchemy profession, if you have the recipe.
collect Ethereal Oil##44958
step
You will also need 10 Pygmy Oil
|tip These can be bought from the AH or crafted with the Alchemy profession, if you have the recipe.
collect 10 Pygmy Oil##40195
step
You will then need a "Little Princess" costume
|tip This can be bought from the AH or bought at the Magical Menagerie in new Dalaran for 1 Pet Charm.
talk Lio the Lioness##98725
collect "Little Princess" Costume##103789 |goto Dalaran L/10 59.31,39.57
step
You will also need a Scroll of Intellect (the level 1 version)
|tip This can be bought from the AH or crafted with the Inscription profession.
collect Scroll of Intellect##955
step
Enter the cave |goto Townlong Steppes/0 21.33,46.93
kill Scotty##66162
|tip If he is not there, wait a few minutes. He has a short respawn timer.
collect Scotty's Lucky Coin##89373 |goto Townlong Steppes/0 21.85,46.08
step
talk Sprinkle Noggenfogger##98844
buy 20 Noggenfogger Elixir##8529 |n
collect 20 Noggenfogger Elixir##8529 |goto Tanaris/0 51.2,29.8
step
Enter Dire Maul North |goto Dire Maul/1 71.1,93.8 < 10000 |c
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.5,90.1	69.3,86.8	62.0,87.2
path	56.3,85.4	43.5,88.4	42.2,78.6
Follow the path |goto 42.2,78.6 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Go through the Gordok Courtyard Door
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	28.1,76.6	27.0,70.0	26.3,57.7
path	23.8,60.4
Follow the path |goto 23.8,60.4 < 6
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
Run up the ramp
click Ogre Tannin Basket
collect Ogre Tannin##18240 |goto 23.1,56.3
step
Jump down here |goto 25.2,58.4
talk Knot Thimblejack##14338
turnin The Gordok Ogre Suit##27120 |goto 28.5,55.8
collect Gordok Ogre Suit##18258 |n
|tip This is a reward for completing this quest.
step
Enter Blackrock Depths |goto Blackrock Depths/1 34.7,78.1 < 10000 |c
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	38.2,76.2	41.2,72.4
Go through the East Garrison Door |goto Blackrock Depths/1 40.7,67.1 < 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
click The Shadowforge Lock
Unlock The Shadowforge Lock |scenariogoal 1/25080 |goto Blackrock Depths/1 40.7,61.4
step
map Blackrock Depths/1
path follow smart; loop off; ants curved; dist 15
path	41.5,65.8	43.1,63.0	45.5,60.2
path	Blackrock Depths/2 46.1,86.6	Blackrock Depths/2 47.7,82.1	Blackrock Depths/2 42.5,73.5
path	Blackrock Depths/2 38.6,76.1	Blackrock Depths/2 36.7,77.9	Blackrock Depths/2 41.5,68.3
path	Blackrock Depths/1 41.1,39.5	Blackrock Depths/1 45.3,37.3	Blackrock Depths/2 45.9,65.9
path	Blackrock Depths/2 50.4,66.5
Follow this path to the Grim Guzzler |goto Blackrock Depths/2 50.4,66.5	< 5
|tip Opening the world map will display an ant trail guiding you through the current floor.
confirm
step
talk Dark Iron Brewer##28067
|tip Select the dialogue options until he passes out.
click Mug of Dire Brew
collect Dire Brew##38320 |goto Blackrock Depths/2 50.0,61.0
step
Now that you have collected all of the materials, you can start going through the challenges to obtain this pet
Enter the cave |goto Winterspring/0 48.74,-2.44 |walk
|tip It is a cave to the very North of Winterspring over the mountains and all the way down on the ground.
|tip You will need a flying mount to get here.
confirm
step
_Warning:_ Make sure you follow the paths
|tip Do not take any shortcuts. It seems that if you drop down at any point during this puzzle, you will get teleported to the beginning.
|tip Go through the cave until you get to the Fire Barrier.
|tip To get through the barrier, you must use your Major Fire Protection Potion.
Use your Major Fire Protection Potion |havebuff 28511 |use Major Fire Protection Potion##22841 |goto Winterspring/0 48.96,0.17
step
Next will be a Fel Barrier
|tip To get through this barrier, you will need to use all of the other Major Protection potions you aquired.
Use your Major Arcane Protection Potion |havebuff 28536 |use Major Arcane Protection Potion##22845 |goto 49.27,0.56
Use your Major Holy Protection Potion |havebuff 28538 |use Major Holy Protection Potion##22847 |goto 49.27,0.56
Use your Major Nature Protection Potion |havebuff 28513 |use Major Nature Protection Potion##22844 |goto 49.27,0.56
Use your Major Frost Protection Potion |havebuff 28512 |use Major Frost Protection Potion##22842 |goto 49.27,0.56
Use your Major Shadow Protection Potion |havebuff 28537 |use Major Shadow Protection Potion##22846 |goto 49.27,0.56
|tip You will have to wait 1 minute in between using each of these potions.
|tip Once you have all of these buffs go through the barrier.
step
The next puzzle requires you to use your Noggenfogger Elixir to walk past a _Diligent Watcher_
|tip It looks like a Gargoyle in a corner along the path, past the Fel Barrier.
|tip Use the elixir as soon as you get past the Fel Barrier.
_Warning:_ You must use the Noggenfogger Elixir until you get the Skeleton disguise buff!
Use your Noggenfogger Elixir |use Noggenfogger Elixir##8529
Gain the skeleton disguise buff |havebuff 16591
step
Once you get past the water, there will be 2 paths: one on the right and one on the left
Use your Scotty's Lucky Coin |use Scotty's Lucky Coin##89373
Take the path on the right with the vines |havebuff 130121
|tip Once past the barrier, click the water coin in the small pond within this room.
|tip DO NOT touch the water.
click Water Stone
|tip It is a very small blue stone in the water.
collect Water Stone##147455 |goto Winterspring/0 47.68,1.47
step
Once the Water Stone is collected, you will need to leave this room
Use the Water Stone |use Water Stone##147455
Go through the Water Barrier |goto Winterspring/0 48.30,2.99
confirm
step
Next, you will need to run by the Stone Watcher. To do this you will need to use your Dire Brew
Use your Dire Brew |use Dire Brew##38320
Gain the Dire Brew buff |havebuff 51010 |goto Winterspring/0 48.67,5.05
step
Run up the left path until you get to the Ethereal Barrier
Use your Ethereal Oil |use Ethereal Oil##44958
Gain the Ethereal Oil buff |havebuff 62408 |goto Winterspring/0 49.67,4.66
step
Go to the Strange Stone |goto Winterspring/0 50.50,4.63
Use your Gordok Ogre Suit |use Gordok Ogre Suit##18258
Use your Winterfall Firewater |use Winterfall Firewater##12820
click Strange Stone##54213
Gain the Winterfall Firewater buff |havebuff 17038
click the dialogue box
confirm
step
Go back out to this gate |goto Winterspring/0 49.55,4.31
Use your Pygmy Oil until you turn into a Pygmy |use Pygmy Oil##40195
Gain the Pygmy Oil buff |havebuff 53806
|tip Once you're a Pygmy, you can run through this gate.
step
Summon your Perky Pug
|tip Apply your Little Princess costume to your Perky Pug.
click the Wisdom Cube |goto Winterspring/0 49.17,3.71
Click the Dialogue box _"Place Hand beneath Cube"_
confirm
step
Go back out the gate and go down the bottom path
|tip Make sure you follow the path down.
_CANCEL_ your Winterfall Firewater buff |nobuff 17038
|tip You can do this by right-clicking the buff icon located on the upper-right corner of your screen.
Once the Winterfall Firewater buff is canceled, use your Scroll of Intellect |use Scroll of Intellect##955
Gain the Intellect buff |havebuff 8096
click Tarnished Plaque##272483
|tip Do this after gaining the buff.
confirm
step
Once you do this, follow the path down to the water, making sure you do not drop down
click Oddly-Colored Egg##272487
|tip Go through the water and click the Oddly-Colored Egg.
collect Sun Darter Hatchling##142223 |n |use Sun Darter Hatchling##142223
learnpet Sun Darter Hatchling##61087
step
_Congratulations!_
You are now the proud owner of a Sun Darter Hatchling.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Dream Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Dream Whelpling",
model={65121},
pet=1722,
},[[
step
Enter the Emerald Dream raid instance |goto Val'sharah/0 56.39,36.97
The _Dream Whelpling_ is level 25
This pet is at the end of the instance after defeating the last boss, _Xavius_
|tip It is a dragonkin found in the last room of the instance.
Challenge one to a pet battle and capture it
learnpet Dream Whelpling##97206
step
_Congratulations!_
You have collected the _Dream Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Infinite Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Infinite Hatchling",
model={74657},
pet=2017,
},[[
step
This pet can only be purchased during the _Mists of Pandaria Timewalking_ week
|tip You will need to collect 2,200 Timewarped Badges by completing timewalking dungeons.
|confirm
step
talk Mistweaver Xia##118828
buy 1 Infinite Hatchling##143953 |n
learnpet Infinite Hatchling##118060 |goto Timeless Isle/0 43.09,55.23 |use Infinite Hatchling##143953
step
_Congratulations!_
You have collected the _Infinite Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Ironbound Proto-Whelp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Ironbound Proto-Whelp",
model={26740},
pet=1956,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Razorscale##33186
|tip Razorscale is across the hall from Ignis the Furnace Master.
collect Ironbound Collar##142087 |n |use Ironbound Collar##142087
|tip Ironbound Collar has a very low chance to drop.
learnpet Ironbound Proto-Whelp##115139
step
_Congratulations!_
You have collected the _Ironbound Proto-Whelp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Nightmare Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Nightmare Whelpling",
model={71945},
pet=1723,
},[[
step
Enter the Emerald Dream raid instance |goto Val'sharah/0 56.39,36.97
This pet is a rare drop from the boss _Dragons of Nightmare_ within the Emerald Dream
collect Nightmare Whelpling##136903 |n
learnpet Nightmare Whelpling##112015 |use Nightmare Whelpling##136903
step
_Congratulations!_
You have collected the _Nightmare Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Stormborne Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Stormborne Whelpling",
model={71835},
pet=1721,
},[[
step
Follow the path |goto Stormheim/0 53.53,83.62 < 20 |only if walking
Follow the path |goto 51.97,80.31 < 20 |only if walking
Follow the path |goto 50.63,76.63 < 20 |only if walking
kill Stormwing Matriarch##91795
collect Stormborne Whelpling##129208 |n
learnpet Stormborne Whelpling##97205 |use Stormborne Whelpling##129208 |goto Stormheim/0 49.58,72.41
step
_Congratulations!_
You have collected the _Stormborne Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Bronze Proto-Whelp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Bronze Proto-Whelp",
model={78222},
pet=2071,
},[[
step
This pet has a chance to drop from Time-Lost Wallets
|tip These can be obtained by running the Death to Chromie scenario.
|tip You have a chance to select the Time-Lost Wallets when using Sands of Time inside the scenario.
Check out our Death to Chromie Portal guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\The Deaths of Chromie Portals"
Or, if you have completed the Portal guide, check out our Death to Chromie Speed Run guide |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\The Deaths of Chromie Speed Run"
|confirm |or
step
collect Time-Lost Wallet##151482+ |n
Open up the Time-Lost Wallet |use Time-Lost Wallet##151482
collect Bronze Proto-Whelp##151829 |n |use Bronze Proto-Whelp##151829
learnpet Bronze Proto-Whelp##248025
step
_Congratulations!_
You have collected the _Bronze Proto-Whelp_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Ageless Bronze Drake",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Dragonkin pet: Ageless Bronze Drake",
model={78261},
pet=2072,
},[[
step
This pet has a chance to drop from Time-Lost Wallets
|tip These can be obtained by running the Death to Chromie scenario.
|tip You have a chance to select the Time-Lost Wallets when using Sands of Time when inside the scenario.
Check out our Death to Chromie Portal guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\The Deaths of Chromie Portals"
Or, if you have completed the Portal guide, check out our Death to Chromie Speed Run guide |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\The Deaths of Chromie Speed Run"
|confirm |or
step
collect Time-Lost Wallet##151482+ |n
Open up the Time-Lost Wallet |use Time-Lost Wallet##151482
collect Ageless Bronze Drake##151828 |n |use Ageless Bronze Drake##151828
learnpet Ageless Bronze Drake##248240
step
_Congratulations!_
You have collected the _Ageless Bronze Drake_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Autumnal Sproutling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Autumnal Sproutling",
model={57823},
pet=1429,
},[[
step
talk Draemus##107326
buy 1 Autumnal Sproutling##113569 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 100 Pet Charms.
learnpet Autumnal Sproutling##83584 |use Autumnal Sproutling##113569
step
_Congratulations!_
You have collected the _Autumnal Sproutling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Broot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Broot",
model={65813},
pet=1777,
},[[
step
This pet can only be obtained by Druids
This requires the Tier 2 Order Hall upgrade ability _Evergreen_
This upgrade allows you to harvest and plant 2 plots every 3 days
|tip Harvesting from these plots has a chance to give you this pet.
Click here to continue |confirm
step
Harvest from the plots in your Druid Order Hall
collect Broot##129362 |n
|tip There is a low chance to obtain this pet from each harvest.
learnpet Broot##98463 |use Broot##129362
step
_Congratulations!_
You have collected the _Broot_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Everliving Spore",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Everliving Spore",
model={74468},
pet=1998,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Everliving Spore##143756 |n |use Everliving Spore##143756
learnpet Everliving Spore##117180
step
_Congratulations!_
You have collected the _Everliving Spore_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Fetid Waveling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Fetid Waveling",
model={66155},
pet=1802,
},[[
step
talk Filandras Mistcaller##94480 |goto Val'sharah/0 67.56,44.87
kill Pollous the Fetid##94485 |goto Val'sharah/0 67.56,44.87
collect Fetid Waveling##130168 |n
learnpet Fetid Waveling##99394 |use Fetid Waveling##130168
step
_Congratulations!_
You have collected the _Fetid Waveling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Magma Rageling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Magma Rageling",
model={73671},
pet=1955,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Ignis the Furnace Master##33118
|tip Ignis the Furnace Master is the final boss of the instance.
collect Red-Hot Coal##142086 |n |use Red-Hot Coal##142086
|tip Red-Hot Coal has a very low chance to drop.
learnpet Magma Rageling##115138
step
_Congratulations!_
You have collected the _Magma Rageling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Nightmare Lasher",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Nightmare Lasher",
model={72085},
pet=1932,
},[[
step
This pet can only be obtained by Druids
This requires the Tier 2 Order Hall Advancement upgrade ability _Evergreen_
This upgrade allows you to harvest and plant 2 plots every 3 days
|tip Harvesting from these plots has a chance to give you this pet.
Click here to continue |confirm
step
Harvest from the plots in your Druid Order Hall
collect Nightmare Lasher##140741 |n
|tip There is a low chance to obtain this pet from each harvest.
learnpet Nightmare Lasher##112798 |use Nightmare Lasher##140741
step
_Congratulations!_
You have collected the _Nightmare Lasher_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Nightmare Treant",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Nightmare Treant",
model={72461},
pet=1933,
},[[
step
This pet is a reward for completing the Pet Battle achievement _Family Familiar_
Check out our achievement guides to accomplish this
Click here to continue |confirm
step
Once this achievement is complete, this pet will be in your mailbox
collect Nightmare Treant##140761 |n
learnpet Nightmare Treant##112945 |use Nightmare Treant##140761
step
_Congratulations!_
You have collected the _Nightmare Treant_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Paradox Spirit",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Paradox Spirit",
model={74700},
pet=2018,
},[[
step
This pet can only be purchased during the _Mists of Pandaria Timewalking_ week
|tip You will need to collect 2,200 Timewarped Badges by completing timewalking dungeons.
|confirm
step
talk Mistweaver Xia##118828
buy 1 Paradox Spirit##143954 |n
learnpet Paradox Spirit##118063 |goto Timeless Isle/0 43.09,55.23 |use Paradox Spirit##143954
step
_Congratulations!_
You have collected the _Paradox Spirit_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Snaplasher",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Snaplasher",
model={73689},
pet=1960,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Freya##32906
|tip Freya is in the room opposite of Kologarn.
collect Blessed Seed##142091 |n |use Blessed Seed##142091
|tip Blessed Seed has a very low chance to drop.
learnpet Snaplasher##115143
step
_Congratulations!_
You have collected the _Snaplasher_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Stormstruck Beaver",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Stormstruck Beaver",
model={47633},
pet=1917,
},[[
step
Check around Stonescar Gorge |goto Stormheim/0 41.77,61.65 < 25 |walk
Check around the waterfall |goto 47.10,61.79 < 25 |walk
Check around Ashlid's Bay |goto 51.95,64.77 < 25 |walk
Check around Amberfal Mesa |goto 47.76,52.41 < 25 |walk
Check around the Weeping Bluffs |goto 34.98,51.66 < 25 |walk
Check around the water |goto 29.25,45.01 < 25 |walk
The _Stormstruck Beaver_ is level 25
|tip This is a rare spawn from the Bucktooth Flappers.
|tip You will find them around the water of the coordinates indicated.
Challenge one to a pet battle and capture it
learnpet Stormstruck Beaver##111172
step
_Congratulations!_
You have collected the _Stormstruck Beaver_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Winter Rageling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Elemental pet: Winter Rageling",
model={73684},
pet=1959,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Hodir##32845
|tip Hodir is down the right passageway after Kologarn
click Cache of Winter##194307
collect Ominous Pile of Snow##142090 |n |use Ominous Pile of Snow##142090
|tip Ominous Pile of Snow has a very low chance to drop.
learnpet Winter Rageling##115142
step
_Congratulations!_
You have collected the _Winter Rageling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Albatross Chick",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Albatross Chick",
model={65066},
pet=1708,
},[[
step
Follow the path |goto Azsuna/0 31.17,45.50 < 25 |only if walking
Follow the path |goto 32.07,41.31 < 25 |only if walking
The _Albatross Chick_ is level 25
|tip It is a bird that can be found around this area.
|tip Some of these are flying in the air and can not be battled. Look for the ones that are close to the ground.
Challenge one to a pet battle and capture it
learnpet Albatross Chick##97018 |goto 30.72,35.67
step
_Congratulations!_
You have collected the _Albatross Chick_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Albino Buzzard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Albino Buzzard",
model={74036},
pet=1984,
},[[
step
You must completed the quest _Battle Pet Tamers: Eastern Kingdoms_ to unlock this quest
Click here to load the Battle Pet quest guide to accomplish this |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Questline" |confirm |only Alliance
Click here to load the Battle Pet quest guide to accomplish this |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Questline" |confirm |only Horde
confirm
step
talk Crysa##115286
accept Crysa's Flyers##45083 |goto Northern Barrens/0 63.59,35.81
step
talk Crysa##115286
Tell him "_Think you can take me in a pet battle? Let's fight!_"
|tip You will not be able to challenge Crysa if you have the "Pet Recovery" debuff, wait for it to fall off.
Defeat Crysa |q 45083/1 |goto 63.59,35.81
step
talk Crysa##115286
turnin Crysa's Flyers##45083 |goto 63.59,35.81
step
collect Torn Sack of Pet Supplies##142447 |n |use Torn Sack of Pet Supplies##142447
|tip The Albino Buzzard has a small chance to drop from the Torn Sack.
learnpet Albino Buzzard##116080 |use Albino Buzzard##142448 |goto Northern Barrens 63.6,35.8
step
_Congratulations!_
You have collected the _Albino Buzzard_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Bloodgazer Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Bloodgazer Hatchling",
model={70068},
pet=1977,
},[[
step
The world quest _Bloodgazer Swarm!_ must be active to earn this pet
confirm
step
talk Nalysse Dawnsorrow##109372
buy 1 Azsunian Grapes##128843 |n
collect 1 Azsunian Grapes##128843 |goto Azsuna/0 47.33,41.35
|tip You will need this later to feed an NPC.
step
kill Bloodgazer Matriarch##115674 |goto 35.57,5.70
|tip Killing the Matriarch will spawn the Orphaned Hatchling.
confirm
step
talk Orphaned Bloodgazer##115741
learnpet Bloodgazer Hatchling##115787 |goto 35.6,7.4
step
_Congratulations!_
You have collected the _Bloodgazer Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Coastal Sandpiper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Coastal Sandpiper",
model={71056},
pet=1914,
},[[
step
The _Coastal Sandpiper_ is level 25
|tip It is a bird found around this area.
Challenge one to a pet battle and capture it
learnpet Coastal Sandpiper##110826 |goto Azsuna/0 54.18,32.77
step
_Congratulations!_
You have collected the _Coastal Sandpiper_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Crackers",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Crackers",
model={58823},
pet=1997,
},[[
step
You must be a Rogue to obtain this pet
confirm
step
talk Maiev Shadowsong##116576
accept Champions of Legionfall##47137
|only Rogue
step
talk Lord Jorach Ravenholdt##101513
accept The Pirate's Bay##46322 |goto Dalaran L/4 41.31,77.29
|only Rogue
step
talk Lilian Voss##119822
turnin The Pirate's Bay##46322 |goto Azsuna/0 57.67,63.46
accept What's the Cache?##46323 |goto Azsuna/0 57.67,63.46
accept False Orders##46324 |goto Azsuna/0 57.67,63.46
|only Rogue
step
talk Fleet Admiral Tethys##118125
accept Loot and Plunder!##45073 |goto 57.65,63.55
|only Rogue
stickystart "Blacksail Booty"
step
Go onto the ship |goto 60.59,68.50 |only if walking
Plant the First False Orders |q 46324/1 |goto 61.01,68.29
|only Rogue
step
Follow the path |goto 60.07,70.87 |only if walking
Plant the Second False Orders |q 46324/2 |goto 59.48,72.60
|only Rogue
step
Follow the path |goto 58.04,76.27 |only if walking
Go onto the ship |goto 58.68,77.42 |only if walking
kill Master Gunner Prix##115242
collect Fel-Infused Gunpowder Cache##142116 |q 46323/1 |goto 59.22,77.93
|only Rogue
step
label "Blacksail Booty"
click Blacksail Booty
Burn 8 Blacksail Booty |q 45073/1
|only Rogue
step
talk Lilian Voss##119822
turnin What's the Cache?##46323 |goto Azsuna/0 57.67,63.46
turnin False Orders##46324 |goto Azsuna/0 57.67,63.46
|only Rogue
step
talk Fleet Admiral Tethys##118125
turnin Loot and Plunder!##45073 |goto 57.65,63.55
|only Rogue
step
talk Crackers##118126
accept Fit For a Pirate##45848 |instant |goto 57.67,63.54
collect Crackers##143679 |n |use Crackers##143679
learnpet Crackers##116871
|only Rogue
step
_Congratulations!_
You have collected the _Crackers_ battle pet
|only Rogue
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Direbeak Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Direbeak Hatchling",
model={70070},
pet=1975,
},[[
step
The world quest _Direbeak Swarm!_ must be active to earn this pet
confirm
step
talk Riala the Hearthwatcher##103796
buy 1 Pungent Vrykul Gamalost##128763 |n
collect 1 Pungent Vrykul Gamalost##128763 |goto Stormheim/0 60.54,50.26
|tip You will need this later to feed an NPC.
step
Follow the path |goto 76.66,57.38 < 25 |only if walking
Follow the path |goto 80.57,63.02 < 25 |only if walking
Follow the path |goto 79.63,70.19 < 25 |only if walking
kill Direbeak Matriarch##115671 |goto 78.16,76.76
|tip Killing the Matriarch will spawn the Orphaned Hatchling.
confirm
step
Follow the path |goto 77.85,71.77 < 20 |only if walking
Drop down |goto 79.74,69.56 < 10 |only if walking
talk Orphaned Direbeak##115742
Select: _"Give the orphaned direbeak some of your Pungent Vrykul Gamalost."_
learnpet Direbeak Hatchling##115785 |goto 79.74,69.56
step
_Congratulations!_
You have collected the _Direbeak Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Echo Batling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Echo Batling",
model={65981},
pet=1761,
},[[
step
Enter the cave |goto Highmountain/0 51.59,37.54 < 15 |walk
The _Echo Batling_ is level 25
|tip These can be found in any of the big caves in Highmountain.
|tip It is a bat found around this area.
Challenge one to a pet battle and capture it
learnpet Echo Batling##88542 |goto 50.05,35.31
step
_Congratulations!_
You have collected the _Echo Batling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Felbat Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Felbat Pup",
model={68859},
pet=1889,
},[[
step
The _Felbat Pup_ was only availble during the Legion Invasion pre-event
|tip These are tradable. If you are looking to get one, check your Auction House. They might be sold there.
collect Felbat Pup##136924 |n
learnpet Felbat Pup##106278 |use Felbat Pup##136924
step
_Congratulations!_
You have collected the _Felbat Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Firebat Pup",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Firebat Pup",
model={68860},
pet=1928,
},[[
step
This pet is a reward for completing the Order Hall Mission _Friends, Not Food_
collect Firebat Pup##140316 |n
learnpet Firebat Pup##112132 |use Firebat Pup##140316
step
_Congratulations!_
You have collected the _Firebat Pup_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Kingfeather",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Fledgling Kingfeather",
model={62219},
pet=1709,
},[[
step
Follow the path up |goto Azsuna/0 39.28,32.70 < 15 |only if walking
The _Fledgling Kingfeather_ is level 25
|tip It is a bird found around this mountaintop.
|tip This is a rare spawn from the other fledgling birds around this area.
Challenge one to a pet battle and capture it
learnpet Fledgling Kingfeather##97076 |goto Azsuna/0 39.28,29.16
step
_Congratulations!_
You have collected the _Fledgling Kingfeather_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Oliveback",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Fledgling Oliveback",
model={62217},
pet=1710,
},[[
step
Follow the path up |goto Azsuna/0 39.28,32.70 < 15 |only if walking
The _Fledgling Oliveback_ is level 25
|tip It is a bird found around this mountaintop.
Challenge one to a pet battle and capture it
learnpet Fledgling Oliveback##97078 |goto Azsuna/0 39.28,29.16
step
_Congratulations!_
You have collected the _Fledgling Oliveback_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Fledgling Warden Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Fledgling Warden Owl",
model={65087},
pet=1716,
},[[
step
Earn Revered reputation with The Wardens |condition rep("The Wardens")>=Revered
talk Marin Bladewing##107379
buy 1 Fledgling Warden Owl##136898 |n |goto Azsuna/0 48.17,73.88
|tip This pet costs 500 gold.
learnpet Fledgling Warden Owl##97128 |use Fledgling Warden Owl##136898
step
_Congratulations!_
You have collected the _Fledgling Warden Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Golden Eaglet",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Golden Eaglet",
model={62218},
pet=1712,
},[[
step
The _Golden Eaglet_ is level 25
|tip It is a bird found around this area.
Challenge one to a pet battle and capture it
learnpet Golden Eaglet##97080 |goto Stormheim/0 62.03,52.76
step
_Congratulations!_
You have collected the _Golden Eaglet_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Hog-Nosed Bat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Hog-Nosed Bat",
model={65982},
pet=1762,
},[[
step
The _Hog-Nosed Bat_ is level 25
|tip It is a bat found around this mountainside.
|tip Kill other battle pets to force respawns.
Challenge one to a pet battle and capture it
learnpet Hog-Nosed Bat##98192 |goto Highmountain/0 52.90,35.35
step
_Congratulations!_
You have collected the _Hog-Nosed Bat_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Long-Eared Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Long-Eared Owl",
model={65089},
pet=1713,
},[[
step
The _Long-Eared Owl_ is level 25
|tip It is a bird found around this area.
Challenge one to a pet battle and capture it
learnpet Long-Eared Owl##97118 |goto Stormheim/0 44.11,45.55
step
_Congratulations!_
You have collected the _Long-Eared Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Nightwatch Swooper",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Nightwatch Swooper",
model={65090},
pet=1715,
},[[
step
talk Draemus##107326
buy 1 Nightwatch Swooper##129878 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 100 Pet Charms.
learnpet Nightwatch Swooper##97127 |use Nightwatch Swooper##129878
step
_Congratulations!_
You have collected the _Nightwatch Swooper_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Northern Hawk Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Northern Hawk Owl",
model={65091},
pet=1714,
},[[
step
The _Northern Hawk Owl_ is level 25
|tip It is a bird found around this area.
Challenge one to a pet battle and capture it
learnpet Northern Hawk Owl##97126 |goto Highmountain/0 55.11,85.66
step
_Congratulations!_
You have collected the _Northern Hawk Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Orphaned Felbat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Orphaned Felbat",
model={68861},
pet=2050,
},[[
step
Earn exalted reputation with Legionfall |condition rep("Legionfall")>=Exalted
|tip Use the "7.2 New Content" guide to accomplish this.
|tip Complete world quests in the Broken Shore.
|tip Use the "World Quests" dailies guide to accomplish this.
step
Once exalted you will need to obtain 10,000 more reputation.
|tip Use the "7.2 New Content" guide to accomplish this.
|tip Complete world quests in the Broken Shore.
|tip Use the "World Quests" dailies guide to accomplish this.
confirm
step
When you get to 10,000 reputation you will recieve a quest.
accept The Bounties of Legionfall##46777
step
talk Captain Ruysantos##120414
turnin The Bounties of Legionfall##46777 |goto Broken Shore/0 42.2,59.0
step
collect Legionfall Chest##147361 |n
Open up your Legionfall Chest |use Legionfall Chest##147361
|tip This pet will have a small chance to be inside.
collect Orphaned Felbat##147841 |use Orphaned Felbat##147841
learnpet Orphaned Felbat##121715
step
_Congratulations!_
You are now the proud owner of a Orphaned Felbat.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Pygmy Owl",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Pygmy Owl",
model={65091},
pet=1907,
},[[
step
talk Lorel Sagefeather##92111 |goto Val'sharah/0 59.80,77.34
Tell her "I will help you defeat Gorebeak."
kill Gorebeak##92117
collect Pygmy Owl##130154 |n
learnpet Pygmy Owl##108568 |use Pygmy Owl##130154 |goto Val'sharah/0 59.80,77.34
step
_Congratulations!_
You have collected the _Pygmy Owl_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Sharptalon Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Sharptalon Hatchling",
model={70069},
pet=1976,
},[[
step
The world quest _Sharptalon Swarm!_ must be active to earn this pet
confirm
step
talk Fialla Sweetberry##96784
buy 1 Dried Bilberries##128837 |n
collect 1 Dried Bilberries##128837 |goto Dalaran L/10 53.05,34.72
|tip You will need this later to feed an NPC.
step
Follow the path |goto Highmountain/0 30.09,40.79 < 25 |only if walking
Follow the path |goto 27.44,41.50 < 25 |only if walking
Follow the path |goto 23.30,43.37 < 25 |only if walking
Follow the path |goto Val'sharah/0 59.36,7.73 < 25 |notravel |only if walking
Follow the path up |goto 49.45,7.85 < 25 |only if walking
kill Sharptalon Matriarch##115671 |notravel |goto 48.05,9.75
|tip Killing the Matriarch will spawn the Orphaned Hatchling.
confirm
step
talk Orphaned Sharptalon##115740
Select: _"Give the orphaned sharptalon some of your Dried Bilberries."_
learnpet Sharptalon Hatchling##115786 |goto 47.05,10.48
step
_Congratulations!_
You have collected the _Sharptalon Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Shimmering Aquafly",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Shimmering Aquafly",
model={65237},
pet=1734,
},[[
step
The _Shimmering Aquafly_ is level 25
|tip It is a glowfly found all around this area.
Challenge one to a pet battle and capture it
learnpet Shimmering Aquafly##97511 |goto Val'sharah/0 53.75,81.20
step
_Congratulations!_
You have collected the _Shimmering Aquafly_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Skyhorn Nestling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Skyhorn Nestling",
model={62216},
pet=1711,
},[[
step
Follow the path up |goto Highmountain/0 51.65,43.96 < 20 |only if walking
Enter the cave |goto Highmountain/0 51.58,37.40 < 15 |walk
talk Oren Windstrider##94068
accept Fledgling Worm Guts##40069 |goto 50.89,36.58
accept Eagle Egg Recovery##40070 |goto 50.89,36.58
accept Tamer Takedown##40071 |goto 50.89,36.58
stickystart "Eagle_Eggs"
step
Cross the bridge |goto 50.31,35.69 < 15 |walk
Follow the path down |goto 48.83,35.30 < 20 |walk
kill Fledgling Rockcrawler##98038+
collect 12 Worm Guts##137569 |q 40069/1 |goto 49.51,36.57
step
label "Eagle_Eggs"
click Eagle Eggs
|tip They look like big white eggs on the ground around this area.
collect 10 Eagle Egg##128760 |q 40070/1 |goto 49.91,36.03
step
Walk onto the bridge |goto 49.40,38.04 < 15 |walk
talk Oren Windstrider##94068
turnin Fledgling Worm Guts##40069 |goto 49.46,39.23
turnin Eagle Egg Recovery##40070 |goto 49.46,39.23
accept Going Down, Going Up##42425 |goto 49.46,39.23
step
Follow the path |goto 49.69,40.59 < 20 |walk
kill Tamer Korgrul##94051 |q 40071/1 |goto 49.11,42.25
step
Follow the path |goto 49.51,41.68 < 20 |walk
Walk onto the bridge |goto 49.60,40.14 < 15 |walk
talk Oren Windstrider##94068
turnin Tamer Takedown##40071 |goto 49.46,39.23
step
click Oren's Rappel Point
|tip You will be lowered down by a rope.
click Oren's Prized Possessions
|tip It's an object sitting in the water directly below you.
|tip You will be pulled back up automatically.
collect Oren's Prized Possessions##137566 |q 42425/1 |goto 49.45,39.30
step
talk Oren Windstrider##94068
turnin Going Down, Going Up##42425 |goto 49.46,39.23
accept Empty Nest##39305 |goto 49.46,39.23
step
Follow the path up |goto 48.81,35.95 < 15 |walk
Cross the bridge |goto 49.69,34.82 < 15 |walk
Leave the cave |goto 51.50,37.31 < 20 |walk
Run up the rocks here |goto 51.92,36.43 < 10 |only if walking
click Eagle Egg
|tip It's on top of the cave entrance.
Place the Eagle Eggs |q 39305/1 |goto 51.70,36.78
step
Enter the cave |goto 51.58,37.40 < 15 |walk
talk Oren Windstrider##94068
turnin Empty Nest##39305 |goto 50.90,36.60
collect Skyhorn Nestling##129277 |n
learnpet Skyhorn Nestling##97079 |use Skyhorn Nestling##129277
step
_Congratulations!_
You have collected the _Skyhorn Nestling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Snowfeather Hatchling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Snowfeather Hatchling",
model={70071},
pet=1974,
},[[
step
The world quest _Snowfeather Swarm!_ must be active to earn this pet
confirm
step
talk Marius Felbane##108504
buy 1 Smoked Elderhorn##128839 |n
collect 1 Smoked Elderhorn##128839 |goto Highmountain/0 29.74,40.15
|tip You will need this later to feed an NPC.
step
kill Snowfeather Matriarch##115673 |goto 35.2,21.4
|tip Killing the Matriarch will spawn the Orphaned Hatchling.
confirm
step
talk Orphaned Snowfeather##115737
Select: _"Give the orphaned snowfeather some of your Smoked Elderhorn."_
learnpet Snowfeather Hatchling##115784 |goto 32.6,28.2
step
_Congratulations!_
You have collected the _Snowfeather Hatchling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Vale Flitter",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Vale Flitter",
model={51292},
pet=1737,
},[[
step
The _Vale Flitter_ is level 25
|tip They are flying mobs around this area.
Challenge one to a pet battle and capture it
learnpet Vale Flitter##97547 |goto Val'sharah/0 47.93,77.43
step
_Congratulations!_
You have collected the _Vale Flitter_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Young Venomfang",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Flying pet: Young Venomfang",
model={74472},
pet=2000,
},[[
step
Complete the Wailing Caverns daily quest
collect Damp Pet Supplies##143753 |n
Open up the Damp Pet Supplies |use Damp Pet Supplies##143753
|tip There is a chance for this pet to be within this bag of pet supplies.
collect Young Venomfang##143755 |n |use Young Venomfang##143755
learnpet Young Venomfang##117184
step
_Congratulations!_
You have collected the _Young Venomfang_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Snobold Runt",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Snobold Runt",
model={73663},
pet=1953,
},[[
step
Enter the Trial of the Crusader raid |goto Icecrown/0 75.05,21.81 < 5 |c
|tip You can get this pet on any difficulty.
step
kill Icehowl##34797
|tip Icehowl is the last boss in the instance.
collect Magnataur Hunting Horn##142084 |n |use Magnataur Hunting Horn##142084
|tip Magnataur Hunting Horn has a very low chance to drop.
learnpet Snobold Runt##115136
step
_Congratulations!_
You have collected the _Snobold Runt_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Squirky",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Squirky",
model={72660},
pet=1935,
},[[
step
_Squirky_ is level 25
|tip Many Squirkies can be found on this small island.
Challenge one to a pet battle and capture it
|tip This island is swarming with elite Murlocs, so watch out!
learnpet Squirky##225663 |goto Azsuna/0 19.56,21.57
step
_Congratulations!_
You have collected the _Squirky_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sunborn Val'kyr",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Sunborn Val'kyr",
model={69254},
pet=1885,
},[[
step
Earn Revered reputation with the Valarjar |condition rep("Valarjar")>=Revered
talk Valdemar Stormseeker##106904
buy 1 Sunborn Val'kyr##136920 |n |goto Stormheim/0 60.28,51.35
|tip This pet costs 500 gold.
learnpet Sunborn Val'kyr##106181 |use Sunborn Val'kyr##136920
step
_Congratulations!_
You have collected the _Sunborn Val'kyr_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Thistleleaf Adventurer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Thistleleaf Adventurer",
model={66147},
pet=1803,
},[[
step
This pet has a small chance to drop from the Dreamweaver Provisions emissary quest reward
|tip Emissary quests are available once a day and vary between 6 different factions.
|tip This Emissary cache is rewarded for completing 4 Dreamweaver world quests when the Dreamweaver emissary quest is active.
Click here to continue |confirm
step
talk Sylvia Hartshorn##106901
turnin The Dreamweavers##42170 |goto Val'sharah/0 54.70,73.25
Open the Dreamweaver Provisions |use Dreamweaver Provisions##137560
collect Thistleleaf Adventurer##130167 |n
learnpet Thistleleaf Adventurer##99389 |use Thistleleaf Adventurer##130167
step
_Congratulations!_
You have collected the _Thistleleaf Adventurer_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Wyrmy Tunkins",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Humanoid pet: Wyrmy Tunkins",
model={69532},
pet=1887,
},[[
step
This pet is a reward for demon Archaeology solves
|tip Keep solving demon artifacts until you encounter the rare that rewards Wyrmy Tunkins.
collect Wyrmy Tunkins##136922 |n
learnpet Wyrmy Tunkins##106232 |use Wyrmy Tunkins##136922
step
_Congratulations!_
You have collected the _Wyrmy Tunkins_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Blood Boil",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Blood Boil",
model={73699},
pet=1964,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Deathbringer Saurfang##37813
|tip Deathbringer Saurfang is the fourth boss in the instance.
collect Remains of a Blood Beast##142095 |n |use Remains of a Blood Beast##142095
|tip The Remains of a Blood Beast has a very low chance to drop.
learnpet Blood Boil##115147
step
_Congratulations!_
You have collected the _Blood Boil_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Celestial Calf",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Celestial Calf",
model={68858},
pet=1888,
},[[
step
talk Mad Merchant##108468
|tip This is a rare spawn merchant.
|tip Once something is bought from the Mad Merchant, he will stick around for about another hour and then disappear, reseting his respawn timer.
buy 1 Celestial Calf##136923 |n |goto Dalaran L/10 43.31,46.80
|tip This pet costs 1,000,000 gold.
learnpet Celestial Calf##106270 |use Celestial Calf##136923
step
_Congratulations!_
You have collected the _Celestial Calf_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Court Scribe",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Court Scribe",
model={72239},
pet=1931,
},[[
step
Earn Revered reputation with the Court of Farondis |condition rep("Court of Farondis")>=Revered
talk Veridis Fallon##107376
buy 1 Court Scribe##140672 |n |goto Azsuna/0 46.91,41.41
|tip This pet costs 500 gold.
learnpet Court Scribe##112728 |use Court Scribe##140672
step
_Congratulations!_
You have collected the _Court Scribe_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Creeping Tentacle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Creeping Tentacle",
model={73694},
pet=1962,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Yogg-Saron##33288
|tip Yogg-Saron is the final boss of the instance.
collect Wriggling Darkness##142093 |n |use Wriggling Darkness##142093
|tip The Wriggling Darkness has a very low chance to drop.
learnpet Creeping Tentacle##115145
step
_Congratulations!_
You have collected the _Creeping Tentacle_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eldritch Manafiend",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Eldritch Manafiend",
model={65716},
pet=1774,
},[[
step
The _Eldritch Manafiend_ is level 25
|tip This pet only spawns during the night time.
|tip This pet can be found all around the Ley Ruins area.
Challenge one to a pet battle and capture it
learnpet Eldritch Manafiend##98386 |goto Azsuna/0 55.86,15.33
step
_Congratulations!_
You have collected the _Eldritch Manafiend_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Erudite Manafiend",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Erudite Manafiend",
model={65715},
pet=1773,
},[[
step
The _Erudite Manafiend_ is level 25
|tip This pet only spawns during the day time.
|tip This pet can be found all around the Ley Ruins area.
Challenge one to a pet battle and capture it
learnpet Erudite Manafiend##98385 |goto Azsuna/0 55.86,15.33
step
_Congratulations!_
You have collected the _Erudite Manafiend_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Extinguished Eye",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Extinguished Eye",
model={65113},
pet=1717,
},[[
step
Earn Revered reputation with The Nightfallen |condition rep("The Nightfallen")>=Revered
talk First Arcanist Thalyssra##97140
|tip This NPC's position may differ depending on your progression in Suramar.
buy 1 Extinguished Eye##136899 |n |goto Suramar/0 36.50,46.81
|tip This pet costs 500 gold.
learnpet Extinguished Eye##97174 |use Extinguished Eye##136899
step
_Congratulations!_
You have collected the _Extinguished Eye_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Eye of Inquisition",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Eye of Inquisition",
model={65112},
pet=1719,
},[[
step
kill Felsoul Inquisitor##101878+, Overburdened Taskmaster##106348+, Felsoul Doomguard##100047+, Legion Endbringer##99762+, Wrathguard Fury##99581+, Ravenous Magehunter##99584+, Abhorrent Artificer##106339+, Felsoul Corrupter##110805+
|tip This has around a 0.4% chance to drop.
collect Eye of Inquisition##136901 |n
learnpet Eye of Inquisition##97179 |use Eye of Inquisition##136901 |goto Suramar/0 29.33,61.21
step
_Congratulations!_
You have collected the _Eye of Inquisition_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Hateful Eye",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Hateful Eye",
model={65111},
pet=1718,
},[[
step
This pet can only be obtained by Demon Hunters and Warlocks
This requires the Tier 2 Order Hall upgrade ability _Twisting Nether_ for Demon Hunters and _Demonic Offering_ for Warlocks
|tip This upgrade allows you to summon demon bosses that drop various items, including this pet
Click here to continue |confirm
step
Kill the summoned demons
collect Hateful Eye##136900 |n
|tip There is a low chance to obtain this pet from each kill.
learnpet Hateful Eye##97178 |use Hateful Eye##136900
step
_Congratulations!_
You have collected the _Hateful Eye_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Hungering Claw",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Hungering Claw",
model={71938},
pet=1926,
},[[
step
talk Drak'thul##102695 |goto Broken Shore/0 37.08,71.62
|tip Glide down from Dalaran, or buy Water Walking potions to reach him.
Speak with him until he has no more dialogue available
Click here to continue |confirm
step
Follow the path |goto 39.31,77.36 < 30
Follow the path |goto 40.77,77.81 < 30
Follow the path |goto 42.91,74.03 < 30
Follow the path |goto 45.35,69.45 < 30
Follow the path |goto 50.30,64.29 < 30
Follow the path |goto 53.70,59.74 < 30
Follow the path |goto 54.61,53.78 < 30
Enter the cave |goto Broken Shore/0 58.54,54.14 < 30
|tip You can relog to try and get the rocks to disappear if it is blocked off.
|tip You can also die nearby and rez on the other side.
click Mound of Dirt##6478
collect Weathered Relic##139783 |goto 57.40,55.95
|tip It is very difficult to see. It's at the base of the far right bone in the back.
step
Follow the path |goto 51.64,53.24 < 30
Follow the path |goto 54.22,56.63 < 30
Follow the path |goto 53.53,61.42 < 30
Follow the path |goto 50.74,68.94 < 30
Follow the path |goto 39.11,74.66 < 30
Follow the path |goto 37.41,74.29 < 30
talk Drak'thul##102695
Talk with Drak'thul |goto Broken Shore/0 37.08,71.62
Speak with him until he has no more dialogue available
|tip You will need to speak with him multiple times.
Click here to continue |confirm
step
For the next portion of the guide, you _MUST_ attune yourself with the orbs in the order that they are given
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 37.97,37.41 < 15
|tip The entrance is a bit hidden amongst bushes.
click Hungering Orb
Attune yourself with the Hungering Orb |goto 37.94,35.47
Click here to continue |confirm
step
Follow the path |goto Suramar/0 63.18,34.59 < 10 |notravel
Follow the path |goto 62.54,34.02 < 10 |notravel
Follow the path |goto 62.70,33.17 < 10 |notravel
Enter the cave |goto Stormheim/0 32.79,75.66 < 10 |notravel
click Hungering Orb
Attune yourself with the Hungering Orb |goto Stormheim/0 31.95,74.06
|tip The mob in the cave will likely one shot you, so try to avoid it.
Click here to continue |confirm
step
Follow the path |goto Val'sharah/0 41.39,79.70 < 10
Enter the hidden cave |goto 41.50,81.37 < 10
Go through the narrow passage |goto 41.48,82.11 < 10
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 41.93,81.70
|tip There will be an elite that hits fairly hard, try and keep it stunned.
Click here to continue |confirm
step
Enter the cave |goto Broken Shore/0 29.64,78.06 < 15
|tip It is underwater.
|tip You will be fatigued until you go a bit further into the cave.
click Hungering Orb##6478
Attuned yourself with the Hungering Orb |goto 32.98,74.62
|tip Avoid the steam coming out of the ground.
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 59.37,13.15 < 10
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 60.13,14.59
Click here to continue |confirm
step
Enter cave |goto Broken Shore/0 116.60,-210.00 < 30
Swim underwater |goto Broken Shore/0 116.10,-206.00 < 30
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 115.90,-205.00
|tip Avoid the steam on the ground.
|tip It will start to mist up when the steam vents are about to shoot.
Click here to continue |confirm
step
Follow the path |goto Highmountain/0 52.39,40.67 < 20
Follow the path |goto Highmountain/0 52.33,38.62 < 20
Follow the path |goto 52.42,36.22 < 20
Follow the path |goto 53.68,35.56 < 20
Follow the path |goto 55.14,37.52 < 20
Jump down here |goto 55.12,38.57 < 20
|tip Use a glider if you have one.
Enter the hidden cave |goto 55.84,38.37 < 5
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 55.80,37.92
|tip It's inside of the bones on the ground.
Click here to continue |confirm
step
Enter the hidden cave |goto Azsuna/0 54.06,26.20 < 10
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 54.36,24.37
Click here to continue |confirm
step
You will need to glide down from Dalaran if you don't have an Eye of Azshara flight path already
|tip If you already have this flight path, take it.
Follow the path |goto Dalaran L/10 78.76,46.55 < 20
Follow the path |goto 73.44,86.12 < 20
Glide down to Eye of Azshara from here |goto 62.27,99.09 < 30
Reach Eye of Azshara |goto Eye of Azshara Map/0 45.38,-2.13 |notravel
Follow the path |goto Eye of Azshara Map/0 38.25,46.10 < 30
Follow the path |goto 43.83,54.07 < 30
Follow the path |goto 45.16,60.95 < 30
Follow the path |goto 46.22,65.87 < 30
Follow the path |goto 48.62,67.49 < 30
Follow the path |goto 52.00,67.63 < 30
Follow the path |goto 56.86,67.81 < 30
Follow the path |goto 61.01,64.57 < 30
Follow the path |goto 62.62,61.19 < 30
Follow the path |goto 64.43,58.43 < 30
Follow the path |goto 68.51,59.35 < 30
Follow the path |goto 70.86,64.19 < 30
Follow the path |goto 74.29,71.84 < 30
Follow the path |goto 75.91,78.58 < 30
Enter the ship |goto 79.19,89.02 < 5
|tip the Entrance is slightly hidden.
Navigate through and swim through the second hidden hole |goto 77.55,88.96 < 5
|tip Swim up, then back down towards the destination.
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto 75.02,83.36
Click here to continue |confirm
step
click Hungering Orb##6478
Attune yourself with the Hungering Orb |goto Broken Shore/0 37.49,71.62
|tip Glide down from Dalaran, or buy Water Walking potions to reach him.
Click here to continue |confirm
step
Once you have followed the previous steps, a World Quest for Kosumoth the Hungering will appear in the Eye of Azshara World Map
The reward for the quest resets every 2 weeks, so you will need to wait patiently if what you want isn't available
accept DANGER: Kosumoth the Hungering##43798 |goto Eye of Azshara Map/0 46.6,49.2
step
kill Kosumoth the Hungering##111573 |q 43798/1 |goto Eye of Azshara Map/0 46.6,49.2
|tip He patrols around.
collect Hungering Claw##140261 |n
learnpet Hungering Claw##111984 |use Hungering Claw##140261
step
_Congratulations!_
You have collected the _Hungering Claw_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Sanctum Cub",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Sanctum Cub",
model={29819},
pet=1958,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Auriaya##33515
|tip Auriaya patrols the ring past Kologarn.
collect Glittering Ball of Yarn##142089 |n |use Glittering Ball of Yarn##142089
|tip Glittering Ball of Yarn has a very low chance to drop.
learnpet Sanctum Cub##115141
step
_Congratulations!_
You have collected the _Sanctum Cub_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Stardust",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Stardust",
model={68857},
pet=1969,
},[[
step
Complete the _Raiding with Leashes IV: Wrath of the Lich King_ achievement |achieve 11320
|tip You will receive a Celestial Invitation in the mail.
step
collect Celestial Invitation##142210 |n
|tip Retrieve this from your mailbox.
accept Celestial Invitation##44767
step
talk Algalon the Observer##115307
Challenge Algalon to a pet battle and defeate him |q 44767/1 |goto The Storm Peaks/0 41.6,24.4
step
talk Algalon the Observer##115307
turnin Celestial Invitation##44767 |goto 41.6,24.4
step
collect Stardust##142100 |n |use Stardust##142100
learnpet Stardust##115158
step
_Congratulations!_
You have collected the _Stardust_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Wonderous Wisdomball",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Magic pet: Wonderous Wisdomball",
model={73463},
pet=1937,
},[[
step
This pet is rewarded for completing a small quest line from the Strange Humming Crystal item
|tip The Strange Humming Crystal has a chance to drop from Kirin Tor Chests.
|tip Emissary quests are available once a day and vary between 6 different factions.
|tip This emissary chest is rewarded for completing 4 Kirin Tor world quests when the Kirin Tor Emissary quest is active.
Click here to continue |confirm
step
Open the Kirin Tor Chest |use Kirin Tor Chest##141350
|tip Complete Kirin Tor Emissary quests to acquire these chests.
collect Strange Humming Crystal##141349 |n
|tip This has a small chance to be in this chest.
accept Strange Humming Crystal##141349
step
talk Archmage Khadgar##90417
turnin Strange Humming Crystal##141349 |goto Dalaran L/10 28.56,48.35
accept Enemies Everywhere##44412 |goto Dalaran L/10 28.56,48.35
step
Enter the Underbelly |goto Dalaran L/10 34.87,45.49
talk Classic Larry##113784
Tell him that you know his secret
kill Classic Larry##113784 |q 44412/5 |goto Dalaran L/11 19.21,58.25
|tip He has around 10 million HP.
step
talk Punchy Lou##113775
|tip He is inside the Lounge.
Tell him that you know his secret
kill Punchy Lou##113775 |q 44412/1 |goto Dalaran L/10 47.05,38.36
|tip He has around 10 million HP.
|tip Run away from him when he jumps around like crazy.
step
talk Li-An Skymirror##113781
Tell her that you know her secret
kill Li-An Skymirror##113781 |q 44412/6 |goto Dalaran L/10 44.72,23.81
|tip She has around 10 million HP.
|tip Interrupt her heal.
step
talk Savash Windcalller##113783
Tell her that you know her secret
kill Savash Windcalller##113783 |q 44412/3 |goto Dalaran L/10 57.97,42.28
|tip She has around 10 million HP.
step
talk Innocent Jim##113780
Tell him that you know his secret
kill Innocent Jim##113780 |q 44412/7 |goto Dalaran L/10 65.35,46.36
|tip He has around 10 million HP.
step
talk Sister Might##113779
|tip She is in the Arsenal building on the 2nd floor.
Tell her that you know her secret
kill Sister Might##113779 |q 44412/8 |goto Dalaran L/10 55.32,64.46
|tip She has around 10 million HP.
step
talk Hannis Shoalwalker##113782
Tell her that you know her secret
kill Hannis Shoalwalker##113782 |q 44412/2 |goto Dalaran L/10 52.33,67.13
|tip She has around 10 million HP.
step
talk Hugh Mann##113785
Tell him that you know his secret
kill Hugh Mann##113785 |q 44412/4 |goto Dalaran L/10 45.53,76.72
|tip He has around 10 million HP.
step
talk Archmage Khadgar##90417
turnin Enemies Everywhere##44412 |goto Dalaran L/10 28.56,48.35
collect Wonderous Wisdomball##141348 |n
learnpet Wonderous Wisdomball##113827 |use Wonderous Wisdomball##141348
step
_Congratulations!_
You have collected the _Wonderous Wisdomball_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Alarm-o-Bot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Alarm-o-Bot",
model={74484},
pet=1805,
},[[
step
talk Draemus##107326
buy 1 Alarm-o-Bot##136910 |n |goto Dalaran L/10 58.75,39.17
|tip This costs 200 Pet Charms.
learnpet Alarm-o-Bot##99425 |use Alarm-o-Bot##136910
step
_Congratulations!_
You have collected the _Alarm-o-Bot_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\G0-R41-0N Ultratonk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: G0-R41-0N Ultratonk",
model={73692},
pet=1961,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Mimiron##33350
|tip Mimiron is down the upper-left passageway.
click Cache of Innovation##194789
collect Overcomplicated Controller##142092 |n |use Overcomplicated Controller##142092
|tip Overcomplicated Controller has a very low chance to drop.
learnpet G0-R41-0N Ultratonk##115144
step
_Congratulations!_
You have collected the _G0-R41-0N Ultratonk_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Knockoff Blingtron",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Knockoff Blingtron",
model={59042},
pet=1806,
},[[
step
This pet is obtained through the new Blingtron daily quest
|tip Engineers can put these down and anyone can recieve the gift package once it is placed.
talk Blingtron 6000##101527
collect Blingtron 6000 Gift Package##132892 |n |use Blingtron 6000 Gift Package##132892
collect Knockoff Blingtron##136911 |n
learnpet Knockoff Blingtron##99505 |use Knockoff Blingtron##136911
step
_Congratulations!_
You have collected the _Knockoff Blingtron_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Runeforged Servitor",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Runeforged Servitor",
model={73673},
pet=1957,
},[[
step
Enter the Ulduar raid |goto The Storm Peaks/0 41.56,17.79 < 15 |c
|tip You can get this pet on any difficulty.
step
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
kill Stormcaller Brundir##32857
|tip The Assembly of Iron encounter comes after XT-002 Deconstructor.
collect Stormforged Rune##142088 |n |use Stormforged Rune##142088
|tip Stormforged Rune has a very low chance to drop.
learnpet Runeforged Servitor##115140
step
_Congratulations!_
You have collected the _Runeforged Servitor_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pocket Cannon",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Pocket Cannon",
model={75498},
pet=2041,
},[[
step
This pet can be bought with the currency obtained from completing the Pet Battle dungeon "Deadmines"
|tip You can only obtain one Old Bottle Cap per week. You will need 3 Old Bottle Caps to purchase this pet.
Check out our Pet Battle dungeon guide to accomplish this |confirm |or |next "Zygor's Dungeon Guides\\Legion Dungeons\\Pet Battle\\Deadmines"
collect 3 Old Bottle Cap##151191 |or
step
talk Marcus "Bagman" Brown##119390
buy 1 Pocket Cannon##150739 |n |use Pocket Cannon##150739
learnpet Pocket Cannon##244345 |goto Westfall/0 41.47,71.13
step
_Congratulations!_
You are now the proud owner of a Pocket Cannon.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Pet Reaper 0.9",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Pet Reaper 0.9",
model={45555},
pet=2058,
},[[
step
This pet can be bought with the currency obtained from completing the Pet Battle dungeon "Deadmines"
|tip You can only obtain one Old Bottle Cap per week. You will need 1 Old Battle Cap to purchase this pet.
Check out our Pet Battle dungeon guide to accomplish this |confirm |or |next "Zygor's Dungeon Guides\\Legion Dungeons\\Pet Battle\\Deadmines"
collect 1 Old Bottle Cap##151191 |or
step
talk Marcus "Bagman" Brown##119390
buy 1 Pet Reaper 0.9##150742 |n |use Pet Reaper 0.9##150742
learnpet Pet Reaper 0.9##244466 |goto Westfall/0 41.47,71.13
step
_Congratulations!_
You are now the proud owner of a Pet Reaper 0.9.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Micronax",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Mechanical pet: Micronax",
model={78587},
pet=666,
},[[
step
This pet is obtained when completing the "Tomb of Sargeras" raid meta achievement
Complete the Tomb of Sargeras raid meta achievement _Glory of the Tomb Raider_ |achieve 11763
step
collect Micronax Controller##101426 |n
|tip Once this achievement is completed, check your in-game mail.
learnpet Micronax##249870 |use Micronax Controller##101426
step
_Congratulations!_
You are now the proud owner of a Micronax.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Blightbreath",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Blightbreath",
model={73704},
pet=1965,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Professor Putricide##36678
|tip You must kill Festergut and Rotface before you can access Putricide.
|tip Be sure to turn the valve in each room as you leave.
collect Putricide's Alchemy Supplies##142096 |n |use Putricide's Alchemy Supplies##142096
|tip The Remains of a Blood Beast has a very low chance to drop.
learnpet Blightbreath##115148
step
_Congratulations!_
You have collected the _Blightbreath_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Boneshard",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Boneshard",
model={73697},
pet=1963,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Lord Marrowgar##36612
|tip Lord Marrowgar is the first boss in the instance.
collect Fragment of Frozen Bone##142094 |n |use Fragment of Frozen Bone##142094
|tip The Fragment of Frozen Bone has a very low chance to drop.
learnpet Boneshard##115146 |use Fragment of Frozen Bone##142094
step
_Congratulations!_
You have collected the _Boneshard_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Drudge Ghoul",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Drudge Ghoul",
model={73707},
pet=1967,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill The Lich King ##36853
collect Drudge Remains##142098 |n |use Drudge Remains##142098
|tip The Drudge Remains has a very low chance to drop.
learnpet Drudge Ghoul##115150
step
_Congratulations!_
You have collected the _Drudge Ghoul_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Nerubian Swarmer",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Nerubian Swarmer",
model={59766},
pet=1954,
},[[
step
Enter the Trial of the Crusader raid |goto Icecrown/0 75.05,21.81 < 5 |c
|tip You can get this pet on any difficulty.
step
kill Anub'arak##34564
|tip Anub'arak is the last boss in the instance.
collect Nerubian Relic##142085 |n |use Nerubian Relic##142085
|tip Nerubian Relic has a very low chance to drop.
learnpet Nerubian Swarmer##115137
step
_Congratulations!_
You have collected the _Nerubian Swarmer_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Risen Saber Kitten",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Risen Saber Kitten",
model={66157},
pet=1804,
},[[
step
kill Darkshade##92965
collect Risen Saber Kitten##130166 |n |goto Val'sharah/0 43.92,52.94
learnpet Risen Saber Kitten##99403 |use Risen Saber Kitten##130166
step
_Congratulations!_
You have collected the _Risen Saber Kitten_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Scraps",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Scraps",
model={75766},
pet=2042,
},[[
step
Complete the Excavator Karla Quest Line
|tip Check out our Broken Shore Excavator Karla Quests to accomplish this.
confirm
|only if not completedq(46666)
step
click Peculiar Rope |goto Broken Shore/0 47.86,67.38
Enter the Secret Treasure Lair |goto 44.33,52.10 < 5 |noway |c
step
talk Treasure Master Iks'reeged##120076
buy Wyrmtongue's Cache Key##143559 |n |goto 45.00,52.16
|tip These cost 2,000 Nethershards each.
Choose any chest in this room
click Curious Wyrmtongue Chest
|tip This pet has a very low chance to be within these chests.
collect Scraps##146953 |use Scraps##146953
learnpet Scraps##120397
step
_Congratulations!_
You are now the proud owner of Scraps.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Soulbroken Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Soulbroken Whelpling",
model={73706},
pet=1966,
},[[
step
Enter the Icecrown Citadel raid |goto Icecrown/0 53.82,87.11 < 10 |c
|tip You can get this pet on any difficulty.
step
kill Sindragosa ##36853
|tip Sindragosa is the last boss before the Lich King.
collect Skull of a Frozen Whelp##142097 |n |use Skull of a Frozen Whelp##142097
|tip The Skull of a Frozen Whelp has a very low chance to drop.
learnpet Soulbroken Whelpling##115149
step
_Congratulations!_
You have collected the _Soulbroken Whelpling_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Tiny Apparition",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Tiny Apparition",
model={65516},
pet=1750,
},[[
step
The _Tiny Apparition_ is level 25
|tip It is a ghost found all around this area.
Challenge one to a pet battle and capture it
|tip They are flying in the air.
learnpet Tiny Apparition##97952 |goto Stormheim/0 55.68,43.13
step
_Congratulations!_
You have collected the _Tiny Apparition_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Wicked Soul",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Wicked Soul",
model={73708},
pet=1968,
},[[
step
kill The Lich King##36597
|tip The Lich King is the final boss of Icecrown Citadel
collect 1 Call of the Frozen Blade##142099 |n
learnpet Wicked Soul##115152 |use Call of the Frozen Blade##142099
step
_Congratulations!_
You have collected the _Wicked Soul_ battle pet
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Bloodbrood Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Bloodbrood Whelpling",
model={75315},
pet=2035,
},[[
step
This pet is only available to Death Knights |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Death Knight.
|only if not DeathKnight
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |condition completedq(46246)
|only DeathKnight
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Check out our "7.2 Order Hall Quests" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\7.2 Order Hall Quests"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |condition completedq(46813)
|only DeathKnight
step
This pet can be bought after achieving _Power Ascended_ as the Blood Spec.
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from your Blood spec artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only DeathKnight
step
talk Slimy##121752
buy 1 Bloodbrood Whelpling##147539 |n |use Bloodbrood Whelpling##147539
|tip This pet costs 1,000 Order Resources.
learnpet Bloodbrood Whelpling##119498 |goto Broken Shore/2 54.79,28.86
|only DeathKnight
step
_Congratulations!_
You are now the proud owner of Bloodbrood Whelpling.
|only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Vilebrood Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Vilebrood Whelpling",
model={75317},
pet=2037,
},[[
step
This pet is only available to Death Knights |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Death Knight.
|only if not DeathKnight
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |condition completedq(46246)
|only DeathKnight
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Check out our "7.2 Order Hall Quests" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\7.2 Order Hall Quests"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |condition completedq(46813)
|only DeathKnight
step
This pet can be bought after achieving _Power Ascended_ as the Unholy Spec.
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from your Unholy spec artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only DeathKnight
step
talk Slimy##121752
buy 1 Vilebrood Whelpling##147541 |n |use Vilebrood Whelpling##147541
|tip This pet costs 1,000 Order Resources.
learnpet Vilebrood Whelpling##119500 |goto Broken Shore/2 54.79,28.86
|only DeathKnight
step
_Congratulations!_
You are now the proud owner of Vilebrood Whelpling.
|only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Battle Pets\\Undead Pets\\Frostbrood Whelpling",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Undead pet: Frostbrood Whelpling",
model={75316},
pet=2036,
},[[
step
This pet is only available to Death Knights |confirm
|tip You can earn it by completing this guide on a Horde or Alliance Death Knight.
|only if not DeathKnight
step
You must first complete the Broken Shore Campaign quest line before being able to start the quest line to obtain your Class Hall mount
Check out our "Broken Shore Campaign" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "Broken Shore Campaign" guide |condition completedq(46246)
|only DeathKnight
step
Once the Broken Shore Campaign is completed, you will then need to complete your Class Hall mount quest line
Check out our "7.2 Order Hall Quests" guide to accomplish this |confirm |or |next "Zygor's Leveling Guides\\Legion (100-110)\\7.2 Order Hall Quests"
|tip You must complete the Broken Shore Campaign and 7.2 Order Hall quests to purchase this pet.
Complete the "7.2 Order Hall Quests" guide |condition completedq(46813)
|only DeathKnight
step
This pet can be bought after achieving _Power Ascended_ as the Frost Spec.
|tip To earn the "Power Ascended" achievement, you will need to unlock 52 artifact weapon traits from your Frost spec artifact weapon.
|tip Once you accomplish this, you will be able to purchase this pet.
Earn the _"Power Ascended"_ achievement |achieve 11772
|only DeathKnight
step
talk Slimy##121752
buy 1 Frostbrood Whelpling##147540 |n |use Frostbrood Whelpling##147540
|tip This pet costs 1,000 Order Resources.
learnpet Frostbrood Whelpling##237251 |goto Broken Shore/2 54.79,28.86
|only DeathKnight
step
_Congratulations!_
You are now the proud owner of Frostbrood Whelpling.
|only DeathKnight
]])
