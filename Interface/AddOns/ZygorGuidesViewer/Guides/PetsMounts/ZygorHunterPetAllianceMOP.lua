local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("HunterPetAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Blue Greater Devilsaur",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Greater Devilsaur pet.",
model={47811},
condition_suggested="level>=90 and level<=95",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 71.0,55.2
|tip The Young Primal Devilsaurs in this area are level 90.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Black Greater Devilsaur",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Greater Devilsaur pet.",
model={47573},
condition_suggested="level>=90 and level<=95",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 73.2,68.0
|tip The Young Primal Devilsaurs in this area are level 90.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Bronze Greater Devilsaur",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Bronze Greater Devilsaur pet.",
model={47577},
condition_suggested="level>=90 and level<=95",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515
|tip The Young Primal Devilsaurs in this area are level 90. |goto Isle of Giants 24.1,58.9
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Green Greater Devilsaur",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Greater Devilsaur pet.",
model={47574},
condition_suggested="level>=90 and level<=95",
},[[
step
Use your Tame Beast ability on a _Young Primal Devilsaur_. |cast Tame Beast##1515 |goto Isle of Giants 32.9,58.6
|tip The Young Primal Devilsaurs in this area are level 90.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Devilsaurs\\Greater Devilsaurs\\Light Brown Greater Devilsaur",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Light Brown Greater Devilsaur pet.",
model={47355},
condition_suggested="level>=90 and level<=95",
},[[
step
_Kroshik_ is a level 90 elite that wanders around this area.
|tip This NPC goes through 4 life phases over several days, so you will need to come back another time if he is not in his adult phase.
Use your Tame Beast ability on _Kroshik_. |cast Tame Beast##1515 |goto Isle of Thunder/0 51.0,74.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Blue Armored Stone Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Armored Stone Quilen pet.",
model={45427},
condition_suggested="level>=89 and level<=94",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Green Armored Stone Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Armored Stone Quilen pet.",
model={45427},
condition_suggested="level>=89 and level<=94",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Purple Armored Stone Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Purple Armored Stone Quilen pet.",
model={45427},
condition_suggested="level>=89 and level<=94",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Armored Stone Quilens\\Red Armored Stone Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Armored Stone Quilen pet.",
model={45427},
condition_suggested="level>=89 and level<=94",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Vale of Eternal Blossoms
path follow loose;loop off;ants straight
path 78.6,25.0	77.6,25.8	75.0,24.8
path 72.2,23.6	70.6,21.4	69.8,24.6
path 68.2,28.6	68.0,30.2	65.6,34.2
path 67.0,38.0	67.0,40.2	65.6,42.8
path 64.8,47.2	65.8,50.0	68.0,53.8
path 66.2,56.4	65.5,58.0	62.4,61.6
path 57.8,60.8	55.2,60.6	52.6,59.8
path 50.6,59.2	51.8,53.6	52.2,49.4
path 53.4,46.8	51.6,44.4	49.6,38.0
path 50.0,31.6	47.0,31.2	45.4,33.4
path 42.4,31.2	39.2,28.2	37.8,20.2
path 35.6,33.0	34.4,27.0	35.8,23.6
path 32.8,24.8	30.4,27.8	29.0,37.0
path 28.6,39.2	27.8,45.6	30.8,49.6
path 33.8,51.8	32.4,53.2	30.8,58.0
path 30.2,59.2	27.6,58.0	21.6,55.4
path 20.2,53.0	18.4,52.4	13.8,53.4
path 14.4,48.8	15.2,39.8	14.8,38.4
path 11.6,37.0	13.6,30.2	14.4,27.6
Follow the provided path, searching for _Dusty Tracks_.
Once you find the Dusty Tracks, you will want to search for more, following the tracks the way they are facing.
A new dusty track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Portent_. |cast Flare##1543
Use your Tame Beast ability on _Portent_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Stone Quilen\\Purple Stone Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Purple Stone Quilen pet.",
model={45432},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Terracota Defenders_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Terracota Defender_. |cast Tame Beast##1515 |goto Kun-Lai Summit 61.0,73.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\Stone Quilen\\Stone Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Stone Quilen pet.",
model={40217},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Sleeping Guardians_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Sleeping Guardian_. |cast Tame Beast##1515 |goto Krasarang Wilds 52.0,32.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Quilen\\White Quilen",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Quilen pet.",
model={40155},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Yachi_ around the area.
|tip It is level 87.
Use your Tame Beast ability on _Yachi_. |cast Tame Beast##1515 |goto Kun-Lai Summit 43.6,51.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Porcupines\\Spectral Porcupines\\Blue Spectral Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Spectral Porcupine pet.",
model={47776},
condition_suggested="level>=90 and level<=94",
},[[
step
This pet is one of the new _Challenge Hunter Pets_ added to MoP in 5.2.
In order to tame this pet, you must fight it until it is _below 20% health_.
|tip We suggest that you keep Aspect of the Cheetah enabled, and use your extra speed to kite this mob around the area.
|tip This mob has additional passive speed, so be sure to keep Concussive Shot on him and don't let him get too close!
confirm
step
Search for _Gumi_ around the area. It is level 90.
Use your Tame Beast ability on _Gumi_ when it is below 20% health. |cast Tame Beast##1515 |goto Kun-Lai Summit 54.7,57.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Porcupines\\Spectral Porcupines\\Green Spectral Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Spectral Porcupine pet.",
model={47777},
condition_suggested="level>=90 and level<=94",
},[[
step
This pet is one of the new _Challenge Hunter Pets_ added to MoP in 5.2.
In order to tame this pet, you must fight it until it is _below 20% health_.
|tip We suggest that you keep _Aspect of the Cheetah_ enabled, and use your extra speed to kite this mob around the area.
|tip She has a heal that she uses periodically, so make sure to use Scatter shot or any other abilities to interrupt this.
confirm
step
Search for _Hutia_ around the area. It is level 90.
Use your Tame Beast ability on _Hutia_ when it is below 20% health. |cast Tame Beast##1515 |goto The Jade Forest 48.2,27.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Porcupines\\Spectral Porcupines\\Red Spectral Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Spectral Porcupine pet.",
model={47778},
condition_suggested="level>=90 and level<=94",
},[[
step
This pet is one of the new _Challenge Hunter Pets_ added to MoP in 5.2.
In order to tame this pet, you must fight it until it is _below 20% health_.
|tip We suggest that you keep Aspect of the Cheetah enabled, and use your extra speed to kite this mob around the area.
|tip Beware of his Barbed Needle, which he casts if you stray too far away from him. The only way to interrupt this spell is by approaching him within his "dead zone".
confirm
step
Search for _Degu_ around the area.
|tip It is level 90.
Use your Tame Beast ability on _Degu_ when it is below 20% health. |cast Tame Beast##1515 |goto Valley of the Four Winds 50.6,77.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\Black Fen Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Fen Strider pet.",
model={18194},
condition_suggested="level>=70 and level<=74",
},[[
step
Search for _Coilfang Striders_ around the area.
|tip They are level 70 Elite.
Use your Tame Beast ability on a _Coilfang Strider_. |cast Tame Beast##1515 |goto Serpentshrine Cavern 70.6,56.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\Blue Fen Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Fen Strider pet.",
model={17781},
condition_suggested="level>=61 and level<=66",
},[[
step
Search for _Fen Striders_ around the area.
|tip They are level 61-62.
Use your Tame Beast ability on a _Fen Strider_. |cast Tame Beast##1515 |goto Zangarmarsh 63.4,53.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\Green Fen Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Fen Strider pet.",
model={18615},
condition_suggested="level>=63 and level<=67",
},[[
step
Search for _Marsh Walkers_ around the area.
|tip They are level 63.
Use your Tame Beast ability on a _Marsh Walker_. |cast Tame Beast##1515 |goto Zangarmarsh 28.0,29.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Fen Striders\\White Fen Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Fen Strider pet.",
model={20917},
condition_suggested="level>=85 and level<=89",
},[[
step
In order to tame this pet, you must be _at least_ level 85.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Dread Wastes
path follow loose;loop off;ants straight
path 65.4,41.2	64.2,16.6	49.8,22.4
path 32.6,23.4	30.2,52.0	44.2,53.6
path 51.8,67.6	59.5,68.8
Follow the provided path, searching for _Flooded Tracks_.
A new flooded track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Hexapos_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Green Plated Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Plated Water Strider pet.",
model={40001},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Jungle Skitterers_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Jungle Skitterer_. |cast Tame Beast##1515 |goto Krasarang Wilds 62.0,23.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Orange Plated Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange Plated Water Strider pet.",
model={42243},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Lightfooted Snapclaws_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Lightfooted Snapclaw_. |cast Tame Beast##1515 |goto Kun-Lai Summit 59.0,26.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Red Plated Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Plated Water Strider pet.",
model={42271},
condition_suggested="level>=85 and level<=89",
},[[
step
In order to tame this pet, you must be _at least_ level 85.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map The Jade Forest
path follow loose;loop off;ants straight
path 40.0,66.6	46.4,72.2	52.8,69.2
path 50.6,55.2	51.4,53.8	52.6,52.0
path 54.2,48.8	54.4,42.6	57.2,41.6
Follow the provided path, searching for _Flooded Tracks_.
Once you find the Flooded Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new flooded track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Glimmer_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Plated Water Striders\\Yellow Plated Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow Plated Water Strider pet.",
model={42272},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Vale Striders_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Vale Strider_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 22.6,19.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Blue-Black Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue-Black Water Strider pet.",
model={40000},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Stream Striders_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Stream Strider_. |cast Tame Beast##1515 |goto The Jade Forest 33.0,46.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Blue-Green Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue-Green Water Strider pet.",
model={40001},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Fallstriders_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Fallstrider_. |cast Tame Beast##1515 |goto Krasarang Wilds 35.2,36.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Water Striders\\Light Yellow Water Strider",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Light Yellow Water Strider pet.",
model={39999},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _River Striders_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _River Strider_. |cast Tame Beast##1515 |goto Valley of the Four Winds 81.8,38.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Blue Silkworm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Silkworm pet.",
model={43324},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Mottled Caterpillars_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Mottled Caterpillar_. |cast Tame Beast##1515 |goto The Jade Forest 50.8,71.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Green Silkworm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Silkworm pet.",
model={45081},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Bookworms_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Bookworms_. |cast Tame Beast##1515 |goto The Jade Forest 56.8,60.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Red Silkworm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Silkworm pet.",
model={40520},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Mutated Silkworms_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Mutated Silkworms_. |cast Tame Beast##1515 |goto Valley of the Four Winds 66.0,56.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Beast Mastery Exotic Pets\\Worms\\Silkworms\\Yellow Silkworm",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow Silkworm pet.",
model={40225},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Hungry Silkworms_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Hungry Silkworms_. |cast Tame Beast##1515 |goto Valley of the Four Winds 66.0,56.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black and Blue Crested Basilisk pet.",
model={46055},
condition_suggested="level>=45 and level<=49",
},[[
step
Search for Ironeye the Invincible around the area.
|tip It is a level 45 beast.
Use your Tame Beast ability on _Ironeye the Invincible_. |cast Tame Beast##1515 |goto Thousand Needles 61.2,67.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black and Jade Crested Basilisk pet.",
model={45950},
condition_suggested="level>=11 and level<=16",
},[[
step
Search for Greystone Basilisks around the area.
|tip They are level 11-12.
Use your Tame Beast ability on a _Greystone Basilisk_. |cast Tame Beast##1515 |goto Azshara 24.6,68.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black and Orange Crested Basilisk pet.",
model={46058},
condition_suggested="level>=27 and level<=31",
},[[
step
Search for _Chomper_ around the area.
|tip It is level 27 Elite.
Use your Tame Beast ability on _Chomper_. |cast Tame Beast##1515 |goto Gnomeregan 76.6,65.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Black and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black and Purple Crested Basilisk pet.",
model={45445},
condition_suggested="level>=32 and level<=36",
},[[
step
Search for _Hissperak_ around the area.
|tip It is a level 32 Rare Spawn.
Use your Tame Beast ability on _Hissperak_. |cast Tame Beast##1515 |goto Desolace 43.6,61.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Crested Basilisk pet.",
model={8797},
condition_suggested="level>=29 and level<=34",
},[[
step
Search for _Cold Eye Basilisks_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Cold Eye Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 44.6,10.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue and Jade Crested Basilisk pet.",
model={45446},
condition_suggested="level>=29 and level<=34",
},[[
step
Search for _Ironjaw Basilisks_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Ironjaw Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 67.2,24.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue and Orange Crested Basilisk pet.",
model={45947},
condition_suggested="level>=29 and level<=34",
},[[
step
Search for _Ironjaw Behemoths_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Ironjaw Behemoth_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 66.2,26.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Blue and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue and Purple Crested Basilisk pet.",
model={45945},
condition_suggested="level>=31 and level<=35",
},[[
step
Search for _Scale Belly_ around the area.
|tip It is a level 31 Rare Spawn
Use your Tame Beast ability on _Scale Belly_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 67.6,25.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgandy and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Burgandy and Blue Crested Basilisk pet.",
model={7345},
condition_suggested="level>=47 and level<=51",
},[[
step
Search for _Sul'lithuz Sandcrawlers_ around the area.
|tip They are level 47-48 Elite.
Use your Tame Beast ability on a _Sul'lithuz Sandcrawler_. |cast Tame Beast##1515 |goto Zul'Farrak 64.6,26.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgandy and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Burgandy and Orange Crested Basilisk pet.",
model={44843},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Amberscale Basilisks_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Amberscale Basilisk_. |cast Tame Beast##1515 |goto Dread Wastes 65.2,43.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Burgandy and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Burgandy and Purple Crested Basilisk pet.",
model={46053},
condition_suggested="level>=56 and level<=60",
},[[
step
Search for _Deatheye_ around the area.
|tip It is a level 56 Rare Spawn.
Use your Tame Beast ability on _Deatheye_. |cast Tame Beast##1515 |goto Blasted Lands 53.6,27.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green and Blue Crested Basilisk pet.",
model={45449},
condition_suggested="level>=29 and level<=34",
},[[
step
Search for _Thrashtail Basilisks_ around the area.
|tip They are level 29-30.
Use your Tame Beast ability on a _Thrashtail Basilisk_. |cast Tame Beast##1515 |goto The Cape of Stranglethorn 60.6,30.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green and Jade Crested Basilisk pet.",
model={4486},
condition_suggested="level>=37 and level<=42",
},[[
step
Search for _Jadespine Basilisks_ around the area.
|tip They are level 37-38 Elite.
Use your Tame Beast ability on a _Jadespine Basilisk_. |cast Tame Beast##1515 |goto Uldaman 44.8,54.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green and Orange Crested Basilisk pet.",
model={45450},
condition_suggested="level>=24 and level<=29",
},[[
step
Search for _Stone Maw Basilisks_ around the area.
|tip They are level 24-25.
Use your Tame Beast ability on a _Stone Maw Basilisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn 42.6,16.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Green and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green and Purple Crested Basilisk pet.",
model={45451},
condition_suggested="level>=75 and level<=80",
},[[
step
Search for _Lurking Basilisks_ around the area.
|tip They are level 75-76.
Use your Tame Beast ability on a _Lurking Basilisk_. |cast Tame Beast##1515 |goto Zul'Drak 44.8,62.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange-Purple and Blue Crested Basilisk pet.",
model={1075},
condition_suggested="level>=47 and level<=52",
},[[
step
Search for _Sul'lithuz Broodlings_ around the area.
|tip They are level 47-48 Elite.
Use your Tame Beast ability on a _Sul'lithuz Broodling_. |cast Tame Beast##1515 |goto Zul'Farrak 64.6,26.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange-Purple and Jade Crested Basilisk pet.",
model={46056},
condition_suggested="level>=25 and level<=30",
},[[
step
Search for _Crystal Spine Basilisks_ around the area.
|tip They are level 25-26.
Use your Tame Beast ability on a _Crystal Spine Basilisk_. |cast Tame Beast##1515 |goto Northern Stranglethorn 63.0,24.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange-Purple and Orange Crested Basilisk pet.",
model={45462},
condition_suggested="level>=34 and level<=39",
},[[
step
Search for _Ambereye Reavers_ around the area.
|tip They are level 34-35 Elite.
Use your Tame Beast ability on a _Ambereye Reaver_. |cast Tame Beast##1515 |goto Maraudon 34.6,62.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Orange-Purple and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange-Purple and Purple Crested Basilisk pet.",
model={45505},
condition_suggested="level>=88 and level<=92",
},[[
step
Search for _Veiled Basilisks_ around the area.
|tip They are level 88.
Use your Tame Beast ability on a _Veiled Basilisk_. |cast Tame Beast##1515 |goto Townlong Steppes 34.6,64.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Purple and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Purple and Blue Crested Basilisk pet.",
model={45464},
condition_suggested="level>=89 and level<=93",
},[[
step
In order to tame this pet, you must be _at least_ level 89.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Townlong Steppes
path follow loose;loop off;ants straight
path 56.4,45.8	57.5,48.5	59.6,52.2
path 60.2,54.7	63.3,55.0	64.2,55.8
path 64.5,58.8	65.2,61.1	66.0,64.1
path 65.7,68.3	63.8,65.9	62.5,66.1
path 61.9,67.7	62.6,71.4	63.8,75.0
path 62.3,76.2	60.6,77.1	59.7,79.4
path 58.1,82.5	55.6,81.3	57.2,78.5
path 57.1,76.9	55.3,73.8	53.7,72.3
path 51.8,72.4	50.7,75.6	49.8,77.2
path 49.4,79.8	51.5,84.0	50.9,86.5
path 49.8,88.9	48.5,90.0	46.7,89.2
path 46.0,88.4	44.5,87.8	43.2,88.8
path 41.8,86.6	40.1,86.5	40.6,85.0
Follow the provided path, searching for _Worn Tracks_.
Once you find the Worn Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new worn track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Glimmer_. |cast Flare##1543
Use your Tame Beast ability on _Rockhide the Immovable_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red and Blue Crested Basilisk pet.",
model={2743},
condition_suggested="level>=55 and level<=59",
},[[
step
Search for _Redstone Basilisks_ around the area.
|tip They are level 55-56.
Use your Tame Beast ability on a _Veiled Basilisk_. |cast Tame Beast##1515 |goto Blasted Lands 53.0,28.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Red and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red and Orange Crested Basilisk pet.",
model={46059},
condition_suggested="level>=34 and level<=38",
},[[
step
Search for _Ambereye Basilisks_ around the area.
|tip They are level 34 Elite.
Use your Tame Beast ability on a _Ambereye Basilisk_. |cast Tame Beast##1515 |goto Maraudon 35.2,63.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White and Blue Crested Basilisk pet.",
model={31939},
condition_suggested="level>=46 and level<=51",
},[[
step
Search for _Glasshide Gazers_ around the area.
|tip They are level 46-47.
Use your Tame Beast ability on a _Glasshide Gazer_. |cast Tame Beast##1515 |goto Tanaris 55.2,55.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White and Jade Crested Basilisk pet.",
model={45474},
condition_suggested="level>=81 and level<=86",
},[[
step
Search for _Jadecrest Basilisks_ around the area.
|tip They are level 81-82.
Use your Tame Beast ability on a _Jadecrest Basilisk_. |cast Tame Beast##1515 |goto Deepholm 56.6,85.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White and Orange Crested Basilisk pet.",
model={45455},
condition_suggested="level>=83 and level<=87",
},[[
step
Search for _Gorgonite_ around the area.
|tip It is a level 83 quest mob.
Use your Tame Beast ability on _Gorgonite_. |cast Tame Beast##1515 |goto Deepholm 48.6,25.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\White and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White and Purple Crested Basilisk pet.",
model={45456},
condition_suggested="level>=83 and level<=87",
},[[
step
Search for _Crystal Gorged Basilisks_ around the area.
|tip They are level 83.
Use your Tame Beast ability on a _Crystal Gorged Basilisk_. |cast Tame Beast##1515 |goto Deepholm 70.6,31.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Blue Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow and Blue Crested Basilisk pet.",
model={7345},
condition_suggested="level>=44 and level<=49",
},[[
step
Search for _Glasshide Basilisks_ around the area.
|tip They are level 44-45.
Use your Tame Beast ability on a _Glasshide Basilisk_. |cast Tame Beast##1515 |goto Tanaris 49.0,32.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Jade Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow and Jade Crested Basilisk pet.",
model={45475},
condition_suggested="level>=30 and level<=35",
},[[
step
Search for _Gritjaw Basilisks_ around the area.
|tip They are level 30-31.
Use your Tame Beast ability on a _Gritjaw Basilisk_. |cast Tame Beast##1515 |goto Desolace 67.2,23.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Orange Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow and Orange Crested Basilisk pet.",
model={45458},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Stoneskin Basilisks_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Stoneskin Basilisk_. |cast Tame Beast##1515 |goto The Jade Forest 61.8,76.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Crested Basilisks\\Yellow and Purple Crested Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow and Purple Crested Basilisk pet.",
model={45946},
condition_suggested="level>=46 and level<=50",
},[[
step
Search for _Hellgazer_ around the area.
|tip It is a level 46 Rare Spawn.
Use your Tame Beast ability on _Hellgazer_. |cast Tame Beast##1515 |goto Tanaris 40.8,41.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Green Three-Eyed Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Three-Eyed Basilisk pet.",
model={16876},
condition_suggested="level>=62 and level<=66",
},[[
step
Search for _Dampscale Basilisks_ around the area.
|tip They are level 62-63.
Use your Tame Beast ability on a _Dampscale Basilisk_. |cast Tame Beast##1515 |goto Terokkar Forest 38.6,12.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Purple Three-Eyed Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Purple Three-Eyed Basilisk pet.",
model={16878},
condition_suggested="level>=62 and level<=66",
},[[
step
Search for _Ironspine Petrifiers_ around the area.
|tip They are level 62.
Use your Tame Beast ability on a _Ironspine Petrifier_. |cast Tame Beast##1515 |goto Terokkar Forest 46.2,35.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Red Three-Eyed Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Three-Eyed Basilisk pet.",
model={16877},
condition_suggested="level>=67 and level<=72",
},[[
step
Search for _Scalded Basilisks_ around the area.
|tip They are level 67-68.
Use your Tame Beast ability on a _Scalded Basilisk_. |cast Tame Beast##1515 |goto Blade's Edge Mountains 72.2,23.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Basilisks\\Three-Eyed Basilisks\\Yellow Three-Eyed Basilisk",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow Three-Eyed Basilisk pet.",
model={16879},
condition_suggested="level>=61 and level<=66",
},[[
step
Search for _Marshrock Threshalisks_ around the area.
|tip They are level 61-62.
Use your Tame Beast ability on a _Marshrock Threshalisk_. |cast Tame Beast##1515 |goto Zangarmarsh 83.6,28.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Black Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Grand Tiger pet.",
model={40718},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Wild Stalkers_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Wild Stalker_. |cast Tame Beast##1515 |goto The Jade Forest 63.0,76.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Brown Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Grand Tiger pet.",
model={40358},
condition_suggested="level>=84 and level<=88",
},[[
step
Search for _Wary Forest Prowlers_ around the area.
|tip They are level 84.
Use your Tame Beast ability on a _Wary Forest Prowler_. |cast Tame Beast##1515 |goto The Jade Forest 31.6,10.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Grey Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Grey Grand Tiger pet.",
model={41445},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Summit Prowlers_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Summit Prowler_. |cast Tame Beast##1515 |goto Kun-Lai Summit 64.2,63.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Orange-Striped Green Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange-Striped Green Grand Tiger pet.",
model={44662},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Gorge Stalkers_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Gorge Stalker_. |cast Tame Beast##1515 |goto Valley of the Four Winds 13.6,71.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Pink-Nosed Orange Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Pink-Nosed Orange Grand Tiger pet.",
model={39579},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Waxwood Hunters_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Waxwood Hunter_. |cast Tame Beast##1515 |goto The Jade Forest 34.8,22.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\Red Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Grand Tiger pet.",
model={40848},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Krasari Huntress_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Krasari Huntress_. |cast Tame Beast##1515 |goto Krasarang Wilds 65.0,29.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Grand Tigers\\White Grand Tiger",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Grand Tiger pet.",
model={44486},
condition_suggested="level>=85 and level<=89",
},[[
step
In order to tame this pet, you must be _at least_ level 85.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map The Jade Forest
path follow loose;loop off;ants straight
path 37.8,64.2	36.8,59.8	35.6,57.0
path 37.0,54.6	37.6,51.8	37.7,47.8
path 38.0,42.0	40.6,40.8	42.6,36.8
path 44.6,39.0	46.8,38.2	47.2,29.4
path 49.6,30.2	53.0,31.2	55.0,34.6
path 54.4,37.6	56.2,38.2	57.4,37.4
path 56.2,32.6	54.8,28.2	53.2,24.0
Follow the provided path, searching for _Bloody Tracks_.
Once you find the Bloody Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new bloody track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Savage_. |cast Flare##1543
Use your Tame Beast ability on _Savage_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cats\\Mystic Cats\\Jade Mystic Cat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Jade Mystic Cat pet.",
model={39179},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Jade Guardians_ around the area.
|tip They are level 85.
Use your Tame Beast ability on a _Jade Guardian_. |cast Tame Beast##1515 |goto The Jade Forest 39.4,43.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cranes\\Black Crane",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Crane pet.",
model={40347},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Great Cranes_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Great Crane_. |cast Tame Beast##1515 |goto Krasarang Wilds 64.6,47.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cranes\\Blue Crane",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Crane pet.",
model={39726},
condition_suggested="level>=84 and level<=89",
},[[
step
Search for _Lotus Cranes_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on a _Lotus Crane_. |cast Tame Beast##1515 |goto The Jade Forest 57.6,70.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cranes\\Brown Crane",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Crane pet.",
model={39727},
condition_suggested="level>=84 and level<=89",
},[[
step
Search for _Sunrise Cranes_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on a _Sunrise Crane_. |cast Tame Beast##1515 |goto The Jade Forest 46.0,37.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cranes\\Green Crane",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Crane pet.",
model={39728},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Carp Hunters_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Carp Hunter_. |cast Tame Beast##1515 |goto Krasarang Wilds 65.6,29.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cranes\\Pink Crane",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Pink Crane pet.",
model={39729},
condition_suggested="level>=86 and level<=94",
},[[
step "start"
With the addition of Warlords of Draenor the _Rare Patrannache no longer has any special abilities that differ from a basic Pink Crane_
It is _much faster to tame_ a Brilliant Windfeather on Timeless Isle that _shares the same appearance and abilities_
In case this changes again in the future _please choose which spot_ you would rather hunt this pet
_Click here_ to farm the level 86 Elite Patrannache |confirm |next
_Click here_ to tame the level 90 Elite Brilliant Windfeather on Timeless Isle |confirm |next "isle"
step
The new Pandaria rare spawns require that you _locate their tracks_ in an certain zone
_Follow the path_ and look for the _Barely Visible Tracks_
map Valley of the Four Winds
path follow smart;loop off;ants straight
path	80.8,48.9	79.7,46.4	77.9,47.5
path	73.9,59.0	68.1,53.5	69.1,48.1
path	66.4,45.6	66.5,42.3	64.7,39.4
path	61.1,41.9	59.0,39.2	57.6,33.3
path	56.4,30.2	55.4,33.2	51.6,34.5
path	52.3,40.3	50.1,45.6	49.3,50.8
path	51.0,55.3	52.4,57.0	54.6,54.5
path	57.9,57.6	59.0,53.3	62.3,52.6
path	66.1,55.5	66.5,59.2	62.1,65.2
path	58.4,67.7	57.1,75.9	49.4,75.7
path	38.8,77.0	31.0,79.8	26.4,81.9
path	24.4,77.2	22.9,69.3	21.8,68.5
path	16.7,70.6	15.4,68.3	19.8,60.5
path	22.0,57.4	20.2,51.2	22.1,39.4
path	24.0,39.4	26.2,42.3	24.2,44.8
path	26.8,48.5	25.1,52.6	28.4,55.7
path	33.1,64.6	34.9,59.2	37.9,61.7
path	39.1,56.3	41.8,57.6	45.2,55.1
Once you find the Barely Visible Tracks you will want to _search for more and follow_ the way they are facing
A new barely visible track will appear about every 10 seconds
|tip Follow them until they stop appearing
_Use_ Flare and search for Patrannache |cast Flare##1543
_Use_ your Tame Beast ability on Patrannache |cast Tame Beast##1515
modelnpc Patrannache##50885
confirm |next "start"
step "isle"
_Search for_ Brilliant Windfeather around the area
|tip They are level 90 Elite
_Use_ your Tame Beast ability on Brilliant Windfeather |cast Tame Beast##1515
modelnpc Brilliant Windfeather##72762
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Cranes\\White Crane",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Crane pet.",
model={39553},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for _Ink-Tipped Cranes_ around the area.
|tip They are level 85.
Use your Tame Beast ability on an _Ink-Tipped Crane_. |cast Tame Beast##1515 |goto The Jade Forest 56.0,47.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Direhorns\\Blue Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Direhorn pet.",
model={46565},
condition_suggested="level>=90 and level<=94",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90.
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.7,72.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Direhorns\\Brown Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Direhorn pet.",
model={47236},
condition_suggested="level>=90 and level<=94",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90.
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.7,72.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Direhorns\\Green Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Direhorn pet.",
model={47233},
condition_suggested="level>=90 and level<=94",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90.
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515  |goto Isle of Giants 48.7,72.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Direhorns\\Pale Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Pale Direhorn pet.",
model={47235},
condition_suggested="level>=90 and level<=94",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90.
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 48.7,72.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Direhorns\\Red Direhorn",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Direhorn pet.",
model={47234},
condition_suggested="level>=90 and level<=94",
},[[
step
In order to tame this pet, you will first have to acquire the _Ancient Tome of Dinomancy_. Direhorns _do not_ require you to be specialized in _Beast Mastery_.
confirm
step
kill Zandalari Dinomancer##69925+
collect 1 Ancient Tome of Dinomancy##94232 |goto Isle of Giants 69.5,71.8
Use the _Ancient Tome of Dinomancy_ to learn how to tame Direhorns |learn Ancient Zandalari Knowledge##138430
step
|tip The Primal Direhorn Hatchlings in this area are level 90.
Use your Tame Beast ability on a _Primal Direhorn Hatchling_. |cast Tame Beast##1515 |goto Isle of Giants 65.0,61.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Goats\\Black Goat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Goat pet.",
model={41073},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Battle Goats_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Battle Goat_. |cast Tame Beast##1515 |goto Kun-Lai Summit 51.4,66.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Goats\\Black Spotted Goat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Spotted Goat pet.",
model={45149},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Black Bengal Goats_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Black Bengal Goat_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 58.0,58.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Goats\\Brown Goat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Goat pet.",
model={40020},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Wild Staghorns_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Wild Staghorn_. |cast Tame Beast##1515 |goto Valley of the Four Winds 27.8,55.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Goats\\Brown Spotted Goat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Spotted Goat pet.",
model={45138},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Stout Staghorns_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Stout Staghorn_. |cast Tame Beast##1515 |goto Valley of the Four Winds 28.0,36.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Goats\\Grey Goat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Grey Goat pet.",
model={40022},
condition_suggested="level>=88 and level<=92",
},[[
step
In order to tame this pet, you must be _at least_ level 88.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Kun-Lai Summit
path follow loose;loop off;ants straight
path 35.2,53.8	35.4,51.6	37.2,50.0
path 39.4,51.6	39.8,47.8	41.0,45.7
path 42.6,45.2	44.8,45.2	45.8,46.4
path 46.8,48.4	45.2,47.6	42.8,49.4
path 42.4,51.2	43.6,52.0	43.4,52.4
path 50.6,53.2	51.4,55.8	53.4,55.2
path 53.8,58.2	50.8,59.0	51.6,60.2
Follow the provided path, searching for _Heavy Tracks_.
Once you find the Heavy Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new heavy track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Stompy_. |cast Flare##1543
Use your Tame Beast ability on _Stompy_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Goats\\White Goat",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Goat pet.",
model={40024},
condition_suggested="level>=88 and level<=92",
},[[
step
Search for _Wild Mountain Goats_ around the area.
|tip They are level 88.
Use your Tame Beast ability on a _Wild Mountain Goat_. |cast Tame Beast##1515 |goto The Veiled Stair 56.6,62.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Porcupines\\Blue Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Porcupine pet.",
model={41003},
condition_suggested="level>=88 and level<=92",
},[[
step
In order to tame this pet, you must be _at least_ level 88.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Kun-Lai Summit
path follow loose;loop off;ants straight
path	75.4,71.2	75.0,68.0	74.5,68.0
path	72.8,71.2	71.6,72.8	67.8,75.8
path	67.0,76.0	66.2,77.6	57.2,86.8
path	49.4,85.2	45.2,81.6	45.0,78.0
path	59.4,62.8	60.8,62.2	62.8,63.8
path	67.8,62.4	69.2,59.6	70.6,59.6
path	73.8,55.6
Follow the provided path, searching for _Puzzling Tracks_.
Once you find the Puzzling Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new puzzling track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Stompy_. |cast Flare##1543
Use your Tame Beast ability on _Bristlespine_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Porcupines\\Red Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Porcupine pet.",
model={44620},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Razorquill Porcupines_ around the area.
|tip They are level 87. |goto Kun-Lai Summit 61.2,83.4
Use your Tame Beast ability on a _Razorquill Porcupine_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Porcupines\\White Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a White Porcupine pet.",
model={43647},
condition_suggested="level>=84 and level<=88",
},[[
step
Search for _Lowland Porcupines_ around the area.
|tip They are level 84.
Use your Tame Beast ability on a _Lowland Porcupine_. |cast Tame Beast##1515 |goto Kun-Lai Summit 65.8,26.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Porcupines\\Yellow Porcupine",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Yellow Porcupine pet.",
model={45410},
condition_suggested="level>=84 and level<=88",
},[[
step
Search for _Docile Porcupines_ around the area.
|tip They are level 84.
Use your Tame Beast ability on a _Docile Porcupine_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 47.0,55.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Saddled Raptors\\Orange Saddled Raptor",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Orange Saddled Raptor pet.",
model={14342},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Gurubashi Riding Raptors_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Gurubashi Riding Raptor_. |cast Tame Beast##1515 |goto Kun-Lai Summit 77.0,12.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Raptors\\Armored Raptors\\Red Armored Raptor",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Red Armored Raptor pet.",
model={14341},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Gurubashi Raptors_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Gurubashi Raptor_. |cast Tame Beast##1515 |goto Kun-Lai Summit 65.0,31.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Scorpids\\Crystal Scorpions\\Amber Crystal Scorpion",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining an Amber Crystal Scorpion pet.",
model={43351},
},[[
step
Search for _Kor'thik Scorpids_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Kor'thik Scorpid_. |cast Tame Beast##1515 |goto Dread Wastes 46.6,14.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Ghostly White Saber Worg",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Ghostly White Saber Worg pet.",
model={41238},
},[[
step
Search for _Spirit Worgs_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Spirit Worg_. |cast Tame Beast##1515 |goto Kun-Lai Summit 48.8,76.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Ground Pets\\Wolves\\Saber Worgs\\Stormy Dark Grey Saber Worg",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Stormy Dark Grey Saber Worg pet.",
model={44452},
},[[
step
Search for _Thundermaw_ around the area.
|tip It is level 90.
Use your Tame Beast ability on _Thundermaw_. |cast Tame Beast##1515 |goto Vale of Eternal Blossoms 29.4,67.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Parrots\\Brown Parrot",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Parrot pet.",
model={45321},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Dusky Lory_ around the area.
|tip It is level 87.
Use your Tame Beast ability on a _Dusky Lory_. |cast Tame Beast##1515 |goto Krasarang Wilds 48.2,66.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Birds of Prey\\Raven",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Raven pet.",
model={44480},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Upland Ravens_ around the area.
|tip They are level 87.
Use your Tame Beast ability on an _Upland Raven_. |cast Tame Beast##1515 |goto Kun-Lai Summit 54.4,46.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Moths\\Green and Yellow Moth",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green and Yellow Moth pet.",
model={44605},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Fluttering Swallowtails_ around the area.
|tip They are level 87.
Use your Tame Beast ability on a _Fluttering Swallowtails_. |cast Tame Beast##1515 |goto Krasarang Wilds 36.2,33.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Flying Pets\\Wasps\\Boss Wasps\\Purple Boss Wasp",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Purple Boss Wasp pet.",
model={37906},
condition_suggested="level>=85 and level<=89",
},[[
step
Search for the _Florawing Hive Queen_ around the area.
|tip It is level 85 Elite.
Use your Tame Beast ability on _Florawing Hive Queen_. |cast Tame Beast##1515 |goto Zul'Gurub 33.2,37.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Blue Spiked Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue-Marked Blue Spiked Crab pet.",
model={45062},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Snapclaw_ around the area.
|tip It is a level 90 Elite.
Use your Tame Beast ability on _Snapclaw_. |cast Tame Beast##1515 |goto Krasarang Wilds 73.6,38.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Orange Spiked Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue-Marked Orange Spiked Crab pet.",
model={42974},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Spineclaw Scuttlers_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Spineclaw Scuttler_. |cast Tame Beast##1515 |goto Kun-Lai Summit 56.4,21.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Blue-Marked Red Spiked Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue-Marked Red Spiked Crab pet.",
model={45058},
condition_suggested="level>=87 and level<=91",
},[[
step
Search for _Elder Viseclaws_ around the area.
|tip They are level 87 Elite.
Use your Tame Beast ability on an _Elder Viseclaw_. |cast Tame Beast##1515 |goto Krasarang Wilds 57.0,47.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Metallic Blue Spiked Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Metallic Blue Spiked Crab pet.",
model={45167},
condition_suggested="level>=88 and level<=92",
},[[
step
Search for _King Spineclaw_ around the area.
|tip It is a level 88 Elite.
Use your Tame Beast ability on _King Spineclaw_. |cast Tame Beast##1515 |goto Kun-Lai Summit 55.2,21.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Crabs\\Spiked Crabs\\Purple-Marked Orange Spiked Crab",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Purple-Marked Orange Spiked Crab pet.",
model={46050},
condition_suggested="level>=84 and level<=89",
},[[
step
Search for _Amberglass Crabs_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on an _Amberglass Crab_. |cast Tame Beast##1515 |goto The Jade Forest 59.6,80.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Blue Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Dragon Turtle pet.",
model={47800},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Slateshell Wanderers_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Slateshell Wanderer_. |cast Tame Beast##1515 |goto Isle of Thunder 54.2,57.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Brown Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Dragon Turtle pet.",
model={44778},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Seadragons_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Seadragon_. |cast Tame Beast##1515 |goto Krasarang Wilds 72.6,32.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Camo Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Camo Dragon Turtle pet.",
model={42233},
condition_suggested="level>=84 and level<=89",
},[[
step
Search for _Pearly Tortoises_ around the area.
|tip They are level 84-85.
Use your Tame Beast ability on a _Pearly Tortoise_. |cast Tame Beast##1515 |goto The Jade Forest 59.8,81.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Gold Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Gold Dragon Turtle pet.",
model={42658},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Wyrmhorn Turtles_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Wyrmhorn Turtle_. |cast Tame Beast##1515 |goto Valley of the Four Winds 67.8,31.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Dragon Turtles\\Green Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Dragon Turtle pet.",
model={42234},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Jade Snapping Turtles_ around the area.
|tip They are level 86.
Use your Tame Beast ability on a _Jade Snapping Turtle_. |cast Tame Beast##1515 |goto The Jade Forest 33.2,10.2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Black Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Black Spiked Dragon Turtle pet.",
model={45487},
condition_suggested="level>=87 and level<=91",
},[[
step
In order to tame this pet, you must be _at least_ level 87.
The new Pandaria rare spawns require that you locate their tracks in an certain zone.
Follow the path and look for the said tracks in order to tame the pet.
confirm
step
map Krasarang Wilds
path follow loose;loop off;ants straight
path 70.0,42.2	68.2,42.4	65.6,41.8
path 64.2,43.6	63.8,42.4	64.2,39.4
path 61.4,39.2	60.0,40.8	59.6,44.2
path 60.0,46.6	59.2,49.0	59.0,49.8
path 57.0,48.2	56.8,44.0	55.2,43.2
path 52.2,45.6	53.8,49.2	53.6,51.8
path 52.6,54.2	50.0,54.0	48.0,53.4
path 47.2,58.0	46.4,61.6	46.2,64.0
path 48.6,66.8	50.6,70.0	49.4,71.2
path 39.8,74.0	38.8,72.0	39.2,69.2
path 35.8.61.0	33.8,60.0	31.4,60.8
path 26.6,57.2	25.8,59.8	23.8,61.6
path 19.8,53.0	16.2,56.6	16.0,53.0
path 8.6,40.8
Follow the provided path, searching for _Muddy Tracks_.
Once you find the Muddy Tracks, you will want to search for more, going the opposite direction that the track is facing.
A new muddy track will appear about every 10 seconds. Follow them until they stop appearing. At that point, use _Flare_ and search for _Bloodtooth_. |cast Flare##1543
Use your Tame Beast ability on _Bloodtooth_. |cast Tame Beast##1515
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Blue Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Blue Spiked Dragon Turtle pet.",
model={47804},
condition_suggested="level>=90 and level<=94",
},[[
step
Search for _Slateshell Ancients_ around the area.
|tip They are level 90.
Use your Tame Beast ability on a _Slateshell Ancient_. |cast Tame Beast##1515 |goto Isle of Thunder 54.2,57.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Brown Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Brown Spiked Dragon Turtle pet.",
model={46045},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Elder Shoreshell Snappers_ around the area.
|tip They are level 86 Elite.
Use your Tame Beast ability on a _Elder Shoreshell Snapper_. |cast Tame Beast##1515 |goto Kun-Lai Summit 75.1,33.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Gold Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Gold Spiked Dragon Turtle pet.",
model={44784},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Elder Seadragons_ around the area.
|tip They are level 86 Elite.
Use your Tame Beast ability on an _Elder Seadragon_. |cast Tame Beast##1515 |goto Krasarang Wilds 71.6,33.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Hunter Pets\\Water Pets\\Turtles\\Spiked Dragon Turtles\\Green Spiked Dragon Turtle",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining a Green Spiked Dragon Turtle pet.",
model={46046},
condition_suggested="level>=86 and level<=90",
},[[
step
Search for _Krosh_ around the area.
|tip It is a level 86.
Use your Tame Beast ability on _Krosh_. |cast Tame Beast##1515 |goto Valley of the Four Winds 65.2,26.0
]])
