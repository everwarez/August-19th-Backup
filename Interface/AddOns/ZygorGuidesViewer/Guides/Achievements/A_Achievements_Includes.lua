if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



ZygorGuidesViewer:RegisterInclude("A_Marista_Hub",[[
	step
		talk Tony Tuna##60182
		accept Particular Plumage##30667 |goto Krasarang Wilds 51.7,75.3 
	step
		talk Jay Cloudfall##60173
		accept Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.5,76.9
	step
		kill Crimson Lory##60198+
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
	step
		click Tough Kelp
		collect Tough Kelp##80804 |q 30668/2 |goto 52.3,77.9
	step
		click Spare Plank
		collect 4 Spare Plank##80685 |q 30668/1 |goto 52.4,76.2
	step
		talk Jay Cloudfall##60173
		turnin Build Your Own Raft##30668 |goto 51.5,76.9
		accept The Lorewalker on the Lake##30669 |goto 51.5,76.9
	step
		click Your Raft
		Pick up your raft |q 30669/1 |goto 51.7,76.6
	step
		talk Wise Ana Wu##60139
		turnin The Lorewalker on the Lake##30669 |goto 46.0,78.9
		accept Wisdom Has A Price##30671 |goto 46.0,78.9
		accept Misery##30691 |goto 46.0,78.9
	step
		Go underwater and enter the cave |goto 46.0,79.9 < 5  |walk
		kill Nahassa##60203+ 
		|tip Nahassa will use an ability called Feverish Deathbite that will cause you to hallucinate many more crocolisks have spawned, they aren't really there so don't panic.
		Put Nahassa out of his misery |q 30691/1 |goto 46.2,83.5
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin Misery##30691
	step
		Exit the cave |goto 46.0,79.9 < 5  |walk
		kill Great Grey Shark##60204+, Nayeli Hammerhead##60432+
		collect 5 Shark Fillet##80810+ |q 30671/1 |goto 46.0,79.0
	step
		talk Wise Ana Wu##60139
		turnin Wisdom Has A Price##30671 |goto 46.0,78.9
		accept Balance##30672 |goto 46.0,78.9
	stickystart "accepttreasure"
	step
		Run over one of the piles of fish along the beach.
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Balance Without Violence##30674 |goto 45.1,84.9
	step "accepttreasure"
		kill Unga Fish-Getter##60299+
		collect 1 Confusing Treasure Map##80827 |n
		Click the Confusing Treasure Map in your bags |use Confusing Treasure Map##80827
		accept Buried Hozen Treasure##30675
	step
		clicknpc Flailing Carp##60367 
		|tip You can find these all along the beach
		Throw 6 Flailing Carp back into the water |q 30674/1 |goto 46.1,86.7
		kill 10 Unga Fish-Getter##60299+ |q 30672/1 |goto 46.1,86.7
		click Lump of Sand
		collect Buried Hozen Treasure##80817 |q 30675/1 |goto 46.1,86.7
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin Balance Without Violence##30674
		turnin Buried Hozen Treasure##30675
	step
		talk Jay Cloudfall##60173
		turnin Balance##30672 |goto 51.5,76.8
	step
		talk Tired Shushen##58278
		accept Thieving Raiders##30168 |goto Krasarang Wilds 29.7,39.0
		accept Raid Leader Slovan##30169 |goto Krasarang Wilds 29.7,39.0
	step
		kill Slovan##58285 |q 30169/1
		kill Riverblade Flesh-hunter##58274
		collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto 31.8,29.0
	step
		talk Tired Shushen##58278
		turnin Thieving Raiders##30168 |goto Krasarang Wilds 29.7,39.1
		turnin Raid Leader Slovan##30169 |goto Krasarang Wilds 29.7,39.1
	--added
	step
		Go to this point |goto Krasarang Wilds 66.4,32.5
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept The Arcanic Oubliette##30274
	step
		click Northwest Oubliette Shackle##6478 |q 30274/2 |goto Krasarang Wilds 66.6,31.7
		click Northeast Oubliette Shackle##6478 |q 30274/1 |goto Krasarang Wilds 68.0,31.5
		click Southwest Oubliette Shackle##6478 |q 30274/3 |goto Krasarang Wilds 66.7,33.7
	step
		talk Lorekeeper Vaeldrin##58745
		turnin The Arcanic Oubliette##30274
		accept The Lost Dynasty##30344
	step
		talk Lyalia##58735
		accept Blind Them!##30384
		talk Kang Bramblestaff##56114
		accept Squirmy Delight##30350
	--start
	step
		clicknpc Dawnchaser Captive##58608
		Rescue 8 Captives |q 30163/1
		kill 8 Korjan Reclaimer##58614+ |q 30229/1 |goto 24.6,39.2
		click Mogu Artifact
		collect 10 Mogu Artifact##79120+ |q 30230/1 |goto 24.6,39.2
	step
		talk Kang Bramblestaff##56112
		turnin Re-Reclaim##30230 |goto 28.8,50.6
	step
		talk Kor Bloodtusk##58114
		turnin For the Tribe##30163 |goto 28.7,50.9
		turnin The Greater Danger##30229 |goto 28.7,50.9
	step
		talk Ambassador Han##58630
		accept The Mantid##30175 |goto 24.9,34.3
	step
		talk Lorekeeper Vaeldrin##58745
		accept The Stoneplow Convoy##30357 |goto 16.0,39.8
	step
		clicknpc Stoneplow Envoy##58955
		Save 7 Stoneplow Envoy |q 30164/1 |goto 15.3,35.3
		kill Ik'thallik Precursor##58367+, Ik'thallik Vanguard##58368+
		Kill 10 Ik'thallik Mantid |q 30175/1 |goto 15.3,35.3
	step
		talk Lorekeeper Vaeldrin##58745
		turnin The Stoneplow Convoy##30357 |goto 16.0,39.8
	step
		talk Ambassador Len##58954
		turnin The Mantid##30175 |goto 15.7,39.7
	step
		talk Sunwalker Dezco##58607
		accept For Family##30174 |goto 16.0,39.8
	step
		talk Kor Bloodtusk##58670
		Try to free Kor from his bonds
		kill Groundbreaker Brojai##58224 |q 30174/1 |goto 23.6,48.8
		|tip He will summon adds one at a time. They aren't too difficult to kill.
	step
		talk Sunwalker Dezco##58607
		turnin For Family##30174 |goto 28.9,50.8
		accept Warn Stoneplow##30241 |goto 28.9,50.8
	step
		talk Loon Mai##56720
		turnin Warn Stoneplow##30241 |goto Valley of the Four Winds 19.5,56.8
	step
		talk Mudmug##56474
		accept It Does You No Good In The Keg##30653 |goto 18.1,55.9
	step
		talk Loon Mai##56720
		accept The Swarm Begins##30622 |goto Valley of the Four Winds 18.0,56.3
	step
		talk Mei Barrelbottom##59855
		accept The Mantidote##30623 |goto Valley of the Four Winds 18.0,56.5
	step
		Deliver beer to Zhu's Wardens |q 30653/1 |goto Valley of the Four Winds 17.5,50.2
	step
		Deliver beer to Crane Wing Priests |q 30653/2 |goto Valley of the Four Winds 15.2,55.4
	step
		Deliver beer to Tauren Settlers |q 30653/4 |goto Valley of the Four Winds 13.0,56.0
	step
		Deliver beer to Shado-Pan |q 30653/3 |goto Valley of the Four Winds 10.7,55.5
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin It Does You No Good In The Keg##30653
	step
		kill Ik'thallik Infestor##56721+, Ik'thik Warrior##56722+
		Kill 15 Ik'thallik Infestors or Warriors |q 30622/1 |goto 13.4,54.6
		Use Ken-Ken's mask on Ik'thik Wing Commanders. |use Ken-Ken's Mask##80337
		kill Manifestation of Fear##59874+
		Defeat 5 Manifestation of Fear that come out of Ik'thik Wing Commanders. |q 30623/1 |goto 13.4,54.6
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin The Mantidote##30623
	step
		talk Guard Captain Oakenshield##57198
		turnin The Swarm Begins##30622 |goto 11.6,49.5
		accept Students No More##30625 |goto 11.6,49.5
	step
		The students you are looking for can be at one of four locations fighting one of the quest mobs below. Find the students and kill the follow monsters:
		Ik'thallik Tendon-Slicer at [9.5,54.0]
		kill Ik'thallik Tendon-Slicer##59888 |q 30625/3
		Ik'thallik Fearmonger at [9.5,58.2]
		kill Ik'thallik Fearmonger##59889 |q 30625/4
		Ik'thallik Bloodrager at [8.9,54.2]
		kill Ik'thallik Bloodrager##59887 |q 30625/1
		Ik'thik Incubator at [8.9,51.0]
		kill Ik'thik Incubator##59890 |q 30625/2
	step
		talk Guard Captain Oakenshield##57198
		turnin Students No More##30625 |goto 11.6,49.5
		accept Retreat!##30626 |goto 11.6,49.5
	step
		talk Loon Mai##56720
		turnin Retreat!##30626 |goto 18.0,56.3
	step
		talk Master Bruised Paw##59856
		accept The Savior of Stoneplow##30627 |goto 17.9,55.7
	step
		talk Miss Fanny##59857 |goto 18.0,56.7 |n
		Tell her "Let's go". |invehicle
	step
		Use your Unyielding Fist ability to defeat the Mantid Collossus. 
		|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
		kill Mantid Colossus##56703 |q 30627/1
	step
		talk Loon Mai##56720
		turnin The Savior of Stoneplow##30627 |goto 18.0,56.3
		accept The Gratitude of Stoneplow##30628 |goto 18.0,56.3
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("crazy_cat",[[
	step
		This guide will help you obtain 20 different cat pets for the achievement and title.
		All of the pets in this guide are in-game, and do not require the Blizzard Store or TCG to obtain.
		|confirm
	step
	label "menu"
		Click here to obtain the Black Tabby Cat |confirm |next "blacktabby" |only if not achieved(8397,1)
		Click here to obtain the Bombay Cat |confirm |next "bombay" |only if not achieved(8397,2)
		Click here to obtain the Calico Cat |confirm |next "calico" |only if not achieved(8397,3)
		Click here to obtain the Cat |confirm |next "normal" |only if not achieved(8397,4)
		Click here to obtain the Cheetah Cub |confirm |next "cheetah" |only if not achieved(8397,5)
		Click here to obtain the Cornish Rex |confirm |next "cornish" |only if not achieved(8397,7)
		Click here to obtain the Darkmoon Cub |confirm |next "darkmoon" |only if not achieved(8397,8)
		Click here to obtain the Feline Familiar |confirm |next "felinefam" |only if not achieved(8397,9)
		Click here to obtain the Fluxfire Feline |confirm |next "fluxfire" |only if not achieved(8397,10)
		Click here to obtain the Mr. Bigglesworth |confirm |next "bigglesworth" |only if not achieved(8397,12)
		Click here to obtain the Orange Tabby Cat |confirm |next "orangetabby" |only if not achieved(8397,14)
		Click here to obtain the Panther Cub |confirm |next "panthercub" |only if not achieved(8397,15)
		Click here to obtain the Sand Kitten |confirm |next "sandkitten" |only if not achieved(8397,16)
		Click here to obtain the Sapphire Cub |confirm |next "sapphire" |only if not achieved(8397,17)
		Click here to obtain the Siamese Cat |confirm |next "siamese" |only if not achieved(8397,18)
		Click here to obtain the Silver Tabby Cat |confirm |next "silvertabby" |only if not achieved(8397,19)
		Click here to obtain the Snow Cub |confirm |next "snowcub" |only if not achieved(8397,20)
		Click here to obtain the White Kitten |confirm |next "whitekitten" |only if not achieved(8397,23)
		Click here to obtain the Winterspring Cub |confirm |next "winterspring" |only if not achieved(8397,24)
		Click here to obtain Xu-Fu, Cub of Xuen |confirm |next "xufu" |only if not achieved(8397,25)
//BLACK TABBY
	step
	label "blacktabby"
		_Kill_ any and all mobs in _Hillsbrad Foothills_ 
		|tip Every mob here has a chance to drop the Black Tabby Cat's carrier
		collect 1 Cat Carrier (Black Tabby)##8491 |goto Hillsbrad Foothills 58.8,74.6
		|modeldisplay 5448
	step
		learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//BOMBAY CAT
	step
	label "bombay"
		talk Donni Anthania##6367
		buy 1 Cat Carrier (Bombay)##8485 //5556 |goto Elwynn Forest,44.2,53.2
		|modeldisplay 5556
	step
		learnpet Bombay Cat##7385 |use Cat Carrier (Bombay)##8485
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CALICO CAT
	step
	label "calico"
		talk Breanni##28951
		buy 1 Calico Cat##46398 |goto Dalaran 58.6,39.6
		|modeldisplay 11709
	step
		learnpet Calico Cat##34364 |use Calico Cat##46398
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CAT
	step
	label "normal"
		The _Cat_ is level 1. Challenge one to a pet battle and capture it.
		learnpet Cat##62019 |goto Elwynn Forest 44.6,53.4
		|modeldisplay 5585
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CHEETAH CUB
	step
	label "cheetah"
		The _Cheetah Cubs_ are level 3. Challenge one to a pet battle and capture it.
		learnpet Cheetah Cub##62129 |goto Northern Barrens 66.5,71.3
		|modeldisplay 42362
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CORNISH REX
	step
	label "cornish"
		talk Donni Anthania##6367 
		buy 1 Cat Carrier (Cornish Rex)##8486 //5586 |goto Elwynn Forest,44.2,53.2
		|modeldisplay 5586
	step
		learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//DARKMOON CUB
	step
	label "darkmoon"
		This pet requires Darkmoon Island to be accessible.
		|confirm
	step
		Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9 < 5 
		Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
		earn 90 Darkmoon Prize Ticket##515
	step
		talk Lhara##14846
		buy 1 Darkmoon Cub##74981 |goto Darkmoon Island,48.2,69.6
		|modeldisplay 39137
	step
		learnpet Darkmoon Cub##56031 |use Darkmoon Cub##74981
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//FLUXFIRE FELINE
	step
	label "fluxfire"
		The _Fluxfire Felines_ in the area are around level 1.
		learnpet Fluxfire Feline##68838 |goto New Tinkertown 36.6,52.7
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//ORANGE TABBY
	step
	label "orangetabby"
		talk Donni Anthania##6367
		buy 1 Cat Carrier (Orange Tabby)##8487 |goto Elwynn Forest,44.2,53.2
		|modeldisplay 5554
	step
		learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//PANTHER CUB
	step
	label "panthercub"
		talk Bwemba##52654
		accept Bwemba's Spirit##29100 |goto Stormwind City,25.9,29.3
		accept To Fort Livingston##29102 |goto Stormwind City,25.9,29.3
	step
		talk Livingston Marshal##52281
		turnin To Fort Livingston##29102 |goto Northern Stranglethorn,52.8,66.4
		accept Serpents and Poison##29103 |goto Northern Stranglethorn,52.8,66.4
	step
		kill 10 Jungle Serpent |q 29103/1 |goto 52.0,61.4
		Click Fort Livingston Adventurers 
		|tip They look like green bodies laying on the ground around this area.
		Heal 10 Adventurers |q 29103/2 |goto 52.0,61.4
	step
		talk Livingston Marshal##52281
		turnin Serpents and Poison##29103 |goto 52.8,66.4
	step
		Next to you:
		talk Bwemba##52234
		accept Spirits Are With Us##29104
	step
		Click the Bonfire 
		|tip It's a big pile of sticks on fire in the middle of Fort Livingston.
		Watch the dialogue
		Use the Bonfire in Fort Livingston |q 29104/1 |goto 52.9,66.5
	step
		Next to you:
		talk Bwemba##52234
		turnin Spirits Are With Us##29104
	step
		talk Livingston Marshal##52281
		accept Nesingwary Will Know##29105 |goto 52.8,66.4
	step
		talk Hemet Nesingwary Jr.##52294
		turnin Nesingwary Will Know##29105 |goto 44.1,22.9
		accept Track the Tracker##29114 |goto 44.1,22.9
	step
		talk Grent Direhammer##52346
		turnin Track the Tracker##29114 |goto 50.4,21.7
		accept The Hunter's Revenge##29115 |goto 50.4,21.7
	step
		kill Mauti?##52349 
		Bring Grent Direhammer to the body of Mauti |q 29115/1 |goto 64.0,19.6
	step
		Click the Complete Quest box that appears under you minimap
		turnin The Hunter's Revenge##29115
		You will automatically accept a new quest:
		accept Follow That Cat##29116
	step
		Go to this spot
		Find Mauti's Lair |q 29116/1 |goto 77.7,68.4
	step
		Next to you:
		talk Bwemba##52234
		turnin Follow That Cat##29116
		accept Mauti##29120
	step
		kill Mauti##52372
		Let Bwemba Inspect the Cat |q 29120/1 |goto 77.2,69.0
	step
		Next to you:
		talk Bwemba##52234
		turnin Mauti##29120
		accept How's the Hunter Holding Up?##29213
	step
		Enter the cave |goto 76.5,67.5 < 5
		talk Grent Direhammer##52371
		turnin How's the Hunter Holding Up?##29213 |goto 76.1,66.7
		accept Bury Me With Me Boots...##29121 |goto 76.1,66.7
	step
		Click Direhammer's Boots 
		|tip They look like a small pair of brown boots sitting on the ground inside this cave.
		collect Direhammer's Boots |q 29121/1 |goto 76.0,66.5
	step
		talk Grent Direhammer##52371
		turnin Bury Me With Me Boots...##29121 |goto 76.1,66.7
	step
		talk Panther Cub##52374
		accept Some Good Will Come##29267 |goto 76.1,66.7
		collect 1 Panther Cub##68833 |goto 76.1,66.7
	step
		learnpet Panther Cub##52226 |use Panther Cub##68833
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SAND KITTEN
	step
	label "sandkitten"
		The _Sand Kittens_ are level 13. Challenge one to a pet battle and capture it.
		learnpet Sand Kitten##62257 |goto Tanaris 33.1,71.0
		|modeldisplay 5586
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SAPPHIRE CUB
	step
	label "sapphire"
		This pet requires you to either have level 600 Inscription, or purchase it from the Auction House.
		Click here to gather and create the pet yourself |confirm |next "create"
		Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
	step
	label "create"
		You have to complete the Dailies for the _Golden Lotus_ to get the recipe for this pet.
		|confirm
	step
		map Vale of Eternal Blossoms
		path	54.6,23.7	52.8,23.1	47.0,18.7
		path	42.6,15.0	41.8,17.8	36.9,18.0
		path	353.5,21.3	35.0,28.7	35.6,34.5
		path	42.2,29.1	45.4,29.6	47.9,26.5
		path	50.8,31.5	53.6,28.6
		Follow the path, mining any node you see.
		Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
		collect 3 Wild Jade##76138
	step
		create 1 Sapphire Cub##82775
		|next "done"
	step
	label "buy"
		talk Auctioneer Chilton##8670
		buy 1 Sapphire Cub##82775 |goto Stormwind City 61.0,71.6
	step
	label "done"
		learnpet Sapphire Cub##61883 |use Sapphire Cub##82775
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SIAMESE CAT
	step
	label "siamese"
		talk Dealer Rashaad##20980
		buy 1 Cat Carrier (Siamese)##8490 |goto Netherstorm 43.4,35.2
		|modeldisplay 5585
	step
		learnpet Siamese Cat##7380 |use Cat Carrier (Siamese)##8490
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SILVER TABBY CAT
	step
	label "silvertabby"
		talk Donni Anthania##6367
		buy 1 Cat Carrier (Silver Tabby)##8488 |goto Elwynn Forest,44.2,53.2
		|modeldisplay 5555
	step
		learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SNOW CUB
	step
	label "snowcub"
		The _Snow Cubs_ are level 1. Challenge one to a pet battle and capture it.
		learnpet Snow Cub##61689 |goto Dun Morogh 51.1,44.6
		|modeldisplay 42203
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//WHITE KITTEN
	step
	label "whitekitten"
		map Stormwind City
		path follow loose;loop off;
		path	69.2,62.0	67.6,59.0	69.6,53.2
		path	66.0,50.8	61.8,44.6	58.2,53.6
		path	56.0,56.6	53.0,55.2	50.4,56.8
		path	46.8,56.0	51.2,63.0	55.4,63.2
		path	58.6,64.2	63.6,61.2	67.0,64.6
		This pet is purchesed from _Lil Timmy_, who patrols around Stormwind.
		Follow the path to find him.
		talk Lil Timmy##8666
		buy 1 Cat Carrier (White Kitten)##8489
		|modeldisplay 9989
	step
		learnpet White Kitten##7386 |use Cat Carrier (White Kitten)##8489
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//WINTERSPRING CUB
	step
	label "winterspring"
		talk Michelle De Rum##52830
		buy 1 Winterspring Cub##69239 |goto Winterspring 59.8,51.6
		|modeldisplay 37712
	step
		learnpet Winterspring Cub##52831 |use Winterspring Cub##69239
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//FELINE FAMILIAR (DIFFICULT)
	step
	label "felinefam"
		This pet can only be obtained during the Hallows End event.
		collect 150 Tricky Treat##33226
	step
		talk Dorothy##53728
		buy Feline Familiar##70908 |goto Elwynn Forest,31.8,50.0
		|modeldisplay 38539
	step
		learnpet Feline Familiar##53884 |use Feline Familiar##70908
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//MR. BIGGLESWORTH (DIFFICULT)
	step
	label "bigglesworth"
		This pet is obtained through getting the Raiding with Leases Achievement.
		|confirm
	step
		Capture a Mini Mindslayer |achieve 7934/1
		Capture an Anubisath Idol |achieve 7934/2
		Capture a Giant Bone Spider |achieve 7934/3
		Capture a Fungal Abomination |achieve 7934/4
		Capture a Stitched Pup |achieve 7934/5
		Capture a Harbinger of Flame |achieve 7934/6
		Capture a Corefire Imp |achieve 7934/7
		Capture an Ashstone Core |achieve 7934/8
		Capture an Untamed Hatchling |achieve 7934/9
		Capture a Chrominius |achieve 7934/10
		Capture a Death Talon Whelpguard |achieve 7934/11
		Capture a Viscidus Globule |achieve 7934/12
	step
		Check your in-game mailbox for your new pet!
		collect 1 Mr. Bigglesworth##93031
		|modeldisplay 46897
	step
		learnpet Mr. Bigglesworth##68655 |use Mr. Bigglesworth##93031
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//XU-FU, CUB OF XUEN
	step
	label "xufu"
		You can only obtain this pet by purchasing it using _Celestial Coins_
		You get Celestial Coins from completing the weekly quest, _The Celestial Tournament_.
		|confirm
	step
		#include "celestial_tournament"
	step
		You will have to have _3 Celestial Coins_ in order to obtain this pet.
		collect 3 Celestial Coin##101529 |next
		Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "startxufu"
	step
		talk Master Li##73082 |goto Timeless Isle/0 34.8,59.7
		buy 1 Xu-Fu, Cub of Xuen##101771
	step
		Use the _Xu-Fu, Cub of Xuen_ in your bags. |use Xu-Fu, Cub of Xuen##101771
		learnpet Xu-Fu, Cub of Xuen##71942
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//END
	step
	label "end"
		Congratulations, you have obtained the _Crazy for Cats_ achievement!
]])