if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



--------------------------------------------------------------------------------------------------------------------------------------
-- Alchemy
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Alchemy",[[
		Known from learning Alchemy
		learn Elixir of Lion's Strength##2329
	step
		Known from learning Alchemy
		learn Elixir of Minor Defense##7183
	step
		Known from learning Alchemy
		learn Minor Healing Potion##2330
	step
		#include "trainer_Alchemy"
		learn Weak Troll's Blood Elixir##3170
	step
		#include "trainer_Alchemy"
		learn Minor Mana Potion##2331
	step
		#include "trainer_Alchemy"
		learn Minor Rejuvenation Potion##2332
	step
		This item is no longer in the game.
		learn Discolored Healing Potion##4508
	step
		#include "trainer_Alchemy"
		learn Elixir of Minor Agility##3230
	step
		#include "trainer_Alchemy"
		learn Elixir of Minor Fortitude##2334
	step
		#include "trainer_Alchemy"
		learn Lesser Healing Potion##2337
	step
		talk Hagrus##3335
		buy 1 Recipe: Rage Potion##5640 |n
		use Recipe: Rage Potion##5640
		learn Rage Potion##6617 |goto Orgrimmar 45.6,39.0
	step
		#include "trainer_Alchemy"
		learn Swiftness Potion##2335
	step
		#include "trainer_Alchemy"
		learn Blackmouth Oil##7836
	step
		This is a Random World Drop, from creatures level 8-36 and some dungeons
		|tip We recommend Southern Barrens for grinding.
		use Recipe: Elixir of Giant Growth##6663
		learn Elixir of Giant Growth##6662
	step
		#include "trainer_Alchemy"
		learn Elixir of Water Breathing##7179
	step
		#include "trainer_Alchemy"
		learn Elixir of Wisdom##3171
	step
		talk Kzixx##3134
		buy 1 Recipe: Holy Protection Potion##6053 |n
		use Recipe: Holy Protection Potion##6053
		learn Holy Protection Potion##7255 |goto Duskwood 81.8,19.8
	step
		#include "trainer_Alchemy"
		learn Swim Speed Potion##7841
	step
		#include "trainer_Alchemy"
		learn Healing Potion##3447
	step
		#include "trainer_Alchemy"
		learn Lesser Mana Potion##3173
	step
		This is a Random World Drop, from creatures level 16-28 and some dungeons
		|tip We recommend Black Fathom Deeps for grinding.
		use Recipe: Potion of Curing##3394
		learn Potion of Curing##3174
	step
		#include "trainer_Alchemy"
		learn Strong Trolls Blood Elixir##3176
	step
		#include "trainer_Alchemy"
		learn Fire Oil##7837
	step
		#include "trainer_Alchemy"
		learn Elixir of Defense##3177
	step
		#include "trainer_Alchemy"
		learn Elixir of Minor Accuracy##63732
	step
		talk Christoph Jeffcoat##2393
		_This NPC is Horde. You will have to purchase it from the Auction House instead_ |only Alliance
		use Recipe: Shadow Protection Potion##6054
		learn Shadow Protection Potion##7256 |goto Hillsbrad Foothills 57.5,47.8
	step
		#include "trainer_Alchemy"
		learn Elixir of Firepower##7845
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Gnomeregan for grinding.
		use Recipe: Elixir of Lesser Agility##3396
		learn Elixir of Lesser Agility##2333
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Gnomeregan for grinding.
		use Elixir of Ogre's Strength##6211
		learn Elixir of Ogre's Strength##3188
	step
		talk Kor'geld##3348
		buy 1 Recipe: Free Action Potion##5642 |n
		use Recipe: Free Action Potion##5642
		learn Free Action Potion##6624 |goto Orgrimmar 55.6,46.4
	step
		#include "trainer_Alchemy"
		learn Greater Healing Potion##7181
	step
		#include "trainer_Alchemy"
		learn Mana Potion##3452
	step
		#include "trainer_Alchemy"
		learn Lesser Invisibility Potion##3448
	step
		#include "trainer_Alchemy"
		learn Shadow Oil##3449
	step
		talk Jeeda##4083
		buy 1 Recipe: Fire Protection Potion##7257 |n
		use Recipe: Fire Protection Potion##7257
		learn Fire Protection Potion##7257 |goto Stonetalon Mountains 50.4,63.6
	step
		#include "trainer_Alchemy"
		learn Elixir Fortitude##3450
	step
		talk Hagrus##3335
		buy 1 Recipe: Great Rage Potion##5643 |n
		use Recipe: Great Rage Potion##5643
		learn Great Rage Potion##6618 |goto Orgrimmar 44.0,38.4
	step
		This is a Random World Drop, from creatures level 25-45 and some dungeons
		|tip We recommend Uldaman for grinding.
		use Recipe: Major Troll's Blood Elixir##3831
		learn Major Troll's Blood Elixir##3451
	step
		#include "trainer_Alchemy"
		learn Elixir of Agility##11449
	step
		talk Glyx Brewright##2848
		buy 1 Recipe: Frost Protection Potion##7258 |n
		use Recipe: Frost Protection Potion##7258
		learn Frost Protection Potion##7258 |goto The Cape of Stranglethorn 42.6,74.8
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect 1 Recipe: Elixir of Frost Power##17709 |n
		use Recipe: Elixir of Frost Power##17709
		learn Elixir of Frost Power##21923
//1 through 3 of Nature Protection Potions
	step
	label	nature_1
		talk Alchemist Pestlezugg##5594
		buy 1 Recipe: Nature Protection Potion##6057 |n
		use Recipe: Nature Protection Potion##6057
		learn Nature Protection Potion##7259 |goto Tanaris 50.8,28.0
	step
	label	nature_2
		talk Bronk##8158
		buy 1 Recipe: Nature Protection Potion##6057 |n
		use Recipe: Nature Protection Potion##6057
		learn Nature Protection Potion##7259 |goto Feralas 76.0,43.4
	step
	label	nature_3
		talk Glyx Brewright##2848
		buy 1 Recipe: Nature Protection Potion##6057 |n
		use Recipe: Nature Protection Potion##6057
		learn Nature Protection Potion##7259 |goto 42.6,74.8
	step
		This is a Random World Drop, from creatures level 25-46 and some dungeons
		|tip We recommend Uldaman for grinding.
		use Recipe: Elixir of Detect Lesser Invisibility##3832
		learn Elixir of Detect Lesser Invisibility##3453
	step
		#include "trainer_Alchemy"
		learn Elixir of Greater Defense##11450
	step
		#include "trainer_Alchemy"
		learn Catseye Elixir##12609
	step
		talk Bro'kin##2480
		buy 1 Recipe: Frost Oil##14634 |n
		use Recipe: Frost Oil##14634
		learn Frost Oil##3454 |goto Hillsbrad Foothills 44.0,21.8
	step
		#include "trainer_Alchemy"
		learn Greater Mana Potion##11448
	step
		#include "trainer_Alchemy"
		learn Oil of Immolation##11451
	step
		This recipe is created by a Goblin Engineer. You will need to buy this off the AH or have an Engineer make it for you
		use Recipe: Goblin Rocket Fuel##10644
		learn Goblin Rocket Fuel##11456
	step
		This recipe can no longer be learned. It was acquired from a quest no longer in-game
		learn Restorative Potion##11452
	step
		#include "trainer_Alchemy"
		learn Elixir of Greater Water Breathing##22808
	step
		This Recipe is no longer obtainable through the game. You will only be able to buy one from another player that has colleceted it already
		use 1 Recipe: Lesser Stoneshield Potion
		learn Lesser Stoneshield Potion##4942
	step
		#include "trainer_Alchemy"
		learn Superior Healing Potion##11457
	step
		talk Alchemist Pestlezugg##5594
		buy 1 Recipe: Philosopher's Stone##9303 |n
		use Recipe: Philosopher's Stone##9303
		learn Philosopher's Stone##11459 |goto 50.8,28.0
	step
		talk Alchemist Pestlezugg##5594
		buy 1 Recipe: Transmute Iron to Gold##9304 |n
		use Recipe: Transmute Iron to Gold##9304
		learn Transmute: Iron to Gold##11479 |goto 50.8,28.0
	step
		talk Alchemist Pestlezugg##5594
		buy 1 Recipe: Transmute Mithril to Truesilver##9305 |n
		use Recipe: Transmute Mithril to Truesilver##9305
		learn Transmute: Mithril to Truesilver##11480 |goto 50.8,28.0
	step
		kill Vilebranch Hideskinner##2644+, Vilebranch Shadow Hunter##2645+, Vilebranch Berserker##2643+, Vilebranch Shadowcaster##2642+, Vilebranch Witch Doctor##2640+
		collect 1 Recipe: Wildvine Potion##9294 |n
		use Recipe: Wildvine Potion##9294
		learn Wildvine Potion##11458 |goto The Hinterlands 65.2,75.3
	step
		#include "trainer_Alchemy"
		learn Dreamless Sleep Potion##15833
	step
		#include "trainer_Alchemy"
		learn Elixir of Detect Undead##11460
	step
		#include "trainer_Alchemy"
		learn Arcane Elixir##11461
	step
		#include "trainer_Alchemy"
		learn Elixir of Greater Intellect##11465
	step
		This is a Random World Drop, from creatures level 33-56 and some dungeons
		|tip We recommend Stratholme or Zul'Farrak for grinding.
		collect 1 Recipe: Invisibility Potion##9295 |n
		use Recipe: Invisibility Potion##9295
		learn Invisibility Potion##11464
	step
		This is a Random World Drop, from creatures level 40-56 and some dungeons
		|tip We recommend Blackrock Depths for grinding.
		collect 1 Recipe: Elixir of Dream Vision##9297 |n
		use Recipe: Elixir of Dream Vision##9297
		learn Elixir of Dream Vision##11468
	step
		#include "trainer_Alchemy"
		learn Elixir of Greater Agility##11467
	step
		This item may not drop in the game anymore, however they were known to drop from Skeletal Flayers in the past here [Western Plaguelands 54.4,79.9]
		collect 1 Recipe: Gift of Arthas##9296 |n
		use Recipe: Gift of Arthas##9296
		learn Gift of Arthas##11466
	step
		This is a Random World Drop, from creatures level 41-56 and some dungeons
		|tip We recommend Dire Maul for grinding.
		collect 1 Recipe: Elixir of Giants##9298 |n
		use Recipe: Elixir of Giants##9298
		learn Elixir of Giants
	step
		talk Bronk##8158
		buy 1 Recipe: Ghost Dye##9302 |n
		use Recipe: Ghost Dye##9302
		learn Ghost Dye##11473 |goto Feralas 76.0,43.4
	step
		#include "trainer_Alchemy"
		learn Stonescale Oil##17551
	step
		talk Rartar##8177
		buy 1 Recipe: Elixir of Demonslaying##9300
		use Recipe: Elixir of Demonslaying##9300
		learn Elixir of Demonslaying##11477 |goto 47.2,57.2
	step
		#include "trainer_Alchemy"
		learn Elixir of Detect Demon##11478
	step
		kill Dark Iron Slaver##5844, Dark Iron Taskmaster##5846
		collect 1 Recipe: Elixir of Greater Firepower##21547 |n
		use Recipe: Elixir of Greater Firepower##21547
		learn Elixir of Greater Firepower##26277 |goto Searing Gorge 40.2,41.4
	step
		talk Algernon##4610
		buy 1 Recipe: Elixir of Shadow Power##9301 |n
		use Recipe: Elixir of Shadow Power##9301
		learn Elixir of Shadow Power##11476 |goto 52.6,75.0
	step
		This is a Random World Drop, from creatures level 40-56 and some dungeons
		|tip We recommend Dire Maul for grinding.
		collect 1 Recipe: Limited Invulnerability Potion##3395 |n
		use Recipe: Limited Invulnerability Potion##3395
		learn Limited Invulnerability Potion##3175
	step
		#include "trainer_Alchemy"
		learn Mighty Rage Potion##17552
	step
		#include "trainer_Alchemy"
		learn Superior Mana Potion##17553
	step
		talk Kor'geld##3348
		buy 1 Recipe: Elixir of Superior Defense##13478 |n
		use Recipe: Elixir of Superior Defense##13478
		learn Elixir of Superior Defense##17554 |goto Orgrimmar 55.6,46.4
	step
		#include "trainer_Alchemy"
		learn Elixir of the Sages##17555
//Transmute Air to Fire 1 - 2
	step
	label	Air_to_Fire_1
		talk Argent Quartermaster Hasana##10856
		buy 1 Recipe: Transmute Air to Fire##13482 |n
		use Recipe: Transmute Air to Fire##13482
		learn Transmute: Air to Fire##17559 |goto Tirisfal Glades 83.2,68.0
	step
	label	Air_to_Fire_2
		talk Quartermaster Miranda Breechlock##11536
		buy 1 Recipe: Transmute Air to Fire##13482 |n
		use Recipe: Transmute Air to Fire##13482
		learn Transmute: Air to Fire##17559 |goto Eastern Plaguelands 75.8,54.0
	step
		talk Alchemist Pestlezugg##5594
		buy 1 Recipe: Transmute Arcanite##12958 |n
		use Recipe: Transmute Arcanite##12958
		learn Transmute: Arcanite##17187 |goto 50.8,28.0
	step
		This is a Random World Drop, from creatures level 45-56 and some dungeons
		|tip We recommend Blackrock Depths for grinding.
		collect 1 Recipe: Transmute Earth to Life##13489 |n
		use Recipe: Transmute Earth to Life##13489
		learn Transmute: Earth to Life##17566
	step
		talk Meilosh##11557
		|tip Must be Friendly with Timbermaw Hold to purchase this recipe.
		buy 1 Recipe: Transmute Earth to Water##13484 |n
		use Recipe: Transmute Earth to Water##13484
		learn Transmute: Earth to Water##17561 |goto 64.8,5.2
	step
		talk Plugger Spazzring##9499
		collect 1 Recipe: Transmute Fire to Earth##13483 |n
		use Recipe: Transmute Fire to Earth##13483
		learn Transmute: Fire to Earth##17560 |goto Blackrock Depths/2 49.8,61.6
	step
		This is a Random World Drop, from creatures level 46-60 and some dungeons
		|tip We recommend Blackrock Depths or Blackwing Lair for grinding.
		buy 1 Recipe: Transmute Life to Earth##13488 |n
		use Recipe: Transmute Life to Earth##13488
		learn Transmute: Life to Earth##17565
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Stratholme or Blackwing Lair for grinding.
		collect 1 Recipe: Transmute Undeath to Water##13486 |n
		use Recipe: Transmute Undeath to Water##13486
		learn Transmute: Undeath to Water##17563
	step
		talk Magnus Frostwake##11278
		buy 1 Recipe: Transmute Water to Air##13485 |n
		use Recipe: Transmute Water to Air##13485 
		learn Transmute: Water to Air##17562 |goto Western Plaguelands 68.0,77.6
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Blackrock Depths or Blackwing Lair for grinding.
		collect 1 Recipe: Transmute Water to Undeath##13487 |n
		use Recipe: Transmute Water to Undeath##13487
		learn Transmute: Water to Undeath##17564
	step
		#include "trainer_Alchemy"
		learn Elixir of Brute Force##17557
	step
		This recipe can no longer be learned. It was acquired from a quest no longer in-game
		learn Greater Dreamless Sleep Potion##24366
	step
		This recipe can no longer be learned. It was acquired from a quest no longer in-game
		learn Mageblood Elixir##24365
	step
		#include "trainer_Alchemy"
		learn Major Healing Potion##17556
	step
		kill Jadefire Rogue##7106
		You can find more Rogues here [Azshara 53.8,22.6]
		collect 1 Recipe: Elixir of the Mongoose##13491 |n
		use Recipe: Elixir of the Mongoose##13491
		learn Elixir of the Mongoose##17571 |goto Felwood 39.8,68.2
	step
		This is a Random World Drop, from creatures level 37-63 and some dungeons
		|tip We recommend Silithus or Ruins of Ahn'Qiraj for grinding.
		collect 1 Recipe: Greater Stoneshield Potion##13490 |n
		use Recipe: Greater Stoneshield Potion##13490
		learn Greater Stoneshield Potion##17570
	step
		#include "trainer_Alchemy"
		learn Greater Arcane Elixir##17573
	step
		talk Evie Whirlbrew##11188
		buy 1 Recipe: Living Action Potion##20013 |n
		use Recipe: Living Action Potion##20013
		learn Living Action Potion##24367 |goto Winterspring 59.2,50.0
	step
		#include "trainer_Alchemy"
		learn Purification Potion##17572
	step
		This item may not drop in the game anymore, however they were known to drop from Cobalt Mageweavers in the past here [Winterspring 60,77]
		kill Cobalt Mageweaver##7437
		collect 1 Recipe: Greater Arcane Protection Potion##13497 |n
		use Recipe: Greater Arcane Protection Potion##13497
		learn Greater Arcane Protection Potion##17577
	step
		kill Firebrand Invoker##9262, Firebrand Pyromancer##9264
		|tip The NPC's can be found inside Lower Blackrock Spire.
		collect 1 Recipe: Greater Fire Protection Potion##13494 |n
		use Recipe: Greater Fire Protection Potion##13494
		learn Greater Fire Protection Potion##17574 |goto Burning Steppes/14 65.8,41.9
	step
		This item may not drop in the game anymore, however they were known to drop from Frostmaul Giants in the past here [Winterspring 57.8,88.8]
		kill Frostmaul Giant##7428
		collect 1 Recipe: Greater Frost Protection Potion##13495 |n
		use Recipe: Greater Frost Protection Potion##13495
		learn Greater Frost Protection Potion##17575
	step
		talk Calandrath##15174
		buy 1 Recipe: Greater Nature Protection Potion##13496 |n
		use Recipe: Greater Nature Protection Potion##13496
		learn Greater Nature Protection Potion##17576 |goto Silithus 55.4,36.6
	step
		This item may not drop in the game anymore, however they were known to drop from Dark Adepts in the past 
		kill Dark Adept##8546 
		collect 1 Recipe: Greater Shadow Protection Potion##13499 |n 
		use Recipe: Greater Shadow Protection Potion##13499
		learn Greater Shadow Protection Potion##17578 |goto Eastern Plaguelands 36.6,45.2
	step
		This recipe can no longer be learned. It was acquired from a faction no longer in-game
		learn Mighty Troll's Blood Elixir##24368
	step
		talk Magnus Frostwake##11278
		buy 1 Recipe: Major Mana Potion##13501 |n
		use Recipe: Major Mana Potion##13501
		learn Major Mana Potion##17580 |goto Western Plaguelands 68.0,77.6
	step
		talk Lokhtos Darkbargainer##12944
		|tip You will need to be Friendly with the Thorium Brotherhood to purchase this.
		buy 1 Recipe: Transmute Elemental Fire##20761 |n
		use Recipe: Transmute Elemental Fire##20761
		learn Transmute: Elemental Fire##25146 |goto Blackrock Depths/2 50.3,58.5
	step
		This Recipe is dropped from the Bosses of the old raid Molten Core
		collect 1 Recipe: Major Rejuvenation Potion##18257 |n
		use Recipe: Major Rejuvenation Potion##18257
		learn Major Rejuvenation Potion##22732
	step
		This recipe can no longer be learned. It was acquired from a quest no longer in-game.
		learn Gurubashi Mojo Madness##24266
	step
		#include "trainer_Alchemy"
		learn Adept's Elixir##33740
	step
		talk Fedryen Swiftspear##17904
		|tip You need to be Exalted with Cenarion Expedition to purchase this Recipe.
		buy 1 Recipe: Flask of Distilled Wisdom##31356 |n
		use Recipe: Flask of Distilled Wisdom##31356
		learn Flask of Distilled Wisdom##17636 |goto Zangarmarsh 79.2,63.8
	step
		talk Alurmi##21643
		|tip You must be Exalted with the Keepers of Time to purchase this Recipe.
		buy 1 Recipe: Flask of Supreme Power##31355 |n
		use Recipe: Flask of Supreme Power##31355
		learn Flask of Supreme Power##17637 |goto Tanaris 63.0,57.2
	step
		talk Almaador##21432
		|tip You must be Exalted with the Sha'tari to purchase this Recipe.
		buy 1 Recipe: Flask of the Titans##31354 |n
		use Recipe: Flask of the Titans##31354
		learn Flask of the Titans##17635 |goto Shattrath City 51.6,41.6
	step
		#include "trainer_Alchemy"
		learn Onslaught Elixir##33738
	step
		This is a Random World Drop, from creatures level 46-60 but mostly old raids.
		|tip We recommend Blackwing Lair for grinding.
		collect 1 Recipe: Potion of Petrification##13518 |n
		use Recipe: Potion of Petrification##13518
		learn Potion of Petrification##17634
	step
		#include "trainer_Alchemy"
		learn Volatile Healing Potion##33732
	step
		talk Apothecary Antonivich##16588
		buy 1 Recipe: Elixir of Camouflage##22900 |n
		learn Elixir of Camouflage##28543 |goto Hellfire Peninsula 52.2,36.4
		You can also purchase this from Melaris here [Silvermoon City 67.0,19.2]
	step
		#include "trainer_Alchemy"
		learn Elixir of Major Strength##28544
	step
		#include "trainer_Alchemy"
		learn Elixir of Healing Power##28545
	step
		#include "trainer_Alchemy"
		learn Elixir of Major Fortitude##39636
	step
		#include "trainer_Alchemy"
		learn Unstable Mana Potion##33733
	step
		#include "trainer_Alchemy"
		learn Elixir of Mastery
	step
		talk Seer Janidi##18017
		buy 1 Recipe: Sneaking Potion##22901 |n
		use Recipe: Sneaking Potion##22901
		learn Sneaking Potion##28546 |goto Zangarmarsh 32.4,51.8
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Honored with Cenarion Expedition to purchase this Recipe.
		buy 1 Recipe: Earthen Elixir##32070 |n
		use Recipe: Earthen Elixir##32070
		learn Earthen Elixir##39637 |goto Zangarmarsh 79.2,63.8
	step
		#include "trainer_Alchemy"
		learn Elixir of Draenic Wisdom##39638
	step
		talk Seer Janidi##18017
		buy 1 Recipe: Elixir of Major Frost Power##22902 |n
		use Recipe: Elixir of Major Frost Power##22902
		learn Elixir of Major Frost Power##28549 |goto Zangarmarsh 32.4,51.8
	step
		This is a Random World Drop, from creatures level 60-72 and some dungeons
		|tip We recommend The Shattered Halls for grinding.
		collect 1 Recipe: Insane Strength Potion##22903 |n
		use Recipe: Insane Strength Potion##22903
		learn Insane Strength Potion##28550
	step
		#include "trainer_Alchemy"
		learn Mad Alchemist's Potion##45061
	step
		#include "trainer_Alchemy"
		learn Mercurial Stone##38070
	step
		This is a Random World Drop, from creatures level 60-72 and some dungeons
		|tip We recommend Sethekk Halls for grinding.
		collect 1 Recipe: Elixir of the Searching Eye##22904 |n
		use Recipe: Elixir of the Searching Eye##22904
		learn Elixir of the Searching Eye##28552
	step
		#include "trainer_Alchemy"
		learn Super Healing Potion##28551
	step
		talk Quartermaster Jaffrey Noreliqe##18821
		|tip Your faction must control Halaa before you can purchase this Recipe.
		buy 1 Recipe: Elixir of Ironskin##32071 |n
		use Recipe: Elixir of Ironskin##32071
		learn Elixir of Ironskin##39639 |goto Nagrand 41.2,44.2
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Honored with Thrallmar to purchase this Recipe.
		buy 1 Recipe: Elixir of Major Agility##24001 |n
		use Recipe: Elixir of Major Agility##24001
		learn Elixir of Major Agility##28553 |goto Hellfire Peninsula 54.8,37.8
	step
		kill Terrormaster##21314+, Shadow Council Warlock##21302+, Wrathwalker##19740+, Overseer Ripsaw##21499+
		collect 1 Recipe: Fel Strength Elixir##31680 |n
		use Recipe: Fel Strength Elixir##31680
		learn Fel Strength Elixir##38960 |goto Shadowmoon Valley/0 23.0,38.5
	step
		talk Mycah##18382
		|tip You must be Exalted with Sporeggar to purchase this Recipe.
		buy 1 Recipe: Shrouding Potion##22906 |n
		use Recipe: Shrouding Potion##22906
		learn Shrouding Potion##28554 |goto Zangarmarsh 17.8,51.2
	step
		talk Daga Ramba##19837
		buy 1 Recipe: Super Mana Potion##22907 |n
		use Recipe: Super Mana Potion##22907
		learn Super Mana Potion##28555 |goto Blade's Edge Mountains 51.0,57.8
	step
		talk Daga Ramba##19837
		buy 1 Recipe: Elixir of Major Defense##22909 |n
		use Recipe: Elixir of Major Defense##22909
		learn Elixir of Major Defense##28557 |goto Blade's Edge Mountains 51.0,57.8
	step
		talk Quartermaster Enuril##19331
		|tip You must be Revered with The Scryers to purchase this Recipe.
		buy 1 Recipe: Elixir of Major Firepower##22908 |n
		use Recipe: Elixir of Major Firepower##22908
		learn Elixir of Major Firepower##28556 |goto Shattrath City 60.6,64.2
	step
		kill Deathforge Guardian##20878+, Deathforge Imp##20887+, Deathforge Summoner##20872+, Deathforge Tinkerer##19754+, Deathforge Smith##19756+
		collect 1 Recipe: Fel Regeneration Potion##31681 |n
		use Recipe: Fel Regeneration Potion##31681
		learn Fel Regeneration Potion##38962 |goto Shadowmoon Valley/0 40.6,38.4
	step
		talk Almaador##21432
		|tip You must be Revered with The Sha'tar to purchase this Recipe.
		buy 1 Recipe: Alchemist Stone##13517 |n
		use Recipe: Alchemist Stone##13517
		learn Alchemist Stone##17632 |goto Shattrath City 51.6,41.6
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Honored with Cenarion Expedition to purchase this Recipe.
		buy 1 Recipe: Transmute Earthstorm Diamond##25869 |n
		use Recipe: Transmute Earthstorm Diamond##25869
		learn Transmute: Earthstorm Diamond##32765 |goto Zangarmarsh 79.2,63.8
	step
		talk Skreah##19074
		buy 1 Recipe: Transmute Primal Might##23574 |n
		use Recipe: Transmute Primal Might##23574
		learn Transmute: Primal Might##29688 |goto Shattrath City 45.8,20.8
		You can also purchase this from Melaris in Silvermoon city here: [Silvermoon City 67.0,19.2]
	step
		talk Quartermaster Urgronn##17585
		buy 1 Recipe: Transmute Skyfire Diamond##29232 |n
		use Recipe: Transmute Skyfire Diamond##29232 |learn Transmute: Skyfire Diamond##32766 |goto Hellfire Peninsula 54.8,37.8
	step
		talk Almaador##21432
		|tip You must be Revered with The Sha'tar to purchase this Recipe.
		buy 1 Recipe: Transmute Primal Air to Fire##22915 |n
		use Recipe: Transmute Primal Air to Fire##22915
		learn Transmute: Primal Air to Fire##28566 |goto Shattrath City 51.6,41.6
	step
		talk Mycah
		|tip You must be Revered with Sporeggar to purchase this Recipe.
		buy 1 Recipe: Transmute Primal Earth to Water##22916 |n
		use Recipe: Transmute Primal Earth to Water##22916
		learn Transmute: Primal Earth to Water##28567 |goto Zangarmarsh 17.8,51.2
	step
		talk Provisioner Nasela##20241
		|tip You must be Revered with The Mag'har to purchase this Recipe.
		buy 1 Recipe: Transmute Primal Fire to Earth##22917 |n
		use Recipe: Transmute Primal Fire to Earth##22917
		learn Transmute: Primal Fire to Earth##28568 |goto Nagrand 53.4,36.8
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Revered with Cenarion Expedition to purchase this Recipe.
		buy 1 Recipe: Transmute Primal Water to Air##22918 |n
		use Recipe: Transmute Primal Water to Air##22918
		learn Transmute: Primal Water to Air##28569 |goto Zangarmarsh 79.2,63.8
	step
		This is a Random World Drop, from creatures level 57-72, some dungeons and raids
		|tip We recommend The Sunwell Plateau and The Black Temple for grinding.
		collect 1 Recipe: Destruction Potion##22914 |n
		use Recipe: Destruction Potion##22914
		learn Destruction Potion##28565
	step
		talk Nakodu##21655
		|tip You must be Revered with Lower City to purchase this Recipe.
		buy 1 Recipe: Elixir of Major Shadow Power##22910 |n
		use Recipe: Elixir of Major Shadow Power##22910
		learn Elixir of Major Shadow Power##28558 |goto Shattrath City 62.6,69.0
	step
		This is a Random World Drop, from creatures level 57-72, some dungeons and raids
		|tip We recommend The Black Temple and Karazhan for grinding.
		collect 1 Recipe: Haste Potion##22913 |n
		use Recipe: Haste Potion##22913
		learn Haste Potion##28564
	step
		This is a Random World Drop, from creatures level 60-72, some dungeons and raids
		|tip We recommend The Black Temple and The Sunwell Plateau for grinding.
		collect 1 Recipe: Heroic Potion##22912 |n
		use Recipe: Heroic Potion##22912
		learn Heroic Potion##28563
	step
		talk Daga Ramba##19837
		buy 1 Recipe: Major Dreamless Sleep Potion##22911 |n
		use Recipe: Major Dreamless Sleep Potion##22911
		learn Major Dreamless Sleep Potion##28562 |goto Blade's Edge Mountains 51.0,57.8
	step
		This is a Random World Drop, from creatures level 60-72, some dungeons and raids
		|tip We recommend Karazhan and The Black Temple for grinding.
		collect 1 Recipe: Elixir of Major Mageblood##22919 |n
		use Recipe: Elixir of Major Mageblood##22919
		learn Elixir of Major Mageblood##28570
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Cauldron of Major Arcane Protection##41458
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Cauldron of Major Fire Protection##41500
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Cauldron of Major Frost Protection##41501
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Cauldron of Major Nature Protection##41502
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Cauldron of Major Shadow Protection##41503
	step
		kill Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+,
		collect 1 Recipe: Fel Mana Potion##31682 |n
		use Recipe: Fel Mana Potion##31682
		learn Fel Mana Potion##38961 |goto Shadowmoon Valley/0 53.1,59.7
	step
		kill Vir'aani Arcanist##17150
		|tip You can find these Arcanist's all around this area.
		collect 1 Recipe: Major Arcane Protection Potion##22923 |n
		use Recipe: Major Arcane Protection Potion##22923
		learn Major Arcane Protection Potion##28575 |goto Nagrand 41.8,70.2
	step
		kill Sunseeker Astromage##19168
		|tip You can find most of these on the upper level just before Pathaleon the Calculator (Boss).
		collect 1 Recipe: Major Fire Protection Potion##22920 |n
		use ecipe: Major Fire Protection Potion##22920
		learn Major Fire Protection Potion##28571 |goto The Mechanar/2 27.8,61.1
	step
		kill Nexus-Prince Shaffar##18344
		collect 1 Recipe: Major Frost Protection Potion##22921 |n
		use Recipe: Major Frost Protection Potion##22921
		learn Major Frost Protection Potion##28572 |goto Mana-Tombs 32.5,49.5
	step
		kill Abyssal Flamebringer##19973+
		collect 1 Recipe: Major Holy Protection Potion##22925 |n
		use Recipe: Major Holy Protection Potion##22925
		learn Major Holy Protection Potion##28577 |goto Blade's Edge Mountains 28.0,82.2
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Exalted with Cenarion Expedition to purchase this Recipe.
		buy 1 Recipe: Major Nature Protection Potion##22922 |n
		use Recipe: Major Nature Protection Potion##22922
		learn Major Nature Protection Potion##28573 |goto Zangarmarsh 79.2,63.8
	step
		kill Shadow Council Warlock##21302+
		collect 1 Recipe: Major Shadow Protection Potion##22924 |n
		use Recipe: Major Shadow Protection Potion##22924
		learn Major Shadow Protection Potion##28576 |goto Shadowmoon Valley 23.0,38.6
	step
		This is a Random World Drop, from creatures level 60-72, some dungeons and raids
		|tip We recommend The Black Temple and Karazhan for grinding.
		collect 1 Recipe: Elixir of Empowerment##22926 |n
		use Recipe: Elixir of Empowerment##22926
		learn Elixir of Empowerment##28578
	step
		kill Captain Skarloc##17862
		collect 1 Recipe: Ironshield Potion##22927 |n
		use Recipe: Ironshield Potion##22927
		learn Ironshield Potion##28579 |goto Old Hillsbrad Foothills 69.3,69.1
	step
		#include "trainer_Alchemy"
		learn Spellpower Elixir##53842
	step
		This Recipe is learned by Discovery
		You need to Transmute other Primals from The Burning Crusade Expansion to discover this
		|tip You may be able to discover this through Potions, Elixirs and Flasks as well.
		learn Transmute: Primal Earth to Life##28585
	step
		This Recipe is learned by Discovery
		You need to Transmute other Primals from The Burning Crusade Expansion to discover this
		|tip You may be able to discover this through Potions, Elixirs and Flasks as well.
		learn Transmute: Primal Fire to Mana##28583
	step
		This Recipe is learned by Discovery
		You need to Transmute other Primals from The Burning Crusade Expansion to discover this
		|tip You may be able to discover this through Potions, Elixirs and Flasks as well.
		learn Transmute: Primal Life to Earth##28584
	step
		This Recipe is learned by Discovery
		You need to Transmute other Primals from The Burning Crusade Expansion to discover this
		|tip You may be able to discover this through Potions, Elixirs and Flasks as well.
		learn Transmute: Primal Mana to Fire##28582
	step
		This Recipe is learned by Discovery
		You need to Transmute other Primals from The Burning Crusade Expansion to discover this
		|tip You may be able to discover this through Potions, Elixirs and Flasks as well.
		learn Transmute: Primal Shadow to Water##28582
	step
		This Recipe is learned by Discovery
		You need to Transmute other Primals from The Burning Crusade Expansion to discover this
		|tip You may be able to discover this through Potions, Elixirs and Flasks as well.
		learn Transmute: Primal Water to Shadow##28581
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Flask of Blinding Light##28590
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Flask of Fortification##28587
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Flask of Mighty Restoration##28588
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Flask of Pure Death##28591
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Flask of Relentless Assault
	step
		This Recipe is learned by Discovery
		You need to craft any Potion, Elixir or Flask from The Burning Crusade Expansion to discover this
		learn Super Rejuvenation Potion##28586
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Exalted with the Shattered Sun Offensive to purchase this Recipe
		buy 1 Recipe: Assassin's Alchemist Stone##35755 |n
		use Recipe: Assassin's Alchemist Stone##35755
		learn Assassin's Alchemist Stone##47050 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Exalted with the Shattered Sun Offensive to purchase this Recipe
		buy 1 Recipe: Guardian's Alchemist Stone##35755 |n
		use Recipe: Guardian's Alchemist Stone##35755
		learn Guardian's Alchemist Stone##47046 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Exalted with the Shattered Sun Offensive to purchase this Recipe
		buy 1 Recipe: Redeemer's Alchemist Stone##35754 |n
		use Recipe: Redeemer's Alchemist Stone##35754
		learn Redeemer's Alchemist Stone##47049 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Exalted with the Shattered Sun Offensive to purchase this Recipe
		buy 1 Recipe: Sorcerer's Alchemist Stone##35753 |n
		use Recipe: Sorcerer's Alchemist Stone##35753
		learn Sorcerer's Alchemist Stone##47048 |goto Isle of Quel'Danas 47.2,30.6
	step
		#include "trainer_Alchemy"
		learn Ethereal Oil##62409
	step
		#include "trainer_Alchemy"
		learn Guru's Elixir##53848
	step
		#include "trainer_Alchemy"
		learn Lesser Flask of Toughness##53899
	step
		#include "trainer_Alchemy"
		learn Pygmy Oil##53812
	step
		#include "trainer_Alchemy"
		learn Potion of Nightmares##53900
	step
		#include "trainer_Alchemy"
		learn Elixir of Mighty Strength##54218
	step
		#include "trainer_Alchemy"
		learn Elixir of Spirit##53847
	step
		#include "trainer_Alchemy"
		learn Elixir of Mighty Fortitude##53898
	step
		#include "trainer_Alchemy"
		learn Elixir of Mighty Agility##53840
	step
		#include "trainer_Alchemy"
		learn Elixir of Mighty Thoughts##60367
	step
		#include "trainer_Alchemy"
		learn Indestructible Potion##53905
	step
		#include "trainer_Alchemy"
		learn Transmute: Titanium##60350
	step
		kill Cult Researcher##32297+
		collect 1 Recipe: Mighty Arcane Protection Potion##44564 |n
		use Recipe: Mighty Arcane Protection Potion##44564
		learn Mighty Arcane Protection Potion##53936 |goto Icecrown 50.6,30.8
	step
		kill Damned Apothecary##32289+
		collect 1 Recipe: Mighty Frost Protection Potion##44566 |n
		use Recipe: Mighty Frost Protection Potion##44566
		learn Mighty Frost Protection Potion##53937 |goto Icecrown 49.8,32.6
	step
		kill Cult Alchemist##32290+
		collect 1 Recipe: Mighty Nature Protection Potion##44567 |n
		learn Mighty Nature Protection Potion##43942 |goto 49.6,34.6
	step
		kill Skeletal Runesmith##30921+
		collect 1 Recipe: Mighty Fire Protection Potion##44565 |n
		learn Mighty Fire Protection Potion##53939 |goto Icecrown 59.4,74.6
	step
		kill Cultist Shard Watcher##32349+
		collect 1 Recipe: Mighty Shadow Protection Potion##44568 |n
		learn Mighty Shadow Protection Potion##53938 |goto Icecrown Citadel 45.8,69.6
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Crazy Alchemist's Potion##53895
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Accuracy##60354
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Armor Piercing##60365
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Deadly Strikes##60355
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Expertise##60357
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Lightning Speed##60366
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Mighty Defense##60356
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Mighty Mageblood##56519
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Protection##54220
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Elixir of Water Walking##62410
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Potion of Speed##54221
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Potion of Wild Magic##54222
	step
		#include "trainer_Alchemy"
		This Recipe is learned by Discovery.
		You can do the Northrend Alchemy Research in Dalaran every 3 days to try and learn this
		|tip Must be level 400 to learn N. A. Research.
		You can also craft any Potion, Elixir or Flask from WotLK Exspanion to discover this
		learn Powerful Rejuvenation Potion##53904
	step
		#include "trainer_Alchemy"
		learn Indestructible Alchemist Stone##60403
	step
		#include "trainer_Alchemy"
		learn Mercurial Alchemist Stone##60396
	step
		#include "trainer_Alchemy"
		learn Mighty Alchemist Stone##60405
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Air to Earth##53777
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Air to Water##53776
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Earth to Air##53781
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Earth to Shadow##53782
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Fire to Life##53775
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Fire to Water##53774
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Life to Fire##53773
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Life to Shadow##53771
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Shadow to Earth##53779
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Shadow to Life##53780
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Water to Air##53783
	step
		This Recipe is learned by Discovery
		|tip Most commonly these are learned through Transmuting Gems and Stones within the WotLK Expansion.
		learn Transmute: Eternal Water to Fire##53784
	step
		#include "trainer_Alchemy"
		learn Runic Healing Potion##53836
	step
		#include "trainer_Alchemy"
		learn Endless Healing Potion##58871
	step
		#include "trainer_Alchemy"
		learn Endless Mana Potion##58868
	step
		#include "trainer_Alchemy"
		learn Runic Mana Potion##53837
	step
		#include "trainer_Alchemy"
		learn Transmute: Earthsiege Diamond##57427
	step
		#include "trainer_Alchemy"
		learn Draught of War##93935
	step
		#include "trainer_Alchemy"
		learn Transmute: Skyflare Diamond##57425
	step
		#include "trainer_Alchemy"
		learn Flask of Endless Rage##53903
	step
		#include "trainer_Alchemy"
		learn Flask of Pure Mojo##54213
	step
		#include "trainer_Alchemy"
		learn Flask of Stoneblood##53902
	step
		#include "trainer_Alchemy"
		learn Flask of the Frost Wyrm##53901
	step
		#include "trainer_Alchemy"
		learn Transmute: Ametrine##66658
	step
		#include "trainer_Alchemy"
		learn Transmute: Dreadstone##66662
	step
		#include "trainer_Alchemy"
		learn Transmute: Eye of Zul##66664
	step
		#include "trainer_Alchemy"
		learn Transmute: King's Amber##66660
	step
		#include "trainer_Alchemy"
		learn Transmute: Majestic Zircon##66663
	step
		talk Linzy Blackbolt##28703
		accept Cardinal Ruby##14151
	step
		Transmute #5# Epic Gems |q 14151/1
		|tip These must be from the Wrath of the Lich King Expansion.
	step
		talk Linzy Blackbolt##28703
		turnin Cardinal Ruby##14151
		learn Transmute: Cardinal Ruby##66659 |goto Dalaran 42.6,32.0
	step
		#include "trainer_Alchemy"
		learn Earthen Potion##80478
	step
		#include "trainer_Alchemy"
		learn Ghost Elixir##80477
	step
		#include "trainer_Alchemy"
		learn Deathblood Venom##80479
	step
		#include "trainer_Alchemy"
		learn Elixir of the Naga##80480
	step
		#include "trainer_Alchemy"
		learn Volcanic Potion##80481
	step
		#include "trainer_Alchemy"
		learn Potion of Illusion##80269
	step
		#include "trainer_Alchemy"
		learn Elixir of the Cobra##80484
	step
		#include "trainer_Alchemy"
		learn Potion of Concentration##80482
	step
		#include "trainer_Alchemy"
		learn Deepstone Oil##80486
	step
		#include "trainer_Alchemy"
		learn Mysterious Potion##80487
	step
		#include "trainer_Alchemy"
		learn Elixir of Deep Earth##80488
	step
		#include "trainer_Alchemy"
		learn Mighty Rejuvenation Potion##80490
	step
		#include "trainer_Alchemy"
		learn Elixir of Impossible Accuracy##80491
	step
		#include "trainer_Alchemy"
		learn Prismatic Elixir##80492
	step
		#include "trainer_Alchemy"
		learn Mythical Mana Potion##80494
	step
		#include "trainer_Alchemy"
		learn Potion of the Tol'vir##80495
	step
		#include "trainer_Alchemy"
		learn Transmute: Living Elements##78866
	step
		#include "trainer_Alchemy"
		learn Elixir of Mighty Speed##80493
	step
		#include "trainer_Alchemy"
		learn Golemblood Potion##80496
	step
		#include "trainer_Alchemy"
		learn Elixir of the Master##80497
	step
		#include "trainer_Alchemy"
		learn Mythical Healing Potion##80498
	step
		#include "trainer_Alchemy"
		learn Flask of Flowing Water##94162
	step
		#include "trainer_Alchemy"
		learn Flask of Steelskin##80719
	step
		#include "trainer_Alchemy"
		learn Lifebound Alchemist Stone##80508
	step
		#include "trainer_Alchemy"
		learn Quicksilver Alchemist Stone##96253
	step
		#include "trainer_Alchemy"
		learn Vibrant Alchemist Stone##96254]
	step
		#include "trainer_Alchemy"
		learn Volatile Alchemist Stone##96252
	step
		#include "trainer_Alchemy"
		learn Alchemist's Rejuvenation##114751
	step
		#include "trainer_Alchemy"
		learn Master Healing Potion##114752
	step
		#include "trainer_Alchemy"
		learn Transmute: Dream Emerald##80251
	step
		#include "trainer_Alchemy"
		learn Flask of the Draconic Mind##80720
	step
		#include "trainer_Alchemy"
		learn Transmute: Ember Topaz##80250
	step
		#include "trainer_Alchemy"
		learn Flask of Titanic Strength##80723
	step
		#include "trainer_Alchemy"
		learn Flask of the Winds##80721
	step
		#include "trainer_Alchemy"
		learn Transmute: Demonseye##80248
	step
		#include "trainer_Alchemy"
		learn Transmute: Ocean Sapphire##80246
	step
		#include "trainer_Alchemy"
		learn Transmute: Amberjewel##80247
	step
		#include "trainer_Alchemy"
		learn Transmute: Pyrium Bar##80244
	step
		#include "trainer_Alchemy"
		learn Transmute: Inferno Ruby##80245
	step
		#include "trainer_Alchemy"
		learn Transmute: Shadowspirit Diamond##80237
	step
		#include "trainer_Alchemy"
		learn Transmute: Truegold##80243
	step
		#include "trainer_Alchemy"
		learn Potion of Deepholm##80725
	step
		#include "trainer_Alchemy"
		learn Potion of Treasure Finding##80726
	step
		talk Goram##46572
		To unlock this Recipe you need to complete an Achievement by creating 1000 Cataclysm flasks.
		Achieve Better Leveling Through Chemistry |achieve 5465
		buy 1 Recipe: Cauldron of Battle##65435 |n
		use Recipe: Cauldron of Battle##65435
		learn Cauldron of Battle##92643 |goto Orgrimmar 48.5,75.6
	step
		talk Goram##46572
		To unlock this Recipe you need to complete an Achievement by creating 3000 Cataclysm flasks.
		Achieve Better Leveling Through Chemistry |achieve 5024
		buy 1 Recipe: Big Cauldron of Battle##65498 |n
		use Recipe: Big Cauldron of Battle##65498
		learn Big Cauldron of Battle##92688 |goto Orgrimmar 48.5,75.6
	step
		You must have _Archaeology Level 450_ and use _45 Tol'vir Fragments_ combined with Tol'vir Hieroglyphic (optional) to create a Canopic Jar.
		collect 1 Canopic Jar##64657 |n
		Open your Canopic Jar |use Canopic Jar##64657
		|tip This has a low drop rate.
		collect 1 Recipe: Vial of the Sands##67538 |n
		use Recipe: Vial of the Sands##67538
		learn Vial of the Sands##93328
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Elixir of Weaponry##84133 |n
		use Recipe: Elixir of Weaponry##84133
		learn Elixir of Weaponry##114756
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Mad Hozen Elixir##84138 |n
		use Recipe: Mad Hozen Elixir##84138
		learn Mad Hozen Elixir##114754
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Mantid Elixir##84139 |n
		use Recipe: Mantid Elixir##84139
		learn Mantid Elixir##114755
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tipYou can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Monk's Elixir##84141 |n
		use Recipe: Monk's Elixir##84141
		learn Monk's Elixir##114758
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Potion of the Jade Serpent##84146 |n
		use Recipe: Potion of the Jade Serpent##84146
		learn Potion of the Jade Serpent##114757
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Potion of the Mountains##84147 |n
		use Recipe: Potion of the Mountains##84147
		learn Potion of the Mountains##114753
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Desecrated Oil##84128 |n
		use Recipe: Desecrated Oil##84128
		learn Desecrated Oil##114761
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Elixir of Mirrors##84129 |n
		use Recipe: Elixir of Mirrors##84129
		learn Elixir of Mirrors##114763
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Elixir of Peace##84130 |n
		use Recipe: Elixir of Peace##84130
		learn Elixir of Peace##114764
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Elixir of Perfection##84131 |n
		use Recipe: Elixir of Perfection##84131
		learn Elixir of Perfection##114762
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Elixir of the Rapids##84132 |n
		use Recipe: Elixir of the Rapids##84132
		learn Elixir of the Rapids##114759
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Potion of Mogu Power##84144 |n
		use Recipe: Potion of Mogu Power##84144
		learn Potion of Mogu Power##114760
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Virmen's Bite##84155 |n
		use Recipe: Virmen's Bite##84155
		learn Virmen's Bite##114765
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Flask of Falling Leaves##84123 |n
		use Recipe: Flask of Falling Leaves##84123
		learn Flask of Falling Leaves##114772
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Flask of Spring Blossoms##84134 |n
		use Recipe: Flask of Spring Blossoms##84134
		learn Flask of Spring Blossoms##114769
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Flask of Winter's Bite##84137 |n
		use Recipe: Flask of Winter's Bite##84137
		learn Flask of Winter's Bite##114773
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Flask of the Earth##84135 |n
		use Recipe: Flask of the Earth##84135
		learn Flask of the Earth##114770
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Flask of the Warm Sun##84136
		use Recipe: Flask of the Warm Sun##84136
		learn Flask of the Warm Sun##114771
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute River's Heart##84152 |n
		use Recipe: Transmute River's Heart##84152
		learn Transmute: River's Heart##114766
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Wild Jade##84154 |n
		use Recipe: Transmute Wild Jade##84154
		learn Transmute: Wild Jade##114767
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Darkwater Potion##84142 |n
		use Recipe: Darkwater Potion##84142
		learn Darkwater Potion##114774
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Master Mana Potion##84140 |n
		use Recipe: Master Mana Potion##84140
		learn Master Mana Potion##114775
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Imperial Amethyst##84148 |n
		use Recipe: Transmute Imperial Amethyst##84148
		learn Transmute: Imperial Amethyst##114777
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Sun's Radiance##84125 |n
		use Recipe: Transmute Sun's Radiance##84125
		learn Transmute: Sun's Radiance##114778
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Vermilion Onyx##84126 |n
		use Recipe: Transmute Vermilion Onyx##84126
		learn Transmute: Vermilion Onyx##114776
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Potion of Focus##84143 |n
		use Recipe: Potion of Focus##84143
		learn Potion of Focus##114782
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Primal Diamond##84150 |n
		use Recipe: Transmute Primal Diamond##84150
		learn Transmute: Primal Diamond##114781
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Primordial Ruby##84151 |n
		use Recipe: Transmute Primordial Ruby##84151
		learn Transmute: Primordial Ruby##114784
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Trillium Bar##84153 |n
		use Recipe: Transmute Trillium Bar##84153
		learn Transmute: Trillium Bar##114783
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Transmute Living Steel##84149 |n
		use Recipe: Transmute Living Steel##84149
		learn Transmute: Living Steel##114780
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		collect 1 Recipe: Potion of Luck##84145 |n
		use Recipe: Potion of Luck##84145
		learn Potion of Luck##114779
	step
		This Recipe is Discovered by creating _Alchemist's Rejuvenation_ and _Master healing Potions_
		|tip You can also create any new Recipe you have discovered to discover this.
		learn Riddle of Steel##130326
]])

ZygorGuidesViewer:RegisterInclude("Alchemy_600-700",[[
// ----------
// 600-700
// ----------
// TRAIN: Draenor Master Alchemy
	step
		Before you continue, open your Alchemy window to detect your profession |cast Alchemy##2259
		skillmax Alchemy,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _Alchemy Lab_ to a _Small Plot_
		Build your Alchemy Lab |havebuilding Alchemy
	step
		#include "H_Garrison_SmallBuilding",action="talk Albert de Hyde##79813",building="Alchemy"
		buy A Treatise on the Alchemy of Draenor##109558 |condition skillmax("Alchemy")>=700
	step
		use A Treatise on the Alchemy of Draenor##109558
		skillmax Alchemy,700
	step
		map Frostfire Ridge
		path follow loose;loop;ants straight;dist 60
		path	31.1,53.3	26.1,53.7	24.2,49.0
		path	23.2,45.2	20.7,39.5	22.2,33.9
		path	21.8,29.7	20.9,25.4	23.1,23.6
		path	25.1,24.6	27.2,22.3	29.7,21.4
		path	31.2,22.0	32.8,21.7	35.1,19.5
		path	36.9,24.3	38.1,26.8	40.8,28.9
		path	41.6,30.6	42.8,29.9	42.9,31.1
		path	44.4,31.1	46.2,31.7	48.9,34.4
		path	51.6,36.9	53.7,35.1	54.5,30.3
		path	56.5,26.1	59.1,28.4	60.0,31.9
		path	61.2,34.9	63.1,40.9	63.4,45.0
		path	60.9,46.9	62.2,52.4	60.3,55.3
		path	57.9,57.5	53.8,55.8	50.6,54.7
		path	47.7,55.6	45.9,58.9	43.1,60.8
		path	40.3,62.1	37.7,58.7	36.5,56.5
		path	35.5,53.3	33.6,49.2	31.1,51.2
		Follow the path and gather Frostweed 
		|tip Make sure you have find herbs turned on.
		collect 50 Frostweed##109124 |condition skill("Alchemy")>=700
		|tip You can also buy these materials from the Auction House.
	step
		map Frostfire Ridge
		path follow loose;loop;ants straight;dist 60
		path	31.1,53.3	26.1,53.7	24.2,49.0
		path	23.2,45.2	20.7,39.5	22.2,33.9
		path	21.8,29.7	20.9,25.4	23.1,23.6
		path	25.1,24.6	27.2,22.3	29.7,21.4
		path	31.2,22.0	32.8,21.7	35.1,19.5
		path	36.9,24.3	38.1,26.8	40.8,28.9
		path	41.6,30.6	42.8,29.9	42.9,31.1
		path	44.4,31.1	46.2,31.7	48.9,34.4
		path	51.6,36.9	53.7,35.1	54.5,30.3
		path	56.5,26.1	59.1,28.4	60.0,31.9
		path	61.2,34.9	63.1,40.9	63.4,45.0
		path	60.9,46.9	62.2,52.4	60.3,55.3
		path	57.9,57.5	53.8,55.8	50.6,54.7
		path	47.7,55.6	45.9,58.9	43.1,60.8
		path	40.3,62.1	37.7,58.7	36.5,56.5
		path	35.5,53.3	33.6,49.2	31.1,51.2
		Follow the path and gather Fireweed 
		|tip Make sure you have find herbs turned on.
		collect 396 Fireweed##109125 |condition skill("Alchemy")>=700
		|tip You can also buy these materials from the Auction House.
	step
		map Shadowmoon Valley D
		path follow loose;loop;ants straight;dist 60
		path	26.6,8.0	27.4,12.7	27.4,15.6
		path	26.2,17.1	26.8,19.8	27.5,22.1
		path	29.3,27.4	31.4,26.3	32.3,23.8
		path	34.6,27.2	36.0,24.1	37.2,21.6
		path	39.5,19.9	40.6,23.3	40.6,24.9
		path	41.5,26.7	42.8,28.1	45.0,28.8
		path	47.5,28.1	48.7,26.8	50.7,28.8
		path	53.3,31.1	54.5,32.7	56.0,35.5
		path	58.6,36.0	62.3,32.0	63.5,31.0
		path	65.9,31.7	66.3,34.2	65.0,36.0
		path	63.1,36.6	62.3,39.4	60.2,42.4
		path	59.1,45.2	58.0,47.7	58.8,50.8
		path	62.5,53.0	64.7,55.5	65.9,56.7
		path	65.7,57.4	64.7,59.4	61.4,57.7
		path	59.6,58.0	58.8,58.6	59.9,61.4
		path	60.5,63.9	62.0,62.2	62.7,64.2
		path	61.6,65.3	61.9,67.4	61.4,69.3
		path	59.8,67.0	58.1,64.1	57.9,63.4
		path	57.4,59.5	55.3,59.0	54.5,61.8
		path	53.3,63.7	53.0,65.6	52.2,67.0
		path	54.0,69.9	56.0,70.2	56.0,72.4
		path	55.0,74.4	54.0,74.3	52.7,72.9
		path	51.7,70.8	51.1,68.7	49.1,68.3
		path	45.6,68.3	42.9,73.0	41.6,74.7
		path	38.2,73.4	37.0,71.5	38.3,67.7
		path	38.1,66.4	37.4,60.8	36.4,59.6
		path	36.9,56.8	40.7,57.6	42.9,57.0
		path	43.2,54.8	41.7,53.6	41.2,50.1
		path	42.0,48.6	43.1,46.7	42.6,43.6
		path	40.2,43.4	39.0,39.8	37.0,35.7
		path	34.7,32.4	32.9,31.0	31.1,32.4
		path	28.3,32.9	26.4,31.7	25.4,28.8
		path	24.1,26.7	22.7,26.1	21.4,24.8
		path	22.3,24.2	23.7,23.1	25.1,20.8
		path	24.3,19.0	23.4,18.1	23.4,16.3
		path	22.8,14.5	23.7,10.2
		Follow the path and gather Starflower 
		|tip Make sure you have find herbs turned on.
		collect 396 Starflower##109127 |condition skill("Alchemy")>=700
		|tip You can also buy these materials from the Auction House.
	step
		#include "H_Garrison_SmallBuilding",action="talk Albert de Hyde##79813",building="Alchemy"
		accept Your First Inscription Work Order##37568 |condition skill("Alchemy")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Keyana Tone##79814",building="Alchemy"
		Tell her _"I would like to place a work order."_ |q Your First Inscription Work Order##37568/1
	step
		#include "H_Garrison_SmallBuilding",action="click Alchemy Work Order##",building="Alchemy"
		Gather your first work order |q Your First Inscription Work Order##37568/2
	step
		#include "H_Garrison_SmallBuilding",action="talk Keyana Tone##79814",building="Alchemy"
		turnin Your First Inscription Work Order##37568
	step
		create Secrets of Draenor Alchemy##175880,Alchemy,1 total |n
		collect 1 Secrets of Draenor Alchemy##120132 |condition skill("Alchemy")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Albert de Hyde##79813",building="Alchemy"
		buy Recipe: Draenic Agility Flask##112024 |condition _G.IsSpellKnown(156561) or skill("Alchemy")>=700
	step
		use Recipe: Draenic Agility Flask##112024 
		learn Draenic Agility Flask##156561 |condition skill("Alchemy")>=700
	step
		create Draenic Agility Flask##156561,Alchemy,700
	step
		Congratulations! You are now a Draenor Master Alchemist!
]])


--------------------------------------------------------------------------------------------------------------------------------------
-- Archaeology
--------------------------------------------------------------------------------------------------------------------------------------





--------------------------------------------------------------------------------------------------------------------------------------
-- Blacksmithing
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Blacksmith",[[
//TRAINER
		You will learn this when you pick up Blacksmithing
		learn Rough Copper Vest##12260
	step
		You will learn this when you pick up Blacksmithing
		learn Rough Sharpening Stone##2660
	step
		You will learn this when you pick up Blacksmithing
		learn Rough Weightstone##3115
	step
		You will learn this when you pick up Blacksmithing
		learn Copper Bracers##2663
	step
		You will learn this when you pick up Blacksmithing
		learn Copper Chain Pants##2662
	step
		#include "trainer_Blacksmithing"
		learn Copper Mace##2737
	step
		#include "trainer_Blacksmithing"
		learn Copper Axe##2738
	step
		#include "trainer_Blacksmithing"
		learn Copper Chain Boots##3319
	step
		#include "trainer_Blacksmithing"
		learn Rough Grinding Stone##3320
	step
		#include "trainer_Blacksmithing"
		learn Copper Shortsword##2739
	step
		#include "trainer_Blacksmithing"
		learn Copper Claymore##9983
	step
		#include "trainer_Blacksmithing"
		learn Copper Dagger##8880
	step
		#include "trainer_Blacksmithing"
		learn Copper Battle Axe##3293
	step
		#include "trainer_Blacksmithing"
		learn Copper Chain Belt##2661
	step
		#include "trainer_Blacksmithing"
		learn Runed Copper Gauntlets##3323
	step
		#include "trainer_Blacksmithing"
		learn Runed Copper Pants##3324
	step
		#include "trainer_Blacksmithing"
		learn Coarse Sharpening Stone##2665
	step
		#include "trainer_Blacksmithing"
		learn Coarse Weightstone##3116
	step
		#include "trainer_Blacksmithing"
		learn Heavy Copper Maul##7408
	step
		#include "trainer_Blacksmithing"
		learn Runed Copper Belt##2666
	step
		#include "trainer_Blacksmithing"
		learn Thick War Axe##3294
	step
		#include "trainer_Blacksmithing"
		learn Coarse Grinding Stone##3326
	step
		#include "trainer_Blacksmithing"
		learn Runed Copper Bracers##2664
	step
		#include "trainer_Blacksmithing"
		learn Rough Bronze Boots##7817
	step
		#include "trainer_Blacksmithing"
		learn Heavy Copper Broadsword##3292
	step
		#include "trainer_Blacksmithing"
		learn Silver Skeleton Key##19666
	step
		#include "trainer_Blacksmithing"
		learn Big Bronze Knife##3491
	step
		#include "trainer_Blacksmithing"
		learn Rough Bronze Cuirass##2670
	step
		#include "trainer_Blacksmithing"
		learn Rough Bronze Leggings##2668
	step
		#include "trainer_Blacksmithing"
		learn Bronze Mace##2740
	step
		#include "trainer_Blacksmithing"
		learn Pearl-handled Dagger##6517
	step
		#include "trainer_Blacksmithing"
		learn Rough Bronze Shoulders##3328
	step
		#include "trainer_Blacksmithing"
		learn Bronze Axe##2741
	step
		#include "trainer_Blacksmithing"
		learn Bronze Shortsword##2742
	step
		#include "trainer_Blacksmithing"
		learn Patterned Bronze Bracers##2672
	step
		#include "trainer_Blacksmithing"
		learn Heavy Sharpening Stone##2674
	step
		#include "trainer_Blacksmithing"
		learn Heavy Weightstone##3117
	step
		#include "trainer_Blacksmithing"
		learn Heavy Grinding Stone##3337
	step
		#include "trainer_Blacksmithing"
		learn Bronze Warhammer##9985
	step
		#include "trainer_Blacksmithing"
		learn Bronze Greatsword##9986
	step
		#include "trainer_Blacksmithing"
		learn Heavy Bronze Mace##3296
	step
		#include "trainer_Blacksmithing"
		learn Silvered Bronze Boots##3331
	step
		#include "trainer_Blacksmithing"
		learn Bronze Battle Axe##9987
	step
		#include "trainer_Blacksmithing"
		learn Silvered Bronze Gauntlets##3333
	step
		#include "trainer_Blacksmithing"
		learn Shining Silver Breastplate##2675
	step
		#include "trainer_Blacksmithing"
		learn Iron Buckle##8768
	step
		#include "trainer_Blacksmithing"
		learn Golden Skeleton Key##19667
	step
		#include "trainer_Blacksmithing"
		learn Green Iron Leggings##3506
	step
		#include "trainer_Blacksmithing"
		learn Green Iron Bracers##3501
	step
		#include "trainer_Blacksmithing"
		learn Green Iron Helm##3502
	step
		#include "trainer_Blacksmithing"
		learn Green Iron Hauberk##3508
	step
		#include "trainer_Blacksmithing"
		learn Glinting Steel Dagger##15972
	step
		#include "trainer_Blacksmithing"
		learn Golden Scale Bracers##7223
	step
		#include "trainer_Blacksmithing"
		learn Solid Grinding Stone##9920
	step
		#include "trainer_Blacksmithing"
		learn Solid Sharpening Stone##9918
	step
		#include "trainer_Blacksmithing"
		learn Solid Weightstone##9921
	step
		#include "trainer_Blacksmithing"
		learn Truesilver Skeleton Key##19668
	step
		#include "trainer_Blacksmithing"
		learn Steel Breastplate##9916
	step
		#include "trainer_Blacksmithing"
		learn Heavy Mithril Gauntlet##9928
	step
		#include "trainer_Blacksmithing"
		learn Heavy Mithril Shoulder##9926
	step
		#include "trainer_Blacksmithing"
		learn Mithril Scale Pants##9931
	step
		#include "trainer_Blacksmithing"
		learn Heavy Mithril Axe##9993
	step
		#include "trainer_Blacksmithing"
		learn Steel Plate Helm##9935
	step
		#include "trainer_Blacksmithing"
		learn Heavy Mithril Breastplate##9959
	step
		#include "trainer_Blacksmithing"
		learn Mithril Coif##9961
	step
		#include "trainer_Blacksmithing"
		learn Big Black Mace##10001
	step
		#include "trainer_Blacksmithing"
		learn Heavy Mithril Boots##9968
	step
		#include "trainer_Blacksmithing"
		learn Dense Grinding Stone##16639
	step
		#include "trainer_Blacksmithing"
		learn Dense Sharpening Stone##16641
	step
		#include "trainer_Blacksmithing"
		learn Dense Weightstone##16640
	step
		#include "trainer_Blacksmithing"
		learn Thorium Armor##16642
	step
		#include "trainer_Blacksmithing"
		learn Thorium Belt##16643
	step
		#include "trainer_Blacksmithing"
		learn Thorium Bracers##16644
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Belt##16647
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Shoulders##16646
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Bracers##16649
	step
		#include "trainer_Blacksmithing"
		learn Arcanite Skeleton Key##19669
	step
		#include "trainer_Blacksmithing"
		learn Ornate Thorium Handaxe##16969
	step
		#include "trainer_Blacksmithing"
		learn Thorium Boots##16652
	step
		#include "trainer_Blacksmithing"
		learn Thorium Helm##16653
	step
		#include "trainer_Blacksmithing"
		learn Huge Thorium Battleaxe##16971
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Breastplate##29550
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Chest##16663
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Leggings##16730
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Boots##16657
	step
		#include "trainer_Blacksmithing"
		learn Imperial Plate Helm##16658
	step
		#include "trainer_Blacksmithing"
		learn Fel Sharpening Stone##29654
	step
		#include "trainer_Blacksmithing"
		learn Fel Weightstone##34607
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Chain Coif##29551
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Plate Gloves##29545
	step
		#include "trainer_Blacksmithing"
		learn Thorium Leggings##16662
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Plate Belt##29547
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Chain Gloves##29552
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Hatchet##29557
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Chain Bracers##29553
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Hammer##29558
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Plate Boots##29548
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Plate Pants##29549
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Chain Tunic##29556
	step
		#include "trainer_Blacksmithing"
		learn Fel Iron Greatsword##29565
	step
		#include "trainer_Blacksmithing"
		learn Lesser Rune of Warding##32284
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Skeleton Key##59405
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Belt##52568
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Boots##52569
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Bracers##55834
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Shoulders##52572
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Triangle Shield##54550
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Helm##52571
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Legplates##52567
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Gauntlets##55835
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Chestpiece##52570
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Helm##54917
	step
		#include "trainer_Blacksmithing"
		learn Cobalt Tenderizer##55201
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Boots##54918
	step
		#include "trainer_Blacksmithing"
		learn Sturdy Cobalt Quickblade##55200
	step
		#include "trainer_Blacksmithing"
		learn Forged Cobalt Claymore##55203
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Chestpiece##54944
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Shoulders##54941
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Shoulders##55174
	step
		#include "trainer_Blacksmithing"
		learn Saronite Defender##54557
	step
		#include "trainer_Blacksmithing"
		learn Saronite Protector##55013
	step
		#include "trainer_Blacksmithing"
		learn Notched Cobalt War Axe##55204
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Gauntlets##54945
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Belt##59436
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Legplates##55055
	step
		#include "trainer_Blacksmithing"
		learn Savage Cobalt Slicer##55177
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Belt##54551
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Legplates##54554
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Belt##54946
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Legplates##54947
	step
		#include "trainer_Blacksmithing"
		learn Socket Bracer##55628
	step
		#include "trainer_Blacksmithing"
		learn Socket Gloves##55641
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Bracers##59438
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Gauntlets##55056
	step
		#include "trainer_Blacksmithing"
		learn Saronite Ambusher##55179
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Boots##54552
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Breastplate##54553
	step
		#include "trainer_Blacksmithing"
		learn Horned Cobalt Helm##54949
	step
		#include "trainer_Blacksmithing"
		learn Spiked Cobalt Bracers##54948
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Boots##55057
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Pauldrons##59440
	step
		#include "trainer_Blacksmithing"
		learn Saronite Shiv##55181
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Helm##54555
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Shoulders##54556
	step
		#include "trainer_Blacksmithing"
		learn Deadly Saronite Dirk##55206
	step
		#include "trainer_Blacksmithing"
		learn Cudgel of Saronite Justice##56280
	step
		#include "trainer_Blacksmithing"
		learn Furious Saronite Beatstick##55182
	step
		#include "trainer_Blacksmithing"
		learn Saronite Bulwark##55014
	step
		#include "trainer_Blacksmithing"
		learn Saronite Spellblade##59442
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Bracers##55017
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Breastplate##55058
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Saronite Helm##59441
	step
		#include "trainer_Blacksmithing"
		learn Eternal Belt Buckle##55656
	step
		#include "trainer_Blacksmithing"
		learn Saronite Mindcrusher##55185
	step
		#include "trainer_Blacksmithing"
		learn Tempered Saronite Gauntlets##55015
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Bracers##56549
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Bracers##55305
	step
		#include "trainer_Blacksmithing"
		learn Vengeance Bindings##55298
	step
		#include "trainer_Blacksmithing"
		learn Titanium Shield Spike##56357
	step
		#include "trainer_Blacksmithing"
		learn Titanium Weapon Chain##55839
	step
		#include "trainer_Blacksmithing"
		learn Icebane Girdle##61009
	step
		#include "trainer_Blacksmithing"
		learn Icebane Treads##61010
	step
		#include "trainer_Blacksmithing"
		learn Daunting Handguards##55301
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Gauntlets##56553
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Pauldrons##56550
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Waistguard##56551
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Walkers##56552
	step
		#include "trainer_Blacksmithing"
		learn Righteous Gauntlets##55300
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Gauntlets##55309
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Pauldrons##55306
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Waistguard##55307
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Walkers##55308
	step
		#include "trainer_Blacksmithing"
		learn Icebane Chestguard##61008
	step
		#include "trainer_Blacksmithing"
		learn Daunting Legplates##55303
	step
		#include "trainer_Blacksmithing"
		learn Helm of Command##55302
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Hauberk##56555
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Legplates##56554
	step
		#include "trainer_Blacksmithing"
		learn Ornate Saronite Skullshield##56556
	step
		#include "trainer_Blacksmithing"
		learn Righteous Greaves##55304
	step
		#include "trainer_Blacksmithing"
		learn Righteous Greaves##55311
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Legplates##55310
	step
		#include "trainer_Blacksmithing"
		learn Savage Saronite Skullshield##55312
	step
		#include "trainer_Blacksmithing"
		learn Folded Obsidium##76178
	step
		#include "trainer_Blacksmithing"
		learn Titanium Skeleton Key##59406
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Titansteel Helm##55374
	step
		#include "trainer_Blacksmithing"
		learn Brilliant Titansteel Treads##55377
	step
		#include "trainer_Blacksmithing"
		learn Spiked Titansteel Helm##55372
	step
		#include "trainer_Blacksmithing"
		learn Spiked Titansteel Treads##55375
	step
		#include "trainer_Blacksmithing"
		learn Tempered Titansteel Helm##55373
	step
		#include "trainer_Blacksmithing"
		learn Tempered Titansteel Treads##55376
	step
		#include "trainer_Blacksmithing"
		learn Titansteel Bonecrusher##55370
	step
		#include "trainer_Blacksmithing"
		learn Titansteel Destroyer##55369
	step
		#include "trainer_Blacksmithing"
		learn Titansteel Guardian##55371
	step
		#include "trainer_Blacksmithing"
		learn Titansteel Shanker##56234
	step
		#include "trainer_Blacksmithing"
		learn Titansteel Shield Wall##56400
	step
		#include "trainer_Blacksmithing"
		learn Titansteel Spellblade##63182
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Bracers##76179
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Bracers##76262
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Bracers##76280
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Gauntlets##76281
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Gauntlets##76180
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Shield##76291
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Gauntlets##76263
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Belt##76181
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Belt##76264
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Belt##76283
	step
		#include "trainer_Blacksmithing"
		learn Decapitator's Razor##76433
	step
		#include "trainer_Blacksmithing"
		learn Cold-Forged Shank##76434
	step
		#include "trainer_Blacksmithing"
		learn Obsidium Bladespear##76474
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Boots##76182
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Boots##76265
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Boots##76285
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Shield##76293
	step
		#include "trainer_Blacksmithing"
		learn Obsidium Skeleton Key##76438
	step
		#include "trainer_Blacksmithing"
		learn Fire-Etched Dagger##76435
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Shoulders##76258
	step
		#include "trainer_Blacksmithing"
		learn Lifeforce Hammer##76436
	step
		#include "trainer_Blacksmithing"
		learn Obsidium Executioner##76437
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Legguards##76287
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Shoulders##76286
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Shoulders##76266
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Helm##76260
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Helm##76288
	step
		#include "trainer_Blacksmithing"
		learn Elementium Shield Spike##76441
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Legguards##76259
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Legguards##76267
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Breastplate##76270
	step
		#include "trainer_Blacksmithing"
		learn Hardened Obsidium Breastplate##76261
	step
		#include "trainer_Blacksmithing"
		learn Redsteel Helm##76269
	step
		#include "trainer_Blacksmithing"
		learn Stormforged Breastplate##76289
	step
		#include "trainer_Blacksmithing"
		learn Ghostly Skeleton Key##122633
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Bracers##122581
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Belt##122583
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Gauntlets##122579
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Boots##122582
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Legplates##122580
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Shoulders##122577
	step
		#include "trainer_Blacksmithing"
		learn Lightsteel Shield##122635
	step
		#include "trainer_Blacksmithing"
		learn Living Steel Weapon Chain##131929
	step
		#include "trainer_Blacksmithing"
		learn Spiritguard Shield##122636
	step
		#include "trainer_Blacksmithing"
		learn Forgewire Axe##122637
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Blade##122638
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Breastplate##122578
	step
		#include "trainer_Blacksmithing"
		learn Ghost-Forged Helm##122576
	step
		#include "trainer_Blacksmithing"
		learn Phantasmal Hammer##122639
	step
		#include "trainer_Blacksmithing"
		learn Ghost Shard##122641
	step
		#include "trainer_Blacksmithing"
		learn Spiritblade Decimator##122640

//RANDOM DROPS
	step
		This is a Random World Drop, from creatures level 5-15 and some dungeons
		|tip We recommend Starter Area Humanoids or Ragefire Chasm for grinding.
		collect 1 Plans: Copper Chain Vest##3609 |n
		use Plans: Copper Chain Vest##3609
		learn Copper Chain Vest##3321
	step
		This is a Random World Drop, from creatures level 6-21 and some dungeons
		|tip We recommend The Barrens or Ragefire Chasm for grinding.
		collect 1 Plans: Gemmed Copper Gauntlets##3610 |n
		use Plans: Gemmed Copper Gauntlets##3610
		learn Gemmed Copper Gauntlets##3325
	step
		This is a Random World Drop, from creatures level 9-25 and some dungeons
		|tip We recommend Wailing Caverns for grinding.
		collect 1 Plans: Runed Copper Breastplate##2881 |n
		use Plans: Runed Copper Breastplate##2881
		learn Runed Copper Breastplate##2667
	step
		This is a Random World Drop, from creatures level 15-34 and some dungeons
		|tip We recommend Hillsbrad Foothills or Blackfathom Deeps for grinding.
		collect 1 Plans: Deadly Bronze Poniard##2883 |n
		use Plans: Deadly Bronze Poniard##2883
		learn Deadly Bronze Poniard##3295
	step
		This is a Random World Drop, from creatures level 15-34 and some dungeons
		|tip We recommend Darkshore or Gnomeregan for grinding.
		collect 1 Plans: Silvered Bronze Breastplate##5578 |n
		use Plans: Silvered Bronze Breastplate##5578
		learn Silvered Bronze Breastplate##2673
	step
		This is a Random World Drop, from creatures level 23-28 and some dungeons
		|tip We recommend Darkshore or Gnomeregan for grinding.
		collect 1 Plans: Silvered Bronze Shoulders##2882 |n
		use Plans: Silvered Bronze Shoulders##2882
		learn Silvered Bronze Shoulders##3330
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Scarlet Halls or Gnomeregan for grinding.
		collect 1 Plans: Iridescent Hammer##5543 |n
		use Plans: Iridescent Hammer##5543
		learn Iridescent Hammer##6518
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend The Hinterlands or Gnomeregan for grinding.
		collect 1 Plans: Green Iron Boots##3611 |n
		use Plans: Green Iron Boots##3611
		learn Green Iron Boots##3334
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Hillsbrad Foothills or Gnomeregan for grinding.
		collect 1 Plans: Mighty Iron Hammer##3608 |n
		use Plans: Mighty Iron Hammer##3608
		learn Mighty Iron Hammer##3297
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Northern Stranglethorn or Gnomeregan for grinding.
		collect 1 Plans: Green Iron Gauntlets##3612 |n
		use Plans: Green Iron Gauntlets##3612
		learn Green Iron Gauntlets##3336
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Northern Stranglethorn or Gnomeregan for grinding.
		collect 1 Plans: Iron Shield Spike##6044 |n
		use Plans: Iron Shield Spike##6044
		learn Iron Shield Spike##7221
	step
		This is a Random World Drop, from creatures level 20-36 and some dungeons
		|tip We recommend Northern Stranglethorn or Gnomeregan for grinding.
		collect 1 Plans: Silvered Bronze Leggings##10424 |n
		use Plans: Silvered Bronze Leggings##10424
		learn Silvered Bronze Leggings##12259
	step
		This is a Random World Drop, from creatures level 25-40 and some dungeons
		|tip We recommend The Cape of Stranglethorn or Razorfen Kraul for grinding.
		collect 1 Plans: Green Iron Shoulders##3870 |n
		use Plans: Green Iron Shoulders##3870
		learn Green Iron Shoulders##3504
	step
		This is a Random World Drop, from creatures level 25-42 and some dungeons
		|tip We recommend Desolace and Maraudon for grinding.
		collect 1 Plans: Iron Counterweight##6045 |n
		use Plans: Iron Counterweight##6045
		learn Iron Counterweight##7222
	step
		This is a Random World Drop, from creatures level 25-42 and some dungeons
		|tip We recommend Desolace and Maraudon for grinding.
		collect 1 Plans: Golden Iron Destroyer##3867 |n
		use Plans: Golden Iron Destroyer##3867
		learn Golden Iron Destroyer##3495
	step
		This is a Random World Drop, from creatures level 25-42 and some dungeons
		|tip We recommend Desolace and Maraudon for grinding.
		collect 1 Plans: Golden Scale Leggings##3872 |n
		use Plans: Golden Scale Leggings##3872
		learn Golden Scale Leggings##3507
	step
		This is a Random World Drop, from creatures level 25-40 and some dungeons
		|tip We recommend Gnomeregan and Maraudon for grinding.
		collect 1 Plans: Golden Scale Shoulders##3871 |n
		use Plans: Golden Scale Shoulders##3871
		learn Golden Scale Shoulders##3505
	step
		This is a Random World Drop, from creatures level 25-40 and some dungeons
		|tip We recommend Desolace and Maraudon for grinding.
		collect 1 Plans: Jade Serpentblade##3866 |n
		use Plans: Jade Serpentblade##3866
		learn Jade Serpentblade##3493
	step
		This is a Random World Drop, from creatures level 25-46 and some dungeons
		|tip We recommend Uldaman and Maraudon for grinding.
		collect 1 Plans: Polished Steel Boots##3874 |n
		use Plans: Polished Steel Boots##3874
		learn Polished Steel Boots##3513
	step
		This is a Random World Drop, from creatures level 30-50 and some dungeons
		|tip We recommend Uldaman or Stratholme for grinding.
		collect 1 Plans: Heavy Mithril Pants##7975 |n
		use Plans: Heavy Mithril Pants##7975
		learn Heavy Mithril Pants##9933
	step
		This is a Random World Drop, from creatures level 35-50 and some dungeons
		|tip We recommend Eastern Plaguelands or Stratholme for grinding.
		collect 1 Plans: Mithril Shield Spike##7976 |n
		use Plans: Mithril Shield Spike##7976
		learn Mithril Shield Spike##9939
	step
		This is a Random World Drop, from creatures level 35-50 and some dungeons
		|tip We recommend Tanaris or Dire Maul for grinding.
		collect 1 Plans: Blue Glittering Axe##7992 |n
		use Plans: Blue Glittering Axe##7992
		learn Blue Glittering Axe##9995
	step
		This is a Random World Drop, from creatures level 35-50 and some dungeons
		|tip We recommend Tanaris or Zul'Farrak for grinding.
		collect 1 Plans: Wicked Mithril Blade##8029 |n
		use Plans: Wicked Mithril Blade##8029
		learn Wicked Mithril Blade##9997
	step
		This is a Random World Drop, from creatures level 30-46 and some dungeons
		|tip We recommend Uldaman and Maraudon for grinding.
		collect 1 Plans: Searing Golden Blade##12261 |n
		use Plans: Searing Golden Blade##12261
		learn Searing Golden Blade##15973
	step
		This is a Random World Drop, from creatures level 30-46 and some dungeons
		|tip We recommend Dustwallow Marsh or Razorfen Downs for grinding.
		collect 1 Plans: Steel Weapon Chain##6046 |n
		use Plans: Steel Weapon Chain##6046
		learn Steel Weapon Chain##7224
	step
		This is a Random World Drop, from creatures level 30-46 and some dungeons
		|tip We recommend Uldaman or Dire Maul for grinding.
		collect 1 Plans: Golden Scale Cuirass##3873 |n
		use Plans: Golden Scale Cuirass##3873
		learn Golden Scale Cuirass##3511
	step
		This is a Random World Drop, from creatures level 30-46 and some dungeons
		|tip We recommend Maraudon or Dire Maul for grinding.
		collect 1 Plans: Frost Tiger Blade##3868 |n
		use Plans: Frost Tiger Blade##3868
		learn Frost Tiger Blade##3497
	step
		This is a Random World Drop, from creatures level 30-46 and some dungeons
		|tip We recommend Maraudon or Dire Maul for grinding.
		collect 1 Plans: Golden Scale Boots##3875 |n
		use Plans: Golden Scale Boots##3875
		learn Golden Scale Boots##3515
	step
		This is a Random World Drop, from creatures level 30-46 and some dungeons
		|tip We recommend Maraudon or Dire Maul for grinding.
		collect 1 Plans: Shadow Crescent Axe##3869 |n
		use Plans: Shadow Crescent Axe##3869
		learn Shadow Crescent Axe##3500
	step
		This is a Random World Drop, from creatures level 40-55 and some dungeons
		|tip We recommend Tanaris or Stratholme for grinding.
		collect 1 Plans: Mithril Scale Shoulders##7991 |n
		use Plans: Mithril Scale Shoulders##7991
		learn Mithril Scale Shoulders##9966
	step
		This is a Random World Drop, from creatures level 40-55 and some dungeons
		|tip We recommend Tanaris or Zul'Farrak for grinding.
		collect 1 Plans: Mithril Spurs##7989 |n
		use Plans: Mithril Spurs##7989
		learn Mithril Spurs##9964
	step
		This is a Random World Drop, from creatures level 40-55 and some dungeons
		|tip We recommend Tanaris or Zul'Farrak for grinding.
		collect 1 Plans: Dazzling Mithril Rapier##7993 |n
		use Plans: Dazzling Mithril Rapier##7993
		learn Dazzling Mithril Rapier##10005
	step
		This is a Random World Drop, from creatures level 40-55 and some dungeons
		|tip We recommend Tanaris or Zul'Farrak for grinding.
		collect 1 Plans: Heavy Mithril Helm##7990 |n
		use Plans: Heavy Mithril Helm##7990
		learn Heavy Mithril Helm##9970
	step
		This is a Random World Drop, from creatures level 40-55 and some dungeons
		|tip We recommend Silithus or Zul'Farrak for grinding.
		collect 1 Plans: Runed Mithril Hammer##8028 |n
		use Plans: Runed Mithril Hammer##8028
		learn Runed Mithril Hammer##1009
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Blasted Lands or Sunken Temple for grinding.
		collect 1 Plans: Radiant Belt##12685 |n
		use Plans: Radiant Belt##12685
		learn Radiant Belt##16645
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Burning Steppes or Sunken Temple for grinding.
		collect 1 Plans: Wildthorn Mail##12691 |n
		use Plans: Wildthorn Mail##12691
		learn Wildthorn Mail##16650
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Blackrock Depths for grinding.
		collect 1 Plans: Radiant Breastplate##12689 |n
		use Plans: Radiant Breastplate##12689
		learn Radiant Breastplate##16648
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Un'Goro Crater or Blackrock Depths for grinding.
		collect 1 Plans: Thorium Shield Spike##12692 |n
		use Plans: Thorium Shield Spike##12692
		learn Thorium Shield Spike##16651
	step
		This is a Random World Drop, from creatures level 45-63 and some dungeons
		|tip We recommend Blasted Lands or Ruins of Ahn'Qiraj for grinding.
		collect 1 Plans: Radiant Gloves##12695 |n
		use Plans: Radiant Gloves##12695
		learn Radiant Gloves##16654
	step
		This is a Random World Drop, from creatures level 50-63 and some dungeons
		|tip We recommend Blackrock Depths or Molten Core for grinding.
		collect 1 Plans: Dawnbringer Shoulders##12698 |n
		use Plans: Dawnbringer Shoulders##12698
		learn Dawnbringer Shoulders##16660
	step
		This is a Random World Drop, from creatures level 45-63 and some dungeons
		|tip We recommend Silithus or Molten Core for grinding.
		collect 1 Plans: Radiant Boots##12697 |n
		use Plans: Radiant Boots##12697
		learn Radiant Boots##16656
	step
		This is a Random World Drop, from creatures level 40-63 and some dungeons
		|tip We recommend Silithus or Molten Core for grinding.
		collect 1 Plans: Radiant Circlet##12702 |n
		use Plans: Radiant Circlet##12702
		learn Radiant Circlet##16659
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Blasted Lands or Sunken Temple for grinding.
		collect 1 Plans: Radiant Belt##12685 |n
		use Plans: Radiant Belt##12685
		learn Radiant Belt##16645
	step
		This is a Random Raid Drop from creatures level 59-63
		|tip This will drop in Blackwing Lair, Temple of Ahn'Qiraj or Molten Core.
		collect 1 Plans: Invulnerable Mail##12728 |n
		use Plans: Invulnerable Mail##12728
		learn Invulnerable Mail##16746
	step
		This is a Random Raid Drop from creatures level 59-63
		|tip This will drop in Blackwing Lair, Temple of Ahn'Qiraj or Molten Core.
		collect 1 Plans: Lionheart Helm##12717 |n
		use Plans: Lionheart Helm##12717
		learn Lionheart Helm##16726
	step
		This is a Random Raid Drop from creatures level 59-63
		|tip This will drop in Blackwing Lair, Temple of Ahn'Qiraj or Molten Core.
		collect 1 Plans: Persuader##22390 |n
		use Plans: Persuader##22390
		learn Persuader##27830
	step
		This is a Random Raid Drop from creatures level 59-63
		|tip This will drop in Blackwing Lair, Temple of Ahn'Qiraj or Molten Core.
		collect 1 Plans: Sageblade##22389 |n
		use Plans: Sageblade##22389
		learn Sageblade##27832
	step
		This is a Random Raid Drop from creatures level 59-63
		|tip This will drop in Blackwing Lair, Temple of Ahn'Qiraj or Molten Core.
		collect 1 Plans: Stronghold Gauntlets##12720 |n
		use Plans: Stronghold Gauntlets##12720
		learn Stronghold Gauntlets##16741
	step
		This is a Random World Drop, from creatures level 45-63 and some dungeons
		|tip We recommend Blackrock Depths or Blackwing Lair for grinding.
		collect 1 Plans: Titanic Leggings##22388 |n
		use Plans: Titanic Leggings##22388
		learn Titanic Leggings##27829
	step
		This is a Random World Drop, from creatures level 50-63 and some dungeons
		|tip We recommend Blasted Lands or Blackwing Lair for grinding.
		collect 1 Plans: Whitesoul Helm##12711 |n
		use Plans: Whitesoul Helm##12711
		learn Whitesoul Helm##16724
	step
		This is a Random World Drop, from creatures level 50-63 and some dungeons
		|tip We recommend Molten Core or Blackwing Lair for grinding.
		collect 1 Plans: Radiant Leggings##12713 |n
		use Plans: Radiant Leggings##12713
		learn Radiant Leggings##16725
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend The Shattered Halls or Sunwell Plateau for grinding.
		collect 1 Plans: Black Felsteel Bracers##23626 |n
		use Plans: Black Felsteel Bracers##23626
		learn Black Felsteel Bracers##29669
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend The Shattered Halls or Sunwell Plateau for grinding.
		collect 1 Plans: Blessed Bracers##23628 |n
		use Plans: Blessed Bracers##23628
		learn Blessed Bracers##29672
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend The Shattered Halls or Sunwell Plateau for grinding.
		collect 1 Plans: Bracers of the Green Fortress##23627 |n
		use Plans: Bracers of the Green Fortress##23627 |learn Bracers of the Green Fortress##29671
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Sethekk Halls or Black Temple for grinding.
		collect 1 Plans: Dirge##23636 |n
		use Plans: Dirge##23636
		learn Dirge##29699
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Sethekk Halls or Black Temple for grinding.
		collect 1 Plans: Eternium Runed Blade##23635 |n
		use Plans: Eternium Runed Blade##23635
		learn Eternium Runed Blade##29698
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Shadowmoon Valley or Hyjal Summit for grinding.
		collect 1 Plans: Fel Edged Battleaxe##23631 |n
		use Plans: Fel Edged Battleaxe##23631
		learn Fel Edged Battleaxe##29694
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Karazhan or Black Temple for grinding.
		collect 1 Plans: Fel Hardened Maul##23634 |n
		use Plans: Fel Hardened Maul##23634
		learn Fel Hardened Maul##29697
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Netherstorm or Sunwell Plateau for grinding.
		collect 1 Plans: Felfury Gauntlets##23620 |n
		use Plans: Felfury Gauntlets##23620
		learn Felfury Gauntlets##29658
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Netherstorm or Sunwell Plateau for grinding.
		collect 1 Plans: Felsteel Longblade##23629 |n
		use Plans: Felsteel Longblade##23629
		learn Felsteel Longblade##23629
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Netherstorm or Sunwell Plateau for grinding.
		collect 1 Plans: Felsteel Reaper##23632 |n
		use Plans: Felsteel Reaper##23632
		learn Felsteel Reaper##29695
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Shadowmoon Valley or Sunwell Plateau for grinding.
		collect 1 Plans: Gauntlets of the Iron Tower##23621 |n
		use Plans: Gauntlets of the Iron Tower##23621 |learn Gauntlets of the Iron Tower##29622
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend Shadowmoon Valley or Arcatraz for grinding.
		collect 1 Plans: Hammer of Righteous Might##33954 |n
		use Plans: Hammer of Righteous Might##33954
		learn Hammer of Righteous Might##43846
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend The Black Morass or Karazhan for grinding.
		collect 1 Plans: Hand of Eternity##23637 |n
		use Plans: Hand of Eternity##23637
		learn Hand of Eternity##29700
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend The Botanica or Magisters' Terrace for grinding.
		collect 1 Plans: Helm of the Stalwart Defender##23624 |n
		use Plans: Helm of the Stalwart Defender##23624
		learn Helm of the Stalwart Defender##29664
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend The Shattered Halls or Karazhan for grinding.
		collect 1 Plans: Khorium Champion##23630 |n
		use Plans: Khorium Champion##23630
		learn Khorium Champion##29693
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend the Black Temple or Karazhan for grinding.
		collect 1 Plans: Oathkeeper's Helm##23625 |n
		use Plans: Oathkeeper's Helm##23625
		learn Oathkeeper's Helm##29668
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend the Auchenai Crypts or The Botanica for grinding.
		collect 1 Plans: Runic Hammer##23633 |n
		use Plans: Runic Hammer##23633
		learn Runic Hammer##29696
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend the Mana Tombs or Hyjal Summit for grinding.
		collect 1 Plans: Steelgrip Gauntlets##23622 |n
		use Plans: Steelgrip Gauntlets##23622
		learn Steelgrip Gauntlets##29662
	step
		This is a Random World Drop, from creatures level 61-71 and some dungeons
		|tip We recommend the Mana Tombs or Hyjal Summit for grinding.
		collect 1 Plans: Storm Helm##23623 |n
		use Plans: Storm Helm##23623
		learn Storm Helm##29663
//OTHER (UNSORTED)
	step
		These plans are only for Alliance from completing a quest.
		|tip You may be able to find these for sale on the Neutral AH.
		collect 1 Plans: Heavy Copper Longsword##33792 |n
		use Plans: Heavy Copper Longsword##33792
		learn Heavy Copper Longsword##43549
	step
		These plans are only for Alliance from completing a quest.
		|tip You may be able to find these for sale on the Neutral AH.
		collect 1 Plans: Ironforge Breastplate##6735 |n
		use Plans: Ironforge Breastplate##6735
		learn Ironforge Breastplate##8367
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Pyrium Weapon Chain##66103 |n
		use Plans: Pyrium Weapon Chain##66103 |only if itemcount(66103) >= 1
		learn Pyrium Weapon Chain##76442
		buy 1 Plans: Vicious Ornate Pyrium Bracers##66125 |n
		use Plans: Vicious Ornate Pyrium Bracers##66125 |only if itemcount(66125) >= 1
		learn Vicious Ornate Pyrium Bracers##76465
		buy 1 Plans: Vicious Pyrium Bracers##66117 |n
		use Plans: Vicious Pyrium Bracers##66117 |only if itemcount(66117) >= 1
		learn Vicious Pyrium Bracers##76456
		buy 1 Plans: Vicious Ornate Pyrium Gauntlets##66126 |n
		use Plans: Vicious Ornate Pyrium Gauntlets##66126 |only if itemcount(66126) >= 1
		learn Vicious Ornate Pyrium Gauntlets##76466
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Vicious Pyrium Gauntlets##66118 |n
		use Plans: Vicious Pyrium Gauntlets##66118 |only if itemcount(66118) >= 1
		learn Vicious Pyrium Gauntlets##76457
		buy 1 Plans: Hardened Elementium Girdle##66105 |n
		use Plans: Hardened Elementium Girdle##66105 |only if itemcount(66105) >= 1
		learn Hardened Elementium Girdle##76444
		buy 1 Plans: Light Elementium Belt##66109 |n
		use Plans: Light Elementium Belt##66109 |only if itemcount(66109) >= 1
		learn Light Elementium Belt##76448
		buy 1 Plans: Vicious Ornate Pyrium Belt##66127 |n
		use Plans: Vicious Ornate Pyrium Belt##66127 |only if itemcount(66127) >= 1
		learn Vicious Ornate Pyrium Belt##76467
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Vicious Pyrium Belt##66119 |n
		use Plans: Vicious Pyrium Belt##66119 |only if itemcount(66119) >= 1
		learn Vicious Pyrium Belt##76458
		buy 1 Plans: Elementium Deathplate##66106 |n
		use Plans: Elementium Deathplate##66106 |only if itemcount(66106) >= 1
		learn Elementium Deathplate##76445
		buy 1 Plans: Hardened Elementium Hauberk##66104 |n
		use Plans: Hardened Elementium Hauberk##66104 |only if itemcount(66104) >= 1
		learn Hardened Elementium Hauberk##76443
		buy 1 Plans: Light Elementium Chestguard##66108 |n
		use Plans: Light Elementium Chestguard##66108 |only if itemcount(66108) >= 1
		learn Light Elementium Chestguard##76447
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Elementium Bonesplitter##66113 |n
		use Plans: Elementium Bonesplitter##66113 |only if itemcount(66113) >= 1
		learn Elementium Bonesplitter##76452
		buy 1 Plans: Elementium Gutslicer##67603 |n
		use Plans: Elementium Gutslicer##67603 |only if itemcount(67603) >= 1
		learn Elementium Gutslicer##94718
		buy 1 Plans: Elementium Hammer##66111 |n
		use Plans: Elementium Hammer##66111 |only if itemcount(66111) >= 1
		learn Elementium Hammer##76450
		buy 1 Plans: Vicious Ornate Pyrium Boots##66128 |n
		use Plans: Vicious Ornate Pyrium Boots##66128 |only if itemcount(66128) >= 1
		learn Vicious Ornate Pyrium Boots##76468
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Vicious Pyrium Boots##66120 |n
		use Plans: Vicious Pyrium Boots##66120 |only if itemcount(66120) >= 1
		learn Vicious Pyrium Boots##76459
		buy 1 Plans: Elementium Earthguard##66115 |n
		use Plans: Elementium Earthguard##66115 |only if itemcount(66115) >= 1
		learn Elementium Earthguard##76454
		buy 1 Plans: Elementium Stormshield##66116 |n
		use Plans: Elementium Stormshield##66116 |only if itemcount(66116) >= 1
		learn Elementium Stormshield##76455
		buy 1 Plans: Elementium Poleaxe##66112 |n
		use Plans: Elementium Poleaxe##66112 |only if itemcount(66112) >= 1
		learn Elementium Poleaxe##76451
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Elementium Shank##66114 |n
		use Plans: Elementium Shank##66114 |only if itemcount(66114) >= 1
		learn Elementium Shank##76453
		buy 1 Plans: Elementium Spellblade##66110 |n
		use Plans: Elementium Spellblade##66110 |only if itemcount(66110) >= 1
		learn Elementium Spellblade##76449
		buy 1 Plans: Forged Elementium Mindcrusher##67606 |n
		use Plans: Forged Elementium Mindcrusher##67606 |only if itemcount(67606) >= 1
		learn Forged Elementium Mindcrusher##94732
		buy 1 Plans: Vicious Ornate Pyrium Shoulders##66129 |n
		use Plans: Vicious Ornate Pyrium Shoulders##66129 |only if itemcount(66129) >= 1
		learn Vicious Ornate Pyrium Shoulders##76469
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Vicious Pyrium Shoulders##66121 |n
		use Plans: Vicious Pyrium Shoulders##66121 |only if itemcount(66121) >= 1
		learn Vicious Pyrium Shoulders##76461
		buy 1 Plans: Ebonsteel Belt Buckle##66100 |n
		use Plans: Ebonsteel Belt Buckle##66100 |only if itemcount(66100) >= 1
		learn Ebonsteel Belt Buckle##76439
		buy 1 Plans: Pyrium Shield Spike##66101 |n
		use Plans: Pyrium Shield Spike##66101 |only if itemcount(66101) >= 1
		learn Pyrium Shield Spike##76440
		buy 1 Plans: Vicious Ornate Pyrium Breastplate##66132 |n
		use Plans: Vicious Ornate Pyrium Breastplate##66132 |only if itemcount(66132) >= 1
		learn Vicious Ornate Pyrium Breastplate##76472
	step
		talk Sumi##3356 |goto Orgrimmar 76.0,35.4
		buy 1 Plans: Vicious Ornate Pyrium Legguards##66130 |n
		use Plans: Vicious Ornate Pyrium Legguards##66130 |only if itemcount(66130) >= 1
		learn Vicious Ornate Pyrium Legguards##76470
		buy 1 Plans: Vicious Pyrium Breastplate##66124 |n
		use Plans: Vicious Pyrium Breastplate##66124 |only if itemcount(66124) >= 1
		learn Vicious Pyrium Breastplate##76464
		buy 1 Plans: Vicious Pyrium Helm##66123 |n
		use Plans: Vicious Pyrium Helm##66123 |only if itemcount(66123) >= 1
		learn Vicious Pyrium Helm##76463
		buy 1 Plans: Vicious Pyrium Legguards##66122 |n
		use Plans: Vicious Pyrium Legguards##66122 |only if itemcount(66122) >= 1
		learn Vicious Pyrium Legguards##76462
	step
		talk Sumi##3356
		collect 1 Plans: Hardened Iron Shortsword##12162 |n
		use Plans: Hardened Iron Shortsword##12162 |learn Hardened Iron Shortsword##3492 |goto Orgrimmar 75.8,35.2
		You can also buy them from Punra here: [Orgrimmar 45.0,77.6]
		You can also buy them from Zido Helmbreaker here: [Orgrimmar 36.2,83.2]
	step
		talk Orokk Omosh##7790
		You will need to complete this quest to gain these Plans:
		|tip This is only a Horde Quest and may sell well on the Neutral AH.
		accept Barbaric Battlements##2751
		turnin Barbaric Battlements##2751
		collect 1 Plans: Barbaric Iron Breastplate##7979 |n
		use Plans: Barbaric Iron Breastplate##7979
		learn Barbaric Iron Breastplate##9813 |goto Orgrimmar 76.6,37.6
	step
		talk Orokk Omosh##7790
		You will need to complete this quest to gain these Plans:
		|tip This is only a Horde Quest and may sell well on the Neutral AH.
		accept On Iron Pauldrons##2752
		turnin On Iron Pauldrons##2752
		collect 1 Plans: Barbaric Iron Shoulders##7978 |n
		use Plans: Barbaric Iron Shoulders##7978
		learn Barbaric Iron Shoulders##9811 |goto Orgrimmar 76.6,37.6
	step
		talk Orokk Omosh##7790
		You will need to complete this quest to gain these Plans:
		|tip This is only a Horde Quest and may sell well on the Neutral AH.
		accept Horns of Frenzy##2754
		turnin Horns of Frenzy##2754
		collect 1 Plans: Barbaric Iron Helm##7980 |n
		use Plans: Barbaric Iron Helm##7980
		learn Barbaric Iron Helm##9814 |goto Orgrimmar 76.6,37.6
	step
		talk Orokk Omosh##7790
		You will need to complete this quest to gain these Plans:
		|tip This is only a Horde Quest and may sell well on the Neutral AH.
		accept Trampled Under Foot##2753
		turnin Trampled Under Foot##2753
		collect 1 Plans: Barbaric Iron Boots##7981 |n
		use Plans: Barbaric Iron Boots##7981
		learn Barbaric Iron Boots##9818 |goto Orgrimmar 76.6,37.6
	step
		talk Orokk Omosh##7790
		You will need to complete this quest to gain these Plans:
		|tip This is only a Horde Quest and may sell well on the Neutral AH.
		accept Joys of Omosh##2755
		turnin Joys of Omosh##2755
		collect 1 Plans: Barbaric Iron Gloves##7982 |n
		use Plans: Barbaric Iron Gloves##7982
		learn Barbaric Iron Gloves##9820 |goto Orgrimmar 76.6,37.6
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect 1 Plans: Edge of Winter##17706 |n
		use Plans: Edge of Winter##17706
		learn Edge of Winter##21913
	step
		talk Damek Bloombeard##53214 |goto Molten Front 47.0,90.6
		buy 1 Plans: Brainsplinter##70166 |n
		use Plans: Brainsplinter##70166 |only if itemcount(70166) >= 1
		learn Brainsplinter##99652
		buy 1 Plans: Elementium-Edged Scalper##70169 |n
		use Plans: Elementium-Edged Scalper##70169 |only if itemcount(70169) >= 1
		learn Elementium-Edged Scalper##99655
		buy 1 Plans: Lightforged Elementium Hammer##70168 |n
		use Plans: Lightforged Elementium Hammer##70168 |only if itemcount(70168) >= 1
		learn Lightforged Elementium Hammer##99654
		buy 1 Plans: Masterwork Elementium Deathblade##70172 |n
		use Plans: Masterwork Elementium Deathblade##70172 |only if itemcount(70172) >= 1
		learn Masterwork Elementium Deathblade##99658
	step
		talk Damek Bloombeard##53214 |goto Molten Front 47.0,90.6
		buy 1 Plans: Masterwork Elementium Spellblade##70167 |n
		use Plans: Masterwork Elementium Spellblade##70167 |only if itemcount(70167) >= 1
		learn Masterwork Elementium Spellblade##99653
		buy 1 Plans: Pyrium Spellward##70170 |n
		use Plans: Pyrium Spellward##70170 |only if itemcount(70170) >= 1
		learn Pyrium Spellward##99656
		buy 1 Plans: Unbreakable Guardian##70171 |n
		use Plans: Unbreakable Guardian##70171 |only if itemcount(70171) >= 1
		learn Unbreakable Guardian##99657
		buy 1 Plans: Witch-Hunter's Harvester##70173 |n
		use Plans: Witch-Hunter's Harvester##70173 |only if itemcount(70173) >= 1
		learn Witch-Hunter's Harvester##99660
	step
		talk Muuran##8878
		buy 1 Plans: Solid Iron Maul##10858 |n
		use Plans: Solid Iron Maul##10858 
		learn Solid Iron Maul##3494 |goto Desolace 55.8,56.6
	step
		talk Zarena Cromwind##2482
		buy 1 Plans: Moonsteel Broadsword##12163 |n
		use Plans: Moonsteel Broadsword##12163 
		learn Moonsteel Broadsword##3496 |goto The Cape of Stranglethorn 43.0,70.6
	step
		talk Jaquilina Dramet##2483
		buy 1 Plans: Massive Iron Axe##12164 |n
		use Plans: Massive Iron Axe##12164 
		learn Massive Iron Axe##3498 |goto Northern Stranglethorn 43.6,23.0
		You can also purchase this from Vharr here: [Northern Stranglethorn 38.6,49.0]
	step
		talk Krinkle Goodsteel##5411
		buy 1 Plans: Golden Scale Coif##6047 |n
		use Plans: Golden Scale Coif##6047 
		learn Golden Scale Coif##3503 |goto Tanaris 51.2,30.2
	step
		These Plans are crafted by _Gnomish Engineers_
		|tip You will have to purchase this off the AH or ask to purchase in Trade Chat.
		collect 1 Plans: Inlaid Mithril Cylinder##10713 |n
		use Plans: Inlaid Mithril Cylinder##10713
		learn Inlaid Mithril Cylinder##11454
	step
		kill Strashaz Myrmidon##4368+
		collect 1 Plans: Runic Breastplate##12718 |n
		use Plans: Runic Breastplate##12718
		learn Runic Breastplate##16731 |goto Dustwallow Marsh 77.0,18.6
	step
		talk Gharash##8176
		buy 1 Plans: Mithril Scale Bracers##7995 |n
		use Plans: Mithril Scale Bracers##7995
		learn Mithril Scale Bracers##9937 |goto Swamp of Sorrows 47.2,52.2
	step
		talk Magnus Frostwake##11278
		buy 1 Plans: Storm Gauntlets##12703 |n
		use Plans: Storm Gauntlets##12703 |learn Storm Gauntlets##16661
		buy 1 Plans: Ebon Shiv##8030 |n
		use Plans: Ebon Shiv##8030
		learn Ebon Shiv##10013 |goto Western Plaguelands 68.0,77.6
	step
		kill Volchan##10119
		|tip He is a Rare Elite but doesn't path far, so you may not find him on your first visit.
		collect 1 Plans: Volcanic Hammer##12828 |n
		use Plans: Volcanic Hammer##12828
		learn Volcanic Hammer##16984 |goto Burning Steppes 20.2,41.2
	step
		kill Risen Defender##10421, Risen Initiate##10420, Risen Priest##10423
		collect 1 Plans: Serenity##12827 |n
		use Plans: Serenity##12827
		learn Serenity##16983 |goto Stratholme 25.2,45.6
	step
		kill Shrieking Banshee##10463, Wailing Banshee##10464
		collect 1 Plans: Phantom Blade##74274 |n
		use Plans: Phantom Blade##74274
		learn Phantom Blade##10007 |goto Stratholme 59.0,44.6
	step
		kill Ghoul Ravener##10406
		collect 1 Plans: Corruption##12830 |n
		use Plans: Corruption##12830
		learn Corruption##16985 |goto Stratholme/2 68.8,26.2
	step
		kill Maleki the Pallid##10438
		collect 1 Plans: Hammer of the Titans##12833 |n
		use Plans: Hammer of the Titans##12833
		learn Hammer of the Titans##16988 |goto Stratholme/2 67.8,20.4
	step
		kill Willey Hopebreaker##10997
		collect 1 Plans: Heartseeker##12839 |n
		use Plans: Heartseeker##12839
		learn Heartseeker##16995 |goto Stratholme/1 4.4,51.8
	step
		talk Argent Quartermaster Hasana##10856
		|tip You must be Honored with the Argent Dawn to purchase this Plan.
		buy 1 Plans: Girdle of the Dawn##19203 |n
		use Plans: Girdle of the Dawn##19203
		learn Girdle of the Dawn##23632 |goto Tirisfal Glades 83.2,68.0
		You can also purchase this Plan from Quartermaster Miranda Breechlock here: [Eastern Plaguelands 75.8,54.0]
	step
		talk Meilosh##11557
		|tip You must be Honored with Timbermaw Hold to purchase this Plan.
		collect 1 Plans: Heavy Timbermaw Belt##19202 |n
		use Plans: Heavy Timbermaw Belt##19202
		learn Heavy Timbermaw Belt##23628 |goto Felwood 64.8,5.2
	step
		talk Grizzle##9028
		collect 1 Plans: Dark Iron Pulverizer##11610 |n
		use Plans: Dark Iron Pulverizer##11610
		learn Dark Iron Pulverizer##15292 |goto Blackrock Depths 50.6,62.8
	step
		kill Weapon Technician##8920
		collect 1 Plans: Dark Iron Mail##11614 |n
		use Plans: Dark Iron Mail##11614
		learn Dark Iron Mail##15293 |goto Blackrock Depths 37.8,70.8
	step
		kill Hammered Patron##9554
		collect 1 Plans: Dark Iron Sunderer##11611 |n
		use Plans: Dark Iron Sunderer##11611
		learn Dark Iron Sunderer##15294 |goto Blackrock Depths/2 53.4,62.4
	step
		click Plans: Dark Iron Shoulders##525
		collect 1 Plans: Dark Iron Shoulders##11615 |n
		use Plans: Dark Iron Shoulders##11615
		learn Dark Iron Shoulders##15295 |goto Blackrock Depths/2 36.8,66.0
	step
		kill Ribbly Screwspigot##9543
		collect 1 Plans: Dark Iron Plate##11612 |n
		use Plans: Dark Iron Plate##11612
		learn Dark Iron Plate##15296 |goto Blackrock Depths/2 49.0,61.8
	step
		talk Lokhtos Darkbargainer##12944
		|tip You need to be Exalted with the Thorium Brotherhood to purchase this Plan.
		buy 1 Plans: Blackguard##19211 |n
		use Plans: Blackguard##19211
		learn Blackguard##23652 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Dark Iron Leggings##17052 |n
		use Plans: Dark Iron Leggings##17052
		learn Dark Iron Leggings##20876 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Ebon Hand##19210 |n
		use Plans: Ebon Hand##19210
		learn Ebon Hand##23650 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Dark Iron Boots##20040 |n
		use Plans: Dark Iron Boots##20040
		learn Dark Iron Boots##24399 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Nightfall##19212 |n
		use Plans: Nightfall##19212
		learn Nightfall##23653 |goto Blackrock Depths/2 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		|tip You need to be Revered with the Thorium Brotherhood to purchase this Plan.
		buy 1 Plans: Fiery Chain Shoulders##17053 |n
		use Plans: Fiery Chain Shoulders##17053
		learn Fiery Chain Shoulders##20873 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Dark Iron Gauntlets##19207 |n
		use Plans: Dark Iron Gauntlets##19207
		learn Dark Iron Gauntlets##23637 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Blackfury##19209 |n
		use Plans: Blackfury##19209
		learn Blackfury##23639 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Black Amnesty##19208 |n
		use Plans: Black Amnesty##19208
		learn Black Amnesty##23638 |goto Blackrock Depths/2 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		|tip You need to be Honored with the Thorium Brotherhood to purchase this Plan.
		buy 1 Plans: Dark Iron Destroyer##17060 |n
		use Plans: Dark Iron Destroyer##17060
		learn Dark Iron Destroyer##20897 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Dark Iron Helm##19206 |n
		use Plans: Dark Iron Helm##19206
		learn Dark Iron Helm##23636 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Dark Iron Reaver##17059 |n
		use Plans: Dark Iron Reaver##17059
		learn Dark Iron Reaver##20890 |goto Blackrock Depths/2 50.6,59.2
		buy 1 Plans: Fiery Chain Girdle##17049 |n
		use Plans: Fiery Chain Girdle##17049
		learn Fiery Chain Girdle##20872 |goto Blackrock Depths/2 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		|tip You need to be Friendly with the Thorium Brotherhood to purchase this Plan.
		buy 1 Plans: Dark Iron Bracers##17051 |n
		use Plans: Dark Iron Bracers##17051
		learn Dark Iron Bracers##20874 |goto Blackrock Depths/2 50.6,59.2
	step
		You must have a Sulfuron Ingot in your inventory to pick up this quest
		talk Lokhtos Darkbargainer##12944
		Tell him, _"Hrm, I'm listening."_
		collect Thorium Brotherhood Contract##18628
		use Thorium Brotherhood Contract##18628
		accept A Binding Contract##7604
		turnin A Binding Contract##7604
		collect 1 Plans: Sulfuron Hammer##18592 |n
		use Plans: Sulfuron Hammer##18592
		learn Sulfuron Hammer##21161 |goto Blackrock Depths/2 50.3,58.5
	step
		kill Quartermaster Zigris##9736+
		collect 1 Plans: Annihilator##12835 |n
		use Plans: Annihilator##12835
		learn Annihilator##16991 |goto Blackrock Spire/5 53.8,84.8
	step
		kill Goraluk Anvilcrack##10899
		collect 1 Plans: Arcanite Champion##12834 |n
		use Plans: Arcanite Champion##12834
		learn Arcanite Champion##16990 |goto Blackrock Spire/7 29.1,26.4
	step
		kill Goraluk Anvilcrack##10899
		buy 1 Plans: Masterwork Stormhammer##12837 |n
		use Plans: Masterwork Stormhammer##12837
		learn Masterwork Stormhammer##16993 |goto Blackrock Spire/7 29.1,26.4
	step
		kill Bannok Grimaxe##9596
		|tip He is a rare spawn, you may have to reset the dungeon a few times before you will find him.
		collect 1 Plans: Arcanite Reaper##12838 |n
		use Plans: Arcanite Reaper##12838
		learn Arcanite Reaper##16994 |goto Blackrock Spire/1 48.7,51.8
	step
		kill Moam##15340
		collect 1 Plans: Black Grasp of the Destroyer##22220 |n
		use Plans: Black Grasp of the Destroyer##22220
		learn Black Grasp of the Destroyer##27589 |goto Ruins of Ahn'Qiraj 31.6,37.6
	step
		talk Lieutenant General Andorov##15471
		buy 1 Plans: Jagged Obsidian Shield##22219 |n
		use Plans: Jagged Obsidian Shield##22219
		learn Jagged Obsidian Shield##27586 |goto Ruins of Ahn'Qiraj 57.6,39.4
	step
		talk Lieutenant General Andorov##15471
		|tip You must keep him alive during the boss fight to purchase from him.
		buy 1 Plans: Obsidian Mail Tunic##22221 |n
		use Plans: Obsidian Mail Tunic##22221
		learn Obsidian Mail Tunic##27590 |goto Ruins of Ahn'Qiraj 57.6,39.4
	step
		kill The Prophet Skeram##15263+
		collect 1 Plans: Thick Obsidian Breastplate##22222 |n
		use Plans: Thick Obsidian Breastplate##22222
		learn Thick Obsidian Breastplate##27587 |goto Ahn'Qiraj/2 44.8,46.6
	step
		talk Daleohm##50129
		buy 1 Plans: Frostguard##12836 |n
		use Plans: Frostguard##12836
		learn Frostguard##16992 |goto Winterspring 58.0,63.8
	step
		talk Argent Quartermaster Hasana##10856
		buy 1 Plans: Gloves of the Dawn##19205 |n
		use Plans: Gloves of the Dawn##19205
		learn Gloves of the Dawn##23633 |goto Tirisfal Glades 83.2,68.0
		You can also purchase this Plan from Quartermaster Miranda Breechlock here [Eastern Plaguelands 75.8,54.0]
	step
		talk Meilosh##11557
		|tip You must be Revered with Timbermaw Hold to purchase this Plan.
		buy 1 Plans: Heavy Timbermaw Boots##19204 |n
		use Plans: Heavy Timbermaw Boots##19204
		learn Heavy Timbermaw Boots##23629 |goto Felwood 64.8,5.2
	step
		talk Hermit Ortell##15194
		accept True Believers##8323
		turnin True Believers##8323
		|tip Use our Silithus Leveling guide for a walkthrough of these quests.
		collect 1 Decoded True Believer Clippings##20469 |n
		use Decoded True Believer Clippings##20469
		collect 1 Plans: Darkrune Breastplate##20554 |n
		use Plans: Darkrune Breastplate##20554
		learn Darkrune Breastplate##24914 |goto Silithus 68.6,63.0
	step
		talk Hermit Ortell##15194
		accept True Believers##8323
		turnin True Believers##8323
		|tip Use our Silithus Leveling guide for a walkthrough of these quests.
		collect 1 Decoded True Believer Clippings##20469 |n
		use Decoded True Believer Clippings##20469
		collect 1 Plans: Darkrune Gauntlets##20553 |n
		use Plans: Darkrune Gauntlets##20553
		learn Darkrune Gauntlets##24912 |goto Silithus 68.6,63.0
	step
		talk Hermit Ortell##15194
		accept True Believers##8323
		turnin True Believers##8323
		|tip Use our Silithus Leveling guide for a walkthrough of these quests.
		collect 1 Decoded True Believer Clippings##20469 |n
		use Decoded True Believer Clippings##20469
		collect 1 Plans: Darkrune Helm##20555 |n
		use Plans: Darkrune Helm##20555
		learn Darkrune Helm##24913 |goto Silithus 68.6,63.0
	step
		talk Vargus##15176
		buy 1 Plans: Ironvine Belt##22768 |n
		use Plans: Ironvine Belt##22768
		learn Ironvine Belt##28463 |goto Silithus 54.8,36.6
	step
		talk Vargus##15176
		buy 1 Plans: Ironvine Breastplate##22766 |n
		use Plans: Ironvine Breastplate##22766
		learn Ironvine Breastplate##28461 |goto Silithus 54.8,36.6
	step
		talk Vargus##15176
		buy 1 Plans: Ironvine Gloves##22767 |n
		use Plans: Ironvine Gloves##22767
		learn Ironvine Gloves##28462 |goto Silithus 54.8,36.6
	step
		talk Vargus##15176
		buy 1 Plans: Light Obsidian Belt##22214 |n
		use Plans: Light Obsidian Belt##22214
		learn Light Obsidian Belt##27588 |goto Silithus 54.8,36.6
	step
		talk Vargus##15176
		buy 1 Plans: Heavy Obsidian Belt##22209 |n
		use Plans: Heavy Obsidian Belt##22209
		learn Heavy Obsidian Belt##27585 |goto Silithus 54.8,36.6
	step
		talk Dramm Riverhorn##38561
		buy 1 Plans: Runic Plate Boots##12707 |n
		use Plans: Runic Plate Boots##12707
		learn Runic Plate Boots##16665 |goto Un'Goro Crater 43.4,41.6
	step
		talk Dramm Riverhorn ##38561
		buy 1 Plans: Runic Plate Helm##12714 |n
		use Plans: Runic Plate Helm##12714
		learn Runic Plate Helm##16726 |goto Un'Goro Crater 43.4,41.6
	step
		talk Dramm Riverhorn ##38561
		buy 1 Plans: Runic Plate Leggings##12719 |n
		use Plans: Runic Plate Leggings##12719
		learn Runic Plate Leggings##16732 |goto Un'Goro Crater 43.4,41.6
	step
		talk Dramm Riverhorn ##38561
		buy 1 Plans: Runic Plate Shoulders##12706 |n
		use Plans: Runic Plate Shoulders##12706
		learn Runic Plate Shoulders##16664 |goto Un'Goro Crater 43.4,41.6
//OUTLAND
	step
		talk Aaron Hollman##19662
		buy 1 Plans: Adamantite Cleaver##23591 |n
		use Plans: Adamantite Cleaver##23591
		learn Adamantite Cleaver##29568 |goto Shattrath City 64.0,71.6
		buy 1 Plans: Adamantite Dagger##23592 |n
		use Plans: Adamantite Dagger##23592
		learn Adamantite Dagger##29569 |goto Shattrath City 64.0,71.6
		buy 1 Plans: Adamantite Rapier##23593 |n
		use Plans: Adamantite Rapier##23593
		learn Adamantite Rapier##29571 |goto Shattrath City 64.0,71.6
		buy 1 Plans: Adamantite Maul##23590 |n
		use Plans: Adamantite Maul##23590
		learn Adamantite Maul##29566 |goto Shattrath City 64.0,71.6
		You can also purchase this Plan from Eriden here [Silvermoon City 80.6,37.0]
	step
		talk Kael'thas Sunstrider##24664
		collect 1 Plans: Adamantite Weapon Chain##35296 |n
		use Plans: Adamantite Weapon Chain##35296
		learn Adamantite Weapon Chain##42688 |goto Magisters' Terrace 8.6,50.6
	step
		talk Krek Cragcrush##19342
		buy 1 Plans: Adamantite Plate Bracers##23594 |n
		use Plans: Adamantite Plate Bracers##23594
		learn Adamantite Plate Bracers##29603 |goto Shadowmoon Valley 29.2,31.0
		buy 1 Plans: Adamantite Plate Gloves##23595 |n
		use Plans: Adamantite Plate Gloves##23595
		learn Adamantite Plate Gloves##29605 |goto Shadowmoon Valley 29.2,31.0
	step
		talk Rohok##16583
		buy 1 Plans: Lesser Ward of Shielding##23638 |n
		use Plans: Lesser Ward of Shielding##23638
		learn Lesser Ward of Shielding##29728 |goto Hellfire Peninsula 53.2,38.2
	step
		talk Krek Cragcrush##19342
		buy 1 Plans: Adamantite Breastplate##23596 |n
		use Plans: Adamantite Breastplate##23596
		learn Adamantite Breastplate##29606 |goto Shadowmoon Valley 29.2,31.0
	step
		talk Fedryen Swiftspear##17904
		buy 1 Plans: Adamantite Sharpening Stone##23618 |n
		use Plans: Adamantite Sharpening Stone##23618
		learn Adamantite Sharpening Stone##29656 |goto Zangarmarsh 79.2,63.8
		buy 1 Plans: Adamantite Weightstone##28632 |n
		use Plans: Adamantite Weightstone##28632
		learn Adamantite Weightstone##34608 |goto Zangarmarsh 79.2,63.8
		buy 1 Plans: Greater Rune of Warding##25526 |n
		use Plans: Greater Rune of Warding##25526
		learn Greater Rune of Warding##32285 |goto Zangarmarsh 79.2,63.8
	step
		talk Quartermaster Endarin ##19321
		|tip You must be Friendly with The Aldor to purchase this Plan.
		buy 1 Plans: Flamebane Bracers##23601 |n
		use Plans: Flamebane Bracers##23601
		learn Flamebane Bracers##29614 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Enuril##19331
		|tip You must be Friendly with The Scryers to purchase this Plan.
		buy 1 Plans: Enchanted Adamantite Belt##23597 |n
		use Plans: Enchanted Adamantite Belt##23597
		learn Enchanted Adamantite Belt##29608 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Enuril##19331
		|tip You must be Exalted with The Scryers to purchase this Plan.
		buy 1 Plans: Enchanted Adamantite Boots##23598 |n
		use Plans: Enchanted Adamantite Boots##23598
		learn Enchanted Adamantite Boots##29611 |goto Shattrath City 60.6,64.2
		buy 1 Plans: Enchanted Adamantite Leggings##23600 |n
		use Plans: Enchanted Adamantite Leggings##23600
		learn Enchanted Adamantite Leggings##29613 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Endarin##19321
		|tip You must be Exalted with The Aldor to purchase this Plan.
		buy 1 Plans: Flamebane Helm##23602 |n
		use Plans: Flamebane Helm##23602
		learn Flamebane Helm##29615 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Endarin##19321
		|tip You must be Revered with The Aldor to purchase this Plan.
		buy 1 Plans: Flamebane Breastplate##23604 |n
		use Plans: Flamebane Breastplate##23604
		learn Flamebane Breastplate##29617 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Enuril##19331
		|tip You must be Revered with The Scryers to purchase this Plan.
		buy 1 Plans: Enchanted Adamantite Breastplate##23599 |n
		use Plans: Enchanted Adamantite Breastplate##23599
		learn Enchanted Adamantite Breastplate##29610 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Endarin##19321
		|tip You must be Honored with The Aldor to purchase this Plan.
		buy 1 Plans: Flamebane Gloves##23603 |n
		use Plans: Flamebane Gloves##23603
		learn Flamebane Gloves##29616 |goto Shattrath City 48.0,26.6
	step
		kill Auchenai Monk##18497
		collect 1 Plans: Felsteel Gloves##23605 |n
		use Plans: Felsteel Gloves##23605
		learn Felsteel Gloves##29619 |goto Auchenai Crypts/2 44.8,19.4
	step
		kill Unchained Doombringer##20900
		collect 1 Plans: Felsteel Leggings##23606 |n
		use Plans: Felsteel Leggings##23606
		learn Felsteel Leggings##29620 |goto The Arcatraz/3 52.4,30.8
	step
		kill Murkblood Raider##18203
		collect 1 Plans: Khorium Belt##23608 |n
		use Plans: Khorium Belt##23608
		learn Khorium Belt##29628 |goto Nagrand 33.2,44.4
	step
		kill Deathforge Guardian##20878
		collect 1 Plans: Khorium Pants##23609 |n
		use Plans: Khorium Pants##23609
		learn Khorium Pants##29629 |goto Shadowmoon Valley 39.8,38.6
	step
		talk Quartermaster Urgronn##17585
		buy 1 Plans: Felsteel Shield Spike##24002 |n
		use Plans: Felsteel Shield Spike##24002
		learn Felsteel Shield Spike##29657 |goto Hellfire Peninsula 54.8,37.8
	step
		kill Disembodied Protector##18873
		collect 1 Plans: Khorium Boots##23610 |n
		use Plans: Khorium Boots##23610
		learn Khorium Boots##29630 |goto Netherstorm 34.0,52.8
	step
		kill Boulderfist Warrior##17136
		collect 1 Plans: Ragesteel Gloves##23611 |n
		use Plans: Ragesteel Gloves##23611
		learn Ragesteel Gloves##29642 |goto Nagrand 51.4,57.4
		You can find more Ogres here [40.8,31.4]
	step
		kill Enraged Earth Spirit##21050+, Enraged Fire Spirit##21061+
		collect 1 Plans: Ragesteel Shoulders##33174 |n
		use Plans: Ragesteel Shoulders##33174
		learn Ragesteel Shoulders##42662 |goto Shadowmoon Valley 49.0,48.0
	step
		kill High Botanist Freywinn##17975
		collect 1 Plans: Earthpeace Breastplate##23617 |n
		use Plans: Earthpeace Breastplate##23617
		learn Earthpeace Breastplate##29649 |goto The Botanica 25.8,24.8
	step
		kill Ashtongue Warrior##21454+, Crazed Murkblood Foreman##23305+, Crazed Murkblood Miner##23324+
		collect 1 Plans: Ragesteel Breastplate##23613 |n
		use Plans: Ragesteel Breastplate##23613
		learn Ragesteel Breastplate##29645 |goto Shadowmoon Valley 73.4,88.2
	step
		kill Nexus Stalker##18314+
		collect 1 Plans: Swiftsteel Gloves##23615 |n
		use Plans: Swiftsteel Gloves##23615
		learn Swiftsteel Gloves##29648 |goto Mana-Tombs 54.4,87.2
	step
		kill Sunfury Bloodwarder##18853
		collect 1 Plans: Greater Ward of Shielding##23639 |n
		use Plans: Greater Ward of Shielding##23639
		learn Greater Ward of Shielding##29729 |goto Netherstorm 26.8,68.2
	step
		talk Koren##16388
		buy 1 Plans: Iceguard Breastplate##31393 |n
		use Plans: Iceguard Breastplate##31393
		learn ceguard Breastplate##38477 |goto Karazhan 43.0,75.2
		buy 1 Plans: Iceguard Helm##31395 |n
		use Plans: Iceguard Helm##31395
		learn Iceguard Helm##38479 |goto Karazhan 43.0,75.2
		buy 1 Plans: Iceguard Leggings##31394 |n
		use Plans: Iceguard Leggings##31394
		learn Iceguard Leggings##38478 |goto Karazhan 43.0,75.2
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Plan.
		buy 1 Plans: Shadesteel Bracers##32442 |n
		use Plans: Shadesteel Bracers##32442
		learn Shadesteel Bracers##40034 |goto Black Temple 61.6,51.0
		buy 1 Plans: Shadesteel Girdle##32444 |n
		use Plans: Shadesteel Girdle##32444
		learn Shadesteel Girdle##40036 |goto Black Temple 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Plan.
		buy 1 Plans: Shadesteel Greaves##32443 |n
		use Plans: Shadesteel Greaves##32443
		learn Shadesteel Greaves##40035 |goto Black Temple 61.6,51.0
		buy 1 Plans: Shadesteel Sabots##32441 |n
		use Plans: Shadesteel Sabots##32441
		learn Shadesteel Sabots##40033 |goto Black Temple 61.6,51.0
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Exalted with Cenarion Expedition to purchase this Plan.
		buy 1 Plans: Wildguard Breastplate##31390 |n
		use Plans: Wildguard Breastplate##31390
		learn Wildguard Breastplate##38473 |goto Zangarmarsh 79.2,63.8
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Revered with Cenarion Expedition to purchase this Plan.
		buy 1 Plans: Wildguard Helm##31392 |n
		use Plans: Wildguard Helm##31392
		learn Wildguard Helm##38476 |goto Zangarmarsh 79.2,63.8
		buy 1 Plans: Wildguard Leggings##31391 |n
		use Plans: Wildguard Leggings##31391
		learn Wildguard Leggings##38475 |goto Zangarmarsh 79.2,63.8
//NORTHREND
	step
		kill Onslaught Mason##27333
		collect 1 Plans: Reinforced Cobalt Shoulders##41124 |n
		use Plans: Reinforced Cobalt Shoulders##41124
		learn Reinforced Cobalt Shoulders##54978 |goto Dragonblight 86.0,35.8
	step
		kill Iron Rune-Shaper##26270
		collect 1 Plans: Reinforced Cobalt Helm##41123 |n
		use Plans: Reinforced Cobalt Helm##41123
		learn Reinforced Cobalt Helm##54979 |goto Grizzly Hills 68.4,16.0
	step
		kill Gundrak Savage##29235
		collect 1 Plans: Reinforced Cobalt Legplates##41120 |n
		use Plans: Reinforced Cobalt Legplates##41120
		learn Reinforced Cobalt Legplates##54980 |goto Zul'Drak 75.8,33.6
	step
		kill Venture Co. Excavator##28123
		collect 1 Plans: Reinforced Cobalt Chestpiece##41122 |n
		use Plans: Reinforced Cobalt Chestpiece##41122
		learn Reinforced Cobalt Chestpiece##54981 |goto Sholazar Basin 35.6,48.6
	step
		talk Gara Skullcrush##32565
		|tip You must be Exalted with the Warsong Offensive to purchase this Plan.
		buy 1 Plans: Titanium Plating##44938 |n
		use Plans: Titanium Plating##44938
		learn Titanium Plating##62202 |goto Borean Tundra 41.4,53.6
		You can also purchase this from Sebastian Crane here [Howling Fjord 79.0,30.0]
		|tip You must be Exalted with The Hand of Vengeance to purchase this Plan.
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Plan.
		buy 1 Plans: Legplates of Painful Death##49971 |n
		use Plans: Legplates of Painful Death##49971
		learn Legplates of Painful Death##70565 |goto Icecrown Citadel/1 36.8,20.6
		buy 1 Plans: Pillars of Might##49973 |n
		use Plans: Pillars of Might##49973
		learn Pillars of Might##70567 |goto Icecrown Citadel/1 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Plan.
		buy 1 Plans: Protectors of Life##49970 |n
		use Plans: Protectors of Life##49970
		learn Protectors of Life##70563 |goto Icecrown Citadel/1 36.8,20.6
		buy 1 Plans: Puresteel Legplates##49969 |n
		use Plans: Puresteel Legplates##49969
		learn Puresteel Legplates##70562 |goto Icecrown Citadel/1 36.8,20.6
//PANDARIA
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Contender's Revenant Belt##84158 |n
		use Plans: Contender's Revenant Belt##84158 |only if itemcount(84158) >= 1
		learn Contender's Revenant Belt##122623
		buy 1 Plans: Contender's Revenant Boots##84159 |n
		use Plans: Contender's Revenant Boots##84159 |only if itemcount(84159) >= 1
		learn Contender's Revenant Boots##122622
		buy 1 Plans: Contender's Revenant Bracers##84160 |n
		use Plans: Contender's Revenant Bracers##84160 |only if itemcount(84160) >= 1
		learn Contender's Revenant Bracers##122621
		buy 1 Plans: Contender's Revenant Breastplate##84161 |n
		use Plans: Contender's Revenant Breastplate##84161 |only if itemcount(84161) >= 1
		learn Contender's Revenant Breastplate##122618
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Contender's Revenant Gauntlets##84162 |n
		use Plans: Contender's Revenant Gauntlets##84162 |only if itemcount(84162) >= 1
		learn Contender's Revenant Gauntlets##122619
		buy 1 Plans: Contender's Revenant Helm##84163 |n
		use Plans: Contender's Revenant Helm##84163 |only if itemcount(84163) >= 1
		learn Contender's Revenant Helm##122616
		buy 1 Plans: Contender's Revenant Legplates##84164 |n
		use Plans: Contender's Revenant Legplates##84164 |only if itemcount(84164) >= 1
		learn Contender's Revenant Legplates##122620
		buy 1 Plans: Contender's Revenant Shoulders##84165 |n
		use Plans: Contender's Revenant Shoulders##84165 |only if itemcount(84165) >= 1
		learn Contender's Revenant Shoulders##122617
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Contender's Spirit Belt##84166 |n
		use Plans: Contender's Spirit Belt##84166 |only if itemcount(84166) >= 1
		learn Contender's Spirit Belt##122631
		buy 1 Plans: Contender's Spirit Boots##84167 |n
		use Plans: Contender's Spirit Boots##84167 |only if itemcount(84167) >= 1
		learn Contender's Spirit Boots##122630
		buy 1 Plans: Contender's Spirit Bracers##84168 |n
		use Plans: Contender's Spirit Bracers##84168 |only if itemcount(84168) >= 1
		learn Contender's Spirit Bracers##122629
		buy 1 Plans: Contender's Spirit Breastplate##84169 |n
		use Plans: Contender's Spirit Breastplate##84169 |only if itemcount(84169) >= 1
		learn Contender's Spirit Breastplate##122626
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Contender's Spirit Gauntlets##84170 |n
		use Plans: Contender's Spirit Gauntlets##84170 |only if itemcount(84170) >= 1
		learn Contender's Spirit Gauntlets##122627
		buy 1 Plans: Contender's Spirit Helm##84171 |n
		use Plans: Contender's Spirit Helm##84171 |only if itemcount(84171) >= 1
		learn Contender's Spirit Helm##122624
		buy 1 Plans: Contender's Spirit Legplates##84172 |n
		use Plans: Contender's Spirit Legplates##84172 |only if itemcount(84172) >= 1
		learn Contender's Spirit Legplates##122628
		buy 1 Plans: Contender's Spirit Shoulders##84173 |n
		use Plans: Contender's Spirit Shoulders##84173 |only if itemcount(84173) >= 1
		learn Contender's Spirit Shoulders##122625
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Masterwork Spiritguard Belt##84219 |n
		use Plans: Masterwork Spiritguard Belt##84219 |only if itemcount(84219) >= 1
		learn Masterwork Spiritguard Belt##122599
		buy 1 Plans: Masterwork Spiritguard Boots##84220 |n
		use Plans: Masterwork Spiritguard Boots##84220 |only if itemcount(84220) >= 1
		learn Masterwork Spiritguard Boots##122598
		buy 1 Plans: Masterwork Spiritguard Bracers##84221 |n
		use Plans: Masterwork Spiritguard Bracers##84221 |only if itemcount(84221) >= 1
		learn Masterwork Spiritguard Bracers##122597
		buy 1 Plans: Masterwork Spiritguard Breastplate##84222 |n
		use Plans: Masterwork Spiritguard Breastplate##84222 |only if itemcount(84222) >= 1
		learn Masterwork Spiritguard Breastplate##122594
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Masterwork Spiritguard Gauntlets##84223 |n
		use Plans: Masterwork Spiritguard Gauntlets##84223 |only if itemcount(84223) >= 1
		learn Masterwork Spiritguard Gauntlets##122595
		buy 1 Plans: Masterwork Spiritguard Helm##84224 |n
		use Plans: Masterwork Spiritguard Helm##84224 |only if itemcount(84224) >= 1
		learn Masterwork Spiritguard Helm##122592
		buy 1 Plans: Masterwork Spiritguard Legplates##84225 |n
		use Plans: Masterwork Spiritguard Legplates##84225 |only if itemcount(84225) >= 1
		learn Masterwork Spiritguard Legplates##122596
		buy 1 Plans: Masterwork Spiritguard Shoulders##84227 |n
		use Plans: Masterwork Spiritguard Shoulders##84227 |only if itemcount(84227) >= 1
		learn Masterwork Spiritguard Shoulders##122593
	step
		talk Jorunga Stonehoof##64058 |goto Shrine of Two Moons 59.0,14.6
		buy 1 Plans: Masterwork Forgewire Axe##84197 |n
		use Plans: Masterwork Forgewire Axe##84197 |only if itemcount(84197) >= 1
		learn Masterwork Forgewire Axe##122644
		buy 1 Plans: Masterwork Spiritblade Decimator##84218 |n
		use Plans: Masterwork Spiritblade Decimator##84218 |only if itemcount(84218) >= 1
		learn Masterwork Spiritblade Decimator##122647
		buy 1 Plans: Masterwork Spiritguard Shield##84226 |n
		use Plans: Masterwork Spiritguard Shield##84226 |only if itemcount(84226) >= 1
		learn Masterwork Spiritguard Shield##122643
	step
		talk Ambersmith Zikk##64599 |goto Dread Wastes 55.0,35.6
		buy 1 Plans: Ghost Iron Shield Spike##90531 |n
		|tip You must be Honored with The Klaxxi to purchase this Plan.
		use Plans: Ghost Iron Shield Spike##90531 |only if itemcount(90531) >= 1
		learn Ghost Iron Shield Spike##131928
		buy 1 Plans: Masterwork Ghost Shard##84198 |n
		|tip You must be Honored with The Klaxxi to purchase this Plan.
		use Plans: Masterwork Ghost Shard##84198 |only if itemcount(84198) >= 1
		learn Masterwork Ghost Shard##122648
		buy 1 Plans: Masterwork Ghost-Forged Blade##84200 |n
		use Plans: Masterwork Ghost-Forged Blade##84200 |only if itemcount(84200) >= 1
		learn Masterwork Ghost-Forged Blade##122645
		buy 1 Plans: Masterwork Lightsteel Shield##84208 |n
		use Plans: Masterwork Lightsteel Shield##84208 |only if itemcount(84208) >= 1
		learn Masterwork Lightsteel Shield##122642
	step
		talk Ambersmith Zikk##64599 |goto Dread Wastes 55.0,35.6
		buy 1 Plans: Masterwork Phantasmal Hammer##84217 |n
		use Plans: Masterwork Phantasmal Hammer##84217 |only if itemcount(84217) >= 1
		learn Masterwork Phantasmal Hammer##122646
		buy 1 Plans: Breastplate of Ancient Steel##83791 |n
		use Plans: Breastplate of Ancient Steel##83791 |only if itemcount(83791) >= 1
		learn Breastplate of Ancient Steel##122653
		buy 1 Plans: Gauntlets of Ancient Steel##83792 |n
		use Plans: Gauntlets of Ancient Steel##83792 |only if itemcount(83792) >= 1
		learn Gauntlets of Ancient Steel##122654
		buy 1 Plans: Ghost Reaver's Breastplate##83787 |n
		use Plans: Ghost Reaver's Breastplate##83787 |only if itemcount(83787) >= 1
		learn Ghost Reaver's Breastplate##122649
	step
		talk Ambersmith Zikk##64599 |goto Dread Wastes 55.0,35.6
		buy 1 Plans: Ghost Reaver's Gauntlets##83788 |n
		use Plans: Ghost Reaver's Gauntlets##83788 |only if itemcount(83788) >= 1
		learn Ghost Reaver's Gauntlets##122650
		buy 1 Plans: Living Steel Breastplate##83789 |n
		use Plans: Living Steel Breastplate##83789 |only if itemcount(83789) >= 1
		learn Living Steel Breastplate##122651
		buy 1 Plans: Living Steel Gauntlets##83790 |n
		use Plans: Living Steel Gauntlets##83790 |only if itemcount(83790) >= 1
		learn Living Steel Gauntlets##122652
		buy 1 Plans: Living Steel Belt Buckle##84196 |n
		use Plans: Living Steel Belt Buckle##84196 |only if itemcount(84196) >= 1
		learn Living Steel Belt Buckle##122632
//RAIDS/DUNGEONS
	step
		This is a Random Raid Drop from creatures level 59-63
		|tip This will drop in Blackwing Lair, Temple of Ahn'Qiraj or Molten Core.
		collect 1 Plans: Helm of the Great Chief##12716 |n
		learn Helm of the Great Chief##16728
	step
		This Plan drops from the Bosses of Molten Core
		collect 1 Plans: Elemental Sharpening Stone##18264 |n
		learn Elemental Sharpening Stone##22757
	step
		These are random raid drops from Mogu'shan Vaults, Terrace of Endless Spring and Heart of Fear
		|tip These are MoP Raids.
		collect 1 Plans: Bloodforged Warfists##87411 |n
		learn Bloodforged Warfists##126853
	step
		These are random raid drops from Mogu'shan Vaults, Terrace of Endless Spring and Heart of Fear
		|tip These are MoP Raids.
		collect 1 Plans: Chestplate of Limitless Faith##87412 |n
		learn Chestplate of Limitless Faith##126854
	step
		These are random raid drops from Mogu'shan Vaults, Terrace of Endless Spring and Heart of Fear
		|tip These are MoP Raids.
		collect 1 Plans: Gauntlets of Battle Command##87409 |n
		learn Gauntlets of Battle Command##126851
	step
		These are random raid drops from Mogu'shan Vaults, Terrace of Endless Spring and Heart of Fear
		|tip These are MoP Raids.
		collect 1 Plans: Gauntlets of Unbound Devotion##87413 |n
		learn Gauntlets of Unbound Devotion##126855
	step
		These are random raid drops from Mogu'shan Vaults, Terrace of Endless Spring and Heart of Fear
		|tip These are MoP Raids.
		collect 1 Plans: Ornate Battleplate of the Master##87410 |n
		learn Ornate Battleplate of the Master##126852
	step
		These are random raid drops from Mogu'shan Vaults, Terrace of Endless Spring and Heart of Fear
		|tip These are MoP Raids.
		collect 1 Plans: Unyielding Bloodplate##87408 |n
		learn Unyielding Bloodplate##126850
	step
		This is a random world drop but only in the Firelands area
		collect 1 Plans: Emberforged Elementium Boots##69970 |n
		learn Emberforged Elementium Boots##99454
	step
		This is a random world drop but only in the Firelands area
		collect 1 Plans: Eternal Elementium Handguards##69958 |n
		learn Eternal Elementium Handguards##99440
	step
		This is a random world drop but only in the Firelands area
		collect 1 Plans: Fists of Fury##69957 |n
		learn Fists of Fury##99439
	step
		This is a random world drop but only in the Firelands area
		collect 1 Plans: Holy Flame Gauntlets##69959 |n
		learn Holy Flame Gauntlets##99441
	step
		This is a random world drop but only in the Firelands area
		collect 1 Plans: Mirrored Boots##69969 |n
		learn Mirrored Boots##99453
	step
		This is a random world drop but only in the Firelands area
		collect 1 Plans: Warboots of Mighty Lords##69968 |n
		learn Warboots of Mighty Lords##99452
	step
		This is a random world drop but only in Dragon Soul
		collect 1 Plans: Bracers of Destructive Strength##72015 |n
		learn Bracers of Destructive Strength##101931
	step
		This is a random world drop but only in Dragon Soul
		collect 1 Plans: Foundations of Courage##72013 |n
		learn Foundations of Courage##101928
	step
		This is a random world drop but only in Dragon Soul
		collect 1 Plans: Pyrium Legplates of Purified Evil##72001 |n
		learn Pyrium Legplates of Purified Evil##101924
	step
		This is a random world drop but only in Dragon Soul
		collect 1 Plans: Soul Redeemer Bracers##72014 |n
		learn Soul Redeemer Bracers##101929
	step
		This is a random world drop but only in Dragon Soul
		collect 1 Plans: Titanguard Wristplates##72016 |n
		learn Titanguard Wristplates##101932
	step
		This is a random world drop but only in Dragon Soul
		collect 1 Plans: Unstoppable Destroyer's Legplates##72012 |n
		learn Unstoppable Destroyer's Legplates##101925
	step
		This Plan is dropped from the Boss NPC's of Trial of the Crusader
		collect 1 Plans: Breastplate of the White Knight##47640 |n
		learn Breastplate of the White Knight##67130
	step
		This Plan is dropped from the Boss NPC's of Trial of the Crusader
		collect 1 Plans: Saronite Swordbreakers##47641 |n
		learn Saronite Swordbreakers##67131
	step
		This Plan is dropped from the Boss NPC's of Trial of the Crusader
		collect 1 Plans: Sunforged Bracers##47627 |n
		learn Sunforged Bracers##67135
	step
		This Plan is dropped from the Boss NPC's of Trial of the Crusader
		collect 1 Plans: Sunforged Breastplate##47643 |n
		learn Sunforged Breastplate##67134
	step
		This Plan is dropped from the Boss NPC's of Trial of the Crusader
		collect 1 Plans: Titanium Razorplate##67644 |n
		learn Titanium Razorplate##67132
	step
		This Plan is dropped from the Boss NPC's of Trial of the Crusader
		collect 1 Plans: Titanium Spikeguards##47645 |n
		learn Titanium Spikeguards##67133
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Plans: Battlelord's Plate Boots##45089 |n
		learn Battlelord's Plate Boots##63188
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Plans: Belt of the Titans##45088 |n
		learn Belt of the Titans##63187
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Plans: Indestructible Plate Girdle##45092 |n
		learn Indestructible Plate Girdle##63191
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Plans: Plate Girdle of Righteousness##45090 |n
		learn Plate Girdle of Righteousness##63189
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Plans: Spiked Deathdealers##45093 |n
		learn Spiked Deathdealers##63192
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Plans: Treads of Destiny##45091 |n
		learn Treads of Destiny##63190
	step
		This Plan drops from NPC's in the Sunwell Plateau
		collect 1 Plans: Hard Khorium Battlefists##35209 |n
		learn Hard Khorium Battlefists##46141
	step
		This Plan drops from NPC's in the Sunwell Plateau
		collect 1 Plans: Hard Khorium Battleplate##35211 |n
		learn Hard Khorium Battleplate##46144
	step
		This Plan drops from NPC's in the Sunwell Plateau
		collect 1 Plans: Sunblessed Breastplate##35210 |n
		learn Sunblessed Breastplate##46142
	step
		This Plan drops from NPC's in the Sunwell Plateau
		collect 1 Plans: Sunblessed Gauntlets |n
		learn Sunblessed Gauntlets##46140
	step
		This Plan is dropped from NPC's in Serpentshrine Cavern
		collect 1 Plans: Belt of the Guardian##30321 |n
		learn Belt of the Guardian##36389
	step
		This Plan is dropped from NPC's in Serpentshrine Cavern
		collect 1 Plans: Boots of the Protector##30323 |n
		learn Boots of the Protector##36391
	step
		This Plan is dropped from NPC's in Black Temple
		collect 1 Plans: Dawnsteel Bracers##32738 |n
		learn Dawnsteel Bracers##41134
	step
		This Plan is dropped from NPC's in Hyjal Summit
		collect 1 Plans: Dawnsteel Shoulders##32739 |n
		learn Dawnsteel Shoulders##41135
	step
		This Plan is dropped from NPC's in Hyjal Summit
		collect 1 Plans: Swiftsteel Bracers##32736 |n
		learn Swiftsteel Bracers##41132
	step
		This Plan is dropped from NPC's in Hyjal Summit
		collect 1 Plans: Swiftsteel Shoulders##32737 |n
		learn Swiftsteel Shoulders##41133
	step
		This Plan is dropped from NPC's in Serpentshrine Cavern
		collect 1 Plans: Red Belt of Battle##30322 |n
		learn Red Belt of Battle##36390
	step
		This Plan is dropped from NPC's in Serpentshrine Cavern
		collect 1 Plans: Red Havoc Boots##30324 |n
		learn Red Havoc Boots##36392
]])


ZygorGuidesViewer:RegisterInclude("Blacksmithing_600-700",[[
// ----------
// 600-700
// ---------- #include "H_Garrison_SmallBuilding",action="talk Yukla Greenshadow##79821",building="Blacksmithing"
// TRAIN: Draenor Master Blacksmithing
	step
		Before you continue, open your Blacksmithing window to detect your profession |cast Blacksmithing##2018
		skillmax Blacksmithing,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _The Forge_ to a _Small Plot_
		Build your Forge |havebuilding Blacksmithing
	step
		#include "H_Garrison_SmallBuilding",action="Orgek Ironhand##79867",building="Engineering"
		buy 1 Draenor Blacksmithing##115356 |condition skillmax("Blacksmithing")>=700 or itemcount(115356) >= 1
	step
		use Draenor Blacksmithing##115356
		skillmax Blacksmithing,700
	step
		map Frostfire Ridge
		path follow loose; loop on; ants curved
		path	43.0,58.3	40.8,60.5	38.4,59.3
		path	36.0,57.0	34.3,54.6	31.6,54.8
		path	28.5,49.5	27.9,44.6	24.5,39.7
		path	23.9,34.1	27.9,30.9	31.9,27.0
		path	32.6,25.7	33.5,20.5	36.3,21.0
		path	37.8,26.5	41.0,28.9	42.1,30.6
		path	43.0,31.0	44.7,31.2	49.7,35.4
		path	52.4,38.3	54.3,39.5	48.5,50.1
		path	47.6,54.9	46.2,58.3	43.3,57.9
		collect 390 True Iron Ore##109119 |condition skill("Blacksmithing")>=700
		collect 700 Blackrock Ore##109118 |condition skill("Blacksmithing")>=700
		|tip You can also buy these materials from the Auction House.
	step
		#include "H_Garrison_SmallBuilding",action="talk Orgek Ironhand##79867",building="Blacksmithing"
		accept Your First Blacksmithing Work Order##37569 |condition skill("Blacksmithing")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Kinja##79817",building="Blacksmithing"
		Tell her _I would like to place a work order_ 
		Start your first work order |q  Your First Blacksmithing Work Order##37569/1
	step
		#include "H_Garrison_SmallBuilding",action="click Blacksmithing Work Order##112971",building="Blacksmithing"
		Gather the work order shipment |q Your First Blacksmithing Work Order##37569/2
	step
		#include "H_Garrison_SmallBuilding",action="talk Kinja##79817",building="Blacksmithing"
		turnin Your First Blacksmithing Work Order##37569 
	step
		create 1 Secrets of Draenor Blacksmithing##176090,Blacksmithing,1 total |n
		collect 1 Secrets of Draenor Blacksmithing##118720,Blacksmithing |condition skill("Blacksmithing")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Orgek Ironhand##79867 ",building="Blacksmithing"
		buy 1 Recipe: Truesteel Grinder##116734 |condition _G.IsSpellKnown(171699) or itemcount(116734) >= 1 or skill("Blacksmithing")>=700
	step
		use Recipe: Truesteel Grinder##116734
		learn Truesteel Grinder##171699 |condition skill("Blacksmithing")>=700
	step
		create Truesteel Grinder##171699,Blacksmithing,700
	step
		Congratulations, you have reached level 700 in Blacksmithing!
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Cooking
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("H_Org_Cooking_Dailies",[[
	step
	label "start"
		talk Marogg##42506
		You will only be able to complete 1 of the following quests per day
		accept Careful, This Fruit Bites Back##26227 |or |goto Orgrimmar 56.5,62.5
		accept Crawfish Creole##26226 |or |goto Orgrimmar 56.5,62.5
		accept Even Thieves Get Hungry##26235 |or |goto Orgrimmar 56.5,62.5
		accept Everything Is Better with Bacon##26220 |or |goto Orgrimmar 56.5,62.5
		accept Stealing From Our Own##26234 |or |goto Orgrimmar 56.5,62.5 |only Troll
		accept Stealing From Our Own##26233 |or |goto Orgrimmar 56.5,62.5 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren
	step
		click Prickly Pear Fruit##3451+
		|tip They look like smaller cactus plants with red round fruit on top of them all around Orgrimmar. They are usually found next to walls.
		collect 8 Prickly Pear Fruit##57766 |q 26227/1 |goto Orgrimmar 52.7,62.1
	stickystart "hordeinfant"
	step
		clicknpc Muddy Crawfish##42548+
		|tip They look like tiny lobsters in the water around this area.
		collect 10 Muddy Crawfish##57765 |q 26226/1 |goto 65.3,43.5
	step "hordeinfant"
		Get near the piles of wooden crates
		|tip They are all around Orgrimmar, so you can walk around and find them everywhere.
		kill Orgrimmar Thief##42594+
		|tip They are stealthed next to the crates, trying to steal them. They won't be next to every pile of crates, so you'll need to search for them.
		collect 3 Horde Infantry Rations##57879 |q 26235/1 |goto 66.2,39.4
	step
		kill Mature Swine##42504+, Wild Mature Swine##42859+
		collect 6 Swine Belly##57758 |q 26220/1 |goto Durotar,48.7,16.0
	step
		click Barrels of Kezan Rice##9664+
		|tip They look like light brown wooden barrels around this area.
		collect 6 Barrel of Kezan Rice##57878 |q 26234/1 |goto Orgrimmar,40.3,80.0
		only Troll
	step
		click Barrels of Darkspear Rice##6037+
		|tip They looks like dark brown wooden barrels around this area.
		collect 6 Barrel of Darkspear Rice##57877 |q 26233/1 |goto 34.5,69.8
		only Orc,Scourge,Tauren,BloodElf,Goblin
	step
		talk Marogg##42506
		|tip You will only be able to complete 1 of the following quests per day.
		turnin Careful, This Fruit Bites Back##26227 |goto 56.5,62.5
		turnin Crawfish Creole##26226 |goto 56.5,62.5
		turnin Even Thieves Get Hungry##26235 |goto 56.5,62.5
		turnin Everything Is Better with Bacon##26220 |goto 56.5,62.5
		turnin Stealing From Our Own##26234 |goto 56.5,62.5 |only Troll
		turnin Stealing From Our Own##26233 |goto 56.5,62.5 |only Orc,Scourge,Tauren,BloodElf,Goblin,Pandaren
]])

ZygorGuidesViewer:RegisterInclude("H_TB_Cooking_Dailies",[[
	step
	label "dailies"
		talk Aska Mistrunner##3026
		accept Pining for Nuts##29358 |or |goto Thunder Bluff 51.0,52.8
		accept "Magic" Mushrooms##29362 |or |goto Thunder Bluff 51.0,52.8
		accept Mulgore Spice Bread##29363 |or |goto Thunder Bluff 51.0,52.8
		accept Corn Mash##29364 |or |goto Thunder Bluff 51.0,52.8
		accept Perfectly Pickled Portions##29365 |or |goto Thunder Bluff 51.0,52.8
	step
		click Mulgore Pine Cone##424+
		|tip They look like sparkling pine cones on the ground, next to the base of moss trees in Thunder Bluff.
		Create a Cooking Fire |cast Cooking Fire##818
		use Mulgore Pine Cones##69990
		|tip Cook the Mulgore Pine Cones over a cooking fire to release Pine Nuts.
		collect 30 Pine Nut##69988##69988 |q 29358/1 |goto 48.4,62.2
		only if havequest(29358)
	step
		click "Magic" Mushroom##10632+
		|tip They look like white glowing mushrooms along the walls
		collect 6 "Magic" Mushroom##69994 |q 29362/1 |goto 26.3,23.6
		only if havequest(29362)
	step
		talk Naal Mistrunner##3027
		buy 5 Simple Flour##30817 |q 29363 |goto Thunder Bluff 51.1,52.7
		buy 5 Mild Spices##2678 |q 29363 |goto Thunder Bluff 51.1,52.7
		only if havequest(29363)
	step
		create Spice Bread##37836,Cooking,5 total
		collect 5 Spice Bread##30816 |q 29363/1
		only if havequest(29363)
	step
		use Mulgore Spices##69997
		|tip Use the Mulgore Spices in your bags to make Fresh Mulgore Spice Bread.
		collect 5 Fresh Mulgore Spice Bread##69996 |q 29363/1
		only if havequest(29363)
	step
		Click the bowls of Corn Kernels
		|tip They look like little bowls of yellow corn in almost all the huts in Thunderbluff.
		Grind #6# Bowls of Corn Kernels |q 29364/1 |goto Thunder Bluff 52.1,45.6
		only if havequest(29364)
	step
		collect Succulent Sweet Potatoes##70000 |q 29365/1 |goto 47.7,42.3
		|tip They look like baskets in this little hut
		only if havequest(29365)
	step
		collect Savory Spices##70001 |q 29365/2 |goto 49.7,41.5
		|tip It looks like a bag with weeds in it
		only if havequest(29365)
	step
		collect Fresh-Caught Fish##70002 |q 29365/3 |goto Thunder Bluff 56.0,44.9
		|tip It looks like a rope hanging down with a bunch of fish on it
		collect Fresh-Hunted Fowl##70003 |q 29365/4 |goto Thunder Bluff 50.9,47.6
		only if havequest(29365)
	step
		talk Aska Mistrunner##3026
		turnin Pining for Nuts##29358 |or |goto Thunder Bluff 51.0,52.8
		turnin "Magic" Mushrooms##29362 |or |goto Thunder Bluff 51.0,52.8
		turnin Mulgore Spice Bread##29363 |or |goto Thunder Bluff 51.0,52.8
		turnin Corn Mash##29364 |or |goto Thunder Bluff 51.0,52.8
		turnin Perfectly Pickled Portions##29365 |or |goto Thunder Bluff 51.0,52.8
		Click here to go back to the beginning of the dailies |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterInclude("H_UC_Cooking_Dailies",[[
	step
		talk Eunice Burch##4552
		accept Roach Coach##29334 |or |goto Undercity 62.1,44.9
		accept Escargot A Go-Go##29333 |or |goto Undercity 62.1,44.9
		accept Would You Like Some Flies With That?##29360 |or |goto Undercity 62.1,44.9
		accept Lily, Oh Lily##29332 |or |goto Undercity 62.1,44.9
		accept Fungus Among Us##29315 |or |goto Undercity 62.1,44.9
	step
		click Cockrach Cabin##336+
		|tip Look in corners and behind crates. They are hidden all around Undercity.
		collect 20 Plump Cockroach##69919 |q 29334/1
	step
		click Fly Covered "Meat"##2951+
		|tip You will find the fly meat around the wagons in this area.
		collect 25 Bloated Fly##69989 |q 29360/1 |goto Undercity 68.7,53.7
		You can find more here[goto Undercity 57.0,17.2]
	step
		clicknpc Brightwater Snail##53526+
		|tip They are underneath the water in this lake.
		collect 8 Brightwater Snail##69918 |q 29333/1 |goto Tirisfal Glades 70.5,39.6
	step
		click Sewer Cap##10615
		collect 12 Sewer Cap##208816 |q Fungus Among Us##29315/1 |goto Undercity 36.1,30.2
	step
		click Stillwater Lily##8565
		collect 10 Stillwater Lily##69917 |q Lily, Oh Lily##29332/1 |goto Undercity 51,55.3
	step
		talk Chef Audrey##53528
		turnin Roach Coach##29334 |goto Undercity 62.6,35.5
	step
		talk Eunice Burch##4552
		turnin Escargot A Go-Go##29333 |goto Undercity 62.1,44.9
		turnin Would You Like Some Flies With That?##29360 |goto Undercity 62.1,44.9
		turnin Fungus Among Us##29315 |goto Undercity 62.1,44.9
		turnin Lily, Oh Lily##29332 |goto Undercity 62.1,44.9
]])

ZygorGuidesViewer:RegisterInclude("H_Shattrath_Cooking_Dailies",[[
	step
		talk The Rokk##24393
		You will only be able to accept one of these daily quests per day
		accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6 |next "soup"
		accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6 |next "stew"
		accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6 |next "mana"
		accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6 |next "tasty"
	step
	label "soup"
		talk Uriku##20096
		buy Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand 56.2,73.3
	step
		kill Clefthoof##18205+, Clefthoof Calf##19183+
		collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 58.5,46.8
		You can find more Clefthooves at  45.5,72.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		use Cooking Pot##33851
		|tip Use your Cooking Pot to Cook up some Spiritual Soup.
		Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.4
		next "turnin"
	step
	label "stew"
		talk Xerintha Ravenoak##20916
		buy Recipe: Mok'Nathal Shortribs##31675 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##31672 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
		buy Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31674
		learn Crunchy Serpent##31673 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		collect 4 Raptor Ribs##31670 |q 11379 |goto Blade's Edge Mountains 49.6,46.2
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
		use Cooking Pot##33852
		|tip Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise.
		collect Demon Broiled Surprise##33848 |q 11379/1 |goto 29.0,84.5
		next "turnin"
	step
	label "mana"
		click Mana Berry Bush##28+
		collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm 45.6,54.2
		next "turnin"
	step
	label "tasty"
		talk Innkeeper Grika##18957
		buy Recipe: Warp Burger##27692 |n
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 48.8,45.0
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
		use Cooking Pot##33837
		|tip Use your Cooking Pot to Cook up some Kaliri Stew.
		create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
		next "turnin"
	step
	label "turnin"
		talk The Rokk##24393
		turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
		turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
		turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
		turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
]])

ZygorGuidesViewer:RegisterInclude("H_The_Northrend_Gourmet",[[
	step
	title +Wrath of the Lich King Recipes
		#include trainCooking
		learn Dalaran Clam Chowder##58065
		learn Grilled Sculpin##45563
		learn Mammoth Meal##45549
		learn Pickled Fangtooth##45566
		learn Poached Nettlefish##45565
		learn Rhino Dogs##45553
		learn Roasted Worg##45552
	step
		#include trainCooking
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
		talk Orn Tenderhoof##26972
		accept Northern Cooking##13090 |goto Borean Tundra 42,54.2
	step
		kill Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
		collect 4 Chilled Meat##43013 |q 13090/1 |goto 45,47.4
	step
		talk Orn Tenderhoof##26972
		turnin Northern Cooking##13090 |goto 42,54.2
		learn Northern Stew##57421
	//Emotions food
	step
		kill Crypt Crawler##25227
		|tip You can also farm any Northrend Dungeon for a higher drop percentage.
		collect 1 Recipe: Bad Clams##43509 |goto 54.6,70.0
		collect 1 Recipe: Last Week's Mammoth##43508 |goto 54.6,70.0
		collect 1 Recipe: Haunted Herring##43510 |goto 54.6,70.0
		collect 1 Recipe: Tasty Cupcake##43507 |goto 54.6,70.0
	step
		use Recipe: Bad Clams##43509
		learn Bad Clams##58523
		use Recipe: Haunted Herring##43510
		learn Haunted Herring##58525
		use Recipe: Last Week's Mammoth##43508
		learn Last Week's Mammoth##58521
		use Recipe: Tasty Cupcake##43507
		learn Tasty Cupcake##58512
	step
		talk Grimbooze Thunderbrew##29157
		accept Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.8,60.1
	step
		click Sturdy Vine##8129
		Click the fruit that falls to the ground or talk to the dwarf that falls
		collect 1 Orange##38656 |q 12634/1 |goto 37.6,61.8
		collect 2 Banana Bunch##38653 |q 12634/2 |goto 37.6,61.8
		collect 1 Papaya##38655 |q 12634/3 |goto 37.6,61.8
	step
		talk Grimbooze Thunderbrew##29157
		turnin Some Make Lemonade, Some Make Liquor##12634 |goto 26.8,60.1
		accept Still At It##12644 |goto 26.8,60.1
	step
		talk "Tipsy" McManus##28566
		Tell him you are ready to start the distillation process
		Click the items on the ground or on the machine that he yells at you during the process, it's random
		Click the barrel on the ground when the process is done
		collect Thunderbrew's Jungle Punch##38688 |q 12644/1 |goto 26.7,60
	step
		talk Grimbooze Thunderbrew##29157
		turnin Still At It##12644 |goto 26.8,60.1
		accept The Taste Test##12645 |goto 26.8,60.1
	step
		use Jungle Punch Sample##38697
		|tip Use your Jungle Punch Sample on Hadrius Harlowe.
		|tip It's standing next to a tiki torch.
		Complete Hadrius' Taste Test |q 12645/2 |goto 27.4,59.4
	step
		use Jungle Punch Sample##38697
		|tip Use your Jungle Punch Sample on Hemet Nesingwary.
		|tip It's standing in front of a tent.
		Complete Hemet's Taste Test |q 12645/1 |goto 27.1,58.6
	step
		talk Grimbooze Thunderbrew##29157
		turnin The Taste Test##12645 |goto 26.8,60.1
	step
		talk Washed-Up Mage##32516
		accept Fletcher's Lost and Found##13571 |instant |goto Dalaran/2 44.2,25.6
	step
		You can use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		You can use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes:
		|tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
		talk Misensi##31031
		buy 1 Recipe: Mega Mammoth Meal##43018goto |goto Dalaran 70.1,38.2
		buy 1 Recipe: Tender Shoveltusk Steak##43019 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Spiced Worm Burger##43020 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Very Burnt Worg##43021 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Worg Tartare##44954 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Mighty Rhino Dogs##43022 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Poached Northern Sculpin##43023 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Firecracker Salmon##43024 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Spicy Blue Nettlefish##43025 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Imperial Manta Steak##43026 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Spicy Fried Herring##43027 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Rhinolicious Wormsteak##43028 |goto Dalaran 70.1,38.2
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		use Recipe: Mega Mammoth Meal##43018
		learn Mega Mammoth Meal##45555
		use Recipe: Tender Shoveltusk Steak##43019
		learn Tender Shoveltusk Steak##45556
		use Recipe: Spiced Worm Burger##43020
		learn Spiced Worm Burger##45557
		use Recipe: Very Burnt Worg##43021
		learn Very Burnt Worg##45558
		use Recipe: Worg Tartare##44954
		learn Worg Tartare##62350
		use Recipe: Mighty Rhino Dogs##43022
		learn Mighty Rhino Dogs##45559
		use Recipe: Poached Northern Sculpin##43023
		learn Poached Northern Sculpin##45567
		use Recipe: Firecracker Salmon##43024
		learn Firecracker Salmon##45568
		use Recipe: Spicy Blue Nettlefish##43025
		learn Spicy Blue Nettlefish##45571
		use Recipe: Imperial Manta Steak##43026
		learn Imperial Manta Steak##45570
		use Recipe: Spicy Fried Herring##43027
		learn Spicy Fried Herring##57433
		use Recipe: Rhinolicious Wormsteak##43028
		learn Rhinolicious Wormsteak##57434
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes:
		|tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes.
		talk Misensi##31031
		buy 1 Recipe: Critter Bites##43029 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Hearty Rhino##43030 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Snapper Extreme##43031 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Blackened Worg Steak##43032 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Cuttlesteak##43033 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Spiced Mammoth Treats##43034 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Blackened Dragonfin##43035 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Dragonfin Fillet##43036 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Tracker Snacks##43037 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Gigantic Feast##43505 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Small Feast##43506 |goto Dalaran 70.1,38.2
		buy 1 Recipe: Fish Feast##43017 |goto Dalaran 70.1,38.2
	step
		Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		use Recipe: Critter Bites##43029
		learn Critter Bites##57435
		use Recipe: Hearty Rhino##43030
		learn Hearty Rhino##57436
		use Recipe: Snapper Extreme##43031
		learn Snapper Extreme##57437
		use Recipe: Blackened Worg Steak##43032
		learn Blackened Worg Steak##57438
		use Recipe: Cuttlesteak##43033
		learn Cuttlesteak##57439
		use Recipe: Spiced Mammoth Treats##43034
		learn Spiced Mammoth Treats##57440
		use Recipe: Blackened Dragonfin##43035
		learn Blackened Dragonfin##57441
		use Recipe: Dragonfin Fillet##43036
		learn Dragonfin Fillet##57442
		use Recipe: Tracker Snacks##43037
		learn Tracker Snacks##57443
		use Recipe: Gigantic Feast##43505
		learn Gigantic Feast##58527
		use Recipe: Small Feast##43506
		learn Small Feast##58528
		use Recipe: Fish Feast##43017
		learn Fish Feast##57423
	step
		You can either buy these from the Auction House or farm them
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
		talk Suja##46708
		buy 2 Simple Flour##30817 |goto Orgrimmar 56.5,61.2
	step
		talk Shan'ti##3342
		buy 2 Tundra Berries##35949 |goto Orgrimmar 50.8,74.6
		buy 1 Savory Snowplum##35948 |goto Orgrimmar 50.8,74.6
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Bad Clams##58523,Cooking,1 total
		Cook Bad Clams |achieve 1777/1
		Eat Bad Clams |achieve 1780/1 |use Bad Clams##43491
	step
		create Baked Manta Ray##45569,Cooking,1 total
		Cook Baked Manta Ray |achieve 1777/2
	step
		create Blackened Dragonfin##57441,Cooking,1 total
		Cook Blackened Dragonfin |achieve 1777/3
	step
		create Blackened Worg Steak##57438,Cooking,1 total
		Cook Blackened Worg Steak |achieve 1777/4
	step
		create Critter Bites##57435,Cooking,1 total
		Cook Critter Bites |achieve 1777/5
	step
		create Cuttlesteak##57439,Cooking,1 total
		Cook Cuttlesteak |achieve 1777/6
	step
		create Dalaran Clam Chowder##58065,Cooking,1 total
		Cook Dalaran Clam Chowder |achieve 1777/7
	step
		create Dragonfin Filet##57442,Cooking,1 total
		Cook Dragonfin Filet |achieve 1777/8
	step
		create Firecracker Salmon##45568,Cooking,1 total
		Cook Firecracker Salmon |achieve 1777/9
	step
		create Fish Feast##57423,Cooking,1 total
		Cook Fish Feast |achieve 1777/10
	step
		create Gigantic Feast##58527,Cooking,1 total
		Cook Gigantic Feast |achieve 1777/11
	step
		create Great Feast##45554,Cooking,1 total
		Cook Great Feast |achieve 1777/12
	step
		create Grilled Bonescale##45561,Cooking,1 total
		Cook Grilled Bonescale |achieve 1777/13
	step
		create Grilled Sculpin##45563,Cooking,1 total
		Cook Grilled Sculpin |achieve 1777/14
	step
		create Haunted Herring##58525,Cooking,1 total
		Cook Haunted Herring |achieve 1777/15
		Eat the Haunted Herring |achieve 1780/2|use Haunted Herring##43492
	step
		create Hearty Rhino##57436,Cooking,1 total
		Cook Hearty Rhino |achieve 1778/16
	step
		create Imperial Manta Steak##45570,Cooking,1 total
		Cook Imperial Manta Steak |achieve 1778/17
	step
		create Kungaloosh##53056,Cooking,1 total
		Cook Kungaloosh |achieve 1778/18
	step
		create Last Week's Mammoth##58521,Cooking,1 total
		Cook Last Week's Mammoth |achieve 1778/19
		Eat Last Week's Mammoth |use Last Week's Mammoth##43488 |achieve 1780/3
	step
		create Mammoth Meal##45549,Cooking,1 total
		Cook Mammoth Meal |achieve 1778/20
	step
		create Mega Mammoth Meal##45555,Cooking,1 total
		Cook Mega Mammoth Meal |achieve 1778/21
	step
		create Mighty Rhino Dogs##45559,Cooking,1 total
		Cook Mighty Rhino Dogs |achieve 1778/22
	step
		create Northern Stew##57421,Cooking,1 total
		Cook Northern Stew |achieve 1778/23
	step
		create Pickeled Fangtooth##45566,Cooking,1 total
		Cook Pickeled Fangtooth |achieve 1778/24
	step
		create Poached Nettlefish##45565,Cooking,1 total
		Cook Poached Nettlefish |achieve 1778/25
	step
		create Poached Northern Sculpin##45567,Cooking,1 total
		Cook Poached Northern Sculpin |achieve 1778/26
	step
		create Rhino Dogs##45553,Cooking,1 total
		Cook Rhino Dogs |achieve 1778/27
	step
		create Rhinolicious Wormsteak##57434,Cooking,1 total
		Cook Rhinolicious Wormsteak |achieve 1778/28
	step
		create Roasted Worg##45552,Cooking,1 total
		Cook Roasted Worg |achieve 1778/29
	step
		create Sauteed Goby##45562,Cooking,1 total
		Cook Sauteed Goby |achieve 1778/30
	step
		create Shoveltusk Steak##45550,Cooking,1 total
		Cook Shoveltusk Steak |achieve 1779/31
	step
		create Small Feast##58528,Cooking,1 total
		Cook Small Feast |achieve 1779/32
	step
		create Smoked Rockfin##45560,Cooking,1 total
		Cook Smoked Rockfin |achieve 1779/33
	step
		create Smoked Salmon##45564,Cooking,1 total
		Cook Smoked Salmon |achieve 1779/34
	step
		create Snapper Extreme##57437,Cooking,1 total
		Cook Snapper Extreme |achieve 1779/35
	step
		create Spiced Mammoth Treats##57440,Cooking,1 total
		Cook Spiced Mammoth |achieve 1779/36
	step
		create Spiced Worm Burger##45557,Cooking,1 total
		Cook Spiced Worm Burger |achieve 1779/37
	step
		create Spicy Blue Nettlefish##45571,Cooking,1 total
		Cook Spicy Blue Nettlefish |achieve 1779/38
	step
		create Spicy Fried Herring##57433,Cooking,1 total
		Cook Spicy Fried Herring |achieve 1779/39
	step
		create Tasty Cupcake##58512,Cooking,1 total
		Cook Tasty Cupcake |achieve 1779/40
		Eat Tasty Cupcake |use Tasty Cupcake##43490 |achieve 1780/4
	step
		create Tender Shoveltusk Steak##45556,Cooking,1 total
		Cook Tender Shoveltusk Steak |achieve 1779/41
	step
		create Tracker Snacks##57443,Cooking,1 total
		Cook Tracker Snacks |achieve 1779/42
	step
		create Very Burnt Worg##45558,Cooking,1 total
		Cook Very Burnt Worg |achieve 1779/43
	step
		create Worg Tartare##62350,Cooking,1 total
		Cook Worg Tartare |achieve 1779/44
	step
		create Worm Delight##45551,Cooking,1 total
		Cook Worm Delight |achieve 1779/45
		Cook 45 of the Northrend recipes |achieve 1779
	step
		Congratulations! You've earned the Northrend Gourment achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_The_Outland_Gourmet",[[
	step
	title +The Burning Crusade Recipes
		#include trainCooking
		learn Stewed Trout##42296
		learn Fisherman's Feast##42302
		learn Hot Buttered Trout##42305
	//300 Buzzard Bites TBC
	step
		talk Legassi##19344
		accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
	step
		kill Razorfang Hatchling##16932+,Razorfang Ravager##16933+
		collect 12 Ravager Egg##23217 |q 9349/1 |goto 39.0,88.4
	step
		talk Legassi##19344
		turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
	step
		talk Legassi##19344
		accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
	step
		kill Deranged Helboar##16863
		collect 8 Tainted Helboar Meat##23270 |goto 51.2,69.8
	step
		use Purification Mixture##23268
		|tip Use the Purification Mixture on the Tainted Meat.
		collect 8 Purified Helboar Meat##23248 |q 9361/1
	step
		talk Legassi##19344
		turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
	step
		talk Legassi##19344
		accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
	step
		kill Bonestripper Buzzard##16972+
		collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 61.0,66.6
	step
		talk Legassi##19344
		accept Smooth as Butter##9356
		collect 1 Recipe: Buzzard Bites##27684 |n
		use Recipe: Buzzard Bites##27684
		learn Buzzard Bites##33279 |goto Hellfire Peninsula 49.2,74.8
	step
		talk Cookie One-Eye##16585
		buy 1 Recipe: Ravager Dog##27688 |n
		use Recipe: Ravager Dog##27688
		learn Ravager Dog##33284 |goto Hellfire Peninsula 54.6,41.0
	step
		talk Zurai##18011
		buy 1 Recipe Feltail Delight##27695 |n
		use Recipe Feltail Delight##27695
		learn Feltail Delight##33291 |goto Zangarmarsh 85.2,54.6
	step
		talk Gambarinka##18015
		buy Recipe: Blackened Trout##27694 |n
		use Recipe: Blackened Trout##27694
		learn Blackened Trout##33290 |goto Zangarmarsh 31.6,49.2
	//300 Clam Bar TBC
	step
		talk Mycah##18382
		buy 1 Recipe: Clam Bar##30156 |n
		use Recipe: Clam Bar##30156
		learn Clam Bar##36210 |goto Zangarmarsh 17.8,51.2
	//310 Blackened Sporefish TBC
	step
		talk Juno Dufrain##18911
		buy 1 Recipe: Blackened Sporefish##27696 |n
		use Recipe: Blackened Sporefish##27696
		learn Blackened Sporefish##33292 |goto Zangarmarsh 78.0,66.0
	//310 Sporeling Snack TBC --help
	//320 Grilled Mudfish TBC, poached bluefish, talbuk steak. roasted clefthoof
	step
		talk Nula the Butcher##20097
		buy 1 Recipe: Grilled Mudfish##27697 |goto Nagrand 58.0,35.6
		buy 1 Recipe: Talbuk Steak##27693 |goto Nagrand 58.0,35.6
		buy 1 Recipe: Poached Bluefish##27698 |goto Nagrand 58.0,35.6
		buy 1 Recipe: Roasted Clefthoof##27691 |goto Nagrand 58.0,35.6
	step
		use Recipe: Talbuk Steak##27693
		learn Talbuk Steak##33289
		use Recipe: Grilled Mudfish##27697
		learn Grilled Mudfish##33293
		use Recipe: Poached Bluefish##27698
		learn Poached Bluefish##33294
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287
	//325 Golden Fish Sticks TBC + Spicy Crawdad TBC
	step
		talk Rungor##18960
		buy 1 Recipe: Golden Fish Sticks##27699 |n
		buy 1 Recipe: Spicy Crawdad##27700 |n
		use Recipe: Golden Fish Sticks##27699
		learn Golden Fish Sticks##33295 |goto Terokkar Forest 48.8,46.0
		use Recipe: Spicy Crawdad##27700
		learn Spicy Crawdad##33296 |goto Terokkar Forest 48.8,46.0
	//315 Blackened Basilisk TBC + warp burger
	step
		talk Innkeeper Grilka##18957
		buy 1 Recipe Blackened Basilisk##27690 |n
		buy 1 Recipe: Warp Burger##27692 |n
		use Recipe Blackened Basilisk##27690
		learn Blackened Basilisk##33286 |goto Terokkar Forest 48.8,45.0
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |goto Terokkar Forest 48.8,45.0
	//325 Warp Burger TBC
	//335 Crunchy Serpent TBC + Mok'Nathal Shortribs TBC
	step
		talk Xerintha Ravenoak##20916
		buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
		buy 1 Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains 62.4,40.2
		use Recipe: Crunchy Serpent##31674
		learn Crunchy Serpent##38868 |goto Blade's Edge Mountains 62.4,40.2
	step
		Use the Shattrath Cooking Dailies section of this guide to get these recipes:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		Make sure to choose the Crate of Meat
		collect 1 Recipe: Spicy Hot Talbuk##33873
	step
		learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873
	//300 Broiled Bloodfin TBC + Skullfish Soup TBC
	step
		//Barrel of fish
		Use the Shattrath Cooking Dailies section of this guide to get these recipes:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		Make sure to choose the Barrel of Fish
		collect 1 Recipe: Broiled Bloodfin##33869
		collect 1 Recipe: Skullfish Soup##33870
	step
		use Recipe: Broiled Bloodfin##33869
		learn Broiled Bloodfin##43761
		use Recipe: Skullfish Soup##33870
		learn Skullfish Soup##43707
	//300 Kibler's Bits TBC
	step
		Use the Shattrath Cooking Dailies section of this guide to get this recipe:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		You can choose either the Crate of Meat of Barrel of Fish
		collect 1 Recipe: Kibler's Bits##33875
	step
		use Recipe: Kibler's Bits##33875
		learn Kibler's Bits##43772
	//300 Stormchops TBC
	step
		Use the Shattrath Cooking Dailies or Dalaran Cooking Dailies section of this guide to get these recipes:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		You can choose either Crate of Meat, Barrel of Fish, or Small Spice Bag
		collect 1 Recipe: Stormchops##33871
		collect 1 Recipe: Delicious Chocolate Cake##33925
	step
		use Recipe: Stormchops##33871
		learn Stormchops##43758
		use Recipe: Delicious Chocolate Cake##33925
		learn Delicious Chocolate Cake##43779
	step
		You can either purchase these items from the Acution House or farm them
		collect 8 Small Eggs##6889
		collect 2 Buzzard Meat##27671
		collect 2 Clefthoof Meat##27678
		collect 2 Jaggal Clam Meat##24477
		collect 2 Talbuk Venison##27682
		collect 1 Chunk o' Basilisk##27677
		collect 1 Raptor Ribs##31670
		collect 1 Ravager Flesh##27674
		collect 1 Serpent Flesh##31671
		collect 1 Strange Spores##27676
		collect 1 Warped Flesh##27681
		collect 3 Mageroyal##785
	step
		You can either purchase these items from the Auction House or fish for them
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
		talk Shan'ti##3342
		buy 5 Goldenbark Apple##4539 |goto Orgrimmar 50.8,74.6
	step
		talk Innkeeper Gryshka##6929
		buy 4 Ice Cold Milk##1179 |goto Orgrimmar 53.6,78.8
	step
		talk Suja##46708
		buy 8 Simple Flour##30817 |goto Orgrimmar 56.5,61.2
		buy 4 Mild Spices##2678 |goto Orgrimmar 56.5,61.2
	step
		talk Daisy##40832
		buy 1 Flask of Port##2593 |goto Thousand Needles 76.5,74.8
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Delicious Chocolate Cake##43779,Cooking,1 total
		Cook Delicious Chocolate Cake |achieve 1800/1
	step
		create Blackened Trout##33290,Cooking,1 total
		Cook Blackened Trout |achieve 1800/2
	step
		create Buzzard Bites##33279,Cooking,1 total
		Cook Buzzard Bites |achieve 1800/3
	step
		create Clam Bar##36210,Cooking,1 total
		Cook Clam Bar |achieve 1800/4
	step
		create Feltail Delight##33291,Cooking,1 total
		Cook Feltail Delight |achieve 1800/5
	step
		create Ravager Dog##33284,Cooking,1 total
		Cook Ravager Dog |achieve 1800/6
	step
		create Stormchops##43758,Cooking,1 total
		Cook Stormchops |achieve 1800/7
	step
		create Blackened Sporefish##33292,Cooking,1 total
		Cook Blackened Sporefish |achieve 1800/8
	step
		create Blackened Basilisk##33286,Cooking,1 total
		Cook Blackened Basilisk |achieve 1800/9
	step
		create Grilled Mudfish##33293,Cooking,1 total
		Cook Grilled Mudfish |achieve 1800/10
	step
		create Poached Bluefish##33294,Cooking,1 total
		Cook Poached Bluefish |achieve 1800/11
	step
		create Broiled Bloodfin##43761,Cooking,1 total
		Cook Broiled Bloodfin |achieve 1800/12
	step
		create Golden Fish Sticks##33295,Cooking,1 total
		Cook Golden Fish Sticks |achieve 1800/13
	step
		create Kibler's Bits##43772,Cooking,1 total
		Cook Kibler's Bits |achieve 1800/14
	step
		create Roasted Clefthoof##33287,Cooking,1 total
		Cook Roasted Clefthoof |achieve 1800/15
	step
		create Talbuk Steak##33289,Cooking,1 total
		Cook Talbuk Steak |achieve 1800/16
	step
		create Warp Burger##33288,Cooking,1 total
		Cook Warp Burger |achieve 1800/17
	step
		create Crunchy Serpent##38868,Cooking,1 total
		Cook Crunchy Serpent |achieve 1800/18
	step
		create Mok'Nathal Shortribs##38867,Cooking,1 total
		Cook Mok'Nathal |achieve 1800/19
	step
		create Fisherman's Feast##42302,Cooking,1 total
		Cook Fisherman's Feast |achieve 1800/20
	step
		create Hot Buttered Trout##42305,Cooking,1 total
		Cook Hot Buttered Trout |achieve 1800/21
	step
		create Skullfish Soup##43707,Cooking,1 total
		Cook Skullfish Soup |achieve 1800/22
	step
		create Spicy Crawdad##33296,Cooking,1 total
		Cook Spicy Crawdad |achieve 1800/23
	step
		create Spicy Hot Talbuk##43765,Cooking,1 total
		Cook Spicy Hot Talbuk |achieve 1800/24
	step
		create Stewed Trout##42296,Cooking,1 total
		Cook Stewed Trout |achieve 1800/25
	step
		Cook each of the Outland cooking recipes |achieve 1800
	step
		Congratulations! You're earned The Outland Gourmet achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_Kickin'_It_Up_a_Notch",[[
	step
	label "warning"
		The following quests are random and you can only do one per day.
		Click to proceed |confirm always
	step
	label "hub"
		talk The Rokk##24393
		You will only be able to accept one of these daily quests per day
		accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6
		accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6
		accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6
		accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6
	step
		talk Nula the Butcher##20097
		buy Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand 58.0,35.6
	step
		kill Clefthoof##18205+, Clefthoof Calf##19183+
		collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 47.0,64.7
		You can find more Clefthooves at [45.5,72.7]
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		use Cooking Pot##33851 
		|tip Use your Cooking Pot to Cook up some Spiritual Soup.
		Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.5
	step
		talk Xerintha Ravenoak##20916
		buy Recipe: Mok'Nathal Shortribs##31675 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##38867 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
		buy Recipe: Crunchy Serpent##31674 |n
		use Recipe: Mok'Nathal Shortribs##31674
		learn Crunchy Serpent##38868 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
	step
		kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		collect 2 Raptor Ribs##31670 |q 11379 |goto Blade's Edge Mountains 49.6,46.2
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
		use Cooking Pot##33852
		|tip Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise.
		collect Demon Broiled Surprise##33848 |q 11379/1 |goto 29.0,84.5
	step
		click Mana Berry Bush##28+
		collect 15 Mana Berry##33849 |q 11380/1 |goto Netherstorm 45.6,54.2
	step
		talk Innkeeper Grilka##18957
		buy Recipe: Warp Burger##27692 |n
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 48.8,45.0
	step
		kill Blackwind Warp Chaser##23219+
		collect 3 Warped Flesh##27681 |q 11377 |goto 64.0,83.5
	step
		kill Monstrous Kaliri##23051+
		|tip They fly around in the sky close to the tree outposts and bridges.
		collect Giant Kaliri Wing##33838 |q 11377 |goto 67.6,74.7
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Warp Burger##33288,Cooking,3 total |q 11377
		use Cooking Pot##33837
		|tip Use your Cooking Pot to Cook up some Kaliri Stew.
		create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
	step
		talk The Rokk##24393
		turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
		turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
		turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
		turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
	step
		You've completed all the dailies you can do today. Click to go back to the dailies hub |confirm |next "-warning" |only if not step:Find("+check"):IsComplete()
		Checking achievements |next |only if default
	step
	label "check"
		Daily Completed "Revenge is Tasty" |achieve 906/1
		Daily Completed "Super Hot Stew" |achieve 906/2
		Daily Completed "Manalicious" |achieve 906/3
		Daily Completed "Soup for the Soul" |achieve 906/4
		Earn the Kickin' It Up a Notch Achievement |achieve 906
	step
		Congratulations, you've earned "Kickin' It Up a Notch" Achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_Our_Daily_Bread",[[
	step
	title +Dalaran Cooking Dailies
		talk Awilo Lon'gomba##29631
		You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill
		accept Cheese for Glowergold##13115 |or |goto Dalaran 70.0,39.0
		accept Convention at the Legerdemain##13113 |or |goto Dalaran 70.0,39.0
		accept Infused Mushroom Meatloaf##13112 |or |goto Dalaran 70.0,39.0
		accept Mustard Dogs!##13116 |or |goto Dalaran 70.0,39.0
		accept Sewer Stew##13114 |or |goto Dalaran 70.0,39.0
	step
		click Aged Dalaran Limburger##8159
		|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		collect 1 Aged Dalaran Limburger##43137 |q 13115 |goto 54.7,31.5
		click Half Full Glass of Wine##8363+
		|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
		collect 6 Half Full Dalaran Wine Glass##43138 |q 13115 |goto 54.7,31.5
		You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
	step
		use Empty Cheese Serving Platter##43139
		|tip Use your Empty Cheese Serving Platter in your bags.
		collect 1 Wine and Cheese Platter##43136 |q 13115/1
	step
		click Full Jug of Wine##7+
		|tip They look like small blue-ish green jugs sitting on the ground inside this building. They spawn in random locations.
		collect 1 Jug of Wine##43128 |q 13113/2 |goto 55.0,30.8
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 10 Chilled Meat##43013 |q 13113 |goto Dragonblight 30.0,49.8
	step
		Create a basic campfire |cast Basic Campfire##818
		create 4 Northern Stew##57421,Cooking,4 total
		collect 4 Northern Stew##34747 |q 13113/1
	step
		The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7 < 5 |q 13112 |walk
		click Infused Mushroom
		collect 4 Infused Mushroom##43100 |q 13112 |goto 59.5,43.6
	step
		Leave the Dalaran sewers |goto Dalaran,60.2,47.7 < 5 |c |q 13112
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 2 Chilled Meat##43013 |q 13112 |goto Dragonblight 30.0,49.8
	step
		Create a basic campfire |cast Basic Campfire##818
		use Meatloaf Pan##43101
		|tip You will need a cooking fire to do this.
		collect 1 Infused Mushroom Meatloaf##43099 |q 13112/1
	step
		click Wild Mustard##8340+
		collect 4 Wild Mustard##43143 |q 13116 |goto Dalaran 67.7,40.0
		You can find more Wild Mustard flowers:
		Here at [50.3,48.3]
		And here at [37.2,43.9]
	step
		kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		collect 4 Rhino Meat##43012 |q 13116 |goto Borean Tundra 46.7,43.6
	step
		Create a basic campfire |cast Basic Campfire##818
		create Rhino Dog##45553,Cooking,4 total |q 13116
		collect 4 Rhino Dogs##34752 |q 13116
	step
		use Empty Picnic Basket##43142
		collect 1 Mustard Dog Basket! |q 13116/1
	step
		click Crystalsong Carrot##4652+
		collect 4 Crystalsong Carrot##43148 |q 13114 |goto Crystalsong Forest 26.7,44.1
	step
		Create a basic campfire |cast Basic Campfire##818
		use Stew Cookpot##43147
		collect 1 Vegetable Stew##43149 |q 13114/1
	step
		talk Ranid Glowergold##28718
		turnin Cheese for Glowergold##13115 |goto Dalaran 36.6,27.8
		Complete Daily "Cheese for Glowergold" |achieve 1783/4
	step
		talk Arille Azuregaze##29049
		turnin Convention at the Legerdemain##13113 |goto Dalaran 48.6,37.5
		Complete Daily "Conventrion at the Legermain" |achieve 1783/2
	step
		talk Orton Bennet##29527
		turnin Infused Mushroom Meatloaf##13112 |goto Dalaran 52.3,55.6
		Complete Daily "Infused Mushroom Meatloaf" |achieve 1783/1
	step
		talk Archmage Pentarus##28160
		turnin Mustard Dogs!##13116 |goto Dalaran 68.6,42.0
		Complete Daily "Mustard Dogs!" |achieve 1783/5
	step
		The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7,0.3 |c |q 13114
	step
		talk Ajay Green##29532
		turnin Sewer Stew##13114 |goto Dalaran 35.5,57.6
		Complete Daily "Sewer Stew" |achieve 1783/3
	step
		Congratulations! You've earned the Our Daily Bread achievement! |achieve 1783
]])

ZygorGuidesViewer:RegisterInclude("H_Captain_Rumsey's_Lager",[[
	step
		Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe:
		|tip It's not always guarenteed to come from these daily prizes so be patient
		collect 1 Recipe: Captain Rumsey's Lager##34834
	step
		use Recipe: Captain Rumsey's Lager##34834
		learn Captain Rumsey's Lager##45695
	step
		Congratulation, you have earned the achievement Captain Rumsey's Lager! |achieve 1801
]])

ZygorGuidesViewer:RegisterInclude("H_Critter_Gitter",[[
		This requires 10 Critter Bites
		_Click here_ to craft these |confirm |next "farm1"
		_Click here_ to buy these from the Auction House |confirm |next
	step
		talk Auctioneer Fazdran##44865
		collect 10 Critter Bites##43004 |goto Orgrimmar 53.8,72.8
		next "gitter"
	step
	label "farm1"
		This requires 20 Chilled Meat and 10 Northern Spices
		_Click here_ to go farm for these |confirm |next "farm2"
		_Click here_ to buy these from the Auction House |confirm |next
	step
		talk Auctioneer Fazdran##44865
		collect 20 Chilled Meat##43013 |goto Orgrimmar 53.8,72.8
		collect 10 Northern Spices##43007 |goto Orgrimmar 53.8,72.8
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
		talk Misensi##31031
		buy 1 Recipe: Critter Bites##43029 |goto Dalaran 70.2,37.2
	step
		learn Critter Bites##57435 |use Recipe: Critter Bites##43029
	step
		Make a Campfire |cast Basic Campfire##818
		create Critter Bites##57435,Cooking,10 total
		collect 10 Critter Bites##43004
	step
	label "gitter"
		use Critter Bites##43004
		|tip Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them.
		|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
		achieve 1781 |goto Eastern Plaguelands 4.7,35.5
		|tip You must coerce 10 critters to be your pet within 3 minutes or less.
	step
		Congratulations, you have earned the Critter Gitter achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_Dinner_Impossible",[[
	step
		You can either buy these items from the auction house or use the Cooking professions guide to reach level 375 Cooking, otherwise you cannot complete this achievement |only if skill("Cooking")<375
		You can either buy these items from the auction house or farm them |only if skill("Cooking")>=375
		collect 5 Great Feast##34753
		Click here to go farm these materials |confirm |next "farm1"
		next usefeast
	step
		#include trainCooking
		learn Great Feast##45554
	step
	label farm1
		You can either buy these items from the auction house or farm them
		collect 5 Chunk o'Mammoth##34736
		collect 5 Shoveltusk Flank##43009
		collect 5 Worm Meat##43010
		collect 10 Chilled Meat##43013
		Click here to go farm these materials |confirm |next "farm2"
		next makefeast
	step
	label farm2
		kill Scourged Mammoth##25452+
		collect 5 Chunk o'Mammoth##34736 |goto Borean Tundra 78.2,24.0
		collect 10 Chilled Meat##43013 |goto Borean Tundra 78.2,24.0
	step
		kill Tundra Crawler##25454+
		collect 5 Worm Meat##43010 |goto 76.2,23.0
	step
		kill Shoveltusk##23690+
		collect 5 Shoveltusk Flank##43009 |goto Howling Fjord 73.6,40.0
	step
	label makefeast
		Have someone make the Great Feasts for you |only if skill("Cooking")<375
		|tip Ask in your guild or in trade for someone to make these |only if skill("Cooking")<375
		Create a basic campfire |cast Basic Campfire##818 |only if skill("Cooking")>=375
		create 5 Great Feast##45554,Cooking,5 total |only if skill("Cooking")>=375
		collect 5 Great Feast##34753
	step
	label usefeast
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Alterac Valley and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		Wait for the que to pop-up in the middle of your screen and click on accept
		Go to Alterac Valley |goto Alterac Valley |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Alterac Valley |achieve 1784/1
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		Wait for the que to pop-up in the middle of your screen and click on accept
		Go to Arathi Basin |goto Arathi Basin |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Arathi Basin |achieve 1784/2
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push the [H] key on your keyboard to open your Player vs. Player interface
		Click on Warsong Gulch and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		Wait for the que to pop-up in the middle of your screen and click on accept
		Go to Warsong Gulch |goto Warsong Gulch |noway |c
	step
		use Great Feast##34753
		Present a Great Feast in Warsong Gulch |achieve 1784/3
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Strand of the Ancients and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		Wait for the que to pop-up in the middle of your screen and click on accept
		Go to Strand of the Ancients |goto Strand of the Ancients |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Strand of the Ancients |achieve 1784/4
		|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
	step
		Push [H] on your keyboard to open your Player vs. Player interface
		Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		Wait for the que to pop-up in the middle of your screen and click on accept
		Go to Eye of the Storm |goto Arathi Basin |noway |c
	step
		Use one of your Great Feasts |use Great Feast##34753
		Present a Great Feast in Eye of the Storm |achieve 1784/5
	step
		Congratulations! You've earned the Dinner Impossible achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_Dalaran_Cooking_Dailies",[[
	daily
		talk Awilo Lon'gomba##29631
		You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		accept Cheese for Glowergold##13115 |or |goto Dalaran 70.0,39.0
		accept Convention at the Legerdemain##13113 |or |goto Dalaran 70.0,39.0
		accept Infused Mushroom Meatloaf##13112 |or |goto Dalaran 70.0,39.0
		accept Mustard Dogs!##13116 |or |goto Dalaran 70.0,39.0
		accept Sewer Stew##13114 |or |goto Dalaran 70.0,39.0
	step
		click Aged Dalaran Limburger##8159
		|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		collect 1 Aged Dalaran Limburger##43137 |q 13115 |goto 54.7,31.5
	step
		click Half Full Glass of Wine##8363+
		|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building. They spawn in random locations.
		collect 6 Half Full Dalaran Wine Glass##43138 |q 13115 |goto 54.7,31.5
		You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
	step
		use Empty Cheese Serving Platter##43139
		collect 1 Wine and Cheese Platter##43136 |q 13115/1
	step
		click Full Jug of Wine##7
		|tip They look like small blue-ish green jugs sitting on the ground inside this building. They spawn in random locations.
		collect 1 Jug of Wine##43128 |q 13113/2 |goto 55.0,30.8
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 4 Chilled Meat##43013 |q 13113 |goto Dragonblight 30.0,49.8
	step
		Use your Cooking ability to cook 4 Northern Stew
		|tip You will need a cooking fire to do this.
		collect 4 Northern Stew##34747 |q 13113/1
	step
		The entrance to the Dalaran sewers starts here |goto Dalaran 60.2,47.7 < 5 |c |q 13112 |walk
		click Infused Mushroom##359+
		collect 4 Infused Mushroom##43100 |q 13112 |goto Dalaran/2 51.6,41.6
	step
		Leave the Dalaran sewers |goto Dalaran 60.2,47.7 < 5 |c |q 13112 |walk
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 2 Chilled Meat##43013 |q 13112 |goto Dragonblight 30.0,49.8
	step
		use Meatloaf Pan##43101
		|tip You will need a cooking fire to do this.
		collect 1 Infused Mushroom Meatloaf##43099 |q 13112/1
	step
		click Wild Mustard##8340
		|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area. They spawn randomly in grassy areas.
		collect 4 Wild Mustard##43143 |q 13116 |goto Dalaran 67.7,40.0
		You can find more Wild Mustard flowers:
		Here at [50.3,48.3]
		And here at [37.2,43.9]
	step
		kill Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		collect 4 Rhino Meat##43012 |q 13116 |goto Borean Tundra 46.7,43.6
	step
		create 4 Rhino Dogs##45553,Cooking,4 total |n
		Use your Cooking ability to cook 4 Rhino Dogs
		|tip You will need a cooking fire to do this.
		collect 4 Rhino Dogs##34752 |q 13116
	step
		use Empty Picnic Basket##43142
		collect 1 Mustard Dog Basket! |q 13116/1
	step
		click Crystalsong Carrots##43148+
		|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran. They spawn in random locations around this area.
		collect 4 Crystalsong Carrot##43148 |q 13114 |goto Crystalsong Forest 26.9,45.5
	step
		kill Rabid Grizzly##26643+, Blighted Elk##26616+
		collect 4 Chilled Meat##43013 |q 13114 |goto Dragonblight 30.0,49.8
	step
		use Stew Cookpot##43147
		|tip You will need a cooking fire to do this.
		collect 1 Vegetable Stew##43149 |q 13114/1
	step
		talk Ranid Glowergold##28718
		turnin Cheese for Glowergold##13115 |goto Dalaran 36.6,27.8
	step
		talk Arille Azuregaze##29049
		turnin Convention at the Legerdemain##13113 |goto Dalaran 48.6,37.5
	step
		talk Orton Bennet##29527
		turnin Infused Mushroom Meatloaf##13112 |goto Dalaran 52.3,55.6
	step
		talk Archmage Pentarus##28160
		turnin Mustard Dogs!##13116 |goto Dalaran 68.6,42.0
	step
		The entrance to the Dalaran sewers starts here |goto Dalaran 60.2,47.7 < 5 |c |q 13114 |walk
		talk Ajay Green##29532
		turnin Sewer Stew##13114 |goto Dalaran 35.5,57.6
]])

ZygorGuidesViewer:RegisterInclude("H_MOP_Cooking_Dailies",[[
		Proceeding to Cooking School Bell |only if completedq(31521)
		Proceeding to Cooking Dailies |only if not completedq(31521) |next dailies
	step
		use Cooking School Bell##86425
		If you do not have this yet, you can buy it from Nam Ironpaw here: [Valley of the Four Winds 53.6,51.2]
		talk Nomi##64337
		accept Lesson 1: Sliced Peaches##31332
		modelnpc Nam Ironpaw##64395
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##74660 |q 31332/1 |goto Valley of the Four Winds 53.6,51.2
	step
		use Cooking School Bell##86425
		talk Nomi##64337
		turnin Lesson 1: Sliced Peaches##31332
	step
	label	dailies
		talk Jian Ironpaw##58716
		accept The Truffle Shuffle##30330 |goto Valley of the Four Winds 53.4,51.6
		Click here if this quest is not available today |confirm
	step
		alk Kol Ironpaw##58712
		accept Fatty Goatsteak##30332 |goto 53.0,51.3
		Click here if this quest is not available today |confirm
	step
		talk Yan Ironpaw##58715
		accept The Thousand-Year Dumpling##30328 |goto 52.5,51.7
		Click here if this quest is not available today |confirm
	step
		talk Anthea Ironpaw##58713
		accept Cindergut Peppers##30329 |goto 52.8,51.8
		Click here if this quest is not available today |confirm
	step
		talk Mei Mei Ironpaw##58714
		accept The Mile-High Grub##30331 |goto 52.6,51.6
		Click here if this quest is not available today |confirm
	step
		use Master's Pot##79895
		|tip Use the Master's Pot in your bags next to the bonfire.
		collect 20 Mushan Tail Stew##79894 |q 30331/1 |goto 32.5,23.9
		only if havequest(30331)
	step
		kill Kunzen Hunter##59121+, Kunzen Herdskeeper##59122+, Kunzen Ritualist##59123+, Kunzen Rockflinger##59120+,Kunzen Collector##59124+
		collect 4 Cindergut Pepper##79864 |q Cindergut Peppers##30329/1 |goto 31.2,36.0
		only if havequest(30329)
	step
		_Enter_ the cave here |goto 44.0,22.2 < 5 |walk
		click Preserved Vegetable##11054+
		collect 7 Preserved Vegetables |q 30328/1
		only if havequest(30328)
	step
		click Shadelight Truffle##11275+
		|tip You can find these aruond the trees here
		collect 8 Shadelight Truffle##79833 |q 30330/2 |goto 28.5,33.3
		only if havequest(30330)
	ste[
		use Shadelight Truffle Spores##80127
		Plant #8# Shadelight Spores |q 30330/1 |goto 28.5,33.3
		only if havequest(30330)
	step
		kill Stout Shaghorn##59139+
		collect 4 Fatty Goatsteak##79867 |q 30332/1 |goto Valley of the Four Winds 29.7,41.4
		only if havequest(30332)
	step
		talk Anthea Ironpaw##58713
		turnin Cindergut Peppers##30329 |goto Valley of the Four Winds 52.8,51.8
	step
		talk Jian Ironpaw##58716
		turnin The Truffle Shuffle##30330 |goto Valley of the Four Winds 53.4,51.6
	step
		talk Yan Ironpaw##58715
		turnin The Thousand-Year Dumpling##30328 |goto 52.5,51.7
	step
		talk Kol Ironpaw##58712
		turnin Fatty Goatsteak##30332 |goto 53.0,51.3
	step
		talk Mei Mei Ironpaw##58714
		turnin The Mile-High Grub##30331 |goto 52.6,51.6
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the Pandaria Cooking Dailies |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterInclude("Nomi_Dailies",[[
	step
	label "start"
		use Cooking School Bell##86425
		talk Nomi##64337
		|tip She's standing next to you if you use the Cooking School Bell.
		accept Lesson 1: Sliced Peaches##31332 |or
		accept Lesson 2: Instant Noodles##31333 |or
		accept Lesson 3: Toasted Fish Jerky |or
		accept Lesson 4: Dried Needle Mushrooms |or
		accept Lesson 5: Pounded Rice Cake |or
	step
		talk Sungshin Ironpaw##64231
		buy 5 Pandaren Peach##31332 |q 31332/1 |goto Valley of the Four Winds 53.6,51.2
	step
		talk Sungshin Ironpaw##64231
		buy 5 Instant Noodles##74854 |q 31333/1 |goto Valley of the Four Winds 53.6,51.2
	step
		talk Sungshin Ironpaw##64231
		buy 5 Golden Carp##74866 |q 31334/1 |goto Valley of the Four Winds 53.6,51.2
	step
		talk Sungshin Ironpaw##64231
		buy 5 Needle Mushrooms##85583 |q 31335/1 |goto Valley of the Four Winds 53.6,51.2
	step
		talk Sungshin Ironpaw##64231
		buy 5 Rice##74851 |q 31336/1 |goto Valley of the Four Winds 53.6,51.2
	step
		talk Nomi##64337
		|tip She's standing next to you if you use the Cooking School Bell.
		use Cooking School Bell##86425
		turnin Lesson 1: Sliced Peaches##31332 |or
		turnin Lesson 2: Instant Noodles##31333 |or
		turnin Lesson 3: Toasted Fish Jerky |or
		turnin Lesson 4: Dried Needle Mushrooms |or
		turnin Lesson 5: Pounded Rice Cake |or
	step
		You have reached the end of the dailies for today.
		Click here to go back to the beginning of the Nomi Cooking Dailies. |confirm |next "start"
]])

ZygorGuidesViewer:RegisterInclude("H_second_that_emotion",[[
	step
		You can either purchase these from the Auction House or farm for them:
		collect 1 Bad Clams##43491
		collect 1 Haunted Herring##43492
		collect 1 Last Week's Mammoth##43488
		collect 1 Tasty Cupcake##43490
		Click here to go farm for these |confirm |next "farm1"
		|next eat
	step
	label farm1
		You can either purchase these from the Auction House or farm for them:
		collect 1 Succulent Clam Meat##36782
		collect 1 Mote of Shadow##22577
		collect 1 Chunk o' Mammoth##34736
		collect 1 Northern Egg##43501
		collect 1 Fangtooth Herring##41810
		collect 1 Essence of Undeath##12808
		Click here to go farm for these |confirm |next "farm2"
		next "make"
	step
	label farm2
	title +Succulent Clam Meat
		kill Winterfin Warrior##25217+
		collect Darkwater Clam##36781 |n
		use Darkwater Clam##36781
		collect 1 Succulent Clam Meat##36782 |goto Borean Tundra 41.2,17.6
	step
	title +Chunk o' Mammoth
		kill Scourged Mammoth##25452+
		collect 1 Chunk o' Mammoth##34736 |goto Borean Tundra 78.2,24.0
	step
	title +Northern Egg
		kill Carrion Condor##26174
		collect 1 Northern Egg##43501 |goto Borean Tundra 85.2,36.2
	step
		Fish at this spot |cast Fishing##356
		collect 1 Fangtooth Herring##41810 |goto Howling Fjord 60.2,33.6
	step
	title +Essence of Undeath
		Enter Scholomance |goto Western Plaguelands 69.1,73.0 < 10
		Kill all undead mobs in the dungeon
		collect 1 Essence of Undeath##12808
	step
	title +Second That Emotion
	label make
		Get someone to make your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake
		|tip Ask in your guild or in trade for someone to make these. Be sure to tip well! |only if skill("Cooking")<350
		Make your Bad Clams, Last Week's Mammoth, Haunted Herring, and Tasty Cupcake |only if skill("Cooking")>=350
		Build a Basic Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=350
		create Haunted Herring##58525,Cooking,1 total |only if skill("Cooking")>=350
		create Bad Clams##58523,Cooking,1 total |only if skill("Cooking")>=350
		create Last Week's Mammoth##58521,Cooking,1 total |only if skill("Cooking")>=350
		create Tasty Cupcake##58512,Cooking,1 total |only if skill("Cooking")>=350
		collect 1 Haunted Herring##43492 |goto Orgrimmar 52.0,73.8
		collect 1 Bad Clams##43491 |goto Orgrimmar 52.0,73.8
		collect 1 Last Week's Mammoth##43488 |goto Orgrimmar 52.0,73.8
		collect 1 Tasty Cupcake##43490 |goto Orgrimmar 52.0,73.8
		Click here if you don't have these recipes |confirm |next "recipes" |only if skill("Cooking")>=350
		next "eat"
	step
	label recipes
		kill Crypt Crawler##25227
		collect 1 Recipe: Bad Clams##43509 |goto Borean Tundra 54.6,70.0
		collect 1 Recipe: Last Week's Mammoth##43508 |goto Borean Tundra 54.6,70.0
		collect 1 Recipe: Haunted Herring##43510 |goto Borean Tundra 54.6,70.0
		collect 1 Recipe: Tasty Cupcake##43507 |goto Borean Tundra 54.6,70.0
	step
		use Recipe: Bad Clams##43509
		learn Bad Clams##58523
		use Recipe: Haunted Herring##43510
		learn Haunted Herring##58525
		use Recipe: Last Week's Mammoth##43508
		learn Last Week's Mammoth##58521
		use Recipe: Tasty Cupcake##43507
		learn Tasty Cupcake##58512
	step
		Build a Basic Campfire |cast Basic Campfire##818
		create Haunted Herring##58525,Cooking,1 total
		create Bad Clams##58523,Cooking,1 total
		create Last Week's Mammoth##58521,Cooking,1 total
		create Tasty Cupcake##58512,Cooking,1 total
		collect 1 Haunted Herring##43492
		collect 1 Bad Clams##43491
		collect 1 Last Week's Mammoth##43488
		collect 1 Tasty Cupcake##43490
	step
	label eat
		Eat the Haunted Herring to become scared |use Haunted Herring##43492
		Eat Haunted Herring |achieve 1780/2
	step
		Eat the Bad Clams to become angry |use Bad Clams##43491
		Eat Bad Clams |achieve 1780/1
	step
		Eat the Last Week's Mammoth to become sad |use Last Week's Mammoth##43488
		Eat Last Week's Mammoth |achieve 1780/3
	step
		Eat the Tasty Cupcake to become happy! |use Tasty Cupcake##43490
		Eat Tasty Cupcake |achieve 1780/4
		Eat each one of the "emotion" foods |achieve 1780
]])

ZygorGuidesViewer:RegisterInclude("H_the_cake_is_not_a_lie",[[
	step
		Complete dailies in Shattrath City until you get the recipe for the Delicious Chocolate Cake:
		confirm
	step
		Routing to the proper section |next "create" |only if achieved(877)
		Routing to the proper section |next |only if default
	step
		#include "H_Dalaran_Cooking_Dailies"
	step
		You have completed the maximum amount of Dalaran Cooking dailies you can do today.
		collect Recipe: Delicious Chocolate Cake##33925 |n |tip You are not guaranteed to get this recipe - it is random, so try to have patience.
		Click the Recipe: Delicious Chocolate Cake |use Recipe: Delicious Chocolate Cake##33925
		learn Delicious Chocolate Cake##43779
		Click here to go back to the beginning of the dailies for today if you haven't received the cake pattern |confirm |next "dailies"
	step
	label "create"
		talk Barkeep Morag##5611
		buy 4 Ice Cold Milk##1179 |goto Orgrimmar 54.9,78.2
	step
		talk Suja##46708
		buy 8 Simple Flour##30817 |goto 56.4,61.3
		buy 4 Mild Spices##2678 |goto 56.4,61.3
	step
		talk Daisy##40832
		buy 1 Flask of Port##2593 |goto Thousand Needles 76.5,74.8
	step
		#include "auctioneer"
		buy 3 Mageroyal##785
		buy 8 Small Egg##6889 |next "HaveEggs"
		Click this line if you would rather farm the Small Eggs |confirm |next "farm"
	step
	label "farm"
		kill Thunderhead Hippogryph##6375+
		collect 8 Small Egg##6889 |goto Azshara 49.8,15.6
	step
	label "HaveEggs"
		Build a Basic Campfire |cast Basic Campfire##818
		create Delicious Chocolate Cake##43779,Cooking,1 total |n
		Earn The Cake Is Not A Lie Achievement |achieve 877
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Cooking",[[
		This Recipe is learned by learning the Cooking Skill
		learn Charred Wolf Meat##2538
	step
		This Recipe is learned by learning the Cooking Skill
		learn Herb Baked Egg##8604
	step
		This Recipe is learned by learning the Cooking Skill
		learn Roasted Boar Meat##2540
	step
		#include "trainer_Cooking_MoP"
		learn Sliced Peaches##125117
	step
		This can only be obtained during the Day of the Dead Holiday Event. This is from October 1 - October 2
		talk Chapman##34382
		buy Recipe: Bread of the Dead##46710 |n
		use Recipe: Bread of the Dead##46710
		learn Bread of the Dead##65454 |goto Stormwind City 47.0,25.4
	step
		#include "trainer_Cooking"
		learn Spice Bread##37836
	step
		talk Lizbeth Cromwell##4574
		buy Recipe: Brilliant Smallfish##6325 |n
		learn Brilliant Smallfish##7751 |goto Undercity 81.8,30.6
	step
		talk Abigail Shiel##2118
		buy Recipe: Crispy Bat Wing##12226 |n
		|tip This is only a Horde Recipe and may sell well on the Neutral AH.
		learn Crispy Bat Wing##15935 |goto Tirisfal Glades 61.0,51.0
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		talk Penney Copperpinch##13420
		buy Recipe: Gingerbread Cookie##17200 |n
		use Recipe: Gingerbread Cookie##17200
		learn Gingerbread Cookie##21143 |goto Orgrimmar 52.6,77.6
	step
		talk Landraelanis##16262
		buy Recipe: Lynx Steak##27685 |n
		use Recipe: Lynx Steak##27685
		learn Lynx Steak##33276 |goto Eversong Woods 49.0,47.0
	step
		This is a reward from a quest available only to Alliance
		You may be able to find this on the Neutral AH
		collect Recipe: Roasted Moongraze Tenderloin##27686 |n
		use Recipe: Roasted Moongraze Tenderloin##27686
		learn Roasted Moongraze Tenderloin##33277
	step
		talk Zansoa##5942
		buy Recipe: Slitherskin Mackerel##6326 |n
		use Recipe: Slitherskin Mackerel##6326
		learn Slitherskin Mackerel##7752 |goto Durotar 57.4,77.0
	step
		This is a reward from doing Cooking and Fishing Dailies in Shattrath
		talk The Rokk##24393
		collect Crate of Meat##33857 |n
		collect Barrel of Fish##33844 |n
		collect Small Spice Bag##44113 |n
		Open the Crate, Barrel or Spice Bag
		collect Recipe: Delicious Chocolate Cake##33925 |n
		use Recipe: Delicious Chocolate Cake##33925
		learn Delicious Chocolate Cake##43779 |goto Shattrath City 61.6,16.6
	step
		This can only be obtained during the Pilgrim's Bounty Holiday Event. This is from November 24 - November 30
		clicknpc Bountiful Barrel##35342
		buy Bountiful Cookbook##46810 |n
		collect Recipe: Spice Bread Stuffing##46803 |n
		use Recipe: Spice Bread Stuffing##46803
		learn Spice Bread Stuffing##66038 |goto Durotar 46.6,13.8
	step
		talk Grub##3443
		buy Recipe: Dig Rat Stew##44977 |n
		use Recipe: Dig Rat Stew##44977 |learn Dig Rat Stew##6417 |goto Northern Barrens 55.4,61.2
	step
		This recipe is no longer in the game due to a quest that no longer exists
		collect Recipe: Big Bear Steak##3734 |n
		use Recipe: Big Bear Steak##3734
		learn Big Bear Steak##3397
	step
		#include "trainer_Cooking"
		learn Kaldorei Spider Kabob##6412
	step
		#include "trainer_Cooking"
		learn Spiced Wolf Meat##2539
	step
		This is available only to Alliance
		You may be able to find this on the Neutral AH
		collect Recipe: Beer Basted Boar Ribs##2889 |n
		use Recipe: Beer Basted Boar Ribs##2889
		learn Beer Basted Boar Ribs##2795
	step
		talk Grimtak##3881
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Scorpid Surprise##5483 |n
		use Recipe: Scorpid Surprise##5483
		learn Scorpid Surprise##6413 |goto Durotar 50.8,42.8
	step
		#include "trainer_Cooking_MoP"
		learn Perfectly Cooked Instant Noodles##125067
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		talk Penney Copperpinch##13420
		buy Recipe: Egg Nog##17201 |n
		use Recipe: Egg Nog##17201
		learn Egg Nog##21144 |goto Orgrimmar 52.6,77.6
	step
		talk Wunna Darkmane##3081
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Roasted Kodo Meat##5484 |n
		use Recipe: Roasted Kodo Meat##5484
		learn Roasted Kodo Meat##6414 |goto Mulgore 46.4,57.8
	step
		talk Andrew Hilbert##3556
		buy Recipe: Smoked Bear Meat##6892 |n
		use Recipe: Smoked Bear Meat##6892
		learn Smoked Bear Meat##8607 |goto Silverpine Forest 43.2,40.6
	step
		#include "trainer_Cooking"
		learn Venison Jerky##93741
	step
		talk Master Chef Mouldier##16253
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Bat Bites##27687 |n
		use Recipe: Bat Bites##27687
		learn Bat Bites##33278 |goto Ghostlands 48.4,31.0
	step
		#include "trainer_Cooking"
		learn Boiled Clams##6499
	step
		#include "trainer_Cooking"
		learn Coyote Steak##2541
	step
		#include "trainer_Cooking"
		learn Fillet of Frenzy##6415
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Goretusk Liver Pie##2697 |n
		use Recipe: Goretusk Liver Pie##2697
		learn Goretusk Liver Pie##2542
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Loch Frenzy Delight##6329 |n
		learn Loch Frenzy Delight##7754
	step
		talk Lizbeth Cromwell##4574
		buy Recipe: Longjaw Mud Snapper##6328 |n
		use Recipe: Longjaw Mud Snapper##6328
		learn Longjaw Mud Snapper##7753 |goto Undercity 81.8,30.6
	step
		talk Kilxx##3497
		buy Recipe: Rainbow Fin Albacore##6368 |n
		use Recipe: Rainbow Fin Albacore##6368
		learn Rainbow Fin Albacore |goto Northern Barrens 68.6,72.6
	step
		talk Tari'qa##3482
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Strider Stew##5486 |n
		use Recipe: Strider Stew##5486
		learn Strider Stew##6416 |goto Northern Barrens 49.0,58.2
	step
		This is a Random World Drop, from creatures level 9-15 and in some dungeons
		|tip We recommend Westfall and The Deadmines for grinding.
		collect Recipe: Westfall Stew##728 |n
		use Recipe: Westfall Stew##728
		learn Westfall Stew##2543
	step
		#include "trainer_Cooking_MoP"
		learn Toasted Fish Jerky##124225
	step
		This is a reward from a quest available only to Alliance
		You may be able to find this on the Neutral AH.
		collect Recipe: Blood Sausage |n
		use Recipe: Blood Sausage
		learn Blood Sausage##3371
	step
		This is a reward from doing the quest Thelsamar Blood Sausages
		talk Master Chef Mouldier##16253
		|tip This quest is only available to Horde and may sell well on the Neutral AH.
		accept Culinary Crunch##9171 |goto Ghostlands 48.4,31.0
		turnin Culinary Crunch##9171 |goto Ghostlands 48.4,31.0
		collect Recipe: Crunchy Spider Surprise##22647 |n
		learn Crunchy Spider Surprise##28267
	step
		talk Smudge Thunderwood##6779
		buy Recipe: Thistle Tea##18160 |n
		use Recipe: Thistle Tea##18160
		learn Thistle Tea##9513 |goto Hillsbrad Foothills 71.0,45.8
	step
		#include "trainer_Cooking"
		learn Crab Cake
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Crocolisk Steak##3678 |n
		use Recipe: Crocolisk Steak##3678
		learn Crocolisk Steak##3370
	step
		#include "trainer_Cooking"
		learn Dry Pork Ribs##2546
	step
		talk Karizi Porkpatty##45551
		buy Recipe: Smoked Sagefish##21099 |n
		use Recipe: Smoked Sagefish##21099
		learn Smoked Sagefish##25704 |goto Orgrimmar 39.0,85.6
	step
		talk Kendor Kabonka##340
		buy Recipe: Cooked Crab Claw##2698 |n
		use Recipe: Cooked Crab Claw##2698
		learn Cooked Crab Claw##2545 |goto Stormwind City 76.6,53.6
	step
		This is a Random World Drop, from creatures level 9-15 and in some dungeons
		collect Recipe: Savory Deviate Delight##6661 |n
		use Recipe: Savory Deviate Delight##6661
		learn Savory Deviate Delight##8238
	step
		#include "trainer_Cooking_MoP"
		learn Dried Needle Mushrooms##124227
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Clam Chowder##5528 |n
		use Recipe: Clam Chowder##5528
		learn Clam Chowder##6501
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Murloc Fin Soup##3680 |n
		use Recipe: Murloc Fin Soup##3680
		learn Murloc Fin Soup##3372
	step
		kill Riverpaw Bandit##54371
		|tip You can also obtain this through items by fishing.
		collect Recipe: Captain Rumsey's Lager##34834 |n
		use Recipe: Captain Rumsey's Lager##34834
		learn Captain Rumsey's Lager##45695 |goto Westfall 54.6,49.8
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Redridge Goulash##2699 |n
		use Recipe: Redridge Goulash##2699
		learn Redridge Goulash##2547
	step
		talk Kilxx##3497
		buy Recipe: Bristle Whisker Catfish##6330 |n
		use Recipe: Bristle Whisker Catfish##6330
		learn Bristle Whisker Catfish##7755 |goto Northern Barrens 68.6,72.6
	step
		talk Tari'qa##3482
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Crispy Lizard Tail##5488 |n
		use Recipe: Crispy Lizard Tail##5488
		learn Crispy Lizard Tail##6418 |goto Northern Barrens 49.0,58.2
	step
		This is a reward from a quest available only to Alliance
		You may be able to find this on the Neutral AH
		collect Recipe: Seasoned Wolf Kabob##2701 |n
		use Recipe: Seasoned Wolf Kabob##2701
		learn Seasoned Wolf Kabob##2549
	step
		This can only be obtained during the Pilgrim's Bounty Holiday Event. This is from November 24 - November 30
		clicknpc Bountiful Barrel##35342
		buy Bountiful Cookbook##46810 |n
		collect Recipe: Pumpkin Pie##46804 |n
		use Recipe: Pumpkin Pie##46804
		learn Pumpkin Pie##66036 |goto Durotar 46.6,13.8
	step
		This is a Random World Drop, from creatures level 11-19 in Loch Modan
		collect Recipe: Succulent Pork Ribs##2700 |n
		use Recipe: Succulent Pork Ribs##2700
		learn Succulent Pork Ribs##2548
	step
		This is a reward from a quest available only to Alliance
		You may be able to find this on the Neutral AH
		collect Recipe: Gooey Spider Cake##3683 |n
		use Recipe: Gooey Spider Cake##3683
		learn Gooey Spider Cake##3377
	step
		This recipe is no longer in the game due to a quest that no longer exists
		collect Recipe: Lean Venison##5489 |n
		use Recipe: Lean Venison##5489
		learn Lean Venison##6419
	step
		#include "trainer_Cooking_MoP"
		learn Pounded Rice Cake##124223
	step
		This is Available only to Alliance
		You may be able to find this on the Neutral AH
		buy Recipe: Crocolisk Gumbo##3681 |n
		use Recipe: Crocolisk Gumbo##3681
		learn Crocolisk Gumbo##3373
	step
		#include "trainer_Cooking"
		learn Goblin Deviled Clams##6500
	step
		This recipe is no longer in the game due to a quest that no longer exists
		collect Recipe: Lean Wolf Steak##12227 |n
		use Recipe: Lean Wolf Steak##12227
		learn Lean Wolf Steak##15853
	step
		talk Zargh##3489
		|tip This is only available to Horde and may sell well on the Neutral AH
		buy Recipe: Hot Lion Chops##3735 |n
		use Recipe: Hot Lion Chops##3735
		learn Hot Lion Chops##3398 |goto Northern Barrens 50.6,57.8
	step
		talk Nerrist##1148
		buy Recipe: Curiously Tasty Omelet##3682 |n
		use Recipe: Curiously Tasty Omelet##3682
		learn Curiously Tasty Omelet##3376 |goto Northern Stranglethorn 39.2,51.0
	step
		talk Ogg'marr##4879
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Heavy Crocolisk Stew##20075 |n
		use Recipe: Heavy Crocolisk Stew##20075
		learn Heavy Crocolisk Stew##24418 |goto Dustwallow Marsh 36.6,31.0
	step
		#include "trainer_Cooking_MoP"
		learn Yak Cheese Curds##124224
	step
		#include "trainer_Cooking"
		learn Tasty Lion Steak##3399
	step
		This can only be obtained during the Pilgrim's Bounty Holiday Event. This is from November 24 - November 30
		clicknpc Bountiful Barrel##35342
		buy Bountiful Cookbook##46810 |n
		collect Recipe: Cranberry Chutney##46805 |n
		use Recipe: Cranberry Chutney##46805
		learn Cranberry Chutney##66035 |goto Durotar 46.6,13.8
	step
		talk Henry Stern##8696
		learn Goldthorn Tea##13028 |goto Razorfen Downs 80.6,17.0
	step
		talk Kelsey Yance##2664
		buy Recipe: Rockscale Cod##6369 |n
		use Recipe: Rockscale Cod##6369
		learn Rockscale Cod##7828 |goto The Cape of Stranglethorn 42.8,69.0
	step
		#include "trainer_Cooking"
		learn Barbecued Buzzard Wing##4094
	step
		talk Banalash##989
		|tip This is only available to Horde and may sell well on the Neutral AH.
		buy Recipe: Carrion Surprise##12232 |n
		use Recipe: Carrion Surprise##12232
		learn Carrion Surprise##15863 |goto Swamp of Sorrows 46.6,57.0
		You can also purchase this from Kireena here: [Desolace 51.0,53.4]
	step
		talk Kelsey Yance##2664
		buy Recipe: Giant Clam Scorcho##6039 |n
		use Recipe: Giant Clam Scorcho##6039
		learn Giant Clam Scorcho##7213 |goto The Cape of Stranglethorn 42.8,69.0
	step
		talk Sheendra Tallgrass##8145
		buy Recipe: Hot Wolf Ribs##12229 |n
		use Recipe: Hot Wolf Ribs##12229
		learn Hot Wolf Ribs##15856 |goto Feralas 74.6,42.8
	step
		talk Nerrist##1148
		buy Recipe: Jungle Stew##12231 |n
		use Recipe: Jungle Stew##12231
		learn Jungle Stew##15861 |goto Northern Stranglethorn 39.2,51.0
	step
		talk Kelsey Yance##2664
		buy Recipe: Mithril Head Trout##17062 |n
		use Recipe: Mithril Head Trout##17062
		learn Mithril Head Trout##20916 |goto The Cape of Stranglethorn 42.8,69.0
	step
		talk Helenia Olden##4897
		buy Recipe: Mystery Stew##12233 |n
		use Recipe: Mystery Stew##12233
		learn Mystery Stew##15865 |goto Dustwallow Marsh 66.4,51.4
	step
		talk Nerrist##1148
		buy Recipe: Roast Raptor##12228 |n
		use Recipe: Roast Raptor##12228
		learn Roast Raptor##15855 |goto Northern Stranglethorn 39.2,51.0
	step
		talk Jim Saltit##19195
		buy Recipe: Sagefish Delight##21219 |n
		use Recipe: Sagefish Delight##21219
		learn Sagefish Delight##25954 |goto Shattrath City 63.6,68.6
	step
		#include "trainer_Cooking"
		learn Soothing Turtle Bisque##3400
	step
		#include "trainer_Cooking_MoP"
		learn Dried Peaches##124226
	step
		talk Ogg'marr##4879
		buy Recipe: Dragonbreath Chili##12239 |n
		use Recipe: Dragonbreath Chili##12239
		learn Dragonbreath Chili##15906 |goto Dustwallow Marsh 36.6,31.0
	step
		talk Kireena##9636
		buy Recipe: Heavy Kodo Stew##12240 |n
		use Recipe: Heavy Kodo Stew##12240
		learn Heavy Kodo Stew##15910 |goto Desolace 51.0,53.4
	step
		#include "trainer_Cooking"
		learn Spider Sausage##21175
	step
		#include "trainer_Cooking_MoP"
		learn Boiled Silkworm Pupa##124228
	step
		This can only be obtained during the Pilgrim's Bounty Holiday Event. This is from November 24 - November 30
		clicknpc Bountiful Barrel##35342
		buy Bountiful Cookbook##46810 |n
		collect Recipe: Candied Sweet Potato##46806 |n
		use Recipe: Candied Sweet Potato##46806
		learn Candied Sweet Potato##66034 |goto Durotar 46.6,13.8
	step
		talk Kelsey Yance##2664
		buy Recipe: Cooked Glossy Mightfish##13940 |n
		use Recipe: Cooked Glossy Mightfish##13940
		learn Cooked Glossy Mightfish##18239 |goto The Cape of Stranglethorn 42.8,69.0
	step
		talk Kelsey Yance##2664
		buy Recipe: Filet of Redgill##13941 |n
		use Recipe: Filet of Redgill##13941
		learn Filet of Redgill##18241 |goto The Cape of Stranglethorn 42.8,69.0
	step
		talk Himmik##11187
		buy Recipe: Monster Omelet##16110 |n
		use Recipe: Monster Omelet##16110
		learn Monster Omelet##15933 |goto Winterspring 59.8,51.6
	step
		talk Uthok##1149
		buy Recipe: Spiced Chili Crab##16111 |n
		use Recipe: Spiced Chili Crab##16111
		learn Spiced Chili Crab##15915 |goto Northern Stranglethorn 37.6,49.2
	step
		#include "trainer_Cooking"
		learn Spotted Yellowtail##18238
	step
		talk Dirge Quikcleave##40589
		buy Recipe: Tender Wolf Steak##18046 |n
		use Recipe: Tender Wolf Steak##18046
		learn Tender Wolf Steak##22480 |goto Tanaris 52.6,29.0
	step
		talk Mrs. Gant##54232
		buy Recipe: Undermine Clam Chowder##16767 |n
		use Recipe: Undermine Clam Chowder##16767
		learn Undermine Clam Chowder##20626 |goto The Cape of Stranglethorn 42.6,72.8
	step
		#include "trainer_Cooking"
		learn Grilled Squid##18240
	step
		talk Kelsey Yance##2664
		buy Recipe: Hot Smoked Bass##13943 |n
		use Recipe: Hot Smoked Bass##13943
		learn Hot Smoked Bass##18242 |goto The Cape of Stranglethorn 42.8,69.0
	step
		#include "trainer_Cooking_MoP"
		learn Roasted Barley Tea##125078
	step
		This Recipe is learned by completing the quest Clamlette Surprise
		talk Dirge Quikcleave##40589
		accept Clamlette Surprise##6610 |goto Tanaris 52.6,29.0
		turnin Clamlette Surprise##6610 |goto Tanaris 52.6,29.0
		learn Clamlette Magnifique##64054
	step
		#include "trainer_Cooking"
		learn Charred Bear Kabobs##46684
	step
		#include "trainer_Cooking"
		learn Juicy Bear Burger##46688
	step
		#include "trainer_Cooking"
		learn Nightfin Soup##18243
	step
		#include "trainer_Cooking"
		learn Poached Sunscale Salmon##18244
	step
		talk Sheendra Tallgrass##8145
		buy Recipe: Baked Salmon##13949 |n
		use Recipe: Baked Salmon##13949
		learn Baked Salmon##18247 |goto Feralas 74.6,42.8
	step
		talk Sheendra Tallgrass##8145
		buy Recipe: Lobster Stew##13947 |n
		use Recipe: Lobster Stew##13947
		learn Lobster Stew##18245 |goto Feralas 74.6,42.8
	step
		talk Kelsey Yance##2664
		buy Recipe: Mightfish Steak##13948 |n
		use Recipe: Mightfish Steak##13948
		learn Mightfish Steak##18246 |goto The Cape of Stranglethorn 42.8,69.0
	step
		kill Pusillin##14354
		collect Recipe: Runn Tum Tuber Surprise##18267 |n
		use Recipe: Runn Tum Tuber Surprise##18267
		learn Runn Tum Tuber Surprise##22761 |goto Dire Maul/5 75.6,44.8
	step
		This can only be obtained during the Pilgrim's Bounty Holiday Event. This is from November 24 - November 30
		clicknpc Bountiful Barrel##35342
		buy Bountiful Cookbook##46810 |n
		collect Recipe: Slow-Roasted Turkey##46807 |n
		use Recipe: Slow-Roasted Turkey##46807
		learn Slow-Roasted Turkey##66037 |goto Durotar 46.6,13.8
	step
		talk Calandrath##15174
		accept Desert Recipe##8307 |goto Silithus 55.5,36.8
	step
		click Sandy Cookbook##470
		turnin Desert Recipe##8307 |goto Silithus 43.6,42.0
		accept Sharing the Knowledge##8313 |goto Silithus 43.6,42.0
	step
		talk Calandrath##15174
		turnin Sharing the Knowledge##8313 |goto Silithus 55.5,36.8
		learn Smoked Desert Dumplings##24801 |goto Silithus 55.5,36.8
	step
		talk Gambarinka##18015
		buy Recipe: Blackened Trout##27694 |n
		use Recipe: Blackened Trout##27694
		learn Blackened Trout##33290 |goto Zangarmarsh 31.6,49.2
	step
		This is a reward from doing Fishing Dailies in Shattrath
		talk The Rokk##24393
		collect Barrel of Fish##33844 |n
		use Barrel of Fish##33844
		collect Recipe: Broiled Bloodfin##33869 |n
		use Recipe: Broiled Bloodfin##33869
		learn Broiled Bloodfin##43761 |goto Shattrath City 61.6,16.6
	step
		talk Legassi##19344
		accept Smooth as Butter##9356
		turnin Smooth as Butter##9356
		collect Recipe: Buzzard Bites##27684 |n
		use Recipe: Buzzard Bites##27684
		learn Buzzard Bites##33279 |goto Hellfire Peninsula 49.2,74.8
	step
		talk Mycah##18382
		buy Recipe: Clam Bar##30156 |n
		use Recipe: Clam Bar##30156
		learn Clam Bar##36210 |goto Zangarmarsh 17.8,51.2
	step
		talk Zurai##18011
		buy Recipe: Feltail Delight##27695 |n
		use Recipe: Feltail Delight##27695
		learn Feltail Delight##33291 |goto Zangarmarsh 85.2,54.6
	step
		talk Cookie One-Eye##16585
		buy Recipe: Ravager Dog##27688 |n
		use Recipe: Ravager Dog##27688
		learn Ravager Dog##33284 |goto Hellfire Peninsula 54.6,41.0
	step
		This is a reward from doing Cooking and Fishing Dailies in Shattrath
		talk The Rokk##24393
		collect Crate of Meat##33857 |n
		collect Barrel of Fish##33844 |n
		collect Small Spice Bag##44113 |n
		Open the Crate, Barrel or Spice Bag
		collect Recipe: Stormchops##33871 |n
		use Recipe: Stormchops##33871
		learn Stormchops##43758 |goto Shattrath City 61.6,16.6
	step
		This Recipe is no longer in the game due to a quest that has been taken out
		collect Recipe: Dirge's Kickin' Chimaerok Chops##21025 |n
		use Recipe: Dirge's Kickin' Chimaerok Chops##21025
		learn Dirge's Kickin' Chimaerok Chops##25659
	step
		This is a reward from doing Cooking and Fishing Dailies in Shattrath
		talk The Rokk##24393
		collect Crate of Meat##33857 |n
		collect Barrel of Fish##33844 |n
		Open the Crate or the Barrel
		collect Recipe: Kibler's Bits##33875 |n
		use Recipe: Kibler's Bits##33875
		learn Kibler's Bits##43772 |goto Shattrath City 61.6,16.6
	step
		talk Juno Dufrain##18911
		buy Recipe: Blackened Sporefish##27696 |n
		use Recipe: Blackened Sporefish##27696
		learn Blackened Sporefish##33292 |goto Zangarmarsh 78.0,66.0
	step
		talk Innkeeper Grilka##18957
		collect Recipe: Blackened Basilisk##27690 |n
		use Recipe: Blackened Basilisk##27690
		learn Blackened Basilisk##33286 |goto Terokkar Forest 48.8,45.0
	step
		#include "trainer_Cooking"
		learn Stewed Trout##42296
	step
		talk Nula the Butcher##20097
		buy Recipe: Grilled Mudfish##27697 |n
		use Recipe: Grilled Mudfish##27697
		learn Grilled Mudfish##33293 |goto Nagrand 58.0,35.6
	step
		talk Nula the Butcher##20097
		buy Recipe: Poached Bluefish##27698 |n
		use Recipe: Poached Bluefish##27698
		learn Poached Bluefish##33294 |goto Nagrand 58.0,35.6
	step
		talk Penney Copperpinch##13420
		buy Recipe: Hot Apple Cider##34413 |n
		use Recipe: Hot Apple Cider##34413
		learn Hot Apple Cider##45022 |goto Orgrimmar 52.6,77.6
	step
		This is a reward from doing Cooking and Fishing Dailies in Shattrath
		talk The Rokk##24393
		collect Barrel of Fish##33844 |n
		Open the Barrel in your bags |use Barrel of Fish##33844
		collect Recipe: Skullfish Soup##33870 |n
		use Recipe: Skullfish Soup##33870
		learn Skullfish Soup##43707 |goto Shattrath City 61.6,16.6
	step
		This is a reward from doing Cooking and Fishing Dailies in Shattrath
		talk The Rokk##24393
		collect Crate of Meat##33857 |n
		Open the Crate in your bags |use Crate of Meat##33857
		collect Recipe: Spicy Hot Talbuk##33873 |n
		use Recipe: Spicy Hot Talbuk##33873
		learn Spicy Hot Talbuk##43765 |goto Shattrath City 61.6,16.6
	step
		talk Rungor##18960
		buy Recipe: Golden Fish Sticks##27699 |n
		use Recipe: Golden Fish Sticks##27699
		learn Golden Fish Sticks##33295 |goto Terokkar Forest 48.8,46.0
	step
		talk Nula the Butcher##20097
		buy Recipe: Roasted Clefthoof##27691 |n
		use Recipe: Roasted Clefthoof##27691
		learn Roasted Clefthoof##33287 |goto Nagrand 58.0,35.6
	step
		talk Nula the Butcher##20097
		buy Recipe: Talbuk Steak##27693 |n
		use Recipe: Talbuk Steak##27693 |learn Talbuk Steak##33289 |goto Nagrand 58.0,35.6
	step
		talk Innkeeper Grilka##18957
		buy Recipe: Warp Burger##27692 |n
		use Recipe: Warp Burger##27692
		learn Warp Burger##33288 |goto Terokkar Forest 48.8,45.0
	step
		#include "trainer_Cooking_MoP"
		learn Blanched Needle Mushrooms##124233
	step
		talk Xerintha Ravenoak##20916
		buy Recipe: Crunchy Serpent##31674 |n
		use Recipe: Crunchy Serpent##31674
		learn Crunchy Serpent##38868 |goto Blade's Edge Mountains 62.4,40.2
	step
		talk Xerintha Ravenoak##20916
		buy Recipe: Mok'Nathal Shortribs##31675 |n
		use Recipe: Mok'Nathal Shortribs##31675
		learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains 62.4,40.2
	step
		This is a Random World Drop, from creatures level 68-82 in some dungeons and raids
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Recipe: Bad Clams##43509 |n
		use Recipe: Bad Clams##43509
		learn Bad Clams##58523
	step
		This is a Random World Drop, from creatures level 68-82 in some dungeons and raids
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Recipe: Haunted Herring##43510 |n
		use Recipe: Haunted Herring##43510
		learn Haunted Herring##58525
	step
		This is a Random World Drop, from creatures level 68-82 in some dungeons and raids
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Recipe: Last Week's Mammoth##43508 |n
		use Recipe: Last Week's Mammoth##43508
		learn Last Week's Mammoth##58521
	step
		This is a Random World Drop, from creatures level 68-82 in some dungeons and raids
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Recipe: Tasty Cupcake##43507 |n
		use Recipe: Tasty Cupcake##43507
		learn Tasty Cupcake##58512
	step
		#include "trainer_Cooking"
		learn Grilled Bonescale##45561
	step
		This Recipe is acquired by doing the quest Northern Cooking
		talk Orn Tenderhoof##26972
		accept Northern Cooking##13090
		turnin Northern Cooking##13090
		learn Northern Stew##57421 |goto Borean Tundra 42.0,54.2
	step
		#include "trainer_Cooking"
		learn Sauteed Goby##45562
	step
		#include "trainer_Cooking"
		learn Smoked Rockfin##45560
	step
		#include "trainer_Cooking"
		learn Baked Manta Ray##45569
	step
		#include "trainer_Cooking"
		learn Dalaran Clam Chowder##58065
	step
		#include "trainer_Cooking"
		learn Grilled Sculpin##45563
	step
		#include "trainer_Cooking"
		learn Mammoth Meal##45549
	step
		#include "trainer_Cooking"
		learn Pickled Fangtooth##45566
	step
		#include "trainer_Cooking"
		learn Poached Nettlefish##45565
	step
		#include "trainer_Cooking"
		learn Rhino Dogs##45533
	step
		#include "trainer_Cooking"
		learn Roasted Worg##45552
	step
		#include "trainer_Cooking"
		learn Shoveltusk Steak##45550
	step
		#include "trainer_Cooking"
		learn Smoked Salmon##45564
	step
		#include "trainer_Cooking"
		learn Worm Delight##45551
	step
		talk Rungor##18960
		buy Recipe: Spicy Crawdad##27700 |n
		use Recipe: Spicy Crawdad##27700
		learn Spicy Crawdad##33296 |goto Terokkar Forest 48.8,46.0
	step
		#include "trainer_Cooking"
		learn Fisherman's Feast##42302
	step
		#include "trainer_Cooking"
		learn Hot Buttered Trout##42305
	step
		This Recipe is acquired by completing the quest Fletcher's Lost and Found
		talk Washed-Up Mage##32516
		accept Fletcher's Lost and Found##13571
		turnin Fletcher's Lost and Found##13571
		collect Recipe: Kungaloosh##19644 |n
		use Recipe: Kungaloosh##19644
		learn Kungaloosh##53056 |goto Dalaran/2 44.2,25.6
	step
		#include "trainer_Cooking_MoP"
		learn Red Bean Bun##124229
	step
		#include "trainer_Cooking"
		learn Great Feast##45554
	step
		#include "trainer_Cooking_MoP"
		learn Skewered Peanut Chicken##124234
	step
		talk Mera Mistrunner##33595
		buy Recipe: Worg Tartare##44954 |n
		use Recipe: Worg Tartare##44954
		learn Worg Tartare##62350 |goto Icecrown 72.4,20.8
	step
		#include "trainer_Cooking"
		learn Black Jelly##64358
	step
		talk Misensi##31031
		buy Recipe: Blackened Dragonfin##43035 |n
		use Recipe: Blackened Dragonfin##43035
		learn Blackened Dragonfin##57441 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Blackened Worg Steak##43032 |n
		use Recipe: Blackened Worg Steak##43032
		learn Blackened Worg Steak##57438 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Critter Bites##43029 |n
		use Recipe: Critter Bites##43029
		learn Critter Bites##57435 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Cuttlesteak##43033 |n
		use Recipe: Cuttlesteak##43033
		learn Cuttlesteak##57439 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Dragonfin Filet##43036 |n
		use Recipe: Dragonfin Filet##43036
		learn Dragonfin Filet##57442 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Firecracker Salmon##43024 |n
		use Recipe: Firecracker Salmon##43024
		learn Firecracker Salmon##45568 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Hearty Rhino##43030 |n
		use Recipe: Hearty Rhino##43030
		learn Hearty Rhino##57436 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Imperial Manta Steak##43026 |n
		use Recipe: Imperial Manta Steak##43026
		learn Imperial Manta Steak##45570 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Mega Mammoth Meal##43018 |n
		use Recipe: Mega Mammoth Meal##43018
		learn Mega Mammoth Meal##45555 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Mighty Rhino Dogs##43022 |n
		use Recipe: Mighty Rhino Dogs##43022
		learn Mighty Rhino Dogs##45559 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Poached Northern Sculpin##43023 |n
		use Recipe: Poached Northern Sculpin##43023
		learn Poached Northern Sculpin##45567 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Rhinolicious Wormsteak##43028 |n
		use Recipe: Rhinolicious Wormsteak##43028
		learn Rhinolicious Wormsteak##57434 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Snapper Extreme##43031 |n
		use Recipe: Snapper Extreme##43031
		learn Snapper Extreme##57437 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Spiced Mammoth Treats##43034 |n
		use Recipe: Spiced Mammoth Treats##43034
		learn Spiced Mammoth Treats##57440 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Spiced Worm Burger##43020 |n
		use Recipe: Spiced Worm Burger##43020
		learn Spiced Worm Burger##45557 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Spicy Blue Nettlefish##43025 |n
		use Recipe: Spicy Blue Nettlefish##43025
		learn Spicy Blue Nettlefish##45571 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Spicy Fried Herring##43027 |n
		use Recipe: Spicy Fried Herring##43027
		learn Spicy Fried Herring##57433 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Tender Shoveltusk Steak##43019 |n
		use Recipe: Tender Shoveltusk Steak##43019
		learn Tender Shoveltusk Steak##45556 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Tracker Snacks##43037 |n
		use Recipe: Tracker Snacks##43037
		learn Tracker Snacks##57443 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Very Burnt Worg##43021 |n
		use Recipe: Very Burnt Worg##43021
		learn Very Burnt Worg##45558 |goto Dalaran 70.2,37.2
	step
		#include "trainer_Cooking"
		learn Darkbrew Lager##88015
	step
		#include "trainer_Cooking_MoP"
		learn Green Curry Fish##124231
	step
		talk Misensi##31031
		buy Recipe: Small Feast##43506 |n
		use Recipe: Small Feast##43506
		learn Small Feast##58528 |goto Dalaran 70.2,37.2
	step
		talk Misensi##31031
		buy Recipe: Gigantic Feast##43505 |n
		use Recipe: Gigantic Feast##43505
		learn Gigantic Feast##58527 |goto Dalaran 70.2,37.2
	step
		#include "trainer_Cooking"
		learn Blackened Surprise##88006
	step
		talk Shazdar##49737
		buy Recipe: Feathered Lure##65408 |n
		use Recipe: Feathered Lure##65408
		learn Feathered Lure##88017 |goto Orgrimmar 56.8,62.6
	step
		talk Misensi##31031
		buy Recipe: Fish Feast##43017 |n
		use Recipe: Fish Feast##43017
		learn Fish Feast##43015 |goto Dalaran 70.2,37.2
	step
		talk Shazdar##49737
		buy Recipe: Highland Spirits##65415 |n
		use Recipe: Highland Spirits##65415
		learn Highland Spirits##88022 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Starfire Espresso##65414 |n
		use Recipe: Starfire Espresso##65414
		learn Starfire Espresso##88045 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Broiled Mountain Trout##65411 |n
		use Recipe: Broiled Mountain Trout##65411
		learn Broiled Mountain Trout##88012 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Lavascale Fillet##65407 |n
		use Recipe: Lavascale Fillet##65407
		learn Lavascale Fillet##88024 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Lightly Fried Lurker##65412 |n
		use Recipe: Lightly Fried Lurker##65412
		learn Lightly Fried Lurker##88028 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Lurker Lunch##65416 |n
		use Recipe: Lurker Lunch##65416
		learn Lurker Lunch##88030 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Salted Eye##65410 |n
		use Recipe: Salted Eye##65410
		learn Salted Eye##88035 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Seasoned Crab##65413 |n
		use Recipe: Seasoned Crab##65413
		learn Seasoned Crab##88037 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Whitecrest Gumbo##65406 |n
		use Recipe: Whitecrest Gumbo##65406
		learn Whitecrest Gumbo##88047 |goto Orgrimmar 56.8,62.6
	step
		#include "trainer_Cooking_MoP"
		learn Peach Pie##124232
	step
		talk Shazdar##49737
		buy Recipe: Hearty Seafood Soup##65418 |n
		use Recipe: Hearty Seafood Soup##65418
		learn Hearty Seafood Soup##88021 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Pickled Guppy##65417 |n
		use Recipe: Pickled Guppy##65417
		learn Pickled Guppy##88033 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Tender Baked Turtle##65419 |n
		use Recipe: Tender Baked Turtle##65419
		learn Tender Baked Turtle##88046 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Fish Fry##65423 |n
		use Recipe: Fish Fry##65423 
		learn Fish Fry##88018 |goto Orgrimmar 56.8,62.6
	step
		#include "trainer_Cooking_MoP"
		learn Tangy Yogurt##124230
	step
		#include "trainer_Cooking_MoP"
		learn Pearl Milk Tea##125080
	step
		#include "trainer_Cooking"
		learn Fish Cake##104297
	step
		#include "trainer_Cooking"
		learn Golden Carp Consomme##104237
	step
		talk Goram##46572
		buy Recipe: Broiled Dragon Feast##62799 |n
		use Recipe: Broiled Dragon Feast##62799
		learn Broiled Dragon Feast##88011 |goto Orgrimmar 48.5,75.6
	step
		talk Gina Mudclaw##58706
		buy Recipe: Spicy Salmon##74657 |n
		use Recipe: Spicy Salmon##74657
		learn Spicy Salmon##125120 |goto Valley of the Four Winds 53.2,51.6
	step
		talk Gina Mudclaw##58706
		buy Recipe: Spicy Vegetable Chips##74658 |n
		use Recipe: Spicy Vegetable Chips##74658
		learn Spicy Vegetable Chips##125123 |goto Valley of the Four Winds 53.2,51.6
	step
		talk Shazdar##49737
		buy Recipe: Scalding Murglesnout##68688 |n
		use Recipe: Scalding Murglesnout##68688
		learn Scalding Murglesnout##96133 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Baked Rockfish##65426 |n
		use Recipe: Baked Rockfish##65426
		learn Baked Rockfish##88003 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Basilisk Liverdog##65427 |n
		use Recipe: Basilisk Liverdog##65427
		learn Basilisk Liverdog##88004 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Beer-Basted Crocolisk##65429 |n
		use Recipe: Beer-Basted Crocolisk##65429
		learn Beer-Basted Crocolisk##88005 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Blackbelly Sushi##65424 |n
		use Recipe: Blackbelly Sushi##65424
		learn Blackbelly Sushi##88034 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Crocolisk Au Gratin##65430 |n
		use Recipe: Crocolisk Au Gratin##65430
		learn Crocolisk Au Gratin##88014 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Delicious Sagefish Tail##65422 |n
		use Recipe: Delicious Sagefish Tail##65422
		learn Delicious Sagefish Tail##88016 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Grilled Dragon##65428 |n
		use Recipe: Grilled Dragon##65428
		learn Grilled Dragon##88020 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Lavascale Minestrone##65409 |n
		use Recipe: Lavascale Minestrone##65409
		learn Lavascale Minestrone##88025 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Mushroom Sauce Mudfish##65420 |n
		use Recipe: Mushroom Sauce Mudfish##65420
		learn Mushroom Sauce Mudfish##88031 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Severed Sagefish Head##65421 |n
		use Recipe: Severed Sagefish Head##65421
		learn Severed Sagefish Head##88039 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Skewered Eel##65425 |n
		use Recipe: Skewered Eel##65425
		learn Skewered Eel##88042 |goto Orgrimmar 56.8,62.6
	step
		talk Shazdar##49737
		buy Recipe: Chocolate Cookie##65431 |n
		use Recipe: Chocolate Cookie##65431
		learn Chocolate Cookie##88013 |goto Orgrimmar 56.8,62.6
	step
		#include "trainer_Cooking_MoP"
		learn Wildfowl Ginseng Soup##125121
	step
		#include "trainer_Cooking_MoP"
		learn Rice Pudding##125122
	step
		talk Shazdar##49737
		buy Recipe: Fortune Cookie##65432 |n
		use Recipe: Fortune Cookie##65432
		learn Fortune Cookie##88019 |goto Orgrimmar 56.8,62.6
	step
		talk Goram##46572
		buy Recipe: Seafood Magnifique Feast##62800 |n
		use Recipe: Seafood Magnifique Feast##62800
		learn Seafood Magnifique Feast##88036 |goto Orgrimmar 48.5,75.6
	step
		talk Shazdar##49737
		buy Recipe: South Island Iced Tea##65433 |n
		use Recipe: South Island Iced Tea##65433
		learn South Island Iced Tea##88044 |goto Orgrimmar 56.8,62.6
	step
		talk Nat Pagle##637721
		buy Recipe: Krasarang Fritters##85505 |n
		use Recipe: Krasarang Fritters##85505
		learn Krasarang Fritters##124032 |goto Krasarang Wilds 68.4,43.4
	step
		talk Nat Pagle##637721
		buy Recipe: Viseclaw Soup##85502 |n
		use Recipe: Viseclaw Soup##85502
		learn Viseclaw Soup##124029 |goto Krasarang Wilds 68.4,43.4
	step
		talk Kol Ironpaw##58712
		learn Charbroiled Tiger Steak##104298
	step
		talk Bobo Ironpaw##58717
		learn Ginseng Tea##124052
	step
		talk Anthea Ironpaw##58713
		learn Sauteed Carrots##104301
	step
		talk Yan Ironpaw##58715
		learn Shrimp Dumplings##104307
	step
		talk Mei Mei Ironpaw##58714
		learn Swirling Mist Soup##104304
	step
		talk Jian Ironpaw##58716
		learn Wildfowl Roast##104310
	step
		talk Mei Mei Ironpaw##58714
		learn Braised Turtle##104305
	step
		talk Kol Ironpaw##58712
		learn Eternal Blossom Fish##104299
	step
		talk Yan Ironpaw##58715
		learn Fire Spirit Salmon##104308
	step
		talk Bobo Ironpaw##58717
		learn Jade Witch Brew##124053
	step
		talk Jian Ironpaw##58716
		learn Twin Fish Platter##104311
	step
		talk Anthea Ironpaw##58713
		learn Valley Stir Fry##104302
	step
		talk Bobo Ironpaw##58717
		learn Banquet of the Brew##125602
	step
		talk Kol Ironpaw##58712
		learn Banquet of the Grill##125141
	step
		talk Jian Ironpaw##58716
		learn Banquet of the Oven##125600
	step
		talk Mei Mei Ironpaw##58714
		learn Banquet of the Pot##125596
	step
		talk Yan Ironpaw##58715
		learn Banquet of the Steamer##125598
	step
		talk Anthea Ironpaw##58713
		learn Banquet of the Wok##125594
	step
		talk Bobo Ironpaw##58717
		learn Great Banquet of the Brew##125603
	step
		talk Kol Ironpaw##58712
		learn Great Banquet of the Grill##125142
	step
		talk Jian Ironpaw##58716
		learn Great Banquet of the Oven##125601
	step
		talk Mei Mei Ironpaw##58714
		learn Great Banquet of the Pot##125597
	step
		talk Yan Ironpaw##58715
		learn Great Banquet of the Steamer##125599
	step
		talk Anthea Ironpaw##58713
		learn Great Banquet of the Wok##125595
	step
		talk Kol Ironpaw##58712
		learn Black Pepper Ribs and Shrimp##104300
	step
		talk Jian Ironpaw##58716
		learn Chun Tian Spring Rolls##104312
	step
		click Barrel of Banana Infused Rum##288
		collect Recipe: Banana Infused Rum##87266 |n
		use Recipe: Banana Infused Rum##87266
		learn Banana Infused Rum##126655 |goto Krasarang Wilds 52.3,88.7
	step
		click Tablet of Ren Yun##5
		collect Tablet of Ren Yun##86393 |n
		use Tablet of Ren Yun##86393
		learn Four Senses Brew##126654 |goto Kun-Lai Summit 44.7,52.3
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Enchanting
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Enchanting",[[
		You will learn this when you pick up Enchanting
		learn Runed Copper Rod##7421
	step
		You will learn this when you pick up Enchanting
		learn Enchant Bracer - Minor Health##7418
	step
		You will learn this when you pick up Enchanting
		learn Enchant Bracer - Minor Dodge##7428
	step
		#include "trainer_Enchanting"
		learn Lesser Magic Wand##14293
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Minor Health##7420
	step
		This is a Random World Drop, from creatures level 6-20 and some dungeons.
		|tip We recommend Starter Area Humanoids or Ragefire Chasm for grinding.
		learn Enchant Chest - Minor Mana##7443
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Minor Absorption##7426
	step
		talk Kithas##3346
		buy 1 Formula: Minor Wizard Oil##20758 |n
		use Formula: Minor Wizard Oil##20758
		learn Minor Wizard Oil##25124 |goto Orgrimmar 53.2,48.8
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Minor Stamina##7457
	step
		This is a Random World Drop, from creatures level 9-25 and some dungeons
		|tip We recommend Ashenvale or Wailing Caverns for grinding.
		collect 1 Formula: Enchant Bracer - Minor Spirit##6344 |n
		use Formula: Enchant Bracer - Minor Spirit##6344
		learn Enchant Bracer - Minor Spirit##7766
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Lesser Health##7748
	step
		#include "trainer_Enchanting"
		learn Greater Magic Wand##14807
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Minor Protection##7771
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Minor Agility##7779
	step
		This is a Random World Drop, from creatures level 9-25 and some dungeons
		|tip We recommend Azshara or Wailing Caverns for grinding.
		collect 1 Formula: Enchant Bracer - Minor Strength##6347 |n
		use Formula: Enchant Bracer - Minor Strength##6347
		learn Enchant Bracer - Minor Strength##7782
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Chest - Lesser Mana##6346 |n
		use Formula: Enchant Chest - Lesser Mana##6346
		learn Enchant Chest - Lesser Mana##7776 |goto Orgrimmar 53.2,48.8
		You can also purchase this Formula from Lily here: [Silverpine Forest 46.8,40.6]
	step
		This is a Random World Drop, from creatures level 9-25 and some dungeons
		|tip We recommend Azshara or Wailing Caverns for grinding.
		collect 1 Formula: Enchant Weapon - Minor Beastslayer##6348 |n
		use Formula: Enchant Weapon - Minor Beastslayer##6348
		learn Enchant Weapon - Minor Beastslayer##7786
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Minor Striking##7788
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Chest - Lesser Mana##6346 |n
		use Formula: Enchant Chest - Lesser Mana##6346
		learn Enchant Chest - Lesser Mana##7776 |goto Orgrimmar 53.2,48.8
		You can also purchase this Formula from Lily here: [Silverpine Forest 46.8,40.6]
	step
		This is a Random World Drop, from creatures level 11-26 and some dungeons
		|tip We recommend Azshara or Wailing Caverns for grinding.
		collect 1 Formula: Enchant Weapon - Minor Beastslayer##6348 |n
		use Formula: Enchant Weapon - Minor Beastslayer##6348
		learn Enchant Weapon - Minor Beastslayer##7786
	step
		This is a Random World Drop, from creatures level 15-30 and some dungeons
		|tip We recommend Azshara or Wailing Caverns for grinding.
		collect 1 Formula: Enchant 2H Weapon - Lesser Spirit##11038 |n
		use Formula: Enchant 2H Weapon - Lesser Spirit##11038
		learn Enchant 2H Weapon - Lesser Spirit##13380
	step
		talk Kithas##3346
		buy 1 Formula: Enchant 2H Weapon - Lesser Intellect##6349 |n
		use Formula: Enchant 2H Weapon - Lesser Intellect##6349
		learn Enchant 2H Weapon - Lesser Intellect##7793 |goto Orgrimmar 53.2,48.8
		You can also purchase this Formula from Leo Sam here: [Silverpine Forest 53.8,82.2]
		You can also purchase this Formula from Nata Dawnstrider here: [Thunder Bluff 45.0,38.6]
	step
		#include "trainer_Enchanting"
		learn Enchant 2H Weapon - Minor Impact##7745
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Minor Stamina##13378
	step
		This is a Random World Drop, from creatures level 15-30 and some dungeons
		|tip We recommend Azshara or Blackfathom Deeps for grinding.
		collect 1 Formula: Enchant 2H Weapon - Lesser Spirit##11038 |n
		learn Enchant 2H Weapon - Lesser Spirit##13380
	step
		talk Kulwia##12043
		buy 1 Formula: Enchant Cloak - Minor Agility##11039 |n
		use Formula: Enchant Cloak - Minor Agility##11039
		learn Enchant Cloak - Minor Agility##13419 |goto Stonetalon Mountains 48.6,61.6
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Lesser Protection##13421
	step
		This is a Random World Drop, from creatures level 15-30 and some dungeons
		|tip We recommend Wetlands or Blackfathom Deeps for grinding.
		collect 1 Formula: Enchant Shield - Lesser Protection##11081 |n
		learn Enchant Shield - Lesser Protection##13464
	step
		This is a Random World Drop, from creatures level 15-30 and some dungeons
		|tip We recommend Azshara or Blackfathom Deeps for grinding.
		collect 1 Formula: Enchant Bracer - Lesser Spirit##6375 |n
		learn Enchant Bracer - Lesser Spirit##7859
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Health##7857
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Minor Stamina##7863
	step
		talk Nata Dawnstrider##3012
		buy 1 Formula: Enchant Boots - Minor Agility##6377 |n
		learn Enchant Boots - Minor Agility##7867 |goto Thunder Bluff 45.0,38.6
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Lesser Stamina##13501
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Lesser Spirit##13485
	step
		talk Kulwia##12043
		collect 1 Formula: Enchant Bracer - Lesser Strength##11101 |n
		use Formula: Enchant Bracer - Lesser Strength##11101
		learn Enchant Bracer - Lesser Strength##13536 |goto Stonetalon Mountains 48.6,61.6
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Lesser Absorption##13538
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Lesser Striking##13503
	step
		#include "trainer_Enchanting"
		learn Enchant 2H Weapon - Lesser Impact##13529
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Mana##13607
	step
		kill Torn Fin Tidehunter##2377+, Torn Fin Oracle##2376+, Torn Fin Coastrunner##2375+, Torn Fin Muckdweller##2374+
		collect 1 Formula: Enchant Gloves - Fishing##11152 |n
		use Formula: Enchant Gloves - Fishing##11152
		learn Enchant Gloves - Fishing##13620 |goto Hillsbrad Foothills 35.6,81.8
	step
		This is a Random Drop from Ashenvale. Creatures level 19-25 have a chance of dropping this Formula
		collect 1 Formula: Enchant Gloves - Herbalism##78343 |n
		use Formula: Enchant Gloves - Herbalism##78343
		learn Enchant Gloves - Herbalism##13617
	step
		This Formula may no longer be in the game however it used to drop off these mobs
		|tip You might be able to find this on the AH.
		kill Dark Iron Demolitionist##1054+, Dark Iron Tunneler##1053+, Dark Iron Saboteur##1052+, Dark Iron Dwarf##1051+
		collect 1 Formula: Enchant Gloves - Mining##11150 |n
		use Formula: Enchant Gloves - Mining##11150
		learn Enchant Gloves - Mining##13612
	step
		talk Kithas##3346
		collect 1 Formula: Minor Mana Oil##20752 |n
		use Formula: Minor Mana Oil##20752
		learn Minor Mana Oil##25125 |goto Orgrimmar 53.2,48.8
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Lesser Intellect##13622
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Minor Stats##13626
	step
		#include "trainer_Enchanting"
		learn Lesser Mystic Wand##14809
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Defense##13635
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Lesser Stamina##13631
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Lesser Agility##13637
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Greater Health##13640
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Spirit##13642
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Lesser Stamina##13644
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Lesser Dodge##13646
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Stamina##13648
	step
		#include "trainer_Enchanting"
		learn Greater Mystic Wand##14810
	step
		This is a Random World Drop, from creatures level 25-40 and some dungeons
		|tip We recommend Maraudon or Uldaman for grinding.
		collect 1 Formula: Enchant Weapon - Lesser Beastslayer##11164 |n
		use Formula: Enchant Weapon - Lesser Beastslayer##11164
		learn Enchant Weapon - Lesser Beastslayer##13653
	step
		This is a Random World Drop, from creatures level 25-40 and some dungeons
		|tip We recommend Maraudon or Uldaman for grinding.
		collect 1 Formula: Enchant Weapon - Lesser Elemental Slayer##11165 |n
		use Formula: Enchant Weapon - Lesser Elemental Slayer##11165
		learn Enchant Weapon - Lesser Elemental Slayer##13655
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Strength##133661
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Spirit##13659
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Greater Mana##13663
	step
		This is a Random World Drop, from creatures level 31-46 and some dungeons
		|tip We recommend Eastern Plaguelands or Uldaman for grinding.
		collect 1 Formula: Enchant Boots - Lesser Spirit##11167 |n
		use Formula: Enchant Boots - Lesser Spirit##11167
		learn Enchant Boots - Lesser Spirit##13687
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		use Smokywood Pastures Special Gift##17726 |only if itemcount(17726) >= 1
		use Ticking Present##21327 |only if itemcount(21327) >= 1
		collect 1 Formula: Enchant Weapon - Winter's Might##17725 |n
		use Formula: Enchant Weapon - Winter's Might##17725
		learn Enchant Weapon - Winter's Might##21931
	step
		This is a Random World Drop, from creatures level 31-45 and some dungeons
		|tip We recommend Eastern Plaguelands or Dire Maul for grinding.
		collect 1 Formula: Enchant Shield - Lesser Parry##11168 |n
		use Formula: Enchant Shield - Lesser Parry##11168
		learn Enchant Shield - Lesser Parry##13689
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Striking##13693
	step
		talk Kithas##3346
		buy 1 Formula: Lesser Wizard Oil##20753 |n
		use Formula: Lesser Wizard Oil##20753
		learn Lesser Wizard Oil##25126 |goto Orgrimmar 53.2,48.8
	step
		#include "trainer_Enchanting"
		learn Enchant 2H Weapon - Impact##13695
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Lesser Stats##13700
	step
		kill Witherbark Headhunter##2556+, Witherbark Berserker##2558+, Witherbark Shadow Hunter##2557+
		collect 1 Formula: Enchant Gloves - Skinning##11166 |n
		use Formula: Enchant Gloves - Skinning##11166
		learn Enchant Gloves - Skinning##13698 |goto Arathi Highlands 63.6,84.2
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Greater Defense##13746
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Intellect##13822
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Agility##13815
	step
		This is a Random World Drop, from creatures level 31-51 and some dungeons
		|tip We recommend Dire Maul and Razorfen Downs for grinding.
		collect 1 Formula: Enchant Shield - Stamina##11202 |n
		use Formula: Enchant Shield - Stamina##11202
		learn Enchant Shield - Stamina##13817
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Stamina##13836
	step
		kill Venture Co. Strip Miner##674
		collect 1 Formula: Enchant Gloves - Advanced Mining##11203 |n
		use Formula: Enchant Gloves - Advanced Mining##11203
		learn Enchant Gloves - Advanced Mining##13841 |goto Northern Stranglethorn 54.0,75.6
	step
		This is a Random World Drop, from creatures level 28-50 and some dungeons
		|tip We recommend Strathoolme and Eastern Plaguelands for grinding.
		collect 1 Formula: Enchant Bracer - Greater Spirit##11204 |n
		use Formula: Enchant Bracer - Greater Spirit##11204
		learn Enchant Bracer - Greater Spirit##13846
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Superior Health##13858
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Lesser Accuracy##63746
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Minor Speed##13890
	step
		This is a Random drop from NPC's in Tanaris from creatures level 44-50
		collect 1 Formula: Enchant Cloak - Lesser Agility##71714 |n
		use Formula: Enchant Cloak - Lesser Agility##71714
		learn Enchant Cloak - Lesser Agility##13882
	step
		This Formula is rumored to not drop anymore, but it used to drop from random NPC's in Swamp of Sarrows
		collect 1 Formula: Enchant Gloves - Advanced Herbalism##11205 |n
		use Formula: Enchant Gloves - Advanced Herbalism##11205
		learn Enchant Gloves - Advanced Herbalism##13868
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Strength##13887
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Superior Mana##13917
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Greater Spirit##13905
	step
		This is a Random World Drop, from creatures level 33-55 and some dungeons
		|tip We recommend Tanaris or Zul'Farrak for grinding.
		collect 1 Formula: Enchant Weapon - Demonslaying##11208 |n
		use Formula: Enchant Weapon - Demonslaying##11208
		learn Enchant Weapon - Demonslaying##13915
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Agility##13935
	step
		talk Banalash##989
		collect 1 Formula: Enchant Bracer - Dodge##11223 |n
		use Formula: Enchant Bracer - Dodge##11223
		learn Enchant Bracer - Dodge##13931 |goto Swamp of Sorrows 46.6,57.0
	step
		#include "trainer_Enchanting"
		learn Enchant 2H Weapon - Greater Impact##13937
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Greater Strength##13939
	step
		This is a Random World Drop, from creatures level 40-55 and some dungeons
		|tip We recommend Blackrock Depths or Zul'Farrak for grinding.
		collect 1 Formula: Enchant Bracer - Greater Stamina##11225 |n
		use Formula: Enchant Bracer - Greater Stamina##11225
		learn Enchant Bracer - Greater Stamina##13945
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Stats##13941
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Greater Striking##13943
	step
		#include "trainer_Enchanting"
		learn Enchanted Leather##17181
	step
		#include "trainer_Enchanting"
		learn Enchanted Thorium Bar##17180
	step
		talk Kania##15419
		buy 1 Formula: Lesser Mana Oil##20754 |n
		use Formula: Lesser Mana Oil##20754
		learn Lesser Mana Oil##25127 |goto Silithus 55.6,37.0
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Minor Haste##13948
	step
		This is a Random World Drop, from creatures level 41-56 and some dungeons
		|tip We recommend Blackrock Depths or Blackwing Lair for grinding.
		collect 1 Formula: Enchant Gloves - Riding Skill##11226 |n
		use Formula: Enchant Gloves - Riding Skill##11226
		learn Enchant Gloves - Riding Skill##13947
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Greater Intellect##20008
	step
		This is a Random World Drop, from creatures level 46-60 and some dungeons
		|tip We recommend Silithus or Sunken Temple for grinding.
		collect 1 Formula: Enchant Boots - Greater Stamina##16215 |n
		use Formula: Enchant Boots - Greater Stamina##16215
		learn Enchant Boots - Greater Stamina##20020
	step
		talk Lord Roccor##9025
		collect 1 Formula: Smoking Heart of the Mountain##45050 |n
		use Formula: Smoking Heart of the Mountain##45050
		learn Smoking Heart of the Mountain##15596 |goto Blackrock Depths/1 56.6,60.6
	step
		talk Daniel Bartlett##4561
		buy 1 Formula: Enchant Shield - Greater Stamina##16217 |n
		use Formula: Enchant Shield - Greater Stamina##16217
		learn Enchant Shield - Greater Stamina##20017 |goto Undercity 64.8,38.2
	step
		talk Pyromancer Loregrain##9024
		collect 1 Formula: Enchant Weapon - Fiery Weapon##11207 |n
		use Formula: Enchant Weapon - Fiery Weapon##11207
		learn Enchant Weapon - Fiery Weapon##13898 |goto Blackrock Depths 54.6,95.8
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Felwood or Blackrock Depths for grinding.
		collect 1 Formula: Enchant Bracer - Superior Spirit##16218 |n
		use Formula: Enchant Bracer - Superior Spirit##16218
		learn Enchant Bracer - Superior Spirit##20009
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Greater Agility##20012
	step
		talk Kania##15419
		buy 1 Formula: Wizard Oil##20755 |n
		use Formula: Wizard Oil##20755
		learn Wizard Oil##25128 |goto Silithus 55.6,37.0
	step
		This is a Random World Drop, from creatures level 45-60 and some dungeons
		|tip We recommend Azshara or Sunken Temple for grinding.
		collect 1 Formula: Enchant Boots - Spirit##16220 |n
		use Formula: Enchant Boots - Spirit##16220
		learn Enchant Boots - Spirit##20024
	step
		talk Qia##11189
		buy 1 Formula: Enchant Chest - Major Health##16221 |n
		use Formula: Enchant Chest - Major Health##16221
		learn Enchant Chest - Major Health##20026 |goto Winterspring 59.6,49.2
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Vitality##20016
	step
		talk Lorelae Wintersong##12022
		buy 1 Formula: Enchant Cloak - Superior Defense##16224 |n
		use Formula: Enchant Cloak - Superior Defense##16224
		learn Enchant Cloak - Superior Defense##20015 |goto Moonglade 48.6,40.2
	step
		kill Anguished Highborne##7524+
		collect 1 Formula: Enchant Weapon - Icy Chill##16223 |n
		use Formula: Enchant Weapon - Icy Chill##16223
		learn Enchant Weapon - Icy Chill##20029 |goto Winterspring 50.6,53.2
	step
		talk Meilosh##11557
		|tip You must be Friendly with Timbermaw Hold to purchase this Formula.
		buy 1 Formula: Enchant 2H Weapon - Agility##22392 |n
		use Formula: Enchant 2H Weapon - Agility##22392
		learn Enchant 2H Weapon - Agility##27837 |goto Felwood 64.8,5.2
	step
		talk Meilosh##11557
		|tip You must be Honored with Timbermaw Hold to purchase this Formula.
		buy 1 Formula: Enchant Weapon - Agility##19445 |n
		use Formula: Enchant Weapon - Agility##19445
		learn Enchant Weapon - Agility##23800 |goto Felwood 64.8,5.2
	step
		talk Quartermaster Miranda Breechlock##11536
		|tip You must be Honored with Argent Crusade to purchase this Formula.
		buy 1 Formula: Enchant Bracer - Mana Regeneration##19446 |n
		use Formula: Enchant Bracer - Mana Regeneration##19446
		learn Enchant Bracer - Mana Regeneration##23801 |goto 75.8,54.0
		You can also purchase this Plan from Argent Quartermaster Lightspark here: [Western Plaguelands 42.8,83.8]
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Major Mana##20028
	step
		talk Lokhtos Darkbargainer##12944
		buy 1 Formula: Enchant Weapon - Strength##19444 |n
		use Formula: Enchant Weapon - Strength##19444
		learn Enchant Weapon - Strength##23799 |goto Blackrock Depths/2 50.6,59.2
	step
		This is a drop from Blackhand Elite in Upper Blackrock Spire
		kill Blackhand Elite##10317+
		collect 1 Formula: Enchant 2H Weapon - Superior Impact##16247 |n
		use Formula: Enchant 2H Weapon - Superior Impact##16247
		learn Enchant 2H Weapon - Superior Impact##20030
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Agility##20023
	step
		kill Deadwind Warlock##7372+
		collect 1 Formula: Enchant Bracer - Superior Strength##16246 |n
		use Formula: Enchant Bracer - Superior Strength##16246
		learn Enchant Bracer - Superior Strength##20010 |goto Deadwind Pass 63.4,74.8
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Greater Strength##20013
	step
		kill Thuzadin Shadowcaster##10398+
		collect 1 Formula: Enchant Weapon - Unholy##16248 |n
		use Formula: Enchant Weapon - Unholy##16248
		learn Enchant Weapon - Unholy Weapon##20033 |goto Stratholme/2 65.0,48.6
		You can also get this from Bonechewers in Terokkar here: [Terokkar Forest 67.6,53.6]
	step
		#include "trainer_Enchanting"
		learn Nexus Transformation##42613
	step
		This plan is not available in the game anymore
		learn Brilliant Mana Oil##25130
	step
		This plan is not available in the game anymore
		learn Brilliant Wizard Oil##25129
	step
		kill Risen Sorcerer##10422+
		collect 1 Formula: Enchant 2H Weapon - Major Intellect##16249 |n
		use Formula: Enchant 2H Weapon - Major Intellect##16249
		learn Enchant 2H Weapon - Major Intellect##20036 |goto Stratholme/1 21.6,57.6
	step
		kill Scholomance Acolyte##58757+, Scholomance Adept##10469+
		collect 1 Formula: Enchant 2H Weapon - Major Spirit##16255 |n
		use Formula: Enchant 2H Weapon - Major Spirit##16255
		learn Enchant 2H Weapon - Major Spirit##20035 |goto Scholomance 55.4,59.4
	step
		talk Argent Quartermaster Hasana##10856
		buy 1 Formula: Enchant Bracer - Healing Power##19447 |n
		use Formula: Enchant Bracer - Healing Power##19447
		learn Enchant Bracer - Healing Power##23802 |goto Tirisfal Glades 83.2,68.0
		You can also purchase this from Quartermaster Miranda Breechlock here: [Eastern Plaguelands 75.8,54.0]
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Lesser Assault##84002
	step
		This is a Random World Drop, from creatures level 40-63 and some dungeons
		|tip We recommend Eastern Plaguelands or Molten Core for grinding.
		collect 1 Formula: Enchant Bracer - Superior Stamina##16251 |n
		use Formula: Enchant Bracer - Superior Stamina##16251
		learn Enchant Bracer - Superior Stamina##20011
	step
		This is a Random World Drop, from creatures level 60-72 and some dungeons
		|tip We recommend Terokkar Forest or Sunwell Plateau for grinding.
		collect 1 Formula: Enchant Chest - Greater Stats##16253 |n
		use Formula: Enchant Chest - Greater Stats##16253
		learn Enchant Chest - Greater Stats##20025
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Restore Mana Prime##33991
	step
		talk Nakodu##21655
		|tip You must be Exalted with Lower City to purchase this Formula.
		buy 1 Formula: Enchant Cloak - Dodge##33148 |n
		use Formula: Enchant Cloak - Dodge##33148
		learn Enchant Cloak - Dodge##25086 |goto Shattrath City 62.6,69.0
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Exalted with Cenarion Expedition to purchase this Forumla.
		buy 1 Formula: Enchant Cloak - Stealth##33149 |n
		use Formula: Enchant Cloak - Stealth##33149
		learn Enchant Cloak - Stealth##25083 |goto Zangarmarsh 79.2,63.8
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Exalted with Thrallmar to purchase this Formula.
		buy 1 Formula: Enchant Cloak - Subtlety##33151 |n
		use Formula: Enchant Cloak - Subtlety##33151
		learn Enchant Cloak - Subtlety##25084 |goto Hellfire Peninsula 54.8,37.8
	step
		This is a Boss drop from the Raid Temple of Ahn'Qiraj
		collect 1 Formula: Enchant Gloves - Fire Power##20729 |n
		use Formula: Enchant Gloves - Fire Power##20729
		learn Enchant Gloves - Fire Power##25078
	step
		This is a Boss drop from the Raid Temple of Ahn'Qiraj
		collect 1 Formula: Enchant Gloves - Frost Power##20728 |n
		use Formula: Enchant Gloves - Frost Power##20728
		learn Enchant Gloves - Frost Power##25074
	step
		This is a Boss drop from the Raid Temple of Ahn'Qiraj
		collect 1 Formula: Enchant Gloves - Healing Power##20730 |n
		use Formula: Enchant Gloves - Healing Power##20730
		learn Enchant Gloves - Healing Power##25079
	step
		This is a Boss drop from the Raid Temple of Ahn'Qiraj
		collect 1 Formula: Enchant Gloves - Shadow Power##20727 |n
		use Formula: Enchant Gloves - Shadow Power##20727
		learn Enchant Gloves - Shadow Power##25073
	step
		talk Alurmi##21643
		|tip You must be Exalted with Keepers of Time to purchase this Formula.
		buy 1 Formula: Enchant Gloves - Superior Agility##33152 |n
		use Formula: Enchant Gloves - Superior Agility##33152
		learn Enchant Gloves - Superior Agility##25080 |goto Tanaris 63.0,57.2
	step
		talk Almaador
		buy 1 Formula: Enchant Gloves - Threat##33153 |n
		use Formula: Enchant Gloves - Threat##33153
		learn Enchant Gloves - Threat##25072 |goto Shattrath City 51.6,41.6
	step
		talk Scarlet Archmage##9451
		collect 1 Formula: Enchant Weapon - Crusader##16252 |n
		use Formula: Enchant Weapon - Crusader##16252
		learn Enchant Weapon - Crusader##20034 |goto Eastern Plaguelands 81.6,78.2
	step
		This is a Boss drop from the Raid Molten Core
		collect 1 Formula: Enchant Weapon - Healing Power##18260 |n
		use Formula: Enchant Weapon - Healing Power##18260
		learn Enchant Weapon - Healing Power##22750
	step
		This Formula may not be available through the game anymore
		collect 1 Formula: Enchant Weapon - Lifestealing##16254 |n
		use Formula: Enchant Weapon - Lifestealing##16254
		learn Enchant Weapon - Lifestealing##20032
	step
		talk Lokhtos Darkbargainer##12944
		buy 1 Formula: Enchant Weapon - Mighty Intellect##19449 |n
		use Formula: Enchant Weapon - Mighty Intellect##19449
		learn Enchant Weapon - Mighty Intellect##23804 |goto Blackrock Depths/2 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy 1 Formula: Enchant Weapon - Mighty Spirit##19448 |n
		use Formula: Enchant Weapon - Mighty Spirit##19448
		learn Enchant Weapon - Mighty Spirit##23803 |goto Blackrock Depths/2 50.6,59.2
	step
		This is a Boss drop from the Raid Molten Core
		collect 1 Formula: Enchant Weapon - Spellpower##18259 |n
		use Formula: Enchant Weapon - Spellpower##18259
		learn Enchant Weapon - Spellpower##22749
	step
		kill Spirestone Warlord##9216+
		collect 1 Formula: Enchant Weapon - Superior Striking##16250 |n
		use Formula: Enchant Weapon - Superior Striking##16250
		learn Enchant Weapon - Superior Striking##20031 |goto Blackrock Spire/6 49.7,60.5
	step
		This is a Random World Drop, from creatures level 60-72 and some dungeons
		|tip We recommend Shattered Halls for grinding.
		collect 1 Formula: Enchant Boots - Vitality##22542 |n
		use Formula: Enchant Boots - Vitality##22542
		learn Enchant Boots - Vitality##27948
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Brawn##27899
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Major Intellect##34001
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Blasting##33993
	step
		talk Lyna##16635
		buy 1 Formula: Superior Mana Oil##22562 |n
		use Formula: Superior Mana Oil##22562
		learn Superior Mana Oil##28016 |goto Silvermoon City 70.0,24.6
		You can also purchase this Formula from Madame Ruby here: [Shattrath City 63.6,70.0]
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Greater Agility##34004
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Major Armor##27961
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Assault##33996
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Lesser Dodge##27944
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Stats##27905
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Exceptional Health##27957
	step
		kill Ethereal Priest##18317
		collect 1 Formula: Enchant Boots - Fortitude##22543 |n
		use Formula: Enchant Boots - Fortitude##22543
		learn Enchant Boots - Fortitude##27950 |goto Mana-Tombs 60.4,37.8
	step
		kill Ethereum Nullifier##22822, Ethereum Jailor##23008
		collect 1 Formula: Enchant Bracer - Greater Dodge##22530 |n
		use Formula: Enchant Bracer - Greater Dodge##22530
		learn Enchant Bracer - Greater Dodge##27906 |goto Netherstorm 66.2,48.0
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Major Spirit##33990
	step
		#include "trainer_Enchanting"
		learn Prismatic Sphere##28027
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Friendly with Thrallmar to purchase this Formula.
		buy 1 Formula: Enchant Bracer - Superior Healing##24000 |n
		use Formula: Enchant Bracer - Superior Healing##24000
		learn Enchant Bracer - Superior Healing##27911 |goto Hellfire Peninsula 54.8,37.8
	step
		talk Aged Dalaran Wizard##18664
		|tip He walks along this road, some searching may be required.
		buy 1 Formula: Enchant Shield - Intellect##22539 |n
		use Formula: Enchant Shield - Intellect##22539
		learn Enchant Shield - Intellect##27945 |goto Old Hillsbrad Foothills 39.8,55.8
	step
		talk Madame Ruby##19663
		buy 1 Formula: Enchant Shield - Major Stamina##28282 |n
		use Formula: Enchant Shield - Major Stamina##28282
		learn Enchant Shield - Major Stamina##34009 |goto Shattrath City 63.6,70.0
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Resilience##44383
	step
		talk Lyna##16635
		buy 1 Formula: Large Prismatic Shard##22565 |n
		use Formula: Large Prismatic Shard##22565
		learn Large Prismatic Shard##28022 |goto Silvermoon City 70.0,24.6
		You can also purchase this Formula from Madame Ruby here: [Shattrath City 63.6,70.0]
	step
		#include "trainer_Enchanting"
		learn Small Prismatic Shard##42615
	step
		talk Paulsta'ats##23007
		buy 1 Formula: Enchant Cloak - PvP Power##28274 |n
		use Formula: Enchant Cloak - PvP Power##28274
		learn Enchant Cloak - PvP Power##34003 |goto Nagrand 30.5,56.9
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Old Hillsbrad Foothils and Black Temple for grinding.
		collect 1 Formula: Enchant Bracer - Restore Mana Prime##22532 |n
		use Formula: Enchant Bracer - Restore Mana Prime##22532
		learn Enchant Bracer - Restore Mana Prime##21913
	step
		talk Lyna##16635
		buy 1 Formula: Superior Wizard Oil##22563 |n
		use Formula: Superior Wizard Oil##22563
		learn Superior Wizard Oil##28019 |goto Silvermoon City 70.0,24.6
		You can also purchase this Formula from Madame Ruby here: [Shattrath City 63.6,70.0]
	step
		kill Raging Skeleton##18521
		collect 1 Formula: Enchant Boots - Dexterity##22544 |n
		learn Enchant Boots - Dexterity##27951 |goto Auchenai Crypts 58.2,88.4
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Major Strength##33995
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend The Arcatraz and Sunwell Plateau for grinding.
		collect 1 Formula: Enchant Shield - Parry##22540 |n
		use Formula: Enchant Shield - Parry##22540
		learn Enchant Shield - Parry##27946
	step
		kill Sunfury Researcher##20136
		collect 1 Formula: Enchant Weapon - Major Intellect##22551 |n
		use Formula: Enchant Weapon - Major Intellect##22551
		learn Enchant Weapon - Major Intellect##27968 |goto Netherstorm 49.0,81.4
	step
		talk Karaaz##20242
		|tip You must be Honored with The Consortium to purchase this Formula.
		buy 1 Formula: Enchant Weapon - Major Striking##22552 |n
		use Formula: Enchant Weapon - Major Striking##22552
		learn Enchant Weapon - Major Striking##27967 |goto Netherstorm 43.6,34.4
		You can also purchase this from Paulsta'ats here: [Nagrand 30.6,57.0]
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Revered with Thrallmar to purchase this Formula.
		buy 1 Formula: Enchant Chest - Exceptional Stats##24003 |n
		use Formula: Enchant Chest - Exceptional Stats##24003
		learn Enchant Chest - Exceptional Stats##27960 |goto Hellfire Peninsula 54.8,37.8
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Blade's Edge Mountains or Shadow Labyrinth for grinding.
		collect 1 Formula: Enchant Chest - Major Resilience##28270 |n
		use Formula: Enchant Chest - Major Resilience##28270
		learn Enchant Chest - Major Resilience##33992
	step
		kill Ahune##25740
		click Ice Chest##1387
		collect 1 Formula: Enchant Weapon - Deathfrost##35498 |n
		use Formula: Enchant Weapon - Deathfrost##35498
		learn Enchant Weapon - Deathfrost##46578 |goto The Slave Pens 30.5,50.5
	step
		talk Apprentice Darius##18255
		|tip You must be Exalted with The Violet Eye to purchase this Formula.
		buy 1 Formula: Enchant Weapon - Greater Agility##33165 |n
		use Formula: Enchant Weapon - Greater Agility##33165
		learn Enchant Weapon - Greater Agility##42620 |goto Deadwind Pass 47.0,75.6
	step
		#include "trainer_Enchanting"
		learn Void Sphere##28028
	step
		kill Shattered Hand Centurion##17465
		collect 1 Formula: Enchant 2H Weapon - Savagery##22554 |n
		use Formula: Enchant 2H Weapon - Savagery##22554
		learn Enchant 2H Weapon - Savagery##27971 |goto The Shattered Halls 37.6,10.6
	step
		kill Coilfang Oracle##17803
		collect 1 Formula: Enchant Bracer - Fortitude##22533 |n
		learn Enchant Bracer - Fortitude##27914 |goto The Steamvault 36.8,24.6
	step
		talk Almaador##21432
		|tip You must be Honored with The Sha'tar to purchase this Formula.
		buy 1 Formula: Enchant Gloves - Major Healing##28273 |n
		use Formula: Enchant Gloves - Major Healing##28273
		learn Enchant Gloves - Major Healing##33999 |goto Shattrath City 51.6,41.6
	step
		talk Almaador##21432
		|tip You must be Honored with The Sha'tar to purchase this Formula.
		buy 1 Formula: Enchant Weapon - Major Healing##28281 |n
		use Formula: Enchant Weapon - Major Healing##28281
		learn Enchant Weapon - Major Healing##34010 |goto Shattrath City 51.6,41.6
	step
		kill Bash'ir Spell-Thief##22242, Bash'ir Arcanist##22243
		collect 1 Formula: Enchant Weapon - Major Spellpower##22555 |n
		use Formula: Enchant Weapon - Major Spellpower##22555
		learn Enchant Weapon - Major Spellpower##27975 |goto Blade's Edge Mountains 52.8,18.8
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Shattered Halls or karazhan for grinding.
		collect 1 Formula: Enchant Weapon - Potency##22553 |n
		use Formula: Enchant Weapon - Potency##22553
		learn Enchant Weapon - Potency##27972
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Exceptional Mana##27958
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Speed##60609
	step
		kill Eredar Deathbringer##20880
		collect 1 Formula: Enchant 2H Weapon - Major Agility##22556 |n
		use Formula: Enchant 2H Weapon - Major Agility##22556
		learn Enchant 2H Weapon - Major Agility##27977 |goto The Arcatraz 33.4,29.6
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Karazhan or Black Temple for grinding.
		collect 1 Formula: Enchant Boots - Boar's Speed##28280 |n
		use Formula: Enchant Boots - Boar's Speed##28280
		learn Enchant Boots - Boar's Speed##34008
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Serpentshrine Cavern or Black Temple for grinding.
		collect 1 Formula: Enchant Boots - Cat's Swiftness##28279 |n
		use Formula: Enchant Boots - Cat's Swiftness##28279
		learn Enchant Boots - Cat's Swiftness##34007
	step
		talk Alurmi##21643
		|tip You must be Honored with Keepers of Time to purchase this Formula.
		buy 1 Formula: Enchant Gloves - Major Spellpower##28272 |n
		use Formula: Enchant Gloves - Major Spellpower##28272
		learn Enchant Gloves - Major Spellpower##33997 |goto Tanaris 63.0,57.2
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Revered with Cenarion Expedition to purchase this Formula.
		buy 1 Formula: Enchant Gloves - Precise Strikes##28271 |n
		use Formula: Enchant Gloves - Precise Strikes##28271
		learn Enchant Gloves - Precise Strikes##33994 |goto Zangarmarsh 79.2,63.8
	step
		talk Alurmi##21643
		|tip You must be Honored with Keepers of Time to purchase this Formula.
		buy 1 Formula: Enchant Ring - Minor Intellect##22536 |n
		use Formula: Enchant Ring - Minor Intellect##22536
		learn Enchant Ring - Minor Intellect##27924 |goto Tanaris 63.0,57.2
	step
		talk Ythyar##17518
		buy 1 Formula: Enchant Ring - Striking##22535 |n
		use Formula: Enchant Ring - Striking##22535
		learn Enchant Ring - Striking##27920 |goto Karazhan/12 43.6,26.6
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Shattered Halls or Black Temple for grinding.
		collect 1 Formula: Enchant Weapon - Battlemaster##22557 |n
		use Formula: Enchant Weapon - Battlemaster##22557
		learn Enchant Weapon - Battlemaster##28004
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend The Mechanar or Black Temple for grinding.
		collect 1 Formula: Enchant Weapon - Spellsurge##22558 |n
		use Formula: Enchant Weapon - Spellsurge##22558
		learn Enchant Weapon - Spellsurge##28003
	step
		kill Bloodmaul Geomancer##19952
		collect 1 Formula: Enchant Bracer - Spellpower##22534 |n
		use Formula: Enchant Bracer - Spellpower##22534
		learn Enchant Bracer - Spellpower##27917 |goto Blade's Edge Mountains 47.2,78.0
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Honored with Shattered Sun Offensive.
		buy 1 Formula: Enchant Chest - Dodge##35500 |n
		use Formula: Enchant Chest - Dodge##35500
		learn Enchant Chest - Dodge##46594 |goto Isle of Quel'Danas 47.2,30.6
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Assault##60616
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Exceptional Spellpower##44592
	step
		kill Phantom Stagehand##16472
		collect 1 Formula: Enchant Boots - Surefooted##22545 |n
		learn Enchant Boots - Surefooted##27954 |goto Karazhan/4 12.6,30.2
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Super Stats##44623
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Honored with Shattered Sun Offensive.
		buy 1 Formula: Void Shatter##34872 |n
		use Formula: Void Shatter##34872
		learn Void Shatter##45765 |goto Isle of Quel'Danas 47.2,30.6
	step
		kill Shade of Aran##16524
		collect 1 Formula: Enchant Weapon - Sunfire##22560 |n
		use Formula: Enchant Weapon - Sunfire##22560
		learn Enchant Weapon - Sunfire##27981 |goto Karazhan/10 70.8,28.8
	step
		kill Priestess Delrissa##14560
		collect 1 Formula: Enchant Cloak - Greater Dodge##35756 |n
		use Formula: Enchant Cloak - Greater Dodge##35756
		learn Enchant Cloak - Greater Dodge##47051 |goto Magisters' Terrace 40.8,56.6
	step
		talk Nakodu##21655
		|tip You must be Honored with Lower City to purchase this Formula.
		buy 1 Formula: Enchant Ring - Stats##22538 |n
		use Formula: Enchant Ring - Stats##22538
		learn Enchant Ring - Stats##27927 |goto Shattrath City 62.6,69.0
	step
		talk Dealer Jadyan##19536
		buy 1 Formula: Enchant Weapon - Executioner##78348 |n
		use Formula: Enchant Weapon - Executioner##78348
		learn Enchant Weapon - Executioner##42974 |goto Netherstorm 44.0,36.6
	step
		kill Moroes##15687
		collect 1 Formula: Enchant Weapon - Mongoose##22559 |n
		use Formula: Enchant Weapon - Mongoose##22559
		learn Enchant Weapon - Mongoose##27984 |goto Karazhan/3 27.8,63.8
	step
		kill Terestian Illhoof##15688
		collect 1 Formula: Enchant Weapon - Soulfrost##22561 |n
		use Formula: Enchant Weapon - Soulfrost##22561
		learn Enchant Weapon - Soulfrost##27982 |goto Karazhan/11 54.6,74.2
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Exceptional Intellect##44555
	step
		kill Indu'le Warrior##26344, Indu'le Mystic##26336, Indu'le Fisherman##26343
		collect 1 Formula: Enchant Gloves - Angler##50406 |n
		use Formula: Enchant Gloves - Angler##50406
		learn Enchant Gloves - Angler##71692 |goto Dragonblight 39.2,65.8
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Assault##60606
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Gatherer##44506
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Greater Potency##60621
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Icewalker##60623
	step
		#include "trainer_Enchanting"
		learn Enchant Staff - Spellpower##62959
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Fortitude##44528
	step
		#include "trainer_Enchanting"
		learn Enchant 2H Weapon - Greater Savagery##44630
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Minor Power##44582
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Greater Spellpower##44635
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Mighty Health##44492
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Superior Agility##44500
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Greater Assault##44513
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Greater Intellect##60653
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Exceptional Spellpower##44629
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Assault##44645
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Lesser Intellect##44636
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Lesser Stamina##59636
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Greater Stats##44616
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Greater Dodge##47766
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Vitality##44584
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Expertise##44484
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Spirit##44508
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Precision##44488
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Exceptional Agility##44633
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Exceptional Spirit##44510
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Chest - Exceptional Resilience##37340 |n
		use Formula: Enchant Chest - Exceptional Resilience##37340
		learn Enchant Chest - Exceptional Resilience##44588 |goto Dalaran 38.8,40.8
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Superior Agility##44589
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Expertise##44598
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Major Agility##44529
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Major Spirit##44593
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Greater Mana Restoration##44509
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Major Agility##60663
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Dodge##44489
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Super Health##47900
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Crusher##60668
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Icebreaker##37344 |n
		use Formula: Enchant Weapon - Icebreaker##37344
		learn Enchant Weapon - Icebreaker##44524 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Lifeward##44494 |n
		use Formula: Enchant Weapon - Lifeward##44494
		learn Enchant Weapon - Lifeward##44576 |goto Dalaran 39.6,41.4
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Earthen Vitality##74189
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Mighty Stats##74191
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Mastey##74132
	step
		talk Vanessa Sellers##32514
		collect 1 Formula: Enchant 2H Weapon - Massacre##44483 |n
		use Formula: Enchant 2H Weapon - Massacre##44483
		learn Enchant 2H Weapon - Massacre##60691 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Scourgebane##44473 |n
		use Formula: Enchant Weapon - Scourgebane##44473
		learn Enchant 2H Weapon - Scourgebane##44595 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Bracer - Greater Assault##44484 |n
		use Formula: Enchant Bracer - Greater Assault##44484
		learn Enchant Bracer - Greater Assault##44575 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Cloak - Greater Speed##44472 |n
		use Formula: Enchant Cloak - Greater Speed##44472
		learn Enchant Cloak - Greater Speed##47898 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Cloak - Mighty Stamina##44471 |n
		use Formula: Enchant Cloak - Mighty Stamina##44471
		learn Enchant Cloak - Mighty Stamina##47672 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Giant Slayer##37339 |n
		use Formula: Enchant Weapon - Giant Slayer##37339
		learn Enchant Weapon - Giant Slayer##44621 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Cloak - Superior Dodge##37347 |n
		use Formula: Enchant Cloak - Superior Dodge##37347
		learn Enchant Cloak - Superior Dodge##44591 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Gloves - Armsman##44485 |n
		use Formula: Enchant Gloves - Armsman##44485
		learn Enchant Gloves - Armsman##44625 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Mighty Spellpower##44487 |n
		use Formula: Enchant Weapon - Mighty Spellpower##44487
		learn Enchant Weapon - Mighty Spellpower##60714 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Superior Potency##44486 |n
		use Formula: Enchant Weapon - Superior Potency##44486
		learn Enchant Weapon - Superior Potency##60707 |goto Dalaran 39.6,41.4
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Speed##74193
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Lesser Power##74192
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Boots - Greater Assault##44490 |n
		use Formula: Enchant Boots - Greater Assault##44490
		learn Enchant Boots - Greater Assault##60763 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Boots - Tuskarr's Vitality##44491 |n
		use Formula: Enchant Boots - Tuskarr's Vitality##44491
		learn Enchant Boots - Tuskarr's Vitality##47901 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Bracer - Superior Spellpower##44498 |n
		use Formula: Enchant Bracer - Superior Spellpower##44498
		learn Enchant Bracer - Superior Spellpower##60767 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Chest - Powerful Stats##44489 |n
		use Formula: Enchant Chest - Powerful Stats##44489
		learn Enchant Chest - Powerful Stats##60692 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Cloak - Shadow Armor##37349 |n
		use Formula: Enchant Cloak - Shadow Armor##37349
		learn Enchant Cloak - Shadow Armor##44631 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Cloak - Wisdom##44488 |n
		use Formula: Enchant Cloak - Wisdom##44488
		learn Enchant Cloak - Wisdom##47899 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Accuracy##44496 |n
		use Formula: Enchant Weapon - Accuracy##44496
		learn Enchant Weapon - Accuracy##59619 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Berserking##44492 |n
		use Formula: Enchant Weapon - Berserking##44492
		learn Enchant Weapon - Berserking##59621 |goto Dalaran 39.6,41.4
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Weapon - Black Magic##44495 |n
		use Formula: Enchant Weapon - Black Magic##44495
		learn Enchant Weapon - Black Magic##59625 |goto Dalaran 39.6,41.4
	step
		#include "trainer_Enchanting"
		learn Abyssal Shatter##69412
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Staff - Greater Spellpower##45059 |n
		use Formula: Enchant Staff - Greater Spellpower##45059
		learn Enchant Staff - Greater Spellpower##62948 |goto Dalaran 39.6,41.4
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Formula: Enchant Weapon - Blade Ward##46027 |n
		use Formula: Enchant Weapon - Blade Ward##46027
		learn Enchant Weapon - Blade Ward##64441
	step
		This Plan is dropped from the Boss NPC's of Ulduar
		collect 1 Formula: Enchant Weapon - Blood Draining##46348 |n
		use Formula: Enchant Weapon - Blood Draining##46348
		learn Enchant Weapon - Blood Draining##64579
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Avalanche##74197
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Mending##74195
	step
		talk Vanessa Sellers##32514
		buy 1 Formula: Enchant Bracer - Major Stamina##44944 |n
		use Formula: Enchant Bracer - Major Stamina##44944
		learn Enchant Bracer - Major Stamina##62256 |goto Dalaran 39.6,41.4
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Haste
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Haste##74198
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Critical Strike##74201
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Stamina##74200
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Intellect##74202
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Protection##74207
	step
		#include "trainer_Enchanting"
		learn Enchant 2H Weapon - Mighty Agility##95471
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Exceptional Strength##74212
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Elemental Slayer##74211
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Agility##74216
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Intellect##74217
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Stamina##74218
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Strength##74215
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Major Agility##74213
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Mighty Resilience##74214
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Greater Expertise##74220
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Hurricane##74223
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Mastery##74226
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Heartsong##74225
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Superior Dodge##74229
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Critical Strike##74230
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Precision##74232
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Exceptional Spirit##74231
	step
		#include "trainer_Enchanting"
		learn Mysterious Essence##116497
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Protection##74234
	step
		#include "trainer_Enchanting"
		learn Enchant Off-Hand - Superior Intellect##74235
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Mastery##104338
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Superior Critical Strike##104404
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Precision##74236
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Exceptional Spirit##74237
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Mastery##74238
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Greater Expertise##74239
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Greater Intellect##74240
	step
		#include "trainer_Enchanting"
		learn Maelstrom Shatter##104698
	step
		This is a Random World Drop, from creatures level 80-90 in some dungeons and raids.
		|tip We recommend Uldum and Twilight Highlands for grinding.
		collect 1 Formula: Enchant Bracer - Agility##68787 |n
		use Formula: Enchant Bracer - Agility##68787
		learn Enchant Bracer - Agility##96264
	step
		This is a Random World Drop, from creatures level 80-90 in some dungeons and raids.
		|tip We recommend Mount Hyjal and Twilight Highlands for grinding.
		collect 1 Formula: Enchant Bracer - Major Strength##68788 |n
		use Formula: Enchant Bracer - Major Strength##68788
		learn Enchant Bracer - Major Strength##96261
	step
		This is a Random World Drop, from creatures level 80-90 in some dungeons and raids.
		|tip We recommend Mount Hyjal and Twilight Highlands for grinding.
		collect 1 Formula: Enchant Bracer - Mighty Intellect##68789 |n
		use Formula: Enchant Bracer - Mighty Intellect##68789
		learn Enchant Bracer - Mighty Intellect##96262
	step
		talk Kithas##3346
		|tip This is a Horde only Formula and may sell well on the Neutral AH.
		buy 1 Formula: Enchanted Lantern##67308 |n
		use Formula: Enchanted Lantern##67308
		learn Enchanted Lantern##93841 |goto Orgrimmar 53.2,48.8
	step
		This is an Alliance only Formula
		|tip You may be able to purchase this from the Neutral AH.
		buy 1 Formula: Magic Lamp##67312 |n
		use Formula: Magic Lamp##67312
		learn Magic Lamp##93843 |n
		confirm
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Boots - Assassin's Step##64411 |n
		use Formula: Enchant Boots - Assassin's Step##64411
		learn Enchant Boots - Assassin's Step##74252 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Boots - Lavawalker##64412 |n
		use Formula: Enchant Boots - Lavawalker##64412
		learn Enchant Boots - Lavawalker##74253 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Bracer - Greater Critical Strike##52738 |n
		use Formula: Enchant Bracer - Greater Critical Strike##52738
		learn Enchant Bracer - Greater Critical Strike##74248 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Bracer - Greater Speed##64413 |n
		use Formula: Enchant Bracer - Greater Speed##64413
		learn Enchant Bracer - Greater Speed##74256 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Chest - Greater Stamina##52740 |n
		use Formula: Enchant Chest - Greater Stamina##52740
		learn Enchant Chest - Greater Stamina##74251 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Chest - Peerless Stats##52739 |n
		use Formula: Enchant Chest - Peerless Stats##52739
		learn Enchant Chest - Peerless Stats##74250 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Cloak - Greater Critical Strike##52737 |n
		use Formula: Enchant Cloak - Greater Critical Strike##52737
		learn Enchant Cloak - Greater Critical Strike##74247 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Gloves - Greater Mastery##64414 |n
		use Formula: Enchant Gloves - Greater Mastery##64414
		learn Enchant Gloves - Greater Mastery##74255 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Gloves - Mighty Strength##64415 |n
		use Formula: Enchant Gloves - Mighty Strength##64415
		learn Enchant Gloves - Mighty Strength##74254 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Weapon - Landslide##52736 |n
		use Formula: Enchant Weapon - Landslide##52736
		learn Enchant Weapon - Landslide##74246 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Weapon - Power Torrent##52733 |n
		learn Enchant Weapon - Power Torrent##74242 |goto Orgrimmar 53.2,48.8
	step
		talk Kithas##3346
		buy 1 Formula: Enchant Weapon - Windwalk##52735 |n
		use Formula: Enchant Weapon - Windwalk##52735
		learn Enchant Weapon - Windwalk##74244 |goto Orgrimmar 53.2,48.8
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Precision##104408
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Major Dodge##104385
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Mighty Spirit##104393
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Super Resilience##104392
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Superior Intellect##104403
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Greater Haste##104416
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Elemental Force##104430
	step
		#include "trainer_Enchanting"
		learn Ethereal Shard##116498
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Greater Agility##103461
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Greater Intellect##103462
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Greater Stamina##103463
	step
		#include "trainer_Enchanting"
		learn Enchant Ring - Greater Strength##103465
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Blurred Speed##104409
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Greater Haste##104407
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Superior Stamina##104397
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Accuracy##104398
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Superior Expertise##104417
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Windsong##104425
	step
		#include "trainer_Enchanting"
		learn Enchant Boots - Pandaren's Step##10414
	step
		#include "trainer_Enchanting"
		learn Enchant Chest - Glorious Stats##104395
	step
		#include "trainer_Enchanting"
		learn Enchant Cloak - Greater Protection##104401
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Super Strength##104419
	step
		#include "trainer_Enchanting"
		learn Enchant Gloves - Superior Mastery##104420
	step
		#include "trainer_Enchanting"
		learn Enchant Off-Hand - Major Intellect##104445
	step
		#include "trainer_Enchanting"
		learn Enchant Shield - Greater Parry##130758
	step
		#include "trainer_Enchanting"
		learn Enchant Weapon - Colossus##104440
	step
		#include "trainer_Enchanting"
		learn Ethereal Shatter##118238
	step
		#include "trainer_Enchanting"
		learn Sha Crystal##116499
	step
		#include "trainer_Enchanting"
		learn Sha Shatter##118239
	step
		#include "trainer_Enchanting"
		learn Enchant Bracer - Exceptional Strength##104390
	step
		talk Sage Lotusbloom##64001
		|tip You must be Revered with The August Celestials to purchase this Formula.
		buy 1 Formula: Enchant Bracer - Exceptional Strength##84561 |n
		use Formula: Enchant Bracer - Exceptional Strength##84561
		learn Enchant Bracer - Exceptional Strength##104390 |goto Shrine of Two Moons 62.6,23.2
	step
		talk Sage Lotusbloom##64001
		|tip You must be Revered with The August Celestials to purchase this Formula.
		buy 1 Formula: Enchant Bracer - Greater Agility##84557 |n
		use Formula: Enchant Bracer - Greater Agility##84557
		learn Enchant Bracer - Greater Agility##104391 |goto Shrine of Two Moons 62.6,23.2
	step
		talk Sage Lotusbloom##64001
		|tip You must be Revered with The August Celestials to purchase this Formula.
		buy 1 Formula: Enchant Bracer - Super Intellect##84559 |n
		use Formula: Enchant Bracer - Super Intellect##84559
		learn Enchant Bracer - Super Intellect##104389 |goto Shrine of Two Moons 62.6,23.2
	step
		talk Rushi the Fox##64595
		|tip You must be Revered with Shado-Pan to purchase this Formula.
		buy 1 Formula: Enchant Weapon - Dancing Steel##84584 |n
		use Formula: Enchant Weapon - Dancing Steel##84584
		learn Enchant Weapon - Dancing Steel##104434 |goto Townlong Steppes 48.8,70.6
	step
		talk Rushi the Fox##64595
		|tip You must be Revered with Shado-Pan to purchase this Formula.
		buy 1 Formula: Enchant Weapon - Jade Spirit##84583 |n
		use Formula: Enchant Weapon - Jade Spirit##84583
		learn Enchant Weapon - Jade Spirit##104427 |goto Townlong Steppes 48.8,70.6
	step
		talk Rushi the Fox##64595
		|tip You must be Revered with Shado-Pan to purchase this Formula.
		buy 1 Formula: Enchant Weapon - River's Song##84580 |n
		use Formula: Enchant Weapon - River's Song##84580
		learn Enchant Weapon - River's Song##104442 |goto Townlong Steppes 48.8,70.6
]])

ZygorGuidesViewer:RegisterInclude("Enchanting_600-700",[[
// ----------
// 600-700
// ----------
// TRAIN: Draenor Master Enchanting
	step
		Before you continue, open your Enchanting window to detect your profession |cast Enchanting##7411
		skillmax Enchanting,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _Enchanter's Study_ to a _Small Plot_
		Build your Enchanter's Study |havebuilding Enchanting
	step
		#include "H_Garrison_SmallBuilding",action="talk Yukla Greenshadow##79821",building="Enchanting"
		buy 1 Draenor Enchanting##111922 |condition skillmax("Enchanting")>=700 or itemcount(111922) >= 1
	step
		use Draenor Enchanting##111922
		skillmax Enchanting,700
	step
		map Frostfire Ridge/0
		path follow loose; loop on; ants curved
		path	60.5,78.9	61.8,81.5	63.9,83.1
		path	65.7,82.0	67.4,80.7	67.6,75.3
		path	70.0,70.3	72.9,70.0	71.3,60.8
		path	69.8,66.1	68.8,68.5	66.3,70.5
		path	65.3,76.7	62.3,77.9
		kill Frostwing Screecher##79643+
		As you collect green items, Disenchant them to gather Draenic Dust |cast Disenchant##13262
		collect 1380 Draenic Dust##109693 |condition skill("Enchanting")>=700
		buy 69 Temporal Crystal##113588 |condition itemcount(113588) >= 69 or skill("Enchanting")>=700
		|tip You can buy these, or make one per day. If you want to power level you will need to buy them.
	step
		#include "H_Garrison_SmallBuilding",action="talk Garra##79820",building="Enchanting"
		accept Your First Enchanting Work Order##37570 |condition skill("Enchanting")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Garra##79820",building="Enchanting"
		Tell her _"I would like to place a work order"_ |q Your First Enchanting Work Order##37570/1
	step
		#include "H_Garrison_SmallBuilding",action="click Enchanting Work Order ",building="Enchanting"
		Enchanting Work Order Collected |q Your First Enchanting Work Order##37570/2
		|tip It looks like 3 barrels, on on it's side with 2 bags on top of it.
	step
		#include "H_Garrison_SmallBuilding",action="talk Garra##79820",building="Tailoring"
		turnin Your First Enchanting Work Order##37570
	step
		create 1 Secrets of Draenor Enchanting##177043,Enchanting, 1 total |n
		collect 1 Secrets of Draenor Enchanting##119293 |condition skill("Enchanting")>=700
	step
		create Luminous Shard##169091,Enchanting,630
		collect 69 Luminous Shard##111245 |condition skill("Enchanting")>=700
	step
		create Temporal Crystal##169092,Enchanting,631
	step
		create Mark of the Shattered Hand##159236,Enchanting,700
	step
		Congratulations, you have reached level 700 with Enchanting!
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Engineering
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Engineering",[[
		This Recipe is learned by learning the Engineering Skill.
		learn Rough Blasting Powder
	step
		This Recipe is learned by learning the Engineering Skill
		learn Rough Dynamite##3919
	step
		#include "trainer_Engineering"
		learn Handful of Copper Bolts##3922
	step
		#include "trainer_Engineering"
		learn Rough Copper Bomb##3923
	step
		#include "trainer_Engineering"
		learn Arclight Spanner##7430
	step
		#include "trainer_Engineering"
		learn Rough Boomstick##3925
	step
		#include "trainer_Engineering"
		learn Crude Scope##3977
	step
		#include "trainer_Engineering"
		learn Coarse Blasting Powder##3929
	step
		#include "trainer_Engineering"
		learn Coarse Dynamite##3931
	step
		This is a Random World Drop, from creatures level 6-20 and in some dungeons
		|tip We recommend Gnomeregan or Elwynn Forest for grinding.
		collect Schematic: Mechanical Squirrel Box##4408 |n
		learn Mechanical Squirrel Box##3928
	step
		#include "trainer_Engineering"
		learn Target Dummy##3932
	step
		#include "trainer_Engineering"
		learn Silver Contact##3973
	step
		#include "trainer_Engineering"
		learn Clockwork Box##8334
	step
		This is a Random World Drop, from creatures level 9-26 and in some dungeons
		|tip We recommend Gnomeregan or Northern Barrens for grinding.
		collect Schematic: EZ-Thro Dynamite##6716 |n
		learn EZ-Thro Dynamite##8339
	step
		#include "trainer_Engineering"
		learn Flying Tiger Goggles##3934
	step
		This is a Random World Drop, from creatures level 9-25 and in some dungeons
		|tip We recommend Gnomeregan or Ragefire Chasm for grinding.
		collect Schematic: Small Seaforium Charge##4409 |n
		learn Small Seaforium Charge##3933
	step
		#include "trainer_Engineering"
		learn Bronze Tube##3938
	step
		#include "trainer_Engineering"
		learn Large Copper Bomb##3937
	step
		#include "trainer_Engineering"
		learn Deadly Blunderbuss##3936
	step
		#include "trainer_Engineering"
		learn Standard Scope##3978
	step
		#include "trainer_Engineering"
		learn Small Bronze Bomb##3941
	step
		#include "trainer_Engineering"
		learn Lovingly Crafted Boomstick##3939
	step
		This is a Random World Drop, from creatures level 16-30 and in some dungeons
		|tip We recommend Gnomeregan or Blackfathom Deeps for grinding.
		collect Schematic: Shadow Goggles##4410 |n
		learn Shadow Goggles##3940
	step
		#include "trainer_Engineering"
		learn Heavy Blasting Powder##3945
	step
		#include "trainer_Engineering"
		learn Heavy Dynamite##3946
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Small Rocket Recipes##21740 |n
		use Small Rocket Recipes##21740
		collect Flame Deflector##3944 |n
		collect Small Red Rocket##26418 |n
		collect Small Green Rocket##26417 |n
		collect Schematic: Small Blue Rocket##21724 |n
		learn Small Blue Rocket##26416 |goto Moonglade 54.0,35.0
	step
		kill Mekgineer Thermaplugg##7800
		|tip This has a very low drop rate.
		collect Schematic: Flame Deflector##4411 |n
		learn Flame Deflector##3944 |goto Gnomeregan/4 31.2,31.0
	step
		#include "trainer_Engineering"
		learn Whirring Bronze Gizmo##3942
	step
		kill Mekgineer Thermaplugg##7800
		collect Schematic: Gnomish Universal Remote##7560 |n
		use Schematic: Gnomish Universal Remote##7560
		learn Gnomish Universal Remote##9269 |goto Gnomeregan 31.2,31.0
	step
		#include "trainer_Engineering"
		learn Silver-plated Shotgun##3949
	step
		#include "trainer_Engineering"
		learn Ornate Spyglass##6458
	step
		#include "trainer_Engineering"
		learn Big Bronze Bomb##3950
	step
		talk Gagsprocket##3495
		collect Schematic: Minor Recombobulator##14639 |n
		use Schematic: Minor Recombobulator##14639
		learn Minor Recombobulator##3952 |goto Northern Barrens 68.4,69.2
	step
		#include "trainer_Engineering"
		learn Bronze Framework##3953
	step
		This is a Random World Drop, from creatures level 20-45 and in some dungeons.
		|tip We recommend Gnomeregan for grinding.
		collect Schematic: Moonsight Rifle##4412 |n
		use Schematic: Moonsight Rifle##4412
		learn Moonsight Rifle##3954
	step
		#include "trainer_Engineering"
		learn Aquadynamic Fish Attractor##9271
	step
		talk Buckslappy##49918
		buy Schematic: Blue Firework##18649 |n
		use Schematic: Blue Firework##18649
		learn Blue Firework##23067 |goto Badlands 91.0,38.4
	step
		talk Gagsprocket##3495
		buy Schematic: Green Firework##18648 |n
		use Schematic: Green Firework##18648
		learn Green Firework##23068 |goto Northern Barrens 68.4,69.2
		You can also purchase this from Buckslappy here: [Badlands 91.0,38.4]
	step
		talk Buckslappy##49918
		buy Schematic: Red Firework##18647 |n
		learn Red Firework##23066 |goto Badlands 91.0,38.4
		You can also purchase this from Sovik here: [Orgrimmar 56.0,56.0]
	step
		#include "trainer_Engineering"
		learn Gold Power Core##12584
	step
		#include "trainer_Engineering"
		learn Green Tinted Goggles##3956
	step
		#include "trainer_Engineering"
		learn Explosive Sheep##3955
	step
		This Schematic may no longer be in game
		collect Schematic: Ice Deflector##13308 |n
		learn Ice Deflector##3957
	step
		#include "trainer_Engineering"
		learn Iron Strut##3958
	step
		kill Mekgineer Thermaplugg##7800
		collect Schematic: Discombobulator Ray##4413 |n
		learn Discombobulator Ray##3959 |goto Gnomeregan 31.2,31.0
	step
		kill Mekgineer Thermaplugg##7800
		collect Schematic: Goblin Jumper Cables##7561 |n
		use Schematic: Goblin Jumper Cables##7561
		learn Goblin Jumper Cables##9273 |goto Gnomeregan 31.2,31.0
	step
		This is a Random World Drop, from creatures level 20-40 and in some dungeons
		|tip We recommend Gnomeregan for grinding.
		collect Schematic: Portable Bronze Mortar##4414 |n
		use Schematic: Portable Bronze Mortar##4414
		learn Portable Bronze Mortar##3960
	step
		#include "trainer_Engineering"
		learn Gyrochronatom##3961
	step
		#include "trainer_Engineering"
		learn Solid Blasting Powder##12585
	step
		#include "trainer_Engineering"
		learn Solid Dynamite##12586
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Large Rocket Recipes##21742 |n
		use Large Rocket Recipes##21742
		collect Schematic: Large Red Rocket##21729 |n
		use Schematic: Large Red Rocket##21729
		learn Large Red Rocket##26422 |goto Moonglade 54.0,35.0
	step
		learn Compact Harvest Reaper Kit##3963
	step
		learn Gyromatic Micro-Adjustor##12590
	step
		learn Iron Grenade##3962
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Southern Barrens or Maraudon for grinding.
		collect Schematic: Bright-Eye Goggles##10601 |n
		use Schematic: Bright-Eye Goggles##10601
		learn Bright-Eye Goggles##12587
	step
		#include "trainer_Engineering"
		learn Accurate Scope##3979
	step
		#include "trainer_Engineering"
		learn Advanced Target Dummy##3965
	step
		kill Mekgineer Thermaplugg##7800
		collect Schematic: Flash Bomb##6672 |n
		learn Flash Bomb##8243 |goto Gnomeregan 31.2,31.0
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Gnomeregan or Uldaman for grinding.
		collect Schematic: Craftsman's Monocle##4415 |n
		use Schematic: Craftsman's Monocle##4415
		learn Craftsman's Monocle##3966
	step
		#include "trainer_Engineering"
		learn Big Iron Bomb##3967
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		use Smokywood Pastures Special Gift##17726
		use Ticking Present##21327
		collect Schematic: Snowmaster 9000##17720 |n
		use Schematic: Snowmaster 9000##17720
		learn Snowmaster 9000##21940
	step
		#include "trainer_Engineering"
		learn Mithril Tube##12589
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Gnomeregan or Uldaman for grinding.
		collect Schematic: Goblin Land Mine##4416 |n
		learn Goblin Land Mine##3968
	step
		talk Blizrik Buckshot##8131
		buy Schematic: EZ-Thro Dynamite II##18650 |n
		use Schematic: EZ-Thro Dynamite II##18650
		learn EZ-Thro Dynamite II##23069 |goto Tanaris 50.6,28.6
		You can also purchase this from Buckslappy here: [Badlands 91.0,38.4]
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Gnomeregan or Maraudon for grinding.
		collect Schematic: Large Seaforium Charge##4417
		use Schematic: Large Seaforium Charge##4417
		learn Large Seaforium Charge##3972
	step
		#include "trainer_Engineering"
		learn Mechanical Repair Kit##15255
	step
		#include "trainer_Engineering"
		learn Unstable Trigger##12591
	step
		kill Mekgineer Thermaplugg##7800
		collect Schematic: Gnomish Cloaking Device##7742 |n
		use Schematic: Gnomish Cloaking Device##7742
		learn Gnomish Cloaking Device##3971 |goto Gnomeregan 31.2,31.0
	step
		talk Gnaz Blunderflame##2687
		buy Schematic: Mechanical Dragonling##13311 |n
		use Schematic: Mechanical Dragonling##13311
		learn Mechanical Dragonling##3969 |goto Northern Stranglethorn 67.6,61.0
		You can also purchase this from Kaye Toogie here: [Dalaran 34.0,35.6]
	step
		#include "trainer_Engineering"
		learn Goblin Rocket Fuel Recipe##12715
	step
		#include "trainer_Engineering"
		learn Inlaid Mithril Cylinder Plans##12895
	step
		This drops from the Bosses in Gnomeregan
		collect Schematic: Lil Smoky##11827##11827 |n
		use Schematic: Lil Smoky##11827##11827
		learn Lil Smoky##15633
	step
		kill Mekgineer Thermaplugg##7800
		collect Schematic: Pet Bombling##11828 |n
		use Schematic: Pet Bombling##11828
		learn Pet Bombling##15628 |goto Gnomeregan 31.2,31.0
	step
		#include "trainer_Engineering"
		learn Goblin Sapper Charge##12760
	step
		#include "trainer_Engineering"
		learn Fire Goggles##12594
	step
		#include "trainer_Engineering"
		learn Gnomish Shrink Ray##12899
	step
		#include "trainer_Engineering"
		learn Goblin Construction Helmet##12718
	step
		#include "trainer_Engineering"
		learn Goblin Mining Helmet##12717
	step
		#include "trainer_Engineering"
		learn Goblin Mortar##12716
	step
		#include "trainer_Engineering"
		learn Mithril Blunderbuss##12595
	step
		#include "trainer_Engineering"
		learn Gnomish Net-o-Matic Projector##12902
	step
		talk Knaz Blunderflame##8679
		buy Schematic: Deadly Scope##10602 |n
		use Schematic: Deadly Scope##10602
		learn Deadly Scope##12597 |goto Northern Stranglethorn 67.6,61.0
		You can also purchase this from Yuka Screwspigot here: [Blackrock Depths 37.2,79.6]
	step
		#include "trainer_Engineering"
		learn Gnomish Rocket Boots##12905
	step
		#include "trainer_Engineering"
		learn Mithril Casing##12599
	step
		#include "trainer_Engineering"
		learn Mithril Frag Bomb##12603
	step
		#include "trainer_Engineering"
		learn Gnomish Goggles##12897
	step
		#include "trainer_Engineering"
		learn Gnomish Harm Prevention Belt##12903
	step
		This is a Random World Drop, from creatures level 28-52 and in some dungeons
		|tip We recommend Dire Maul or Eastern Plaguelands for grinding.
		collect Schematic: Catseye Ultra Goggles##10603 |n
		learn Catseye Ultra Goggles##12607
	step
		This is a Random World Drop, from creatures level 28-52 and in some dungeons
		|tip We recommend Razorfen Downs or Dire Maul for grinding.
		collect Schematic: Mithril Heavy-Bore Rifle##10604 |n
		learn Mithril Heavy-bore Rifle##12614
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Cluster Rocket Recipes##21741 |n
		use Large Rocket Recipes##21742
		collect Schematic: Red Rocket Cluster##21732 |n
		collect Schematic: Blue Rocket Cluster##21730 |n
		collect Schematic: Green Rocket Cluster##21731 |n
		use Schematic: Red Rocket Cluster##21732
		learn Red Rocket Cluster##26425 |goto Moonglade 54.0,35.0
		use Schematic: Blue Rocket Cluster##21730
		learn Blue Rocket Cluster##26423 |goto Moonglade 54.0,35.0
		use Schematic: Green Rocket Cluster##21731
		learn Green Rocket Cluster##26424 |goto Moonglade 54.0,35.0
	step
		#include "trainer_Engineering"
		learn Goblin Rocket Boots##8895
	step
		This is a Random World Drop, from creatures level 35-52 and in some dungeons
		|tip We recommend Fellwood or Dire Maul for grinding.
		collect Schematic: Parachute Cloak##10606 |n
		use Schematic: Parachute Cloak##10606
		learn Parachute Cloak##12616
	step
		#include "trainer_Engineering"
		learn Spellpower Goggles Xtreme##12615
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Schematic: Firework Launcher##44919 |n
		use goto Moonglade 54.0,35.0
		learn Firework Launcher##26442
	step
		#include "trainer_Engineering"
		learn Goblin Bomb Dispenser##12755
	step
		#include "trainer_Engineering"
		learn Deepdive Helmet##12617
	step
		#include "trainer_Engineering"
		learn Rose Colored Goggles##12618
	step
		#include "trainer_Engineering"
		learn Gnomish Battle Chicken##12906
	step
		#include "trainer_Engineering"
		learn Hi-Explosive Bomb##12619
	step
		#include "trainer_Engineering"
		learn The Big One##12754
	step
		#include "trainer_Engineering"
		learn Gnomish Mind Control Cap##12907
	step
		#include "trainer_Engineering"
		learn Gnomish Death Ray##12759
	step
		#include "trainer_Engineering"
		learn Goblin Dragon Gun##12908
	step
		This is a Random World Drop, from creatures level 28-52 and in some dungeons
		|tip We recommend Blackwing Lair or Dire Maul for grinding.
		collect Schematic: Sniper Scope##10608 |n
		use Schematic: Sniper Scope##10608
		learn Sniper Scope##12620
	step
		#include "trainer_Engineering"
		learn Green Lens##12622
	step
		#include "trainer_Engineering"
		learn Goblin Rocket Helmet##12758
	step
		#include "trainer_Engineering"
		learn Dense Blasting Powder##19788
	step
		#include "trainer_Engineering"
		learn Dense Dynamite##23070
	step
		talk Zorbin Fandazzle##14637
		|tip You may have to do 2 quest's before you can purchase this Schematic.
		buy Schematic: Snake Burst Firework##19027 |n
		learn Snake Burst Firework##23507 |goto Feralas 48.6,44.8
	step
		#include "trainer_Engineering"
		learn High-powered Flashlight##63750
	step
		talk Kaye Toogie##35826
		buy Schematic: Mithril Mechanical Dragonling##10609 |n
		use Schematic: Mithril Mechanical Dragonling##10609
		learn Mithril Mechanical Dragonling##12624 |goto Dalaran 34.0,35.6
		You can also purchase this from Ruppo Zipcoil here: [The HInterlands 34.2,37.8]
	step
		#include "trainer_Engineering"
		learn Salt Shaker##19567
	step
		This Schematic is obtained by doing the quest A Yeti of Your Own
		talk Umi Rumplesnicker##10305
		accept A Yeti of Your Own##8798
		turnin A Yeti of Your Own##8798
		learn Tranquil Mechanical Yeti##26011 |goto Winterspring 59.2,49.8
	step
		kill Weapon Technician##8920
		collect Schematic: World Enlarger##18661 |n
		use Schematic: World Enlarger##18661
		learn World Enlarger##23129 |goto Blackrock Depths/2 37.8,73.0
	step
		#include "trainer_Engineering"
		learn Truesilver Transformer##23071
	step
		talk Xizzer Fizzbolt##11185
		buy Schematic: Gyrofreeze Ice Reflector##18652 |n
		use Schematic: Gyrofreeze Ice Reflector##18652
		learn Gyrofreeze Ice Reflector##23077 |goto Winterspring 59.2,50.8
	step
		learn Thorium Rifle##19792
	step
		learn Thorium Grenade##19790
	step
		learn Thorium Widget##19791
	step
		This Schematic is learned by choosing Goblin Engineering
		learn Dimensional Ripper - Everlook##23486
	step
		This Schematic is learned by choosing Gnomish Engineering
		learn Ultrasafe Transporter - Gadgetzan##23489
	step
		kill Weapon Technician
		collect Schematic: Gnomish Alarm-o-Bot##18654 |n
		learn Gnomish Alarm-o-Bot##23096 |goto Blackrock Depths/2 37.8,73.0
	step
		kill Plugger Spazzring##9499
		collect Schematic: Goblin Jumper Cables XL##18653 |n
		use Schematic: Goblin Jumper Cables XL##18653
		learn Goblin Jumper Cables XL##23078 |goto Blackrock Depths 50.0,61.6
	step
		This is a Random World Drop, from creatures level 28-52 and in some dungeons
		|tip We recommend Blackwing Lair or Dire Maul for grinding.
		collect Schematic: Lifelike Mechanical Toad##16044 |n
		use Schematic: Lifelike Mechanical Toad##16044
		learn Lifelike Mechanical Toad##19793
	step
		learn Spellpower Goggles Xtreme Plus##19794
	step
		learn Fused Wiring##39895
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Large Cluster Rocket Recipes##21743 |n
		use Large Cluster Rocket Recipes##21743 |n
		collect Schematic: Large Blue Rocket Cluster##21733 |n
		collect Schematic: Large Green Rocket Cluster##21734 |n
		collect Schematic: Large Red Rocket Cluster##21735 |n
		use Schematic: Large Blue Rocket Cluster##21733
		learn Large Blue Rocket Cluster##26426 |goto Moonglade 54.0,35.0
		use Schematic: Large Green Rocket Cluster##21734
		learn Large Green Rocket Cluster##26427 |goto Moonglade 54.0,35.0
		use Schematic: Large Red Rocket Cluster##21735
		learn Large Red Rocket Cluster##26428 |goto Moonglade 54.0,35.0
	step
		talk Sovik##3413
		buy Schematic: Steam Tonk Controller##22729 |n
		use Schematic: Steam Tonk Controller##22729
		learn Steam Tonk Controller##28327 |goto Orgrimmar 56.0,56.0
	step
		talk Xizzer Fizzbolt##11185
		buy Schematic: Powerful Seaforium Charge##18656 |n
		use Schematic: Powerful Seaforium Charge##18656
		learn Powerful Seaforium Charge##23080 |goto Winterspring 59.2,50.8
	step
		You have to get the Gordok Tribute in Dire Maul by not killing any of the bosses except for the final boss
		click Gordok Tribute##179564
		collect Schematic: Major Recombobulator##18655 |n
		use Schematic: Major Recombobulator##18655
		learn Major Recombobulator##23079 |goto Dire Maul 31.7,28.0
	step
		kill Doomforge Craftsman##8897
		collect Schematic: Dark Iron Rifle##16048 |n
		use Schematic: Dark Iron Rifle##16048
		learn Dark Iron Rifle##19796 |goto Blackrock Depths 56.6,35.0
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Schematic: Cluster Launcher##44918 |n
		use Schematic: Cluster Launcher##44918
		learn Cluster Launcher##26443 |goto Moonglade 54.0,35.0
	step
		talk Xizzer Fizzbolt##11185
		buy Schematic: Masterwork Target Dummy##16046 |n
		use Schematic: Masterwork Target Dummy##16046
		learn Masterwork Target Dummy##19814 |goto Winterspring 59.2,50.8
	step
		#include "trainer_Engineering"
		learn Thorium Tube##19795
	step
		kill Weapon Technician##8920
		collect Schematic: Dark Iron Bomb##16049 |n
		use Schematic: Dark Iron Bomb##16049
		learn Dark Iron Bomb##19799 |goto Blackrock Depths/2 37.8,73.0
	step
		talk Xizzer Fizzbolt##11185
		collect Schematic: Delicate Arcanite Converter##16050 |n
		use Schematic: Delicate Arcanite Converter##16050
		learn Delicate Arcanite Converter##19815 |goto Winterspring 59.2,50.8
	step
		kill Solakar Flamewreath##10264
		collect Schematic: Hyper-Radiant Flame Reflector##18657 |n
		use Schematic: Hyper-Radiant Flame Reflector##18657
		learn Hyper-Radiant Flame Reflector##23081 |goto Blackrock Depths
	step
		#include "trainer_Engineering"
		learn Master Engineer's Goggles##19825
	step
		talk Risen Inquisitor##10426
		collect Schematic: Voice Amplification Modulator##16052 |n
		use Schematic: Voice Amplification Modulator##16052
		learn Voice Amplification Modulator##19819 |goto Stratholme 22.6,64.6
	step
		#include "trainer_Engineering"
		learn Handful of Fel Iron Bolts##30305
	step
		#include "trainer_Engineering"
		learn Elemental Blasting Powder##30303
	step
		#include "trainer_Engineering"
		learn Fel Iron Casing##30304
	step
		This is a Boss drop from the Raid Molten Core
		collect Schematic: Core Marksman Rifle##18292 |n
		use Schematic: Core Marksman Rifle##18292
		learn Core Marksman Rifle##22795
	step
		This is a Boss drop from the Raid Molten Core
		collect Schematic: Force Reactive Disk##18291 |n
		use Schematic: Force Reactive Disk##18291
		learn Force Reactive Disk##22797
	step
		This is a Boss drop from the Raid Molten Core
		collect Schematic: Biznicks 247x128 Accurascope##18290 |n
		use Schematic: Biznicks 247x128 Accurascope##18290
		learn Biznicks 247x128 Accurascope##22793
	step
		#include "trainer_Engineering"
		learn Arcanite Dragonling##19830
	step
		kil Mossflayer Shadowhunter##8561
		collect Schematic: Flawless Arcanite Rifle##16056 |n
		use Schematic: Flawless Arcanite Rifle##16056
		learn Flawless Arcanite Rifle##19833 |goto Eastern Plaguelands 65.4,14.2
	step
		kill Risen Inquisitor##10426
		collect Schematic: Ultra-Flash Shadow Reflector##18658 |n
		use Schematic: Ultra-Flash Shadow Reflector##18658
		learn Ultra-Flash Shadow Reflector##23082 |goto Stratholme 22.6,64.6
	step
		This is a Random World Drop, from creatures level 50-63 in some dungeons and raids
		|tip We recommend Blackwing Lair or Dire Maul for grinding.
		collect Schematic: Arcane Bomb##16055 |n
		use Schematic: Arcane Bomb##16055
		learn Arcane Bomb##19831
	step
		#include "trainer_Engineering"
		learn Fel Iron Bomb##30310
	step
		click Schematic: Field Repair Bot 74A##525
		learn Field Repair Bot 74A##22704 |goto Blackrock Depths 36.8,66.0
	step
		#include "trainer_Engineering"
		learn Flying Machine##44155
	step
		talk Mack Diver##17637
		accept The Zapthrottle Mote Extractor!##9635
		turnin The Zapthrottle Mote Extractor!##9635
		collect Schematic: Zapthrottle Mote Extracto##23888 |n
		use Schematic: Zapthrottle Mote Extracto##23888
		learn Zapthrottle Mote Extractor##30548 |goto Zangarmarsh 34.0,51.0
	step
		#include "trainer_Engineering"
		learn Fel Iron Musket##30312
	step
		#include "trainer_Engineering"
		learn Adamantite Frame##30306
	step
		talk Wind Trader Lathrai##18484
		buy Schematic: Fel Iron Toolbox##23816 |n
		use Schematic: Fel Iron Toolbox##23816
		learn Fel Iron Toolbox##30348 |goto Shattrath City 72.6,31.6
	step
		#include "trainer_Engineering"
		|tip Must have Goblin Engineering to train this.
		learn The Bigger One##30558
	step
		This is a Random World Drop, from creatures level 52-72 in some dungeons and raids
		|tip We recommend Hyjal Summit or Black Temple for grinding.
		collect Schematic: Crashin' Thrashin' Robot##23810 |n
		use Schematic: Crashin' Thrashin' Robot##23810
		learn Crashin' Thrashin' Robot##30337
	step
		#include "trainer_Engineering"
		learn Adamantite Grenade##30311
	step
		#include "trainer_Engineering"
		|tip Must have Gnomish Engineering to train this.
		learn Gnomish Flame Turret##30568
	step
		kill Kael'thas Sunstrider##24664
		collect Schematic: Healing Potion Injector##35310 |n
		use Schematic: Healing Potion Injector##35310
		learn Healing Potion Injector##30551 |goto Magisters' Terrace 8.6,50.6
	step
		#include "trainer_Engineering"
		learn Icy Blasting Primers##39971
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Friendly with Cenarion Expedition to purchase this Schematic.
		buy Schematic: Green Smoke Flare##23814 |n
		use Schematic: Green Smoke Flare##23814
		learn Green Smoke Flare##30344 |goto Zangarmarsh 79.2,63.8
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Karazhan or Shadow Labyrinth for grinding.
		collect Schematic: Purple Smoke Flare##25887 |n
		use Schematic: Purple Smoke Flare##25887
		learn Purple Smoke Flare##32814
	step
		talk Wind Trader Lathrai##18484
		buy Schematic: White Smoke Flare##23811 |n
		use Schematic: White Smoke Flare##23811
		learn White Smoke Flare##30341 |goto Shattrath City 72.6,31.6
	step
		talk Mixie Farshot##19836
		buy Schematic: Adamantite Scope##23807 |n
		use Schematic: Adamantite Scope##23807
		learn Adamantite Scope##30329 |goto Hellfire Peninsula 61.0,81.4
	step
		#include "trainer_Engineering"
		learn Frost Grenade##39973
	step
		#include "trainer_Engineering"
		|tip Must have Goblin Engineering to train this.
		learn Super Sapper Charge##30560
	step
		talk Mixie Farshot##19836
		buy Schematic: Cogspinner Goggles##23803 |n
		use Schematic: Cogspinner Goggles##23803
		learn Cogspinner Goggles##30316 |goto Hellfire Peninsula 61.0,81.4
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Karazhan or The Eye for grinding.
		collect Schematic: Power Amplification Goggles##23804 |n
		use Schematic: Power Amplification Goggles##23804
		learn Power Amplification Goggles##30317
	step
		#include "trainer_Engineering"
		learn Felsteel Stabilizer##30309
	step
		#include "trainer_Engineering"
		learn Hardened Adamantite Tube##30307
	step
		#include "trainer_Engineering"
		learn Khorium Power Core##30308
	step
		#include "trainer_Engineering"
		|tip You must have Gnomish Engineering to train this.
		learn Gnomish Poultryizer##30569
	step
		kill Kael'thas Sunstrider##24664
		collect Schematic: Mana Potion Injector##35311 |n
		use Schematic: Mana Potion Injector##35311
		learn Mana Potion Injector##30552 |goto Magisters' Terrace 8.6,50.6
	step
		talk Paulsta'ats##23007
		|tip You must be Revered with the Consortium to purchase this Schematic.
		buy Schematic: Elemental Seaforium Charge##23874 |n
		use Schematic: Elemental Seaforium Charge##23874
		learn Elemental Seaforium Charge##30547 |goto Nagrand 30.6,57.0
	step
		#include "trainer_Engineering"
		|tip You must be have Goblin Engineering to train this.
		learn Dimensional Ripper - Area 52##36954
	step
		#include "trainer_Engineering"
		|tip You must be have Gnomish Engineering to train this.
		learn Ultrasafe Transporter - Toshley's Station##36955
	step
		#include "trainer_Engineering"
		|tip You must be have Goblin Engineering to train this.
		learn Goblin Rocket Launcher##30563
	step
		#include "trainer_Engineering"
		|tip You must be have Gnomish Engineering to train this.
		learn Nigh-Invulnerability Belt##30570
	step
		talk Captured Gnome##19383
		buy Schematic: Ultra-Spectropic Detection Goggles##23805 |n
		use Schematic: Ultra-Spectropic Detection Goggles##23805
		learn Ultra-Spectropic Detection Goggles##30318 |goto Zangarmarsh 32.4,48.0
	step
		talk Viggz Shinesparked##19661
		buy Schematic: Adamantite Rifle##23799 |n
		use Schematic: Adamantite Rifle##23799
		learn Adamantite Rifle##303013 |goto Shattrath City 64.8,69.6
	step
		#include "trainer_Engineering"
		learn Handful of Cobalt Bolts##56349
	step
		#include "trainer_Engineering"
		learn Volatile Blasting Trigger##53281
	step
		#include "trainer_Engineering"
		|tip Only Rogues, Monks and Druids can learn this Schematic.
		learn Deathblow X11 Goggles##41317
	step
		#include "trainer_Engineering"
		|tip Only Priests, Mages and Warlocks can learn this Schematic.
		learn Destruction Holo-gogs##41320
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		learn Furious Gizmatic Goggles##40274
	step
		#include "trainer_Engineering"
		|tip Only Monks and Druids can learn this Schematic.
		learn Magnified Moon Specs##41319
	step
		#include "trainer_Engineering"
		|tip Only Hunters and Shamans can learn this Schematic.
		learn Surestrike Goggles v2.0##41314
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		learn Tankatronic Goggles##41312
	step
		#include "trainer_Engineering"
		|tip Only Monks and Druids can learn this Schematic.
		learn Wonderheal XT40 Shades##41318
	step
		#include "trainer_Engineering"
		learn Cobalt Frag Bomb##56460
	step
		kill Mekgineer Steamrigger##17796
		collect Schematic: Rocket Boots Xtreme##23887 |n
		use Schematic: Rocket Boots Xtreme##23887
		learn Rocket Boots Xtreme##30556 |goto The Steamvault 32.8,82.4
	step
		kill Mechano-Lord Capacitus##19219
		collect Schematic: Rocket Boots Xtreme Lite##35582 |n
		use Schematic: Rocket Boots Xtreme Lite##35582
		learn Rocket Boots Xtreme Lite##46697 |goto The Mechanar 52.0,34.4
	step
		kill Doomforge Engineer##19960
		collect Schematic: Felsteel Boomstick##23800 |n
		use Schematic: Felsteel Boomstick##23800
		learn Felsteel Boomstick##30314 |goto Blade's Edge Mountains 75.0,41.6
	step
		kill Mo'arg Weaponsmith##19755
		collect Schematic: Hyper-Vision Goggles##23806 |n
		use Schematic: Hyper-Vision Goggles##23806
		learn Hyper-Vision Goggles##30325 |goto Shadowmoon Valley 25.2,32.6
	step
		kill Sunfury Bowman##20207
		collect Schematic: Khorium Scope##23808 |n
		use Schematic: Khorium Scope##23808
		learn Khorium Scope##30332 |goto Netherstorm 56.8,64.6
	step
		kill Simon Unit##23385
		collect Schematic: Field Repair Bot 110G##34114 |n
		use Schematic: Field Repair Bot 110G##34114
		learn Field Repair Bot 110G##44391 |goto Blade's Edge Mountains 33.6,52.6
	step
		#include "trainer_Engineering"
		|tip You must be a Goblin Engineer to train this Schematic.
		learn Foreman's Enchanted Helmet##30565
	step
		#include "trainer_Engineering"
		|tip You must be a Goblin Engineer to train this Schematic.
		learn Foreman's Reinforced Helmet##30566
	step
		#include "trainer_Engineering"
		|tip You must be a Gnomish Engineer to train this Schematic.
		learn Gnomish Battle Goggles##30575
	step
		#include "trainer_Engineering"
		|tip You must be a Gnomish Engineer to train this Schematic.
		learn Gnomish Power Goggles##30574
	step
		#include "trainer_Engineering"
		learn Gyro-balanced Khorium Destroyer##41307
	step
		#include "trainer_Engineering"
		learn Bladed Pickaxe##56461
	step
		#include "trainer_Engineering"
		learn Hammer Pick##56459
	step
		#include "trainer_Engineering"
		learn Overcharged Capacitor##56464
	step
		#include "trainer_Engineering"
		learn Turbo-Charged Flying Machine##44157
	step
		#include "trainer_Engineering"
		learn Explosive Decoy##56463
	step
		This is a Random World Drop, from creatures level 60-72 in some dungeons and raids
		|tip We recommend Blade's Edge Mountains or The Arcatraz for grinding.
		collect Schematic: Ornate Khorium Rifle##23802 |n
		use Schematic: Ornate Khorium Rifle##23802
		learn Ornate Khorium Rifle##30315
	step
		kill Attumen the Huntsman##16152
		collect Schematic: Stabilized Eternium Scope##23809 |n
		use Schematic: Stabilized Eternium Scope##23809
		learn Stabilized Eternium Scope##30334 |goto Karazhan 44.8,83.6
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Priests, Mages and Warlocks can learn this Schematic.
		collect Schematic: Annihilator Holo-Gogs##35186 |n
		use Schematic: Annihilator Holo-Gogs##35186
		learn Annihilator Holo-Gogs##46111
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		collect Schematic: Hard Khorium Goggles##35196 |n
		use Schematic: Hard Khorium Goggles##35196
		learn Hard Khorium Goggles##4611
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Druids can learn this Schematic.
		collect Schematic: Hyper-Magnified Moon Specs##35190 |n
		use Schematic: Hyper-Magnified Moon Specs##35190
		learn Hyper-Magnified Moon Specs##46109
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Druid can learn this Schematic.
		collect Schematic: Mayhem Projection Goggles##35195 |n
		use Schematic: Mayhem Projection Goggles##35195
		learn Mayhem Projection Goggles##46114
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Druids can learn this Schematic.
		collect Schematic: Wonderheal XT68 Shades##35191 |n
		use Schematic: Wonderheal XT68 Shades##35191
		learn Wonderheal XT68 Shades##46106
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Druids and Rogues can learn this Schematic.
		collect Schematic: Quad Deathblow X44 Goggles##35197 |n
		use Schematic: Quad Deathblow X44 Goggles##35197
		learn Quad Deathblow X44 Goggles##46116
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Hunters and Shamans can learn this Schematic.
		collect Schematic: Surestrike Goggles v3.0##35194 |n
		use Schematic: Surestrike Goggles v3.0##35194
		learn Surestrike Goggles v3.0##46113
	step
		#include "trainer_Engineering"
		learn Flexweave Underlay##55002
	step
		#include "trainer_Engineering"
		learn Frag Belt##54793
	step
		#include "trainer_Engineering"
		learn EMP Generator##54736
	step
		#include "trainer_Engineering"
		learn Froststeel Tube##56471
	step
		#include "trainer_Engineering"
		learn Diamond-cut Refractor Scope##61471
	step
		#include "trainer_Engineering"
		learn Hand-Mounted Pyro Rocket##54998
	step
		#include "trainer_Engineering"
		learn Hyperspeed Accelerators##54999
	step
		#include "trainer_Engineering"
		learn Reticulated Armor Webbing##63770
	step
		#include "trainer_Engineering"
		learn Mark "S" Boomstick##54353
	step
		#include "trainer_Engineering"
		learn Nitro Boosts##55016
	step
		#include "trainer_Engineering"
		learn Box of Bombs##56468
	step
		talk Bryan Landers##28722
		buy Schematic: Titanium Toolbox##23817 |n
		use Schematic: Titanium Toolbox##23817
		learn Titanium Toolbox##30349 |goto Dalaran 39.0,26.0
	step
		#include "trainer_Engineering"
		learn Mind Amplification Dish##67839
	step
		#include "trainer_Engineering"
		learn Goblin Beam Welder##67326
	step
		#include "trainer_Engineering"
		learn Healing Injector Kit##56476
	step
		kill Library Guardian##29724+
		collect SCRAP-E Access Card##41267 |n
		use SCRAP-E Access Card##41267
		accept SCRAP-E##12888 |goto The Storm Peaks 38.1,40.9
	step
		talk SCRAP-E##29806
		turnin SCRAP-E##12888 |goto The Storm Peaks 37.7,46.5
		accept The Prototype Console##12889 |goto The Storm Peaks 37.7,46.5
	step
		click Prototype Console##8177
		turnin The Prototype Console##12889
		learn Scrapbot Construction Kit##55252 |goto The Storm Peaks 37.5,46.9
	step
		#include "trainer_Engineering"
		learn Mana Injector Kit##56477
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		learn Mechanized Snow Goggles##61483
	step
		#include "trainer_Engineering"
		|tip Only Hunters and Shamans can learn this Schematic.
		learn Mechanized Snow Goggles##61482
	step
		#include "trainer_Engineering"
		|tip Only Priests, Mages and Warlocks can learn this Schematic.
		learn Mechanized Snow Goggles##56465
	step
		#include "trainer_Engineering"
		|tip Only Rogues, Monks and Druids can learn this Schematic.
		learn Mechanized Snow Goggles##61481
	step
		#include "trainer_Engineering"
		learn Noise Machine##56467
	step
		#include "trainer_Engineering"
		learn Sonic Booster##56466
	step
		#include "trainer_Engineering"
		|tip You must be a Goblin Engineer to train this Schematic.
		learn Global Thermal Sapper Charge##56514
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Cardboard Assassin##84425
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Grounded Plasma Shield##84427
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Invisibility Field##84424
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Quickflip Deflection Plates##82177
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Spinal Healing Injector##82200
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Synapse Springs##82175
	step
		This Schematic is learned by creating other plans in the similar level range
		learn Tazik Shocker##82180
	step
		#include "trainer_Engineering"
		learn High-Powered Bolt Gun##60223
	step
		#include "trainer_Engineering"
		learn MOLL-E##56472
	step
		#include "trainer_Engineering"
		learn Sun Scope##56470
	step
		#include "trainer_Engineering"
		learn Gnomish Lightning Generator##56469
	step
		#include "trainer_Engineering"
		learn Gnomish X-Ray Specs##56473
	step
		#include "trainer_Engineering"
		learn Handful of Obsidium Bolts##84403
	step
		#include "trainer_Engineering"
		learn Heartseeker Scope##56478
	step
		#include "trainer_Engineering"
		learn Gnomish Army Knife##56462
	step
		#include "trainer_Engineering"
		learn Wormhole Generator: Northrend##67920
	step
		#include "trainer_Engineering"
		learn Electrostatic Condenser##95703
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		learn Armored Titanium Goggles##56480
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		learn Charged Titanium Specs##56483
	step
		#include "trainer_Engineering"
		|tip Only Monks and Druids can learn this Schematic.
		learn Greensight Gogs##56486
	step
		#include "trainer_Engineering"
		|tip Only Hunters and Shamans can learn this Schematic.
		learn Truesight Ice Blinders##56574
	step
		#include "trainer_Engineering"
		|tip Only Priests, Mages and Warlocks can learn this Schematic.
		learn Visage Liquification Goggles##56484
	step
		#include "trainer_Engineering"
		|tip Only Rogues, Monks and Druids can learn this Schematic.
		learn Weakness Spectralizers##56481
	step
		#include "trainer_Engineering"
		|tip Only Paladins can learn this Schematic.
		learn Justicebringer 2000 Specs##41311
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Paladins can learn this Schematic.
		collect Schematic: Justicebringer 3000 Specs##35187 |n
		use Schematic: Justicebringer 3000 Specs##35187
		learn Justicebringer 3000 Specs##46107
	step
		#include "trainer_Engineering"
		|tip Only Paladins can learn this Schematic.
		learn Unbreakable Healing Amplifiers##62271
	step
		#include "trainer_Engineering"
		|tip Only Priests can learn this Schematic.
		learn Powerheal 4000 Lens##41321
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Priests can learn this Schematic.
		collect Schematic: Powerheal 9000 Lens##35189 |n
		use Schematic: Powerheal 9000 Lens##35189
		learn Powerheal 9000 Lens##46108
	step
		#include "trainer_Engineering"
		|tip Only Shamans can learn this Schematic.
		learn Gadgetstorm Goggles##41315
	step
		#include "trainer_Engineering"
		|tip Only Shamans can learn this Schematic.
		learn Living Replicator Specs##41316
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Shamans can learn this Schematic.
		collect Schematic: Lightning Etched Specs##35193 |n
		use Schematic: Lightning Etched Specs##35193
		learn Lightning Etched Specs##46112
	step
		This Schematic is a Boss drop from the Raid Sunwell Plateau
		|tip Only Shamans can learn this Schematic.
		collect Schematic: Primal-Attuned Goggles##35192 |n
		use Schematic: Primal-Attuned Goggles##35192
		learn Primal-Attuned Goggles##46110
	step
		#include "trainer_Engineering"
		|tip Only Shamans can learn this Schematic.
		learn Electroflux Sight Enhancers##56487
	step
		#include "trainer_Engineering"
		learn Authentic Jr. Engineer Goggles##84406
	step
		#include "trainer_Engineering"
		learn Electrified Ether##94748
	step
		#include "trainer_Engineering"
		learn Armor Plated Combat Shotgun##56479
	step
		#include "trainer_Engineering"
		learn Nesingwary 4000##60874
	step
		#include "trainer_Engineering"
		learn R19 Threatfinder##84408
	step
		#include "trainer_Engineering"
		learn Safety Catch Removal Kit##84410
	step
		This Schematic is dropped from the Mechanical NPC's in Northrend and Northrend Dungeons
		|tip We recommend Ulduar and Halls of Lightning for Grinding.
		collect Schematic: Jeeves##49050
		use Schematic: Jeeves##49050
		learn Jeeves##68067
	step
		talk Gara Skullcrush##32565
		|tip This is a Horde only Schematic and may sell well on the Neutral AH.
		|tip You must be Exalted with Warsong Offensive to purchase this Schematic.
		buy Schematic: Mechano-Hog##44502 |n
		use Schematic: Mechano-Hog##44502
		learn Mechano-Hog##60866 |goto Borean Tundra 41.4,53.6
	step
		This Schematic is learned from a Alliance only faction
		|tip You may be able to purchase this on the Neutral AH.
		buy Schematic: Mekgineer's Chopper##44503 |n
		use Schematic: Mekgineer's Chopper##44503
		learn Mekgineer's Chopper##60867
	step
		#include "trainer_Engineering"
		learn Volatile Seaforium Blastpack##84409
	step
		#include "trainer_Engineering"
		learn High-Powered Bolt Gun##84411
	step
		#include "trainer_Engineering"
		learn Lure Master Tackle Box##84415
	step
		#include "trainer_Engineering"
		learn De-Weaponized Mechanical Companion##84413
	step
		#include "trainer_Engineering"
		learn Elementium Toolbox##84416
	step
		#include "trainer_Engineering"
		learn Personal World Destroyer##84412
	step
		#include "trainer_Engineering"
		learn Elementium Dragonling##84418
	step
		#include "trainer_Engineering"
		learn Loot-a-Rang##84421
	step
		#include "trainer_Engineering"
		learn Finely-Tuned Throat Needler##84420
	step
		#include "trainer_Engineering"
		learn Volatile Thunderstick##84417
	step
		#include "trainer_Engineering"
		|tip You must have Gnomish Engineering to learn this Schematic
		learn Gnomish Gravity Well##95705
	step
		#include "trainer_Engineering"
		|tip You must have Goblin Engineering to learn this Schematic
		learn Big Daddy
	step
		#include "trainer_Engineering"
		learn Locksmith's Powderkeg##127124
	step
		#include "trainer_Engineering"
		learn Pandaria Fireworks##89991
		|tip You must create this bundle of fireworks to collect the Fireworks below.
		collect Schematic: Autumn Flower Firework##89996 |n
		collect Schematic: Celestial Firework##89994 |n
		collect Schematic: Grand Celebration Firework##89993 |n
		collect Schematic: Jade Blossom Firework##89997 |n
		collect Schematic: Serpent's Heart Firework##89992 |n
		use Schematic: Autumn Flower Firework##89996
		learn Autumn Flower Firework##131256
		use Schematic: Celestial Firework##89994
		learn Celestial Firework##128260
		use Schematic: Grand Celebration Firework##89993
		learn Grand Celebration Firework##128261
		use Schematic: Jade Blossom Firework##89997
		learn Jade Blossom Firework##131258
		use Schematic: Serpent's Heart Firework##89992
		learn Serpent's Heart Firework##128262
	step
		#include "trainer_Engineering"
		learn Ghost Iron Bolts##127113
	step
		#include "trainer_Engineering"
		learn High-Explosive Gunpowder##127114
	step
		#include "trainer_Engineering"
		learn Goblin Barbecue##84429
	step
		#include "trainer_Engineering"
		learn Heat-Treated Spinning Lure##84430
	step
		talk Damek Bloombeard##53214
		buy Schematic: Flintlocke's Woodchucker##70177 |n
		use Schematic: Flintlocke's Woodchucker##70177
		learn Flintlocke's Woodchucker##100587 |goto Molten Front 47.0,90.6
	step
		#include "trainer_Engineering"
		learn Gnomish X-Ray Scope##84428
	step
		talk Damek Bloombeard##53214
		buy Schematic: Extreme-Impact Hole Puncher##71078 |n
		use Schematic: Extreme-Impact Hole Puncher##71078
		learn Extreme-Impact Hole Puncher##100687 |goto Molten Front 47.0,90.6
	step
		#include "trainer_Engineering"
		learn Kickback 5000##84432
	step
		#include "trainer_Engineering"
		|tip Only Rogues, Monks and Druids can learn this Schematic.
		learn Agile Bio-Optic Killshades##81722
	step
		#include "trainer_Engineering"
		|tip Only Monks and Druids can learn this Schematic.
		learn Camouflage Bio-Optic Killshades##81724
	step
		#include "trainer_Engineering"
		|tip Only Hunters and Shamans can learn this Schematic.
		learn Deadly Bio-Optic Killshades##81716
	step
		#include "trainer_Engineering"
		|tip Only Priests, Mages and Warlocks can learn this Schematic.
		learn Lightweight Bio-Optic Killshades##81725
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knigths can learn this Schematic.
		learn Reinforced Bio-Optic Killshades##81714
	step
		#include "trainer_Engineering"
		|tip Only Paladins can learn this Schematic.
		learn Specialized Bio-Opt##81715
	step
		#include "trainer_Engineering"
		|tip Only Shamans can learn this Schematic.
		learn Energized Bio-Optic Killshades##81720
	step
		#include "trainer_Engineering"
		learn Overpowered Chicken Splitter##84431
	step
		#include "trainer_Engineering"
		learn G91 Landshark##127127
	step
		#include "trainer_Engineering"
		learn Big Game Hunter##127136
	step
		#include "trainer_Engineering"
		learn Mirror Scope##127116
	step
		#include "trainer_Engineering"
		learn Mist-Piercing Goggles##127130
	step
		#include "trainer_Engineering"
		learn Goblin Glider##126392
	step
		#include "trainer_Engineering"
		learn Incendiary Fireworks Launcher##109077
	step
		#include "trainer_Engineering"
		learn Phase Fingers##108789
	step
		#include "trainer_Engineering"
		learn Synapse Springs##126731
	step
		#include "trainer_Engineering"
		learn Watergliding Jets##109099
	step
		#include "trainer_Engineering"
		learn Flashing Tinker's Gear##131211
	step
		#include "trainer_Engineering"
		learn Fractured Tinker's Gear##131212
	step
		#include "trainer_Engineering"
		learn Quick Tinker's Gear##131214
	step
		#include "trainer_Engineering"
		learn Rigid Tinker's Gear##131215
	step
		#include "trainer_Engineering"
		learn Smooth Tinker's Gear##131216
	step
		#include "trainer_Engineering"
		learn Sparkling Tinker's Gear##131217
	step
		#include "trainer_Engineering"
		learn Subtle Tinker's Gear##131218
	step
		#include "trainer_Engineering"
		learn Goblin Dragon Gun, Mark II##127128
	step
		#include "trainer_Engineering"
		learn Tinker's Kit##131563
	step
		#include "trainer_Engineering"
		learn Ghost Iron Dragonling##127134
	step
		#include "trainer_Engineering"
		learn Thermal Anvil##127131
	step
		#include "trainer_Engineering"
		learn Lord Blastington's Scope of Doom##127115
	step
		#include "trainer_Engineering"
		learn Long-Range Trillium Sniper##127137
	step
		#include "trainer_Engineering"
		learn Wormhole Generator: Pandaria##127132
	step
		#include "trainer_Engineering"
		learn Mechanical Pandaren Dragonling##127135
	step
		#include "trainer_Engineering"
		|tip Only Rogues, Monks and Druids can learn this Schematic.
		learn Agile Retinal Armor##127118
	step
		#include "trainer_Engineering"
		|tip Only Monks and Druids can learn this Schematic.
		learn Camouflage Retinal Armor##127119
	step
		#include "trainer_Engineering"
		|tip Only Hunters and Shamans can learn this Schematic.
		learn Deadly Retinal Armor##127120
	step
		#include "trainer_Engineering"
		|tip Only Priests, Mages and Warlocks can learn this Schematic.
		learn Lightweight Retinal Armor##127117
	step
		#include "trainer_Engineering"
		|tip Only Warriors, Paladins and Death Knights can learn this Schematic.
		learn Reinforced Retinal Armor##127123
	step
		#include "trainer_Engineering"
		|tip Only Paladins can learn this Schematic.
		learn Specialized Retinal Armor##127122
	step
		#include "trainer_Engineering"
		|tip Only Shamans can learn this Schematic.
		learn Energized Retinal Armor##127121
	step
		#include "trainer_Engineering"
		learn Blingtron 4000##127129
	step
		#include "trainer_Engineering"
		learn Depleted-Kyparium Rocket##127138
	step
		#include "trainer_Engineering"
		learn Geosynchronous World Spinner##127139
]])

ZygorGuidesViewer:RegisterInclude("Engineering_600-700",[[
// ----------
// 600-700
// ---------- #include "H_Garrison_SmallBuilding",action="talk Pozzlow##79826",building="Engineering"
// TRAIN: Draenor Master Engineering
	step
		Before you continue, open your Engineering window to detect your profession |cast Engineering##4036
		skillmax Engineering,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _Engineering Works_ to a _Small Plot_
		Build your Engineering Works |havebuilding Engineering
	step
		#include "H_Garrison_SmallBuilding",action="talk Pozzlow##79826",building="Engineering"
		buy Draenor Engineering##111921 |condition skillmax("Engineering") >= 700 or itemcount(111921) >= 1
	step
		use Draenor Engineering##111921
		skillmax Engineering,700
	step
		map Frostfire Ridge
		path follow loose; loop on; ants curved
		path	43.0,58.3	40.8,60.5	38.4,59.3
		path	36.0,57.0	34.3,54.6	31.6,54.8
		path	28.5,49.5	27.9,44.6	24.5,39.7
		path	23.9,34.1	27.9,30.9	31.9,27.0
		path	32.6,25.7	33.5,20.5	36.3,21.0
		path	37.8,26.5	41.0,28.9	42.1,30.6
		path	43.0,31.0	44.7,31.2	49.7,35.4
		path	52.4,38.3	54.3,39.5	48.5,50.1
		path	47.6,54.9	46.2,58.3	43.3,57.9
		Make sure you are tracking minerals, and gather all _True Iron Ore_ and _Blackrock Ore_ you see as you follow this path
		collect 1525 True Iron Ore##109119 |condition skill("Engineering")>=700
		collect 1520 Blackrock Ore##109118 |condition skill("Engineering")>=700
		|tip You can also buy these materials from the Auction House.
	step
		#include "H_Garrison_SmallBuilding",action="talk Pozzlow##79826",building="Engineering"
		accept Your First Engineering Work Order##37571 |condition skillmax("Engineering") >= 700
	step
		#include "H_Garrison_SmallBuilding",action="talk Garbra Fizzwonk##86696",building="Engineering"
		Tell her: _"I would like to place a work order."_ |q Your First Engineering Work Order##37571/1 
	step
		#include "H_Garrison_SmallBuilding",action="click Engineering Work Order",building="Engineering"
		Engineering Work Order Collected |q Your First Engineering Work Order##37571/2
	step
		#include "H_Garrison_SmallBuilding",action="talk Garbra Fizzwonk##86696",building="Engineering"
		turnin Your First Engineering Work Order##37571 
	step
		create Secrets of Draenor Engineering##177054,Engineering,1 total |n
		|tip This can be done daily in order to earn additional crafting recipes
		collect Secrets of Draenor Engineering##119299 |condition skill("Engineering")>=700
	step
		talk Pozzlow##79826
		buy 1 Schematic: Didi's Delicate Assembly##118493 |condition _G.IsSpellKnown(169078) or itemcount(118493) >= 1 or skillmax("Engineering") >= 700
	step
		use Schematic: Didi's Delicate Assembly##118493
		learn Didi's Delicate Assembly##169078 |condition skillmax("Engineering") >= 700
	step
		create Didi's Delicate Assembly##169078,Engineering,700
	step
		Congratulations, you have reached level 700 in Engineering!
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- First Aid
--------------------------------------------------------------------------------------------------------------------------------------





--------------------------------------------------------------------------------------------------------------------------------------
-- Fishing
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("H_Old_Gnome_and_the_Sea",[[
		_Walk along_ the river until you find Sagefish Schools if you're unable to see one at this spot
		_Use_ your fishing ability |cast Fishing##7620
		_Successfully fish_ from a school |achieve 153 |goto Ashenvale 78.0,51.7
	step
		Congratulations, you have _earned_ the _The Old Gnome and the Sea_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Scavenger",[[
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from Steam Pump Flotsam |achieve 1257/1 |goto Zangarmarsh 57.0,56.0
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from Schooner Wreckage |achieve 1257/3 |goto Northern Stranglethorn 31.0,37.7
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from Bloodsail Wreckage |achieve 1257/2 |goto The Cape of Stranglethorn 30.9,81.5
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from Floating Wreckage |achieve 1257/5 |goto Tanaris 67.4,38.2
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from Waterlogged Wreckage |achieve 1257/4 |goto Feralas 63.1,51.5 
	step
		Congratulations, you have _earned_ the _The Scavenger_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Fishing_Diplomat",[[
		_Use_ your fishing ability |cast Fishing##7620
		Fish something up in Orgrimmar |achieve 150/1 |goto Orgrimmar 24.8,62.8
	step
		_Use_ your fishing ability |cast Fishing##7620
		Fish something up in Stormwind City |achieve 150/2 |goto Stormwind City 69.0,92.2
	step
		Congratulations, you have _earned_ the _The Fishing Diplomat_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Mr._Pinchy's_Magical_Crawdad_Box",[[
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
		Mr. Pinchy will _grant you 3 wishes_ on a four hour cooldown |tip He has a chance to grant you the Magical Crawdad Box
		_If all three wishes fail_ to give you the pet you will have to fish him up again
		use Mr. Pinchy##27388
		collect Magical Crawdad Box##27445 |achieve 726
	step
		Congratulations, you have _earned_ the _Mr. Pinchy's Magical Crawdad Box_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Lurker_Above",[[
		ding 70
	step
		_Swim down_ underwater through the tube to the Coilfang Reservoir |goto Zangarmarsh 50.4,41.0 < 20 |walk
	step
		_Ride_ the elevator down |goto Serpentshrine Cavern 13.5,59.6 < 10 
		_Walk up_ the ramp and ride the elevator up |goto Serpentshrine Cavern 19.6,68.5 < 20 
		_Walk over_ to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5<20
		_Use_ your fishing ability |cast Fishing##7620
		_Fish up_ The Lurker Below |achieve 144 |goto Serpentshrine Cavern,38.6,59.5
	step
		Congratulations, you have _earned_ the _The Lurker Above_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Old_Man_Barlowned",[[
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
ZygorGuidesViewer:RegisterInclude("H_Outland_Angler",[[
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Sporefish school |achieve 1225/6 |goto Zangarmarsh 72.5,59.9 |tip Check around this area
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Highland Mixed school |achieve 1225/5 |goto Terokkar Forest 60.8,59.0 |tip Check around this area
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a School of Darter school |achieve 1225/4 |goto Terokkar Forest 55,44 |tip Check around this area
		_Fish_ from a Brackish Mixed school |achieve 1225/1 |goto Terokkar Forest 53,38 |tip Check around this area
	step
		_Use_ your fishing ability |cast Fishing##7620
		_Fish_ from a Bluefish school |achieve 1225/2 |goto Nagrand 53,39 |tip Check around this area
		_Fish_ from a Mudfish school |achieve 1225/3 |goto Nagrand 54,30 |tip Check around this area
	step
		Congratulations, you have _earned_ the _Outland Angler_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fish_Don't_Leave_Footprints",[[
		_Use_ your fishing ability to fish from Schooner Wreckage along The Savage Coast |cast Fishing##7620
		|tip You may need to fish out the other schools of fish to get them to spawn
		collect Weather-Beaten Journal##34109
		use Weather-Beaten Jounral##34109 |achieve 1243 |goto Northern Stranglethorn 31.0,37.7
	step
		Congratulations, you have _earned_ the _Fish Don't Leave Footprints_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Coin_Master",[[
	step
		This guide will help you earn the achievements A Penny For Your Thoughts, Silver in the City, There's Gold In That There Fountain, and finally, The Coin Master
		Click here to proceed |confirm
	step
		Here is your current progression on The Coin Master
		A Penny For Your Thoughts |achieve 2096/1
		Silver in the City |achieve 2096/2
		There's a Gold In That There Fountain |achieve 2096/3
		Click here to proceed |confirm
	step
		Use your fishing skills to fish up Copper, Silver and Gold Coins |cast Fishing##7620
		|tip This fountain is where you will be fishing from to earn these achievements.
		Earn the A Penny For Your Thoughts achievement |achieve 2096/1 |goto Dalaran 52.6,66.5
		Earn the Silver in the City achievement |achieve 2096/2 |goto Dalaran 52.6,66.5
		Earn the There's Gold In That There Fountain achievement |achieve 2096/3 |goto Dalaran 52.6,66.5
		This achievement takes a lot of time, so try to be patient
	step
		Earn the A Penny For Your Thoughts Achiement |achieve 2094
		Earn the Silver in the City achievement |achieve 2095
		Earn the There's Gold In That There Fountain achievement |achieve 1957
		Earn The Coin Master achievement |achieve 2096
	step
		Congratulation, you have earned The Coin Master achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_One_That_Didn't_Get_Away",[[
		The fish required by this achievement have a _very low drop rate_ and will be difficult to catch
		confirm
	step "start"
		You only need to _catch one of the below_ to earn this achievement so click one and start fishing!
		_Click here_ to catch a 15 Pound Mud Snapper |achieve 878/2 |confirm |next "Snapper"
		_Click here_ to catch a 22 Pound Lobster |achieve 878/3 |confirm |next "Lobster"
		_Click here_ to catch a 29 Pound Salmon |achieve 878/4 |confirm |next "Salmon"
		_Click here_ to catch a 32 Pound Catfish |achieve 878/5 |confirm |next "Catfish"
		_Click here_ to catch a 52 Pound Redgill |achieve 878/6 |confirm |next "Redgill"
		_Click here_ to catch a 68 Pound Grouper |achieve 878/7 |confirm |next "Grouper"
		_Click here_ to catch a 103 Pound Mightfish |achieve 878/1 |confirm |next "Mightfish"
		_Click here_ to catch a Dark Herring |achieve 878/8 |confirm |next "Herring"
		_Click here_ to catch a Rockhide Strongfish |achieve 878/9 |confirm |next "Strongfish"
		_Click here_ to catch a Steelscale Crushfish |achieve 878/10 |confirm |next "Crushfish"
		next "end" |only if achieved(878)
	stickystart "shortcut"
	step "Snapper"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 15 Pound Mud Snapper |achieve 878/2 |goto Elwynn Forest 47.7,62.5
		next "start" 
	step "Lobster"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 22 Pound Lobster |achieve 878/3 |goto Swamp of Sorrows 84.0,86.4
		next "start" 
	step "Salmon"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 29 Pound Salmon |achieve 878/4 |goto Blasted Lands 41.4,64.7
		next "start" 
	step "Catfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 32 Pound Catfish |achieve 878/5 |goto Ashenvale 48.1,68.1
		next "start" 
	step "Redgill"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 52 Pound Redgill |achieve 878/6 |goto Felwood 42.6,46.4
		next "start" 
	step "Grouper"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 68 Pound Grouper |achieve 878/7 |goto Thousand Needles 39.2,32.2
		next "start" 
	step "Mightfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a 103 Pound Mightfish |achieve 878/1 |goto Azshara 60.6,67.7
		next "start" 
	step "Herring"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a Dark Herring |achieve 878/8 |goto Howling Fjord 57.2,33.9
		next "start" 
	step "Strongfish"
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ a Rockhide Strongfish |achieve 878/9 |goto Northern Stranglethorn 33.8,41.8
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
ZygorGuidesViewer:RegisterInclude("H_Master_Angler_of_Azeroth",[[
		To earn this Achievement _you need to go_ to Booty Bay
		|tip You can try this every Sunday from 2pm to 4pm SERVER TIME
		It is recommended you _bring along as many items as you have_ to increase your fishing level
		confirm
	step
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
		_Use_ your fishing ability on schools of Speckled Tastyfish |cast Fishing##7620
		collect 40 Speckled Tastyfish##19807 |goto The Cape of Stranglethorn 39.1,57.9
	step
		talk Riggle Bassbait##15077
		turnin Grand Prize##8193 |or |goto The Cape of Stranglethorn 41.7,73.0
		turnin Second Prize##32435 |or |goto The Cape of Stranglethorn 41.7,73.0
		turnin Third Prize##32436 |or |goto The Cape of Stranglethorn 41.7,73.0
		_Earn_ First, Second, or Third prize |achieve 306
	step
		Congratulations, you have _earned_ the _Master Angler of Azeroth_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Grand_Master_Fisherman",[[
		next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
	step
		Obtain 450 skill points in fishing |achieve 130
	step
		Congratulations, you have _earned_ the _Grand Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Thousand_Fish",[[
		_Use_ your fishing ability |cast Fishing##7620
		_Catch_ #1000# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
	step
		Congratulations, you have _earned_ the _1000 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Master_Angler_of_Northrend",[[
	step
		To earn this Achievement, you need to go to Northrend, catch a _Blacktip Shark_ and be the first to turn it in
		|tip You can start fishing every _Saturday_ at _2pm SERVER TIME_, you will hear the NPC yell out that the contest has started, make sure you are next to a school of fish, and start fishing!
		confirm
	step
		talk Shankys##3333
		buy 1 Fishing Pole##6256 |goto Orgrimmar 66.6,41.6
		buy 10 Shiny Bauble##6529 |goto Orgrimmar 66.6,41.6
		confirm
	step
		talk Uda the Beast##31557
		home Dalaran |goto Dalaran 65.7,32.2
	step
		talk Elder Clearwater##38294
		turnin Kalu'ak Fishing Derby##24803 |goto Dalaran 52.4,65.2
	step
		click Teleport to Violet Stand Crystal##8070 |goto Dalaran 56.0,46.8
		Teleport to the Violet Stand |goto Crystalsong Forest |noway |c
	step
		map Crystalsong Forest
		path follow loose;loop off;ants straight
		path	22.5,35.4
		path	25.2,43.4	29.6,45.2	34.0,47.9
		path	38.7,54.4	44.8,56.7	50.3,56.4
		Follow this path and turn your _Track Fishing_ on
		Fish up a _Blacktip Shark_ from any school of fish |use Fishing Pole##6256
		use Shiny Bauble##6529
		|tip Attach your Shiny Bauble to your fishing pole to increase your fishing skill slightly.
		collect Blacktip Shark##50289
	step
		talk Elder Clearwater##38294
		turnin Kalu'ak Fishing Derby##24803
		If you are the first to turn in this quest you will get an achievement
		Earn the Achievement Master Angler of Azeroth |achieve 306 |goto Dalaran 52.4,65.2
]])
ZygorGuidesViewer:RegisterInclude("H_TB_Fishing_Dailies",[[
		talk Kah Mistrunner##3028 |or
		accept Craving Crayfish##29349 |or |goto Thunder Bluff 56.0,47.0
		accept Pond Predators##29345 |or |goto Thunder Bluff 56.0,47.0
		accept Shiny Baubles##29354 |or |goto Thunder Bluff 56.0,47.0
		accept The Race to Restock##29348 |or |goto Thunder Bluff 56.0,47.0
		accept The Ring's the Thing##29346 |or |goto Thunder Bluff 56.0,47.0
	step
		Dive into the water and click on the Stonebull Crafish
		|tip They look like little blue crabs.
		collect 10 Stonebull Crayfish##69977 |q 29349/1 |goto Mulgore 44.9,54.8
		only if havequest(29349)
	step
		Use your Fishing skill here to catch Azshara Snakeheads |cast Fishing##7620
		collect 8 Azshara Snakehead##69934 |q 29345/1 |goto Thunder Bluff 41.7,59.4
		only if havequest(29345)
	step
		Click on the Shiny Stones lying on the ground around Thunder Bluff's base
		|tip They look like shinning purple stones
		collect 20 Shiny Stone##69983 |q 29354/1 |goto Thunder Bluff 35.6,40.9
		only if havequest(29354)
	step
		Use your Fishing skill here to catch Randy Smallfish and Amorous Mud Snapper |cast Fishing##7620
		collect 2 Randy Smallfish##69964 |q 29348/1 |goto Mulgore 49.6,49.5
		collect 2 Amorous Mud Snapper##69967 |q 29348/2 |goto Mulgore 49.6,49.5
		only if havequest(29348)
	step
		Use your Fishing skill in the glowing water here |cast Fishing##7620
		collect 1 Poshken's Ring##69935 |q 29346/1 |goto Thunder Bluff 28.8,20.4
		only if havequest(29346)
	step
		talk Kah Mistrunner##3028
		turnin Craving Crayfish##29349 |goto Thunder Bluff 56.0,47.0
		turnin Pond Predators##29345 |goto Thunder Bluff 56.0,47.0
		turnin The Race to Restock##29348 |goto Thunder Bluff 56.0,47.0
		only if havequest(29349) or havequest(29345) or havequest(29348)
	step
		talk Nahari Cloudchaser##29354
		turnin Shiny Baubles##29354 |goto Thunder Bluff 35,53.8
		only if havequest(29354)
	step
		talk Poshken Hardbinder##30709
		turnin The Ring's the Thing##29346 |goto Thunder Bluff 28.8,20.4
		only if havequest(29346)
]])
ZygorGuidesViewer:RegisterInclude("H_Org_Fishing_Dailies",[[
		talk Razgar##43239
		You will only be able to complete 1 of the following quests per day
		accept A Furious Catch##26588 |or |goto Orgrimmar 65.7,41.1
		accept A Golden Opportunity##26572 |or |goto Orgrimmar 65.7,41.1
		accept A Staggering Effort##26557 |or |goto Orgrimmar 65.7,41.1
		accept Clammy Hands##26543 |or |goto Orgrimmar 65.7,41.1
		accept No Dumping Allowed##26556 |or |goto Orgrimmar 65.7,41.1
	step
		Fish in the river in this spot
		collect Giant Furious Pike##58951 |q 26588/1 |goto Durotar 37.4,16.8
		|tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
	step
		use Razgar's Fillet Knife##58955
		|tip Use Razgar's Fillet Knife on a Drowned Thunder Lizard.
		|tip They look like dead dinosaurs underwater around this area.
		collect Drowned Thunder Lizard Tail##58958 |n
		use Drowned Thunder Lizard Tail##58958
		|tip Use your Drowned Thunder Lizard Tail next to Golden Stonefish.
		|tip They look like big yellow fish underwater around this area.
		collect 3 Golden Stonefish##58960 |q 26572/1 |goto 42.8,24.0
	step
		click Monstrous Clam##261+
		|tip They look like huge white clams underwater around this area.
		collect 10 Monstrous Clam Meat##58934 |q 26543/1 |goto 57.2,9.5
	step
		kill Weakened Mosshoof Stag##35096+
		collect 1 Stag Eye##58949 |q 26557 |goto Azshara 27.6,74.5
	step
		Use your Stag Eye |use Stag Eye##58949
		|tip Fish in the water off the dock in this spot.
		collect Sandy Carp##58946 |q 26557/1 |goto Orgrimmar 46.2,46.5
	step
		Fish in the water in this spot
		collect 6 Toxic Puddlefish##58945 |q 26556/1 |goto 38.5,80.1
	step
		talk Razgar##43239
		You will only be able to complete 1 of the following quests per day
		turnin A Furious Catch##26588 |goto 65.7,41.1
		turnin A Golden Opportunity##26572 |goto 65.7,41.1
		turnin A Staggering Effort##26557 |goto 65.7,41.1
		turnin Clammy Hands##26543 |goto 65.7,41.1
		turnin No Dumping Allowed##26556 |goto 65.7,41.1
]])
ZygorGuidesViewer:RegisterInclude("H_UC_Fishing_Dailies",[[
		talk Armand Cromwell##4573
		You will only be able to accept one of the five quests listed
		accept Fish Head##29317 |or |goto Undercity 81.6,30.8
		accept Like Pike?##29320 |or |goto Undercity 81.6,30.8
		accept Moat Monster!##29361 |or |goto Undercity 81.6,30.8
		accept Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
		accept Time for Slime##29322 |or |goto Undercity 81.6,30.8
	step
		Use your Fishing skill at the edge of the wooden dock |cast Fishing##7620
		|tip Fish up a Severed Abomination Head.
		collect Severed Abomination Head##69901 |q 29317/1 |goto 81.6,31.5
		only if havequest(29317)
	step
		Click on the graves here
		|tip It looks like sparkling dirt in front of a grave stone.
		collect Corpse Worm##69907 |goto Undercity 67.3,15.2
		only if havequest(29320)
	step
		Use your Fishing skill in the water here to fish up Corpse-Fed Pike |cast Fishing##7620
		collect Corpse-Fed Pike##69909 |q 293320/1 |goto Tirisfal Glades 67.1,50.8
		only if havequest(29320)
	step
		use Moat Monster Feeding Kit##69999
		Lure the Moat Monster out with the Alliance Decoy |use Alliance Decoy Ki##69998
		Feed the Moat Monster with your Bloated Frogs! |use Bloated Frog##69995
		Feed Bloated Frogs to the Moat Monster |q 29361/1 |goto Undercity 64.7,16.5
		only if havequest(29361)
	step
		Use your Fishing skill |cast Fishing##7620
		|tip Fish up Giant Flesh-Eating Tadpoles.
		collect 8 Giant Flesh-Eating Tadpole##69905 |q 29319/1 |goto Tirisfal Glades 50.6,56.5
		only if havequest(29319)
	step
		clicknpc Squirming Slime Mold##53517+
		|tip These are a bit hard to see, so, to see them better, you can dive into the water, or turn on your display health bars by pushing [V].
		collect 10 Squirming Slime Mold##69911 |q 29322/1 |goto Undercity 81.1,32.0
		only if havequest(29322)
	step
		talk Armand Cromwell##4573
		turnin Like Pike?##29320 |or |goto Undercity 81.6,30.8
		turnin Moat Monster!##29361 |or |goto Undercity 81.6,30.8
		turnin Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
		turnin Time for Slime##29322 |or |goto Undercity 81.6,30.8
		only if havequest(29320) or havequest(29361) or havequest(29319) or havequest(29322)
	step
		talk Master Apothecary Faranell##2055 |or
		turnin Fish Head##29317 |goto Undercity 48.4,69.4
		only if havequest(29317)
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Herbalism
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("GatherHerb_Peacebloom_Silverleaf", [[
]])


---------------------------------
--VANILLA HERB
---------------------------------

	--Preacebloom // Silverleaf // Earthroot
	ZygorGuidesViewer:RegisterInclude("H_Herb1",[[
		map Durotar
		path follow loose;loop;ants straight;dist 60 // this stays set until the end of the guide.
		path 46.2,17.1		38.8,16.2		38.7,22.1
		path 37.9,30.4		48.5,32.8		51.4,36.5
		path 51.7,52.0		53.6,62.4		55.6,69.7
		path 60.9,69.1		60.7,58.0		57.6,46.9
		path 55.0,32.4		57.8,26.1		53.4,12.5
	]])

	--Bloodthistle

	--Mageroyal // Bruiseweed // Briarthorn // Stranglekelp
	ZygorGuidesViewer:RegisterInclude("H_Herb2",[[
		map Hillsbrad Foothills
		path follow loose;loop;ants straight;dist 70
		path 31.8,62.6		33.9,54.0		29.7,44.1
		path 35.5,37.8		34.5,28.2		39.5,21.0		
		path 44.2,8.3		51.3,14.0		57.5,20.9	
		path 56.1,34.3		49.9,46.2		41.2,46.6
		path 40.1,55.0		41.3,67.4		31.8,71.9
	]])

	--Swiftthistle

	--Briarthorn

	--Bruiseweed

	--Stranglekelp

	--Gravemoss // Kingsblood // Liferoot // Wild Steelbloom
	ZygorGuidesViewer:RegisterInclude("H_Herb3",[[
		map Northern Stranglethorn
		path follow loose;loop;ants straight;dist 70
		path 64.2,25.4		63.9,39.4		56.2,43.2	
		path 42.5,43.9		35.9,32.9		31.5,37.2	
		path 23.1,32.3		17.4,24.1
	]])

	--Kingsblood
	ZygorGuidesViewer:RegisterInclude("WPL_KB",[[
		map Western Plaguelands
		path follow loose;loop;ants straight;dist 70
		path	31.8,59.3	43.5,53.2	45.9,44.7
		path	45.2,35.2	49.5,35.1	51.0,47.4
		path	61.8,52.0	67.2,44.5	63.6,56.0
		path	56.6,60.1	52.6,67.5	46.4,59.2
		path	33.7,62.7
	]])
	ZygorGuidesViewer:RegisterInclude("Liferoot_Kelp",[[
	--Liferoot
		map Western Plaguelands/0
		path follow loose;loop;ants straight;dist 45
		path	51.0,72.6	55.1,75.8	59.0,81.8
		path	63.1,82.7	66.6,84.2	70.3,83.8
		path	73.6,82.6	78.3,80.7	79.7,75.4
		path	80.0,70.5	78.6,66.6	75.9,65.4
		path	76.6,61.8	73.1,59.7	68.7,61.7
		path	64.3,64.1	60.1,65.3	56.6,69.5
		path	53.8,72.2
	]])

	ZygorGuidesViewer:RegisterInclude("GT_WSB",[[
		map Arathi Highlands
		path follow loose;loop;ants straight;dist 60
		path	43.3,39.0	57.6,29.0	70.6,28.6
		path	73.6,31.7	75.6,39.6
		path	50.7,74.5	41.0,80.2
		path	28.7,67.9	9.0,70.2	19.9,34.9
		path	29.1,48.4
	]])

	--Fadeleaf // Goldthorn // Khadgar's Whisker

	ZygorGuidesViewer:RegisterInclude("H_Herb4",[[
		map Feralas
		path follow loose;loop;ants straight;dist 60
		path 73.0,42.0		72.9,37.3		70.5,37.1	
		path 69.2,42.3		67.3,45.9		63.9,48.1	
		path 59.4,46.6		59.8,54.2		56.0,60.1		55.2,66.6
		path 58.6,64.7		61.3,61.9		62.8,58.0
		path 68.8,50.3		69.0,60.1		71.4,60.0
		path 72.1,55.5		75.9,56.6		
		path 73.3,50.2
	]])
	
	--Sungrass##8838 // Arthas' Tears##8836

-- This don't appear to be used in any of our files.
	ZygorGuidesViewer:RegisterInclude("H_Herb5",[[
		map Eastern Plaguelands
		path 73.7,55.4		73.4,61.0		71.1,66.8	
		path 69.0,72.5		65.1,74.2		59.7,71.1	
		path 54.6,68.0		48.9,71.6		44.4,71.7	
		path 39.7,73.9		30.2,75.8		21.6,74.3	
		path 16.1,70.3		16.5,62.4		23.1,61.5	
		path 30.9,61.6		40.0,60.9		45.1,48.1	
		path 46.9,30.5		47.4,19.9		56.2,19.5	
		path 63.6,37.3		64.1,60.0
	]])
	
	--Golden Sansam // Sorrow Moss

	ZygorGuidesViewer:RegisterInclude("H_Herb6",[[
		map Swamp of Sorrows
		path follow loose;loop;ants straight;dist 60
		path 18.8,60.4		23.9,55.3		27.3,62.0
		path 37.5,53.6		57.5,59.1		77.4,79.5
		path 80.9,60.1		88.6,63.4		79.9,42.4		
		path 75.1,23.5		50.7,31.3		24.6,45.3		
		path 14.1,33.2		21.5,45.0
	]])

	--Dragon's Teeth

	--Firebloom

	--Purple Lotus

	--Wildvine

	--Arthas' Tears

	--Sungrass
	ZygorGuidesViewer:RegisterInclude("Sungrass_P",[[
		map Searing Gorge 
		path follow loose;loop;ants straight;dist 60
		path	66.9,43.2	58.9,53.0	55.6,68.1
		path	49.8,70.1	45.9,61.5	38.1,74.9
		path	31.0,67.8	32.1,56.9	29.4,44.8
		path	37.5,47.8	40.5,39.1	47.2,42.1
		path	53.5,35.4	77.0,19.0
	]])

	--Blindweed

	--Ghost Mushroom

	--Gromsblood
	ZygorGuidesViewer:RegisterInclude("Groms_Blood",[[
		map Felwood
		path follow loose;loop;ants straight;dist 60
		path 50.5,80.9		47.6,75.8		45.4,71.4	
		path 44.9,66.4		42.9,58.3		43.6,52.1	
		path 45.2,42.1		49.6,33.6		55.3,24.8	
		path 57.5,15.5		54.3,14.1		42.7,21.7	
		path 40.0,37.5		40.0,46.5		39.6,56.9	
		path 39.1,66.2		38.9,71.3		42.7,84.7
	]])

	--Golden Sansam

	--Dreamfoil

	--Icecap

	--Mountain Silversage

	--Sorrowmoss

	--Black Lotus

---------------------------------
--BC HERB
---------------------------------

	--Felweed

	--Dreaming Glory

	--Ragveil

	--Terocone

	--Flame Cap

	--Ancient Lichen

	--Netherbloom

	--Netherdust Bush

	--Nightmare Vine

	--Mana Thistle

	--Fel Lotus

---------------------------------
--WOTLK HERB
---------------------------------

	--Goldclover

	--Fireleaf

	--Tiger Lily

	--Talandra's Rose

	--Fronzen Herb

	--Adder's Tongue

	--Deadnettle

	--Lichbloom

	--Icethorn

	--Frost Lotus

---------------------------------
--CATA HERB
---------------------------------

	--Cinderbloom

	--Stormvine

	--Azshara's Veil

	--Heartblossom

	--Whiptail

	--Twilight Jasmine

---------------------------------
--MOP HERB
---------------------------------
	
	--Green Tea Leaf

	--Rain Poppy

	--Silkweed

	--Golden Lotus

	--Snow Lily

	--Sha-Touched Herb

	--Fool's Cap

---------------------------------
--WOD HERB
---------------------------------

	--Frostweed

	--Starflower

	--Gorgrond Flytrap

	--Talador Orchid

	--Fireweed

	--Nagrand Arrowbloom



--------------------------------------------------------------------------------------------------------------------------------------
-- Inscription
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("Inscription_600-700",[[
// ----------
// 600-700
// ----------
// TRAIN: Draenor Master Inscription
	step
		Before you continue, open your Inscription window to detect your profession |cast Inscription##45357
		skillmax Inscription,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _Scribe's Quaters_ to a _Small Plot_
		Build your Scribe's Quarters |havebuilding Inscription
	step
		#include "H_Garrison_SmallBuilding",action="talk Urgra##79829",building="Inscription"
		buy Draenor Inscription##111923 |condition skillmax("Inscription") >= 700 or itemcount(111923) >= 1
	step
		use Draenor Inscription##111923
		skillmax Inscription,700
	step
		map Frostfire Ridge
		path follow loose; loop on; ants curved
		path	31.1,53.3	26.1,53.7	24.2,49.0
		path	23.2,45.2	20.7,39.5	22.2,33.9
		path	21.8,29.7	20.9,25.4	23.1,23.6
		path	25.1,24.6	27.2,22.3	29.7,21.4
		path	31.2,22.0	32.8,21.7	35.1,19.5
		path	36.9,24.3	38.1,26.8	40.8,28.9
		path	41.6,30.6	42.8,29.9	42.9,31.1
		path	44.4,31.1	46.2,31.7	48.9,34.4
		path	51.6,36.9	53.7,35.1	54.5,30.3
		path	56.5,26.1	59.1,28.4	60.0,31.9
		path	61.2,34.9	63.1,40.9	63.4,45.0
		path	60.9,46.9	62.2,52.4	60.3,55.3
		path	57.9,57.5	53.8,55.8	50.6,54.7
		path	47.7,55.6	45.9,58.9	43.1,60.8
		path	40.3,62.1	37.7,58.7	36.5,56.5
		path	35.5,53.3	33.6,49.2	31.1,51.2
		Make sure you have find herbs turned on
		collect Frostweed##109124 |n
		collect Starflower##109127 |n
		Mill the herbs you get |cast Milling##51005
		collect 1188 Cerulean Pigment##114931 |condition skill("Inscription") >=700
		|tip You can also buy these materials from the Auction House.
	step
		#include "H_Garrison_SmallBuilding",action="talk Urgra##79829",building="Inscription"
		accept Your First Inscription Work Order##37572 |condition skillmax("inscription") >= 700
	step
		#include "H_Garrison_SmallBuilding",action="talk Y'rogg##79831",building="Inscription"
		Tell him _"I would like to place a work order."_ |q Your First Inscription Work Order##37572/1
	step
		#include "H_Garrison_SmallBuilding",action="click Inscription Work Order##",building="Inscription"
		Gather your first work order |q Your First Inscription Work Order##37572/2
	step
		#include "H_Garrison_SmallBuilding",action="talk Y'rogg##79831",building="Inscription"
		turnin Your First Inscription Work Order##37572
	step
		create 1 Secrets of Draenor Inscription##177045,Inscription,1 total |n |tip This can be done daily in order to get more recipes.
		collect 1 Secret of Draenor Inscription##119297 |condition skill("Inscription")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Urgra##79829",building="Inscription"
		buy 1 Technique: Volatile Crystal##118614 |condition _G.IsSpellKnown(166432) or itemcount(118614) >= 1 or skillmax("Inscription") >= 700
	step
		use Technique: Volatile Crystal##118614
		learn Volatile Crystal##166432 |condition skill("Inscription")>=700
	step
		create Volatile Crystal##166432,Inscription,1 total |n
		create Card of Omens##166669,Inscription,1 total |n
		skill Inscription,700
	step
		Congratulations! You are now a Draenor Master Inscriptionist
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Jewelcrafting
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Jewelcrafting",[[
		This Recipe is learned by learning the Jewelcrafting Skill
		learn Delicate Copper Wire##25255
	step
		This Recipe is learned by learning the Jewelcrafting Skill
		learn Rough Stone Statue##32259
	step
		This Recipe is learned by learning the Jewelcrafting Skill
		learn Braided Copper Ring##25493
	step
		This Recipe is learned by learning the Jewelcrafting Skill
		learn Woven Copper Ring##26925
	step
		#include "trainer_Jewelcrafting"
		learn Heavy Copper Ring##26926
	step
		#include "trainer_Jewelcrafting"
		learn Malachite Pendant##32178
	step
		#include "trainer_Jewelcrafting"
		learn Tigerseye Band##32179
	step
		#include "trainer_Jewelcrafting"
		learn Inlaid Malachite Ring##25283
	step
		#include "trainer_Jewelcrafting"
		learn Ornate Tigerseye Necklace##26928
	step
		#include "trainer_Jewelcrafting"
		learn Bronze Setting##25278
	step
		#include "trainer_Jewelcrafting"
		learn Coarse Stone Statue##32801
	step
		#include "trainer_Jewelcrafting"
		learn Elegant Silver Ring##25280
	step
		#include "trainer_Jewelcrafting"
		learn Solid Bronze Ring##25490
	step
		#include "trainer_Jewelcrafting"
		learn Thick Bronze Necklace##26927
	step
		#include "trainer_Jewelcrafting"
		learn Simple Pearl Ring##25284
	step
		#include "trainer_Jewelcrafting"
		learn Bronze Band of Force##37818
	step
		#include "trainer_Jewelcrafting"
		learn Gloom Band##25287
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Necklace##36523
	step
		#include "trainer_Jewelcrafting"
		learn Bronze Torc##38175
	step
		#include "trainer_Jewelcrafting"
		learn Ring of Silver Might##25317
	step
		#include "trainer_Jewelcrafting"
		learn Heavy Silver Ring##25305
	step
		#include "trainer_Jewelcrafting"
		learn Ring of Twilight Shadows##25318
	step
		#include "trainer_Jewelcrafting"
		learn Heavy Jade Ring##36524
	step
		#include "trainer_Jewelcrafting"
		learn Heavy Stone Statue##32807
	step
		talk Daniel Bartlett##4561
		buy Design: Amulet of the Moon##20854 |n
		use Design: Amulet of the Moon##20854
		learn Amulet of the Moon##25339 |goto Undercity 64.8,38.2
	step
		#include "trainer_Jewelcrafting"
		learn Barbaric Iron Collar##25498
	step
		#include "trainer_Jewelcrafting"
		learn Moonsoul Crown##25321
	step
		#include "trainer_Jewelcrafting"
		learn Pendant of the Agate Shield##25610
	step
		#include "trainer_Jewelcrafting"
		learn Heavy Iron Knuckles##25612
	step
		talk Ranik##3499
		buy Design: Wicked Moonstone Ring##20855 |n
		use Design: Wicked Moonstone Ring##20855
		learn Wicked Moonstone Ring##25323 |goto Northern Barrens 67.0,73.4
	step
		#include "trainer_Jewelcrafting"
		learn Golden Dragon Ring##25613
	step
		#include "trainer_Jewelcrafting"
		learn Mithril Filigree##25615
	step
		#include "trainer_Jewelcrafting"
		learn Blazing Citrine Ring##25617
	step
		talk Felika##3367
		|tip He walks along this path. Some searching may be required.
		buy Design: Heavy Golden Necklace of Battle##20856 |n
		use Design: Heavy Golden Necklace of Battle##20856
		learn Heavy Golden Necklace of Battle##25320 |goto Orgrimmar 57.6,53.4
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Scarlet Monastery for grinding.
		collect Design: Jade Pendant of Blasting##20974 |n
		use Design: Jade Pendant of Blasting##20974
		learn Jade Pendant of Blasting##25618
	step
		#include "trainer_Jewelcrafting"
		learn Engraved Truesilver Ring##25620
	step
		talk Felicia Doan##4775
		buy Design: The Jade Eye##20975 |n
		use Design: The Jade Eye##20975
		learn The Jade Eye##25619 |goto Undercity 64.8,49.8
	step
		#include "trainer_Jewelcrafting"
		learn Solid Stone Statue##32808
	step
		#include "trainer_Jewelcrafting"
		learn Golden Ring of Power##34955
	step
		#include "trainer_Jewelcrafting"
		learn Citrine Ring of Rapid Healing##25621
	step
		This is a Random World Drop, from creatures level 30-46 and in some dungeons
		|tip We recommend Scarlet Monastery or Uldaman for grinding.
		collect Design: Citrine Pendant of Golden Healing##20976 |n
		use Design: Citrine Pendant of Golden Healing##20976
		learn Citrine Pendant of Golden Healing##25622
	step
		#include "trainer_Jewelcrafting"
		learn Amulet of Truesight##63743
	step
		#include "trainer_Jewelcrafting"
		learn Truesilver Commander's Ring##34959
	step
		This is a Random World Drop, from creatures level 30-46 and in some dungeons
		|tip We recommend Dire Maul or Maraudon for grinding.
		collect Design: Golden Hare##21940 |n
		use Design: Golden Hare##21940
		learn Figurine - Golden Hare##26873
	step
		#include "trainer_Jewelcrafting"
		learn Figurine - Jade Owl##26872
	step
		#include "trainer_Jewelcrafting"
		learn Aquamarine Signet##26874
	step
		talk Banalash##989
		buy Design: Black Pearl Panther##21941 |n
		use Design: Black Pearl Panther##21941
		learn Figurine - Black Pearl Panther##26875 |goto Swamp of Sorrows 46.6,57.0
	step
		#include "trainer_Jewelcrafting"
		learn Aquamarine Pendant of the Warrior##26876
	step
		#include "trainer_Jewelcrafting"
		learn Dense Stone Statue##32809
	step
		#include "trainer_Jewelcrafting"
		learn Thorium Setting##26880
	step
		talk Keena##2821
		buy Design: Ruby Crown of Restoration##21942 |n
		use Design: Ruby Crown of Restoration##21942
		learn Ruby Crown of Restoration##26878 |goto Arathi Highlands 69.2,33.6
	step
		talk Nerrist##1148
		buy Design: Truesilver Crab##21943 |n
		use Design: Truesilver Crab##21943
		learn Figurine - Truesilver Crab##26881 |goto Northern Stranglethorn 39.2,51.0
	step
		#include "trainer_Jewelcrafting"
		learn Red Ring of Destruction##36525
	step
		This is a Random World Drop, from creatures level 32-51 and in some dungeons
		|tip We recommend Dire Maul or Zul'Farrak for grinding.
		collect Design: Truesilver Boar##21944 |n
		use Design: Truesilver Boar##21944
		learn Figurine - Truesilver Boar##26882
	step
		#include "trainer_Jewelcrafting"
		learn Ruby Pendant of Fire##26883
	step
		#include "trainer_Jewelcrafting"
		learn Truesilver Healing Ring##26885
	step
		This is a Random World Drop, from creatures level 40-55 and in some dungeons
		|tip We recommend Swamp of Sorrows or Razorfen Downs for grinding.
		collect Design: The Aquamarine Ward##21945 |n
		use Design: The Aquamarine Ward##21945
		learn The Aquamarine Ward##26887
	step
		This is a Random World Drop, from creatures level 40-55 and in some dungeons
		|tip We recommend Stratholme or Razorfen Downs for grinding.
		collect Design: Gem Studded Band##21947 |n
		use Design: Gem Studded Band##21947
		learn Gem Studded Band##26896
	step
		talk Shadi Mistrunner##8363
		buy Design: Opal Necklace of Impact##21948 |n
		use Design: Opal Necklace of Impact##21948
		learn Opal Necklace of Impact##26897 |goto Thunder Bluff 40.6,62.6
	step
		This is a Random World Drop, from creatures level 38-60 and in some dungeons
		|tip We recommend Winterspring or Blackrock Depths for grinding.
		collect Design: Ruby Serpent##21949 |n
		use Design: Ruby Serpent##21949
		learn Figurine - Ruby Serpent##26900
	step
		#include "trainer_Jewelcrafting"
		learn Simple Opal Ring##26902
	step
		#include "trainer_Jewelcrafting"
		learn Diamond Focus Ring##36526
	step
		talk Mishta##15179
		buy Design: Emerald Crown of Destruction##21952 |n
		use Design: Emerald Crown of Destruction##21952
		learn Emerald Crown of Destruction##26906 |goto Silithus 53.8,34.4
	step
		#include "trainer_Jewelcrafting"
		learn Sapphire Signet##26903
	step
		#include "trainer_Jewelcrafting"
		learn Glowing Thorium Band##34960
	step
		#include "trainer_Jewelcrafting"
		learn Onslaught Ring##26907
	step
		#include "trainer_Jewelcrafting"
		learn Sapphire Pendant of Winter Night##26908
	step
		This is a Random World Drop, from creatures level 45-63 and in some dungeons
		|tip We recommend Swamp of Sorrows or Molten Core for grinding.
		collect Design: Emerald Owl##21953 |n
		use Design: Emerald Owl##21953
		learn Figurine - Emerald Owl##26909
	step
		talk Jase Farlane##12941
		buy Design: Ring of Bitter Shadows##21954 |n
		use Design: Ring of Bitter Shadows##21954
		learn Ring of Bitter Shadows##26910 |goto Eastern Plaguelands 74.2,51.0
	step
		#include "trainer_Jewelcrafting"
		learn Living Emerald Pendant##26911
	step
		#include "trainer_Jewelcrafting"
		learn Emerald Lion Ring##34961
	step
		talk Quartermaster Enuril##19331
		|tip You must be Friendly with the The Scryers to purchase this Design.
		buy Design: Brilliant Blood Garnet##23133 |n
		use Design: Brilliant Blood Garnet##23133
		learn Brilliant Blood Garnet##28903 |goto Shattrath City 60.6,64.2
	step
		#include "trainer_Jewelcrafting"
		learn Inscribed Flame Spessarite##28910
	step
		#include "trainer_Jewelcrafting"
		learn Radiant Deep Peridot##28916
	step
		#include "trainer_Jewelcrafting"
		learn Solid Azure Moonstone##28950
	step
		#include "trainer_Jewelcrafting"
		learn Timeless Shadow Draenite##28925
	step
		#include "trainer_Jewelcrafting"
		learn Bold Blood Garnet##28905
	step
		#include "trainer_Jewelcrafting"
		learn Delicate Blood Garnet##34590
	step
		#include "trainer_Jewelcrafting"
		learn Jagged Deep Peridot##28917
	step
		#include "trainer_Jewelcrafting"
		learn Sparkling Azure Moonstone##28953
	step
		#include "trainer_Jewelcrafting"
		learn Prismatic Black Diamond##62941
	step
		kill Quartermaster Zigris##9736
		collect Design: Black Diamond Crab##21955 |n
		use Design: Black Diamond Crab##21955
		learn Figurine - Black Diamond Crab##26912 |goto Blackrock Spire/5 53.8,84.8
	step
		talk Golem Lord Argelmach##8983
		collect Design: Dark Iron Scorpid##21956 |n
		use Design: Dark Iron Scorpid##21956
		learn Figurine - Dark Iron Scorpid##26914 |goto Blackrock Depths 36.8,66.0
	step
		talk Quartermaster Endarin##19321
		buy Design: Purified Shadow Draenite##23145 |n
		use Design: Purified Shadow Draenite##23145
		learn Purified Shadow Draenite##28927 |goto Shattrath City 48.0,26.6
	step
		talk Paulsta'ats##23007
		|tip You must be Friendly with The Consortium to purchase this Design.
		buy Design: Reckless Flame Spessarite##23136 |n
		use Design: Reckless Flame Spessarite##23136
		learn Reckless Flame Spessarite##28912 |goto Nagrand 30.6,57.0
		You can also purchase this from Karaaz here: [Netherstorm 43.6,34.4]
	step
		talk Qia##11189
		buy Design: Necklace of the Diamond Tower##21957 |n
		use Design: Necklace of the Diamond Tower##21957
		learn Necklace of the Diamond Tower##26915 |goto Winterspring 59.6,49.2
	step
		#include "trainer_Jewelcrafting"
		learn Fel Iron Blood Ring##31048
	step
		#include "trainer_Jewelcrafting"
		learn Golden Draenite Ring##31049
	step
		#include "trainer_Jewelcrafting"
		learn Band of Natural Fire##26916
	step
		#include "trainer_Jewelcrafting"
		learn Glinting Shadow Draenite##28914
	step
		talk Quartermaster Urgronn##17585
		buy Design: Regal Deep Peridot##31359 |n
		use Design: Regal Deep Peridot##31359
		learn Regal Deep Peridot##28918 |goto Hellfire Peninsula 54.8,37.8
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Magisters' Terrace or The Shattered Halls for grinding.
		collect Design: Stormy Azure Moonstone##23154 |n
		use Design: Stormy Azure Moonstone##23154
		learn Stormy Azure Moonstone##28955
	step
		talk Paulsta'ats##23007
		|tip You must be Honored with The Consortium to purchase this Design.
		buy Design: Subtle Golden Draenite##23150 |n
		use Design: Subtle Golden Draenite##23150
		learn Subtle Golden Draenite##28947 |goto Nagrand 30.6,57.0
		You can also purchase this from Karaaz here: [Netherstorm 43.6,34.4]
	step
		This Design may no longer in the game
		learn Arcanite Sword Pendant##26918
	step
		#include "trainer_Jewelcrafting"
		learn Azure Moonstone Ring##31050
	step
		talk Quartermaster Endarin##19321
		buy Design: Smooth Golden Draenite##23149 |n
		use Design: Smooth Golden Draenite##23149
		learn Smooth Golden Draenite##28944 |goto Shattrath City 48.0,26.6
	step
		#include "trainer_Jewelcrafting"
		learn Purified Jaggal Pearl##41420
	step
		#include "trainer_Jewelcrafting"
		learn Mercurial Adamantite##38068
	step
		talk Paulsta'ats##23007
		|tip You must be Friendly with The Consortium to purchase this Design.
		buy Design: Shifting Shadow Draenite##23146 |n
		use Design: Shifting Shadow Draenite##23146
		learn Shifting Shadow Draenite##28933 |goto Nagrand 30.6,57.0
		You can also purchase this from Karaaz here: [Netherstorm 43.6,34.4]
	step
		This Design is a dropped off the mobs in Blade'd Edge Mountains
		collect Design: Deadly Flame Spessarite##31874 |n
		use Design: Deadly Flame Spessarite##31874
		learn Deadly Flame Spessarite##39467
	step
		talk Nakodu##21655
		buy Design: Potent Flame Spessarite##23138 |n
		use Design: Potent Flame Spessarite##23138
		learn Potent Flame Spessarite##28915 |goto Shattrath City 62.6,69.0
	step
		#include "trainer_Jewelcrafting"
		learn Rigid Azure Moonstone##28948
	step
		#include "trainer_Jewelcrafting"
		learn Sovereign Shadow Draenite##28936
	step
		This is a drop from the mobs in Blade's Edge Mountains
		collect Design: Veiled Shadow Draenite##31873 |n
		use Design: Veiled Shadow Draenite##31873
		learn Veiled Shadow Draenite##39466
	step
		This Design may no longer be in the game
		learn Blood Crown##26920
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Pearl Band##41414
	step
		#include "trainer_Jewelcrafting"
		learn The Black Pearl##41415
	step
		#include "trainer_Jewelcrafting"
		learn Heavy Adamantite Ring##31052
	step
		#include "trainer_Jewelcrafting"
		learn Thick Adamantite Necklace##31051
	step
		#include "trainer_Jewelcrafting"
		learn Necklace of the Deep##40514
	step
		his is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Netherstorm for grinding.
		collect Design: Heavy Felsteel Ring##24163 |n
		use Design: Heavy Felsteel Ring##24163
		learn Heavy Felsteel Ring##31058
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Sethekk Halls for grinding.
		collect Design: Bold Living Ruby##24193 |n
		use Design: Bold Living Ruby##24193
		learn Bold Living Ruby##31084
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Glass##47280
	step
		kill Kael'thas Sunstrider##24664
		collect Design: Brilliant Living Ruby##35305 |n
		learn Brilliant Living Ruby##31088 |goto Magisters' Terrace 8.6,50.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Magisters' Terrace or Nagrand for grinding.
		collect Design: Deadly Noble Topaz##31879 |n
		use Design: Deadly Noble Topaz##31879
		learn Deadly Noble Topaz##39471
	step
		kill Eclipsion Soldier##22016
		collect Design: Delicate Living Ruby##24192 |n
		use Design: Delicate Living Ruby##24192
		learn Delicate Living Ruby##31085 |goto Shadowmoon Valley 53.0,62.8
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Karazhan or Black Temple for grinding.
		collect Design: Flashing Living Ruby##24198 |n
		use Design: Flashing Living Ruby##24198
		learn Flashing Living Ruby##31091
	step
		talk Ontuvo##27666
		buy Design: Forceful Talasite##35325 |n
		use Design: Forceful Talasite##35325
		learn Forceful Talasite##46405 |goto Shattrath City 48.8,41.8
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Old Hillsbrad Foothils or Shadow Labyrinth for grinding.
		collect Design: Glinting Nightseye##24216 |n
		use Design: Glinting Nightseye##24216
		learn Glinting Nightseye##31109
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Serpentshring Cavern or Netherstorm for grinding.
		collect Design: Inscribed Noble Topaz##24213 |n
		use Design: Inscribed Noble Topaz##24213
		learn Inscribed Noble Topaz##31106
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Auchenai Crypts or Shadowmoon Valley for grinding.
		collect Design: Jagged Talasite##24220 |n
		use Design: Jagged Talasite##24220
		learn Jagged Talasite##31113
	step
		talk Coreiel ##21474
		buy Design: Mystic Dawnstone##24208 |n
		use Design: Mystic Dawnstone##24208
		learn Mystic Dawnstone##31101 |goto Nagrand 42.8,42.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Karazhan or Blade's Edge Mountains for grinding.
		collect Design: Potent Noble Topaz##24214 |n
		use Design: Potent Noble Topaz##24214
		learn Potent Noble Topaz##31107
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Mana-Tombs for grinding.
		collect Design: Purified Nightseye##24219 |n
		use Design: Purified Nightseye##24219
		learn Purified Nightseye##31112
	step
		#include "trainer_Jewelcrafting"
		learn Purified Shadow Pearl##41429
	step
		talk Ontuvo##27666
		buy Design: Quick Dawnstone##35322 |n
		use Design: Quick Dawnstone##35322
		learn Quick Dawnstone##46403 |goto Shattrath City 48.8,41.8
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Sunwell Plateau or Black Temple for grinding.
		collect Design: Radiant Talasite##24218 |n
		use Design: Radiant Talasite##24218
		learn Radiant Talasite##31111
	step
		kill Eclipsion Soldier##22016
		collect Design: Rigid Star of Elune##31875 |n
		learn Rigid Star of Elune##31098 |goto Shadowmoon Valley 53.0,62.8
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Sunwell Plateau or Black Temple for grinding.
		collect Design: Shifting Nightseye##24210 |n
		learn Shifting Nightseye##31103
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Shadowmoon Valley for grinding.
		collect Design: Smooth Dawnstone##24204 |n
		use Design: Smooth Dawnstone##24204
		learn Smooth Dawnstone##31097
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Mechanar or Shadowmoon Valley for grinding.
		collect Design: Solid Star of Elune##24199 |n
		use Design: Solid Star of Elune##24199
		learn Solid Star of Elune##31092
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Terokkar Forest for grinding.
		collect Design: Sovereign Nightseye##24209 |n
		use Design: Sovereign Nightseye##24209
		learn Sovereign Nightseye##31102
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Old Hillsbrad Foothills or The Arcatraz for grinding.
		collect Design: Sparkling Star of Elune##24200 |n
		use Design: Sparkling Star of Elune##24200
		learn Sparkling Star of Elune##31149
	step
		talk Quartermaster Jaffrey Noreliqe##18821
		buy Design: Steady Talasite##33783 |n
		use Design: Steady Talasite##33783
		learn Steady Talasite##43493 |goto Nagrand 41.2,44.2
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Auchenai Crypts or Hyjal Summit for grinding.
		collect Design: Stormy Star of Elune##24202 |n
		use Design: Stormy Star of Elune##24202
		learn Stormy Star of Elune##31095
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Shadowmoon Valley for grinding.
		collect Design: Subtle Dawnstone##24197 |n
		use Design: Subtle Dawnstone##24197
		learn Subtle Dawnstone##31090
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Shattered Halls or Black Temple for grinding.
		collect Design: Timeless Nightseye##24211 |n
		use Design: Timeless Nightseye##24211
		learn Timeless Nightseye##31104
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Eye or Sethekk Halls for grinding.
		collect Design: Veiled Nightseye##31878 |n
		use Design: Veiled Nightseye##31878
		learn Veiled Nightseye##39470
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Shadowmoon Valley for grinding.
		collect Design: Khorium Band of Shadows##24158 |n
		use Design: Khorium Band of Shadows##24158
		learn Khorium Band of Shadows##31053
	step
		#include "trainer_Jewelcrafting"
		learn Dark Jade Focusing Lens##56205
	step
		#include "trainer_Jewelcrafting"
		learn Shadow Crystal Focusing Lens##56206
	step
		#include "trainer_Jewelcrafting"
		learn Accurate Shadow Crystal##53892
	step
		#include "trainer_Jewelcrafting"
		learn Bold Bloodstone##53831
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Bloodstone##53852
	step
		#include "trainer_Jewelcrafting"
		learn Champion's Huge Citrine##53874
	step
		talk Duchess Mynx##32538
		buy Design: Deadly Huge Citrine##41562 |n
		use Design: Deadly Huge Citrine##41562
		learn Deadly Huge Citrine##53877 |goto Icecrown 43.4,20.6
	step
		talk Tanaika##31916
		buy Design: Defender's Shadow Crystal##41574 |n
		use Design: Defender's Shadow Crystal##41574
		learn Defender's Shadow Crystal##53869 |goto Howling Fjord 25.4,58.6
	step
		#include "trainer_Jewelcrafting"
		learn Deft Huge Citrine##53880
	step
		#include "trainer_Jewelcrafting"
		learn Delicate Bloodstone##53832
	step
		#include "trainer_Jewelcrafting"
		learn Energized Dark Jade##53925
	step
		#include "trainer_Jewelcrafting"
		learn Etched Shadow Crystal##53873
	step
		#include "trainer_Jewelcrafting"
		learn Fierce Huge Citrine##53876
	step
		#include "trainer_Jewelcrafting"
		learn Flashing Bloodstone##53844
	step
		#include "trainer_Jewelcrafting"
		learn Forceful Dark Jade##53920
	step
		#include "trainer_Jewelcrafting"
		learn Glinting Shadow Crystal##53861
	step
		#include "trainer_Jewelcrafting"
		learn Guardian's Shadow Crystal##53871
	step
		#include "trainer_Jewelcrafting"
		learn Inscribed Huge Citrine##53872
	step
		#include "trainer_Jewelcrafting"
		learn Jagged Dark Jade##53870
	step
		#include "trainer_Jewelcrafting"
		learn Lightning Dark Jade##53923
	step
		talk Tiffany Cartier##28721
		buy Design: Lucent Huge Citrine##41565 |n
		use Design: Lucent Huge Citrine##41565
		learn Lucent Huge Citrine##53879 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Misty Dark Jade##53922
	step
		talk Tiffany Cartier##28721
		buy Design: Mysterious Shadow Crystal##41575 |n
		use Design: Mysterious Shadow Crystal##41575
		learn Mysterious Shadow Crystal##53865 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Mystic Sun Crystal##41559 |n
		use Design: Mystic Sun Crystal##41559
		learn Mystic Sun Crystal##53857 |goto Dalaran 40.6,34.6
	step
		talk Geen##31910
		|tip You must be Friendly with The Oracles to purchase this Design.
		buy Design: Nimble Dark Jade##41567 |n
		use Design: Nimble Dark Jade##41567
		learn Nimble Dark Jade##53917 |goto Sholazar Basin 54.6,56.2
	step
		#include "trainer_Jewelcrafting"
		learn Potent Huge Citrine##53882
	step
		#include "trainer_Jewelcrafting"
		learn Precise Bloodstone##54017
	step
		talk Tanaika##31916
		buy Design: Purified Shadow Crystal##41568 |n
		use Design: Purified Shadow Crystal##41568
		learn Purified Shadow Crystal##53921 |goto Howling Fjord 25.4,58.6
	step
		#include "trainer_Jewelcrafting"
		learn Quick Sun Crystal##53856
	step
		talk Tiffany Cartier##28721
		buy Design: Radiant Dark Jade##41570 |n
		use Design: Radiant Dark Jade##41570
		learn Radiant Dark Jade##53932 |goto Dalaran 40.6,34.6
	step
		talk Tanak##31911
		buy Design: Reckless Huge Citrine##41561 |n
		use Design: Reckless Huge Citrine##41561
		learn Reckless Huge Citrine##53885 |goto Sholazar Basin 55.0,69.0
	step
		#include "trainer_Jewelcrafting"
		learn Regal Dark Jade##53918
	step
		#include "trainer_Jewelcrafting"
		learn Resolute Huge Citrine##53893
	step
		talk Tiffany Cartier##28721
		buy Design: Resplendent Huge Citrine##41566 |n
		use Design: Resplendent Huge Citrine##41566
		learn Resplendent Huge Citrine##53875 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Rigid Chalcedony##53854
	step
		talk Tiffany Cartier##28721
		buy Design: Shattered Dark Jade##41569 |n
		use Design: Shattered Dark Jade##41569
		learn Shattered Dark Jade##53933 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Shifting Shadow Crystal##53860
	step
		#include "trainer_Jewelcrafting"
		learn Smooth Sun Crystal##53845
	step
		#include "trainer_Jewelcrafting"
		learn Solid Chalcedony##53934
	step
		#include "trainer_Jewelcrafting"
		learn Sovereign Shadow Crystal##53859
	step
		#include "trainer_Jewelcrafting"
		learn Sparkling Chalcedony##53941
	step
		#include "trainer_Jewelcrafting"
		learn Stalwart Huge Citrine##53891
	step
		talk Tiffany Cartier##28721
		buy Design: Steady Dark Jade##41572 |n
		use Design: Steady Dark Jade##41572
		learn Steady Dark Jade##53919 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Stormy Chalcedony##41560 |n
		use Design: Stormy Chalcedony##41560
		learn Stormy Chalcedony##53943 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Subtle Sun Crystal##53843
	step
		#include "trainer_Jewelcrafting"
		learn Timeless Shadow Crystal##53894
	step
		talk Tiffany Cartier##28721
		buy Design: Turbid Dark Jade##41571 |n
		use Design: Turbid Dark Jade##41571
		learn Turbid Dark Jade##53924 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Veiled Shadow Crystal##53883
	step
		talk Tiffany Cartier##28721
		buy Design: Willful Huge Citrine##41563 |n
		use Design: Willful Huge Citrine##41563
		learn Willful Huge Citrine##53884 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Shadow Jade Focusing Lens##56208
	step
		#include "trainer_Jewelcrafting"
		learn Bloodstone Band##56193
	step
		#include "trainer_Jewelcrafting"
		learn Crystal Chalcedony Amulet##58142
	step
		#include "trainer_Jewelcrafting"
		learn Crystal Citrine Necklace##58141
	step
		#include "trainer_Jewelcrafting"
		learn Enchanted Pearl##56530
	step
		#include "trainer_Jewelcrafting"
		learn Sun Rock Ring##56194
	step
		#include "trainer_Jewelcrafting"
		learn Earthshadow Ring##58143
	step
		#include "trainer_Jewelcrafting"
		learn Jade Ring of Slaying##58144
	step
		kill Coilfang Sorceress##17722
		collect Design: Khorium Band of Frost##24159 |n
		use Design: Khorium Band of Frost##24159
		learn Khorium Band of Frost##31054 |goto The Steamvault 46.8,41.8
	step
		kill Darkweaver Syth##18472
		collect Design: Khorium Inferno Band##24160 |n
		use Design: Khorium Inferno Band##24160
		learn Khorium Inferno Band##31055 |goto Sethekk Halls 48.6,68.4
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Mechanar or Black Temple for grinding.
		collect Design: Delicate Eternium Ring##24164 |n
		use Design: Delicate Eternium Ring##24164
		learn Delicate Eternium Ring##31060
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Slave Pens or Black Temple for grinding.
		collect Design: Living Ruby Pendant##24167 |n
		use Design: Living Ruby Pendant##24167
		learn Living Ruby Pendant##31068
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Arcatraz or Karazhan for grinding.
		collect Design: Thick Felsteel Necklace##24166 |n
		use Design: Thick Felsteel Necklace##24166 |learn Thick Felsteel Necklace##31067
	step
		talk Almaador##21432
		|tip You must be Revered with The Sha'tar to purchase this Design.
		buy Design: Blood of Amber##33159 |n
		use Design: Blood of Amber##33159
		learn Blood of Amber##42592 |goto Shattrath City 51.6,41.6
	step
		talk Paulsta'ats##23007
		buy Design: Crimson Sun##33156 |n
		use Design: Crimson Sun##33156
		learn Crimson Sun##42589 |goto Nagrand 30.6,57.0
	step
		talk Paulsta'ats##23007
		buy Design: Don Julio's Heart##33305 |n
		use Design: Don Julio's Heart##33305
		learn Don Julio's Heart##42558 |goto Nagrand 30.6,57.0
	step
		talk Alurmi##21643
		buy Design: Facet of Eternity##33160 |n
		use Design: Facet of Eternity##33160
		learn Facet of Eternity##42593 |goto Tanaris 63.0,57.2
	step
		talk Nakodu##21655
		collect Design: Falling Star##33157 |n
		use Design: Falling Star##33157
		learn Falling Star##42590 |goto Shattrath City 62.6,69.0
	step
		talk Almaador##21432
		buy Design: Kailee's Rose##33155 |n
		use Design: Kailee's Rose##33155
		learn Kailee's Rose##42588 |goto Shattrath City 51.6,41.6
	step
		talk Alurmi##21643
		|tip You must be Revered with the Keepers of Time to purchase this Design.
		buy Design: Stone of Blades##33158 |n
		use Design: Stone of Blades##33158
		learn Stone of Blades##42591 |goto Tanaris 63.0,57.2
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Sunwell Plateau or Black Temple for grinding.
		collect Design: Eye of the Night##24169 |n
		use Design: Eye of the Night##24169
		learn Eye of the Night##31071
	step
		kill Vekh'nir Dreadhawk##19984
		collect Design: Khorium Band of Leaves##24161 |n
		use Design: Khorium Band of Leaves##24161
		learn Khorium Band of Leaves##31056 |goto Blade's Edge Mountains 73.2,74.2
	step
		talk Alurmi##21643
		|tip You must be Revered with the Keepers of Time to purchase this Design.
		buy Design: Pendant of Frozen Flame##24174 |n
		use Design: Pendant of Frozen Flame##24174
		learn Pendant of Frozen Flame##31062 |goto Tanaris 63.0,57.2
	step
		talk Quartermaster Endarin##19321
		buy Design: Pendant of Shadow's End##24177 |n
		use Design: Pendant of Shadow's End##24177
		learn Pendant of Shadow's End##31065 |goto Shattrath City 48.0,26.6
	step
		talk Nakodu##21655
		|tip You must be Revered with Lower City to purchase this Design.
		buy Design: Pendant of Thawing##24175 |n
		use Design: Pendant of Thawing##24175
		learn Pendant of Thawing##31063 |goto Shattrath City 62.6,69.0
	step
		talk Paulsta'ats##23007
		buy Design: Pendant of the Null Rune##24178 |n
		use Design: Pendant of the Null Rune##24178
		learn Pendant of the Null Rune##31066 |goto Nagrand 30.6,57.0
	step
		talk Quartermaster Enuril##19331
		|tip You must be Revered with The Scryers to purchase this Design.
		buy Design: Pendant of Withering##24176 |n
		use Design: Pendant of Withering##24176
		learn Pendant of Withering##31064 |goto Shattrath City 60.6,64.2
	step
		talk Almaador##21432
		buy Design: Ring of Arcane Shielding##30826 |n
		use Design: Ring of Arcane Shielding##30826
		learn Ring of Arcane Shielding##37855 |goto Shattrath City 51.6,41.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Nagrand or The Botanica for grinding.
		collect Design: Braided Eternium Chain##24168 |n
		use Design: Braided Eternium Chain##24168
		learn Braided Eternium Chain##31070
	step
		kill Mageslayer##18866
		collect Design: Arcane Khorium Band##24162 |n
		learn Arcane Khorium Band##31057 |goto Netherstorm 56.8,88.0
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Sunwell Plateau or Black Temple for grinding.
		collect Design: Blazing Eternium Band##24165 |n
		use Design: Blazing Eternium Band##24165
		learn Blazing Eternium Band##31061
	step
		talk Ythyar##17518
		|tip You must be Revered with The Consortium to purchase this Design.
		buy Design: Bracing Earthstorm Diamond##25903 |n
		use Design: Bracing Earthstorm Diamond##25903
		learn Bracing Earthstorm Diamond##32867 |goto Karazhan/12 43.6,26.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Old Hillsbrad Foothills or Magisters' Terrace for grinding.
		collect Design: Brutal Earthstorm Diamond##25906 |n
		use Design: Brutal Earthstorm Diamond##25906
		learn Brutal Earthstorm Diamond##32869
	step
		kill Coilskar Siren##19768
		collect Design: Chaotic Skyfire Diamond##34689 |n
		learn Chaotic Skyfire Diamond##44794 |goto Shadowmoon Valley 47.8,28.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Shattered Halls or The Botanica for grinding.
		collect Design: Destructive Skyfire Diamond##25907 |n
		use Design: Destructive Skyfire Diamond##25907
		learn Destructive Skyfire Diamond##32871
	step
		talk Alurmi##21643
		|tip You must be Honored with Keepers of time to purchase this Design.
		buy Design: Enigmatic Skyfire Diamond##25910 |n
		use Design: Enigmatic Skyfire Diamond##25910
		learn Enigmatic Skyfire Diamond##32874 |goto Tanaris 63.0,57.2
	step
		talk Almaador##21432
		|tip You must be Friendly with The Sha'tar to purchase this Design.
		buy Design: Insightful Earthstorm Diamond##25904 |n
		use Design: Insightful Earthstorm Diamond##25904
		learn Insightful Earthstorm Diamond##32870 |goto Shattrath City 51.6,41.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Mana-Tombs ro Sperpentshrine Cavern for grinding.
		collect Design: Mystical Skyfire Diamond##25909 |n
		use Design: Mystical Skyfire Diamond##25909
		learn Mystical Skyfire Diamond##32872
	step
		talk Ythyar##17518
		|tip You must be Honored with The Consortium to purchase this Design.
		buy Design: Powerful Earthstorm Diamond##25902 |n
		use Design: Powerful Earthstorm Diamond##25902
		learn Powerful Earthstorm Diamond##32866 |goto Karazhan/12 43.6,26.6
	step
		talk Paulsta'ats##23007
		|tip You must be Exalted with The Consortium to purchase this Design.
		buy Design: Relentless Earthstorm Diamond##33622 |n
		use Design: Relentless Earthstorm Diamond##33622
		learn Relentless Earthstorm Diamond##39961 |goto Nagrand 30.6,57.0
	step
		talk Paulsta'ats##23007
		|tip You must be Honored with The Consortium to purchase this Design.
		buy Design: Swift Skyfire Diamond##25908 |n
		use Design: Swift Skyfire Diamond##25908
		learn Swift Skyfire Diamond##32873 |goto Nagrand 30.6,57.0
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Botanica or The Eye for grinding.
		collect Design: Tenacious Earthstorm Diamond##25905 |n
		use Design: Tenacious Earthstorm Diamond##25905
		learn Tenacious Earthstorm Diamond##32868
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Shattered Halls or Archenai Crypts for grinding.
		collect Design: Thundering Skyfire Diamond##32411 |n
		learn Thundering Skyfire Diamond##39963
	step
		This is a boss drop from the Raid: Sunwell Plateau
		collect Design: Amulet of Flowing Life##35202 |n
		use Design: Amulet of Flowing Life##35202
		learn Amulet of Flowing Life##46126
	step
		This is a boss drop from the Raid: Sunwell Plateau
		collect Design: Hard Khorium Band##35200 |n
		use Design: Hard Khorium Band##35200
		learn Hard Khorium Band##46124
	step
		This is a boss drop from the Raid: Sunwell Plateau
		collect Design: Hard Khorium Choker##35203 |n
		use Design: Hard Khorium Choker##35203
		learn Hard Khorium Choker##46127
	step
		This is a boss drop from the Raid: Sunwell Plateau
		collect Design: Loop of Forged Power##35198 |n
		use Design: Loop of Forged Power##35198
		learn Loop of Forged Power##46122
	step
		This is a boss drop from the Raid: Sunwell Plateau
		collect Design: Pendant of Sunfire##35201 |n
		use Design: Pendant of Sunfire##35201
		learn Pendant of Sunfire##46125
	step
		This is a boss drop from the Raid: Sunwell Plateau
		collect Design: Ring of Flowing Life##35199 |n
		use Design: Ring of Flowing Life##35199
		learn Ring of Flowing Life##46123
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Shadowmoon Valley or Blade's Edge Mountains for grinding.
		collect Design: Chain of the Twilight Owl##24171 |n
		use Design: Chain of the Twilight Owl##24171
		learn Chain of the Twilight Owl##31076
	step
		#include "trainer_Jewelcrafting"
		learn Crown of the Sea Witch##41418
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Terokkar Forest or Karazhan for grinding.
		collect Design: Embrace of the Dawn##24170 |n
		use Design: Embrace of the Dawn##24170
		learn Embrace of the Dawn##31072
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Ember Skyfire Diamond##35505 |n
		use Design: Ember Skyfire Diamond##35505
		learn Ember Skyfire Diamond##46601 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Eternal Earthstorm Diamond##35502 |n
		use Design: Eternal Earthstorm Diamond##35502
		learn Eternal Earthstorm Diamond##46597 |goto Isle of Quel'Danas 47.2,30.6
	step
		kill Epoch Hunter##18096
		collect Design: Circlet of Arcane Might##24173 |n
		use Design: Circlet of Arcane Might##24173
		learn Circlet of Arcane Might##31078 |goto Old Hillsbrad Foothills 50.6,31.8
	step
		kill Sunseeker Botanist##18422
		collect Design: Coronet of Verdant Flame##24172 |n
		use Design: Coronet of Verdant Flame##24172
		learn Coronet of Verdant Flame##31077 |goto The Botanica 36.0,16.4
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Revered with Thrallmar to purchase this Design.
		buy Design: Dawnstone Crab##31358 |n
		use Design: Dawnstone Crab##31358
		learn Figurine - Dawnstone Crab##31080 |goto Hellfire Peninsula 54.8,37.8
	step
		talk Nakodu##21655
		|tip You must be Revered with Lower City to purchase this Design.
		buy Design: Felsteel Boar##24179 |n
		use Design: Felsteel Boar##24179
		learn Figurine - Felsteel Boar##31079 |goto Shattrath City 62.6,69.0
	step
		talk Alurmi##21643
		|tip You must be Revered with Keepers of Time to purchase this Design.
		buy Design: Living Ruby Serpent##24181 |n
		use Design: Living Ruby Serpent##24181
		learn Figurine - Living Ruby Serpent##31081 |goto Tanaris 63.0,57.2
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Revered with Cenarion Expedition to purchase this Design.
		buy Design: Nightseye Panther##24183 |n
		use Design: Nightseye Panther##24183
		learn Figurine - Nightseye Panther##31083 |goto Zangarmarsh 79.2,63.8
	step
		talk Almaador##21432
		|tip You must be Revered with The Sha'tar to purchae this Design.
		buy Design: Talasite Owl##24182 |n
		use Design: Talasite Owl##24182
		learn Figurine - Talasite Owl##31082 |goto Shattrath City 51.6,41.6
	step
		talk Tiffany Cartier##28721
		buy Design: Bold Dragon's Eye##42298 |n
		use Design: Bold Dragon's Eye##42298
		learn Bold Dragon's Eye##56049 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Brilliant Dragon's Eye##42309 |n
		use Design: Brilliant Dragon's Eye##42309
		learn Brilliant Dragon's Eye##56053 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Delicate Dragon's Eye##42301 |n
		use Design: Delicate Dragon's Eye##42301
		learn Delicate Dragon's Eye##56052 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Flashing Dragon's Eye##42302 |n
		use Design: Flashing Dragon's Eye##42302
		learn Flashing Dragon's Eye##56056 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Mystic Dragon's Eye##42305 |n
		use Design: Mystic Dragon's Eye##42305
		learn Mystic Dragon's Eye##56079 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Precise Dragon's Eye##42306 |n
		use Design: Precise Dragon's Eye##42306
		learn Precise Dragon's Eye##56081 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Quick Dragon's Eye##42307 |n
		use Design: Quick Dragon's Eye##42307
		learn Quick Dragon's Eye##56083 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Rigid Dragon's Eye##42308 |n
		use Design: Rigid Dragon's Eye##42308
		learn Rigid Dragon's Eye##56084 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Smooth Dragon's Eye##42310 |n
		use Design: Smooth Dragon's Eye##42310
		learn Smooth Dragon's Eye##56085 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Solid Dragon's Eye##42311 |n
		use Design: Solid Dragon's Eye##42311
		learn Solid Dragon's Eye##56086 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Sparkling Dragon's Eye##42312 |n
		use Design: Sparkling Dragon's Eye##42312
		learn Sparkling Dragon's Eye##56087 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Stormy Dragon's Eye##42313 |n
		use Design: Stormy Dragon's Eye##42313
		learn Stormy Dragon's Eye##56088 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Subtle Dragon's Eye##42314 |n
		use Design: Subtle Dragon's Eye##42314
		learn Subtle Dragon's Eye##56055 |goto Dalaran 40.6,34.6
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Bold Crimson Spinel##35244 |n
		use Design: Bold Crimson Spinel##35244
		learn Bold Crimson Spinel##39705 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Brilliant Crimson Spinel##35248 |n
		use Design: Brilliant Crimson Spinel##35248
		learn Brilliant Crimson Spinel##39711 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Deadly Pyrestone##35271 |n
		use Design: Deadly Pyrestone##35271
		learn Deadly Pyrestone##39738 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Delicate Crimson Spinel##35246 |n
		use Design: Delicate Crimson Spinel##35246
		learn Delicate Crimson Spinel##39706 |goto Shattrath City 48.8,41.8
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Figurine - Crimson Serpent##35697 |n
		use Design: Figurine - Crimson Serpent##35697
		learn Figurine - Crimson Serpent##46777 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Figurine - Empyrean Tortoise##35695 |n
		use Design: Figurine - Empyrean Tortoise##35695
		learn Figurine - Empyrean Tortoise##46775 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Figurine - Khorium Boar##35696 |n
		use Design: Figurine - Khorium Boar##35696
		learn Figurine - Khorium Boar##46776 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Figurine - Seaspray Albatross##35699 |n
		use Design: Figurine - Seaspray Albatross##35699
		learn Figurine - Seaspray Albatross##46779 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Eldara Dawnrunner##25032
		|tip You must be Revered with Shattered Sun Offensive to purchase this Design.
		buy Design: Figurine - Shadowsong Panther##35698 |n
		use Design: Figurine - Shadowsong Panther##35698
		learn Figurine - Shadowsong Panther##46778 |goto Isle of Quel'Danas 47.2,30.6
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Flashing Crimson Spinel##35247 |n
		use Design: Flashing Crimson Spinel##35247
		learn Flashing Crimson Spinel##39714 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Forceful Seaspray Emerald##35769 |n
		use Design: Forceful Seaspray Emerald##35769
		learn Forceful Seaspray Emerald##47053 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Honored with the Shattered Sun Offensive.
		buy Design: Glinting Shadowsong Amethyst##35266 |n
		use Design: Glinting Shadowsong Amethyst##35266
		learn Glinting Shadowsong Amethyst##39736 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Inscribed Pyrestone##35267 |n
		use Design: Inscribed Pyrestone##35267
		learn Inscribed Pyrestone##39733 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Honored with the Shattered Sun Offensive.
		buy Design: Jagged Seaspray Emerald##35253 |n
		use Design: Jagged Seaspray Emerald##35253
		learn Jagged Seaspray Emerald##39742 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Mystic Lionseye##35258 |n
		use Design: Mystic Lionseye##35258
		learn Mystic Lionseye##39724 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Honored with the Shattered Sun Offensive.
		buy Design: Potent Pyrestone##35269 |n
		use Design: Potent Pyrestone##35269
		learn Potent Pyrestone##39734 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Honored with the Shattered Sun Offensive.
		buy Design: Purified Shadowsong Amethyst##35251 |n
		use Design: Purified Shadowsong Amethyst##35251
		learn Purified Shadowsong Amethyst##39741 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Quick Lionseye##35768 |n
		use Design: Quick Lionseye##35768
		learn Quick Lionseye##47056 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Honored with the Shattered Sun Offensive.
		buy Design: Radiant Seaspray Emerald##35254 |n
		use Design: Radiant Seaspray Emerald##35254
		learn Radiant Seaspray Emerald##39740 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Reckless Pyrestone##35767 |n
		use Design: Reckless Pyrestone##35767
		learn Reckless Pyrestone##47055 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Regal Seaspray Emerald##35252 |n
		use Design: Regal Seaspray Emerald##35252
		learn Regal Seaspray Emerald##39739 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Rigid Empyrean Sapphire##35259 |n
		use Design: Rigid Empyrean Sapphire##35259
		learn Rigid Empyrean Sapphire##39721 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Shifting Shadowsong Amethyst##35242 |n
		use Design: Shifting Shadowsong Amethyst##35242
		learn Shifting Shadowsong Amethyst##39728 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Smooth Lionseye##35260 |n
		use Design: Smooth Lionseye##35260
		learn Smooth Lionseye##39720 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Solid Empyrean Sapphire##35263 |n
		use Design: Solid Empyrean Sapphire##35263
		learn Solid Empyrean Sapphire##39715 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Sovereign Shadowsong Amethyst##35243 |n
		use Design: Sovereign Shadowsong Amethyst##35243
		learn Sovereign Shadowsong Amethyst##39727 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Sparkling Empyrean Sapphire##35264 |n
		use Design: Sparkling Empyrean Sapphire##35264
		learn Sparkling Empyrean Sapphire##39716 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Revered with the Shattered Sun Offensive.
		buy Design: Steady Seaspray Emerald##35766 |n
		use Design: Steady Seaspray Emerald##35766
		learn Steady Seaspray Emerald##47054 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Stormy Empyrean Sapphire##35265 |n
		use Design: Stormy Empyrean Sapphire##35265
		learn Stormy Empyrean Sapphire##39718 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Friendly with the Shattered Sun Offensive.
		buy Design: Subtle Lionseye##35249 |n
		use Design: Subtle Lionseye##35249
		learn Subtle Lionseye##39713 |goto Shattrath City 48.8,41.8
	step
		talk Apprentice Darius##18255
		|tip You must be Honored with The Violet Eye to purchase this Design.
		buy Design: The Frozen Eye##31401 |n
		use Design: The Frozen Eye##31401
		learn The Frozen Eye##38503 |goto Deadwind Pass 47.0,75.6
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Exalted with Cenarion Expedition to purchase this Design.
		buy Design: The Natural Ward##31402 |n
		use Design: The Natural Ward##31402
		learn The Natural Ward##38504 |goto Zangarmarsh 79.2,63.8
	step
		talk Ontuvo##27666
		|tip You must be Honored with the Shattered Sun Offensive.
		buy Design: Timeless Shadowsong Amethyst##35239 |n
		use Design: Timeless Shadowsong Amethyst##35239
		learn Timeless Shadowsong Amethyst##39731 |goto Shattrath City 48.8,41.8
	step
		talk Ontuvo##27666
		|tip You must be Exalted with the Shattered Sun Offensive.
		buy Design: Veiled Shadowsong Amethyst##35270 |n
		use Design: Veiled Shadowsong Amethyst##35270
		learn Veiled Shadowsong Amethyst##39737 |goto Shattrath City 48.8,41.8
	step
		#include "trainer_Jewelcrafting"
		learn Blood Sun Necklace##56196
	step
		#include "trainer_Jewelcrafting"
		learn Jade Dagger Pendant##56195
	step
		#include "trainer_Jewelcrafting"
		learn Shadowmight Ring##58146
	step
		#include "trainer_Jewelcrafting"
		learn Stoneguard Band##58145
	step
		kill Ironwool Mammoth##29402, Shattertusk Mammoth##28379, Enraged Mammoth##28851, Plains Mammoth##30448
		|tip You can find Mammoths in Storm Peaks, Sholazar and Zul'Drak.
		collect Design: Accurate Twilight Opal##41818 |n
		use Design: Accurate Twilight Opal##41818
		learn Accurate Twilight Opal##53994 |goto The Storm Peaks 59.4,59.8
	step
		talk Tiffany Cartier##28721
		buy Design: Bold Scarlet Ruby##41576 |n
		use Design: Bold Scarlet Ruby##41576
		learn Bold Scarlet Ruby##53830 |goto Dalaran 40.6,34.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Naxxramas or Icecrown Citadel for grinding.
		collect Design: Champion's Monarch Topaz##41780 |n
		use Design: Champion's Monarch Topaz##41780
		learn Champion's Monarch Topaz##53977
	step
		talk Duchess Mynx##32538
		buy Design: Deadly Monarch Topaz##41721 |n
		use Design: Deadly Monarch Topaz##41721
		learn Deadly Monarch Topaz##53988 |goto Icecrown 43.4,20.6
	step
		kill Stormforged Champion##29370, Stormforged Artificer##29376, Stormforged Ambusher##30208, Stormforged Infiltrator##30222
		collect Design: Defender's Twilight Opal##41820 |n
		use Design: Defender's Twilight Opal##41820
		learn Defender's Twilight Opal##53972 |goto The Storm Peaks 26.2,47.6
	step
		talk Tiffany Cartier##28721
		buy Design: Deft Monarch Topaz##41687 |n
		use Design: Deft Monarch Topaz##41687
		learn Deft Monarch Topaz##53991 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Delicate Scarlet Ruby##41577 |n
		use Design: Delicate Scarlet Ruby##41577
		learn Delicate Scarlet Ruby##53945 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Enchanted Tear##56531
	step
		talk Tiffany Cartier##28721
		buy Design: Energized Forest Emerald##41692 |n
		use Design: Energized Forest Emerald##41692
		learn Energized Forest Emerald##54011 |goto Dalaran 40.6,34.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		buy Design: Etched Twilight Opal##41777 |n
		use Design: Etched Twilight Opal##41777
		learn Etched Twilight Opal##53976
	step
		kill Ingvar the Plunderer##23954
		collect Design: Fierce Monarch Topaz##41793 |n
		use Design: Fierce Monarch Topaz##41793
		learn Fierce Monarch Topaz##54019 |goto Utgarde Keep/3 75.6,35.6
	step
		talk Tiffany Cartier##28721
		buy Design: Flashing Scarlet Ruby##41578 |n
		use Design: Flashing Scarlet Ruby##41578
		learn Flashing Scarlet Ruby##53949 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Forceful Forest Emerald##41693 |n
		use Design: Forceful Forest Emerald##41693
		learn Forceful Forest Emerald##54001 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Glinting Twilight Opal##41582 |n
		use Design: Glinting Twilight Opal##41582
		learn Glinting Twilight Opal##53980 |goto Dalaran 40.6,34.6
	step
		talk Veteran Crusader Aliocha Segard##30431
		buy Design: Guardian's Twilight Opal##41726 |n
		use Design: Guardian's Twilight Opal##41726
		learn Guardian's Twilight Opal##53974 |goto Icecrown 87.6,75.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Design: Inscribed Monarch Topaz##41789 |n
		use Design: Inscribed Monarch Topaz##41789
		learn Inscribed Monarch Topaz##53975
	step
		talk Tiffany Cartier##28721
		buy Design: Jagged Forest Emerald##41702 |n
		use Design: Jagged Forest Emerald##41702
		learn Jagged Forest Emerald##53996 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Lightning Forest Emerald##41696 |n
		use Design: Lightning Forest Emerald##41696
		learn Lightning Forest Emerald##54009 |goto Dalaran 40.6,34.6
	step
		talk Geen##31910
		|tip You must be Revered with The Oracles to purchase this Design.
		buy Design: Misty Forest Emerald##41724 |n
		use Design: Misty Forest Emerald##41724
		learn Misty Forest Emerald##54003 |goto Sholazar Basin 54.6,56.2
	step
		talk Stone Guard Mukar##32296
		buy Design: Mysterious Twilight Opal##41740 |n
		use Design: Mysterious Twilight Opal##41740
		learn Mysterious Twilight Opal##53968 |goto Wintergrasp 51.6,17.6
	step
		talk Stone Guard Mukar##32296
		buy Design: Mystic Autumn's Glow##41727 |n
		use Design: Mystic Autumn's Glow##41727
		learn Mystic Autumn's Glow##53960 |goto Wintergrasp 51.6,17.6
	step
		talk Tiffany Cartier##28721
		buy Design: Nimble Forest Emerald##41698 |n
		use Design: Nimble Forest Emerald##41698
		learn Nimble Forest Emerald##53997 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Potent Monarch Topaz##41686 |n
		use Design: Potent Monarch Topaz##41686
		learn Potent Monarch Topaz##53984 |goto Dalaran 40.6,34.6
	step
		kill Herald Volazj##29311
		collect Design: Precise Scarlet Ruby##41790 |n
		use Design: Precise Scarlet Ruby##41790
		learn Precise Scarlet Ruby##53951 |goto Ahn'kahet: The Old Kingdom 23.6,50.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Pit of Saron or Ulduar for grinding.
		collect Design: Purified Twilight Opal##41783 |n
		use Design: Purified Twilight Opal##41783
		learn Purified Twilight Opal##53966
	step
		talk Tiffany Cartier##28721
		buy Design: Quick Autumn's Glow##41579 |n
		use Design: Quick Autumn's Glow##41579
		learn Quick Autumn's Glow##53961 |goto Dalaran 40.6,34.6
	step
		kill Frostfeather Screecher##29792, Frostfeather Witch##29793
		collect Design: Radiant Forest Emerald##41819 |n
		use Design: Radiant Forest Emerald##41819
		learn Radiant Forest Emerald##54012 |goto The Storm Peaks 31.6,67.2
	step
		talk Tiffany Cartier##28721
		buy Design: Reckless Monarch Topaz##41690 |n
		use Design: Reckless Monarch Topaz##41690
		learn Reckless Monarch Topaz##53987 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Regal Forest Emerald##41697 |n
		use Design: Regal Forest Emerald##41697
		learn Regal Forest Emerald##53998 |goto Dalaran 40.6,34.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Design: Resolute Monarch Topaz##41778 |n
		use Design: Resolute Monarch Topaz##41778
		learn Resolute Monarch Topaz##54023
	step
		talk Stone Guard Mukar##32296
		buy Design: Resplendent Monarch Topaz##41734 |n
		use Design: Resplendent Monarch Topaz##41734
		learn Resplendent Monarch Topaz##53978 |goto Wintergrasp 51.6,17.6
	step
		talk Tiffany Cartier##28721
		buy Design: Rigid Sky Sapphire##41580 |n
		use Design: Rigid Sky Sapphire##41580
		learn Rigid Sky Sapphire##53958 |goto Dalaran 40.6,34.6
	step
		talk Stone Guard Mukar##32296
		buy Design: Shattered Forest Emerald##41735 |n
		use Design: Shattered Forest Emerald##41735
		learn Shattered Forest Emerald##54014 |goto Wintergrasp 51.6,17.6
	step
		talk Tiffany Cartier##28721
		buy Design: Shifting Twilight Opal##41747 |n
		use Design: Shifting Twilight Opal##41747
		learn Shifting Twilight Opal##53963 |goto Dalaran 40.6,34.6
	step
		talk Lillehoff##32540
		buy Design: Smooth Autumn's Glow##41720 |n
		use Design: Smooth Autumn's Glow##41720
		learn Smooth Autumn's Glow##53957 |goto The Storm Peaks 66.0,61.4
	step
		talk Tiffany Cartier##28721
		buy Design: Solid Sky Sapphire##42138 |n
		use Design: Solid Sky Sapphire##42138
		learn Solid Sky Sapphire##53952 |goto Dalaran 40.6,34.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Design: Sovereign Twilight Opal##41784 |n
		use Design: Sovereign Twilight Opal##41784
		learn Sovereign Twilight Opal##53962
	step
		talk Tiffany Cartier##28721
		buy Design: Sparkling Sky Sapphire##41581 |n
		use Design: Sparkling Sky Sapphire##41581
		learn Sparkling Sky Sapphire##53954 |goto Dalaran 40.6,34.6
	step
		talk Cielstrasza##32533
		buy Design: Stalwart Monarch Topaz##41722 |n
		use Design: Stalwart Monarch Topaz##41722
		learn Stalwart Monarch Topaz##53993 |goto Dragonblight 59.8,53.0
	step
		talk Stone Guard Mukar##32296
		buy Design: Steady Forest Emerald##41738 |n
		use Design: Steady Forest Emerald##41738
		learn Steady Forest Emerald##54000 |goto Wintergrasp 51.6,17.6
	step
		talk Stone Guard Mukar##32296
		buy Design: Stormy Sky Sapphire##41728 |n
		use Design: Stormy Sky Sapphire##41728
		learn Stormy Sky Sapphire##53955 |goto Wintergrasp 51.6,17.6
	step
		talk Tiffany Cartier##28721
		buy Design: Subtle Autumn's Glow##41719 |n
		use Design: Subtle Autumn's Glow##41719
		learn Subtle Autumn's Glow##53948 |goto Dalaran 40.6,34.6
	step
		talk Duchess Mynx##32538
		|tip YOu must be Exalted with Knights of the Ebon Blade to purchase this Design.
		buy Design: Timeless Twilight Opal##41725 |n
		use Design: Timeless Twilight Opal##41725
		learn Timeless Twilight Opal##53965 |goto Icecrown 43.4,20.6
	step
		talk Stone Guard Mukar##32296
		buy Design: Turbid Forest Emerald##41737 |n
		use Design: Turbid Forest Emerald##41737
		learn Turbid Forest Emerald##54005 |goto Wintergrasp 51.6,17.6
	step
		talk Stone Guard Mukar##32296
		buy Design: Willful Monarch Topaz##41730 |n
		use Design: Willful Monarch Topaz##41730
		learn Willful Monarch Topaz##53986 |goto Wintergrasp 51.6,17.6
	step
		talk Tiffany Cartier##28721
		buy Design: Veiled Twilight Opal##41688 |n
		use Design: Veiled Twilight Opal##41688
		learn Veiled Twilight Opal##53985 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Figurine - Emerald Boar##56203
	step
		#include "trainer_Jewelcrafting"
		learn Figurine - Monarch Crab##59759
	step
		#include "trainer_Jewelcrafting"
		learn Figurine - Ruby Hare##56199
	step
		#include "trainer_Jewelcrafting"
		learn Figurine - Sapphire Owl##56202
	step
		#include "trainer_Jewelcrafting"
		learn Figurine - Twilight Serpent##56201
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Frostguard Ring##43597 |n
		use Design: Titanium Frostguard Ring##43597
		learn Titanium Frostguard Ring##58954 |goto Dalaran 40.6,34.6
	step
		kill King Ymiron##26861
		collect Design: Austere Earthsiege Diamond##41797 |n
		use Design: Austere Earthsiege Diamond##41797
		learn Austere Earthsiege Diamond##55401 |goto Utgarde Pinnacle 40.6,53.4
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Design: Beaming Earthsiege Diamond##41788 |n
		use Design: Beaming Earthsiege Diamond##41788
		learn Beaming Earthsiege Diamond##55405
	step
		kill Ley-Guardian Eregos##27656
		collect Design: Bracing Earthsiege Diamond##41798 |n
		use Design: Bracing Earthsiege Diamond##41798
		learn Bracing Earthsiege Diamond##55397 |goto The Oculus/4 46.0,18.4
	step
		talk Tiffany Cartier##28721
		collect Design: Chaotic Skyflare Diamond##41704 |n
		use Design: Chaotic Skyflare Diamond##41704
		learn Chaotic Skyflare Diamond##55389 |goto Dalaran 40.6,34.6
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Design: Destructive Skyflare Diamond##41786 |n
		use Design: Destructive Skyflare Diamond##41786
		learn Destructive Skyflare Diamond##55390
	step
		#include "trainer_Jewelcrafting"
		learn Dream Signet##56197
	step
		talk Tiffany Cartier##28721
		buy Design: Ember Skyflare Diamond##41706 |n
		use Design: Ember Skyflare Diamond##41706
		learn Ember Skyflare Diamond##55392 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Emerald Choker##64725
	step
		talk Stone Guard Mukar##32296
		buy Design: Enigmatic Skyflare Diamond##41742 |n
		use Design: Enigmatic Skyflare Diamond##41742
		learn Enigmatic Skyflare Diamond##55393 |goto Wintergrasp 51.6,17.6
	step
		kill Loken##28923
		collect Design: Eternal Earthsiege Diamond##41799 |n
		use Design: Eternal Earthsiege Diamond##41799
		learn Eternal Earthsiege Diamond##55398 |goto Halls of Lightning/2 19.2,54.8
	step
		talk Stone Guard Mukar##32296
		buy Design: Forlorn Skyflare Diamond##41743 |n
		use Design: Forlorn Skyflare Diamond##41743
		learn Forlorn Skyflare Diamond##55387 |goto Wintergrasp 51.6,17.6
	step
		talk Stone Guard Mukar##32296
		buy Design: Impassive Skyflare Diamond##41744 |n
		use Design: Impassive Skyflare Diamond##41744
		learn Impassive Skyflare Diamond##55388 |goto Wintergrasp 51.6,17.6
	step
		talk Tiffany Cartier##28721
		buy Design: Insightful Earthsiege Diamond##41708 |n
		use Design: Insightful Earthsiege Diamond##41708
		learn Insightful Earthsiege Diamond##55396 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Invigorating Earthsiege Diamond##41709 |n
		use Design: Invigorating Earthsiege Diamond##41709
		learn Invigorating Earthsiege Diamond##55404 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Persistent Earthsiege Diamond##55402
	step
		#include "trainer_Jewelcrafting"
		learn Powerful Earthsiege Diamond##55399
	step
		talk Tiffany Cartier##28721
		buy Design: Relentless Earthsiege Diamond##41710 |n
		use Design: Relentless Earthsiege Diamond##41710
		learn Relentless Earthsiege Diamond##55400 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Revitalizing Skyflare Diamond##41707 |n
		use Design: Revitalizing Skyflare Diamond##41707
		learn Revitalizing Skyflare Diamond##55407 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Ring of Earthen Might##43317 |n
		use Design: Ring of Earthen Might##43317
		learn Ring of Earthen Might##58147 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Ring of Northern Tears##43320 |n
		use Design: Ring of Northern Tears##43320
		learn Ring of Northern Tears##58150 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Ring of Scarlet Shadows##43318 |n
		use Design: Ring of Scarlet Shadows##43318
		learn Ring of Scarlet Shadows##58148 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Runed Mana Band##64727
	step
		talk Tiffany Cartier##28721
		buy Design: Savage Titanium Band##43497 |n
		use Design: Savage Titanium Band##43497
		learn Savage Titanium Band##58507 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Savage Titanium Ring##43485 |n
		use Design: Savage Titanium Ring##43485
		learn Savage Titanium Ring##58492 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Scarlet Signet##64728
	step
		talk Tiffany Cartier##28721
		buy Design: Shielded Skyflare Diamond##41705 |n
		use Design: Shielded Skyflare Diamond##41705
		learn Shielded Skyflare Diamond##55384 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Sky Sapphire Amulet##64726
	step
		#include "trainer_Jewelcrafting"
		learn Swift Skyflare Diamond##55394
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Design: Thundering Skyflare Diamond##41787 |n
		use Design: Thundering Skyflare Diamond##41787
		learn Thundering Skyflare Diamond##55395
	step
		#include "trainer_Jewelcrafting"
		learn Tireless Skyflare Diamond##55386
	step
		talk Tiffany Cartier##28721
		buy Design: Trenchant Earthsiege Diamond##41711 |n
		use Design: Trenchant Earthsiege Diamond##41711
		learn Trenchant Earthsiege Diamond##55403 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Windfire Band##43319 |n
		use Design: Windfire Band##43319
		learn Windfire Band##58149 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Icy Prism##62242
	step
		#include "trainer_Jewelcrafting"
		learn Accurate Nightstone##73250
	step
		#include "trainer_Jewelcrafting"
		learn Adept Hessonite##73268
	step
		#include "trainer_Jewelcrafting"
		learn Artful Hessonite##73270
	step
		#include "trainer_Jewelcrafting"
		learn Bold Carnelian##73222
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Carnelian##73225
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Halls of Origination or Twilight Highlands for grinding.
		collect Design: Deadly Hessonite##52382 |n
		use Design: Deadly Hessonite##52382
		learn Deadly Hessonite##73262
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Uldum or Deepholm for grinding.
		collect Design: Defender's Nightstone##52366 |n
		use Design: Defender's Nightstone##52366
		learn Defender's Nightstone##73242
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Uldum or Deepholm for grinding.
		collect Design: Deft Hessonite##52375 |n
		use Design: Deft Hessonite##52375
		learn Deft Hessonite##73265
	step
		#include "trainer_Jewelcrafting"
		learn Delicate Carnelian##73223
	step
		#include "trainer_Jewelcrafting"
		learn Etched Nightstone##73246
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Twighligh Highlands or Deepholm for grinding.
		collect Design: Fierce Hessonite##52374 |n
		use Design: Fierce Hessonite##52374
		learn Fierce Hessonite##73264
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Fine Hessonite##52376 |n
		use Design: Fine Hessonite##52376
		learn Fine Hessonite##73269
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Twilight Highlands for grinding.
		collect Design: Flashing Carnelian##52363 |n
		use Design: Flashing Carnelian##52363
		learn Flashing Carnelian##73224
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Forceful Jasper##52385 |n
		use Design: Forceful Jasper##52385
		learn Forceful Jasper##73277
	step
		#include "trainer_Jewelcrafting"
		learn Fractured Alicite##73239
	step
		#include "trainer_Jewelcrafting"
		learn Glinting Nightstone##73247
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Guardian's Nightstone##52367 |n
		use Design: Guardian's Nightstone##52367
		learn Guardian's Nightstone##73244
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Twilight Highlands or Deepholm for grinding.
		collect Design: Inscribed Hessonite##52371 |n
		use Design: Inscribed Hessonite##52371
		learn Inscribed Hessonite##73260
	step
		#include "trainer_Jewelcrafting"
		learn Jagged Jasper##73274
	step
		#include "trainer_Jewelcrafting"
		learn Jasper Ring##73494
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Uldum or Abyssal Depths for grinding.
		collect Design: Keen Hessonite##52377 |n
		use Design: Keen Hessonite##52377
		learn Keen Hessonite##73271
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Lightning Jasper##52386 |n
		use Design: Lightning Jasper##52386
		learn Lightning Jasper##73278
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Twilight Highlands or Deepholm for grinding.
		collect Design: Nimble Jasper##52379 |n
		use Design: Nimble Jasper##52379
		learn Nimble Jasper##73273
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Piercing Jasper##52382 |n
		use Design: Piercing Jasper##52382
		learn Piercing Jasper##73275
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Uldum for grinding.
		collect Design: Polished Hessonite##52370 |n
		use Design: Polished Hessonite##52370
		learn Polished Hessonite##73258
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Abyssal Depths or Twilight Highlands for grinding.
		collect Design: Potent Hessonite##52373 |n
		use Design: Potent Hessonite##52373
		learn Potent Hessonite##73263
	step
		#include "trainer_Jewelcrafting"
		learn Precise Carnelian##73226
	step
		#include "trainer_Jewelcrafting"
		learn Puissant Jasper##73279
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Abyssal Depths or Twilight Highlands for grinding.
		collect Design: Purified Nightstone##52368 |n
		use Design: Purified Nightstone##52368
		learn Purified Nightstone##73245
	step
		#include "trainer_Jewelcrafting"
		learn Quick Alicite##73234
	step
		#include "trainer_Jewelcrafting"
		learn Reckless Hessonite##73266
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Abyssal Depths or Deepholm for grinding.
		collect Design: Regal Jasper##52378 |n
		use Design: Regal Jasper##52378
		learn Regal Jasper##73272
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Retaliating Nightstone##52369 |n
		use Design: Retaliating Nightstone##52369
		learn Retaliating Nightstone##73248
	step
		#include "trainer_Jewelcrafting"
		learn Rigid Zephyrite##73230
	step
		#include "trainer_Jewelcrafting"
		learn Sensei's Jasper##73281
	step
		#include "trainer_Jewelcrafting"
		learn Shifting Nightstone##73241
	step
		#include "trainer_Jewelcrafting"
		learn Skillful Hessonite##73267
	step
		#include "trainer_Jewelcrafting"
		learn Smooth Alicite##73232
	step
		#include "trainer_Jewelcrafting"
		learn Solid Zephyrite##73227
	step
		#include "trainer_Jewelcrafting"
		learn Sovereign Nightstone##73240
	step
		#include "trainer_Jewelcrafting"
		learn Sparkling Zephyrite##73228
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Deepholm for grinding.
		collect Design: Steady Jasper##52383 |n
		use Design: Steady Jasper##52383
		learn Steady Jasper##73276
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Uldum for grinding.
		collect Design: Stormy Zephyrite##52364 |n
		use Design: Stormy Zephyrite##52364
		learn Stormy Zephyrite##73229
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Abyssal Depths or Uldum for grinding.
		collect Design: Subtle Alicite##52365 |n
		use Design: Subtle Alicite##52365
		learn Subtle Alicite##73231
	step
		#include "trainer_Jewelcrafting"
		learn Timeless Nightstone##73243
	step
		#include "trainer_Jewelcrafting"
		learn Veiled Nightstone##73249
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Abyssal Depths or Deepholm for grinding.
		collect Design: Zen Jasper##52388 |n
		use Design: Zen Jasper##52388
		learn Zen Jasper##73280
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Earthguard Ring##42649 |n
		use Design: Titanium Earthguard Ring##42649
		learn Titanium Earthguard Ring##56497 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Impact Band##42648 |n
		use Design: Titanium Impact Band##42648
		learn Titanium Impact Band##56496 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Spellshock Ring##42650 |n
		use Design: Titanium Spellshock Ring##42650
		learn Titanium Spellshock Ring##56498 |goto Dalaran 40.6,34.6
	step
		#include "trainer_Jewelcrafting"
		learn Stardust##73622
	step
		#include "trainer_Jewelcrafting"
		learn Alicite Pendant##73496
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Earthguard Chain##42652 |n
		use Design: Titanium Earthguard Chain##42652
		learn Titanium Earthguard Chain##56500 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Impact Choker##42651 |n
		use Design: Titanium Impact Choker##42651
		learn Titanium Impact Choker##56499 |goto Dalaran 40.6,34.6
	step
		talk Tiffany Cartier##28721
		buy Design: Titanium Spellshock Necklace##42653 |n
		use Design: Titanium Spellshock Necklace##42653
		learn Titanium Spellshock Necklace##56501 |goto Dalaran 40.6,34.6
	step
		talk Archmage Alvareaux##32287
		|tip You must be Exalted with Kirin Tor to purchase this Design.
		buy Design: Brilliant Scarlet Ruby##41718 |n
		use Design: Brilliant Scarlet Ruby##41718
		learn Brilliant Scarlet Ruby##53946 |goto Dalaran 25.6,49.0
	step
		talk Stone Guard Mukar##32296
		buy Design: Lucent Monarch Topaz##41733 |n
		use Design: Lucent Monarch Topaz##41733
		learn Lucent Monarch Topaz##53981 |goto Wintergrasp 51.6,17.6
	step
		talk Timothy Jones##28701
		buy Design: Accurate Dreadstone##47010 |n
		use Design: Accurate Dreadstone##47010
		learn Accurate Dreadstone##66576 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Bold Cardinal Ruby##46917 |n
		use Design: Bold Cardinal Ruby##46917
		learn Bold Cardinal Ruby##66447 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Brilliant Cardinal Ruby##46916 |n
		use Design: Brilliant Cardinal Ruby##46916
		learn Brilliant Cardinal Ruby##66446 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Champion's Ametrine##47015 |n
		use Design: Champion's Ametrine##47015
		learn Champion's Ametrine##66579 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Deadly Ametrine##46949 |n
		use Design: Deadly Ametrine##46949
		learn Deadly Ametrine##66568 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Defender's Dreadstone##46941 |n
		use Design: Defender's Dreadstone##46941
		learn Defender's Dreadstone##66560 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Deft Ametrine##47020 |n
		use Design: Deft Ametrine##47020
		learn Deft Ametrine##66584 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Delicate Cardinal Ruby##46918 |n
		use Design: Delicate Cardinal Ruby##46918
		learn Delicate Cardinal Ruby##66448 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Energized Eye of Zul##46912 |n
		use Design: Energized Eye of Zul##46912
		learn Energized Eye of Zul##66442 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Etched Dreadstone##46953 |n
		use Design: Etched Dreadstone##46953
		learn Etched Dreadstone##66572 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Fierce Ametrine##47019 |n
		use Design: Fierce Ametrine##47019
		learn Fierce Ametrine##66583 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Flashing Cardinal Ruby##46923 |n
		use Design: Flashing Cardinal Ruby##46923
		learn Flashing Cardinal Ruby##66453 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Forceful Eye of Zul##46904 |n
		use Design: Forceful Eye of Zul##46904
		learn Forceful Eye of Zul##66434 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Glinting Dreadstone##46956 |n
		use Design: Glinting Dreadstone##46956
		learn Glinting Dreadstone##66573 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Guardian's Dreadstone##46942 |n
		use Design: Guardian's Dreadstone##46942
		learn Guardian's Dreadstone##66561 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Inscribed Ametrine##46948 |n
		use Design: Inscribed Ametrine##46948
		learn Inscribed Ametrine##66567 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Jagged Eye of Zul##46901 |n
		use Design: Jagged Eye of Zul##46901
		learn Jagged Eye of Zul##66431 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Lightning Eye of Zul##46909 |n
		use Design: Lightning Eye of Zul##46909
		learn Lightning Eye of Zul##66439 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Lucent Ametrine##47021 |n
		use Design: Lucent Ametrine##47021
		learn Lucent Ametrine##66585 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Misty Eye of Zul##46905 |n
		use Design: Misty Eye of Zul##46905
		learn Misty Eye of Zul##66435 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Mysterious Dreadstone##46943 |n
		use Design: Mysterious Dreadstone##46943
		learn Mysterious Dreadstone##66562 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Mystic King's Amber##46932 |n
		use Design: Mystic King's Amber##46932
		learn Mystic King's Amber##66505 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Nightmare Tear##49112 |n
		use Design: Nightmare Tear##49112
		learn Nightmare Tear##68253 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Nimble Eye of Zul##46899 |n
		use Design: Nimble Eye of Zul##46899
		learn Nimble Eye of Zul##66429 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Potent Ametrine##46950 |n
		use Design: Potent Ametrine##46950
		learn Potent Ametrine##66569 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Precise Cardinal Ruby##46920 |n
		use Design: Precise Cardinal Ruby##46920
		learn Precise Cardinal Ruby##66450 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Purified Dreadstone##46937 |n
		use Design: Purified Dreadstone##46937
		learn Purified Dreadstone##66556 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Quick King's Amber##46933 |n
		use Design: Quick King's Amber##46933
		learn Quick King's Amber##66506 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Reckless Ametrine##47007 |n
		use Design: Reckless Ametrine##47007
		learn Reckless Ametrine##66574 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Regal Eye of Zul##46897 |n
		use Design: Regal Eye of Zul##46897
		learn Regal Eye of Zul##66338 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Resolute Ametrine##47022 |n
		use Design: Resolute Ametrine##47022
		learn Resolute Ametrine##66586 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Resplendent Ametrine##47018 |n
		use Design: Resplendent Ametrine##47018
		learn Resplendent Ametrine##66582 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Rigid Majestic Zircon##46928 |n
		use Design: Rigid Majestic Zircon##46928
		learn Rigid Majestic Zircon##66501 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Shattered Eye of Zul##46913 |n
		use Design: Shattered Eye of Zul##46913
		learn Shattered Eye of Zul##66443 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Shifting Dreadstone##46938 |n
		use Design: Shifting Dreadstone##46938
		learn Shifting Dreadstone##66557 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Smooth King's Amber##46929 |n
		use Design: Smooth King's Amber##46929
		learn Smooth King's Amber##66502 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Solid Majestic Zircon##46924 |n
		use Design: Solid Majestic Zircon##46924
		learn Solid Majestic Zircon##66497 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Sovereign Dreadstone##46935 |n
		use Design: Sovereign Dreadstone##46935
		learn Sovereign Dreadstone##66554 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Sparkling Majestic Zircon##46925 |n
		use Design: Sparkling Majestic Zircon##46925
		learn Sparkling Majestic Zircon##66498 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Stalwart Ametrine##47017 |n
		use Design: Stalwart Ametrine##47017
		learn Stalwart Ametrine##66581 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Steady Eye of Zul##46898 |n
		use Design: Steady Eye of Zul##46898
		learn Steady Eye of Zul##66428 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Stormy Majestic Zircon##46926 |n
		use Design: Stormy Majestic Zircon##46926
		learn Stormy Majestic Zircon##66499 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Subtle King's Amber##46922 |n
		use Design: Subtle King's Amber##46922
		learn Subtle King's Amber##66452 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Timeless Dreadstone##46902 |n
		use Design: Timeless Dreadstone##46902
		learn Timeless Dreadstone##66432 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Turbid Eye of Zul##46915 |n
		use Design: Turbid Eye of Zul##46915
		learn Turbid Eye of Zul##66445 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Veiled Dreadstone##46951 |n
		use Design: Veiled Dreadstone##46951
		learn Veiled Dreadstone##66570 |goto Dalaran 40.6,35.2
	step
		talk Timothy Jones##28701
		buy Design: Willful Ametrine##46952 |n
		use Design: Willful Ametrine##46952
		learn Willful Ametrine##66571 |goto Dalaran 40.6,35.2
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Uldum The Vortex Pinnacle for grinding
		collect Design: Jeweler's Ruby Monocle##52494 |n
		use Design: Jeweler's Ruby Monocle##52494
		learn Jeweler's Ruby Monocle##73625
	step
		#include "trainer_Jewelcrafting"
		learn Hessonite Band##73495
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Throne of the Tides or Mount Hyjal for grinding
		collect Design: Jeweler's Sapphire Monocle##52495 |n
		use Design: Jeweler's Sapphire Monocle##52495
		learn Jeweler's Sapphire Monocle##73626
	step
		#include "trainer_Jewelcrafting"
		learn Carnelian Spikes##73620
	step
		collect Design: Jeweler's Amber Monocle##52496 |n
		use Design: Jeweler's Amber Monocle##52496
		learn Jeweler's Amber Monocle##73627
	step
		#include "trainer_Jewelcrafting"
		learn Nightstone Choker##73497
	step
		#include "vendor_Jewelcrafting"
		buy Design: Bold Inferno Ruby##52362 |n
		use Design: Bold Inferno Ruby##52362
		learn Bold Inferno Ruby##73335
	step
		#include "vendor_Jewelcrafting"
		buy Design: Accurate Demonseye##52409 |n
		use Design: Accurate Demonseye##52409
		learn Accurate Demonseye##73360
	step
		#include "vendor_Jewelcrafting"
		buy Design: Adept Ember Topaz##52419 |n
		use Design: Adept Ember Topaz##52419
		learn Adept Ember Topaz##73371
	step
		#include "vendor_Jewelcrafting"
		buy Design: Artful Ember Topaz##52421 |n
		use Design: Artful Ember Topaz##52421
		learn Artful Ember Topaz##73373
	step
		#include "vendor_Jewelcrafting"
		buy Design: Brilliant Inferno Ruby##52387 |n
		use Design: Brilliant Inferno Ruby##52387
		learn Brilliant Inferno Ruby##73338
	step
		#include "vendor_Jewelcrafting"
		buy Design: Deadly Ember Topaz##52413 |n
		use Design: Deadly Ember Topaz##52413
		learn Deadly Ember Topaz##73365
	step
		#include "vendor_Jewelcrafting"
		buy Design: Deft Ember Topaz##52416 |n
		use Design: Deft Ember Topaz##52416
		learn Deft Ember Topaz##73368
	step
		#include "vendor_Jewelcrafting"
		buy Design: Delicate Inferno Ruby##52380 |n
		use Design: Delicate Inferno Ruby##52380
		learn Delicate Inferno Ruby##73336
	step
		#include "vendor_Jewelcrafting"
		buy Design: Etched Demonseye##52405 |n
		use Design: Etched Demonseye##52405
		learn Etched Demonseye##73356
	step
		#include "vendor_Jewelcrafting"
		buy Design: Fierce Ember Topaz##52415 |n
		use Design: Fierce Ember Topaz##52415
		learn Fierce Ember Topaz##73367
	step
		#include "vendor_Jewelcrafting"
		buy Design: Fine Ember Topaz##52420 |n
		use Design: Fine Ember Topaz##52420
		learn Fine Ember Topaz##73372
	step
		#include "vendor_Jewelcrafting"
		buy Design: Flashing Inferno Ruby##52384 |n
		use Design: Flashing Inferno Ruby##52384
		learn Flashing Inferno Ruby##73337
	step
		#include "vendor_Jewelcrafting"
		buy Design: Forceful Dream Emerald##52428 |n
		use Design: Forceful Dream Emerald##52428
		learn Forceful Dream Emerald##73380
	step
		#include "vendor_Jewelcrafting"
		buy Design: Fractured Amberjewel##52398 |n
		use Design: Fractured Amberjewel##52398
		learn Fractured Amberjewel##73349
	step
		#include "vendor_Jewelcrafting"
		buy Design: Glinting Demonseye##52406 |n
		use Design: Glinting Demonseye##52406
		learn Glinting Demonseye##73357
	step
		#include "vendor_Jewelcrafting"
		buy Design: Guardian's Demonseye##52403 |n
		use Design: Guardian's Demonseye##52403
		learn Guardian's Demonseye##73354
	step
		#include "vendor_Jewelcrafting"
		buy Design: Inscribed Ember Topaz##52412 |n
		use Design: Inscribed Ember Topaz##52412
		learn Inscribed Ember Topaz##73364
	step
		#include "vendor_Jewelcrafting"
		buy Design: Jagged Dream Emerald##52425 |n
		use Design: Jagged Dream Emerald##52425
		learn Jagged Dream Emerald##73377
	step
		#include "vendor_Jewelcrafting"
		buy Design: Keen Ember Topaz##52422 |n
		use Design: Keen Ember Topaz##52422
		learn Keen Ember Topaz##73374
	step
		#include "vendor_Jewelcrafting"
		buy Design: Lightning Dream Emerald##52429 |n
		use Design: Lightning Dream Emerald##52429
		learn Lightning Dream Emerald##73381
	step
		#include "vendor_Jewelcrafting"
		buy Design: Lucent Ember Topaz##68360 |n
		use Design: Lucent Ember Topaz##68360
		learn Lucent Ember Topaz##95755
	step
		#include "vendor_Jewelcrafting"
		buy Design: Mystic Amberjewel##52396 |n
		use Design: Mystic Amberjewel##52396
		learn Mystic Amberjewel##73347
	step
		#include "vendor_Jewelcrafting"
		buy Design: Nimble Dream Emerald##52424 |n
		use Design: Nimble Dream Emerald##52424
		learn Nimble Dream Emerald##73376
	step
		#include "vendor_Jewelcrafting"
		buy Design: Piercing Dream Emerald##52426 |n
		use Design: Piercing Dream Emerald##52426
		learn Piercing Dream Emerald##73378
	step
		#include "vendor_Jewelcrafting"
		buy Design: Polished Ember Topaz##52410 |n
		use Design: Polished Ember Topaz##52410
		learn Polished Ember Topaz##73361
	step
		#include "vendor_Jewelcrafting"
		buy Design: Potent Ember Topaz##52414 |n
		use Design: Potent Ember Topaz##52414
		learn Potent Ember Topaz##73366
	step
		#include "vendor_Jewelcrafting"
		buy Design: Precise Inferno Ruby##52389 |n
		use Design: Precise Inferno Ruby##52389
		learn Precise Inferno Ruby##73339
	step
		#include "vendor_Jewelcrafting"
		buy Design: Puissant Dream Emerald##52430 |n
		use Design: Puissant Dream Emerald##52430
		learn Puissant Dream Emerald##73382
	step
		#include "vendor_Jewelcrafting"
		buy Design: Purified Demonseye##52404 |n
		use Design: Purified Demonseye##52404
		learn Purified Demonseye##73355
	step
		#include "vendor_Jewelcrafting"
		buy Design: Quick Amberjewel##52397 |n
		use Design: Quick Amberjewel##52397
		learn Quick Amberjewel##73348
	step
		#include "vendor_Jewelcrafting"
		buy Design: Reckless Ember Topaz##52417 |n
		use Design: Reckless Ember Topaz##52417
		learn Reckless Ember Topaz##73369
	step
		#include "vendor_Jewelcrafting"
		buy Design: Regal Dream Emerald##52423 |n
		use Design: Regal Dream Emerald##52423
		learn Regal Dream Emerald##73375
	step
		#include "vendor_Jewelcrafting"
		buy Design: Resolute Ember Topaz##52411 |n
		use Design: Resolute Ember Topaz##52411
		learn Resolute Ember Topaz##73362
	step
		#include "vendor_Jewelcrafting"
		buy Design: Resplendent Ember Topaz##68361 |n
		use Design: Resplendent Ember Topaz##68361
		learn Resplendent Ember Topaz##95756
	step
		#include "vendor_Jewelcrafting"
		buy Design: Retaliating Demonseye##52407 |n
		use Design: Retaliating Demonseye##52407
		learn Retaliating Demonseye##73358
	step
		#include "vendor_Jewelcrafting"
		buy Design: Rigid Ocean Sapphire##52393 |n
		use Design: Rigid Ocean Sapphire##52393
		learn Rigid Ocean Sapphire##73344
	step
		#include "vendor_Jewelcrafting"
		buy Design: Sensei's Dream Emerald##52432 |n
		use Design: Sensei's Dream Emerald##52432
		learn Sensei's Dream Emerald##73384
	step
		#include "vendor_Jewelcrafting"
		buy Design: Shifting Demonseye##52400 |n
		use Design: Shifting Demonseye##52400
		learn Shifting Demonseye##73351
	step
		#include "vendor_Jewelcrafting"
		buy Design: Skillful Ember Topaz##52418 |n
		use Design: Skillful Ember Topaz##52418
		learn Skillful Ember Topaz##73370
	step
		#include "vendor_Jewelcrafting"
		buy Design: Smooth Amberjewel##52395 |n
		use Design: Smooth Amberjewel##52395
		learn Smooth Amberjewel##73346
	step
		#include "vendor_Jewelcrafting"
		buy Design: Solid Ocean Sapphire##52390 |n
		use Design: Solid Ocean Sapphire##52390
		learn Solid Ocean Sapphire##73340
	step
		#include "vendor_Jewelcrafting"
		buy Design: Sovereign Demonseye##52399 |n
		use Design: Sovereign Demonseye##52399
		learn Sovereign Demonseye##73350
	step
		#include "vendor_Jewelcrafting"
		buy Design: Sparkling Ocean Sapphire##52391 |n
		use Design: Sparkling Ocean Sapphire##5239
		learn Sparkling Ocean Sapphire##73341
	step
		#include "vendor_Jewelcrafting"
		buy Design: Steady Dream Emerald##52427 |n
		use Design: Steady Dream Emerald##52427
		learn Steady Dream Emerald##73379
	step
		#include "vendor_Jewelcrafting"
		buy Design: Stormy Ocean Sapphire##52392 |n
		use Design: Stormy Ocean Sapphire##52392
		learn Stormy Ocean Sapphire##73343
	step
		#include "vendor_Jewelcrafting"
		buy Design: Subtle Amberjewel##52394 |n
		use Design: Subtle Amberjewel##52394
		learn Subtle Amberjewel##73345
	step
		#include "vendor_Jewelcrafting"
		buy Design: Timeless Demonseye##52402 |n
		use Design: Timeless Demonseye##52402
		learn Timeless Demonseye##73353
	step
		#include "vendor_Jewelcrafting"c
		buy Design: Veiled Demonseye##52408 |n
		use Design: Veiled Demonseye##52408
		learn Veiled Demonseye##73359
	step
		#include "vendor_Jewelcrafting"
		buy Design: Vivid Dream Emerald##68742 |n
		use Design: Vivid Dream Emerald##68742
		learn Vivid Dream Emerald##96226
	step
		#include "vendor_Jewelcrafting"
		buy Design: Willful Ember Topaz##68359 |n
		use Design: Willful Ember Topaz##68359
		learn Willful Ember Topaz##95754
	step
		#include "vendor_Jewelcrafting"
		buy Design: Zen Dream Emerald##52431 |n
		use Design: Zen Dream Emerald##52431
		learn Zen Dream Emerald##73383
	step
		#include "trainer_Jewelcrafting"
		learn The Perforator##73621
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Abyssal Depths or Uldum for grinding
		collect Design: Agile Shadowspirit Diamond##68781 |n
		use Design: Agile Shadowspirit Diamond##68781
		learn Agile Shadowspirit Diamond##96255
	step
		#include "vendor_Jewelcrafting"
		buy Design: Austere Shadowspirit Diamond##52437 |n
		use Design: Austere Shadowspirit Diamond##52437
		learn Austere Shadowspirit Diamond##73468
	step
		#include "vendor_Jewelcrafting"
		buy Design: Bracing Shadowspirit Diamond##52435 |n
		use Design: Bracing Shadowspirit Diamond##52435
		learn Bracing Shadowspirit Diamond##73466
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Twilight Highlands for grinding
		buy Design: Burning Shadowspirit Diamond##68783 |n
		use Design: Burning Shadowspirit Diamond##68783
		learn Burning Shadowspirit Diamond##96257
	step
		#include "vendor_Jewelcrafting"
		buy Design: Chaotic Shadowspirit Diamond##52434 |n
		use Design: Chaotic Shadowspirit Diamond##52434
		learn Chaotic Shadowspirit Diamond##73465
	step
		#include "vendor_Jewelcrafting"
		buy Design: Destructive Shadowspirit Diamond##52441 |n
		use Design: Destructive Shadowspirit Diamond##52441
		learn Destructive Shadowspirit Diamond##73472
	step
		#include "vendor_Jewelcrafting"
		buy Design: Effulgent Shadowspirit Diamond##52438 |n
		use Design: Effulgent Shadowspirit Diamond##52438
		learn Effulgent Shadowspirit Diamond##73469
	step
		#include "vendor_Jewelcrafting"
		buy Design: Ember Shadowspirit Diamond##52439 |n
		use Design: Ember Shadowspirit Diamond##52439
		learn Ember Shadowspirit Diamond##73470
	step
		#include "vendor_Jewelcrafting"
		buy Design: Enigmatic Shadowspirit Diamond##52443 |n
		use Design: Enigmatic Shadowspirit Diamond##52443
		learn Enigmatic Shadowspirit Diamond##73474
	step
		#include "vendor_Jewelcrafting"
		buy Design: Eternal Shadowspirit Diamond##52436 |n
		use Design: Eternal Shadowspirit Diamond##52436
		learn Eternal Shadowspirit Diamond##73467
	step
		#include "vendor_Jewelcrafting"
		buy Design: Fleet Shadowspirit Diamond##52433 |n
		use Design: Fleet Shadowspirit Diamond##52433
		learn Fleet Shadowspirit Diamond##73464
	step
		#include "vendor_Jewelcrafting"
		buy Design: Forlorn Shadowspirit Diamond##52445 |n
		use Design: Forlorn Shadowspirit Diamond##52445
		learn Forlorn Shadowspirit Diamond##73476
	step
		#include "vendor_Jewelcrafting"
		buy Design: Impassive Shadowspirit Diamond##52444 |n
		use Design: Impassive Shadowspirit Diamond##52444
		learn Impassive Shadowspirit Diamond##73475
	step
		#include "vendor_Jewelcrafting"
		buy Design: Powerful Shadowspirit Diamond##52442 |n
		use Design: Powerful Shadowspirit Diamond##52442
		learn Powerful Shadowspirit Diamond##73473
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Mount Hyjal or Twilight Highlands for grinding
		collect Design: Reverberating Shadowspirit Diamond##68782 |n
		use Design: Reverberating Shadowspirit Diamond##68782
		learn Reverberating Shadowspirit Diamond##96256
	step
		#include "trainer_Jewelcrafting"
		learn Fire Prism##73478
	step
		#include "vendor_Jewelcrafting"
		buy Design: Bold Chimera's Eye##52381 |n
		use Design: Bold Chimera's Eye##52381
		learn Bold Chimera's Eye##73396
	step
		#include "vendor_Jewelcrafting"
		buy Design: Brilliant Chimera's Eye##52449 |n
		use Design: Brilliant Chimera's Eye##52449
		learn Brilliant Chimera's Eye##73399
	step
		#include "vendor_Jewelcrafting"
		buy Design: Delicate Chimera's Eye##52447 |n
		use Design: Delicate Chimera's Eye##52447
		learn Delicate Chimera's Eye##73397
	step
		#include "vendor_Jewelcrafting"
		buy Design: Flashing Chimera's Eye##52448 |n
		use Design: Flashing Chimera's Eye##52448
		learn Flashing Chimera's Eye##73398
	step
		#include "vendor_Jewelcrafting"
		buy Design: Fractured Chimera's Eye##52459 |n
		use Design: Fractured Chimera's Eye##52459
		learn Fractured Chimera's Eye##73409
	step
		#include "vendor_Jewelcrafting"
		buy Design: Mystic Chimera's Eye##52457 |n
		use Design: Mystic Chimera's Eye##52457
		learn Mystic Chimera's Eye##73407
	step
		#include "vendor_Jewelcrafting"
		buy Design: Precise Chimera's Eye##52450 |n
		use Design: Precise Chimera's Eye##52450
		learn Precise Chimera's Eye##73400
	step
		#include "vendor_Jewelcrafting"
		buy Design: Quick Chimera's Eye##52458 |n
		use Design: Quick Chimera's Eye##52458
		learn Quick Chimera's Eye##73408
	step
		#include "vendor_Jewelcrafting"
		buy Design: Rigid Chimera's Eye##52454 |n
		use Design: Rigid Chimera's Eye##52454
		learn Rigid Chimera's Eye##73404
	step
		#include "vendor_Jewelcrafting"
		buy Design: Smooth Chimera's Eye##42456 |n
		use Design: Smooth Chimera's Eye##42456
		learn Smooth Chimera's Eye##73406
	step
		#include "vendor_Jewelcrafting"
		buy Design: Solid Chimera's Eye##52451 |n
		use Design: Solid Chimera's Eye##52451
		learn Solid Chimera's Eye##73401
	step
		#include "vendor_Jewelcrafting"
		buy Design: Sparkling Chimera's Eye##52452 |n
		use Design: Sparkling Chimera's Eye##52452
		learn Sparkling Chimera's Eye##73402
	step
		#include "vendor_Jewelcrafting"
		buy Design: Stormy Chimera's Eye##52453 |n
		use Design: Stormy Chimera's Eye##52453
		learn Stormy Chimera's Eye##73403
	step
		#include "vendor_Jewelcrafting"
		buy Design: Subtle Chimera's Eye##52455 |n
		use Design: Subtle Chimera's Eye##52455
		learn Subtle Chimera's Eye##73405
	step
		#include "trainer_Jewelcrafting"
		learn Ornate Band##122661
	step
		#include "trainer_Jewelcrafting"
		learn Vicious Amberjewel Band##99540
	step
		#include "trainer_Jewelcrafting"
		learn Vicious Ruby Signet##99541
	step
		#include "trainer_Jewelcrafting"
		learn Vicious Sapphire Ring##99539
	step
		#include "trainer_Jewelcrafting"
		learn Shadowfire Necklace##12262
	step
		#include "trainer_Jewelcrafting"
		learn Vicious Amberjewel Pendant##99543
	step
		#include "trainer_Jewelcrafting"
		learn Vicious Ruby Choker##99544
	step
		#include "trainer_Jewelcrafting"
		learn Vicious Sapphire Necklace##99542
	step
		#include "vendor_Jewelcrafting"
		buy Design: Band of Blades##52461 |n
		use Design: Band of Blades##52461
		learn Band of Blades##73498
	step
		#include "vendor_Jewelcrafting"
		buy Design: Brazen Elementium Medallion##52464 |n
		use Design: Brazen Elementium Medallion##52464
		learn Brazen Elementium Medallion##73521
	step
		#include "vendor_Jewelcrafting"
		buy Design: Elementium Destroyer's Ring##52460 |n
		use Design: Elementium Destroyer's Ring##52460
		learn Elementium Destroyer's Ring##73520
	step
		#include "vendor_Jewelcrafting"
		buy Design: Elementium Guardian##52467 |n
		use Design: Elementium Guardian##52467
		learn Elementium Guardian##73506
	step
		#include "vendor_Jewelcrafting"
		buy Design: Elementium Moebius Band##52463 |n
		use Design: Elementium Moebius Band##52463
		learn Elementium Moebius Band##73503
	step
		#include "vendor_Jewelcrafting"
		buy Design: Entwined Elementium Choker##52465 |n
		use Design: Entwined Elementium Choker##52465
		learn Entwined Elementium Choker##73504
	step
		#include "vendor_Jewelcrafting"
		buy Design: Eye of Many Deaths##52466 |n
		use Design: Eye of Many Deaths##52466
		learn Eye of Many Deaths##73505
	step
		#include "vendor_Jewelcrafting"
		buy Design: Punisher's Band##69853 |n
		use Design: Punisher's Band##69853
		learn Punisher's Band##98921
	step
		#include "vendor_Jewelcrafting"
		buy Design: Ring of Warring Elements##52462 |n
		use Design: Ring of Warring Elements##52462
		learn Ring of Warring Elements##73502
	step
		#include "trainer_Jewelcrafting"
		learn River's Heart##131593
	step
		#include "trainer_Jewelcrafting"
		learn Sun's Radiance##131695
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Accurate Shadow Spinel##71928 |n
		use Design: Accurate Shadow Spinel##71928
		learn Accurate Shadow Spinel##101784
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Adept Lava Coral##71917 |n
		use Design: Adept Lava Coral##71917
		learn Adept Lava Coral##101773
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Artful Lava Coral##71919 |n
		use Design: Artful Lava Coral##71919
		learn Artful Lava Coral##101775
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Balanced Elven Peridot##71893 |n
		use Design: Balanced Elven Peridot##71893
		learn Balanced Elven Peridot##101749
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Bold Queen's Garnet##71943 |n
		use Design: Bold Queen's Garnet##71943
		learn Bold Queen's Garnet##101799
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Brilliant Queen's Garnet##71941 |n
		use Design: Brilliant Queen's Garnet##71941
		learn Brilliant Queen's Garnet##101797
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Champion's Lava Coral##71912 |n
		use Design: Champion's Lava Coral##71912
		learn Champion's Lava Coral##101768
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Crafty Lava Coral##71906 |n
		use Design: Crafty Lava Coral##71906
		learn Crafty Lava Coral##101762
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Deadly Lava Coral##71905 |n
		use Design: Deadly Lava Coral##71905
		learn Deadly Lava Coral##101761
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Defender's Shadow Spinel##71937 |n
		use Design: Defender's Shadow Spinel##71937
		learn Defender's Shadow Spinel##101793
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Deft Lava Coral##71913 |n
		use Design: Deft Lava Coral##71913
		learn Deft Lava Coral##101769
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Delicate Queen's Garnet##71939 |n
		use Design: Delicate Queen's Garnet##71939
		learn Delicate Queen's Garnet##101798
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Energized Elven Peridot##71898 |n
		use Design: Energized Elven Peridot##71898
		learn Energized Elven Peridot##101754
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Etched Shadow Spinel##71931 |n
		use Design: Etched Shadow Spinel##71931
		learn Etched Shadow Spinel##101787
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Fierce Lava Coral##71916 |n
		use Design: Fierce Lava Coral##71916
		learn Fierce Lava Coral##101772
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Fine Lava Coral##71920 |n
		use Design: Fine Lava Coral##71920
		learn Fine Lava Coral##101776
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Flashing Queen's Garnet##71942 |n
		use Design: Flashing Queen's Garnet##71942
		learn Flashing Queen's Garnet##101798
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Forceful Elven Peridot##71901 |n
		use Design: Forceful Elven Peridot##71901
		learn Forceful Elven Peridot##101757
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Fractured Lightstone##71947 |n
		use Design: Fractured Lightstone##71947
		learn Fractured Lightstone##101803
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Glinting Shadow Spinel##71927 |n
		use Design: Glinting Shadow Spinel##71927
		learn Glinting Shadow Spinel##101783
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Guardian's Shadow Spinel##71935 |n
		use Design: Guardian's Shadow Spinel##71935
		learn Guardian's Shadow Spinel##101791
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Infused Elven Peridot##71891 |n
		use Design: Infused Elven Peridot##71891
		learn Infused Elven Peridot##101747
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Inscribed Lava Coral##71908 |n
		use Design: Inscribed Lava Coral##71908
		learn Inscribed Lava Coral##101764
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Jagged Elven Peridot##71899 |n
		use Design: Jagged Elven Peridot##71899
		learn Jagged Elven Peridot##101755
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Keen Lava Coral##71918 |n
		use Design: Keen Lava Coral##71918
		learn Keen Lava Coral##101774
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Lightning Elven Peridot##71889 |n
		use Design: Lightning Elven Peridot##71889
		learn Lightning Elven Peridot##101745
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Lucent Lava Coral##71922 |n
		use Design: Lucent Lava Coral##71922
		learn Lucent Lava Coral##101778
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Misty Elven Peridot##71887 |n
		use Design: Misty Elven Peridot##71887
		learn Misty Elven Peridot##101743
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Mysterious Shadow Spinel##71932 |n
		use Design: Mysterious Shadow Spinel##71932
		learn Mysterious Shadow Spinel##101788
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Mystic Lightstone##71948 |n
		use Design: Mystic Lightstone##71948
		learn Mystic Lightstone##101804
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Nimble Elven Peridot##71902 |n
		use Design: Nimble Elven Peridot##71902
		learn Nimble Elven Peridot##101758
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Piercing Elven Peridot##71888 |n
		use Design: Piercing Elven Peridot##71888
		learn Piercing Elven Peridot##101744
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Polished Lava Coral##71909 |n
		use Design: Polished Lava Coral##71909
		learn Polished Lava Coral##101765
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Potent Lava Coral##71907 |n
		use Design: Potent Lava Coral##71907
		learn Potent Lava Coral##101763
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Precise Queen's Garnet##71940 |n
		use Design: Precise Queen's Garnet##71940
		learn Precise Queen's Garnet##101769
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Puissant Elven Peridot##71903 |n
		use Design: Puissant Elven Peridot##71903
		learn Puissant Elven Peridot##101759
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Purified Shadow Spinel##71933 |n
		use Design: Purified Shadow Spinel##71933
		learn Purified Shadow Spinel##101789
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Quick Lightstone##71946 |n
		use Design: Quick Lightstone##71946
		learn Quick Lightstone##101802
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Radiant Elven Peridot##71896 |n
		use Design: Radiant Elven Peridot##71896
		learn Radiant Elven Peridot##101752
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Reckless Lava Coral##71915 |n
		use Design: Reckless Lava Coral##71915
		learn Reckless Lava Coral##101771
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Regal Elven Peridot##71900 |n
		use Design: Regal Elven Peridot##71900
		learn Regal Elven Peridot##101756
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Resolute Lava Coral##71910 |n
		use Design: Resolute Lava Coral##71910
		learn Resolute Lava Coral##101766
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Resplendent Lava Coral##71926 |n
		use Design: Resplendent Lava Coral##71926
		learn Resplendent Lava Coral##101782
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Retaliating Shadow Spinel##71930 |n
		use Design: Retaliating Shadow Spinel##71930
		learn Retaliating Shadow Spinel##101786
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Rigid Deepholm Iolite##71821 |n
		use Design: Rigid Deepholm Iolite##71821
		learn Rigid Deepholm Iolite##101735
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Sensei's Elven Peridot##71890 |n
		use Design: Sensei's Elven Peridot##71890
		learn Sensei's Elven Peridot##101746
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Shattered Elven Peridot##71897 |n
		use Design: Shattered Elven Peridot##71897
		learn Shattered Elven Peridot##101753
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Shifting Shadow Spinel##71934 |n
		use Design: Shifting Shadow Spinel##71934
		learn Shifting Shadow Spinel##101790
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Skillful Lava Coral##71921 |n
		use Design: Skillful Lava Coral##71921
		learn Skillful Lava Coral##101777
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Smooth Lightstone##71944 |n
		use Design: Smooth Lightstone##71944
		learn Smooth Lightstone##101800
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Solid Deepholm Iolite##71886 |n
		use Design: Solid Deepholm Iolite##71886
		learn Solid Deepholm Iolite##101742
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Sovereign Shadow Spinel##71938 |n
		use Design: Sovereign Shadow Spinel##71938
		learn Sovereign Shadow Spinel##101794
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Sparkling Deepholm Iolite##71885 |n
		use Design: Sparkling Deepholm Iolite##71885
		learn Sparkling Deepholm Iolite##101741
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Splendid Lava Coral##71925 |n
		use Design: Splendid Lava Coral##71925
		learn Splendid Lava Coral##101781
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Stalwart Lava Coral##71911 |n
		use Design: Stalwart Lava Coral##71911
		learn Stalwart Lava Coral##101767
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Steady Elven Peridot##71904 |n
		use Design: Steady Elven Peridot##71904
		learn Steady Elven Peridot##101760
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Stormy Deepholm Iolite##71884 |n
		use Design: Stormy Deepholm Iolite##71884
		learn Stormy Deepholm Iolite##101740
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Subtle Lightstone##71945 |n
		use Design: Subtle Lightstone##71945
		learn Subtle Lightstone##101801
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Tenuous Lava Coral##71923 |n
		use Design: Tenuous Lava Coral##71923
		learn Tenuous Lava Coral##101779
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Timeless Shadow Spinel##71936 |n
		use Design: Timeless Shadow Spinel##71936
		learn Timeless Shadow Spinel##101792
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Turbid Elven Peridot##71895 |n
		use Design: Turbid Elven Peridot##71895
		learn Turbid Elven Peridot##101751
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Veiled Shadow Spinel##71929 |n
		use Design: Veiled Shadow Spinel##71929
		learn Veiled Shadow Spinel##101785
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Vivid Elven Peridot##71894 |n
		use Design: Vivid Elven Peridot##71894
		learn Vivid Elven Peridot##101750
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Wicked Lava Coral##71914 |n
		use Design: Wicked Lava Coral##71914
		learn Wicked Lava Coral##101770
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Willful Lava Coral##71924 |n
		use Design: Willful Lava Coral##71924
		learn Willful Lava Coral##101780
	step
		#include "vendor_Jewelcrafting_1"
		buy Design: Zen Elven Peridot##71892 |n
		use Design: Zen Elven Peridot##71892
		learn Zen Elven Peridot##101748
	step
		This is a Random World Drop, from creatures level 80-87 and in some dungeons
		|tip We recommend Firelands or any Raid Boss in Cataclysm for grinding
		learn Rhinestone Sunglasses##73623
	step
		#include "trainer_Jewelcrafting"
		learn Artful Tiger Opal##107646
	step
		#include "trainer_Jewelcrafting"
		learn Deadly Tiger Opal##107649
	step
		#include "trainer_Jewelcrafting"
		learn Etched Roguestone##107630
	step
		#include "trainer_Jewelcrafting"
		learn Lightning Alexandrite##107604
	step
		#include "trainer_Jewelcrafting"
		learn Mysterious Roguestone##107633
	step
		#include "trainer_Jewelcrafting"
		learn Rigid Lapis Lazuli##107617
	step
		#include "trainer_Jewelcrafting"
		learn Vivid Alexandrite##107615
	step
		#include "trainer_Jewelcrafting"
		learn Scrying Roguestone##122663
	step
		#include "trainer_Jewelcrafting"
		learn Assassin's Roguestone##130656
	step
		#include "trainer_Jewelcrafting"
		learn Deft Tiger Opal##107650
	step
		#include "trainer_Jewelcrafting"
		learn Delicate Pandarian Garnet##107624
	step
		#include "trainer_Jewelcrafting"
		learn Jagged Alexandrite##107602
	step
		#include "trainer_Jewelcrafting"
		learn Keen Tiger Opal##107654
	step
		#include "trainer_Jewelcrafting"
		learn Nimble Alexandrite##107606
	step
		#include "trainer_Jewelcrafting"
		learn Veiled Roguestone##107639
	step
		#include "trainer_Jewelcrafting"
		learn Vermilion Onyx##131690
	step
		#include "trainer_Jewelcrafting"
		learn Wild Jade##131688
	step
		#include "trainer_Jewelcrafting"
		learn Fine Tiger Opal##107652
	step
		#include "trainer_Jewelcrafting"
		learn Fractured Sunstone##107640
	step
		#include "trainer_Jewelcrafting"
		learn Regal Alexandrite##107610
	step
		#include "trainer_Jewelcrafting"
		learn Shifting Roguestone##107636
	step
		#include "trainer_Jewelcrafting"
		learn Solid Lapis Lazuli##107619
	step
		#include "trainer_Jewelcrafting"
		learn Sovereign Roguestone##107637
	step
		#include "trainer_Jewelcrafting"
		learn Willful Tiger Opal##107667
	step
		#include "trainer_Jewelcrafting"
		learn Zen Alexandrite##107616
	step
		#include "trainer_Jewelcrafting"
		learn Glinting Roguestone##107631
	step
		#include "trainer_Jewelcrafting"
		learn Lucent Tiger Opal##107655
	step
		#include "trainer_Jewelcrafting"
		learn Misty Alexandrite##107605
	step
		#include "trainer_Jewelcrafting"
		learn Precise Pandarian Garnet##107626
	step
		#include "trainer_Jewelcrafting"
		learn Reckless Tiger Opal##107658
	step
		#include "trainer_Jewelcrafting"
		learn Shattered Alexandrite##107612
	step
		#include "trainer_Jewelcrafting"
		learn Imperial Amethyst##131691
	step
		#include "trainer_Jewelcrafting"
		learn Champion's Tiger Opal##107647
	step
		#include "trainer_Jewelcrafting"
		learn Guardian's Roguestone##107632
	step
		#include "trainer_Jewelcrafting"
		learn Mystic Sunstone##107641
	step
		#include "trainer_Jewelcrafting"
		learn Polished Tiger Opal##107656
	step
		#include "trainer_Jewelcrafting"
		learn Sensei's Alexandrite##107611
	step
		#include "trainer_Jewelcrafting"
		learn Sparkling Lapis Lazuli##107620
	step
		#include "trainer_Jewelcrafting"
		learn Turbid Alexandrite##107614
	step
		#include "trainer_Jewelcrafting"
		learn Primordial Ruby##131686
	step
		#include "trainer_Jewelcrafting"
		learn Accurate Roguestone##107627
	step
		#include "trainer_Jewelcrafting"
		learn Adept Tiger Opal##107645
	step
		#include "trainer_Jewelcrafting"
		learn Balanced Alexandrite##107598
	step
		#include "trainer_Jewelcrafting"
		learn Effulgent Alexandrite##107599
	step
		#include "trainer_Jewelcrafting"
		learn Flashing Pandarian Garnet##107625
	step
		#include "trainer_Jewelcrafting"
		learn Tenuous Tiger Opal##107665
	step
		#include "trainer_Jewelcrafting"
		learn Bold Serpent's Eye##122675
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Serpent's Eye##122676
	step
		#include "trainer_Jewelcrafting"
		learn Delicate Serpent's Eye##122674
	step
		#include "trainer_Jewelcrafting"
		learn Flashing Serpent's Eye##122685
	step
		#include "trainer_Jewelcrafting"
		learn Fractured Serpent's Eye##122684
	step
		#include "trainer_Jewelcrafting"
		learn Precise Serpent's Eye##122683
	step
		#include "trainer_Jewelcrafting"
		learn Quick Serpent's Eye##122682
	step
		#include "trainer_Jewelcrafting"
		learn Rigid Serpent's Eye##122681
	step
		#include "trainer_Jewelcrafting"
		learn Smooth Serpent's Eye##122680
	step
		#include "trainer_Jewelcrafting"
		learn Solid Serpent's Eye##122678
	step
		#include "trainer_Jewelcrafting"
		learn Sparkling Serpent's Eye##122677
	step
		#include "trainer_Jewelcrafting"
		learn Subtle Serpent's Eye##122679
	step
		#include "trainer_Jewelcrafting"
		learn Secrets of the Stone##131759
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Accurate Imperial Amethyst##107693
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Adept Vermilion Onyx##107715
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Artful Vermilion Onyx##107716
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Balanced Wild Jade##106960
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Bold Primordial Ruby##107705
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Brilliant Primordial Ruby##107706
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Champion's Vermilion Onyx##107717
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Crafty Vermilion Onyx##107718
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Deadly Vermilion Onyx##107719
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Defender's Imperial Amethyst##107694
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Deft Vermilion Onyx##107720
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Delicate Primordial Ruby##107707
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Effulgent Wild Jade##106957
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Energized Wild Jade##107737
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Etched Imperial Amethyst##107695
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Fierce Vermilion Onyx##107721
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Fine Vermilion Onyx##107722
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Flashing Primordial Ruby##107708
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Forceful Wild Jade##107738
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Fractured Sun's Radiance##107710
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Glinting Imperial Amethyst##107696
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Guardian's Imperial Amethyst##107697
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Inscribed Vermilion Onyx##107723
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Jagged Wild Jade##107739
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Keen Vermilion Onyx##107724
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Lightning Wild Jade##106955
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Lucent Vermilion Onyx##107725
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Misty Wild Jade##106953
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Mysterious Imperial Amethyst##107698
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Mystic Sun's Radiance##107711
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Nimble Wild Jade##107740
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Piercing Wild Jade##106954
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Polished Vermilion Onyx##107726
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Potent Vermilion Onyx##107727
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Precise Primordial Ruby##107709
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Puissant Wild Jade##107742
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Purified Imperial Amethyst##107699
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Quick Sun's Radiance##107712
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Radiant Wild Jade##107743
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Reckless Vermilion Onyx##107728
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Regal Wild Jade##107744
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Resolute Vermilion Onyx##107729
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Resplendent Vermilion Onyx##107730
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Retaliating Imperial Amethyst##107700
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Rigid River's Heart##106947
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Sensei's Wild Jade##106956
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Shattered Wild Jade##107745
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Shifting Imperial Amethyst##107701
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Skillful Vermilion Onyx##107731
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Smooth Sun's Radiance##107713
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs.
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Solid River's Heart##106950
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Sovereign Imperial Amethyst##107702
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Sparkling River's Heart##106949
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Splendid Vermilion Onyx##107732
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Stalwart Vermilion Onyx##107733
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Steady Wild Jade##107746
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Stormy River's Heart##106948
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Subtle Sun's Radiance##107714
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Tenuous Vermilion Onyx##107734
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Timeless Imperial Amethyst##107703
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Turbid Wild Jade##106962
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Veiled Imperial Amethyst##107704
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Vivid Wild Jade##106961
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Wicked Vermilion Onyx##107735
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Willful Vermilion Onyx##107736
	step
		Use Secrets of the Stone to create Facets of Research. The Facets will teach you these different Designs
		|tip Learning each Design is random.
		create Secrets of the Stone##131759,Jewelcrafting,1 total |n
		collect 1 Facets of Research##90406 |n
		use Facets of Research##90406
		learn Zen Wild Jade##106958
	step
		#include "trainer_Jewelcrafting"
		learn Defender's Roguestone##107628
	step
		#include "trainer_Jewelcrafting"
		learn Fierce Tiger Opal##107651
	step
		#include "trainer_Jewelcrafting"
		learn Inscribed Tiger Opal##107653
	step
		#include "trainer_Jewelcrafting"
		learn Piercing Alexandrite##107607
	step
		#include "trainer_Jewelcrafting"
		learn Quick Sunstone##107642
	step
		#include "trainer_Jewelcrafting"
		learn Steady Alexandrite##107613
	step
		#include "trainer_Jewelcrafting"
		learn Stormy Lapis Lazuli##107621
	step
		#include "trainer_Jewelcrafting"
		learn Brilliant Pandarian Garnet##107623
	step
		#include "trainer_Jewelcrafting"
		learn Energized Alexandrite##107600
	step
		#include "trainer_Jewelcrafting"
		learn Potent Tiger Opal##107657
	step
		#include "trainer_Jewelcrafting"
		learn Skillful Tiger Opal##107661
	step
		#include "trainer_Jewelcrafting"
		learn Timeless Roguestone##107638
	step
		#include "trainer_Jewelcrafting"
		learn Crafty Tiger Opal##107648
	step
		#include "trainer_Jewelcrafting"
		learn Forceful Alexandrite##107601
	step
		#include "trainer_Jewelcrafting"
		learn Purified Roguestone##107634
	step
		#include "trainer_Jewelcrafting"
		learn Smooth Sunstone##107643
	step
		#include "trainer_Jewelcrafting"
		learn Stalwart Tiger Opal##107663
	step
		#include "trainer_Jewelcrafting"
		learn Bold Pandarian Garnet##107622
	step
		#include "trainer_Jewelcrafting"
		learn Puissant Alexandrite##107608
	step
		#include "trainer_Jewelcrafting"
		learn Splendid Tiger Opal##107662
	step
		#include "trainer_Jewelcrafting"
		learn Tense Roguestone##130655
	step
		#include "trainer_Jewelcrafting"
		learn Wicked Tiger Opal##107666
	step
		#include "trainer_Jewelcrafting"
		learn Radiant Alexandrite##107609
	step
		#include "trainer_Jewelcrafting"
		learn Resolute Tiger Opal##107659
	step
		#include "trainer_Jewelcrafting"
		learn Resplendent Tiger Opal##107660
	step
		#include "trainer_Jewelcrafting"
		learn Retaliating Roguestone##107635
	step
		#include "trainer_Jewelcrafting"
		learn Subtle Sunstone##107644
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Agile Primal Diamond##83811 |n
		use Design: Agile Primal Diamond##83811
		learn Agile Primal Diamond##107753
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Austere Primal Diamond##83815 |n
		use Design: Austere Primal Diamond##83815
		learn Austere Primal Diamond##107754
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Krasrang Wilds for grinding.
		collect Design: Burning Primal Diamond##83825 |n
		use Design: Burning Primal Diamond##83825
		learn Burning Primal Diamond##107756
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Effulgent Primal Diamond##83842 |n
		use Design: Effulgent Primal Diamond##83842
		learn Effulgent Primal Diamond##107758
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Ember Primal Diamond##83844 |n
		use Design: Ember Primal Diamond##83844
		learn Ember Primal Diamond##107759
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Enigmatic Primal Diamond##83848 |n
		use Design: Enigmatic Primal Diamond##83848 |learn Enigmatic Primal Diamond##107760
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Eternal Primal Diamond##83851 |n
		use Design: Eternal Primal Diamond##83851
		learn Eternal Primal Diamond##107762
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Fleet Primal Diamond##83859 |n
		use Design: Fleet Primal Diamond##83859
		learn Fleet Primal Diamond##107763
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Forlorn Primal Diamond##83862 |n
		use Design: Forlorn Primal Diamond##83862
		learn Forlorn Primal Diamond##107764
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Dread Wastes for grinding.
		collect Design: Impassive Primal Diamond##83872 |n
		use Design: Impassive Primal Diamond##83872
		learn Impassive Primal Diamond##107765
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Powerful Primal Diamond##83901 |n
		use Design: Powerful Primal Diamond##83901
		learn Powerful Primal Diamond##107766
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Heart of Fear for grinding.
		collect Design: Reverberating Primal Diamond##83925 |n
		use Design: Reverberating Primal Diamond##83925
		learn Reverberating Primal Diamond##107767
	step
		This is a Random World Drop, from creatures level 84-92 and in some dungeons
		|tip We recommend Mogu'shan Vaults or Shado-Pan Monastery for grinding.
		collect Design: Revitalizing Primal Diamond##83926 |n
		use Design: Revitalizing Primal Diamond##83926
		learn Revitalizing Primal Diamond##107768
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Band of Blood##122668
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Golembreaker Amulet##122670
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Heart of the Earth##122664
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Lionsfall Ring##122667
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Lord's Signet##122666
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Reflection of the Sea##122669
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Roguestone Shadowband##122665
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Skymage Circle##122672
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Tiger Opal Pendant##122673
	step
		#include "trainer_Jewelcrafting_MoP"
		learn Widow Chain##122671
	step
		talk San Redscale##58414
		|tip You must be Exalted with Order of the Cloud Serpent to purchase this Design.
		buy Design: Jeweled Onyx Panther##83877 |n
		use Design: Jeweled Onyx Panther##83877
		learn Jeweled Onyx Panther##120045 |goto The Jade Forest 56.6,44.4
	step
		talk San Redscale##58414
		|tip You must be Honored with Order of the Cloud Serpent to purchase this Design.
		buy Design: Jade Panther##83845 |n
		use Design: Jade Panther##83845
		learn Jade Panther##121844 |goto The Jade Forest 56.6,44.4
	step
		talk San Redscale##58414
		|tip You must be Revered with Order of the Cloud Serpent to purchase this Design.
		buy Design: Ruby Panther##83931 |n
		use Design: Ruby Panther##83931
		learn Ruby Panther##121841 |goto The Jade Forest 56.6,44.4
	step
		talk San Redscale##58414
		|tip You must be Revered with Order of the Cloud Serpent to purchase this Design.
		buy Design: Sapphire Panther##83932 |n
		use Design: Sapphire Panther##83932
		learn Sapphire Panther##121842 |goto The Jade Forest 56.6,44.4
	step
		talk San Redscale##58414
		|tip You must be Honored with Order of the Cloud Serpent to purchase this Design.
		buy Design: Sunstone Panther##83830 |n
		use Design: Sunstone Panther##83830
		learn Sunstone Panther##121843 |goto The Jade Forest 56.6,44.4
]])

ZygorGuidesViewer:RegisterInclude("Jewelcrafting_600-700",[[
// ----------
// 600-700
// ----------
// TRAIN: Draenor Master Jewelcrafting
	step
		Before you continue, open your Jewelcrafting window to detect your profession |cast Jewelcrafting##25229
		skillmax Jewelcrafting,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _Gem Boutique_ to a _Small Plot_
		Build your Gem Boutique |havebuilding Jewelcrafting
	step
		#include "H_Garrison_SmallBuilding",action="talk Dorogarr##79832",building="Jewelcrafting"
		buy Draenor Jewelcrafting##115359 |condition skillmax("Jewelcrafting") >= 700 or itemcount(115359) >= 1
	step
		use Draenor Jewelcrafting##115359
		skillmax Jewelcrafting,700
	step
		map Frostfire Ridge
		path follow loose; loop on; ants curved
		path	43.0,58.3	40.8,60.5	38.4,59.3
		path	36.0,57.0	34.3,54.6	31.6,54.8
		path	28.5,49.5	27.9,44.6	24.5,39.7
		path	23.9,34.1	27.9,30.9	31.9,27.0
		path	32.6,25.7	33.5,20.5	36.3,21.0
		path	37.8,26.5	41.0,28.9	42.1,30.6
		path	43.0,31.0	44.7,31.2	49.7,35.4
		path	52.4,38.3	54.3,39.5	48.5,50.1
		path	47.6,54.9	46.2,58.3	43.3,57.9
		Make sure you are tracking minerals, and gather all _Black Rock Ore_ you see as you follow this path
		collect 1020 Blackrock Ore##109118 |condition skill("Jewelcrafting")>=700
		|tip You can also buy these materials from the Auction House.
	step
		map Frostfire Ridge
		path follow loose;loop;ants straight;dist 60
		path	31.1,53.3	26.1,53.7	24.2,49.0
		path	23.2,45.2	20.7,39.5	22.2,33.9
		path	21.8,29.7	20.9,25.4	23.1,23.6
		path	25.1,24.6	27.2,22.3	29.7,21.4
		path	31.2,22.0	32.8,21.7	35.1,19.5
		path	36.9,24.3	38.1,26.8	40.8,28.9
		path	41.6,30.6	42.8,29.9	42.9,31.1
		path	44.4,31.1	46.2,31.7	48.9,34.4
		path	51.6,36.9	53.7,35.1	54.5,30.3
		path	56.5,26.1	59.1,28.4	60.0,31.9
		path	61.2,34.9	63.1,40.9	63.4,45.0
		path	60.9,46.9	62.2,52.4	60.3,55.3
		path	57.9,57.5	53.8,55.8	50.6,54.7
		path	47.7,55.6	45.9,58.9	43.1,60.8
		path	40.3,62.1	37.7,58.7	36.5,56.5
		path	35.5,53.3	33.6,49.2	31.1,51.2
		Follow the path and gather Fireweed
		|tip Make sure you have find herbs turned on.
		collect 200 Fireweed##109125 |condition skill("Jewelcrafting")>=700
		You will need to buy these unless you have a character with Herbalism
	step
		#include "H_Garrison_SmallBuilding",action="talk Dorogarr##79832",building="Jewelcrafting" 
		accept Your First Jewelcrafting Work Order##37573
	step
		#include "H_Garrison_SmallBuilding",action="talk Elrondir Surrion##79830",building="Jewelcrafting" 
		Tell him _"I would like to place a work order."_ |q Your First Jewelcrafting Work Order##37573/1
	step
		#include "H_Garrison_SmallBuilding",action="Click Jewelcrafting Work Order",building="Jewelcrafting" 
		Jewelcrafting Work Order Collected |q Your First Jewelcrafting Work Order##37573/2
	step
		#include "H_Garrison_SmallBuilding",action="talk Elrondir Surrion##79830",building="Jewelcrafting" 
		turnin Your First Jewelcrafting Work Order##37573
	step
		create 1 Secrets of Draenor Jewelcrafting##176087,Jewelcrafting,1 total |n
		collect Secrets of Draenor Jewelcrafting##118723 |condition skillmax("Jewelcrafting") >= 700
	step
		#include "H_Garrison_SmallBuilding",action="talk Dorogarr##79832",building="Jewelcrafting" 
		buy 1 Recipe: Critical Strike Taladite##116096 |condition _G.IsSpellKnown(170719) or itemcount(116096) >= 1 or skillmax("Jewelcrafting") >= 700
	step
		use Recipe: Taladite Recrystalizer##116078
		learn Critical Strike Taladite##170719 |condition skill("Jewelcrafting")>=700
	step
		create Critical Strike Taladite##170719,Jewelcrafting,700
	step
		Congratulations, you have reached level 700 in Jewelcrafting!
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Leatherworking
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Leatherworking",[[
		This Recipe is learned by learning the Leatherworking Skill
		learn Light Leather##2881
	step
		This Recipe is learned by learning the Leatherworking Skill
		learn Light Armor Kit##2152
	step
		This Recipe is learned by learning the Leatherworking Skill
		learn Handstitched Leather Boots##2149
	step
		This Recipe is learned by learning the Leatherworking Skill
		learn Handstitched Leather Bracers##9059
	step
		This Recipe is learned by learning the Leatherworking Skill
		learn Handstitched Leather Cloak##9058
	step
		This Recipe is learned by learning the Leatherworking Skill
		learn Handstitched Leather Vest##7126
	step
		#include "trainer_Leatherworking"
		learn Handstitched Leather Pants##2153
	step
		#include "trainer_Leatherworking"
		learn Handstitched Leather Belt##3753
	step
		#include "trainer_Leatherworking"
		learn Cured Light Hide##3816
	step
		This is a Random World Drop, from creatures level 6-20 and in some dungeons
		|tip We recommend The Deadmines or Ragefire Chasm for grinding.
		collect Pattern: Rugged Leather Pants##7288 |n
		use Pattern: Rugged Leather Pants##7288 |learn Rugged Leather Pants##9064
	step
		#include "trainer_Jewelcrafting"
		learn Embossed Leather Vest##2160
	step
		This Pattern is learned by completed the quest Kodo Hide Bag
		|tip This is a Horde only Quest and may sell well on the Neutral AH.
		talk Veren Tallstrider##3050
		accept Kodo Hide Bag##769
		turnin Kodo Hide Bag##769
		buy Pattern: Kodo Hide Bag##5083 |n
		use Pattern: Kodo Hide Bag##5083
		learn Kodo Hide Bag##5244 |goto Thunder Bluff 44.0,44.6
	step
		#include "trainer_Leatherworking"
		learn Embossed Leather Boots##2161
	step
		#include "trainer_Leatherworking"
		learn Embossed Leather Gloves##3756
	step
		#include "trainer_Leatherworking"
		learn Embossed Leather Cloak##2162
	step
		This is a Random World Drop, from creatures level 6-20 and in some dungeons
		|tip We recommend The Deadmines or Shadowfang Keep for grinding.
		collect Pattern: White Leather Jerkin##2407 |n
		use Pattern: White Leather Jerkin##2407
		learn White Leather Jerkin##2163
	step
		#include "trainer_Leatherworking"
		learn Light Leather Bracers##9065
	step
		#include "trainer_Leatherworking"
		learn Embossed Leather Pants##3759
	step
		This is a Random World Drop, from creatures level 6-20 and in some dungeons
		|tip We recommend Ragefire Chasm or The Deadmines for grinding.
		collect Pattern: Fine Leather Gloves##2408 |n
		use Pattern: Fine Leather Gloves##2408
		learn Fine Leather Gloves##2164
	step
		#include "trainer_Leatherworking"
		learn Fine Leather Belt##3763
	step
		#include "trainer_Leatherworking"
		learn Fine Leather Cloak##2159
	step
		#include "trainer_Leatherworking"
		learn Fine Leather Tunic##3761
	step
		This is only available by doing an Alliance Quest
		|tip You may be able to find this on the Neutral AH.
		collect Pattern: Moonglow Vest##6710 |n
		use Pattern: Moonglow Vest##6710
		learn Moonglow Vest##8322
	step
		This Pattern may no longer be in the game
		learn Deviate Scale Cloak##7953
	step
		This is a Random World Drop, from creatures level 6-20 and in some dungeons
		|tip We recommend Darkshore or Ragefire Chasm for grinding.
		collect Pattern: Fine Leather Boots##2406 |n
		use Pattern: Fine Leather Boots##2406
		learn Fine Leather Boots##2158
	step
		kill Defias Squallshaper##48521
		collect Pattern: Murloc Scale Belt##5786 |n
		use Pattern: Murloc Scale Belt##5786
		learn Murloc Scale Belt##6702 |goto The Deadmines/2 55.8,44.6
	step
		#include "trainer_Leatherworking"
		learn Light Leather Pants##9068
	step
		talk Andrew Hilbert##3556
		buy Pattern: Murloc Scale Breastplate##5787 |n
		use Pattern: Murloc Scale Breastplate##5787
		learn Murloc Scale Breastplate##6703 |goto Silverpine Forest 43.2,40.6
	step
		#include "trainer_Leatherworking"
		learn Medium Leather##20648
	step
		#include "trainer_Leatherworking"
		learn Cured Medium Hide##3817
	step
		#include "trainer_Leatherworking"
		learn Medium Armor Kit##2165
	step
		This is only available to Alliance and may be sold on the Neutral AH
		buy Pattern: Black Whelp Cloak##7289 |n
		use Pattern: Black Whelp Cloak##7289
		learn Black Whelp Cloak##9070
	step
		This is only available to Alliance and may be sold on the Neutral AH
		buy Pattern: Black Whelp Tunic##20576 |n
		use Pattern: Black Whelp Tunic##20576
		learn Black Whelp Tunic##24940
	step
		#include "trainer_Leatherworking"
		learn Dark Leather Boots##2167
	step
		This is a Random World Drop, from creatures level 10-25 and in some dungeons
		|tip We recommend Shadowfang Keep or Wailing Caverns for grinding.
		buy Pattern: Dark Leather Tunic##2409
		use Pattern: Dark Leather Tunic##2409
		learn Dark Leather Tunic##2169
	step
		This is a Random World Drop, from creatures level 10-25 and in some dungeons
		|tip We recommend Ashenvale or Northern Barrens for grinding.
		buy Pattern: Hillman's Leather Vest##4293 |n
		use Pattern: Hillman's Leather Vest##4293
		learn Hillman's Leather Vest##3762
	step
		This Pattern may no longer be in the game
		learn Deviate Scale Gloves##7954
	step
		This is a Random World Drop, from creatures level 10-25 and in some dungeons
		|tip We recommend Ashenvale or Northern Barrens for grinding.
		collect Pattern: Fine Leather Pants##5972
		use Pattern: Fine Leather Pants##5972
		learn Fine Leather Pants##7133
	step
		#include "trainer_Leatherworking"
		learn Dark Leather Cloak##2168
	step
		This Pattern may no longer be in the game
		learn Deviate Scale Belt##7955
	step
		#include "trainer_Leatherworking"
		learn Dark Leather Pants##7135
	step
		#include "trainer_Leatherworking"
		learn Toughened Leather Armor##2166
	step
		This is a Random World Drop, from creatures level 10-25 and in some dungeons
		|tip We recommend Blackfathom Deeps or Duskwood for grinding.
		collect Pattern: Hillman's Belt##4294 |n
		use Pattern: Hillman's Belt##4294
		learn Hillman's Belt##3767
	step
		#include "trainer_Leatherworking"
		learn Nimble Leather Gloves##9074
	step
		This is only available to purchase for Alliance
		|tip You may be able to purchase this from the Neutral AH.
		buy Pattern: Red Whelp Gloves##7290 |n
		use Pattern: Red Whelp Gloves##7290
		learn Red Whelp Gloves##9072
	step
		This is a Random World Drop, from creatures level 20-36 and in some dungeons
		|tip We recommend Gnomeregan or Maraudon for grinding.
		collect Pattern: Dark Leather Gloves##7360 |n
		use Pattern: Dark Leather Gloves##7360
		learn Dark Leather Gloves##3765
	step
		#include "trainer_Leatherworking"
		learn Fletcher's Gloves##9145
	step
		#include "trainer_Leatherworking"
		learn Dark Leather Belt##3766
	step
		#include "trainer_Leatherworking"
		learn Hillman's Shoulders##3768
	step
		#include "trainer_Leatherworking"
		learn Toughened Leather Gloves##3770
	step
		talk Zixil##3537
		buy Pattern: Earthen Leather Shoulders##7362 |n
		use Pattern: Earthen Leather Shoulders##7362
		learn Earthen Leather Shoulders##9147 |goto Hillsbrad Foothills 52.6,56.2
	step
		talk Harlown Darkweave##34601
		buy Pattern: Herbalist's Gloves##7361 |n
		use Pattern: Herbalist's Gloves##7361
		learn Herbalist's Gloves##9146 |goto Ashenvale 18.2,60.0
	step
		This is a Random World Drop, from creatures level 20-36 and in some dungeons
		|tip We recommend Gnomeregan for grinding.
		collect Pattern: Dark Leather Shoulders##4296 |n
		use Pattern: Dark Leather Shoulders##4296
		learn Dark Leather Shoulders##3769
	step
		This is a Random World Drop, from creatures level 20-36 and in some dungeons
		|tip We recommend Wetlands or Gnomeregan for grinding.
		collect Pattern: Pilferer's Gloves##7363 |n
		use Pattern: Pilferer's Gloves##7363
		learn Pilferer's Gloves##9148
	step
		This is a Random World Drop, from creatures level 20-36 and in some dungeons
		|tip We recommend Blackfathom Deeps or Gnomeregan for grinding.
		collect Pattern: Heavy Earthen Gloves##7364 |n
		use Pattern: Heavy Earthen Gloves##7364
		learn Heavy Earthen Gloves##9149
	step
		#include "trainer_Leatherworking"
		learn Hillman's Leather Gloves##3764
	step
		#include "trainer_Leatherworking"
		learn Heavy Leather##20649
	step
		talk Tamar##3366
		buy Pattern: Heavy Leather Ball##18731 |n
		use Pattern: Heavy Leather Ball##18731
		learn Heavy Leather Ball##23190 |goto Orgrimmar 60.6,54.4
	step
		#include "trainer_Leatherworking"
		learn Cured Heavy Hide##3818
	step
		This is a Random World Drop, from creatures level 20-36 and in some dungeons
		|tip We recommend Gnomeregan for grinding.
		collect Pattern: Barbaric Gloves##4297 |n
		use Pattern: Barbaric Gloves##4297
		learn Barbaric Gloves##3771
	step
		#include "trainer_Leatherworking"
		learn Hillman's Cloak##3760
	step
		#include "trainer_Leatherworking"
		learn Heavy Armor Kit##3780
	step
		talk Joseph Moore##4589
		buy Pattern: Barbaric Bracers##18949 |n
		use Pattern: Barbaric Bracers##18949
		learn Barbaric Bracers##23399 |goto Undercity 70.6,59.6
	step
		talk George Candarte##2698
		buy Pattern: Green Leather Armor##7613 |n
		use Pattern: Green Leather Armor##7613
		learn Green Leather Armor##3772 |goto Hillsbrad Foothills 76.6,58.6
	step
		#include "trainer_Leatherworking"
		learn Green Leather Belt##3774
	step
		#include "trainer_Leatherworking"
		learn Guardian Pants##7147
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Badlands or Southern Barrens for grinding.
		collect Pattern: Dusky Leather Leggings##7449 |n
		use Pattern: Dusky Leather Leggings##7449
		learn Dusky Leather Leggings##9195
	step
		This is only available to purchase for Alliance
		|tip You may be able to find this on the Neutral AH.
		buy Pattern: Raptor Hide Belt##13288 |n
		use Pattern: Raptor Hide Belt##13288
		learn Raptor Hide Belt##4097
	step
		talk Tunkk##2819
		buy Pattern: Raptor Hide Harness##13287 |n
		use Pattern: Raptor Hide Harness##13287
		learn Raptor Hide Harness##4096 |goto Arathi Highlands 70.0,35.4
	step
		talk Keena##2821
		buy Pattern: Barbaric Leggings##5973 |n
		use Pattern: Barbaric Leggings##5973
		learn Barbaric Leggings##7149 |goto Arathi Highlands 69.2,33.6
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Badlands or Southern Barrens for grinding.
		buy Pattern: Dusky Leather Leggings##7449 |n
		use Pattern: Dusky Leather Leggings##7449
		learn Dusky Leather Leggings##9195
	step
		This is only available from an Alliance vendor
		|tip You may be able to purchase this from the neutral AH.
		buy Pattern: Raptor Hide Belt##13288 |n
		use Pattern: Raptor Hide Belt##13288
		learn Raptor Hide Belt##4097
	step
		talk Tunkk##2819
		buy Pattern: Raptor Hide Harness##13287 |n
		use Pattern: Raptor Hide Harness##13287
		learn Raptor Hide Harness##4096 |goto Arathi Highlands 70.0,35.4
	step
		talk Keena##2821
		buy Pattern: Barbaric Leggings##5973 |n
		use Pattern: Barbaric Leggings##5973
		learn Barbaric Leggings##7149 |goto Arathi Highlands 69.2,33.6
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Scarlet Monastery or Dire Maul for grinding.
		collect Pattern: Guardian Belt##4298 |n
		use Pattern: Guardian Belt##4298
		learn Guardian Belt##3775
	step
		kill Kurzen Commando##938
		collect Pattern: Thick Murloc Armor##5788 |n
		use Pattern: Thick Murloc Armor##5788
		learn Thick Murloc Armor##6704 |goto Northern Stranglethorn 60.8,16.2
	step
		#include "trainer_Leatherworking"
		learn Barbaric Shoulders##7151
	step
		#include "trainer_Leatherworking"
		learn Dusky Leather Armor##9196
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Maraudon or Razorfen Kraul for grinding.
		collect Pattern: Green Whelp Armor##7450 |n
		use Pattern: Green Whelp Armor##7450
		learn Green Whelp Armor##9197
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Dustwallow Marsh or Razorfen Kraul for grinding.
		collect Pattern: Guardian Armor##4299 |n
		use Pattern: Guardian Armor##4299
		learn Guardian Armor##3773
	step
		#include "trainer_Leatherworking"
		learn Frost Leather Cloak##9198
	step
		#include "trainer_Leatherworking"
		learn Green Leather Bracers##3776
	step
		talk Rikqiz##2699
		buy Pattern: Gem-Studded Leather Belt##14635 |n
		use Pattern: Gem-Studded Leather Belt##14635
		learn Gem-studded Leather Belt##3778 |goto The Cape of Stranglethorn 43.2,71.6
	step
		#include "trainer_Leatherworking"
		learn Dusky Bracers##9201
	step
		This is a Random World Drop, from creatures level 25-45 and in some dungeons
		|tip We recommend Uldaman or Hillsbrad Foothills for grinding.
		collect Pattern: Guardian Cloak##5974 |n
		use Pattern: Guardian Cloak##5974
		learn Guardian Cloak##7153
	step
		#include "trainer_Leatherworking"
		learn Barbaric Harness##6661
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect Pattern: Gloves of the Greatfather##17722 |n
		learn Gloves of the Greatfather##21943
	step
		talk Joseph Moore##4589
		buy Pattern: Green Whelp Bracers##7451 |n
		use Pattern: Green Whelp Bracers##7451
		learn Green Whelp Bracers##9202 |goto Undercity 70.6,59.6
	step
		#include "trainer_Leatherworking"
		learn Guardian Gloves##7156
	step
		talk Blixrez Goodstitch##2846
		buy Pattern: Murloc Scale Bracers##5789 |n
		use Pattern: Murloc Scale Bracers##5789
		learn Murloc Scale Bracers##6705 |goto The Cape of Stranglethorn 42.8,74.0
	step
		#include "trainer_Leatherworking"
		.learn Dusky Belt##9206
	step
		This is a Random World Drop, from creatures level 31-46 and in some dungeons
		|tip We recommend Uldaman or Feralas for grinding.
		collect Pattern: Guardian Leather Bracers##4300 |n
		use Pattern: Guardian Leather Bracers##4300
		learn Guardian Leather Bracers##3777
	step
		#include "trainer_Leatherworking"
		learn Cured Thick Hide##10482
	step
		#include "trainer_Leatherworking"
		learn Thick Leather##20650
	step
		talk Rikqiz##2699
		buy Pattern: Shadowskin Gloves##18239 |n
		use Pattern: Shadowskin Gloves##18239
		learn Shadowskin Gloves##22711 |goto The Cape of Stranglethorn 43.2,71.6
	step
		This is a Random World Drop, from creatures level 31-46 and in some dungeons
		|tip We recommend Eastern Plaguelands or Uldaman for grinding.
		collect Pattern: Comfortable Leather Hat##8384 |n
		use Pattern: Comfortable Leather Hat##8384
		learn Comfortable Leather Hat##10490
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Uldaman or Dire Maul for grinding.
		collect Pattern: Barbaric Belt##4301 |n
		use Pattern: Barbaric Belt##4301
		learn Barbaric Belt##3779
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Uldaman or Maraudon for grinding.
		collect Pattern: Dusky Boots##7452 |n
		use Pattern: Dusky Boots##7452
		learn Dusky Boots##9207
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Uldaman or Maraudon for grinding.
		collect Pattern: Swift Boots##7453 |n
		use Pattern: Swift Boots##7453
		learn Swift Boots##9208
	step
		#include "trainer_Leatherworking"
		learn Thick Armor Kit##10487
	step
		#include "trainer_Leatherworking"
		learn Nightscape Headband##10507
	step
		#include "trainer_Leatherworking"
		learn Nightscape Tunic##10499
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Feralas or Eastern Plaguelands for grinding.
		collect Pattern: Turtle Scale Gloves##8385 |n
		use Pattern: Turtle Scale Gloves##8385
		learn Turtle Scale Gloves##10509
	step
		talk Jangdor Swiftstrider##7854
		buy Pattern: Nightscape Shoulders##8409 |n
		use Pattern: Nightscape Shoulders##8409
		learn Nightscape Shoulders##10516 |goto Feralas 52.8,47.0
	step
		#include "trainer_Leatherworking"
		learn Turtle Scale Bracers##10518
	step
		#include "trainer_Leatherworking"
		learn Turtle Scale Breastplate##10511
	step
		This is a Random World Drop, from creatures level 35-50 and in some dungeons
		|tip We recommend Uldaman or Tanaris for grinding.
		collect Pattern: Big Voodoo Robe##8386 |n
		use Pattern: Big Voodoo Robe##8386
		learn Big Voodoo Robe##10520
	step
		This is a Random World Drop, from creatures level 35-50 and in some dungeons
		|tip We recommend Razorfen Downs or Dire Maul for grinding.
		collect Pattern: Big Voodoo Mask##8387 |n
		use Pattern: Big Voodoo Mask##8387
		learn Big Voodoo Mask##10531
	step
		This is a Random Drop from the Mobs in Tanaris
		collect Pattern: Tough Scorpid Bracers##72026 |n
		use Pattern: Tough Scorpid Bracers##72026
		learn Tough Scorpid Bracers##10533
	step
		This is a Random Drop from the Mobs in Tanaris
		collect Pattern: Tough Scorpid Breastplate##72029 |n
		use Pattern: Tough Scorpid Breastplate##72029
		learn Tough Scorpid Breastplate##10525
	step
		This plan may no longer be in game
		learn Wild Leather Shoulders##10529
	step
		This is a Random Drop from the Mobs in Tanaris
		learn Tough Scorpid Gloves##10542
	step
		This plan may no longer be in game
		learn Wild Leather Helmet##10546
	step
		This plan may no longer be in game
		learn Wild Leather Vest##10544
	step
		#include "trainer_Leatherworking"
		learn Gauntlets of the Sea##10630
	step
		#include "trainer_Leatherworking"
		learn Nightscape Pants##10548
	step
		#include "trainer_Leatherworking"
		learn Turtle Scale Helm##10552
	step
		#include "trainer_Leatherworking"
		learn Nightscape Boots##10558
	step
		This is a Random Drop from the Mobs in Tanaris
		learn Tough Scorpid Boots##10554
	step
		#include "trainer_Leatherworking"
		learn Turtle Scale Leggings##10556
	step
		This is a Random World Drop, from creatures level 35-55 and in some dungeons
		|tip We recommend Dire Maul or Stratholme for grinding.
		learn Big Voodoo Cloak##10562
	step
		This is a Random World Drop, from creatures level 35-55 and in some dungeons
		|tip We recommend Tanaris or Stratholme for grinding.
		collect Pattern: Big Voodoo Pants##8389 |n
		use Pattern: Big Voodoo Pants##8389
		learn Big Voodoo Pants##10560
	step
		This is a Random Drop from the Mobs in Tanaris
		learn Tough Scorpid Shoulders##10564
	step
		This plan may no longer be in game
		learn Dragonscale Gauntlets##10619
	step
		This plan may no longer be in game
		learn Wolfshead Helm##10621
	step
		This is a Random Drop from the Mobs in Tanaris
		learn Tough Scorpid Leggings##10568
	step
		This plan may no longer be in game
		learn Wild Leather Boots##10566
	step
		#include "trainer_Leatherworking"
		learn Rugged Leather##22331
	step
		#include "trainer_Leatherworking"
		learn Cured Rugged Hide##19047
	step
		#include "trainer_Leatherworking"
		learn Rugged Armor Kit##19058
	step
		#include "trainer_Leatherworking"
		learn Feathered Breastplate##10647
	step
		#include "trainer_Leatherworking"
		learn Helm of Fire##10632
	step
		This is a Random Drop from the Mobs in Tanaris
		learn Tough Scorpid Helm##10570
	step
		This plan is no longer be in game
		learn Wild Leather Cloak##10574
	step
		This plan is no longer be in game
		learn Wild Leather Leggings##10572
	step
		#include "trainer_Leatherworking"
		learn Dragonscale Breastplate##10650
	step
		talk Zannok Hidepiercer##12956
		buy Pattern: Heavy Scorpid Bracers##15724 |n
		use Pattern: Heavy Scorpid Bracers##15724
		learn Heavy Scorpid Bracers##19048 |goto Silithus 81.2,18.6
	step
		#include "trainer_Leatherworking"
		learn Blackstorm Leggings##36074
	step
		#include "trainer_Leatherworking"
		learn Dragonstrike Leggings##36076
	step
		This is a Random Drop from the Mobs in the dungeon Sunken Temple
		learn Green Dragonscale Breastplate##19050
	step
		#include "trainer_Leatherworking"
		learn Wildfeather Leggings##36075
	step
		talk Werg Thickblade##12943
		buy Pattern: Wicked Leather Gauntlets##15725 |n
		use Pattern: Wicked Leather Gauntlets##15725
		learn Wicked Leather Gauntlets##19049 |goto Tirisfal Glades 83.2,69.4
	step
		This plan is no longer be in game
		learn Chimeric Gloves##19053
	step
		kill Shadowsworn Thug##6005
		collect Pattern: Heavy Scorpid Vest##15727 |n
		use Pattern: Heavy Scorpid Vest##15727
		learn Heavy Scorpid Vest##19051 |goto Blasted Lands 63.6,27.6
	step
		#include "trainer_Leatherworking"
		learn Wicked Leather Bracers##19052
	step
		This is a Random Drop from the Mobs in the dungeon Sunken Temple
		learn Green Dragonscale Leggings##19060
	step
		#include "trainer_Leatherworking"
		learn Wildfeather Leggings##36075
	step
		talk Werg Thickblade##12943
		buy Pattern: Wicked Leather Gauntlets##15725 |n
		use Pattern: Wicked Leather Gauntlets##15725
		learn Wicked Leather Gauntlets##19049 |goto Tirisfal Glades 83.2,69.4
	step
		This plan may no longer be in game
		learn Chimeric Gloves##19053
	step
		kill Shadowsworn Thug##6005
		collect Pattern: Heavy Scorpid Vest##15727 |n
		use Pattern: Heavy Scorpid Vest##15727
		learn Heavy Scorpid Vest##19051 |goto Blasted Lands 63.6,27.6
	step
		#include "trainer_Leatherworking"
		learn Wicked Leather Bracers##19052
	step
		This is a Random Drop from the Mobs in the dungeon Sunken Temple
		learn Green Dragonscale Leggings##19060
	step
		talk Gigget Zipcoil##12958
		buy Pattern: Ironfeather Shoulders##15735 |n
		use Pattern: Ironfeather Shoulders##15735
		learn Ironfeather Shoulders##19062 |goto The Hinterlands 34.6,38.4
	step
		talk Jangdor Swiftstrider##7854
		buy Pattern: Living Shoulders##15734 |n
		use Pattern: Living Shoulders##15734
		learn Living Shoulders##19061 |goto Feralas 52.8,47.0
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Gauntlets##19055
	step
		kill Firegut Brute##7035
		collect Pattern: Volcanic Leggings##15732 |n
		use Pattern: Volcanic Leggings##15732
		learn Volcanic Leggings##19059 |goto Burning Steppes 68.0,42.6
	step
		This Pattern may no longer be in game
		learn Gordok Ogre Suit##22815
	step
		talk Werg Thickblade##12943
		buy Pattern: Stormshroud Pants##15741 |n
		use Pattern: Stormshroud Pants##15741
		learn Stormshroud Pants##19067 |goto Tirisfal Glades 83.2,69.4
	step
		talk Meilosh##11557
		|tip You must be Friendly with Timbermaw Hold to purchase this Pattern.
		buy Pattern: Warbear Harness##20253
		use Pattern: Warbear Harness##20253
		learn Warbear Harness##190068 |goto Felwood 64.8,5.2
	step
		This is a Random World Drop, from creatures level 45-60 and in some dungeons
		|tip We recommend Sunken Temple or Stratholme for grinding.
		collect Pattern: Chimeric Boots##15737 |n
		use Pattern: Chimeric Boots##15737
		learn Chimeric Boots##19063
	step
		talk Qia##11189
		collect Pattern: Frostsaber Boots##15740 |n
		use Pattern: Frostsaber Boots##15740
		learn Frostsaber Boots##19066 |goto Winterspring 59.6,49.2
	step
		kill Blackrock Soldier##7025
		collect Pattern: Heavy Scorpid Gauntlets##15738 |n
		use Pattern: Heavy Scorpid Gauntlets##15738
		learn Heavy Scorpid Gauntlets##19064 |goto Burning Steppes 34.8,36.6
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Bracers##19065
	step
		#include "trainer_Leatherworking"
		learn Green Dragonscale Gauntlets##24655
	step
		This is a Random World Drop, from creatures level 45-63 and in some dungeons
		|tip We recommend Molten Core or Blasted Lands for grinding.
		collect Pattern: Chimeric Leggings##15746 |n
		use Pattern: Chimeric Leggings##15746
		learn Chimeric Leggings##19073
	step
		This is a Random World Drop, from creatures level 45-63 and in some dungeons
		|tip We recommend Molten Core or Blasted Lands for grinding.
		collect Pattern: Heavy Scorpid Belt##15743 |n
		use Pattern: Heavy Scorpid Belt##15743
		learn Heavy Scorpid Belt##19070
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Belt##19072
	step
		#include "trainer_Leatherworking"
		learn Wicked Leather Headband##19071
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect Pattern: Winter Boots##34262 |n
		use Pattern: Winter Boots##34262
		learn Winter Boots##44953
	step
		This Pattern may no longer be in game
		learn Blue Dragonscale Breastplate##19077
	step
		kill Deadwood Shaman##7158
		collect Pattern: Living Leggings##15752
		use Pattern: Living Leggings##15752
		learn Living Leggings##19078 |goto Felwood 63.2,9.0
	step
		This Pattern may no longer be in game
		learn Stormshroud Armor##19079
	step
		talk Meilosh##11557
		|tip You must be Friendly with Timbermaw Hold to purchase this Pattern.
		buy Pattern: Warbear Woolies##20254 |n
		use Pattern: Warbear Woolies##20254
		learn Warbear Woolies##19080 |goto Felwood 64.8,5.2
	step
		kill Winterfall Den Watcher##7440
		collect Pattern: Frostsaber Leggings##15747 |n
		use Pattern: Frostsaber Leggings##15747
		learn Frostsaber Leggings##19074 |goto Winterspring 24.2,50.4
	step
		kill Blackrock Slayer##7027
		collect Pattern: Heavy Scorpid Leggings##15748 |n
		use Pattern: Heavy Scorpid Leggings##15748
		learn Heavy Scorpid Leggings##19075 |goto Burning Steppes 33.4,53.2
	step
		This Pattern is dropped from the Grunts in Lower Blackrock Spire
		kill Firebrand Grunt##9259
		collect Pattern: Volcanic Breastplate##15749 |n
		use Pattern: Volcanic Breastplate##15749
		learn Volcanic Breastplate##19076
	step
		kill Vilebranch Hideskinner##2644
		collect Pattern: Ironfeather Breastplate##15760 |n
		use Pattern: Ironfeather Breastplate##15760
		learn Ironfeather Breastplate##19086 |goto The Hinterlands 60.,66.6
	step
		talk Argent Quartermaster Hasana##10856
		buy Pattern: Dawn Treaders##19328 |n
		use Pattern: Dawn Treaders##19328
		learn Dawn Treaders##23705 |goto Tirisfal Glades 83.2,68.0
	step
		talk Nergal##12959
		buy Pattern: Devilsaur Gauntlets##15758 |n
		use Pattern: Devilsaur Gauntlets##15758
		learn Devilsaur Gauntlets##19084 |goto Un'Goro Crater 54.8,62.6
	step
		kill Vilebranch Hideskinner##2644
		collect Pattern: Ironfeather Breastplate##15760 |n
		use Pattern: Ironfeather Breastplate##15760
		learn Ironfeather Breastplate##19086 |goto The Hinterlands 60.,66.6
	step
		talk Meilosh##11557
		buy Pattern: Might of the Timbermaw##19326 |n
		use Pattern: Might of the Timbermaw##19326
		learn Might of the Timbermaw##23703 |goto Felwood 64.8,5.2
	step
		This is a Random World Drop, from creatures level 45-63 and in some dungeons
		|tip We recommend Blackrock Depths or Lower Blackrock Spire for grinding.
		collect Pattern: Chimeric Vest##15755 |n
		use Pattern: Chimeric Vest##15755
		learn Chimeric Vest##19081
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Headband##19082
	step
		#include "trainer_Leatherworking"
		learn Wicked Leather Pants##19083
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Corehound Boots##17022 |n
		use Pattern: Corehound Boots##17022
		learn Corehound Boots##20853 |goto Blackrock Depths 50.6,59.2
	step
		This Pattern may no longer be in game
		learn Blue Dragonscale Shoulders##19089
	step
		This Pattern may no longer be in game
		learn Stormshroud Shoulders##19090
	step
		kill Winterfall Totemic##7441
		collect Pattern: Frostsaber Gloves##15761 |n
		use Pattern: Frostsaber Gloves##15761
		learn Frostsaber Gloves##19087 |goto Winterspring 24.2,50.4
	step
		kill Winterfall Totemic##7441
		collect Pattern: Frostsaber Gloves##15761 |n
		use Pattern: Frostsaber Gloves##15761
		learn Frostsaber Gloves##19087 |goto Winterspring 26.4,49.6
	step
		talk Zannok Hidepiercer##12956
		buy Pattern: Heavy Scorpid Helm##15762 |n
		use Pattern: Heavy Scorpid Helm##15762
		learn Heavy Scorpid Helm##19088 |goto Silithus 81.2,18.6
	step
		talk Zaralda##16689
		buy Pattern: Comfortable Insoles##25726 |n
		use Pattern: Comfortable Insoles##25726
		learn Comfortable Insoles##32482 |goto Silvermoon City 84.6,79.6
	step
		#include "trainer_Leatherworking"
		learn Knothide Leather##32454
	step
		#include "trainer_Leatherworking"
		learn Felscale Gloves##32462
	step
		#include "trainer_Leatherworking"
		learn Leatherworker's Satchel##45100
	step
		#include "trainer_Leatherworking"
		learn Scaled Draenic Pants##32466
	step
		#include "trainer_Leatherworking"
		learn Thick Draenic Gloves##32470
	step
		#include "trainer_Leatherworking"
		learn Wild Draenish Boots##32478
	step
		#include "trainer_Leatherworking"
		learn Knothide Armor Kit##32456
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Black Dragonscale Boots##17025 |n
		use Pattern: Black Dragonscale Boots##17025
		learn Black Dragonscale Boots##20855 |goto Blackrock Depths 50.6,59.2
	step
		This Pattern is no longer in game
		|tip It used to be contained in Knot Thimblejack's Cache in Dire Maul.
		collect Pattern: Chromatic Cloak##18517 |n
		use Pattern: Chromatic Cloak##18517
		learn Chromatic Cloak##22926
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Chromatic Gauntlets##19331 |n
		use Pattern: Chromatic Gauntlets##19331
		learn Chromatic Gauntlets##23708 |goto Blackrock Depths 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Corehound Belt##19332 |n
		use Pattern: Corehound Belt##19332
		learn Corehound Belt##23709 |goto Blackrock Depths 50.6,59.2
	step
		talk Aendel Windspear##15293
		buy Pattern: Dreamscale Breastplate##20382 |n
		use Pattern: Dreamscale Breastplate##20382
		learn Dreamscale Breastplate##24703 |goto Silithus 64.6,45.8
	step
		This Pattern is no longer in game
		learn Hide of the Wild##22927
	step
		This Pattern is no longer in game
		learn Icy Scale Bracers##28224
	step
		This Pattern is no longer in game
		learn Icy Scale Breastplate##28222
	step
		This Pattern is no longer in game
		learn Icy Scale Gauntlets##28223
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Lava Belt##19330 |n
		use Pattern: Lava Belt##19330
		learn Lava Belt##23707 |goto Blackrock Depths 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Molten Belt##19333 |n
		use Pattern: Molten Belt##19333
		learn Molten Belt##23710 |goto Blackrock Depths 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Molten Helm##17023 |n
		use Pattern: Molten Helm##17023
		learn Molten Helm##20854 |goto Blackrock Depths 50.6,59.2
	step
		This Pattern is no longer in game
		learn Polar Gloves##28220
	step
		This Pattern is no longer in game
		learn Polar Bracers##28221
	step
		This Pattern is no longer in game
		learn Polar Tunic##28219
	step
		This Pattern is no longer in game
		learn Shifting Cloak##22928
	step
		talk Anvilrage Captain##8903
		collect Pattern: Black Dragonscale Leggings##15781 |n
		use Pattern: Black Dragonscale Leggings##15781
		learn Black Dragonscale Leggings##19107 |goto Blackrock Depths/2 90.6,11.8
	step
		killAnvilrage Marshal##8898
		collect Pattern: Black Dragonscale Shoulders##15770 |n
		use Pattern: Black Dragonscale Shoulders##15770
		learn Black Dragonscale Shoulders##19094 |goto Blackrock Depths/2 41.0,74.0
	step
		This Pattern is no longer in game
		learn Blood Tiger Breastplate##24124
	step
		This Pattern is no longer in game
		learn Blood Tiger Shoulders##24125
	step
		#include "trainer_Leatherworking"
		learn Blue Dragonscale Leggings##24654
	step
		talk Aendel Windspear##15293
		|tip You must be Friendly with Cenarion Circle to purchase this Pattern.
		buy Pattern: Bramblewood Belt##22769 |n
		use Pattern: Bramblewood Belt##22769
		learn Bramblewood Belt##28474 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Honored with Cenarion Circle to purchase this Pattern.
		buy Pattern: Bramblewood Boots##22770 |n
		use Pattern: Bramblewood Boots##22770
		learn Bramblewood Boots##28473 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Revered with Cenarion Circle to purchase this Pattern.
		buy Pattern: Bramblewood Helm##22771 |n
		use Pattern: Bramblewood Helm##22771
		learn Bramblewood Helm##28472 |goto Silithus 64.6,45.8
	step
		This is a Boss drop from the Raid Molten Core
		collect Pattern: Core Armor Kit##18252 |n
		use Pattern: Core Armor Kit##18252
		learn Core Armor Kit##22727
	step
		talk Nergal##12959
		collect Pattern: Devilsaur Leggings##15772 |n
		use Pattern: Devilsaur Leggings##15772
		learn Devilsaur Leggings##19097 |goto Un'Goro Crater 54.8,62.6
	step
		This Pattern may no longer be in game
		collect Pattern: Girdle of Insight##18514 |n
		use Pattern: Girdle of Insight##18514
		learn Girdle of Insight##22921
	step
		talk Argent Quartermaster Hasana##10856
		|tip You must be Honored with the Argent Dawn to purchase this Plan.
		buy Pattern: Golden Mantle of the Dawn##19329 |n
		use Pattern: Golden Mantle of the Dawn##19329
		learn Girdle of the Dawn##23632 |goto Tirisfal Glades 83.2,68.0
		You can also purchase this Plan from Quartermaster Miranda Breechlock here: [Eastern Plaguelands 75.8,54.0]
	step
		This Pattern may no longer be in game
		learn Living Breastplate##19095
	step
		This Pattern may no longer be in game
		learn Mongoose Boots##22922
	step
		talk Overlord Runthak##14392
		accept The Journey Has Just Begun##7493
		turnin The Journey Has Just Begun##7493
		learn Onyxia Scale Cloak##19093 |goto Orgrimmar 52.6,82.6
		|tip This Pattern is a reward for completing the quest The Journey Has Just Begun.
	step
		This Pattern may no longer be in game
		learn Primal Batskin Bracers##24123
	step
		This Pattern may no longer be in game
		learn Primal Batskin Gloves##24122
	step
		This Pattern may no longer be in game
		learn Primal Batskin Jerkin##24121
	step
		kill General Drakkisath##10363+
		collect Pattern: Red Dragonscale Breastplate##15730 |n
		use Pattern: Red Dragonscale Breastplate##15730
		learn Red Dragonscale Breastplate##19054 |goto Blackrock Spire 33.4,45.4
	step
		talk Aendel Windspear##15293
		|tip You must be Friendly with Cenarion Circle to purchase this Pattern.
		buy Pattern: Sandstalker Bracers##20509 |n
		use Pattern: Sandstalker Bracers##20509
		learn Sandstalker Bracers##24849 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Revered with Cenarion Circle to purchase this Pattern.
		buy Pattern: Sandstalker Breastplate##20511 |n
		use Pattern: Sandstalker Breastplate##20511
		learn Sandstalker Breastplate##24851 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Honored with Cenarion Circle to purchase this Pattern.
		buy Pattern: Sandstalker Gauntlets##20510 |n
		use Pattern: Sandstalker Gauntlets##20510
		learn Sandstalker Gauntlets##24850 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Friendly with Cenarion Circle to purchase this Pattern.
		buy Pattern: Spitfire Bracers##20506 |n
		use Pattern: Spitfire Bracers##20506
		learn Spitfire Bracers##24846 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Revered with Cenarion Circle to purchase this Pattern.
		buy Pattern: Spitfire Breastplate##20508 |n
		use Pattern: Spitfire Breastplate##20508
		learn Spitfire Breastplate##24848 |goto Silithus 64.6,45.8
	step
		talk Aendel Windspear##15293
		|tip You must be Honored with Cenarion Circle to purchase this Pattern.
		buy Pattern: Spitfire Gauntlets##20507 |n
		use Pattern: Spitfire Gauntlets##20507
		learn Spitfire Gauntlets##24847 |goto Silithus 64.6,45.8
	step
		This Pattern is no longer in game
		learn Stormshroud Gloves##26279
	step
		This Pattern may no longer be in game
		learn Swift Flight Bracers##22923
	step
		talk Meilosh##11557
		|tip You must be Revered with Cenarion Circle to purchase this Pattern.
		buy Pattern: Timbermaw Brawlers##19327 |n
		use Pattern: Timbermaw Brawlers##19327
		learn Timbermaw Brawlers##23704 |goto Felwood 64.8,5.2
	step
		kill Winterfall Ursa##74385
		collect Pattern: Frostsaber Tunic##15779 |n
		use Pattern: Frostsaber Tunic##15779
		learn Frostsaber Tunic##19104 |goto Winterspring 67.8,50.2
	step
		kill Blackhand Assassin##10318+
		collect Pattern: Heavy Scorpid Shoulders##15774 |n
		use Pattern: Heavy Scorpid Shoulders##15774
		learn Heavy Scorpid Shoulders##19100 |goto Blackrock Spire 54.8,45.9
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Armor##19102
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Pants##19091
	step
		#include "trainer_Leatherworking"
		learn Runic Leather Shoulders##19103
	step
		kill Firebrand Legionnaire##9260+
		collect Pattern: Volcanic Shoulders##15775 |n
		use Pattern: Volcanic Shoulders##15775
		learn Volcanic Shoulders##19101 |goto Blackrock Spire 58.2,75.6
	step
		#include "trainer_Leatherworking"
		learn Wicked Leather Armor##19098
	step
		#include "trainer_Leatherworking"
		learn Wicked Leather Belt##19092
	step
		#include "trainer_Leatherworking"
		learn Felscale Boots##32463
	step
		#include "trainer_Leatherworking"
		learn Scaled Draenic Gloves##32467
	step
		#include "trainer_Leatherworking"
		learn Wild Draenish Gloves##32479
	step
		#include "trainer_Leatherworking"
		learn Thick Draenic Pants##32471
	step
		#include "trainer_Leatherworking"
		learn Felscale Pants##32464
	step
		#include "trainer_Leatherworking"
		learn Thick Draenic Boots##32472
	step
		#include "trainer_Leatherworking"
		learn Wild Draenish Leggings##32480
	step
		#include "trainer_Leatherworking"
		learn Heavy Knothide Leather##32455
	step
		talk Provisioner Nasela##20241
		|tip You need to be Honored with The Mag'har to purchase this Pattern.
		collect Pattern: Reinforced Mining Bag##29664 |n
		use Pattern: Reinforced Mining Bag##29664
		learn Reinforced Mining Bag##35530 |goto Nagrand 53.4,36.8
	step
		talk Quartermaster Enuril##19331
		|tip You must be Revered with The Scryers to purchase this Pattern.
		buy Pattern: Magister's Armor Kit##25722 |n
		use Pattern: Magister's Armor Kit##25722
		learn Magister's Armor Kit##32458 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Endarin##19321
		|tip You must be Revered with The Aldor to purchase this Pattern.
		buy Pattern: Vindicator's Armor Kit##25721 |n
		use Pattern: Vindicator's Armor Kit##25721
		learn Vindicator's Armor Kit##32457 |goto Shattrath City 48.0,26.6
	step
		#include "trainer_Leatherworking"
		learn Scaled Draenic Vest##32468
	step
		#include "trainer_Leatherworking"
		learn Thick Draenic Vest##32473
	step
		#include "trainer_Leatherworking"
		learn Wild Draenish Vest##32481
	step
		#include "trainer_Leatherworking"
		learn Golden Dragonstrike Breastplate##36079
	step
		#include "trainer_Leatherworking"
		learn Living Crystal Breastplate##36078
	step
		#include "trainer_Leatherworking"
		learn Primalstorm Breastplate##36077
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Honored with Cenarion Expedition to purchase this Pattern.
		buy Pattern: Clefthide Leg Armor##29720 |n
		use Pattern: Clefthide Leg Armor##29720
		learn Clefthide Leg Armor##35555 |goto Zangarmarsh 79.2,63.8
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Honored with Thrallmar to purchase this Pattern.
		buy Pattern: Cobrahide Leg Armor##31361 |n
		use Pattern: Cobrahide Leg Armor##31361
		learn Cobrahide Leg Armor##35549 |goto Hellfire Peninsula 54.8,37.8
	step
		#include "trainer_Leatherworking"
		learn Felscale Breastplate##32465
	step
		#include "trainer_Leatherworking"
		learn Scaled Draenic Boots##32469
	step
		#include "trainer_Leatherworking"
		learn Drums of War##35540
	step
		talk Paulsta'ats##23007
		|tip You must be Friendly with The Consortium to purchase this Pattern.
		buy Pattern: Fel Leather Gloves##25732 |n
		use Pattern: Fel Leather Gloves##25732
		learn Fel Leather Gloves##32490
	step
		talk Provisioner Nasela##20241
		|tip You must be Friendly with The Mag'har to purchase this Pattern.
		buy Pattern: Netherfury Belt##25741 |n
		use Pattern: Netherfury Belt##25741
		learn Netherfury Belt##32501 |goto Nagrand 53.4,36.8
	step
		talk Provisioner Nasela##20241
		|tip You must be Honored with The Mag'har to purchase this Pattern.
		buy Pattern: Netherfury Leggings##25742 |n
		use Pattern: Netherfury Leggings##25742
		learn Netherfury Leggings##32502 |goto Nagrand 53.4,36.8
	step
		talk Provisioner Nasela##20241
		|tip You must be Honored with The Mag'har to purchase this Pattern.
		buy Pattern: Drums of Speed##34172 |n
		use Pattern: Drums of Speed##34172
		learn Drums of Speed##35544 |goto Nagrand 53.4,36.8
	step
		talk Provisioner Nasela##20241
		|tip You must be Honored with The Mag'har to purchase this Pattern.
		buy Pattern: Drums of Restoration##34174 |n
		use Pattern: Drums of Restoration##34174
		learn Drums of Restoration##35539 |goto Nagrand 53.4,36.8
	step
		#include "trainer_Leatherworking"
		learn Borean Leather##64661
	step
		#include "trainer_Leatherworking"
		learn Glove Reinforcements##44770
	step
		#include "trainer_Leatherworking"
		learn Heavy Knothide Armor Kit##44970
	step
		talk Quartermaster Endarin##19321
		|tip You must be Honored with The Aldor to purchase this Pattern.
		buy Pattern: Blastguard Belt##29704 |n
		use Pattern: Blastguard Belt##29704
		learn Blastguard Belt##35537 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Endarin##19321
		|tip You must be Revered with The Aldor to purchase this Pattern.
		buy Pattern: Blastguard Boots##29703 |n
		use Pattern: Blastguard Boots##29703
		learn Blastguard Boots##35536 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Endarin##19321
		|tip You must be Exalted with The Aldor to purchase this Pattern.
		buy Pattern: Blastguard Pants##29702 |n
		use Pattern: Blastguard Pants##29702
		learn Blastguard Pants##35535 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Enuril##19331
		|tip You must be Honored with The Scryers to purchase this Pattern.
		buy Pattern: Enchanted Clefthoof Boots##29701 |n
		use Pattern: Enchanted Clefthoof Boots##29701
		learn Enchanted Clefthoof Boots##35534 |goto Shattrath City 60.6,64..2
	step
		talk Quartermaster Enuril##19331
		|tip You must be Revered with The Scryers to purchase this Pattern.
		buy Pattern: Enchanted Clefthoof Gloves##29700 |n
		use Pattern: Enchanted Clefthoof Gloves##29700
		learn Enchanted Clefthoof Gloves##35533 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Endarin##19321
		|tip You must be Exalted with The Aldor to purchase this Pattern.
		buy Pattern: Enchanted Clefthoof Leggings##29698 |n
		use Pattern: Enchanted Clefthoof Leggings##29698
		learn Enchanted Clefthoof Leggings##35532 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Enuril##19331
		|tip You must be Revered with The Scryers to purchase this Pattern.
		buy Pattern: Enchanted Felscale Boots##29684 |n
		use Pattern: Enchanted Felscale Boots##29684
		learn Enchanted Felscale Boots##35527 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Enuril##19331
		|tip You must be Honored with The Scryers to purchase this Pattern.
		buy Pattern: Enchanted Felscale Gloves##29682 |n
		use Pattern: Enchanted Felscale Gloves##29682
		learn Enchanted Felscale Gloves##35526 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Endarin##19321
		|tip You must be Exalted with The Aldor to purchase this Pattern.
		buy Pattern: Enchanted Felscale Leggings##29677 |n
		use Pattern: Enchanted Felscale Leggings##29677
		learn Enchanted Felscale Leggings##35525 |goto Shattrath City 48.0,26.6
	step
		talk Paulsta'ats##23007
		|tip You must be Honored with The Consortium to purchase this Pattern.
		buy Pattern: Fel Leather Boots##25733 |n
		use Pattern: Fel Leather Boots##25733
		learn Fel Leather Boots##32493 |goto Nagrand 30.6,57.0
	step
		talk Paulsta'ats##23007
		|tip You must be Revered with The Consortium to purchase this Pattern.
		buy Pattern: Fel Leather Leggings##25734 |n
		use Pattern: Fel Leather Leggings##25734
		learn Fel Leather Leggings##32494 |goto Nagrand 30.6,57.0
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Friendly with Thrallmar to purchase this Pattern.
		buy Pattern: Felstalker Belt##25738 |n
		use Pattern: Felstalker Belt##25738
		learn Felstalker Belt##32498 |goto Hellfire Peninsula 54.8,37.8
	step
		talk Quartermaster Endarin##19321
		|tip You must be Honored with The Aldor to purchase this Pattern.
		buy Pattern: Flamescale Belt##29693 |n
		use Pattern: Flamescale Belt##29693
		learn Flamescale Belt##35531 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Endarin##19321
		|tip You must be Revered with The Aldor to purchase this Pattern.
		buy Pattern: Flamescale Boots##29691 |n
		use Pattern: Flamescale Boots##29691
		learn Flamescale Boots##35528 |goto Shattrath City 48.0,26.6
	step
		talk Quartermaster Endarin##19321
		|tip You must be Exalted with The Aldor to purchase this Pattern.
		buy Pattern: Flamescale Leggings##29689 |n
		use Pattern: Flamescale Leggings##29689
		learn Flamescale Leggings##35529 |goto Shattrath City 48.0,26.6
	step
		talk Provisioner Nasela##20241
		|tip You must be Revered with The Mag'har to purchase this Pattern.
		buy Pattern: Netherfury Boots##25743 |n
		use Pattern: Netherfury Boots##25743
		learn Netherfury Boots##32503 |goto Nagrand 53.4,36.8
	step
		talk Thomas Yance##18672
		|tip He walks along this path, some searching may be required.
		buy Pattern: Riding Crop##25725 |n
		use Pattern: Riding Crop##25725
		learn Riding Crop##32461 |goto Old Hillsbrad Foothills 38.8,56.4
	step
		kill Durnholde Rifleman##17820
		collect Pattern: Stylin' Adventure Hat##25729 |n
		use Pattern: Stylin' Adventure Hat##25729
		learn Stylin' Adventure Hat##32487 |goto Old Hillsbrad Foothills 73.2,61.2
	step
		kill Sethekk Ravenguard##18322
		collect Pattern: Stylin' Crimson Hat##25731 |n
		use Pattern: Stylin' Crimson Hat##25731
		learn Stylin' Crimson Hat##32488 |goto Sethekk Halls/2 32.8,68.0
	step
		kill Rift Lord##17839, Rift Keeper##21104
		collect Pattern: Stylin' Jungle Hat##25730 |n
		use Pattern: Stylin' Jungle Hat##25730
		learn Stylin' Jungle Hat##32489 |goto The Black Morass 50.2,56.8
	step
		kill Blackheart the Inciter##18667
		collect Pattern: Stylin' Purple Hat##25728 |n
		use Pattern: Stylin' Purple Hat##25728
		learn Stylin' Purple Hat##32485 |goto Shadow Labyrinth 27.6,69.0
	step
		kill Gordunni Back-Breaker##22143, Gordunni Elementalist##22144, Gordunni Head-Splitter##22148, Gordunni Soulreaper##23022
		collect Pattern: Bag of Many Hides##34491 |n
		use Pattern: Bag of Many Hides##34491
		learn Bag of Many Hides##45117 |goto Terokkar Forest 22.2,11.4
	step
		#include "trainer_Leatherworking"
		learn Borean Armor Kit##50962
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Friendly with Cenarion Expedition to purchase this Pattern.
		collect Pattern: Heavy Clefthoof Boots##25737 |n
		use Pattern: Heavy Clefthoof Boots##25737
		learn Heavy Clefthoof Boots##32497 |goto Zangarmarsh 79.2,63.8
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Honored with Cenarion Expedition to purchase this Pattern.
		buy Pattern: Heavy Clefthoof Leggings##25736 |n
		use Pattern: Heavy Clefthoof Leggings##25736
		learn Heavy Clefthoof Leggings##32496 |goto Zangarmarsh 79.2,63.8
	step
		This Pattern is no longer in game
		learn Quiver of a Thousand Feathers##44359
	step
		talk Apprentice Darius##18255
		|tip You must be Exalted with The Violet Eye to purchase this Pattern.
		buy Pattern: Cloak of Darkness##33124 |n
		use Pattern: Cloak of Darkness##33124
		learn Cloak of Darkness##42546 |goto Deadwind Pass 47.0,75.6
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Honored with Thrallmar to purchase this Pattern.
		buy Pattern: Felstalker Bracers##25739 |n
		use Pattern: Felstalker Bracers##25739
		learn Felstalker Bracers##32499 |goto Hellfire Peninsula 54.8,37.8
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Honored with Thrallmar to purchase this Pattern.
		buy Pattern: Felstalker Breastplate##25740 |n
		use Pattern: Felstalker Breastplate##25740
		learn Felstalker Breastplate##32500 |goto Hellfire Peninsula 54.8,37.8
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Honored with Cenarion Expedition to purchase this Pattern.
		buy Pattern: Heavy Clefthoof Vest##25735 |n
		use Pattern: Heavy Clefthoof Vest##25735
		learn Heavy Clefthoof Vest##32495 |goto Zangarmarsh 79.2,63.8
	step
		talk Almaador##21432
		|tip You must be Honored with The Sha'tar to purchae this Pattern.
		buy Pattern: Drums of Battle##29717 |n
		use Pattern: Drums of Battle##29717
		learn Drums of Battle##35543 |goto Shattrath City 51.6,41.6
	step
		talk Fedryen Swiftspear##17904
		|tip You must be Exalted with Cenarion Expedition to purchase this Pattern.
		buy Pattern: Nethercleft Leg Armor##29721 |n
		use Pattern: Nethercleft Leg Armor##29721
		learn Nethercleft Leg Armor##35557 |goto Zangarmarsh 79.2,63.8
	step
		talk Quartermaster Urgronn##17585
		|tip You must be Exalted with Thrallmar to purchase this Pattern.
		buy Pattern: Nethercobra Leg Armor##31362 |n
		use Pattern: Nethercobra Leg Armor##31362
		learn Nethercobra Leg Armor##35554 |goto Hellfire Peninsula 54.8,37.8
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Blade's Edge Mountains or The Black Temple for grinding.
		collect Pattern: Cobrascale Gloves##29724 |n
		use Pattern: Cobrascale Gloves##29724
		learn Cobrascale Gloves##35559
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Black Temple for Grinding Spire for grinding.
		collect Pattern: Cobrascale Hood##29723 |n
		use Pattern: Cobrascale Hood##29723
		learn Cobrascale Hood##35558
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Black Temple or Sunwell Plateau for grinding.
		collect Pattern: Earthen Netherscale Boots##29730 |n
		use Pattern: Earthen Netherscale Boots##29730
		learn Earthen Netherscale Boots##35567
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Black Temple or Sunwell Plateau for grinding.
		collect Pattern: Gloves of the Living Touch##29727 |n
		use Pattern: Gloves of the Living Touch##29727
		learn Gloves of the Living Touch##35562
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Karazhan or The Underbog for grinding.
		collect Pattern: Hood of Primal Life##29726 |n
		use Pattern: Hood of Primal Life##29726
		learn Hood of Primal Life##35561
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or The Black Morass for grinding.
		collect Pattern: Living Dragonscale Helm##29729 |n
		use Pattern: Living Dragonscale Helm##29729
		learn Living Dragonscale Helm##35564
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Botanica or Shadowmoon Valley for grinding.
		collect Pattern: Netherdrake Gloves##29733 |n
		use Pattern: Netherdrake Gloves##29733
		learn Netherdrake Gloves##35573
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Shattered Halls or Old Hillsbrad Foothills for grinding.
		collect Pattern: Netherdrake Helm##29732 |n
		use Pattern: Netherdrake Helm##29732
		learn Netherdrake Helm##35572
	step
		talk Apprentice Darius##18255 |n
		|tip You must be Revered with The Violet Eye to purchase this Pattern.
		buy Pattern: Shadowprowler's Chestguard##33205 |n
		use Pattern: Shadowprowler's Chestguard##33205
		learn Shadowprowler's Chestguard##42731 |goto Deadwind Pass 47.0,75.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Sunwell Plateau or Black Temple for grinding.
		collect Pattern: Thick Netherscale Breastplate##29734 |n
		use Pattern: Thick Netherscale Breastplate##29734
		learn Thick Netherscale Breastplate##35574
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Hyjal Summit and The Mechanar for grinding.
		collect Pattern: Windscale Hood##29725 |n
		use Pattern: Windscale Hood##29725
		learn Windscale Hood##35560
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Netherstorm or Black Temple for grinding.
		collect Pattern: Windslayer Wraps##29728 |n
		use Pattern: Windslayer Wraps##29728
		learn Windslayer Wraps##35563
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Karazhan or Old Hillsbrad Foothills for grinding.
		collect Pattern: Windstrike Gloves##29731 |n
		use Pattern: Windstrike Gloves##29731
		learn Windstrike Gloves##35568
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Carapace of Sun and Shadow##35218 |n
		use Pattern: Carapace of Sun and Shadow##35218
		learn Carapace of Sun and Shadow##46138
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Embrace of the Phoenix##35217 |n
		use Pattern: Embrace of the Phoenix##35217
		learn Embrace of the Phoenix##46137
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Fletcher's Gloves of the Phoenix##35213 |n
		use Pattern: Fletcher's Gloves of the Phoenix##35213
		learn Fletcher's Gloves of the Phoenix##46133
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Gloves of Immortal Dusk##35214 |n
		use Pattern: Gloves of Immortal Dusk##35214
		learn Gloves of Immortal Dusk##46134
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Leather Chestguard of the Sun##35216 |n
		use Pattern: Leather Chestguard of the Sun##35216
		learn Leather Chestguard of the Sun##46136
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Leather Gauntlets of the Sun##35212 |n
		use Pattern: Leather Gauntlets of the Sun##35212
		learn Leather Gauntlets of the Sun##46132
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Sun-Drenched Scale Chestguard##35219 |n
		use Pattern: Sun-Drenched Scale Chestguard##35219
		learn Sun-Drenched Scale Chestguard##46139
	step
		This is a boss drop from the Raid Sunwell Plateau
		collect Pattern: Sun-Drenched Scale Gloves##35215 |n
		use Pattern: Sun-Drenched Scale Gloves##35215
		learn Sun-Drenched Scale Gloves##46135
	step
		talk Alurmi##21643
		|tip You must be Honored with Keepers of Time to purchase this Pattern.
		buy Pattern: Drums of Panic##29713 |n
		use Pattern: Drums of Panic##29713
		learn Drums of Panic##35538 |goto Tanaris 63.0,57.2
	step
		#include "trainer_Leatherworking"
		learn Arctic Boots##50948
	step
		#include "trainer_Leatherworking"
		learn Arctic Chestpiece##50944
	step
		#include "trainer_Leatherworking"
		learn Frostscale Belt##50955
	step
		#include "trainer_Leatherworking"
		learn Frostscale Leggings##50951
	step
		#include "trainer_Leatherworking"
		learn Iceborne Gloves##50941
	step
		#include "trainer_Leatherworking"
		learn Iceborne Leggings##50939
	step
		#include "trainer_Leatherworking"
		learn Nerubian Gloves##50959
	step
		#include "trainer_Leatherworking"
		learn Nerubian Legguards##50957
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Belt of Deep Shadow##30302 |n
		use Pattern: Belt of Deep Shadow##30302
		learn Belt of Deep Shadow##36351
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Belt of Natural Power##30301 |n
		use Pattern: Belt of Natural Power##30301
		learn Belt of Natural Power##36349
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Belt of the Black Eagle##30303 |n
		use Pattern: Belt of the Black Eagle##30303
		learn Belt of the Black Eagle##36352
	step
		This is a boss drop from the Raid Hyjal Summit
		collect Pattern: Bindings of Lightning Reflexes##32748 |n
		use Pattern: Bindings of Lightning Reflexes##32748
		learn Bindings of Lightning Reflexes##41161
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Boots of Natural Grace##30305 |n
		use Pattern: Boots of Natural Grace##30305
		learn Boots of Natural Grace##36355
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Boots of Shackled Souls##32429 |n
		use Pattern: Boots of Shackled Souls##32429
		learn Boots of Shackled Souls##39997 |goto Black Temple/2 61.6,51.0
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Boots of the Crimson Hawk##30307 |n
		use Pattern: Boots of the Crimson Hawk##30307
		learn Boots of the Crimson Hawk##36358
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Boots of Utter Darkness##30306 |n
		use Pattern: Boots of Utter Darkness##30306
		learn Boots of Utter Darkness##36357
	step
		This is a boss drop from the Raid Black Temple
		collect Pattern: Bracers of Renewed Life##32744 |n
		use Pattern: Bracers of Renewed Life##32744
		learn Bracers of Renewed Life##41156
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Bracers of Shackled Souls##32430 |n
		use Pattern: Bracers of Shackled Souls##32430
		learn Bracers of Shackled Souls##52733 |goto Black Temple/2 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		collect Pattern: Greaves of Shackled Souls##32431 |n
		use Pattern: Greaves of Shackled Souls##32431
		learn Greaves of Shackled Souls##40001 |goto Black Temple/2 61.6,51.0
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Hurricane Boots##30308 |n
		use Pattern: Hurricane Boots##30308
		learn Hurricane Boots##36359
	step
		This is a boss drop from the Raid Black Temple
		collect Pattern: Living Earth Bindings##32750 |n
		use Pattern: Living Earth Bindings##32750
		learn Living Earth Bindings##41163
	step
		This is a boss drop from the Raid Hyjal Summit
		collect Pattern: Living Earth Shoulders##32751 |n
		use Pattern: Living Earth Shoulders##32751
		learn Living Earth Shoulders##41164
	step
		This is a boss drop from the Raid Serpentshrine Cavern
		collect Pattern: Monsoon Belt##30304 |n
		use Pattern: Monsoon Belt##30304
		learn Monsoon Belt##36353
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Redeemed Soul Cinch##32436 |n
		use Pattern: Redeemed Soul Cinch##32436
		learn Redeemed Soul Cinch##40006 |goto Black Temple/2 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Redeemed Soul Legguards##32435 |n
		use Pattern: Redeemed Soul Legguards##32435
		learn Redeemed Soul Legguards##40005 |goto Black Temple/2 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Redeemed Soul Moccasins##32433 |n
		use Pattern: Redeemed Soul Moccasins##32433
		learn Redeemed Soul Moccasins##40003 |goto Black Temple/2 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Redeemed Soul Wristguards##32434 |n
		use Pattern: Redeemed Soul Wristguards##32434
		learn Redeemed Soul Wristguards##40004 |goto Black Temple/2 61.6,51.0
	step
		This is a boss drop from the Raid Hyjal Summit
		collect Pattern: Shoulderpads of Renewed Life##32745 |n
		use Pattern: Shoulderpads of Renewed Life##32745
		learn Shoulderpads of Renewed Life##41157
	step
		This is a boss drop from the Raid Black Temple
		collect Pattern: Shoulders of Lightning Reflexes##32749 |n
		use Pattern: Shoulders of Lightning Reflexes##32749
		learn Shoulders of Lightning Reflexes##41162
	step
		This is a boss drop from the Raid Hyjal Summit
		collect Pattern: Swiftstrike Bracers##32746 |n
		use Pattern: Swiftstrike Bracers##32746
		learn Swiftstrike Bracers##41158
	step
		This is a boss drop from the Raid Black Temple
		collect Pattern: Swiftstrike Shoulders##32747 |n
		use Pattern: Swiftstrike Shoulders##32747
		learn Swiftstrike Shoulders##41160
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Waistguard of Shackled Souls##32432 |n
		use Pattern: Waistguard of Shackled Souls##32432
		learn Waistguard of Shackled Souls##40002 |goto Black Temple/2 61.6,51.0
	step
		#include "trainer_Leatherworking"
		learn Arctic Gloves##50947
	step
		#include "trainer_Leatherworking"
		learn Frostscale Shoulders##50952
	step
		#include "trainer_Leatherworking"
		learn Iceborne Boots##50942
	step
		#include "trainer_Leatherworking"
		learn Iceborne Chestguard##50938
	step
		#include "trainer_Leatherworking"
		learn Nerubian Belt##50961
	step
		#include "trainer_Leatherworking"
		learn Nerubian Chestguard##50956
	step
		#include "trainer_Leatherworking"
		learn Iceborne Belt##50943
	step
		#include "trainer_Leatherworking"
		learn Cloak of Harsh Winds##60631
	step
		#include "trainer_Leatherworking"
		learn Arctic Belt##50949
	step
		#include "trainer_Leatherworking"
		learn Arctic Shoulderpads##50946
	step
		#include "trainer_Leatherworking"
		learn Frostscale Boots##50954
	step
		#include "trainer_Leatherworking"
		learn Frostscale Gloves##50953
	step
		#include "trainer_Leatherworking"
		learn Iceborne Shoulderpads##50940
	step
		#include "trainer_Leatherworking"
		learn Nerubian Boots##50960
	step
		#include "trainer_Leatherworking"
		learn Nerubian Shoulders##50958
	step
		This Pattern is no longer in the game
		learn Ebon Netherscale Belt##35576
	step
		This Pattern is no longer in the game
		learn Ebon Netherscale Bracers##35577
	step
		This Pattern is no longer in the game
		learn Ebon Netherscale Breastplate##35575
	step
		This Pattern is no longer in the game
		learn Netherstrike Belt##35582
	step
		This Pattern is no longer in the game
		learn Netherstrike Bracers##35584
	step
		This Pattern is no longer in the game
		learn Netherstrike Breastplate##35580
	step
		This Pattern is no longer in the game
		learn Primalstrike Belt##35590
	step
		This Pattern is no longer in the game
		learn Primalstrike Bracers##35591
	step
		This Pattern is no longer in the game
		learn Primalstrike Vest##35589
	step
		This Pattern is no longer in the game
		learn Windhawk Belt##35587
	step
		This Pattern is no longer in the game
		learn Windhawk Bracers##35588
	step
		This Pattern is no longer in the game
		learn Windhawk Hauberk##35585
	step
		#include "trainer_Leatherworking"
		learn Arctic Helm##51572
	step
		#include "trainer_Leatherworking"
		learn Arctic Wristguards##51571
	step
		#include "trainer_Leatherworking"
		learn Frostscale Bracers##60599
	step
		#include "trainer_Leatherworking"
		learn Frostscale Helm##60600
	step
		#include "trainer_Leatherworking"
		learn Iceborne Helm##60608
	step
		#include "trainer_Leatherworking"
		learn Iceborne Wristguards##60607
	step
		#include "trainer_Leatherworking"
		learn Nerubian Bracers##606022
	step
		#include "trainer_Leatherworking"
		learn Nerubian Helm##60624
	step
		#include "trainer_Leatherworking"
		learn Heavy Borean Leather##50936
	step
		#include "trainer_Leatherworking"
		learn Heavy Borean Armor Kit##50963
	step
		#include "trainer_Leatherworking"
		learn Cloak of Tormented Skies##55199
	step
		#include "trainer_Leatherworking"
		learn Dark Arctic Chestpiece##51570
	step
		#include "trainer_Leatherworking"
		learn Dark Arctic Leggings##51569
	step
		#include "trainer_Leatherworking"
		learn Dark Frostscale Breastplate##60604
	step
		#include "trainer_Leatherworking"
		learn Dark Frostscale Leggings##60601
	step
		#include "trainer_Leatherworking"
		learn Dark Iceborne Chestguard##60613
	step
		#include "trainer_Leatherworking"
		learn Dark Iceborne Leggings##60611
	step
		#include "trainer_Leatherworking"
		learn Dark Nerubian Chestpiece##60629
	step
		#include "trainer_Leatherworking"
		learn Dark Nerubian Leggings##60627
	step
		#include "trainer_Leatherworking"
		learn Draconic Leg Reinforcements##124569
	step
		#include "trainer_Leatherworking"
		learn Heavy Leg Reinforcements##124568
	step
		#include "trainer_Leatherworking"
		learn Primal Leg Reinforcements##124567
	step
		#include "trainer_Leatherworking"
		learn Nerubian Leg Armor##50966
	step
		#include "trainer_Leatherworking"
		learn Black Chitinguard Boots##51568
	step
		#include "trainer_Leatherworking"
		learn Bugsquashers##60620
	step
		#include "trainer_Leatherworking"
		learn Dragonstompers##60605
	step
		#include "trainer_Leatherworking"
		learn Scaled Icewalkers##60630
	step
		#include "trainer_Leatherworking"
		learn Fur Lining - Agility##57683
	step
		#include "trainer_Leatherworking"
		learn Fur Lining - Intellect##57691
	step
		#include "trainer_Leatherworking"
		learn Fur Lining - Stamina##57690
	step
		#include "trainer_Leatherworking"
		learn Fur Lining - Strength##124549
	step
		#include "trainer_Leatherworking"
		learn Jormungar Leg Armor##50964
	step
		talk Lillehoff##32540
		buy Pattern: Mammoth Mining Bag##44510 |n
		use Pattern: Mammoth Mining Bag##44510
		learn Mammoth Mining Bag##50971 |goto The Storm Peaks 66.0,61.4
	step
		#include "trainer_Leatherworking"
		learn Pack of Endless Pockets##60643
	step
		talk Sairuk##32763
		|tip You must be Revered with The Kalu'ak to purcahse this Pattern.
		buy Pattern: Trapper's Traveling Pack##44509 |n
		use Pattern: Trapper's Traveling Pack##44509
		learn Trapper's Traveling Pack##50970 |goto Dragonblight 48.6,75.6
	step
		#include "trainer_Leatherworking"
		learn Eaglebane Bracers##60652
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Bindings##44516 |n
		use Pattern: Eviscerator's Bindings##44516
		learn Eviscerator's Bindings##60704 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Chestguard##44515 |n
		use Pattern: Eviscerator's Chestguard##44515
		learn Eviscerator's Chestguard##60703 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Facemask##44513 |n
		use Pattern: Eviscerator's Facemask##44513
		learn Eviscerator's Facemask##60697 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Shoulderpads##44514 |n
		use Pattern: Eviscerator's Shoulderpads##44514
		learn Eviscerator's Shoulderpads##60702 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Jormscale Footpads##60666
	step
		#include "trainer_Leatherworking"
		learn Nightshock Girdle##60658
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Bracers##44524 |n
		use Pattern: Overcast Bracers##44524
		learn Overcast Bracers##60720 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Chestguard##44523 |n
		use Pattern: Overcast Chestguard##44523
		learn Overcast Chestguard##60718 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Spaulders##44522 |n
		use Pattern: Overcast Spaulders##44522
		learn Overcast Spaulders##60716 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Purehorn Spaulders##60671
	step
		#include "trainer_Leatherworking"
		leawrn Seafoam Gauntlets##60665
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Crown##44538 |n
		use Pattern: Stormhide Crown##44538
		learn Stormhide Crown##60743 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Hauberk##44540 |n
		use Pattern: Stormhide Hauberk##44540
		learn Stormhide Hauberk##60747 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Shoulders##44539 |n
		use Pattern: Stormhide Shoulders##44539
		learn Stormhide Shoulders##60746 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Wristguards##44541 |n
		use Pattern: Stormhide Wristguards##44541
		learn Stormhide Wristguards##60748 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Bracers##44533 |n
		use Pattern: Swiftarrow Bracers##44533
		learn Swiftarrow Bracers##60731 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Hauberk##44532 |n
		use Pattern: Swiftarrow Hauberk##44532
		learn Swiftarrow Hauberk##60730 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Helm##44530 |n
		use Pattern: Swiftarrow Helm##44530
		learn Swiftarrow Helm##60728 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Shoulderguards##44531 |n
		use Pattern: Swiftarrow Shoulderguards##44531
		learn Swiftarrow Shoulderguards##60729 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Virulent Spaulders##60651
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Icy Scale Belt##44588 |n
		use Pattern: Icy Scale Belt##44588
		learn Icy Scale Belt##61000 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Icy Scale Boots##44589 |n
		use Pattern: Icy Scale Boots##44589
		learn Icy Scale Boots##61002 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Polar Boots##44586 |n
		use Pattern: Polar Boots##44586
		learn Polar Boots##60998 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Polar Cord##44585 |n
		use Pattern: Polar Cord##44585
		learn Polar Cord##60997 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Gauntlets##44517 |n
		use Pattern: Eviscerator's Gauntlets##44517
		learn Eviscerator's Gauntlets##60705 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Legguards##44519 |n
		use Pattern: Eviscerator's Legguards##44519
		learn Eviscerator's Legguards##60711 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Treads##44520 |n
		use Pattern: Eviscerator's Treads##44520
		learn Eviscerator's Treads##60712 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Eviscerator's Waistguard##44518 |n
		use Pattern: Eviscerator's Waistguard##44518
		learn Eviscerator's Waistguard##60706 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Leggings of Visceral Strikes##60660
	step
		#include "trainer_Leatherworking"
		learn Nightshock Hood##60655
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Belt##44526 |n
		use Pattern: Overcast Belt##44526
		learn Overcast Belt##60723 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Boots##44528 |n
		use Pattern: Overcast Boots##44528
		learn Overcast Boots##60727 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Handwraps##44525 |n
		use Pattern: Overcast Handwraps##44525
		learn Overcast Handwraps##60721 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Overcast Leggings##44527 |n
		use Pattern: Overcast Leggings##44527
		learn Overcast Leggings##60725 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Razorstrike Breastplate##60649
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Belt##44543 |n
		use Pattern: Stormhide Belt##44543
		learn Stormhide Belt##60750 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Grips##44542 |n
		use Pattern: Stormhide Grips##44542
		learn Stormhide Grips##60749 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Legguards##44544 |n
		use Pattern: Stormhide Legguards##44544
		learn Stormhide Legguards##60751 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Stormhide Stompers##44545 |n
		use Pattern: Stormhide Stompers##44545
		learn Stormhide Stompers##60752 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Belt##44535 |n
		use Pattern: Swiftarrow Belt##44535
		learn Swiftarrow Belt##60734 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Boots##44537 |n
		use Pattern: Swiftarrow Boots##44537
		learn Swiftarrow Boots##60737 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Swiftarrow Leggings##44536 |n
		use Pattern: Swiftarrow Leggings##44536
		learn Swiftarrow Leggings##60735 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Wildscale Breastplate##60669
	step
		#include "trainer_Leatherworking"
		learn Earthen Leg Armor##62448
	step
		#include "trainer_Leatherworking"
		learn Frosthide Leg Armor##50965
	step
		#include "trainer_Leatherworking"
		learn Icescale Leg Armor##50967
	step
		#include "trainer_Leatherworking"
		learn Savage Leather##84950
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Icy Scale Chestguard##44587 |n
		use Pattern: Icy Scale Chestguard##4458
		learn Icy Scale Chestguard##60999 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Polar Vest##44584 |n
		use Pattern: Polar Vest##44584
		learn Polar Vest##60996 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Savage Armor Kit##78379
	step
		#include "trainer_Leatherworking"
		learn Durable Nerubhide Cape##60640
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Earthgiving Boots##44553 |n
		use Pattern: Earthgiving Boots##44553
		learn Earthgiving Boots##60761 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Earthgiving Legguards##44552 |n
		use Pattern: Earthgiving Legguards##44552
		learn Earthgiving Legguards##60760 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Giantmaim Bracers##44547 |n
		use Pattern: Giantmaim Bracers##44547
		learn Giantmaim Bracers##60755 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Giantmaim Legguards##44546 |n
		use Pattern: Giantmaim Legguards##44546
		learn Giantmaim Legguards##60754 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Ice Striker's Cloak##60637
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Revenant's Breastplate##44548 |n
		use Pattern: Revenant's Breastplate##44548
		learn Revenant's Breastplate##60756 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Revenant's Treads##44549 |n
		use Pattern: Revenant's Treads##44549
		learn Revenant's Treads##60757 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Trollwoven Girdle##44551 |n
		use Pattern: Trollwoven Girdle##44551
		learn Trollwoven Girdle##60759 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Windripper Boots##44932 |n
		use Pattern: Windripper Boots##44932
		learn Windripper Boots##62176 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Windripper Leggings##44933 |n
		use Pattern: Windripper Leggings##44933
		learn Windripper Leggings##62177 |goto Dalaran 38.2,29.6
	step
		talk Braeg Stoutbeard##32515
		buy Pattern: Trollwoven Spaulders##44550 |n
		use Pattern: Trollwoven Spaulders##44550
		learn Trollwoven Spaulders##60758 |goto Dalaran 38.2,29.6
	step
		#include "trainer_Leatherworking"
		learn Drums of Forgotten Kings##66386
	step
		#include "trainer_Leatherworking"
		learn Drums of the Wild##69388
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Belt of Arctic Life##45100 |n
		use Pattern: Belt of Arctic Life##45100
		learn Belt of Arctic Life##63200
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Belt of Dragons##45094 |n
		use Pattern: Belt of Dragons##45094
		learn Belt of Dragons##63194
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Blue Belt of Chaos##45096 |n
		use Pattern: Blue Belt of Chaos##45096
		learn Blue Belt of Chaos##63196
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Boots of Living Scale##45095 |n
		use Pattern: Boots of Living Scale##45095
		learn Boots of Living Scale##63195
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Boots of Wintry Endurance##45101 |n
		use Pattern: Boots of Wintry Endurance##45101
		learn Boots of Wintry Endurance##63201
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Death-Warmed Belt##45098 |n
		use Pattern: Death-Warmed Belt##45098
		learn Death-warmed Belt##63198
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Footpads of Silence##45099 |n
		use Pattern: Footpads of Silence##45099
		learn Footpads of Silence##63199
	step
		This is a boss drop from the Raid Ulduar
		collect Pattern: Lightning Grounded Boots##45097 |n
		use Pattern: Lightning Grounded Boots##45097
		learn Lightning Grounded Boots##63197
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Bracers##78398
	step
		#include "trainer_Leatherworking"
		learn Tsunami Boots##78410
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Black Chitin Bracers##47646 |n
		use Pattern: Black Chitin Bracers##47646
		learn Black Chitin Bracers##67137
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Bracers of Swift Death##47647 |n
		use Pattern: Bracers of Swift Death##47647
		learn Bracers of Swift Death##67139
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Crusader's Dragonscale Bracers##47648 |n
		use Pattern: Crusader's Dragonscale Bracers##47648
		learn Crusader's Dragonscale Bracers##67143
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Crusader's Dragonscale Breastplate##47649 |n
		use Pattern: Crusader's Dragonscale Breastplate##47649
		learn Crusader's Dragonscale Breastplate##67138
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Ensorcelled Nerubian Breastplate##47650 |n
		use Pattern: Ensorcelled Nerubian Breastplate##47650
		learn Ensorcelled Nerubian Breastplate##67136
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Knightbane Carapace##47651 |n
		use Pattern: Knightbane Carapace##47651
		learn Knightbane Carapace##67142
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Lunar Eclipse Robes##47652 |n
		use Pattern: Lunar Eclipse Robes##47652
		learn Lunar Eclipse Robes##67140
	step
		This is a boss drop from the Raid Trial of the Crusader
		collect Pattern: Moonshadow Armguards##47653 |n
		learn Moonshadow Armguards##67141
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Bladeborn Leggings##49959 |n
		use Pattern: Bladeborn Leggings##49959
		learn Bladeborn Leggings##70556 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Blessed Cenarion Boots##49958 |n
		use Pattern: Blessed Cenarion Boots##49958
		learn Blessed Cenarion Boots##70555 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Draconic Bonesplinter Legguards##49965 |n
		use Pattern: Draconic Bonesplinter Legguards##49965
		learn Draconic Bonesplinter Legguards##70560 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Earthsoul Boots##49963 |n
		use Pattern: Earthsoul Boots##49963
		learn Earthsoul Boots##70559 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Footpads of Impending Death##49961 |n
		use Pattern: Footpads of Impending Death##49961
		learn Footpads of Impending Death##70557 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Legwraps of Unleashed Nature##49957 |n
		use Pattern: Legwraps of Unleashed Nature##49957
		learn Legwraps of Unleashed Nature##70554 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Lightning-Infused Leggings##49962 |n
		use Pattern: Lightning-Infused Leggings##49962
		learn Lightning-Infused Leggings##70558 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Rock-Steady Treads##49966 |n
		use Pattern: Rock-Steady Treads##49966
		learn Rock-Steady Treads##70561 |goto Icecrown Citadel 36.8,20.6
	step
		#include "trainer_Leatherworking"
		learn Tsunami Shoulders##78415
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Belt##78416
	step
		#include "trainer_Leatherworking"
		learn Savage Cloak##78380
	step
		#include "trainer_Leatherworking"
		learn Tsunami Bracers##78388
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Gloves##78399
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Boots##78407
	step
		#include "trainer_Leatherworking"
		learn Hardened Scale Cloak##78405
	step
		#include "trainer_Leatherworking"
		learn Tsunami Belt##78396
	step
		#include "trainer_Leatherworking"
		learn Scorched Leg Armor##78419
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Shoulders##78411
	step
		#include "trainer_Leatherworking"
		learn Tsunami Gloves##78406
	step
		#include "trainer_Leatherworking"
		learn Twilight Leg Armor##78420
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Chestguard##78428
	step
		#include "trainer_Leatherworking"
		learn Tsunami Leggings##78427
	step
		#include "trainer_Leatherworking"
		learn Heavy Savage Leather##78436
	step
		#include "trainer_Leatherworking"
		learn Heavy Savage Armor Kit##78437
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Leggings##78433
	step
		#include "trainer_Leatherworking"
		learn Tsunami Helm##78432
	step
		#include "trainer_Leatherworking"
		learn Darkbrand Helm##78424
	step
		#include "trainer_Leatherworking"
		learn Tsunami Chestguard##78423
	step
		#include "trainer_Leatherworking"
		learn Cloak of Beasts##78438
	step
		#include "trainer_Leatherworking"
		learn Cloak of War##78439
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Draconic Leg Reinforcements##124566
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Heavy Leg Reinforcements##124565
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Primal Leg Reinforcements##124564
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Agility##85008
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Intellect##85010
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Stamina##85007
	step
		Reaching Leatherworking 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Strength##85009
	step
		#include "trainer_Leatherworking"
		learn Vicious Fur Cloak##99536
	step
		#include "trainer_Leatherworking"
		learn Vicious Hide Cloak##99535
	step
		talk Ayla Shadowstorm##53881
		buy Pattern: Triple-Reinforced Mining Bag##70175 |n
		use Pattern: Triple-Reinforced Mining Bag##70175
		learn Triple-Reinforced Mining Bag##100586 |goto Molten Front 44.8,86.6
	step
		#include "trainer_Leatherworking"
		learn Exotic Leather##124627
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Bracers##67049 |n
		use Pattern: Vicious Charscale Bracers##67049
		learn Vicious Charscale Bracers##78448 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Gloves##67053 |n
		use Pattern: Vicious Charscale Gloves##67053
		learn Vicious Charscale Gloves##78449 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Bracers##67054 |n
		use Pattern: Vicious Dragonscale Bracers##67054
		learn Vicious Dragonscale Bracers##78450 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Shoulders##67055 |n
		use Pattern: Vicious Dragonscale Shoulders##67055
		learn Vicious Dragonscale Shoulders##78451 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Bracers##67046 |n
		use Pattern: Vicious Leather Bracers##67046
		learn Vicious Leather Bracers##78446 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Gloves##67048 |n
		use Pattern: Vicious Leather Gloves##67048
		learn Vicious Leather Gloves##78447 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Belt##67044 |n
		use Pattern: Vicious Wyrmhide Belt##67044
		learn Vicious Wyrmhide Belt##78445 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Bracers##67042 |n
		use Pattern: Vicious Wyrmhide Bracers##67042
		learn Vicious Wyrmhide Bracers##78444 |goto Orgrimmar 60.6,54.4
	step
		talk Ayla Shadowstorm##53881
		buy Pattern: Royal Scribe's Satchel##70174 |n
		use Pattern: Royal Scribe's Satchel##70174
		learn Royal Scribe's Satchel##100583 |goto Molten Front 44.8,86.6
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Belt##67064 |n
		use Pattern: Vicious Charscale Belt##67064
		learn Vicious Charscale Belt##78457 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Boots##67063 |n
		use Pattern: Vicious Charscale Boots##67063
		learn Vicious Charscale Boots##78456 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Boots##67065 |n
		use Pattern: Vicious Dragonscale Boots##67065
		learn Vicious Dragonscale Boots##78458 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Gloves##67066 |n
		use Pattern: Vicious Dragonscale Gloves##67066
		learn Vicious Dragonscale Gloves##78459 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Boots##67060 |n
		use Pattern: Vicious Leather Boots##67060
		learn Vicious Leather Boots##78454 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Shoulders##67062 |n
		use Pattern: Vicious Leather Shoulders##67062
		learn Vicious Leather Shoulders##78455 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Boots##67058 |n
		use Pattern: Vicious Wyrmhide Boots##67058
		learn Vicious Wyrmhide Boots##78453 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Gloves##67056 |n
		use Pattern: Vicious Wyrmhide Gloves##67056
		learn Vicious Wyrmhide Gloves##78452 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Belt of Nefarious Whispers##67070 |n
		use Pattern: Belt of Nefarious Whispers##67070
		learn Belt of Nefarious Whispers##78461 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Corded Viper Belt##67073 |n
		use Pattern: Corded Viper Belt##67073
		learn Corded Viper Belt##78463 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Lightning Lash##67068 |n
		use Pattern: Lightning Lash##67068
		learn Lightning Lash##78460 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Stormleather Sash##67072 |n
		use Pattern: Stormleather Sash##67072
		learn Stormleather Sash##78462 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Legs##67079 |n
		use Pattern: Vicious Charscale Legs##67079
		learn Vicious Charscale Legs##78471 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Shoulders##67078 |n
		use Pattern: Vicious Charscale Shoulders##67078
		learn Vicious Charscale Shoulders##78470 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Belt##67080 |n
		use Pattern: Vicious Dragonscale Belt##67080
		learn Vicious Dragonscale Belt##78473 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Helm##67081 |n
		use Pattern: Vicious Dragonscale Helm##67081
		learn Vicious Dragonscale Helm##78474 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Belt##67076 |n
		use Pattern: Vicious Leather Belt##67076
		learn Vicious Leather Belt##78468 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Helm##67077 |n
		use Pattern: Vicious Leather Helm##67077
		learn Vicious Leather Helm##78469 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Chest##67075 |n
		use Pattern: Vicious Wyrmhide Chest##67075
		learn Vicious Wyrmhide Chest##78467 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Shoulders##67074 |n
		use Pattern: Vicious Wyrmhide Shoulders##67074
		learn Vicious Wyrmhide Shoulders##78464 |goto Orgrimmar 60.6,54.4
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Clutches of Evil##69962 |n
		use Pattern: Clutches of Evil##69962
		learn Clutches of Evil##99446
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Dragonfire Gloves##69960 |n
		use Pattern: Dragonfire Gloves##69960
		learn Dragonfire Gloves##99443
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Earthen Scale Sabatons##69971 |n
		use Pattern: Earthen Scale Sabatons##69971
		learn Earthen Scale Sabatons##99455
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Ethereal Footfalls##69974 |n
		use Pattern: Ethereal Footfalls##69974
		learn Ethereal Footfalls##99458
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Footwraps of Quenched Fire##69972 |n
		use Pattern: Footwraps of Quenched Fire##69972
		learn Footwraps of Quenched Fire##99456
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Gloves of Unforgiving Flame##69961 |n
		use Pattern: Gloves of Unforgiving Flame##69961
		learn Gloves of Unforgiving Flame##99445
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Heavenly Gloves of the Moon##69963 |n
		use Pattern: Heavenly Gloves of the Moon##69963
		learn Heavenly Gloves of the Moon##99447
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Treads of the Craft##69973 |n
		use Pattern: Treads of the Craft##69973
		learn Treads of the Craft##99457
	step
		This is a random drop in the Raid: Firelands
		collect Pattern: Bladeshadow Leggings##72006 |n
		use Pattern: Bladeshadow Leggings##72006
		learn Bladeshadow Leggings##101935
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Bladeshadow Wristguards##72010 |n
		use Pattern: Bladeshadow Wristguards##72010
		learn Bladeshadow Wristguards##101940
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Bracers of Flowing Serenity##72008 |n
		use Pattern: Bracers of Flowing Serenity##72008
		learn Bracers of Flowing Serenity##101937
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Bracers of the Hunter-Killer##72011 |n
		use Pattern: Bracers of the Hunter-Killer##72011
		learn Bracers of the Hunter-Killer##101941
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Deathscale Leggings##72005 |n
		use Pattern: Deathscale Leggings##72005
		learn Deathscale Leggings##101934
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Leggings of Nature's Champion##71999 |n
		use Pattern: Leggings of Nature's Champion##71999
		learn Leggings of Nature's Champion##101933
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Rended Earth Leggings##72007 |n
		use Pattern: Rended Earth Leggings##72007
		learn Rended Earth Leggings##101936
	step
		This is a random drop in the Raid: Dragon Soul
		collect Pattern: Thundering Deathscale Wristguards##72009 |n
		use Pattern: Thundering Deathscale Wristguards##72009
		learn Thundering Deathscale Wristguards##101939
	step
		talk Tamar##3366
		collect Pattern: Assassin's Chestplate##67095 |n
		use Pattern: Assassin's Chestplate##67095
		learn Assassin's Chestplate##78488 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Charscale Leg Armor##67084 |n
		use Pattern: Charscale Leg Armor##67084
		learn Charscale Leg Armor##78478 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Chestguard of Nature's Fury##67094 |n
		use Pattern: Chestguard of Nature's Fury##67094
		learn Chestguard of Nature's Fury##78487 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Dragonkiller Tunic##67100 |n
		use Pattern: Dragonkiller Tunic##67100
		learn Dragonkiller Tunic##78490 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Dragonscale Leg Armor##68193 |n
		use Pattern: Dragonscale Leg Armor##68193
		learn Dragonscale Leg Armor##78477 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Drakehide Leg Armor##71721 |n
		use Pattern: Drakehide Leg Armor##71721
		learn Drakehide Leg Armor##101599 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Twilight Scale Chestguard##67096 |n
		use Pattern: Twilight Scale Chestguard##67096
		learn Twilight Scale Chestguard##78489 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Razor-Edged Cloak##67082 |n
		use Pattern: Razor-Edged Cloak##67082
		learn Razor-Edged Cloak##78475 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Twilight Dragonscale Cloak##67083 |n
		use Pattern: Twilight Dragonscale Cloak##67083
		learn Twilight Dragonscale Cloak##78476 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Chest##67090 |n
		use Pattern: Vicious Charscale Chest##67090
		learn Vicious Charscale Chest##78483 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Charscale Helm##67091 |n
		use Pattern: Vicious Charscale Helm##67091
		learn Vicious Charscale Helm##78484 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Chest##67093 |n
		use Pattern: Vicious Dragonscale Chest##67093
		learn Vicious Dragonscale Chest##78486 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Dragonscale Legs##67092 |n
		use Pattern: Vicious Dragonscale Legs##67092
		learn Vicious Dragonscale Legs##78485 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Chest##67087 |n
		use Pattern: Vicious Leather Chest##67087
		learn Vicious Leather Chest##78481 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Leather Legs##67089 |n
		use Pattern: Vicious Leather Legs##67089
		learn Vicious Leather Legs##78482 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Helm##67086 |n
		use Pattern: Vicious Wyrmhide Helm##67086
		learn Vicious Wyrmhide Helm##78480 |goto Orgrimmar 60.6,54.4
	step
		talk Tamar##3366
		buy Pattern: Vicious Wyrmhide Legs##67085 |n
		use Pattern: Vicious Wyrmhide Legs##67085
		learn Vicious Wyrmhide Legs##78479 |goto Orgrimmar 60.6,54.4
	step
		#include "trainer_Leatherworking"
		learn Sha Armor Kit##124628
	step
		#include "trainer_Leatherworking"
		learn Misthide Boots##124577
	step
		#include "trainer_Leatherworking"
		learn Stormscale Bracers##124584
	step
		#include "trainer_Leatherworking"
		learn Misthide Bracers##124576
	step
		#include "trainer_Leatherworking"
		learn Stormscale Belt##124586
	step
		#include "trainer_Leatherworking"
		learn Brutal Leg Armor##124126
	step
		#include "trainer_Leatherworking"
		learn Misthide Belt##124578
	step
		#include "trainer_Leatherworking"
		learn Stormscale Boots##124585
	step
		#include "trainer_Leatherworking"
		learn Misthide Shoulders##124572
	step
		#include "trainer_Leatherworking"
		learn Stormscale Gloves##124582
	step
		#include "trainer_Leatherworking"
		learn Misthide Gloves##124574
	step
		#include "trainer_Leatherworking"
		learn Sha-Touched Leg Armor##124124
	step
		#include "trainer_Leatherworking"
		learn Stormscale Shoulders##124580
	step
		#include "trainer_Leatherworking"
		learn Magnificent Hide##131865
	step
		#include "trainer_Leatherworking"
		learn Misthide Leggings##124575
	step
		#include "trainer_Leatherworking"
		learn Stormscale Helm##124579
	step
		#include "trainer_Leatherworking"
		learn Stormscale Drape##124636
	step
		#include "trainer_Leatherworking"
		learn Cloak of the Mists##124635
	step
		#include "trainer_Leatherworking"
		learn Misthide Helm##124571
	step
		#include "trainer_Leatherworking"
		learn Stormscale Chestguard##124581
	step
		#include "trainer_Leatherworking"
		learn Toughened Leg Armor##124125
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Bracers##86242 |n
		use Pattern: Contender's Dragonscale Bracers##86242
		learn Contender's Dragonscale Bracers##124616 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Bracers##86250 |n
		use Pattern: Contender's Leather Bracers##86250
		learn Contender's Leather Bracers##124608 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Bracers##86258 |n
		use Pattern: Contender's Scale Bracers##86258
		learn Contender's Scale Bracers##124600 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Bracers##86266 |n
		use Pattern: Contender's Wyrmhide Bracers##86266
		learn Contender's Wyrmhide Bracers##124592 |goto Shrine of Two Moons 31.6,45.7
	step
		#include "trainer_Leatherworking"
		learn Quick Strike Cloak##124637
	step
		#include "trainer_Leatherworking"
		learn Misthide Chestguard##124573
	step
		#include "trainer_Leatherworking"
		learn Stormscale Leggings##124583
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Belt##86240 |n
		use Pattern: Contender's Dragonscale Belt##86240
		learn Contender's Dragonscale Belt##124618 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Boots##86241 |n
		use Pattern: Contender's Dragonscale Boots##86241
		learn Contender's Dragonscale Boots##124617 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Gloves##86244 |n
		use Pattern: Contender's Dragonscale Gloves##86244
		learn Contender's Dragonscale Gloves##124614 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Leggings##86246 |n
		use Pattern: Contender's Dragonscale Leggings##86246
		learn Contender's Dragonscale Leggings##124615 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Belt##86248 |n
		use Pattern: Contender's Leather Belt##86248
		learn Contender's Leather Belt##124610 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Boots##86249 |n
		use Pattern: Contender's Leather Boots##86249
		learn Contender's Leather Boots##124609 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Gloves##86252 |n
		use Pattern: Contender's Leather Gloves##86252
		learn Contender's Leather Gloves##124606 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Leggings##86254 |n
		use Pattern: Contender's Leather Leggings##86254
		learn Contender's Leather Leggings##124607 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Belt##86256 |n
		use Pattern: Contender's Scale Belt##86256
		learn Contender's Scale Belt##124602 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Boots##86257 |n
		use Pattern: Contender's Scale Boots##86257
		learn Contender's Scale Boots##124601 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Gloves##86260 |n
		use Pattern: Contender's Scale Gloves##86260
		learn Contender's Scale Gloves##124598 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Leggings##86262 |n
		use Pattern: Contender's Scale Leggings##86262
		learn Contender's Scale Leggings##124599 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Belt##86264 |n
		use Pattern: Contender's Wyrmhide Belt##86264
		learn Contender's Wyrmhide Belt##124594 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Boots##86265 |n
		use Pattern: Contender's Wyrmhide Boots##86265
		learn Contender's Wyrmhide Boots##124593 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Gloves##86268 |n
		use Pattern: Contender's Wyrmhide Gloves##86268
		learn Contender's Wyrmhide Gloves##124590 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Leggings##86270 |n
		use Pattern: Contender's Wyrmhide Leggings##86270
		learn Contender's Wyrmhide Leggings##124591 |goto Shrine of Two Moons 31.6,45.7
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Draconic Leg Reinforcements##124561
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Agility##124551
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Intellect##124552
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Stamina##124553
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Fur Lining - Strength##124554
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Heavy Leg Reinforcements##124563
	step
		Reaching Leatherworking 575 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Primal Leg Reinforcements##124559
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Angerhide Leg Armor##86235 |n
		use Pattern: Angerhide Leg Armor##86235
		learn Angerhide Leg Armor##124127 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Shoulders##86247 |n
		use Pattern: Contender's Dragonscale Shoulders##86247
		learn Contender's Dragonscale Shoulders##124612 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Shoulders##86263 |n
		use Pattern: Contender's Scale Shoulders##86263
		learn Contender's Scale Shoulders##124596 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Shoulders##86271 |n
		use Pattern: Contender's Wyrmhide Shoulders##86271
		learn Contender's Wyrmhide Shoulders##124588 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Ironscale Leg Armor##86276 |n
		use Pattern: Ironscale Leg Armor##86276
		learn Ironscale Leg Armor##124128 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Shadowleather Leg Armor##86295 |n
		use Pattern: Shadowleather Leg Armor##86295
		learn Shadowleather Leg Armor##124129 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Chestguard##86243 |n
		use Pattern: Contender's Dragonscale Chestguard##86243
		learn Contender's Dragonscale Chestguard##124613 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Dragonscale Helm##86245 |n
		use Pattern: Contender's Dragonscale Helm##86245
		learn Contender's Dragonscale Helm##12461 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Chestguard##86251 |n
		use Pattern: Contender's Leather Chestguard##86251
		learn Contender's Leather Chestguard##124605 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Leather Helm##86253 |n
		use Pattern: Contender's Leather Helm##86253
		learn Contender's Leather Helm##124603 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Chestguard##86259 |n
		use Pattern: Contender's Scale Chestguard##86259
		learn Contender's Scale Chestguard##124597 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Scale Helm##86261 |n
		use Pattern: Contender's Scale Helm##86261
		learn Contender's Scale Helm##124595 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Chestguard##86267 |n
		use Pattern: Contender's Wyrmhide Chestguard##86267
		learn Contender's Wyrmhide Chestguard##124589 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Krogo Darkhide##64054
		buy Pattern: Contender's Wyrmhide Helm##86269 |n
		use Pattern: Contender's Wyrmhide Helm##86269
		learn Contender's Wyrmhide Helm##124587 |goto Shrine of Two Moons 31.6,45.7
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Chestguard of Earthen Harmony##86237 |n
		use Pattern: Chestguard of Earthen Harmony##86237
		learn Chestguard of Earthen Harmony##124625 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Chestguard of Nemeses##86238 |n
		use Pattern: Chestguard of Nemeses##86238
		learn Chestguard of Nemeses##124638
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Fists of Lightning##86272 |n
		use Pattern: Fists of Lightning##86272
		learn Fists of Lightning##124643
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Liferuned Leather Gloves##86279 |n
		use Pattern: Liferuned Leather Gloves##86279
		learn Liferuned Leather Gloves##124641
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Murderer's Gloves##86280 |n
		use Pattern: Murderer's Gloves##86280
		learn Murderer's Gloves##124639
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Nightfire Robe##86281 |n
		use Pattern: Nightfire Robe##86281
		learn Nightfire Robe##124640
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Raiment of Blood and Bone##86283 |n
		use Pattern: Raiment of Blood and Bone##86283
		learn Raiment of Blood and Bone##124644
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Raven Lord's Gloves##86284 |n
		use Pattern: Raven Lord's Gloves##86284
		learn Raven Lord's Gloves##124645
	step
		This is a random Dungeon and Raid drop from Pandaria
		|tip We recommend Heart of Fear and Mogu'shan Vaults for farming.
		collect Pattern: Stormbreaker Chestguard##86297 |n
		use Pattern: Stormbreaker Chestguard##86297
		learn Stormbreaker Chestguard##124642
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Gloves of Earthen Harmony##86273 |n
		use Pattern: Gloves of Earthen Harmony##86273
		learn Gloves of Earthen Harmony##124626 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Greyshadow Chestguard##86274 |n
		use Pattern: Greyshadow Chestguard##86274
		learn Greyshadow Chestguard##124619 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Greyshadow Gloves##86275 |n
		use Pattern: Greyshadow Gloves##86275
		learn Greyshadow Gloves##124620 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Lifekeeper's Gloves##86277 |n
		use Pattern: Lifekeeper's Gloves##86277
		learn Lifekeeper's Gloves##124624 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Lifekeeper's Robe##86278 |n
		use Pattern: Lifekeeper's Robe##86278
		learn Lifekeeper's Robe##124623 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Wildblood Gloves##86308 |n
		use Pattern: Wildblood Gloves##86308
		learn Wildblood Gloves##124622 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with the Golden Lotus to purchase this Pattern.
		buy Pattern: Wildblood Vest##86309 |n
		use Pattern: Wildblood Vest##86309
		learn Wildblood Vest##124621 |goto Vale of Eternal Blossoms 74.2,42.6
]])

ZygorGuidesViewer:RegisterInclude("Leatherworking_600-700",[[
// ----------
// 600-700
// ----------
// TRAIN: Draenor Master Leatherworking
	step
		Before you continue, open your Leatherworking window to detect your profession |cast Leatherworking##2108
		skillmax Leatherworking,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _The Tannery_ to a _Small Plot_
		Build your Tannery |havebuilding Leatherworking
	step
		#include "H_Garrison_SmallBuilding",action="talk Murne Greenhoof##79834",building="Leatherworking"
		buy Draenor Leatherworking##115358 |condition skillmax("Leatherworking") >= 700 or itemcount(115358) >= 1
	step
		use Draenor Leatherworking##115358
		skillmax Leatherworking,700
	step
		map Frostfire Ridge/0
		path follow loose; loop on; ants curved
		path	27.6,47.7	25.5,47.4	23.9,44.1
		path	23.1,39.8	24.8,41.7	26.4,44.8
		kill Wooly Clefthoof##72162
		collect 1780 Raw Beast Hide##110609 |condition skill("Leatherworking")>=700
		|tip You can also buy these materials from the Auction House.
	step
		#include "H_Garrison_SmallBuilding",action="talk Murne Greenhoof##79834",building="Leatherworking"
		accept Your First Leatherworking Work Order##37574 |condition skillmax("Leatherworking") >= 700
	step
		#include "H_Garrison_SmallBuilding",action="talk Yanney##79833",building="Leatherworking"
		Tell her _"I would like to place a Work Order"_  |q Your First Leatherworking Work Order##37574/1 
	step
		#include "H_Garrison_SmallBuilding",action="click Workorder",building="Leatherworking"
		Leatherworking Work Order Collected |q Your First Leatherworking Work Order##37574/2 
	step
		#include "H_Garrison_SmallBuilding",action="talk Yanney##79833",building="Leatherworking"
		turnin Your First Leatherworking Work Order##37574
	step
		create 1 Secrets of Draenor Leatherworking##176089,Leatherworking,1 total |n
		collect 1 Secrets of Draenor Leatherworking##118721 |condition skill("Leatherworking")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Murne Greenhoof##79834",building="Leatherworking"
		buy 1 Recipe: Dums of Fury##120258 |condition _G.IsSpellKnown(178208) or itemcount(120258) >= 1 or skillmax("Leatherworking") >= 700
	step
		use Recipe: Leather Refurbishing Kit##120258
		learn Dums of Fury##178208 |condition skill("Leatherworking")>=700
	step
		create Drums of Fury##178208,Leatherworking,650
	step
		create 1 Secrets of Draenor Leatherworking##176089,Leatherworking,1 total |n 
		collect Secrets of Draenor Leatherworking##118721 |condition skillmax("Leatherworking") >= 700
	step
		#include "H_Garrison_SmallBuilding",action="talk Murne Greenhoof##79834",building="Leatherworking"
		buy 1 Recipe: Leather Refurbishing Kit##116325 |condition _G.IsSpellKnown(171266) or itemcount(116325) >= 1 or skillmax("Leatherworking") >= 700
	step
		use Recipe: Leather Refurbishing Kit##116325
		learn Leather Refurbishing Kit##171266 |condition skill("Leatherworking")>=700
	step
		create Leather Refurbishing Kit##171266,Leatherworking,700
	step
		Congratulations, you have reached level 700 in Leatherworking
]])



--------------------------------------------------------------------------------------------------------------------------------------
-- Mining
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("GatherOre_Copper", [[
		map Durotar
		path	38.9,16.0	37.5,21.1	35.9,34.4
		path +	36.8,52.3	44.2,49.5	50.6,46.3
		path +	50.7,63.3	54.9,67.0	56.2,49.8
		path +	55.0,36.9	53.0,29.7	57.9,30.0
		path +	54.8,19.0	50.0,17.2	44.2,23.6
		skill Mining,50
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("GatherOre_Tin", [[
		map Ashenvale
		path	82.0,50.2	78.8,44.9	67.1,45.8
		path +	61.9,42.6	59.5,37.5	54.5,37.1
		path +	53.5,48.2	49.5,54.7	45.5,47.5
		path +	41.8,40.3	40.1,32.4	38.2,30.3
		path +	34.6,33.3	33.6,28.5	33.0,22.5
		path +	25.4,19.3	21.0,19.1	16.6,15.7
		path +	14.1,13.1	17.0,23.7	17.3,28.2
		path +	16.5,36.6	19.5,45.7	18.8,55.4
		path +	23.4,50.2	25.4,54.2	25.7,60.4
		path +	29.9,58.1	31.8,64.7	33.1,70.3
		path +	38.8,62.7	42.0,64.2	55.6,68.4
		path +	62.7,64.6	67.0,69.1	75.6,69.2
		path +	82.4,71.8	86.5,79.1	90.1,76.6
		#include "follow_path_mine"
		skill Mining,125
		#include "max_skill_warning",skill="Mining",goto="bla_75-125_farm"
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("GatherOre_Iron", [[
		map Feralas
		path	74.9,48.6	84.0,45.6
		path	84.9,39.9	71.5,34.7
		path	54.3,50.1	48.6,44.0	49.7,34.9
		path	51.6,33.8	50.9,26.2	51.3,19.0
		path	54.9,8.1	49.4,4.0	40.0,7.7
		path	37.1,12.1	38.1,17.6	37.0,25.6
		path	45.1,26.2	46.3,38.6	50.3,52.7
		path	47.9,55.4	46.9,64.1	54.8,53.9
		path	55.2,62.6	52.9,66.2	53.6,73.7
		path	60.8,75.8	62.0,55.0	63.7,61.0
		path	66.4,51.3	68.2,51.3
		path	68.1,61.5	71.6,65.1	77.2,62.1
		#include "follow_path_mine"
		collect 165 Heavy Stone##2838
		|tip Save any extra Heavy Stones you get.
		collect 330 Iron Ore##2772
		skill Mining,200
		#include "max_skill_warning",skill="Mining",goto="bla_125-210_farm"
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("GatherOre_Mithril", [[
		map Felwood
		path	49.6,76.6	43.5,60.9	42.9,50.8
		path +	52.9,31.6	58.2,26.1	55.7,18.6
		path +	63.5,24.5	62.6,6.9	42.5,17.1
		path +	42.0,24.1	39.9,22.1	41.0,27.5
		path +	38.6,37.4	38.3,55.6	40.7,59.8
		path +	35.0,59.1	41.8,62.6	36.3,66.8
		path +	40.7,72.9	37.8,73.5	40.3,77.4
		path +	39.1,79.3	43.8,81.5	39.0,81.6
		path +	42.3,87.1	45.1,84.6	45.1,89.7
		path +	48.1,92.8	51.2,86.1	52.5,88.8
		path +	57.7,86.5	58.6,84.8	55.9,81.1
		#include "follow_path_mine"
		collect 320 Mithril Ore##3858
		collect 5 Star Ruby##7910 |n
		|tip Keep any Star Rubies that you find, you will need 5 of them later.
		skill Mining,215
		#include "max_skill_warning",skill="Mining",goto="bla_210-300_farm"
]])


---------------------------------
--VANILLA ORE
---------------------------------

	--Copper Ore Path
	ZygorGuidesViewer:RegisterInclude("H_Copper",[[
		map Durotar
		path	38.9,16.0	37.5,21.1	35.9,34.4
		path	36.8,52.3	44.2,49.5	50.6,46.3
		path 	50.7,63.3	54.9,67.0	56.2,49.8
		path 	55.0,36.9	53.0,29.7	57.9,30.0
		path 	54.8,19.0	50.0,17.2	44.2,23.6
	]])


	--Tin Ore Path
	ZygorGuidesViewer:RegisterInclude("H_Tin",[[
		map Ashenvale
		path	82.0,50.2	78.8,44.9	67.1,45.8
		path 	61.9,42.6	59.5,37.5	54.5,37.1
		path 	53.5,48.2	49.5,54.7	45.5,47.5
		path 	41.8,40.3	40.1,32.4	38.2,30.3
		path 	34.6,33.3	33.6,28.5	33.0,22.5
		path 	25.4,19.3	21.0,19.1	16.6,15.7
		path 	14.1,13.1	17.0,23.7	17.3,28.2
		path 	16.5,36.6	19.5,45.7	18.8,55.4
		path 	23.4,50.2	25.4,54.2	25.7,60.4
		path 	29.9,58.1	31.8,64.7	33.1,70.3
		path 	38.8,62.7	42.0,64.2	55.6,68.4
		path 	62.7,64.6	67.0,69.1	75.6,69.2
		path 	82.4,71.8	86.5,79.1	90.1,76.6
	]])

	--Silver Ore Path
	ZygorGuidesViewer:RegisterInclude("H_SilverTin",[[
		map Northern Stranglethorn
		path follow loose;loop;ants straight;dist 60
		path	44.9,19.0	37.5,14.8	34.4,17.3
		path	17.1,22.6	23.7,32.3	30.6,36.3
		path	34.7,30.0	38.7,34.4	39.6,43.2	
		path	47.0,41.5	44.1,49.7	46.3,52.9	
		path	54.2,55.8	60.5,51.8	67.2,49.1	
		path	67.3,36.9	66.4,25.8	59.9,18.9
		path	51.0,17.4
	]])

	--Iron Ore Path (COMMON)

	--Gold Ore Path

	--Mithril Ore Path (COMMON)

	--Thorium Ore Path (COMMON)
	
	--Truesilver Ore Path

---------------------------------
--BC ORE
---------------------------------

	--Fel Iron Ore Path (COMMON)

	--Adamantite Ore Path (COMMON)

	--Eternium

	--Khorium

---------------------------------
--WOTLK Ore
---------------------------------

	--Cobalt Ore Path (COMMON)

	--Saronite Ore Path (COMMON)

	--Titanium

---------------------------------
--CATA ORE
---------------------------------

	--Obsidium Ore Path (COMMON)
	
	--Elementium Ore Path (COMMON)

	--Pyrite

---------------------------------
--MOP ORE
---------------------------------

	--Ghost Iron

	--Black Trillium

	--White Trillium

---------------------------------
--WOD ORE
---------------------------------

	--Blackrock Ore

	--True Iron Ore



--------------------------------------------------------------------------------------------------------------------------------------
-- Skinning
--------------------------------------------------------------------------------------------------------------------------------------

---------------------------------
--VANILLA SKINS
---------------------------------
	
	--Ruined Leather Scrap // Light Leather
	ZygorGuidesViewer:RegisterInclude("Ruined_Light_Leather",[[
		map Durotar
		path follow loose;loop;ants straight;dist 60
		path	44.1,20.6	45.7,23.8	45.1,31.2 
		path	45.5,37.6	45.0,44.4	41.1,46.6
		path	36.9,45.2	36.0,34.8	38.0,25.2
		path	41.9,19.4
	]])

	--Light Leather Only
-- This don't appear to be used in any of our files.
	ZygorGuidesViewer:RegisterInclude("Light_Leather",[[
		map Northern Barrens
		path follow loose;loop;ants straight;dist 60
		path 62.4,70.7	67.1,63.9	64.3,55.5
		path 62.3,58.9	61.8,67.2
	]])

	--Medium Leather // Medium Hide
	ZygorGuidesViewer:RegisterInclude("Medium_Leather",[[
		map Northern Stranglethorn
		path follow loose;loop;ants straight;dist 60
		path	41.1,45.2	37.1,38.6	36.5,30.9
		path	35.7,25.8	35.8,19.7	40.5,20.6
		path	45.8,25.4	48.3,30.0	48.2,35.5
		path	42.9,47.4
	]])

	--Heavy Leather

	--Thick Leather

	--Rugged Leather

---------------------------------
--BC SKINS
---------------------------------

	--Knothide Leather Scraps

	--Knothide Leather

	--Heavy Knothide Leather

---------------------------------
--WOTLK SKINS
---------------------------------

	--Borean Leather Scraps

	--Borean Leather

	--Heavy Borean Leather

---------------------------------
--CATA SKINS
---------------------------------



--------------------------------------------------------------------------------------------------------------------------------------
-- Tailoring
--------------------------------------------------------------------------------------------------------------------------------------

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("Profession_List_Tailoring",[[
		This Recipe is learned by learning the Tailoring Skill
		learn Bolt of Linen Cloth##2963
	step
		This Recipe is learned by learning the Tailoring Skill
		learn Brown Linen Shirt##3915
	step
		This Recipe is learned by learning the Tailoring Skill
		learn Linen Cloak##2387
	step
		This Recipe is learned by learning the Tailoring Skill
		learn Simple Linen Pants##12044
	step
		This Recipe is learned by learning the Tailoring Skill
		learn White Linen Shirt##2393
	step
		#include "trainer_Tailoring"
		learn Brown Linen Vest##2385
	step
		#include "trainer_Tailoring"
		learn Linen Belt##8776
	step
		#include "trainer_Tailoring"
		learn Simple Linen Boots##12045
	step
		#include "trainer_Tailoring"
		learn Brown Linen Pants##3914
	step
		#include "trainer_Tailoring"
		learn Brown Linen Robe##7623
	step
		#include "trainer_Tailoring"
		learn White Linen Robe##7624
	step
		#include "trainer_Tailoring"
		learn Heavy Linen Gloves##3840
	step
		This is a Random World Drop, from creatures level 5-15 and in some dungeons
		|tip We recommend Dun Morogh or The Wandering Isle for grinding.
		collect Pattern: Red Linen Robe##2598 |n
		use Pattern: Red Linen Robe##2598
		learn Red Linen Robe##2389
	step
		#include "trainer_Tailoring"
		learn Blue Linen Shirt##2394
	step
		#include "trainer_Tailoring"
		learn Red Linen Shirt##2392
	step
		#include "trainer_Tailoring"
		learn Simple Dress##8465
	step
		#include "trainer_Tailoring"
		learn Linen Bag##3755
	step
		talk Borya##3364
		buy Pattern: Blue Linen Vest##6270 |n
		use Pattern: Blue Linen Vest##6270
		learn Blue Linen Vest##7630 |goto Orgrimmar 60.6,58.6
	step
		This is a Random World Drop, from creatures level 9-20 and in some dungeons
		|tip We recommend Wailing Caverns or Ragefire Chasm for grinding.
		collect Pattern: Red Linen Vest##6271 |n
		use Pattern: Red Linen Vest##6271
		learn Red Linen Vest##7629
	step
		#include "trainer_Tailoring"
		learn Green Linen Bracers##3841
	step
		#include "trainer_Tailoring"
		learn Reinforced Linen Cape##2397
	step
		#include "trainer_Tailoring"
		learn Linen Boots##2386
	step
		#include "trainer_Tailoring"
		learn Barbaric Linen Vest##2395
	step
		talk Ranik##3499
		buy Pattern: Blue Linen Robe##6272 |n
		use Pattern: Blue Linen Robe##6272
		learn Blue Linen Robe##7633 |goto Northern Barrens 67.0,73.4
	step
		#include "trainer_Tailoring"
		learn Handstitched Linen Britches##3842
	step
		#include "trainer_Tailoring"
		learn Green Linen Shirt##2396
	step
		kill Defias Looter##590+
		collect Pattern: Red Linen Bag##5771 |n
		use Pattern: Red Linen Bag##5771
		learn Red Linen Bag##6686 |goto Westfall 51.6,46.6
	step
		#include "trainer_Tailoring"
		learn Bolt of Woolen Cloth##2964
	step
		#include "trainer_Tailoring"
		learn Simple Kilt##12046
	step
		#include "trainer_Tailoring"
		learn Woolen Cape##2402
	step
		#include "trainer_Tailoring"
		learn Soft-soled Linen Boots##3845
	step
		#include "trainer_Tailoring"
		learn Woolen Bag##3757
	step
		#include "trainer_Tailoring"
		learn Green Woolen Vest##2399
	step
		#include "trainer_Tailoring"
		learn Heavy Woolen Gloves##3843
	step
		#include "trainer_Tailoring"
		learn Pearl-clasped Cloak##6521
	step
		This is a Random World Drop, from creatures level 9-24 and in some dungeons
		|tip We recommend Bloodmyst Isle or Wailing Caverns for grinding.
		collect Pattern: Red Woolen Boots##4345 |n
		use Pattern: Red Woolen Boots##4345
		learn Red Woolen Boots##3847
	step
		#include "trainer_Tailoring"
		learn Woolen Boots##2401
	step
		This is a Random World Drop, from creatures level 9-24 and in some dungeons
		|tip We recommend Shadowfang Keep or Wailing Caverns for grinding.
		collect Pattern: Green Woolen Bag##4292 |n
		use Pattern: Green Woolen Bag##4292
		learn Green Woolen Bag##3758
	step
		This is a Random World Drop, from creatures level 9-24 and in some dungeons
		|tip We recommend Shadowfang Keep or Wailing Caverns for grinding.
		collect Pattern: Green Woolen Bag##4292 |n
		use Pattern: Green Woolen Bag##4292
		learn Green Woolen Bag##3758
	step
		#include "trainer_Tailoring"
		learn Gray Woolen Shirt##2406
	step
		talk Borya##3364
		buy Pattern: Blue Overalls##6274 |n
		use Pattern: Blue Overalls##6274
		learn Blue Overalls##7639 |goto Orgrimmar 60.6,58.6
	step
		This is a Random World Drop, from creatures level 9-24 and in some dungeons
		|tip We recommend Shadowfang Keep for grinding.
		collect Pattern: Heavy Woolen Cloak##4346 |n
		use Pattern: Heavy Woolen Cloak##4346
		learn Heavy Woolen Cloak##3844
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Blackfathom Deeps or Gnomeregan for grinding.
		collect Pattern: Gray Woolen Robe##2601 |n
		use Pattern: Gray Woolen Robe##2601
		learn Gray Woolen Robe##2403
	step
		#include "trainer_Tailoring"
		learn Double-stitched Woolen Shoulders##3848
	step
		#include "trainer_Tailoring"
		learn Heavy Woolen Pants##3850
	step
		#include "trainer_Tailoring"
		learn Stylish Red Shirt##3866
	step
		#include "trainer_Tailoring"
		learn White Woolen Dress##8467
	step
		talk Ranik##3499
		collect Pattern: Greater Adept's Robe##6275 |n
		use Pattern: Greater Adept's Robe##6275
		learn Greater Adept's Robe##7643 |goto Northern Barrens 67.0,73.4
	step
		talk Borya##3364
		buy Pattern: Red Woolen Bag##5772 |n
		use Pattern: Red Woolen Bag##5772
		learn Red Woolen Bag##6688 |goto Orgrimmar 60.6,58.6
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Wetlands or Stonetalon Mountains for grinding.
		collect Pattern: Colorful Kilt##10316 |n
		use Pattern: Colorful Kilt##10316
		learn Colorful Kilt##12047
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Blackfathom Deeps for grinding.
		collect Pattern: Reinforced Woolen Shoulders##4347 |n
		use Pattern: Reinforced Woolen Shoulders##4347
		learn Reinforced Woolen Shoulders##3849
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Hillsbrad Foothills or Blackfathom Deeps for grinding.
		collect Pattern: Stylish Blue Shirt##6390 |n
		use Pattern: Stylish Blue Shirt##6390
		learn Stylish Blue Shirt##7892
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Blackfathom Deeps for grinding.
		collect Pattern: Stylish Green Shirt##6391 |n
		use Pattern: Stylish Green Shirt##6391
		learn Stylish Green Shirt##7893
	step
		#include "trainer_Tailoring"
		learn Bolt of Silk Cloth##3839
	step
		#include "trainer_Tailoring"
		learn Spidersilk Boots##3855
	step
		#include "trainer_Tailoring"
		learn Spidersilk Drape##63742
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Blackfathom Deeps or Wailing Caverns for grinding.
		collect Pattern: Phoenix Gloves##4348 |n
		use Pattern: Phoenix Gloves##4348
		learn Phoenix Gloves##3868
	step
		This is a Random World Drop, from creatures level 15-30 and in some dungeons
		|tip We recommend Blackfathom Deeps or Hillsbrad Foothills for grinding.
		collect Pattern: Phoenix Pants##4349 |n
		use Pattern: Phoenix Pants##4349
		learn Phoenix Pants##3851
	step
		#include "trainer_Tailoring"
		learn Gloves of Meditation##3852
	step
		talk Danielle Zipstitch##2668
		buy Pattern: Bright Yellow Shirt##14627 |n
		use Pattern: Bright Yellow Shirt##14627
		learn Bright Yellow Shirt##3869 |goto Duskwood 75.8,45.4
	step
		#include "trainer_Tailoring"
		learn Lesser Wizard's Robe##6690
	step
		#include "trainer_Tailoring"
		learn Azure Silk Pants##8758
	step
		This is a Random World Drop, from creatures level 20-36 and in some dungeons
		|tip We recommend Gnomeregan or Scarlet Halls for grinding.
		collect Pattern: Spider Silk Slippers##4350 |n
		use Pattern: Spider Silk Slippers##4350
		learn Spider Silk Slippers##3856
	step
		#include "trainer_Tailoring"
		learn Azure Silk Hood##8760
	step
		talk Kireena##9636
		buy Pattern: Azure Silk Gloves##7114 |n
		use Pattern: Azure Silk Gloves##7114
		learn Azure Silk Gloves##3854 |goto Desolace 51.0,53.4
	step
		This is a Random World Drop, from creatures level 20-35 and in some dungeons
		|tip We recommend Gnomeregan or Blackfathom Deeps for grinding.
		collect Pattern: Hands of Darkness##7092 |n
		use Pattern: Hands of Darkness##7092
		learn Hands of Darkness##8780
	step
		#include "trainer_Tailoring"
		learn Azure Silk Vest##3859
	step
		This Pattern is no longer in the game
		learn Robes of Arcana##6692
	step
		This is a Random World Drop, from creatures level 20-35 and in some dungeons
		|tip We recommend Gnomeregan or Blackfathom Deeps for grinding.
		collect Pattern: Truefaith Gloves##7091 |n
		use Pattern: Truefaith Gloves##7091
		learn Truefaith Gloves##8782
	step
		#include "trainer_Tailoring"
		learn Small Silk Pack##3813
	step
		talk Mallen Swain##2394
		buy Pattern: Dark Silk Shirt##6401 |n
		use Pattern: Dark Silk Shirt##6401
		learn Dark Silk Shirt##3870 |goto Hillsbrad Foothills 58.0,47.8
	step
		#include "trainer_Tailoring"
		learn Silk Headband##8762
	step
		#include "trainer_Tailoring"
		learn White Swashbuckler's Shirt##8483
	step
		talk Xizk Goodstitch##2670
		buy Pattern: Enchanter's Cowl##14630 |n
		use Pattern: Enchanter's Cowl##14630
		learn Enchanter's Cowl##3857 |goto The Cape of Stranglethorn 43.6,73.0
	step
		This is a Random World Drop, from creatures level 20-40 and in some dungeons
		|tip We recommend Maraudon for grinding.
		collect Pattern: Green Silk Armor##7090 |n
		use Pattern: Green Silk Armor##7090
		learn Green Silk Armor##8784
	step
		#include "trainer_Tailoring"
		learn Formal White Shirt##3871
	step
		#include "trainer_Tailoring"
		learn Earthen Vest##8764
	step
		This is a Random World Drop, from creatures level 20-40 and in some dungeons
		|tip We recommend Desolace or Uldaman for grinding.
		collect Pattern: Shadow Hood##4351 |n
		use Pattern: Shadow Hood##4351
		learn Shadow Hood##3858
	step
		#include "trainer_Tailoring"
		learn Bolt of Mageweave##3865
	step
		#include "trainer_Tailoring"
		learn Red Swashbuckler's Shirt##8489
	step
		#include "trainer_Tailoring"
		learn Azure Silk Belt##8766
	step
		talk Jun'ha ##6574
		buy Pattern: Azure Silk Cloak##7089 |n
		use Pattern: Azure Silk Cloak##7089
		learn Azure Silk Cloak##8786 |goto Arathi Highlands 68.0,37.6
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Desolace or Uldaman for grinding.
		collect Pattern: Boots of the Enchanter##4352 |n
		use Pattern: Boots of the Enchanter##4352
		learn Boots of the Enchanter##3860
	step
		#include "trainer_Tailoring"
		learn Crimson Silk Belt##8772
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Desolace or Uldaman for grinding.
		collect Pattern: Green Silk Pack##5774 |n
		use Pattern: Green Silk Pack##5774
		learn Green Silk Pack##6693
	step
		talk Xizk Goodstitch##2670
		buy Pattern: Crimson Silk Cloak##7087 |n
		use Pattern: Crimson Silk Cloak##7087
		learn Crimson Silk Cloak##8789 |goto The Cape of Stranglethorn 43.6,73.0
	step
		#include "trainer_Tailoring"
		learn Green Silken Shoulders##8774
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Uldaman for grinding.
		collect Pattern: Spider Belt##4353 |n
		use Pattern: Spider Belt##4353
		learn Spider Belt##3863
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Dire Maul or Uldaman for grinding.
		collect Pattern: Rich Purple Silk Shirt##4354 |n
		use Pattern: Rich Purple Silk Shirt##4354
		learn Rich Purple Silk Shirt##3872
	step
		#include "trainer_Tailoring"
		learn Crimson Silk Vest##8791
	step
		#include "trainer_Tailoring"
		learn Long Silken Cloak##3861
	step
		kill Syndicate Spy##2242+
		collect Pattern: Black Silk Pack##5775 |n
		use Pattern: Black Silk Pack##5775
		learn Black Silk Pack##6695 |goto Hillsbrad Foothills 57.8,25.6
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect Pattern: Green Holiday Shirt##17724 |n
		use Pattern: Green Holiday Shirt##17724
		learn Green Holiday Shirt##21945
	step
		#include "trainer_Tailoring"
		learn Robe of Power##8770
	step
		This is a Random World Drop, from creatures level 25-40 and in some dungeons
		|tip We recommend Dire Maul or Uldaman for grinding.
		collect Pattern: Azure Shoulders##7085 |n
		use Pattern: Azure Shoulders##7085
		learn Azure Shoulders##8795
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Dire Maul or Uldaman for grinding.
		collect Pattern: Crimson Silk Shoulders##7084 |n
		use Pattern: Crimson Silk Shoulders##7084
		learn Crimson Silk Shoulders##8793
	step
		#include "trainer_Tailoring"
		learn Crimson Silk Pantaloons##8799
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Maraudon or Uldaman for grinding.
		collect Pattern: Earthen Silk Belt##7086 |n
		use Pattern: Earthen Silk Belt##7086
		learn Earthen Silk Belt##8797
	step
		talk Narkk##2663
		buy Pattern: Black Swashbuckler's Shirt##10728 |n
		use Pattern: Black Swashbuckler's Shirt##10728
		learn Black Swashbuckler's Shirt##3873 |goto The Cape of Stranglethorn 42.6,69.2
	step
		talk Ghok'kah##6567
		buy Pattern: Icy Cloak##4355 |n
		use Pattern: Icy Cloak##4355
		learn Icy Cloak##3862 |goto Dustwallow Marsh 35.2,30.8
	step
		This is a Random World Drop, from creatures level 30-45 and in some dungeons
		|tip We recommend Uldaman or Dire Maul for grinding.
		collect Pattern: Star Belt##4356 |n
		use Pattern: Star Belt##4356
		learn Star Belt##3864
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Leggings##12049
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Vest##12048
	step
		talk Vizzklick##6568
		buy Pattern: Crimson Silk Robe##7088 |n
		use Pattern: Crimson Silk Robe##7088
		learn Crimson Silk Robe##8802 |goto Tanaris 50.6,28.6
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Robe##12050
	step
		#include "trainer_Tailoring"
		learn Crimson Silk Gloves##8804
	step
		#include "trainer_Tailoring"
		learn Shadoweave Pants##12052
	step
		This is a Random World Drop, from creatures level 33-50 and in some dungeons
		|tip We recommend Feralas or Stratholme for grinding.
		collect Pattern: White Bandit Mask##10301 |n
		use Pattern: White Bandit Mask##10301
		learn White Bandit Mask##12059
	step
		#include "trainer_Tailoring"
		learn Orange Mageweave Shirt##12061
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Gloves##12053
	step
		This is a Random World Drop, from creatures level 35-50 and in some dungeons
		|tip We recommend Dire Maul or Razorfen Downs for grinding.
		collect Pattern: Red Mageweave Pants##10302 |n
		use Pattern: Red Mageweave Pants##10302
		learn Red Mageweave Pants##12060
	step
		This is a Random World Drop, from creatures level 35-50 and in some dungeons
		|tip We recommend Maraudon or Razorfen Downs for grinding.
		collect Pattern: Red Mageweave Vest##10300 |n
		use Pattern: Red Mageweave Vest##10300
		learn Red Mageweave Vest##12056
	step
		#include "trainer_Tailoring"
		learn Shadoweave Robe##12055
	step
		talk Mahu##3005
		buy Pattern: Orange Martial Shirt##10311 |n
		use Pattern: Orange Martial Shirt##10311
		learn Orange Martial Shirt##12064 |goto Thunder Bluff 43.8,44.6
	step
		#include "trainer_Tailoring"
		learn Dreamweave Gloves##12067
	step
		#include "trainer_Tailoring"
		learn Dreamweave Vest##12070
	step
		#include "trainer_Tailoring"
		learn Cindercloth Robe##12069
	step
		talk Kithas##3346
		buy Pattern: Enchanted Mageweave Pouch##22307 |n
		use Pattern: Enchanted Mageweave Pouch##22307
		learn Enchanted Mageweave Pouch##27658 |goto Orgrimmar 53.2,48.8
	step
		This is a Random World Drop, from creatures level 35-50 and in some dungeons
		|tip We recommend Uldaman or Badlands for grinding.
		collect Pattern: Red Mageweave Gloves##10312 |n
		use Pattern: Red Mageweave Gloves##10312
		learn Red Mageweave Gloves##12066
	step
		#include "trainer_Tailoring"
		learn Shadoweave Gloves##12071
	step
		#include "trainer_Tailoring"
		learn Mageweave Bag##12065
	step
		talk Borya##3364
		buy Pattern: Lavender Mageweave Shirt##10314 |n
		learn Lavender Mageweave Shirt##12075 |goto Orgrimmar 60.6,58.6
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Boots##12073
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Headband##12072
	step
		#include "trainer_Tailoring"
		learn Black Mageweave Shoulders##12074
	step
		talk Borya##3364
		buy Pattern: Pink Mageweave Shirt##10317 |n
		use Pattern: Pink Mageweave Shirt##10317
		learn Pink Mageweave Shirt##12080 |goto Orgrimmar 60.6,58.6
	step
		#include "trainer_Tailoring"
		learn Simple Black Dress##12077
	step
		This is a Random World Drop, from creatures level 40-55 and in some dungeons
		|tip We recommend Stratholme or Blackrock Depths for grinding.
		collect Pattern: Red Mageweave Shoulders##10315 |n
		use Pattern: Red Mageweave Shoulders##10315
		learn Red Mageweave Shoulders##12078
	step
		#include "trainer_Tailoring"
		learn Shadoweave Shoulders##12076
	step
		#include "trainer_Tailoring"
		learn Red Mageweave Bag##12079
	step
		talk Millie Gregorian##4577
		buy Pattern: Tuxedo Shirt##10321 |n
		use Pattern: Tuxedo Shirt##10321
		learn Tuxedo Shirt##12085 |goto Undercity 70.8,29.6
	step
		talk Cowardly Crosby##2672
		buy Pattern: Admiral's Hat##10318 |n
		use Pattern: Admiral's Hat##10318
		learn Admiral's Hat##12081 |goto The Cape of Stranglethorn 40.8,82.2
	step
		This is a Random World Drop, from creatures level 40-55 and in some dungeons
		|tip We recommend Burning Steppes or Blackrock Depths for grinding.
		collect Pattern: Red Mageweave Headband##10320 |n
		use Pattern: Red Mageweave Headband##10320
		learn Red Mageweave Headband##12084
	step
		#include "trainer_Tailoring"
		learn Shadoweave Boots##12082
	step
		talk Haughty Modiste##40572
		buy Pattern: Haliscan Pantaloons##38328 |n
		use Pattern: Haliscan Pantaloons##38328
		learn Haliscan Pantaloons##50647 |goto Tanaris 50.6,28.6
	step
		talk Millie Gregorian##4577
		buy Pattern: Tuxedo Pants##10323 |n
		use Pattern: Tuxedo Pants##10323
		learn Tuxedo Pants##12089 |goto Undercity 70.8,29.6
	step
		#include "trainer_Tailoring"
		learn Cindercloth Boots##12088
	step
		This Pattern is no longer in game
		learn Shadoweave Mask##12086
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect Pattern: Green Winter Clothes##34261 |n
		use Pattern: Green Winter Clothes##34261
		learn Green Winter Clothes##44950
	step
		This can only be obtained during the Feast of Winter Veil Holiday Event. This is from December 15 - Janurary 2
		collect 1 Smokywood Pastures Special Gift##17726 |n
		use Smokywood Pastures Special Gift##17726
		collect 1 Ticking Present##21327 |n
		use Ticking Present##21327
		collect Pattern: Red Winter Clothes##34319 |n
		use Pattern: Red Winter Clothes##34319
		learn Red Winter Clothes##44958
	step
		#include "trainer_Tailoring"
		learn Bolt of Runecloth##18401
	step
		talk Mahu##3005
		buy Pattern: White Wedding Dress##10325 |n
		use Pattern: White Wedding Dress##10325
		learn White Wedding Dress##12091 |goto Thunder Bluff 43.8,44.6
	step
		talk Haughty Modiste##40572
		buy Pattern: Dress Shoes##37915 |n
		use Pattern: Dress Shoes##37915
		learn Dress Shoes##49677 |goto Tanaris 50.6,28.6
	step
		#include "trainer_Tailoring"
		learn Dreamweave Circlet##12092
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Pattern: Festival Dress##44916 |n
		use Pattern: Festival Dress##44916
		learn Festival Dress##26403 |goto Moonglade 54.0,35.0
	step
		talk Fariel Starsong##15909
		|tip You can only purchase this from her during the Lunar Festival. This is at the end of Janurary.
		buy Pattern: Festival Suit##44917 |n
		use Pattern: Festival Suit##44917
		learn Festival Suit##26407 |goto Moonglade 54.0,35.0
	step
		talk Haughty Modiste##40572
		buy Pattern: Haliscan Jacket##38327 |n
		use Pattern: Haliscan Jacket##38327
		learn Haliscan Jacket##50644 |goto Tanaris 50.6,28.6
	step
		talk Millie Gregorian##4577
		buy Pattern: Tuxedo Jacket##10326 |n
		use Pattern: Tuxedo Jacket##10326
		learn Tuxedo Jacket##12093 |goto Undercity 70.8,29.6
	step
		talk Qia##11189
		buy Pattern: Mooncloth##14526 |n
		use Pattern: Mooncloth##14526
		learn Mooncloth##18560 |goto Winterspring 59.6,49.2
	step
		This is a Random World Drop, from creatures level 36-60 and in some dungeons
		|tip We recommend Ruins of Ahn'Qiraj or Blackrock Depths for grinding.
		collect Pattern: Frostweave Robe##14467 |n
		use Pattern: Frostweave Robe##14467
		learn Frostweave Robe##18404
	step
		#include "trainer_Tailoring"
		learn Frostweave Tunic##18403
	step
		#include "trainer_Tailoring"
		learn Runecloth Belt##18402
	step
		kill Twilight Fire Guard##5861+
		collect Pattern: Cindercloth Vest##14471 |n
		use Pattern: Cindercloth Vest##14471
		learn Cindercloth Vest##18408 |goto Searing Gorge 18.6,35.4
	step
		#include "trainer_Tailoring"
		learn Runecloth Robe##18406
	step
		#include "trainer_Tailoring"
		learn Runecloth Tunic##18407
	step
		talk Vizzklick##6568
		buy Pattern: Soul Pouch##21358 |n
		use Pattern: Soul Pouch##21358
		learn Soul Pouch##26085 |goto Tanaris 50.6,28.6
	step
		talk Qia##11189
		buy Pattern: Runecloth Bag##14468 |n
		use Pattern: Runecloth Bag##14468
		learn Runecloth Bag##18405 |goto Winterspring 59.6,49.2
	step
		#include "trainer_Tailoring"
		learn Frostweave Gloves##18411
	step
		#include "trainer_Tailoring"
		learn Ghostweave Belt##18410
	step
		#include "trainer_Tailoring"
		learn Runecloth Cloak##18409
	step
		#include "trainer_Tailoring"
		learn Brightcloth Gloves##18415
	step
		#include "trainer_Tailoring"
		learn Brightcloth Robe##18414
	step
		kill Twilight Fire Guard##5861+
		collect Pattern: Cindercloth Gloves##14476 |n
		use Pattern: Cindercloth Gloves##14476
		learn Cindercloth Gloves##18412 |goto Searing Gorge 18.6,35.4
	step
		#include "trainer_Tailoring"
		learn Ghostweave Gloves##18413
	step
		This Pattern is no longer in game
		learn Gordok Ogre Suit##22813
	step
		kill Overmaster Pyron##9026+
		collect Pattern: Cloak of Fire##14486 |n
		use Pattern: Cloak of Fire##14486
		learn Cloak of Fire##18422 |goto Searing Gorge 37.0,34.8
	step
		#include "trainer_Tailoring"
		learn Brightcloth Cloak##18420
	step
		talk Mishta##15179
		buy Pattern: Cenarion Herb Bag##22310 |n
		use Pattern: Cenarion Herb Bag##22310
		learn Cenarion Herb Bag##27724 |goto Silithus 53.8,34.4
	step
		kill Thaurissan Firewalker##7037+
		collect Pattern: Cindercloth Cloak##14482 |n
		use Pattern: Cindercloth Cloak##14482
		learn Cindercloth Cloak##18418 |goto Burning Steppes 51.2,40.2
	step
		talk Kania##15419
		buy Pattern: Enchanted Runecloth Bag##22308 |n
		use Pattern: Enchanted Runecloth Bag##22308
		learn Enchanted Runecloth Bag##27659 |goto Silithus 55.6,37.0
	step
		talk Lorelae Wintersong##12022
		buy Pattern: Felcloth Pants##14483 |n
		use Pattern: Felcloth Pants##14483
		learn Felcloth Pants##18419 |goto Moonglade 48.6,40.2
	step
		#include "trainer_Tailoring"
		learn Ghostweave Vest##18416
	step
		#include "trainer_Tailoring"
		learn Runecloth Gloves##18417
	step
		#include "trainer_Tailoring"
		learn Wizardweave Leggings##18421
	step
		kill Thaurissan Firewalker##7037+
		collect Pattern: Cindercloth Pants##14490 |n
		use Pattern: Cindercloth Pants##14490
		learn Cindercloth Pants##18434 |goto Burning Steppes 51.2,40.2
	step
		#include "trainer_Tailoring"
		learn Frostweave Pants##18424
	step
		#include "trainer_Tailoring"
		learn Runecloth Boots##18423
	step
		talk Meilosh##11557
		|tip You must be friendly with Timbermaw Hold to start this quest.
		accept Sacred Cloth##6032
		turnin Sacred Cloth##6032
		learn Mooncloth Boots##19435 |goto Felwood 64.8,5.2
	step
		talk Quartermaster Miranda Breechlock##11536
		|tip You must be Honored with Argent Crusade to purchase this Formula.
		buy Pattern: Argent Boots##19216 |n
		learn Argent Boots##23664 |goto 75.8,54.0
		You can also purchase this Plan from Argent Quartermaster Lightspark here: [Western Plaguelands 42.8,83.8]
	step
		This is a Random World Drop, from creatures level 50-60 and in some dungeons
		|tip We recommend Ruins of Ahn'Qiraj or Blackwing Lair for grinding.
		collect Pattern: Mooncloth Leggings##14497 |n
		use Pattern: Mooncloth Leggings##14497
		learn Mooncloth Leggings##18440
	step
		talk Meilosh##11557
		|tip You must be Honored with Timbermaw Hold to purchase this Pattern.
		buy Pattern: Wisdom of the Timbermaw##19215 |n
		use Pattern: Wisdom of the Timbermaw##19215
		learn Wisdom of the Timbermaw##23662 |goto Felwood 64.8,5.2
	step
		This is a Random World Drop, from creatures level 45-60 and in some dungeons
		|tip We recommend Ruins of Ahn'Qiraj or Blackrock Depths for grinding.
		collect Pattern: Brightcloth Pants##14494 |n
		use Pattern: Brightcloth Pants##14494
		learn Brightcloth Pants##18439
	step
		#include "trainer_Tailoring"
		learn Felcloth Hood##18442
	step
		#include "trainer_Tailoring"
		learn Ghostweave Pants##18441
	step
		#include "trainer_Tailoring"
		learn Runecloth Headband##18444
	step
		#include "trainer_Tailoring"
		learn Netherweave Net##31460
	step
		#include "trainer_Tailoring"
		learn Bolt of Netherweave##26745
	step
		This Pattern is no longer in game
		learn Belt of the Archmage##22866
	step
		This is a boss drop from the Raid: Molten Core
		collect Pattern: Core Felcloth Bag##21371 |n
		use Pattern: Core Felcloth Bag##21371
		learn Core Felcloth Bag##26087
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Flarecore Gloves##17018 |n
		use Pattern: Flarecore Gloves##17018
		learn Flarecore Gloves##20849 |goto Blackrock Depths 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Flarecore Leggings##19220 |n
		use Pattern: Flarecore Leggings##19220
		learn Flarecore Leggings##23667 |goto Blackrock Depths 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Flarecore Mantle##17017 |n
		use Pattern: Flarecore Mantle##17017
		learn Flarecore Mantle##20848 |goto Blackrock Depths 50.6,59.2
	step
		talk Lokhtos Darkbargainer##12944
		buy Pattern: Flarecore Robe##19219 |n
		use Pattern: Flarecore Robe##19219
		learn Flarecore Robe##23666 |goto Blackrock Depths 50.6,59.2
	step
		This Pattern is no longer in game
		learn Glacial Cloak##28208
	step
		This Pattern is no longer in game
		learn Glacial Gloves##28205
	step
		This Pattern is no longer in game
		learn Glacial Vest##28207
	step
		This Pattern is no longer in game
		learn Glacial Wrists##28209
	step
		This is a Random Raid Drop from any Original Raid prior to Burning Crusade
		collect Pattern: Gloves of Spell Mastery##14511 |n
		use Pattern: Gloves of Spell Mastery##14511
		learn Gloves of Spell Mastery##18454
	step
		kill Firebrand Pyromancer##9264+
		collect Pattern: Robe of the Archmage##14513 |n
		use Pattern: Robe of the Archmage##14513
		learn Robe of the Archmage##18457 |goto Blackrock Spire 57.9,75.7
	step
		This Pattern is no longer in game
		learn Robe of the Void##18458
	step
		kill Balnazzar##10813+
		collect Pattern: Truefaith Vestments##14512 |n
		use Pattern: Truefaith Vestments##14512
		learn Truefaith Vestments##18456 |goto Stratholme 19.8,82.4
	step
		talk Quartermaster Miranda Breechlock##11536
		|tip You must be Revered with Argent Crusade to purchase this Formula.
		buy Pattern: Argent Shoulders##19217 |n
		use Pattern: Argent Shoulders##19217
		learn Argent Shoulders##23665 |goto 75.8,54.0
		You can also purchase this Plan from Argent Quartermaster Lightspark here: [Western Plaguelands 42.8,83.8]
	step
		This Pattern may no longer be in game
		learn Bloodvine Boots##24093
	step
		This Pattern may no longer be in game
		learn Bloodvine Leggings##24092
	step
		This Pattern may no longer be in game
		learn Bloodvine Vest##24091
	step
		This is a Random Raid Drop from any Original Raid prior to Burning Crusade
		collect Pattern: Bottomless Bag##14510 |n
		use Pattern: Bottomless Bag##14510
		learn Bottomless Bag##18455
	step
		This Pattern may no longer be in game
		learn Cloak of Warding##22870
	step
		This Pattern may no longer be in game
		learn Felcloth Gloves##22867
	step
		talk Mishta##15179
		buy Pattern: Gaea's Embrace##22683 |n
		use Pattern: Gaea's Embrace##22683
		learn Gaea's Embrace##28210 |goto Silithus 53.8,34.4
	step
		This Pattern may no longer be in game
		learn Inferno Gloves##22868
	step
		talk Meilosh##11557
		|tip You must be Revered with Timbermaw Hold to purchase this Pattern.
		buy Pattern: Mantle of the Timbermaw##19218 |n
		use Pattern: Mantle of the Timbermaw##19218
		learn Mantle of the Timbermaw##23663 |goto Felwood 64.8,5.2
	step
		This is a Random Raid Drop from any Original Raid prior to Burning Crusade
		collect Pattern: Mooncloth Circlet##14509 |n
		use Pattern: Mooncloth Circlet##14509
		learn Mooncloth Circlet##18452
	step
		This Pattern may no longer be in game
		learn Mooncloth Gloves##22869
	step
		talk Shen'dralar Provisioner##14371
		buy Pattern: Mooncloth Robe##18487 |n
		use Pattern: Mooncloth Robe##18487
		learn Mooncloth Robe##22902 |goto 
	step
		This is a Random World Drop, from creatures level 45-60 and in some dungeons
		|tip We recommend Blackwind Lair or Blackrock Depths for grinding.
		collect Pattern: Mooncloth Shoulders##14507 |n
		use Pattern: Mooncloth Shoulders##14507
		learn Mooncloth Shoulders##18448
	step
		This is a Random World Drop, from creatures level 45-60 and in some dungeons
		|tip We recommend Blackwind Lair or Blackrock Depths for grinding.
		collect Pattern: Mooncloth Vest##14501 |n
		use Pattern: Mooncloth Vest##14501
		learn Mooncloth Vest##18447
	step
		To obtain this bag with a chance to drop this recipe, you will need to first use our Leveling Guide of Silithus
		Do all the quests of Hermit Ortell until you can do the following quest. Once completed you can turn in Twilight Text's for the Clippings
		talk Hermit Ortell##15194
		accept True Believers##8323
		turnin True Believers##8323
		collect Decoded True Believer Clippings##20469 |n
		use Decoded True Believer Clippings##20469
		collect Pattern: Runed Stygian Belt##20548 |n
		use Pattern: Runed Stygian Belt##20548
		learn Runed Stygian Belt##24902 |goto Silithus 68.6,63.0
	step
		To obtain this bag with a chance to drop this recipe, you will need to first use our Leveling Guide of Silithus
		Do all the quests of Hermit Ortell until you can do the following quest. Once completed you can turn in Twilight Text's for the Clippings
		talk Hermit Ortell##15194
		accept True Believers##8323
		turnin True Believers##8323
		collect Decoded True Believer Clippings##20469 |n
		use Decoded True Believer Clippings##20469
		collect Pattern: Runed Stygian Boots##20547 |n
		use Pattern: Runed Stygian Boots##20547
		learn Runed Stygian Boots##24903 |goto Silithus 68.6,63.0
	step
		To obtain this bag with a chance to drop this recipe, you will need to first use our Leveling Guide of Silithus
		Do all the quests of Hermit Ortell until you can do the following quest. Once completed you can turn in Twilight Text's for the Clippings
		talk Hermit Ortell##15194
		accept True Believers##8323
		turnin True Believers##8323
		collect Decoded True Believer Clippings##20469 |n
		use Decoded True Believer Clippings##20469
		collect Pattern: Runed Stygian Leggings##20546 |n
		use Pattern: Runed Stygian Leggings##20546
		learn Runed Stygian Leggings##24901 |goto Silithus 68.6,63.0
	step
		talk Mishta##15179
		|tip You msut be Honored with Cenarion Circle to purchase this Pattern.
		buy Pattern: Sylvan Crown##22773 |n
		use Pattern: Sylvan Crown##22773
		learn Sylvan Crown##28481 |goto Silithus 53.8,34.4
	step
		talk Mishta##15179
		|tip You msut be Friendly with Cenarion Circle to purchase this Pattern.
		buy Pattern: Sylvan Shoulders##22772 |n
		use Pattern: Sylvan Shoulders##22772
		learn Sylvan Shoulders##28482 |goto Silithus 53.8,34.4
	step
		talk Mishta##15179
		|tip You msut be Friendly with Cenarion Circle to purchase this Pattern.
		buy Pattern: Sylvan Vest##15179 |n
		use Pattern: Sylvan Vest##15179
		learn Sylvan Vest##28480 |goto Silithus 53.8,34.4
	step
		kill Magister Kalendris#11487+
		collect Pattern: Big Bag of Enchantment##22309 |n
		use Pattern: Big Bag of Enchantment##22309
		learn Big Bag of Enchantment##27660 |goto Dire Maul 31.6,47.6
	step
		#include "trainer_Tailoring"
		learn Felcloth Robe##18451
	step
		#include "trainer_Tailoring"
		learn Felcloth Shoulders##18453
	step
		This is a Random World Drop, from creatures level 45-60 and in some dungeons
		|tip We recommend Blackwing Lair or Molten Core for grinding.
		collect Pattern: Mooncloth Bag##14499 |n
		use Pattern: Mooncloth Bag##14499
		learn Mooncloth Bag##18445
	step
		#include "trainer_Tailoring"
		learn Runecloth Shoulders##18449
	step
		talk Mishta##15179
		|tip You msut be Revered with Cenarion Circle to purchase this Pattern.
		buy Pattern: Satchel of Cenarius##22312 |n
		use Pattern: Satchel of Cenarius##22312
		learn Satchel of Cenarius##27725 |goto Silithus 53.8,34.4
	step
		#include "trainer_Tailoring"
		learn Wizardweave Robe##18446
	step
		#include "trainer_Tailoring"
		learn Wizardweave Turban##18450
	step
		This is a random boss drop from the Raid: Molten Core
		collect Pattern: Flarecore Wraps##18265 |n
		use Pattern: Flarecore Wraps##18265
		learn Flarecore Wraps##22759
	step
		#include "trainer_Tailoring"
		learn Flying Carpet##60969
	step
		#include "trainer_Tailoring"
		learn Netherweave Belt##26765
	step
		#include "trainer_Tailoring"
		learn Netherweave Bracers##26764
	step
		#include "trainer_Tailoring"
		learn Netherweave Bag##26746
	step
		#include "trainer_Tailoring"
		learn Netherweave Gloves##26770
	step
		talk Eiin##19213
		buy Pattern: Bolt of Imbued Netherweave##21892 |n
		use Pattern: Bolt of Imbued Netherweave##21892
		learn Bolt of Imbued Netherweave##26747 |goto Shattrath City 66.2,68.8
	step
		#include "trainer_Tailoring"
		learn Netherweave Pants##26771
	step
		talk Quartermaster Enuril##19331
		|tip You must be Honored with The Scryers to purchase this Pattern.
		buy Pattern: Mystic Spellthread##24292 |n
		use Pattern: Mystic Spellthread##24292
		learn Mystic Spellthread##31430 |goto Shattrath City 60.6,64.2
	step
		talk Quartermaster Endarin##19321
		|tip You must be Honored with The Aldor to purchase this Pattern.
		buy Pattern: Silver Spellthread##24293 |n
		use Pattern: Silver Spellthread##24293
		learn Silver Spellthread##31431 |goto Shattrath City 48.0,26.6
	step
		#include "trainer_Tailoring"
		learn Netherweave Boots##26772
	step
		talk Eiin##19213
		buy Pattern: Imbued Netherweave Bag##21893 |n
		use Pattern: Imbued Netherweave Bag##21893
		learn Imbued Netherweave Bag##26749 |goto Shattrath City 66.2,68.8
	step
		talk Zurai##18011
		buy Pattern: Imbued Netherweave Pants##21898 |n
		use Pattern: Imbued Netherweave Pants##21898
		learn Imbued Netherweave Pants##26775 |goto Zangarmarsh 85.2,54.6
	step
		talk Paulsta'ats##23007
		|tip You must be Honored with The Consortium to purchase this Pattern.
		buy Pattern: Bag of Jewels##24314 |n
		use Pattern: Bag of Jewels##24314
		learn Bag of Jewels##31459 |goto Nagrand 30.6,57.0
	step
		talk Eiin##19213
		buy Pattern: Netherweave Robe##21896 |n
		use Pattern: Netherweave Robe##21896
		learn Netherweave Robe##26773 |goto Shattrath City 66.2,68.8
	step
		talk Mathar G'ochar##19015
		buy Pattern: Bolt of Soulcloth##21894 |n
		use Pattern: Bolt of Soulcloth##21894
		learn Bolt of Soulcloth##26750 |goto Nagrand 57.0,38.6
	step
		talk Eiin##19213
		buy Pattern: Netherweave Tunic##21897 |n
		use Pattern: Netherweave Tunic##21897
		learn Netherweave Tunic##26774 |goto Shattrath City 66.2,68.8
	step
		talk Nasmara Moonsong##22208
		buy Pattern: Primal Mooncloth##21895 |n
		use Pattern: Primal Mooncloth##21895
		learn Primal Mooncloth##26751 |goto Shattrath City 66.6,68.4
	step
		talk Andrion Darkspinner##22212
		buy Pattern: Shadowcloth##30483 |n
		use Pattern: Shadowcloth##30483
		learn Shadowcloth##36686 |goto Shattrath City 66.6,68.6
	step
		talk Gidge Spellweaver##22213
		buy Pattern: Spellcloth##24316 |n
		use Pattern: Spellcloth##24316
		learn Spellcloth##31373 |goto Shattrath City 66.6,68.6
	step
		kill Arcatraz Sentinel##20869+
		collect Pattern: Arcanoweave Bracers##21905 |n
		use Pattern: Arcanoweave Bracers##21905
		learn Arcanoweave Bracers##26782 |goto The Arcatraz 30.6,57.0
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Shattered Halls or Serpentshrine Cavern for grinding.
		collect Pattern: Blackstrike Bracers##24298 |n
		use Pattern: Blackstrike Bracers##24298
		learn Blackstrike Bracers##31437
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Karazhan or Old Hillsbrad Foothills for grinding.
		collect Pattern: Bracers of Havok##24297 |n
		use Pattern: Bracers of Havok##24297
		learn Bracers of Havok##31435
	step
		talk Nakodu##21655
		buy Pattern: Cloak of Arcane Evasion##30833 |n
		use Pattern: Cloak of Arcane Evasion##30833
		learn Cloak of Arcane Evasion##37873 |goto Shattrath City 62.6,69.0
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Netherstorm or Black Temple for grinding.
		collect Pattern: Cloak of Eternity##24300 |n
		use Pattern: Cloak of Eternity##24300
		learn Cloak of Eternity##31440
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Eye or Old Hillsbrad Foothills for grinding.
		collect Pattern: Cloak of the Black Void##24299 |n
		use Pattern: Cloak of the Black Void##24299
		learn Cloak of the Black Void##31438
	step
		talk Quartermaster Endarin##19321
		|tip You must be Friendly with The Aldor to purchase this Pattern.
		buy Pattern: Flameheart Bracers##30842 |n
		use Pattern: Flameheart Bracers##30842
		learn Flameheart Bracers##37882 |goto Shattrath City 48.0,26.6
	step
		talk Zurai##18011
		buy Pattern: Imbued Netherweave Boots##21899 |n
		use Pattern: Imbued Netherweave Boots##21899
		learn Imbued Netherweave Boots##26776 |goto Zangarmarsh 85.2,54.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend The Arcatraz or Magisters' Terrace for grinding.
		collect Pattern: Unyielding Bracers##24296 |n
		use Pattern: Unyielding Bracers##24296
		learn Unyielding Bracers##31434
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Sethekk Halls for grinding.
		collect Pattern: White Remedy Cape##24301 |n
		use Pattern: White Remedy Cape##24301
		learn White Remedy Cape##31441
	step
		#include "trainer_Tailoring"
		learn Frostwoven Shoulders##55902
	step
		#include "trainer_Tailoring"
		learn Frostwoven Wristwraps##56031
	step
		#include "trainer_Tailoring"
		learn Bolt of Frostweave##55899
	step
		talk Andrion Darkspinner##22212
		buy Pattern: Frozen Shadoweave Shoulders##21912 |n
		use Pattern: Frozen Shadoweave Shoulders##21912
		learn Frozen Shadoweave Shoulders##26756 |goto Shattrath City 66.6,68.6
	step
		talk Nasmara Moonsong##22208
		buy Pattern: Primal Mooncloth Belt##21916 |n
		use Pattern: Primal Mooncloth Belt##21916
		learn Primal Mooncloth Belt##26760 |goto Shattrath City 66.6,68.6
	step
		talk Mathar G'ochar##19015
		buy Pattern: Soulcloth Gloves##21902 |n
		use Pattern: Soulcloth Gloves##21902
		learn Soulcloth Gloves##26779 |goto Nagrand 57.0,38.6
	step
		talk Gidge Spellweaver##22213
		buy Pattern: Spellfire Belt##21908 |n
		use Pattern: Spellfire Belt##21908
		learn Spellfire Belt##26752 |goto Shattrath City 66.6,68.6
	step
		This Pattern may no longer be in game
		learn Netherflame Belt##36667
	step
		This Pattern may no longer be in game
		learn Netherflame Boots##36668
	step
		This Pattern may no longer be in game
		learn Netherflame Robe##36665
	step
		kill Sunseeker Astromage##19168+
		collect Pattern: Arcanoweave Boots##21906 |n
		learn Arcanoweave Boots##26783 |goto The Mechanar/2 52.8,34.4
	step
		talk Quartermaster Endarin##19321
		|tip You must be Honored with The Aldor to purchase this Pattern.
		buy Pattern: Flameheart Gloves##30843 |n
		use Pattern: Flameheart Gloves##30843
		learn Flameheart Gloves##37883 |goto Shattrath City 48.0,26.6
	step
		talk Arrond##19521
		buy Pattern: Imbued Netherweave Robe##21900 |n
		use Pattern: Imbued Netherweave Robe##21900
		learn Imbued Netherweave Robe##26777 |goto Shadowmoon Valley 55.8,58.2
	step
		talk Arrond##19521
		buy Pattern: Imbued Netherweave Tunic##21901 |n
		use Pattern: Imbued Netherweave Tunic##21901
		learn Imbued Netherweave Tunic##26778 |goto Shadowmoon Valley 55.8,58.2
	step
		#include "trainer_Tailoring"
		learn Frostweave Net##55898
	step
		#include "trainer_Tailoring"
		learn Frostwoven Gloves##55904
	step
		#include "trainer_Tailoring"
		learn Frostwoven Robe##55903
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Serpentshrine Cavern or Terokkar Froest for grinding.
		collect Pattern: Black Belt of Knowledge##24304 |n
		use Pattern: Black Belt of Knowledge##24304
		learn Black Belt of Knowledge##31444
	step
		talk Andrion Darkspinner##2212
		buy Pattern: Frozen Shadoweave Boots##21914 |n
		use Pattern: Frozen Shadoweave Boots##21914
		learn Frozen Shadoweave Boots##26757 |goto Shattrath City 66.6,68.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Old Hillsbrad Foothills or Karazhan for grinding.
		collect Pattern: Girdle of Ruination##24303 |n
		use Pattern: Girdle of Ruination##24303
		learn Girdle of Ruination##31443
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Black Temple or Serpentshrine Cavern for grinding.
		collect Pattern: Manaweave Cloak##24307 |n
		use Pattern: Manaweave Cloak##24307
		learn Manaweave Cloak##31450
	step
		talk Nasmara Moonsong##22208
		buy Pattern: Primal Mooncloth Shoulders##21918 |n
		use Pattern: Primal Mooncloth Shoulders##21918
		learn Primal Mooncloth Shoulders##26761 |goto Shattrath City 66.6,68.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Serpentshrine Cavern or Netherstorm for grinding.
		collect Pattern: Resolute Cape##24305 |n
		use Pattern: Resolute Cape##24305
		learn Resolute Cape##31448
	step
		kill Phantom Attendant##16406+
		collect Pattern: Soulcloth Shoulders##21903 |n
		use Pattern: Soulcloth Shoulders##21903
		learn Soulcloth Shoulders##26780 |goto Karazhan 55.0,52.4
	step
		talk Gidge Spellweaver##22213
		buy Pattern: Spellfire Gloves##21909 |n
		use Pattern: Spellfire Gloves##21909
		learn Spellfire Gloves##26753 |goto Shattrath City 66.6,68.6
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Old Hillsbrad Foothills or Blade's Edge Mountains for grinding.
		learn Unyielding Girdle##31442
	step
		This is a Random World Drop, from creatures level 60-72 and in some dungeons
		|tip We recommend Old Hillsbrad Foothills or Magisters' Terrace for grinding.
		collect Pattern: Vengeance Wrap##24306 |n
		use Pattern: Vengeance Wrap##24306
		learn Vengeance Wrap##31449
	step
		This is a drop from the Raid: Sunwell Plateau
		collect Pattern: Hands of Eternal Light##35205 |n
		use Pattern: Hands of Eternal Light##35205
		learn Hands of Eternal Light##46129
	step
		This is a drop from the Raid: Sunwell Plateau
		collect Pattern: Robe of Eternal Light##35207 |n
		use Pattern: Robe of Eternal Light##35207
		learn Robe of Eternal Light##46131
	step
		This is a drop from the Raid: Sunwell Plateau
		collect Pattern: Sunfire Handwraps##35204 |n
		use Pattern: Sunfire Handwraps##35204
		learn Sunfire Handwraps##46128
	step
		This is a drop from the Raid: Sunwell Plateau
		collect Pattern: Sunfire Robe##35206 |n
		use Pattern: Sunfire Robe##35206
		learn Sunfire Robe##46130
	step
		kill Pathaleon the Calculator##19220+
		collect Pattern: Arcanoweave Robe##21907 |n
		use Pattern: Arcanoweave Robe##21907
		learn Arcanoweave Robe##26784 |goto The Mechanar 29.6,60.6
	step
		talk Quartermaster Endarin##19321
		collect Pattern: Flameheart Vest##30844 |n
		use Pattern: Flameheart Vest##30844
		learn Flameheart Vest##37884 |goto Shattrath City 48.0,26.6
	step
		#include "trainer_Tailoring"
		learn Frostwoven Belt##55908
	step
		kill Phantom Valet##16408+
		collect Pattern: Soulcloth Vest##21904 |n
		use Pattern: Soulcloth Vest##21904
		learn Soulcloth Vest##26781 |goto Karazhan/3 49.8,57.4
	step
		kill Warlord Kalithresh##17798+
		collect Pattern: Battlecast Hood##24313 |n
		use Pattern: Battlecast Hood##24313
		learn Battlecast Hood##31456 |goto The Steamvault 80.6,43.6
	step
		kill Thorngrin the Tender##17978+
		collect Pattern: Battlecast Pants##24310 |n
		use Pattern: Battlecast Pants##24310
		learn Battlecast Pants##31453 |goto The Botanica 8.2,47.2
	step
		This is a drop from the Raid: Serpentshrine Cavern
		collect Pattern: Belt of Blasting##30280 |n
		use Pattern: Belt of Blasting##30280
		learn Belt of Blasting##36315
	step
		This is a drop from the Raid: Serpentshrine Cavern
		collect Pattern: Belt of the Long Road##30281 |n
		use Pattern: Belt of the Long Road##30281
		learn Belt of the Long Road##36316
	step
		This is a drop from the Raid: Serpentshrine Cavern
		collect Pattern: Boots of Blasting##30282 |n
		use Pattern: Boots of Blasting##30282
		learn Boots of Blasting##36317
	step
		This is a drop from the Raid: Serpentshrine Cavern
		collect Pattern: Boots of the Long Road##30283 |n
		use Pattern: Boots of the Long Road##30283
		learn Boots of the Long Road##36318
	step
		This is a drop from the Raid: Black Temple
		collect Pattern: Bracers of Nimble Thought##32754 |n
		use Pattern: Bracers of Nimble Thought##32754
		learn Bracers of Nimble Thought##41205
	step
		talk Andrion Darkspinner##22212
		buy Pattern: Frozen Shadoweave Robe##21913 |n
		use Pattern: Frozen Shadoweave Robe##21913
		learn Frozen Shadoweave Robe##26758 |goto Shattrath City 66.6,68.6
	step
		talk Quartermaster Endarin##19321
		|tip You must be Exalted with The Aldor to purchase this Pattern.
		buy Pattern: Golden Spellthread##24295 |n
		use Pattern: Golden Spellthread##24295
		learn Golden Spellthread##31433 |goto Shattrath City 48.0,26.6
	step
		This is a drop from the Raid: Hyjal Summit
		buy Pattern: Mantle of Nimble Thought##32755 |n
		learn Mantle of Nimble Thought##41206
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Night's End##32447 |n
		use Pattern: Night's End##32447
		learn Night's End##40060 |goto Black Temple 61.6,51.0
	step
		talk Nasmara Moonsong##22208
		buy Pattern: Primal Mooncloth Robe##21917 |n
		use Pattern: Primal Mooncloth Robe##21917
		learn Primal Mooncloth Robe##26762 |goto Shattrath City 66.6,68.6
	step
		talk Quartermaster Enuril##19331
		|tip You must be Exalted with The Scryers to purcase this Pattern.
		buy Pattern: Runic Spellthread##24294 |n
		use Pattern: Runic Spellthread##24294
		learn Runic Spellthread##31432 |goto Shattrath City 60.6,64.2
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Soulguard Bracers##32438 |n
		use Pattern: Soulguard Bracers##32438
		learn Soulguard Bracers##40021 |goto Black Temple 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Friendly with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Soulguard Girdle##32440 |n
		use Pattern: Soulguard Girdle##32440
		learn Soulguard Girdle##40024 |goto Black Temple 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Soulguard Leggings##32439 |n
		use Pattern: Soulguard Leggings##32439
		learn Soulguard Leggings##40023 |goto Black Temple 61.6,51.0
	step
		talk Okuno##23159
		|tip You must be Honored with Ashtongue Deathsworn to purchase this Pattern.
		buy Pattern: Soulguard Slippers##32437 |n
		use Pattern: Soulguard Slippers##32437
		learn Soulguard Slippers##40020 |goto Black Temple 61.6,51.0
	step
		talk Gidge Spellweaver##22213
		buy Pattern: Spellfire Robe##21910 |n
		use Pattern: Spellfire Robe##21910
		learn Spellfire Robe##26754 |goto Shattrath City 66.6,68.6
	step
		kill Grand Warlock Nethekurse##16807+
		collect Pattern: Spellstrike Hood##24312 |n
		use Pattern: Spellstrike Hood##24312
		learn Spellstrike Hood##31455 |goto The Shattered Halls 34.8,61.4
	step
		kill Murmur##18708+
		collect Pattern: Spellstrike Pants##24309 |n
		use Pattern: Spellstrike Pants##24309
		learn Spellstrike Pants##31452 |goto Shadow Labyrinth 81.2,39.2
	step
		This is a drop from the Raid: Black Temple
		collect Pattern: Swiftheal Mantle##32753 |n
		use Pattern: Swiftheal Mantle##32753
		learn Swiftheal Mantle##41208
	step
		This is a drop from the Raid: Hyjal Summit
		collect Pattern: Swiftheal Wraps##32752 |n
		use Pattern: Swiftheal Wraps##32752
		learn Swiftheal Wraps##41207
	step
		kill Warp Splinter##17977+
		collect Pattern: Whitemend Hood##24311 |n
		learn Whitemend Hood##31454 |goto The Botanica 34.0,38.6
	step
		kill Dalliah the Doomsayer##20885+
		collect Pattern: Whitemend Pants##24308 |n
		use Pattern: Whitemend Pants##24308
		learn Whitemend Pants##31451 |goto The Arcatraz 32.2,74.0
	step
		talk Andrion Darkspinner##22212
		buy Pattern: Ebon Shadowbag##21915 |n
		use Pattern: Ebon Shadowbag##21915
		learn Ebon Shadowbag##26759 |goto Shattrath City 66.6,68.6
	step
		talk Mycah##18382
		|tip You must be Revered to purchase this Pattern.
		buy Pattern: Mycah's Botanical Bag##38229 |n
		use Pattern: Mycah's Botanical Bag##38229
		learn Mycah's Botanical Bag##50194 |goto Zangarmarsh 17.8,51.2
	step
		talk Nasmara Moonsong##22208
		collect Pattern: Primal Mooncloth Bag##21919 |n
		use Pattern: Primal Mooncloth Bag##21919
		learn Primal Mooncloth Bag##26763 |goto Shattrath City 66.6,68.6
	step
		talk Gidge Spellweaver##22213
		buy Pattern: Spellfire Bag##21911 |n
		use Pattern: Spellfire Bag##21911
		learn Spellfire Bag##26755 |goto Shattrath City 66.6,68.6
	step
		#include "trainer_Tailoring"
		learn Frostwoven Boots##55906
	step
		#include "trainer_Tailoring"
		learn Frostwoven Cowl##55907
	step
		#include "trainer_Tailoring"
		learn Frostwoven Leggings##56030
	step
		#include "trainer_Tailoring"
		learn Mystic Frostwoven Shoulders##55910
	step
		#include "trainer_Tailoring"
		learn Mystic Frostwoven Wristwraps##55913
	step
		#include "trainer_Tailoring"
		learn Cloak of the Moon##56014
	step
		#include "trainer_Tailoring"
		learn Mystic Frostwoven Robe##55911
	step
		#include "trainer_Tailoring"
		learn Cloak of Frozen Spirits##56015
	step
		#include "trainer_Tailoring"
		learn Duskweave Belt##55914
	step
		#include "trainer_Tailoring"
		learn Duskweave Cowl##55919
	step
		#include "trainer_Tailoring"
		learn Duskweave Leggings##55901
	step
		#include "trainer_Tailoring"
		learn Bolt of Imbued Frostweave##55900
	step
		#include "trainer_Tailoring"
		learn Azure Spellthread##56010
	step
		#include "trainer_Tailoring"
		learn Shining Spellthread##56008
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Ulduar or Icecrown Citadel for grinding.
		collect Pattern: Blue Lumberjack Shirt##42173 |n
		learn Blue Lumberjack Shirt##55994
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Naxxramas for grinding.
		collect Pattern: Blue Workman's Shirt##42176 |n
		use Pattern: Blue Workman's Shirt##42176
		learn Blue Workman's Shirt##55998
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Naxxramas for grinding.
		collect Pattern: Green Lumberjack Shirt##42175 |n
		use Pattern: Green Lumberjack Shirt##42175
		learn Green Lumberjack Shirt##53996
	step
		#include "trainer_Tailoring"
		learn Green Workman's Shirt##56000
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Pattern: Red Lumberjack Shirt##42172 |n
		use Pattern: Red Lumberjack Shirt##42172
		learn Red Lumberjack Shirt##55993
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Pattern: Red Workman's Shirt##42177 |n
		use Pattern: Red Workman's Shirt##42177
		learn Red Workman's Shirt##55997
	step
		This is a Random World Drop, from creatures level 70-82 and in some dungeons
		|tip We recommend Icecrown Citadel or Ulduar for grinding.
		collect Pattern: Rustic Workman's Shirt##42178 |n
		use Pattern: Rustic Workman's Shirt##42178
		learn Rustic Workman's Shirt##55999
	step
		#include "trainer_Tailoring"
		learn Yellow Lumberjack Shirt##55995
	step
		#include "trainer_Tailoring"
		learn Frostguard Drape##64729
	step
		#include "trainer_Tailoring"
		learn Duskweave Wristwraps##55920
	step
		#include "trainer_Tailoring"
		learn Master's Spellthread##56034
	step
		#include "trainer_Tailoring"
		learn Sanctified Spellthread##56039
	step
		#include "trainer_Tailoring"
		learn Cloak of Crimson Snow##64730
	step
		#include "trainer_Tailoring"
		learn Duskweave Gloves##55922
	step
		#include "trainer_Tailoring"
		learn Duskweave Robe##55921
	step
		#include "trainer_Tailoring"
		learn Duskweave Boots##55924
	step
		#include "trainer_Tailoring"
		learn Duskweave Shoulders##55923
	step
		#include "trainer_Tailoring"
		learn Frostweave Bag##56007
	step
		#include "trainer_Tailoring"
		learn Black Duskweave Leggings##55925
	step
		#include "trainer_Tailoring"
		learn Black Duskweave Wristwraps##55943
	step
		#include "trainer_Tailoring"
		learn Ebonweave##56002
	step
		#include "trainer_Tailoring"
		learn Moonshroud##56001
	step
		#include "trainer_Tailoring"
		learn Spellweave##56003
	step
		#include "trainer_Tailoring"
		learn Frostsavage Belt##59582
	step
		#include "trainer_Tailoring"
		learn Frostsavage Bracers##59583
	step
		You must reach Tailoring level 420 and complete the Achiement Nothrend Dungeonmaster
		achieve 1288
		learn Wispcloak##56016
	step
		#include "trainer_Tailoring"
		learn Darkglow Embroidery##55769
	step
		#include "trainer_Tailoring"
		learn Lightweave Embroidery##55642
	step
		#include "trainer_Tailoring"
		learn Swordguard Embroidery##55777
	step
		#include "trainer_Tailoring"
		learn Black Duskweave Robe##55941
	step
		#include "trainer_Tailoring"
		learn Glacial Slippers##60994
	step
		#include "trainer_Tailoring"
		learn Glacial Waistband##60990
	step
		#include "trainer_Tailoring"
		learn Aurora Slippers##56023
	step
		#include "trainer_Tailoring"
		learn Deep Frozen Cord##56020
	step
		#include "trainer_Tailoring"
		learn Frostsavage Boots##59585
	step
		#include "trainer_Tailoring"
		learn Frostsavage Cowl##59589
	step
		#include "trainer_Tailoring"
		learn Frostsavage Gloves##59586
	step
		#include "trainer_Tailoring"
		learn Frostsavage Leggings##59588
	step
		#include "trainer_Tailoring"
		learn Frostsavage Robe##59587
	step
		#include "trainer_Tailoring"
		learn Frostsavage Shoulders##59584
	step
		#include "trainer_Tailoring"
		learn Light Blessed Mittens##56022
	step
		#include "trainer_Tailoring"
		learn Silky Iceshard Boots##56019
	step
		You must reach Tailoring level 420 and complete the Achiement Loremaster of Northrend
		achieve 41
		learn Deathchill Cloak##56017
	step
		#include "trainer_Tailoring"
		learn Frostmoon Pants##56021
	step
		#include "trainer_Tailoring"
		learn Hat of Wintry Doom##56018
	step
		talk Frozo the Renowned##40160
		buy Pattern: Frosty Flying Carpet##54798 |n
		use Pattern: Frosty Flying Carpet##54798
		learn Frosty Flying Carpet##75597 |goto Dalaran 40.0,28.3
	step
		#include "trainer_Tailoring"
		learn Glacial Robe##60993
	step
		#include "trainer_Tailoring"
		learn Magnificent Flying Carpet##60971
	step
		#include "trainer_Tailoring"
		learn Embersilk Net##75247
	step
		#include "trainer_Tailoring"
		learn Bolt of Embersilk Cloth##74964
	step
		talk Veteran Crusader Aliocha Segard##30431
		|tip You must be Exalted with Argent Crusade to purchase this Pattern.
		buy Pattern: Brilliant Spellthread##42187 |n
		use Pattern: Brilliant Spellthread##42187
		learn Brilliant Spellthread##56009 |goto Icecrown 87.6,75.6
	step
		talk Archmage Alvareaux##32287
		|tip You must be Exalted with Kirin Tor to purchase this Pattern.
		buy Pattern: Sapphire Spellthread##42188 |n
		use Pattern: Sapphire Spellthread##42188
		learn Sapphire Spellthread##56011 |goto Dalaran 25.6,49.0
	step
		talk Duchess Mynx##32538
		|tip You must be Revered with Knights of the Ebon Blade to purchase this Pattern.
		buy Pattern: Abyssal Bag##42183 |n
		use Pattern: Abyssal Bag##42183
		learn Abyssal Bag##56004 |goto Icecrown 43.4,20.6
	step
		talk Sairuk##32763
		|tip You must be Revered with The Kalu'ak to purchase this Pattern.
		buy Pattern: Emerald Bag##45774 |n
		use Pattern: Emerald Bag##45774
		learn Emerald Bag##63924 |goto Dragonblight 48.6,75.6
	step
		#include "trainer_Tailoring"
		learn Ebonweave Gloves##56027
	step
		#include "trainer_Tailoring"
		learn Moonshroud Gloves##56025
	step
		#include "trainer_Tailoring"
		learn Spellweave Gloves##56029
	step
		talk Cielstrasza##32533
		|tip You must be Revered with The Wyrmrest Accord to purchase this Pattern.
		buy Pattern: Mysterious Bag##42185 |n
		use Pattern: Mysterious Bag##42185
		learn Mysterious Bag##56006 |goto Dragonblight 59.8,53.0
	step
		#include "trainer_Tailoring"
		learn Ebonweave Robe##56026
	step
		#include "trainer_Tailoring"
		learn Moonshroud Robe##56024
	step
		#include "trainer_Tailoring"
		learn Spellweave Robe##56028
	step
		talk Lillehoff##32540
		|tip You must be Exalted with The Sons of Hodir to purchase this Pattern.
		buy Pattern: Glacial Bag##42184 |n
		use Pattern: Glacial Bag##42184
		learn Glacial Bag##56005 |goto The Storm Peaks 66.0,61.4
	step
		#include "trainer_Tailoring"
		learn Deathsilk Belt##75248
	step
		#include "trainer_Tailoring"
		learn Deathsilk Bracers##75249
	step
		This is a drop from the Raid: Ulduar
		collect Pattern: Cord of the White Dawn##45104 |n
		use Pattern: Cord of the White Dawn##45104
		learn Cord of the White Dawn##63205
	step
		This is a drop from the Raid: Ulduar
		collect Pattern: Sash of Ancient Power##45102 |n
		use Pattern: Sash of Ancient Power##45102
		learn Sash of Ancient Power##63203
	step
		This is a drop from the Raid: Ulduar
		collect Pattern: Savior's Slippers##45105 |n
		use Pattern: Savior's Slippers##45105
		learn Savior's Slippers##63206
	step
		talk Prospector Loren##33957
		accept Heroic: Algalon##13818
		turnin Heroic: Algalon##13818
		collect Large Sack of Ulduar Spoils##45878 |n
		use Large Sack of Ulduar Spoils##45878
		collect Pattern: Spellslinger's Slippers##45103 |n
		use Pattern: Spellslinger's Slippers##45103
		learn Spellslinger's Slippers##63204 |goto Ulduar/2 15.6,89.2
	step
		This is a drop from the Raid: Trial of the Crusader
		collect Pattern: Bejeweled Wizard's Bracers##47639 |n
		use Pattern: Bejeweled Wizard's Bracers##47639
		learn Bejeweled Wizard's Bracers##67145
	step
		This is a drop from the Raid: Trial of the Crusader
		collect Pattern: Merlin's Robe##47638 |n
		use Pattern: Merlin's Robe##47638
		learn Merlin's Robe##67146
	step
		This is a drop from the Raid: Trial of the Crusader
		collect Pattern: Royal Moonshroud Bracers##47637 |n
		use Pattern: Royal Moonshroud Bracers##47637
		learn Royal Moonshroud Bracers##67147
	step
		This is a drop from the Raid: Trial of the Crusader
		collect Pattern: Royal Moonshroud Robe##47636 |n
		use Pattern: Royal Moonshroud Robe##47636
		learn Royal Moonshroud Robe##67144
	step
		#include "trainer_Tailoring"
		learn Enchanted Spellthread##75250
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Deathfrost Boots##49954 |n
		use Pattern: Deathfrost Boots##49954
		learn Deathfrost Boots##70551 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Leggings of Woven Death##49953 |n
		use Pattern: Leggings of Woven Death##49953
		learn Leggings of Woven Death##70550 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Revered with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Lightweave Leggings##49955 |n
		use Pattern: Lightweave Leggings##49955
		learn Lightweave Leggings##70552 |goto Icecrown Citadel 36.8,20.6
	step
		talk Alchemist Finklestein##37687
		|tip You must be Honored with The Ashen Verdict to purchase this Pattern.
		buy Pattern: Sandals of Consecration##49956 |n
		use Pattern: Sandals of Consecration##49956
		learn Sandals of Consecration##70553 |goto Icecrown Citadel 36.8,20.6
	step
		#include "trainer_Tailoring"
		learn Deathsilk Boots##75252
	step
		#include "trainer_Tailoring"
		learn Deathsilk Shoulders##75251
	step
		#include "trainer_Tailoring"
		learn Deathsilk Leggings##75254
	step
		#include "trainer_Tailoring"
		learn Deathsilk Gloves##75253
	step
		#include "trainer_Tailoring"
		learn Ghostly Spellthread##75255
	step
		#include "trainer_Tailoring"
		learn Deathsilk Cowl##75256
	step
		#include "trainer_Tailoring"
		learn Deathsilk Robe##75257
	step
		#include "trainer_Tailoring"
		learn Spiritmend Belt##75258
	step
		#include "trainer_Tailoring"
		learn Spiritmend Bracers##75259
	step
		#include "trainer_Tailoring"
		learn Spiritmend Boots##75261
	step
		#include "trainer_Tailoring"
		learn Spiritmend Shoulders##75260
	step
		#include "trainer_Tailoring"
		learn Spiritmend Gloves##75262
	step
		#include "trainer_Tailoring"
		learn Spiritmend Leggings##75263
	step
		#include "trainer_Tailoring"
		learn Otherworldly Bag##75265
	step
		#include "trainer_Tailoring"
		learn Embersilk Bag##75264
	step
		#include "trainer_Tailoring"
		learn Spiritmend Cowl##75266
	step
		#include "trainer_Tailoring"
		learn Spiritmend Robe##75267
	step
		#include "trainer_Tailoring"
		learn Vicious Embersilk Cape##99537
	step
		#include "trainer_Tailoring"
		learn Hyjal Expedition Bag##75268
	step
		Reaching Tailoring 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Darkglow Embroidery##75175
	step
		Reaching Tailoring 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Lightweave Embroidery##75172
	step
		Reaching Tailoring 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Master's Spellthread##75154
	step
		Reaching Tailoring 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Sanctified Spellthread##75155
	step
		Reaching Tailoring 500 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Swordguard Embroidery##75178
	step
		#include "trainer_Tailoring"
		learn Vicious Embersilk Bracers##75270
	step
		#include "trainer_Tailoring"
		learn Vicious Fireweave Bracers##75290
	step
		talk Borya##3364
		buy Pattern: Black Embersilk Gown##68199 |n
		use Pattern: Black Embersilk Gown##68199
		learn Black Embersilk Gown##75288 |goto Orgrimmar 60.6,58.6
	step
		#include "trainer_Tailoring"
		learn Dream of Azshara##75146
	step
		#include "trainer_Tailoring"
		learn Dream of Hyjal##75144
	step
		#include "trainer_Tailoring"
		learn Bolt of Windwool Cloth##125551
	step
		This is a random world drop. This Pattern can drop off any creature in World of Warcraft
		collect Pattern: High Society Top Hat##67541 |n
		use Pattern: High Society Top Hat##67541
		learn High Society Top Hat##75289
	step
		#include "trainer_Tailoring"
		learn Vicious Embersilk Shoulders##75291
	step
		#include "trainer_Tailoring"
		learn Dream of Deepholm##75142
	step
		#include "trainer_Tailoring"
		learn Vicious Embersilk Belt##75293
	step
		#include "trainer_Tailoring"
		learn Vicious Fireweave Belt##75269
	step
		#include "trainer_Tailoring"
		learn Vicious Fireweave Shoulders##75292
	step
		#include "trainer_Tailoring"
		learn Dream of Ragnaros##75145
	step
		talk Ayla Shadowstorm##53881
		buy Pattern: Luxurious Silk Gem Bag##70176 |n
		use Pattern: Luxurious Silk Gem Bag##70176
		learn Luxurious Silk Gem Bag##100585 |goto Molten Front 44.8,86.6
	step
		#include "trainer_Tailoring"
		learn Bipsi's Gloves##134585
	step
		#include "trainer_Tailoring"
		learn Vicious Embersilk Gloves##75295
	step
		#include "trainer_Tailoring"
		learn Vicious Fireweave Boots##75294
	step
		#include "trainer_Tailoring"
		learn Dream of Skywall##75141
	step
		#include "trainer_Tailoring"
		learn Vicious Embersilk Boots##75297
	step
		#include "trainer_Tailoring"
		learn Vicious Fireweave Gloves##75296
	step
		This is a drop from the Raid: Firelands
		collect Pattern: Boots of the Black Flame##69976 |n
		use Pattern: Boots of the Black Flame##69976
		learn Boots of the Black Flame##99460
	step
		This is a drop from the Raid: Firelands
		collect Pattern: Don Tayo's Inferno Mittens##69966 |n
		use Pattern: Don Tayo's Inferno Mittens##69966
		learn Don Tayo's Inferno Mittens##99449
	step
		This is a drop from the Raid: Firelands
		collect Pattern: Endless Dream Walkers##69975 |n
		use Pattern: Endless Dream Walkers##69975
		learn Endless Dream Walkers##99459
	step
		This is a drop from the Raid: Firelands
		collect Pattern: Grips of Altered Reality##69965 |n
		use Pattern: Grips of Altered Reality##69965
		learn Grips of Altered Reality##99448
	step
		talk Borya##3364
		buy Pattern: Belt of the Depths##54601 |n
		use Pattern: Belt of the Depths##54601
		learn Belt of the Depths##75298 |goto Orgrimmar 60.6,58.6
	step
		This is a drop from the Raid: Dragon Soul
		collect Pattern: Bracers of Unconquered Power##72004 |n
		use Pattern: Bracers of Unconquered Power##72004
		learn Bracers of Unconquered Power##101923
	step
		talk Borya##3364
		buy Pattern: Breeches of Mended Nightmares##54603 |n
		use Pattern: Breeches of Mended Nightmares##54603
		learn Breeches of Mended Nightmares##75300 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Dreamless Belt##54602 |n
		use Pattern: Dreamless Belt##54602
		learn Dreamless Belt##75299 |goto Orgrimmar 60.6,58.6
	step
		This is a drop from the Raid: Dragon Soul
		collect Pattern: Dreamwraps of the Light##72003 |n
		use Pattern: Dreamwraps of the Light##72003
		learn Dreamwraps of the Light##101922
	step
		talk Borya##3364
		buy Pattern: Flame-Ascended Pantaloons##54604 |n
		use Pattern: Flame-Ascended Pantaloons##54604
		learn Flame-Ascended Pantaloons##75301 |goto Orgrimmar 60.6,58.6
	step
		This is a drop from the Raid: Dragon Soul
		collect Pattern: Lavaquake Legwraps##72002 |n
		use Pattern: Lavaquake Legwraps##72002
		learn Lavaquake Legwraps##101921
	step
		talk Borya##3364
		buy Pattern: Powerful Enchanted Spellthread##54599 |n
		use Pattern: Powerful Enchanted Spellthread##54599
		learn Powerful Enchanted Spellthread##75309 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Powerful Ghostly Spellthread##54600 |n
		use Pattern: Powerful Ghostly Spellthread##54600
		learn Powerful Ghostly Spellthread##75310 |goto Orgrimmar 60.6,58.6
	step
		This is a drop from the Raid: Dragon Soul
		collect Pattern: World Mender's Pants##72000 |n
		use Pattern: World Mender's Pants##72000
		learn World Mender's Pants##101920
	step
		#include "trainer_Tailoring"
		learn Dream of Destruction##94743
	step
		talk Borya##3364
		buy Pattern: Illusionary Bag##54605 |n
		use Pattern: Illusionary Bag##54605
		learn Illusionary Bag##75308 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Vicious Embersilk Cowl##54593 |n
		use Pattern: Vicious Embersilk Cowl##54593
		learn Vicious Embersilk Cowl##75306 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Vicious Embersilk Robe##54595 |n
		use Pattern: Vicious Embersilk Robe##54595
		learn Vicious Embersilk Pants##75307 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Vicious Fireweave Cowl##54596 |n
		use Pattern: Vicious Fireweave Cowl##54596
		learn Vicious Fireweave Cowl##75304 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Vicious Fireweave Pants##54597 |n
		use Pattern: Vicious Fireweave Pants##54597
		learn Vicious Fireweave Pants##75302 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Vicious Fireweave Robe##54598 |n
		use Pattern: Vicious Fireweave Robe##54598
		learn Vicious Fireweave Robe##75303 |goto Orgrimmar 60.6,58.6
	step
		talk Borya##3364
		buy Pattern: Vicious Embersilk Pants##54594 |n
		use Pattern: Vicious Embersilk Pants##54594
		learn Vicious Embersilk Pants##75307 |goto Orgrimmar 60.6,58.6
	step
		#include "trainer_Tailoring"
		learn Windwool Bracers##125528
	step
		#include "trainer_Tailoring"
		learn Windwool Gloves##125526
	step
		#include "trainer_Tailoring"
		learn Pearlescent Spellthread##125552
	step
		#include "trainer_Tailoring"
		learn Windwool Belt##125530
	step
		#include "trainer_Tailoring"
		learn Windwool Shoulders##125524
	step
		#include "trainer_Tailoring"
		learn Cerulean Spellthread##125553
	step
		#include "trainer_Tailoring"
		learn Windwool Boots##125529
	step
		#include "trainer_Tailoring"
		learn Windwool Pants##125527
	step
		Reaching Tailoring 550 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Darkglow Embroidery##125482
	step
		Reaching Tailoring 550 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Lightweave Embroidery##125481
	step
		Reaching Tailoring 550 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Master's Spellthread##125496
	step
		Reaching Tailoring 550 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Sanctified Spellthread##125497
	step
		Reaching Tailoring 550 teaches you this rank2 of this Pattern
		|tip You must have trained rank 1 of this Pattern from the trainer first.
		learn Swordguard Embroidery##125483
	step
		#include "trainer_Tailoring"
		learn Imperial Silk##125557
	step
		#include "trainer_Tailoring"
		learn Windwool Hood##125523
	step
		#include "trainer_Tailoring"
		learn Windwool Tunic##125525
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Cuffs##86365 |n
		use Pattern: Contender's Satin Cuffs##86365
		learn Contender's Satin Cuffs##125544 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Cuffs##86357 |n
		use Pattern: Contender's Silk Cuffs##86357
		learn Contender's Silk Cuffs##125536 |goto Shrine of Two Moons 32.8,53.8
	step
		#include "trainer_Tailoring"
		learn Song of Harmony##130325
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Belt##86367 |n
		use Pattern: Contender's Satin Belt##86367
		learn Contender's Satin Belt##125546 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Footwraps##86366 |n
		use Pattern: Contender's Satin Footwraps##86366
		learn Contender's Satin Footwraps##125545 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Handwraps##86363 |n
		use Pattern: Contender's Satin Handwraps##86363
		learn Contender's Satin Handwraps##125542 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Pants##86364 |n
		use Pattern: Contender's Satin Pants##86364
		learn Contender's Satin Pants##125543 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Belt##86359 |n
		use Pattern: Contender's Silk Belt##86359
		learn Contender's Silk Belt##125538 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Footwraps##86358 |n
		use Pattern: Contender's Silk Footwraps##86358
		learn Contender's Silk Footwraps##125537 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Handwraps##86355 |n
		use Pattern: Contender's Silk Handwraps##86355
		learn Contender's Silk Handwraps##125534 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Pants##86356 |n
		use Pattern: Contender's Silk Pants##86356
		learn Contender's Silk Pants##125535 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Amice##86361 |n
		use Pattern: Contender's Satin Amice##86361
		learn Contender's Satin Amice##125540 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Amice##86353 |n
		use Pattern: Contender's Silk Amice##86353
		learn Contender's Silk Amice##125532 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Greater Cerulean Spellthread##86376 |n
		use Pattern: Greater Cerulean Spellthread##86376
		learn Greater Cerulean Spellthread##125555 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with Golden Lotus to purchase this Pattern.
		buy Pattern: Greater Pearlescent Spellthread##86375 |n
		use Pattern: Greater Pearlescent Spellthread##86375
		learn Greater Pearlescent Spellthread##12554 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Cowl##86360 |n
		use Pattern: Contender's Satin Cowl##86360
		learn Contender's Satin Cowl##125539 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Satin Raiment##86362 |n
		use Pattern: Contender's Satin Raiment##86362
		learn Contender's Satin Raiment##125541 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Cowl##86352 |n
		use Pattern: Contender's Silk Cowl##86352
		learn Contender's Silk Cowl##125531 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Contender's Silk Raiment##86354 |n
		use Pattern: Contender's Silk Raiment##86354
		learn Contender's Silk Raiment##125533 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with Golden Lotus to purchase this Pattern.
		buy Pattern: Gloves of Creation##86371 |n
		use Pattern: Gloves of Creation##86371
		learn Gloves of Creation##12550 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		This is a random drop from the Raids in the MoP Expansion
		collect Pattern: Imperial Silk Gloves##86380 |n
		use Pattern: Imperial Silk Gloves##86380
		learn Imperial Silk Gloves##125559
	step
		This is a random drop from the Raids in the MoP Expansion
		collect Pattern: Legacy of the Emperor##86381 |n
		use Pattern: Legacy of the Emperor##86381
		learn Legacy of the Emperor##125560
	step
		This is a random drop from the Raids in the MoP Expansion
		collect Pattern: Robe of Eternal Rule##86379 |n
		use Pattern: Robe of Eternal Rule##86379
		learn Robe of Eternal Rule##12555
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with Golden Lotus to purchase this Pattern.
		buy Pattern: Robes of Creation##86370 |n
		use Pattern: Robes of Creation##86370
		learn Robes of Creation##125549 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Esha the Loommaiden##64051
		buy Pattern: Royal Satchel##86377 |n
		use Pattern: Royal Satchel##86377
		learn Royal Satchel##12556 |goto Shrine of Two Moons 32.8,53.8
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with Golden Lotus to purchase this Pattern.
		buy Pattern: Spelltwister's Gloves##86369 |n
		use Pattern: Spelltwister's Gloves##86369
		learn Spelltwister's Gloves##125548 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		talk Jaluu the Generous##59908
		|tip You must be Honored with Golden Lotus to purchase this Pattern.
		buy Pattern: Spelltwister's Grand Robe##86368 |n
		use Pattern: Spelltwister's Grand Robe##86368
		learn Spelltwister's Grand Robe##125547 |goto Vale of Eternal Blossoms 74.2,42.6
	step
		This is a random drop from the Raids in the MoP Expansion
		collect Pattern: Touch of the Light##86382 |n
		use Pattern: Touch of the Light##86382 
		learn Touch of the Light##125561
]])

ZygorGuidesViewer:RegisterInclude("Tailoring_600-700",[[
// ----------
// 600-700
// ----------
// TRAIN: Draenor Master Tailoring
	step
		Before you continue, open your Tailoring window to detect your profession |cast Tailoring##3908
		skillmax Tailoring,600
	step
		#include "H_Garrison_ArchitectTable"
		Select the _Small_ tab at the top
		Drag _Tailoring Emporium_ to a _Small Plot_
		Build your Tailoring Emporium |havebuilding Tailoring
	step
		#include "H_Garrison_SmallBuilding",action="talk Warra the Weaver##79864",building="Tailoring"
		buy Draenor Tailoring##115357 |condition skillmax("Tailoring") >= 700 or itemcount(115357) >= 1
	step
		use Draenor Tailoring##115357
		learn Secrets of Draenor Tailoring##176058 |condition skillmax("Tailoring") >= 700
	step
		map Spires of Arak/0 
		path follow strict; loop on; ants curved;dist 60
		path	44.8,65.1	44.7,67.7	45.8,68.6
		path	47.8,73.5	49.9,77.1	51.6,77.6
		path	52.5,77.3	51.0,75.8	49.2,74.8
		path	48.4,73.4	48.1,70.0	46.9,68.2
		path	46.0,66.6
		Kill _Bloodmane enemies_ along the path
		|tip They look like golden cats walking on two legs.
		collect 1025 Sumptuous Fur##111557 |condition skill("Tailoring")>=700
		|tip You can also buy these materials from the Auction House.
		modelnpc Bloodmane Bonereaver##82947
		modelnpc Bloodmane Earthbinder##85897
		modelnpc Bloodmane Hunter##82938
		modelnpc Bloodmane Longclaw##85900
		modelnpc Bloodmane Shortfang##82946
	step
		#include "H_Garrison_SmallBuilding",action="talk Warra the Weaver##79864",building="Tailoring"
		accept Your First Tailoring Work Order##37575 |condition skill("Tailoring")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Turga##79863",building="Tailoring"
		Tell her _"I would like to place a work order"_ |q Your First Tailoring Work Order##37575/1
	step
		#include "H_Garrison_SmallBuilding",action="click Tailoring Work Order",building="Tailoring"
		Collect 1 Tailoring Work Order |q Your First Tailoring Work Order##37575/2
	step
		#include "H_Garrison_SmallBuilding",action="talk Turga##79863",building="Tailoring"
		turnin Your First Tailoring Work Order##37575
	step
		create 1 Secrets of Draenor Tailoring##176058,Tailoring,1 total |n
		collect 1 Secrets of Draenor Tailoring##118722 |condition skill("Tailoring")>=700
	step
		#include "H_Garrison_SmallBuilding",action="talk Warra the Weaver##79864",building="Tailoring"
		buy 1 Recipe: Hexweave Embroidery##114852 |condition _G.IsSpellKnown(168836) or itemcount(114852) >= 1 or skill("Tailoring")>=700
	step
		use Recipe: Hexweave Embroidery##114852
		learn Hexweave Embroidery##168836 |condition skill("Tailoring")>=700
	step
		create Hexweave Embroidery##168836,Tailoring,700
	step
		Congratulations, you have reached level 700 in Tailoring!
]])