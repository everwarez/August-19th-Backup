if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end


-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("crazy_cat",[[
	step
		This guide will help you obtain 20 different cat pets for the achievement and title.
		All of the pets in this guide are in-game, and do not require the Blizzard Store or TCG to obtain.
		confirm
//BLACK TABBY
	step		
		_Kill_ any and all mobs in _Hillsbrad Foothills_ |goto Hillsbrad Foothills 58.8,74.6
		|tip Every mob here has a chance to drop the Black Tabby Cat's carrier
		collect 1 Cat Carrier (Black Tabby)##8491 |n
		learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
		|achieve 8397/1
		modeldisplay 5448
//BOMBAY CAT
	step
		talk Rickle Goldgrubber##8123
		buy 1 Cat Carrier (Bombay)##8485 |goto The Cape of Stranglethorn/0 40.1,72.4 |n
		These pets aren't available to the Horde by normal means.
		Alternatively, you can purchase this from the Horde Auctioneers in the home cities, although it may not be available
		learnpet Bombay Cat##7385 |use Cat Carrier (Bombay)##8485
		|achieve 8397/2
		modeldisplay 5556
//CALICO CAT
	step
		talk Breanni##28951
		buy 1 Calico Cat##46398 |goto Dalaran 58.6,39.6 |n
		learnpet Calico Cat##34364 |use Calico Cat##46398
		|achieve 8397/3
		modeldisplay 11709
//CAT
	step
		The _Cat_ is level 1
		Challenge one to a pet battle and capture it |goto Elwynn Forest 44.6,53.4
		learnpet Cat##62019
		|achieve 8397/4
		modeldisplay 5585
//CHEETAH CUB
	step
		The _Cheetah Cubs_ are level 3
		Challenge one to a pet battle and capture it |goto Northern Barrens 66.5,71.3
		learnpet Cheetah Cub##62129
		|achieve 8397/5
		modeldisplay 42362
//CINDER KITTEN; Not part of the achievement? 8397/6
//CORNISH REX
	step
		talk Rickle Goldgrubber##8123
		buy 1 Cat Carrier (Cornish Rex)##8486 |goto The Cape of Stranglethorn/0 40.1,72.4 |n
		learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
		These pets aren't available to the Horde by normal means
		Alternatively, you can purchase this from the Horde Auctioneers in the home cities, although it may not be available
		|achieve 8397/7
		modeldisplay 5586
//DARKMOON CUB
	step
		This pet requires Darkmoon Island to be accessible
		Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
		earn 90 Darkmoon Prize Ticket##515
		talk Lhara##14846
		buy 1 Darkmoon Cub##74981 |goto Darkmoon Island 48.2,69.6 |n
		learnpet Darkmoon Cub##56031 |use Darkmoon Cub##74981
		|achieve 8397/8
		|modeldisplay 39137
//FLUXFIRE FELINE
	step
		The _Fluxfire Felines_ in the area are around level 1
		learnpet Fluxfire Feline##68838 |goto New Tinkertown 36.6,52.7
		|achieve 8397/24
//ORANGE TABBY
	step
		talk Rickle Goldgrubber##8123
		buy 1 Cat Carrier (Orange Tabby)##8487 |goto The Cape of Stranglethorn/0 40.1,72.4 |n
		These pets aren't available to the Horde by normal means
		Alternatively, you can purchase this from the Horde Auctioneers in the home cities, although it may not be available
		learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
		|achieve 8397/12
		modeldisplay 5554
//PANTHER CUB
	step
		talk Bwemba##53081
		accept Bwemba's Spirit##29219 |goto Orgrimmar,32.6,68.1
		accept To Bambala##29220 |goto Orgrimmar,32.6,68.1
	step
		talk Kil'karil##52980
		turnin To Bambala##29220 |goto Northern Stranglethorn,64.6,40.0
		accept Serpents and Poison##29221 |goto Northern Stranglethorn,64.6,40.0
	step
		kill 10 Jungle Serpent |q 29221/1 |goto 61.2,39.8
		Click Injured Bambala Headhunters 
		|tip They look like green bodies laying on the ground around this area.
		Heal 10 Headhunters |q 29221/2 |goto 61.2,39.8
	step
		talk Kil'karil##52980
		turnin Serpents and Poison##29221 |goto 64.6,40.0
	step
		Next to you:
		talk Bwemba##52234
		accept Spirits Are With Us##29222
	step
		Click the Bonfire
		|tip It looks like a big pile of burning sticks.
		Watch the dialogue
		Use the Bonfire near Bambala |q 29222/1 |goto 65.1,39.9
	step
		Next to you:
		talk Bwemba##52234
		turnin Spirits Are With Us##29222
	step
		talk Kil'karil##52980
		accept Nesingwary Will Know##29223 |goto 64.6,40.0
	step
		talk Hemet Nesingwary Jr.##52294
		turnin Nesingwary Will Know##29223 |goto 44.1,22.9
		accept Track the Tracker##29226 |goto 44.1,22.9
	step
		talk Grent Direhammer##52346
		turnin Track the Tracker##29226 |goto 50.4,21.7
		accept The Hunter's Revenge##29227 |goto 50.4,21.7
	step
		kill Mauti?##52349
		Bring Grent Direhammer to the body of Mauti |q 29227/1 |goto 64.0,19.6
	step
		Click the Complete Quest box that appears under you minimap
		turnin The Hunter's Revenge##29227
		You will automatically accept a new quest:
		accept Follow That Cat##29228
	step
		Go to this spot
		Find Mauti's Lair |q 29228/1 |goto 77.7,68.4
	step
		Next to you:
		talk Bwemba##52234
		turnin Follow That Cat##29228
		accept Mauti##29230
	step
		kill Mauti##52372
		Let Bwemba Inspect the Cat |q 29230/1 |goto 77.2,69.0
	step
		Next to you:
		talk Bwemba##52234
		turnin Mauti##29230
		accept How's the Hunter Holding Up?##29231
	step
		_Enter_ the cave |goto 76.5,67.5 < 10 |walk
		talk Grent Direhammer##52371
		turnin How's the Hunter Holding Up?##29231 |goto 76.1,66.7
		accept Bury Me With Me Boots...##29232 |goto 76.1,66.7
	step
		Click Direhammer's Boots
		|tip They look like a small pair of brown boots sitting on the ground inside this cave.
		collect Direhammer's Boots |q 29232/1 |goto 76.0,66.5
	step
		talk Grent Direhammer##52371
		turnin Bury Me With Me Boots...##29232 |goto 76.1,66.7
	step
		Talk to Panther Cub
		accept Some Good Will Come##29268 |goto 76.1,66.7
		collect 1 Panther Cub##68833 |goto 76.1,66.7
		modeldisplay 37814
	step
		learnpet Panther Cub##52226 |use Panther Cub##68833
		|achieve 8397/13
//SAND KITTEN
	step
		The _Sand Kittens_ are level 13. Challenge one to a pet battle and capture it
		learnpet Sand Kitten##62257 |goto Tanaris 33.1,71.0
		|achieve 8397/14
		modeldisplay 5586
//SAPPHIRE CUB
	step
		You must complete Dailies for the _Golden Lotus_ to get the recipe for the _Sapphire Cub_
		You will also need 600 Jewelcrafting to create it
		map Vale of Eternal Blossoms
		path	54.6,23.7	52.8,23.1	47.0,18.7
		path	42.6,15.0	41.8,17.8	36.9,18.0
		path	353.5,21.3	35.0,28.7	35.6,34.5
		path	42.2,29.1	45.4,29.6	47.9,26.5
		path	50.8,31.5	53.6,28.6
		Follow the path, mining any node you see
		Use your _Prospecting_ skill on any 5 ore you gather |cast Prospecting##31252
		collect 3 Wild Jade##76138 |or
		confirm |or
	step
		create 1 Sapphire Cub##82775 |n
		learnpet Sapphire Cub##61883 |use Sapphire Cub##82775
		|achieve 8397/15
//SIAMESE CAT
	step
	label "siamese"
		talk Dealer Rashaad##20980
		buy 1 Cat Carrier (Siamese)##8490 |goto Netherstorm 43.4,35.2
		modeldisplay 5585
	step
		learnpet Siamese Cat##7380 |use Cat Carrier (Siamese)##8490
		|achieve 8397/16
//SILVER TABBY CAT
	step
		talk Rickle Goldgrubber##8123
		buy 1 Cat Carrier (Silver Tabby)##8488 |goto The Cape of Stranglethorn/0 40.1,72.4
		These pets aren't available to the Horde by normal means
		Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available
		|modeldisplay 5555
	step
		learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
		|achieve 8397/17
//SNOW CUB
	step
		The _Snow Cubs_ are level 1
		Challenge one to a pet battle and capture it
		learnpet Snow Cub##61689 |goto Dun Morogh 51.1,44.6
		|achieve 8397/18
		modeldisplay 42203
//WHITE KITTEN
	step
		talk Rickle Goldgrubber##8123
		buy 1 Cat Carrier (White Kitten)##8489 |goto The Cape of Stranglethorn/0 40.1,72.4
		These pets aren't available to the Horde by normal means
		Alternatively, you can purchase this from the Horde Auctioneer, although it may not be available
		modeldisplay 9989
	step
		learnpet White Kitten##7386 |use Cat Carrier (White Kitten)##8489
		|achieve 8397/21
//WINTERSPRING CUB
	step
		talk Michelle De Rum##52830
		buy 1 Winterspring Cub##69239 |goto Winterspring 59.8,51.6
		|modeldisplay 37712
	step
		learnpet Winterspring Cub##52831 |use Winterspring Cub##69239
		|achieve 8397/22
//FELINE FAMILIAR (DIFFICULT)
	step
		This pet can only be obtained during the Hallows End event
		collect 150 Tricky Treat##33226
		talk Chub##53757
		buy Feline Familiar##70908 |goto Undercity,67.8,6.8
		modeldisplay 38539
	step
		learnpet Feline Familiar##53884 |use Feline Familiar##70908
		|achieve 8397/9
//MR. BIGGLESWORTH (DIFFICULT)
	step
		This pet is obtained through getting the Raiding with Leases Achievement
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
		_Check your in-game mailbox for your new pet_
		collect 1 Mr. Bigglesworth##93031 |n
		learnpet Mr. Bigglesworth##68655 |use Mr. Bigglesworth##93031
		modeldisplay 46897
//XU-FU, CUB OF XUEN
	step
	label "xufu"
		You can only obtain this pet by purchasing it using _Celestial Coins_
		You get Celestial Coins from completing the weekly quest, _The Celestial Tournament_
		confirm
	step
		#include "celestial_tournament"
	step
		You will have to have _3 Celestial Coins_ in order to obtain this pet
		collect 3 Celestial Coin##101529 |next
		Click here to go back to the beginning of the guide to complete the weekly quest again |confirm |next "xufu"
	step
		talk Master Li##73082
		buy 1 Xu-Fu, Cub of Xuen##101771 |goto Timeless Isle/0 34.8,59.7
	step
		Use the _Xu-Fu, Cub of Xuen_ in your bags |use Xu-Fu, Cub of Xuen##101771
		learnpet Xu-Fu, Cub of Xuen##71942
	step
		Congratulations, you have obtained the _Crazy for Cats_ achievement!
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Celestial_Champion",[[
	description
	condition end achieved(8535)
		step
			You will need to have a full raid group to attempt this achievement
			The four celestials are very powerful bosses, but you have an advantage as the spirit healer is right outsie the court, so if you die, you have a chance to make it back in time to avoid the boss resetting
			confirm
]])