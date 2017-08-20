local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\Armies of Legionfall",{
author="support@zygorguides.com",
keywords={"Armies","Legionfall","Army"},
description="This guide will walk you through becoming exalted with the \"Armies of Legionfall\" faction.",
condition_suggested="level>=100 and level<=110",
achieveid={11545, 11796},
},[[
step
_Earning reputation with Armies of Legionfall can be achieved by:_
|tip Completing Broken Shore world quests.
Click here to load the "World Quests" guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Completing quests offered by Excavator Karla
|tip Karla offers a new quest every day. You can find her by looking for the new quest icon on the Broken Shore map.
Click here to load the "Excavator Karla" guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore\\Excavator Karla Quests"
|tip Turning in a building construction quest at Deliverance Point in Broken Shore rewards 150 reputation
|tip You also receive 150 reputation for donating 100 Legionfall War Supplies to the Legionfall Construction Table.
|tip Using Legionfall Insignias from Class Order Hall missions.
Use your Legionfall Insignia |use Legionfall Insignia##146949 |only if itemcount(146949) >= 1
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Click here to load the Class Order Hall guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\7.2 Order Hall Quests"
|tip Class champion and Class Order Hall questlines reward various one-time reputation gains.
Gain exalted reputation with the Armies of Legionfall |condition rep("Armies of Legionfall")>=Exalted
step
_Congratulations!_
You earned exalted reputation with the "Armies of Legionfall" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\Conjurer Margoss",{
author="support@zygorguides.com",
keywords={"Conjurer","Margoss"},
description="This guide will walk you through becoming exalted with the Conjurer Margoss faction.",
condition_suggested="level>=100 and level<=110",
},[[
step
collect Goblin Glider Kit##109076 |c |condition rep("Conjurer Margoss")>=BestFriend
|tip You can create these, if you have Engineering.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Dalaran L/10 38.13,45.34 < 20 |only if walking
Follow the path |goto Dalaran L/10 30.75,32.64 < 20 |only if walking
Jump off toward the floating island |goto Dalaran L/10 26.22,20.40 < 20 |only if walking
|tip Use the Goblin Glider Kit immediately after jumping.
Fish in the Water
collect Mark of Aquaos##141975 |n
|tip There's a chance to get these when fishing here.
Use the Mark of Aquaos |use Mark of Aquaos##141975
|tip This will summon Aquaos the Unleashed in the pond.
|tip Killing him will buff the pond to have a 100% catch chance for Drowned Mana for about 2-3 minutes.
collect Drowned Mana##138777 |n
talk Conjurer Margoss##108825
|tip Use the dialogue options to give him the Drowned Mana.
Gain Best Friend Reputation with Conjurer Margoss |condition rep("Conjurer Margoss")>=BestFriend |goto Dalaran L/10 23.10,-11.40 |region dalaran_margosss_retreat
step
_Congratulations!_
You earned Best Friend reputation with the "Conjurer Margoss" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\Court of Farondis",{
author="support@zygorguides.com",
keywords={"Court","Farondis"},
description="This guide will walk you through becoming exalted with the Court of Farondis faction.",
condition_suggested="level>=100 and level<=110",
},[[
step
Gain Exalted Reputation with Court of Farondis |condition rep("Court of Farondis")>=Exalted
|tip Use the "Azsuna" leveling guide to accomplish this.
|tip Complete world quests in Azsuna.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Court of Farondis" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\Dreamweavers",{
author="support@zygorguides.com",
keywords={"Dreamweavers"},
description="This guide will walk you through becoming exalted with the Dreamweavers faction.",
condition_suggested="level>=100 and level<=110",
},[[
step
Gain Exalted Reputation with Dreamweavers |condition rep("Dreamweavers")>=Exalted
|tip Use the "Val'sharah" leveling guide to accomplish this.
|tip Complete world quests in Val'sharah.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Dreamweavers" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\Highmountain Tribe",{
author="support@zygorguides.com",
keywords={"Highmountain","Tribe"},
description="This guide will walk you through becoming exalted with the Highmountain Tribe faction.",
condition_suggested="level>=100 and level<=110",
},[[
step
Gain Exalted Reputation with Highmountain Tribe |condition rep("Highmountain Tribe")>=Exalted
|tip Use the "Highmountain" leveling guide to accomplish this.
|tip Complete world quests in Highmountain.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Highmountain Tribe" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\The Nightfallen",{
author="support@zygorguides.com",
keywords={"Nightfallen"},
description="This guide will walk you through becoming exalted with The Nightfallen faction.",
condition_suggested="level>=100 and level<=110",
achieveid={10778},
},[[
step
Gain Exalted Reputation with The Nighfallen |condition rep("The Nighfallen")>=Exalted |goto Suramar/0 36.51,46.80 |region suramar_shalaran
|tip Use the "Suramar (110)" leveling guide to accomplish this.
|tip Complete world quests in Suramar.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip
_About Ancient Mana:_
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (110) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
|tip
_Feed Ancient Mana to These Nightfallen NPC's:_
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (110) leveling guide.
step
_Congratulations!_
You earned Exalted reputation with "The Nightfallen" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\Valarjar",{
author="support@zygorguides.com",
keywords={"Valarjar"},
description="This guide will walk you through becoming exalted with the Valarjar faction.",
condition_suggested="level>=100 and level<=110",
},[[
step
Gain Exalted Reputation with Valarjar |condition rep("Valarjar")>=Exalted
|tip Use the "Stormheim" leveling guide to accomplish this.
|tip Complete world quests in Stormheim.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Valarjar" faction.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Reputations Guides\\Legion Reputations\\The Wardens",{
author="support@zygorguides.com",
keywords={"Wardens"},
description="This guide will walk you through becoming exalted with The Wardens faction.",
condition_suggested="level>=100 and level<=110",
},[[
step
Gain Exalted Reputation with The Wardens |condition rep("The Wardens")>=Exalted
|tip Complete world quests in all zones that are labeled as "The Wardens".
|tip Look under the world quest title in the tooltip when you hover over a world quest on the map.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with "The Wardens" faction.
]])
