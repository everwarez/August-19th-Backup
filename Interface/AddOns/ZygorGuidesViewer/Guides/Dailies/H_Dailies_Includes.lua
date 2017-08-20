if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end



---------------------------------------------------------------------------------------
--Dailies
---------------------------------------------------------------------------------------
-- Outland

ZygorGuidesViewer:RegisterInclude("H_SSO_PreQuest_with_Dailies", [[
	label "start"
		talk Exarch Nasuun##24932
		accept Maintaining the Sunwell Portal##11514 |goto Shattrath City 49.1,42.5
	step
		talk Lord Torvos##25140
		accept Sunfury Attack Plans##11877 |goto Shattrath City 62.8,36.0
	step
		talk Emissary Mordin##19202
		accept Gaining the Advantage##11875 |goto 62.8,35.6
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		talk Harbinger Haronem##19475
		accept The Multiphase Survey##11880 |goto Shattrath City,61.7,52.1
	step
		kill Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
		Skin their corpses in order to collect the Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto Nagrand,50.3,40.4
		only if skill("Skinning")>=300
	step
		Mine inside the cave and collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1 |goto 40.8,31.6
		You can check [Nagrand,50.0,56.6] for more Mining Nodes.
		only if skill("Mining")>=300
	step
		Click the Multiphase Spectographic Goggles to wear them. |use Multiphase Spectrographic Goggles##35233
		Get the Multiphase Goggles buff |havebuff 135992 |goto Nagrand 38.3,65.3 --Spell_Magic_LesserInvisibilty
		|tip You have to be in the Nagrand zone to correctly get the buff.
		|only if havequest(11880)
	step
		All around Nagrand:
		Gather _Felweed_ and _Draming Glory_ to collect Nether Residue.
		collect 8 Nether Residue##35229 |q 11875/1
		only if skill("Herbalism")>=300
	step
		Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
		Use your Multiphase Spectrographic Goggles on the Orbs. |use Multiphase Spectrographic Goggles##35233
		goal 6 Multiphase Readings Taken |q 11880/1 |goto Nagrand,38.3,65.3
	step
		kill Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
		collect 1 Bash'ir Phasing Device##34248 |n
		Use the Bash'ir Phasing Device. |use Bash'ir Phasing Device##34248
		Become Out of Phase |havebuff Interface\Icons\Ability_Mage_Invisibility
		click Smuggled Mana Cell##7257
		Collect 10 Smuggled Mana Cell |q 11514/1 |goto Blade's Edge Mountains,54.0,18.1
	step
		kill Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
		collect Sunfury Attack Plans |q 11877/1 |goto Netherstorm,25.9,66.8
	step
		talk Lord Torvos##25140
		turnin Sunfury Attack Plans##11877 |goto Shattrath City,62.8,36.0
	step
		talk Emissary Mordin##19202
		turnin Gaining the Advantage##11875 |goto 62.8,35.6
	step
		talk Harbinger Haronem##19475
		turnin The Multiphas Survey##11880 |goto 61.6,52.2
	step
		talk Exarch Nasuun##24932
		turnin Maintaining the Sunwell Portal##11514 |goto 49.1,42.5
	step
		goto Shattrath City,48.6,42.0 |n
		Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
	step
		talk Astromancer Darnarian##25133
		accept Know Your Ley Lines##11547 |goto Isle of Quel'Danas,47.5,35.4
	step
		talk Battlemage Arynna##25057
		accept The Air Strikes Must Continue##11533 |goto 47.5,35.1
	step
		talk Harbinger Inuuro##25061
		accept The Battle Must Go On##11537 |goto 47.6,35.1
	step
		talk Anchorite Ayuri##25112
		accept Your Continued Support##11548 |goto 48.8,37.2
		This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		turnin Your Continued Support##11548 |goto 48.8,37.2
	step
		talk Vindicator Kaalan##25108
		accept Keeping the Enemy at Bay##11543 |goto 50.6,39.0
	step
		talk Magister Ilastar##25069
		accept Crush the Dawnblade##11540 |goto 49.3,40.4
	step
		talk Smith Hauthaa##25046
		accept Don't Stop Now....##11536 |goto 50.6,40.8
		accept Ata'mal Armaments##11544 |goto 50.6,40.8
	step
		talk Mar'nah##24975
		accept Rediscovering Your Roots##11521 |goto 51.5,32.5
		accept Open for Business##11546 |goto 51.5,32.5
	step
		talk Captain Valindria##25088
		accept Disrupt the Greengill Coast##11541 |goto 53.8,34.3
	step
		talk Captain Theris Dawnhearth##24967
		accept Arm the Wards!##11523 |goto 47.5,30.5
		accept The Missing Magistrix##11526 |goto 47.5,30.5
	step
		talk Vindicator Xayann##24965
		accept Further Conversions##11525 |goto 47.1,30.7
	step
		kill Wretched Fiend##24966+
		collect 4 Mana Remnants##34338 |q 11523 |c |goto Isle of Quel'Danas,44.3,28.5
		kill Erratic Sentry##24972+ |n
		Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
		goal 5 Converted Sentry Deployed |q 11525/1 |goto Isle of Quel'Danas,44.3,28.5
		click Bloodberry Bush##28
		collect 5 Bloodberry |q 11546/1  |goto Isle of Quel'Danas,44.3,28.5
		|tip They can be found all around this area on the ground.
	step
		kill 6 Dawnblade Summoner |q 11540/1 |goto Isle of Quel'Danas,42.1,35.7
		kill 6 Dawnblade Blood Knight |q 11540/2 |goto Isle of Quel'Danas,42.1,35.7
		kill 3 Dawnblade Marksman |q 11540/3 |goto Isle of Quel'Danas,42.1,35.7
		Use your Astromancer's Crystal to sample the Bloodcrystal's density. |use Astromancer's Crystal##34533
		Bloodcrystal Reading Taken |q 11547/3 |goto Isle of Quel'Danas,42.1,35.7
	step
		Use the Mana Remnants to Energize the Crystal Ward. |use Mana Remnants##34338
		Energize a Crystal Ward |q 11523/1 |goto Isle of Quel'Danas,46.5,35.5
	stickystart "dawnbladereserve"
	step
		talk Ayren Cloudbreaker##25059
		Tell him you Need to Intercept the Dawnblade Reinforcements.
		Use your Flaming Oil to set fire to the ships sails as you fly around. |use Flaming Oil##34489
		Sin'loren sails burned |q 11543/1 |goto 48.5,25.2
		Bloodoath sails burned |q 11543/2 |goto 48.5,25.2
		Dawnchaser sails burned |q 11543/3 |goto 48.5,25.2
	step "dawnbladereserve"
		kill 6 Dawnblade Reservist##25087+ |q 11543/4
		You can find more at [Isle of Quel'Danas,51.1,9.7]
		Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
	step
		talk Unrestrained Dragonhawk##25236 |goto Isle of Quel'Danas,52.4,17.4
		Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
	step
		talk Ayren Cloudbreaker##25059
		Tell him you've been ordered to undertake an airstrike.
		Use your Arcane Charges on mobs once you get to the Dead Scar. |use Arcane Charges##34475
		kill 2 Pit Overlord##25031+ |q 11533/1 |goto Isle of Quel'Danas,48.5,25.2
		kill 3 Eredar Sorcerer##25033+ |q 11533/2 |goto Isle of Quel'Danas,48.5,25.2
		kill 12 Wrath Enforcer##25030+ |q 11533/3 |goto Isle of Quel'Danas,48.5,25.2
	step
		kill Emissary of Hate##25003 |n
		Use your Shattered Sun Banner on his corpse. |use Shattered Sun Banner##34414
		Impale the Emissary of Hate |q 11537/1 |goto Isle of Quel'Danas,48.5,43.7
		kill 6 Burning Legion Demon |q 11537/2 |goto Isle of Quel'Danas,48.5,43.7
		Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
		Portal Reading Taken |q 11547/1 |goto Isle of Quel'Danas,48.5,43.7
	step
		Take this path back to the shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
	step
		kill Darkspine Myrmidon##25060+
		collect Darkspine Chest Key##34477 |n
		kill Darkspine Siren##25073+
		collect Orb of Murloc Control##34483 |n
		Use your Orbs of Murloc Control on Greengill Slaves along the shore. |use Orb of Murloc Control##34483
		Free 10 Greengill Slaves |q 11541/1 |goto Isle of Quel'Danas,64.1,49.9
		Use your Darkspine Chest Keys on the Darkspine Ore Chest.
		collect 3 Darkspine Iron Ore |q 11536/1 |goto Isle of Quel'Danas,64.1,49.9
	step
		Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
		Shrine Reading Taken |q 11547/2 |goto Isle of Quel'Danas,61.1,62.0
	step
		talk Mar'nah##24975
		turnin Open for Business##11546 |goto 51.5,32.5
	step
		talk Captain Valindria##25088
		turnin Disrupt the Greengill Coast##11541 |goto Isle of Quel'Danas,53.8,34.3
	step
		talk Smith Hauthaa##25046
		turnin Don't Stop Now....##11536 |goto 50.6,40.7
	step
		talk Vindicator Kaalan##25108
		turnin Keeping the Enemy at Bay##11543 |goto 50.6,39.0
	step
		talk Magister Ilastar##25069
		turnin Crush the Dawnblade##11540 |goto 49.3,40.4
	step
		talk Astromancer Darnarian##25133
		turnin Know Your Ley Lines##11547 |goto 47.5,35.3
	step
		talk Battlemage Arynna##25057
		turnin The Air Strikes Must Continue##11533 |goto 47.5,35.1
	step
		talk Harbinger Inuuro##25061
		turnin The Battle Must Go On##11537 |goto 47.6,35.1
	step
		talk Captain Theris Dawnhearth##24967
		turnin Arm the Wards!##11523 |goto 47.5,30.5
	step
		talk Vindicator Xayann##24965
		turnin Further Conversions##11525 |goto 47.1,30.7
	step
		|use Captured Legion Scroll##34420 |goto Isle of Quel'Danas,48.5,44.7
		Teleport to Hellfire Peninsula |goto Hellfire Peninsula,58.6,18.7,0.5 |noway|c
	step
		talk Magistrix Seyla##24937
		turnin The Missing Magistrix##11526 |goto Hellfire Peninsula,58.2,17.6
		accept Blood for Blood##11515 |goto Hellfire Peninsula,58.2,17.6
		accept Blast the Gateway##11516 |goto Hellfire Peninsula,58.2,17.6
	step
		kill Wrath Herald##24919+
		collect 4 Demonic Blood##34259 |goto Hellfire Peninsula,66.4,20.1
		use the Sizzling Embers to summon a Living Flare. |use Sizzling Embers##34253
		kill Incandescent Fel Spark##22323+ |n
		Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7].
		Legion Gateway Destroyed |q 11516/1 
	step
		Use your Fel Siphon on Felblood Initiates. |use Fel Siphon##34257
		kill 4 Emaciated Felblood##24918 |q 11515/1 |goto 59.9,21.0
	step
		talk Magistrix Seyla##24937
		turnin Blast the Gateway##11516 |goto Hellfire Peninsula,58.2,17.6
		turnin Blood for Blood##11515 |goto Hellfire Peninsula,58.2,17.6
	step
		kill Razorthorn Flayer##24920+
		collect Razorthorn Flayer Gland##34255 |q 11521 |n
		Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
		Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
		collect 5 Razorthorn Root##34254 |q 11521/1 |goto Terokkar Forest,59.7,10.3
	step
		kill Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
		collect 5 Ata'mal Armament##34500 |q 11544 |goto Shadowmoon Valley,68.5,37.5
	step
		goto Shattrath City,48.6,42.0 |n
		Click the Shattrath Portal to Isle of Qual'Danas. |goto Isle of Quel'Danas |noway|c
	step
		talk Mar'nah##24975
		turnin Rediscovering Your Roots##11521 |goto Isle of Quel'Danas,51.5,32.5
	step
		Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
		Cleanse 5 Ata'mal Metals |q 11544/1 |goto 50.6,40.7
	step
		talk Smith Hauthaa##25046
		turnin Ata'mal Armaments##11544 |goto 50.6,40.7
	step
		talk Eldara Dawnrunner##25032
		accept A Friend in the Frontlines##11554 |instant |goto Isle of Quel'Danas,47.3,30.7
		only if rep ("Shattered Sun Offensive")==Friendly
	step
		talk Eldara Dawnrunner##25032
		accept Honored By Your Allies##11555 |instant |goto Isle of Quel'Danas,47.3,30.7
		only if rep ("Shattered Sun Offensive")==Honored
	step
		talk Eldara Dawnrunner##25032
		accept Revered in the Field of Battle##11556 |instant |goto Isle of Quel'Danas,47.3,30.7
		only if rep ("Shattered Sun Offensive")==Revered
	step
		talk Eldara Dawnrunner##25032
		accept Exalted Among All Combatants##11557 |instant |goto Isle of Quel'Danas,47.3,30.7
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		talk Anchorite Kairthos##25163
		accept A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas,51.2,33.1
		|tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		talk Anchorite Kairthos##25163
		_WARNING_, by turning in this quest, you will spend _1000 gold!_
		turnin A Magnanimous Benefactor##11549 |goto Isle of Quel'Danas,51.2,33.1
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		Congratulations, you have earned the title _of the Shattered Sun_!
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		You have reached the end of the dailies for today.
		Click here to go back to the beginning of the dailies. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterInclude("H_Therazane_PreQuest", [[
		Click the Warchief's Command Board
		|tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
		accept Warchief's Command: Deepholm!##27722 |goto Orgrimmar,49.7,76.5
	step
		talk Farseer Krogar##45244
		turnin The War Has Many Fronts##27442 |goto 50.5,38.4
		turnin Warchief's Command: Deepholm!##27722 |goto 50.5,38.4
		accept The Maelstrom##27203 |goto 50.5,38.4
	step		
		talk Thrall##45042
		turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
		accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
	step
		Click the Wyvern |goto 32.5,52.0
		|tip It looks like a wind rider flying in place.
		You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
	step
		talk Maruut Stonebinder##43065
		turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
		accept Gunship Down##26245 |goto Deepholm,49.6,53.0
	step
		talk Seer Kormo##43397
		accept Elemental Energy##27136 |goto 49.7,52.9
		accept The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Earthcaller Yevaa##42573
		accept Where's Goldmine?##26409 |goto 49.5,53.3
	step
		talk Caretaker Nuunwa##45300
		home Temple of Earth |goto 49.2,51.9
	step
		talk Initiate Goldmine##42574
		turnin Where's Goldmine?##26409 |goto 46.5,57.3
		accept Explosive Bonding Compound##26410 |goto 46.5,57.3
		accept Something that Burns##27135 |goto 46.5,57.3
	step
		kill Rockslice Flayer##42606+
		collect 5 Quartzite Resin |q 26410/1 |goto 45.5,57.9
	step
		talk Initiate Goldmine##42574
		turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
	step
		Use your Depleted Totem |use Depleted Totem##60835
		kill Lodestone Elemental##43258+, Energized Geode##43254+ 
		|tip Kill them next to your Depleted Totems.
		Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
	step
		Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
		kill Magmatooth##45099
		collect The Burning Heart |q 27135/1 |goto 52.0,58.9
	step
		talk Seer Kormo##43397
		turnin Elemental Energy##27136 |goto 49.7,52.9
	step
		talk Initiate Goldmine##42574
		turnin Something that Burns##27135 |goto 46.5,57.3
		accept Apply and Flash Dry##26411 |goto 46.5,57.3
	step
		Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
		|tip He's laying on the ground next to Initiate Goldmine.
		Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
	step
		talk Initiate Goldmine##42574
		turnin Apply and Flash Dry##26411 |goto 46.5,57.3
		accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
	step
		Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
	step
		talk Earthcaller Yevaa##42573
		turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
		accept To Stonehearth's Aid##26484 |goto 49.5,53.3
	stickystart "deepstoneelemental"
	step
		Click the Slain Cannoneer 
		|tip It looks like a dead orc on the deck of the crashed zeppelin, laying next to a pile of cannon balls and a cannon.
		Receive the Second Clue |q 26245/2 |goto 56.1,74.2
	step		
		Click Captain Skullshatter 
		|tip He's a dead orc laying on the ground next to a small round table in a side room on the deck of the crashed zeppelin.
		Receive the First Clue |q 26245/1 |goto 53.5,73.8
	step
		Click the Captain's Log 
		|tip It's a gray book laying on the small round table next to Captain Skullshatter.
		accept Captain's Log##26246 |goto 53.6,73.8
	step
		Click the Unexploded Artillery Shell 
		|tip It looks like a metal casing, or bullet type of object laying on the ground underneath the crashed zeppelin.  You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
		Receive the Third Clue |q 26245/3 |goto 56.7,76.4
	step "deepstoneelemental"
		kill 5 Deepstone Elemental |q 26244/1 |goto 55.9,74.9
	step
		talk Maruut Stonebinder##43065
		turnin Gunship Down##26245 |goto 49.6,52.9
		turnin Captain's Log##26246 |goto 49.6,52.9
	step
		talk Seer Kormo##43397
		turnin The Earth Claims All##26244 |goto 49.7,52.9
	step
		talk Maruut Stonebinder##43065
		accept Diplomacy First##26247 |goto 49.6,53.0
	step
		talk Stormcaller Mylra##42684
		turnin Diplomacy First##26247 |goto 62.4,52.6
		accept All Our Friends Are Dead##26248 |goto 62.4,52.6
		accept The Admiral's Cabin##26249 |goto 62.4,52.6
	step
		All around on this airship:
		Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 
		|tip They look like dead Alliance soldiers all over this airship.
		Receive 6 Slain Crew Member Information |q 26248/1
	step
		Enter the doorway on the main deck of the airship:
		talk First Mate Moody##43082
		turnin The Admiral's Cabin##26249
		accept Without a Captain or Crew##26427
	step
		Leave through the doorway and immediately turn right:
		Click the Bottle of Whiskey 
		|tip It's a yellow bottle sitting on the edge of a small life boat on the side of the airship.
		collect Bottle of Whiskey |q 26427/1
	step
		All around on the deck of the airship:
		Click a Spool of Rope 
		|tip They are coiled up ropes laying all around on the deck of the airship.
		collect Spool of Rope |q 26427/2
	step
		Enter the doorway on the main deck of the airship:
		talk First Mate Moody##43082
		turnin Without a Captain or Crew##26427
	step
		Go to the very top of the airship:
		talk Stormcaller Mylra##42684
		turnin All Our Friends Are Dead##26248
		accept Take No Prisoners##26251
		accept On Second Thought, Take One Prisoner##26250
	stickystart "twisaboteur"
	step
		Go onto the main deck of the ship and go down the stairs to the deck below:
		Fight Mor'norokk the Hateful until he surrenders
		|tip He's downstairs in the airship, in the very back of the first level you come to.
		talk Mor'norokk the Hateful##42801
		Subdue Mor'norokk the Hateful |q 26250/1
	step "twisaboteur"
		All around on this lower deck of the airship:
		kill 6 Twilight Saboteur |q 26251/1
	step
		Go to the very top of the airship:
		talk Stormcaller Mylra##42684
		turnin Take No Prisoners##26251
		turnin On Second Thought, Take One Prisoner##26250
		accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		Click Stormbeak
		|tip It's a gryphon flying in place next to the airship.
		Interrogate Mok'norrok |q 26254/1
	step
		When you land on the airship again:
		talk Stormcaller Mylra##42684
		turnin Some Spraining to Do##26254
		accept Return to the Temple of Earth##26255
	step
		talk Maruut Stonebinder##43065
		turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
		accept Deathwing's Fall##26258 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		accept Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		Go to this spot
		Reach Deathwing's Fall |q 26258/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Deathwing's Fall##26258 |goto 59.4,58.2
		accept Bleed the Bloodshaper##26256 |goto 59.4,58.2
	stickystart "livingblood"
	step
		kill Twilight Bloodshaper##43218+
		collect Twilight Orders |q 26256/1
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Bleed the Bloodshaper##26256 |goto 61.5,60.6
		accept Question the Slaves##26261 |goto 61.5,60.6
	step
		Click the Slavemaster's Coffer 
		|tip It looks like a small wooden chest on the ground inside a red tent.
		collect Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
	step "livingblood"
		kill Living Blood##43123+
		collect 5 Blood of Neltharion |q 26259/1 |goto 61.2,60.1
	step
		Click Ball and Chains 
		|tip They are attached to the feet of the Enslaved Miners around this area.
		Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Question the Slaves##26261 |goto 64.5,65.5
		accept The Forgemaster's Log##26260 |goto 64.5,65.5
	step
		Click the Forgemaster's Log 
		|tip It's a blue-ish book laying on the floor at the very top of this tower.
		turnin The Forgemaster's Log##26260 |goto 63.7,55.4
		accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
	step
		Reach Upper Silvermarsh |q 27007/1 |goto 70.6,61.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Silvermarsh Rendezvous##27007
		accept Quicksilver Submersion##27010
	step
		Click the Trogg Crate 
		|tip It's a brown box sitting next to the water.
		collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
		kill Murkstone Trogg##44936
		collect Maziel's Research##60816 |n
		Click Maziel's Research in your bags |use Maziel's Research##60816
		accept Twilight Research##27100
	step
		Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		Watch the dialogue
		Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Quicksilver Submersion##27010 |goto 74.9,64.8
		accept The Twilight Overlook##27061 |goto 74.9,64.8
	step
		kill Mercurial Ooze##43158+
		collect 4 Twilight Research Notes |q 27100/1 |goto 72.5,65.2
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Twilight Research##27100 |goto 72.5,65.2
		accept Maziel's Revelation##27101 |goto 72.5,65.2
	step
		Click Maziel's Journal 
		|tip It looks like a small black book laying on the ground on this tiny island in a pond, next to a big rock.
		turnin Maziel's Revelation##27101 |goto 67.2,70.2
		accept Maziel's Ascendancy##27102 |goto 67.2,70.2
	step
		Enter the cave |goto 69.5,68.0,0.5 < 15
		kill Maziel |q 27102/1 |goto 72.8,62.0
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Maziel's Ascendancy##27102 |goto 72.8,62.0
	step
		Leave the cave |goto 69.5,68.0,0.5 < 15
		talk Stormcaller Mylra##44010
		turnin The Twilight Overlook##27061 |goto 64.5,82.1
		accept Big Game, Big Bait##26766 |goto 64.5,82.1
		accept To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Scalesworn Cultist##44221+
		collect Twilight Snare |q 26768/1 |goto 68.2,77.9
	step
		talk Stormcaller Mylra##44010
		turnin To Catch a Dragon##26768 |goto 64.5,82.1
	step
		kill Jadecrest Basilisk##43981+
		Use Mylra's Knife on Jadefire Basilisk corpses |use Mylra's Knife##60382
		collect 5 Side of Basilisk Meat |q 26766/1 |goto 59.9,83.6
	step
		talk Stormcaller Mylra##44010
		turnin Big Game, Big Bait##26766 |goto 64.5,82.1
		accept Testing the Trap##26771 |goto 64.5,82.1
	step
		Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		kill Stonescale Matriarch |q 26771/1 |goto 50.9,85.3
	step		
		talk Stormcaller Mylra##44010
		turnin Testing the Trap##26771 |goto 64.5,82.1
		accept Abyssion's Minions##26857 |goto 64.5,82.1
	step
		talk Seer Galekk##44222
		accept Block the Gates##26861 |goto 64.6,82.2
	stickystart "abyssionunder"
	step
		Use your Stormstone next to the swirling blue portal |use Stormstone##60501
		Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
	step
		Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
		Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
	step "abyssionunder"
		kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
		Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
	step
		talk Seer Galekk##44222
		turnin Block the Gates##26861 |goto 64.6,82.2
	step 
		talk Stormcaller Mylra##44010
		turnin Abyssion's Minions##26857 |goto 64.5,82.2
		accept The World Pillar Fragment##26876 |goto 64.5,82.2
	step
		Use your Earthen Ring Banner |use Earthen Ring Banner##60810
		kill Abyssion##
		Click The First Fragment of the World Pillar 
		|tip It's a floating green rock that appears after you kill Abyssion.
		collect The Upper World Pillar Fragment |q 26876/1 |goto 69.9,76.9
	step
		talk Maruut Stonebinder##43065
		turnin The World Pillar Fragment##26876 |goto 49.6,53.0
	step
		talk Seer Kormo##43397
		turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
	step
		talk Crag Rockcrusher##43071
		turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
		accept The Quaking Fields##27931 |goto 27.9,68.7
	step
		talk Slate Quicksand##47195
		turnin The Quaking Fields##27931 |goto 30.6,77.7
		accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		accept Elemental Ore##27933 |goto 30.6,77.7
	step
		Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
		|tip They look like glowing giants that walk around this area.
		kill 5 Sundered Emerald Colossus |q 27932/1 |goto 32.2,79.1
		kill Jade Rager##44220+
		collect 6 Elemental Ore |q 27933/1 |goto 32.2,79.1
	step
		talk Slate Quicksand##47195
		turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
		turnin Elemental Ore##27933 |goto 30.6,77.7
		accept One With the Ground##27934 |goto 30.6,77.7
	step
		talk Slate Quicksand##47195
		Tell him you are ready for the ritual
		Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin One With the Ground##27934 |goto 30.6,77.7
		accept Bring Down the Avalanche##27935 |goto 30.6,77.7
	step
		kill Avalanchion |q 27935/1 |goto 46.9,89.1
	step
		Leave the cave |goto 43.4,82.0,0.5  < 15
		talk Crag Rockcrusher##43071
		turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
		accept Stonefather's Boon##26499 |goto 27.9,68.7
	step
		talk Earthbreaker Dolomite##43160
		accept We're Surrounded##26500 |goto 28.2,69.6
	step
		kill 12 Stone Trogg Ambusher##43134 |q 26500/1 |goto 29.7,68.8
		Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
		|tip They look like dwarves. Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
		Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
	step
		talk Earthbreaker Dolomite##43160
		turnin We're Surrounded##26500 |goto 28.2,69.6
		accept Thunder Stones##26502 |goto 28.2,69.6
	step
		talk Crag Rockcrusher##43071
		turnin Stonefather's Boon##26499 |goto 27.9,68.7
		accept Sealing the Way##26501 |goto 27.9,68.7
	stickystart "thunderstones"
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Shrine |q 26501/4 |goto 27.3,67.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Barracks |q 26501/3 |goto 26.0,68.8
	step
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Inn |q 26501/2 |goto 26.2,69.8
	step "thunderstones"
		Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
		|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
		Seal the Armory |q 26501/1 |goto 27.3,70.1
		Click Thunder Stones |tip They looks like blue round spiked cannonballs on the ground and in wagons around this area
		get 12 Thunder Stone |q 26502/1 |goto 27.3,70.1
	step
		talk Gravel Longslab##43168
		turnin Sealing the Way##26501 |goto 24.5,62.4
		accept Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		turnin Thunder Stones##26502 |goto 24.8,62.2
		accept Fixer Upper##26564 |goto 24.8,62.2
	step
		talk Earthmender Deepvein##43319
		accept Battlefront Triage##26591 |goto 24.6,62.2
	step
		Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 
		|tip They look like dwarves laying on the ground around this area.
		Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
		Click Catapult Parts 
		|tip They look kind of like big metal parts laying on the ground around this area
		collect 6 Catapult Part |q 26564/1 |goto 23.9,60.3
		kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
		kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
	step
		talk Gravel Longslab##43168
		turnin Shatter Them!##26537 |goto 24.5,62.4
	step
		talk Earthmender Deepvein##43319
		turnin Battlefront Triage##26591 |goto 24.6,62.2
	step
		talk Clay Mudaxle##43169
		turnin Fixer Upper##26564 |goto 24.8,62.2
	step		
		talk Gravel Longslab##43168
		accept Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		kill Troggzor the Earthinator##43456
		collect The Earthinator's Cudgel |q 26625/1 |goto 22.6,56.9
	step
		talk Gravel Longslab##43168
		turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
	step
		talk Clay Mudaxle##43169
		accept Rush Delivery##27126 |goto 24.8,62.2
	step
		talk Peak Grindstone##45043
		turnin Rush Delivery##27126 |goto 20.7,61.6
		accept Close Escort##26632 |goto 20.7,61.6
	step
		talk Peak Grindstone##45043
		Tell him you're ready to escort the catapult
		Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
	step
		talk Pyrium Lodestone##43897
		turnin Close Escort##26632 |goto 22.7,52.0
		accept Keep Them off the Front##26755 |goto 22.7,52.0
	step
		Click an Earthen Catapult
		|tip They look like wooden launchers with stone wheels.
		Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		Bombarb 30 Reinforcements |q 26755/1 |goto 22.4,52.0
	step
		talk Pyrium Lodestone##43897
		turnin Keep Them off the Front##26755 |goto 22.7,52.0
		accept Reactivate the Constructs##26762 |goto 22.7,52.0
	step
		talk Flint Oremantle##43898
		accept Mystic Masters##26770 |goto 22.8,52.1
	step
		Click Deactivated War Construct 
		|tip They look like metal golems around this area.
		Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
		kill 5 Needlerock Mystic |q 26770/1 |goto 22.6,47.6
	step
		talk Flint Oremantle##43898
		turnin Mystic Masters##26770 |goto 22.8,52.1
	step
		talk Pyrium Lodestone##43897
		turnin Reactivate the Constructs##26762 |goto 22.7,52.0
		accept Down Into the Chasm##26834 |goto 22.7,52.0
	step
		talk Slate Quicksand##44143
		turnin Down Into the Chasm##26834 |goto 27.6,44.8
		accept Sprout No More##26791 |goto 27.6,44.8
		accept Fungal Monstrosities##26792 |goto 27.6,44.8
	step
		Click the War Guardian 
		|tip It looks like a metal golem.
		Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
		Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
	step
		kill 5 Fungal Monstronsity |q 26792/2 |goto 26.8,41.8
		Click Giant Mushrooms 
		|tip They look like huge mushrooms with orange caps around this area.
		Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
	step
		talk Slate Quicksand##44143
		turnin Sprout No More##26791 |goto 27.6,44.8
		turnin Fungal Monstrosities##26792 |goto 27.6,44.8
		accept A Slight Problem##26835 |goto 27.6,44.8
	step
		talk Pyrium Lodestone##43897
		turnin A Slight Problem##26835 |goto 22.7,52.0
		accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
	step
		kill Bouldergut##44151
		Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
	step
		talk Pyrium Lodestone##43897
		turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
		accept The Hero Returns##27937 |goto 22.7,52.0
	step
		talk Stonefather Oremantle##44204
		turnin The Hero Returns##27937 |goto 28.0,68.6
		accept The Middle Fragment##27938 |goto 28.0,68.6
	step
		Click The Stonefather's Safe 
		|tip It looks like a metal vault door with gold circles and symbols on it.
		collect The Middle Fragment of the World Pillar |q 27938/1 |goto 28.0,68.7
	step
		talk Earthcaller Yevaa##42573
		turnin The Middle Fragment##27938 |goto 49.5,53.3
	step
		talk Maruut Stonebinder##43065
		accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
	step
		talk Earthcaller Torunscar##42730
		turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
		accept Crumbling Defenses##26312 |goto 46.1,45.6
		accept On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Core of Our Troubles##26313 |goto 46.2,45.7
	stickystart "servanttherazane"
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane 
		use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
	step
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
	step		
		kill Irestone Rumbler##42780+
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
	step "servanttherazane"
		kill Irestone Rumbler##42780+
		collect 6 Irestone Core |q 26313/1 |goto 46.2,42.2
		Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 
		|tip Run away from the Servants of Therazane to bring them down.
		Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
	step
		talk Earthmender Norsala##42731
		turnin Core of Our Troubles##26313 |goto 46.2,45.7
	step
		talk Earthcaller Torunscar##42730
		turnin Crumbling Defenses##26312 |goto 46.1,45.6
		turnin On Even Ground##26314 |goto 46.1,45.6
	step
		talk Earthmender Norsala##42731
		accept Imposing Confrontation##26315 |goto 46.2,45.7
	step
		Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
		|tip He's a huge rock giant that walks around this area.
		Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
	step
		talk Earthmender Norsala##42731
		turnin Imposing Confrontation##26315 |goto 46.2,45.7
		accept Rocky Relations##26328 |goto 46.2,45.7
	step		
		talk Diamant the Patient##42467
		turnin Rocky Relations##26328 |goto 56.5,42.7
		accept Hatred Runs Deep##26376 |goto 56.5,42.7
		accept Unsolid Ground##26377 |goto 56.5,42.7
	step		
		talk Quartz Stonetender##42899
		accept Loose Stones##26375 |goto 56.5,41.0
	stickystart "jadecluster"
	stickystart "lorthunacult"
	step
		kill Dragul Giantbutcher |q 26376/1 |goto 60.2,39.4
	step "jadecluster"
		Click Jade Crystal Clusters
		|tip They look like green glowing rocks sitting on the ground all around this area.
		collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
		Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 
		|tip They look like small rock giants around this area.
		Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
	step
		Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
		collect Jade Crystal Composite##58783 |q 26377
	step
		Use your Jade Crystal Composite |use Jade Crystal Composite##58783
		Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
	step "lorthunacult"
		kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
		kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
	step
		talk Quartz Stonetender##42899
		turnin Loose Stones##26375 |goto 56.5,41.0
	step
		talk Diamant the Patient##42467
		turnin Hatred Runs Deep##26376 |goto 56.5,42.7
		turnin Unsolid Ground##26377 |goto 56.5,42.7
		accept Violent Gale##26426 |goto 56.5,42.7
	step
		Get next to Felsen the Enduring 
		|tip He's a big white rock giant.
		Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
	step
		Fly to the mouth of this cave
		Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Violent Gale##26426
		accept Depth of the Depths##26869 |goto 58.4,25.7
	step
		Follow the path |goto 64.5,21.7 < 15
		Follow the path |goto 65.3,18.4 < 20		
		Click the Gigantic Painite Cluster 
		|tip It looks like a green crystal cluster near the mouth of the cave.
		turnin Depth of the Depths##26869
		accept A Rock Amongst Many##26871 |goto 66.4,20.6
	step
		Follow the path to this spot, then jump down |goto 64.3,23.5 < 15
		Leave the cave |goto 58.3,25.5 < 15
		talk Diamant the Patient##42467
		turnin A Rock Amongst Many##26871 |goto 56.5,42.7
		accept Entrenched##26436 |goto 56.5,42.7
	step
		talk Kor the Immovable##42469
		turnin Entrenched##26436 |goto 34.3,34.3
		accept Intervention##26438 |goto 34.3,34.3
		accept Making Things Crystal Clear##26437 |goto 34.3,34.3
	step
		talk Berracite##43344
		accept Putting the Pieces Together##26439 |goto 34.6,34.2
	step
		kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+
		kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
		Click Chalky Crystal Formations
		|tip They look like big white blocks on the ground around this area.
		collect 8 Chalky Crystal Formation |q 26437/1 |goto 30.5,46.8
		Click Dormant Stonebound Elementals 
		|tip They look like crumbled rock elementals on the ground around this area.
		Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
	step
		talk Kor the Immovable##42469
		turnin Intervention##26438 |goto 34.3,34.3
		turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
	step	
		talk Berracite##43344
		turnin Putting the Pieces Together##26439 |goto 34.5,34.4
	step
		Next to you:
		talk Pebble##43116
		accept Clingy##26440
	step
		Get next to the huge green crystals
		Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
	step
		Next to you:
		talk Pebble##43116
		turnin Clingy##26440
		accept So Big, So Round...##26441
	step
		talk Kor the Immovable##42469
		turnin So Big, So Round...##26441 |goto 34.3,34.3
		accept Petrified Delicacies##26507 |goto 34.3,34.3
		accept Rock Bottom##26575 |goto 34.3,34.3
	stickystart "petrifiedstonebat"
	step
		kill Gorgonite |q 26575/1 |goto 47.6,26.8
	step "petrifiedstonebat"
		 Click Petrified Stone Bats 
		|tip They looks like black stone bats laying on the ground around this area.
		collect 12 Petrified Stone Bat |q 26507/1 |goto 47.5,26.8
	step
		Next to you:
		talk Pebble##43116
		turnin Petrified Delicacies##26507
	step
		talk Kor the Immovable##42469
		turnin Rock Bottom##26575 |goto 34.3,34.3
		accept Steady Hand##26576 |goto 34.3,34.3
		accept Rocky Upheaval##26577 |goto 34.3,34.3
	step
		talk Terrath the Steady##42466
		turnin Steady Hand##26576 |goto 39.9,19.4
		accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
	step
		talk Terrath the Steady##42466
		Tell him: _You are ready to escort a group of elementals across the open._
		Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
	step
		Go to this spot
		Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
		|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
	step
		talk Terrath the Steady##42466
		turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
		accept Hard Falls##26657 |goto 39.9,19.4
		accept Fragile Values##26658 |goto 39.9,19.4
	step
		kill Stone Trogg Beast Tamer##43598
		|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		collect Stonework Mallet |q 26658/1 |goto 35.4,22.5
	step		
		talk Terrath the Steady##42466
		turnin Fragile Values##26658 |goto 39.9,19.4
	step
		kill 6 Stone Drake |q 26657/1 |goto 36.5,18.8
		|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		talk Terrath the Steady##42466
		turnin Hard Falls##26657 |goto 40.0,19.4
		accept Resonating Blow##26659 |goto 40.0,19.4
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
		kill Aeosera##43641 
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 26659/2 |goto 32.7,24.3
	step
		talk Terrath the Steady##42466
		turnin Resonating Blow##26659 |goto 33.1,24.1
	step
		talk Earthcaller Yevaa##42573
		accept The Reliquary##27953 |goto 49.5,53.3
	step
		talk Examiner Rowe##44823
		turnin The Reliquary##27953 |goto 51.3,50.1
		accept The Twilight Plot##27005 |goto 51.3,50.1
	step
		talk Reliquary Jes'ca Darksun##44818
		accept Fly Over##27008 |goto 51.3,50.0
	stickystart "mastergate"
	step
		Go to this spot next to the big white portal
		Investigate the Master's Gate |q 27008/1 |goto 39.0,74.2
	step "mastergate"		
		kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
		collect Masters' Gate Plans |q 27005/1 |goto 40.1,72.2
	step
		talk Examiner Rowe##44823
		turnin The Twilight Plot##27005 |goto 51.3,50.1
	step
		talk Reliquary Jes'ca Darksun##44818
		turnin Fly Over##27008 |goto 51.3,50.0
		accept Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
	step
		talk Examiner Rowe##44823
		accept Decryption Made Easy##27041 |goto 51.3,50.1
	stickystart "decryptplans"
	step
		kill Bound Water Elemental##44886
		Acquire the Water Ward |q 27043/2 |goto 40.8,66.3
	step
		kill Bound Fire Elemental##44887
		Acquire the Fire Ward |q 27043/1 |goto 36.0,67.4
	step
		kill Bound Air Elemental##44885
		Acquire the Air Ward |q 27043/3 |goto 40.5,72.4
	step "decryptplans"		
		Click One-Time Decryption Engines 
		|tip They look like machines around this area with a circular scroll spinning around them, and yellow cores floating in the middle of the spinning scrolls.
		Decrypt 6 Plans |q 27041/1  |goto 40.2,67.5
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Decryption Made Easy##27041 |goto 40.2,67.5
		accept The Wrong Sequence##27059 |goto 40.2,67.5
	step
		Click the Waygate Controller 
		|tip It looks like a cylinder stone container with a stone ring on top of it, sitting in front of the huge white portal.
		Destroy the Waygate |q 27059/1 |goto 39.1,73.9
	step
		kill Haethen Kaul |q 27043/4 |goto 39.9,62.2
		|tip He's up on a huge floating rock.
	step
		talk Examiner Rowe##44823
		turnin The Wrong Sequence##27059 |goto 51.3,50.0
		accept That's No Pyramid!##28293 |goto 51.3,50.0
	step
		talk Reliquary Jes'ca Darksun##44818
		turnin Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
	step
		talk Gorsik the Tumultuous##42472
		turnin Rocky Upheaval##26577 |goto 72.2,54.0
		accept Doomshrooms##26578 |goto 72.2,54.0
		accept Gone Soft##26579 |goto 72.2,54.0
		accept Familiar Intruders##26580 |goto 72.2,54.0
	step		
		talk Windspeaker Lorvarius##43395
		turnin Familiar Intruders##26580 |goto 71.8,47.6
		accept A Head Full of Wind##26581 |goto 71.8,47.6
	step	
		kill 8 Fungal Behemoth |q 26579/1 |goto 73.6,40.8
		kill Doomshroom##+ 
		|tip They look like orange mushrooms around this area.
		Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
		Gather a sample of the red mist|q 26581/1 |goto 73.6,40.8
		|tip There are small clouds of red mist that float around on the ground around this area. Walk into one of them to gather a sample.
	step
		talk Windspeaker Lorvarius##43395
		turnin A Head Full of Wind##26581 |goto 71.8,47.6
		accept Unnatural Causes##26582 |goto 71.8,47.6
	step		
		talk Gorsik the Tumultuous##42472
		turnin Doomshrooms##26578 |goto 72.2,54.0
		turnin Gone Soft##26579 |goto 72.2,54.0
		turnin Unnatural Causes##26582 |goto 72.2,54.0
		accept Shaken and Stirred##26584 |goto 72.2,54.0
		accept Corruption Destruction##26585 |goto 72.2,54.0
	step
		talk Ruberick##43442
		accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
	step
		_Enter_ the cave |goto 68.6,29.1 < 15
		talk Earthmender Norsala##43503
		Tell her: "I'm ready when you are."
		kill Fungalmancer Glop |q 26583/2 |goto 69.8,31.9
		|tip Follow him each time he runs away. Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
	step
		Follow the path up |goto 70.2,33.8 < 15
		Leave the cave |goto 68.6,29.1 < 15		
		talk Ruberick##43442
		turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
	step
		kill 8 Verlok Pillartumbler |q 26584/1 |goto 69.4,24.8
		Click Verlok Miracle-grow
		|tip They look like gray bags sitting on the ground around this area.
		collect 8 Verlok Miracle-grow |q 26585/1 |goto 69.4,24.8
	step
		talk Gorsik the Tumultuous##42472
		turnin Shaken and Stirred##26584 |goto 72.2,54.0
		turnin Corruption Destruction##26585 |goto 72.2,54.0
		accept At the Stonemother's Call##26750 |goto 72.2,54.0
	step
		talk Therazane##42465
		turnin At the Stonemother's Call##26750 |goto 56.3,12.2
		accept Audience with the Stonemother##26752 |goto 56.3,12.2
	step
		Watch the dialogue
		Attend the Stonemother's Audience |q 26752/1
	step
		talk Earthcaller Torunscar##43809
		turnin Audience with the Stonemother##26752 |goto 56.1,13.5
		accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
	step
		talk Hargoth Dimblaze##44644
		Tell him you are joining an assault on Lorthuna's Gate and he is needed |goto 49.9,50.1
		|confirm
	step
		talk Stormcaller Jalara##44633
		Tell her you are joining an assault on Lorthuna's Gate and she is needed |goto 51.5,51.8
		|confirm
	step
		talk Hargoth Dimblaze##44644
		Tell him you are joining an assault on Lorthuna's Gate and he is needed |goto 49.9,50.1
		Rally 5 Earthen Ring |q 26827/1
	step
		talk Maruut Stonebinder##43065
		turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
		accept Our Part of the Bargain##26828 |goto 49.6,53.0
	step
		talk Therazane##44025
		turnin Our Part of the Bargain##26828 |goto 63.3,25.0
		accept The Stone March##26829 |goto 63.3,25.0
		accept Therazane's Mercy##26832 |goto 63.3,25.0
	step		
		talk Boden the Imposing##44080
		accept The Twilight Flight##26831 |goto 62.6,26.9
	stickystart "twililghtprecipice"
	step
		kill High Priestess Lorthuna##42914 
		|tip She is in a small room on the top of this building. She is elite, but you can still kill her. She will run away when she is almost dead.
		Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
	step
		kill Boldrich Stonerender##42923
		Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
	step
		kill Zoltrik Drakebane##42918
		|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane. You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
		Defeat Zoltrik Drakebane |q 26831/1 |goto 63.1,38.1
	step
		talk Terrath the Steady##42614
		turnin The Twilight Flight##26831 |goto 64.1,36.9
	step "twililghtprecipice"
		kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		kill 15 Twilight Precipice Cultists |q 26829/1 |goto 60.3,33.2
	step
		talk Therazane##44025
		turnin The Stone March##26829 |goto 63.3,25.0
		turnin Therazane's Mercy##26832 |goto 63.3,25.0
		accept Word In Stone##26833 |goto 63.3,25.0
	step		
		talk Maruut Stonebinder##43818
		turnin Word In Stone##26833 |goto 49.6,53.0
		accept Undying Twilight##26875 |goto 49.6,53.0
	step		
		kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
		kill Desecrated Earthrager |q 26875/2 |goto 50.7,49.6
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Undying Twilight##26875 |goto 50.7,49.6
		accept The Binding##26971 |goto 50.7,49.6
	step
		kill High Priestess Lorthuna |q 26971/1 |goto 49.6,52.9
	step		
		talk Earthcaller Torunscar##43835
		turnin The Binding##26971 |goto 49.6,52.9
	step		
		talk Therazane##43792
		accept The Stone Throne##26709 |goto 49.8,53.4
	step
		talk Therazane##42465
		turnin The Stone Throne##26709 |goto 56.4,12.1
]])

ZygorGuidesViewer:RegisterInclude("H_Therazane_DailyQuest", [[
		Increasing your Therazane reputation to Revered will unlock more daily quests.
		|tip Use the THERAZANE REPUTATION guide in the Cataclysm Reputation section to do this.
	step
		talk Felsen the Enduring##43805
		accept Fear of Boring##27046 |goto Deepholm,56.1,14.4
		accept Motes##27047 |goto Deepholm,56.1,14.4
		accept Beneath the Surface##28488 |goto Deepholm,56.1,14.4
		|tip This quest can be offered at random and may not be offered every day.
	step
		talk Terrath the Steady##43806
		accept The Restless Brood##28391 |goto 56.6,14.1
		|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However, the quest may not be offered every day.
		only if rep ('Therazane') >= Revered
	step
		talk Pyrite Stonetender##44945
		accept Lost In The Deeps##26710 |goto 55.4,14.2
		|tip This quest can be offered at random and may not be offered every day.
	step
		talk Gorsik the Tumultuous##43804
		accept Soft Rock##27049 |goto 57.3,12.5
		accept Fungal Fury##27050 |goto 57.3,12.5
	step		
		talk Ruberick##44973
		accept Through Persistence##27051 |goto 59.6,14.0
		accept Glop, Son of Glop##28390 |goto 59.6,14.0 |only if rep ('Therazane') >= Revered 
		|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However, the quest may not be offered every day.
	step
		Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
		|tip It's a huge green crystal sitting on the ground.
		Strike the Pale Resonating Crystal |q 28391/1 |goto 32.7,24.3
		kill Aeosera##43641 
		|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera. When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		Defeat Aeosera |q 28391/2 |goto 32.7,24.3
		only if rep ('Therazane') >= Revered
	step		
		talk Terrath the Steady##43806
		turnin The Restless Brood##28391 |goto 56.6,14.1
		only if rep ('Therazane') >= Revered
	step
		_Enter_ the cave |goto 58.3,25.6 < 15
		talk Ricket##44968
		accept Underground Economy##27048 |goto 61.3,26.2
		|tip This quest can be offered at random and may not be offered every day.
	stickystart "gorgedgyre"
	step
		Follow the path inside the cave
		Click the Ruby Gemstone Cluster 
		|tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
		kill Enormous Gyreworm##48533
		collect Ruby Crystal Cluster |q 28488/1 |goto 66.1,28.1
	step
		Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514
		|tip They look like huge white rocks around this area.
		collect 3 Deep Alabaster Crystal |q 27048/1 |goto 63.6,23.0
	step
		Follow this path |goto 62.6,23.9 < 15		
		Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514 
		|tip They look like huge blue rocks around this area.
		collect 3 Deep Celestite Crystal |q 27048/2 |goto 61.8,19.7
	step
		Follow this path |goto 62.0,18.0 < 15
		Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514
		|tip They look like huge purple rocks around this area.
		collect 3 Deep Amethyst Crystal |q 27048/3 |goto 64.4,18.6
	step
		Follow this path |goto 65.3,18.4		
		Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514 
		|tip They look like huge red rocks around this area.
		collect 3 Deep Garnet Crystal |q 27048/4 |goto 66.4,20.2
	step "gorgedgyre"
		All around inside this cave:
		kill Gorged Gyreworm##42766+, Gyreworm##44257+
		kill 10 Gyreworm |q 27046/1 |goto 63.6,23.9
		Click Painite Shards 
		|tip They look like small green glowing crystals sitting on the ground all around inside this cave.
		collect 10 Painite Mote |q 27047/1 |goto 63.6,23.9
	step
		talk Pebble##49956
		Tell him to follow you |goto 63.1,20.8
		Follow this path |goto 64.2,17.6		
		talk Ricket##44968
		turnin Underground Economy##27048 |goto 61.3,26.2
	step
		_Leave_ the cave |goto 58.3,25.6 < 15		
		Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
		Bring Pebble to safety |q 26710/1 |goto 58.3,25.6
	step
		kill 8 Fungal Behemoth |q 27049/1 |goto 74.0,41.2
		kill Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
		collect Bag of Verlok Miracle-Grow |q 27051/1 |goto 74.0,41.2
		Click Sprouting Crimson Mushrooms 
		|tip They look like tiny mushrooms on the ground around this area. Try to only click the solid blue, solid red, or white-brown ones.  The blue ones with red spots will explode and hurt you.
		Destroy 10 Freshly Sprouted Mushrooms |q 27050/1 |goto 74.0,41.2
	step
		_Enter_ the cave |goto 68.6,29.1 < 15
		talk Earthmender Norsala##43503
		Tell her you're ready when she is
		kill Fungalmancer Glop |q 28390/1 |goto 69.8,31.9
		|tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff. While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
	step
		Follow the path up |goto 70.2,33.8 < 15
		_Leave_ the cave |goto 68.6,29.1 < 15
		talk Pyrite Stonetender##44945
		turnin Lost In The Deeps##26710 |goto 55.4,14.2
	step
		talk Gorsik the Tumultuous##43804
		turnin Soft Rock##27049 |goto 57.3,12.5
		turnin Fungal Fury##27050 |goto 57.3,12.5
	step
		talk Ruberick##44973
		turnin Through Persistence##27051 |goto 59.6,14.0
		turnin Glop, Son of Glop##28390 |goto 59.6,14.0 |only if rep ('Therazane') >= Revered
	step	
		talk Felsen the Enduring##43805
		turnin Fear of Boring##27046 |goto Deepholm,56.1,14.4
		turnin Motes##27047 |goto Deepholm,56.1,14.4
		turnin Beneath the Surface##28488 |goto Deepholm,56.1,14.4
]])



-------------------------------
-- PATCH 6.2 DAILIES
-------------------------------
ZygorGuidesViewer:RegisterInclude("H_Voljins_Headhunters_Dailies", [[
		Complete the following guide before continuing:
		_Tanaan Jungle (100) Main Questline_
		confirm |only if not completedq(38578)
	step
	label "voljin_headhunters_start"
		click Tanaan Planning Map##241725
		|tip It looks like a round table with a map laying on it.
		accept Assault on Ironhold Harbor##37940 |goto Tanaan Jungle/0 61.5,45.9 |or
		accept Bleeding the Bleeding Hollow##38044 |goto Tanaan Jungle/0 61.5,45.9 |or
		accept Battle At The Iron Front##38047 |goto Tanaan Jungle/0 61.5,45.9 |or
		accept Assault on the Ruins of Kra'nak##38252 |goto Tanaan Jungle/0 61.5,45.9 |or
		accept Assault on The Fel Forge##38441 |goto Tanaan Jungle/0 61.5,45.9 |or
		accept Assault on the Temple of Sha'naar##38449 |goto Tanaan Jungle/0 61.5,45.9 |or
		accept Assault on the Throne of Kil'jaeden##38586 |goto Tanaan Jungle/0 61.5,45.9 |or
		|tip You will be able to choose between 2 of these quests, but will only be able to accept 1 of these quests per day.
	step
		kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
		clicknpc True Iron Bomb##90069
		|tip They look like round metal spiked balls on the ground and sitting on objects all around this area. Get them and cast the spell they grant you on Iron Battle Engines. They look like big metal artillery machines all around this area.
		click Box of Iron Horde Equipment##239839
		|tip They look like wooden crates on the ground around this area.
		click Iron Horde Banner##90370+
		|tip They look like vertical flags made of cloth and bone all around this area.
		click Inferno Shot##243205
		|tip They look like silver metal artillery capsules laying on the ground around this area. They give you a buff that allows you to use Harbor Cannons around this area, which allow you to kill mobs easily.
		Assault the Iron Horde Forces at Ironhold Harbor |q Assault on Ironhold Harbor##37940/1 |goto Tanaan Jungle/0 39.6,37.0
		|tip You will see a progress bar in your quest tracking area.
	step
		_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30
		kill Eye Sentry##95235+, Bleeding Hollow Hunter##89699+, Felblood Overseer##92706+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
		clicknpc Blood Ritual Orb##83670+
		|tip They look like floating swirling red balls around this area.
		Assault the Bleeding Hollow at Zeth'Gol |q Bleeding the Bleeding Hollow##38044/1 |goto Tanaan Jungle/0 22.3,51.1
		|tip You will see a progress bar in your quest tracking area.
	step
		click Medical Supplies##239971+
		|tip They look like wooden crates with red crosses on them on the ground all around this area.
		collect First Aid Bandages##122139 |n
		clicknpc Wounded Grunt##90452+
		|tip You need First Aid Bandages in order to heal them.
		click Iron Horde Banner##90370+
		|tip They look like vertical flags made of cloth and bone all around this area.
		kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
		Aid the Battle at the Iron Front |q Battle At The Iron Front##38047/1 |goto Tanaan Jungle/0 11.4,56.1
		|tip You will see a progress bar in your quest tracking area.
	step
		kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
		clicknpc Ritual Circle##90300
		|tip They look like circular green glowing symbols on the ground around this area.
		Assault the Shadow Council Forces at the Ruins of Kra'nak |q Assault on the Ruins of Kra'nak##38252/1 |goto Tanaan Jungle/0 24.0,39.6
		|tip You will see a progress bar in your quest tracking area.
	step
		kill Felblood Warrior##90066+, Felblood Overseer##91760+, Felblood Deadeye##91764+, Forge Engineer##91721+
		click Siege Equipment Blueprints##241669
		|tip They look like small tan pieces of paper laying on the ground and on objects around this area.
		Assault the Iron Horde Forces at the Fel Forge |q Assault on The Fel Forge##38441/1 |goto Tanaan Jungle/0 45.3,43.5
		|tip You will see a progress bar in your quest tracking area.
	step 
		_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30
		_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20
		kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
		clicknpc Bound Spirit##90703
		|tip They look like floating draenei spirits kicking in the air and being choked around this area.
		clicknpc Defiled Corpse##90302
		|tip They look like dead draenei laying on the ground around this area.		
		Assault the Sargerei Forces at the Temple of Sha'naar |q Assault on the Temple of Sha'naar##38449/1 |goto Tanaan Jungle/0 28.5,67.9
		|tip You will see a progress bar in your quest tracking area.
	step
		_Follow_ the road |goto Tanaan Jungle/0 58.1,42.5 < 30
		_Run up_ the zigzag path |goto Tanaan Jungle/0 58.8,31.8 < 30		
		kill Felflame Fiend##92082+, Shadowheart Fiend##92083+, Infernal Devastator##92031+, Felblood Corruptor##92396+, Felguard Sentinel##92026+
		Assault the Shadow Council Forces at the Throne of Kil'jaeden |q Assault on the Throne of Kil'jaeden##38586/1 |goto Tanaan Jungle/0 56.0,25.6
		|tip You will see a progress bar in your quest tracking area.
		|tip This is a group quest. Use the Group Finder to easily find a group by opening it and selecting Premade Groups -> Custom, then searching for "Kil'jaeden".
	step
		talk Draka##90481
		turnin Assault on Ironhold Harbor##37940 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(37940) or completedq(37940)
		turnin Bleeding the Bleeding Hollow##38044 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(38044) or completedq(38044)
		turnin Battle At The Iron Front##38047 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(38047) or completedq(38047)
		turnin Assault on the Ruins of Kra'nak##38252 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(38252) or completedq(38252)
		turnin Assault on The Fel Forge##38441 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(38441) or completedq(38441)
		turnin Assault on the Temple of Sha'naar##38449 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(38449) or completedq(38449)
		turnin Assault on the Throne of Kil'jaeden##38586 |goto Tanaan Jungle/0 61.5,45.8 |only if havequest(38586) or completedq(38586)
	step
		talk Shadow Hunter Denjai##96014
		accept Pressing the Attack##39526 |goto Tanaan Jungle/0 61.7,45.7
		accept Harnessing Their Power##39514 |goto Tanaan Jungle/0 61.7,45.7 |or
		accept Disarming Sha'naar##39513 |goto Tanaan Jungle/0 61.7,45.7 |or
		accept Secrets of the Shadow Council##39512 |goto Tanaan Jungle/0 61.7,45.7 |or
		accept Blood of Fallen Brothers##39511 |goto Tanaan Jungle/0 61.7,45.7 |or
		accept A Little Wetwork##39510 |goto Tanaan Jungle/0 61.7,45.7 |or
		accept Bloodied Blades of Zeth'Gol##39509 |goto Tanaan Jungle/0 61.7,45.7 |or		
		|tip You will only be able to accept 2 of these quests per day.
	step
		kill Iron Wargronn##90585+
		collect Wargronn Harness##128434 |q Harnessing Their Power##39514/1 |goto Tanaan Jungle/0 13.1,56.2
	step
		accept Battle At The Iron Front##39444
		click Medical Supplies##239971+
		|tip They look like wooden crates with red crosses on them on the ground all around this area.
		collect First Aid Bandages##122139 |n
		clicknpc Wounded Grunt##90452+
		|tip You need First Aid Bandages in order to heal them.
		click Iron Horde Banner##90370+
		|tip They look like vertical flags made of cloth and bone all around this area.
		kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
		Aid the Battle at the Iron Front |q Battle At The Iron Front##39444/1 |goto Tanaan Jungle/0 11.4,56.1
		|tip You will see a progress bar in your quest tracking area.
		only if not completedq(39526,1) and not completedq(38047)
	step
		_Follow_ the path up |goto Tanaan Jungle/0 31.1,63.0 < 30
		_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.7 < 30
		_Follow_ the stairs up |goto Tanaan Jungle/0 29.2,68.4 < 30
		_Enter_ the mine |goto Tanaan Jungle/0 29.4,70.8 < 20
		click Unrefined Draenic Crystal##243794+
		|tip They look like small clusters of white crystals on the ground and on objects inside this mine.
		collect 8 Unrefined Draenic Crystal##128433 |q Disarming Sha'naar##39513/1 |goto Tanaan Jungle/0 29.2,71.0
	step 
		_Follow_ the path |goto Tanaan Jungle/0 31.1,63.0 < 30
		_Go up_ the stairs |goto Tanaan Jungle/0 28.9,66.7 < 20
		accept Assault on the Temple of Sha'naar##39450
		kill Sargerei Nullifier##90295+, Sargerei Felbinder##90286+
		clicknpc Bound Spirit##90703
		|tip They look like floating draenei spirits kicking in the air and being choked around this area.
		clicknpc Defiled Corpse##90302
		|tip They look like dead draenei laying on the ground around this area.		
		Assault the Sargerei Forces at the Temple of Sha'naar |q Assault on the Temple of Sha'naar##39450/1 |goto Tanaan Jungle/0 28.5,67.9
		|tip You will see a progress bar in your quest tracking area.
		only if not completedq(39526,1) and not completedq(38449)
	step
		kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
		collect 20 Shadow Council Missive##128432 |q Secrets of the Shadow Council##39512/1 |goto Tanaan Jungle/0 24.0,39.6
	step
		accept Assault on the Ruins of Kra'nak##39448
		kill Felborn Enforcer##90620+, Sethekk Neophyte##90312+, Felborn Instructor##89748
		clicknpc Ritual Circle##90300
		|tip They look like circular green glowing symbols on the ground around this area.
		Assault the Shadow Council Forces at the Ruins of Kra'nak |q Assault on the Ruins of Kra'nak##39448/1 |goto Tanaan Jungle/0 24.0,39.6
		|tip You will see a progress bar in your quest tracking area.
		only if not completedq(39526,1) and not completedq(38252)
	step
		kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+
		collect 20 Vial of Fel Blood##128431 |q Blood of Fallen Brothers##39511/1 |goto Tanaan Jungle/0 11.4,56.1
	step
		kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
		collect 15 Iron Horde Naval Manifest##128429 |q A Little Wetwork##39510/1 |goto Tanaan Jungle/0 39.6,37.0
	step
		_Follow_ the path |goto Tanaan Jungle/0 21.3,58.7 < 30
		kill Bleeding Hollow Hunter##89699+, Bleeding Hollow Cabalist##90851+, Bleeding Hollow Brute##89706+
		collect 25 Bleeding Hollow Ritual Blade##128428 |q Bloodied Blades of Zeth'Gol##39509/1 |goto Tanaan Jungle/0 22.3,51.1
	step
		talk Shadow Hunter Denjai##96014
		turnin Pressing the Attack##39526 |goto Tanaan Jungle/0 61.7,45.7
		turnin Harnessing Their Power##39514 |goto Tanaan Jungle/0 61.7,45.7 |only if havequest(39514) or completedq(39514)
		turnin Disarming Sha'naar##39513 |goto Tanaan Jungle/0 61.7,45.7 |only if havequest(39513) or completedq(39513)
		turnin Secrets of the Shadow Council##39512 |goto Tanaan Jungle/0 61.7,45.7 |only if havequest(39512) or completedq(39512)
		turnin Blood of Fallen Brothers##39511 |goto Tanaan Jungle/0 61.7,45.7 |only if havequest(39511) or completedq(39511)
		turnin A Little Wetwork##39510 |goto Tanaan Jungle/0 61.7,45.7 |only if havequest(39510) or completedq(39510)
		turnin Bloodied Blades of Zeth'Gol##39509 |goto Tanaan Jungle/0 61.7,45.7 |only if havequest(39509) or completedq(39509)
	step
		talk Nimi Brightcastle##93396
		accept Demonslayer of Tanaan##39519 |goto Tanaan Jungle/0 59.7,45.9 |or
		accept Bringing Down the Iron Horde##39532 |goto Tanaan Jungle/0 59.7,45.9 |or
		|tip This quest only has a chance of being available each, day, so it's not guaranteed to be available. You can only accept one of these quests, if it's available.
	step
		_Go through_ the doorway |goto Tanaan Jungle/0 60.9,44.6 < 20 |walk
		_Follow_ the path |goto Tanaan Jungle/0 59.8,41.9 < 30
		kill Corrupting Fiend##93024+ |tip The imps spawn in groups of 3 around this area.
		Slay #20# Demons |q Demonslayer of Tanaan##39519/1 |goto Tanaan Jungle/0 53.9,43.6
		You can find more around [Tanaan Jungle/0 56.9,35.2]
	step
		kill Grom'kar Warsmith##89935+, Grom'kar Sentry##89857+, Grom'kar Leadslinger##89777+, Grom'kar Cauterizer##90136+
		Slay #25# Iron Horde Orcs |q Bringing Down the Iron Horde##39532/1 |goto Tanaan Jungle/0 39.6,37.0
	step
		talk Nimi Brightcastle##93396
		turnin Demonslayer of Tanaan##39519 |goto Tanaan Jungle/0 59.7,45.9 |only if havequest(39519) or completedq(39519)
		turnin Bringing Down the Iron Horde##39532 |goto Tanaan Jungle/0 59.7,45.9 |only if havequest(39532) or completedq(39532)
	step
		You've completed the dailies for today
		Click to restart the dailies run |confirm |next "voljin_headhunters_start"
]])

ZygorGuidesViewer:RegisterInclude("H_Order_of_Awakened_Dailies", [[
		Complete the following guide before continuing:
		_Tanaan Jungle (100) Main Questline_
		confirm |only if not completedq(38578)
	step
	label "order_awakened_start"
		talk Dawn-Seeker Krisek##95424
		accept Unseen Influence##39433 |goto Tanaan Jungle/0 60.4,46.7
	step
		_Follow_ the path around the Alliance town |goto Tanaan Jungle/0 55.0,56.1 < 20
		_Follow_ the path |goto Tanaan Jungle/0 54.9,64.1 < 30
		kill Broodlord Ixkor##92429
		|tip You may have to wait for it to respawn.
		collect 1 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 57.8,67.3
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Follow_ the path |goto Tanaan Jungle/0 55.9,66.1 < 30
		_Continue_ following the path |goto Tanaan Jungle/0 54.9,63.5 < 30
		_Run through_ here |goto Tanaan Jungle/0 51.9,60.5 < 30
		_Jump down_ here |goto Tanaan Jungle/0 49.1,57.4 < 10
		kill Captain Grok'mar##93264
		|tip You may have to wait for him to respawn.
		collect 2 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 48.6,57.4
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Jump up_ here |goto Tanaan Jungle/0 49.1,57.4 < 10
		_Follow_ the path |goto Tanaan Jungle/0 49.1,59.3 < 30
		_Continue_ following the dirt path |goto Tanaan Jungle/0 46.6,65.9 < 30
		_Turn off_ the road here |goto Tanaan Jungle/0 43.1,70.2 < 20
		_Enter_ the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20
		_Follow_ the path |goto Tanaan Jungle/0 40.5,69.3 < 20
		kill Kris'kar the Unredeemed##93279
		|tip You may have to wait for him to respawn.
		collect 3 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 39.6,68.1
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Follow_ the path |goto Tanaan Jungle/0 40.5,69.3 < 20
		_Leave_ the hole in the ground |goto Tanaan Jungle/0 42.4,68.9 < 20
		kill Bramblefell##91093
		|tip You may have to wait for him to respawn. He's a big tree ent that patrols the northern part of Zorammarsh, so you may need to search for him.
		collect 4 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 40.8,69.6
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Follow_ the path |goto Tanaan Jungle/0 38.2,75.1 < 30
		_Enter_ the cave |goto Tanaan Jungle/0 37.4,75.9 < 30
		_Run down_ the path |goto Tanaan Jungle/0 36.4,77.0 < 20
		kill Captain Ironbeard##93076
		|tip You may have to wait for him to respawn. He's a skeleton that walks around in this area of the cave, so you may need to search for him.
		collect 5 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 36.5,79.8
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Follow_ the path |goto Tanaan Jungle/0 36.7,78.9 < 20
		_Continue_ following the path |goto Tanaan Jungle/0 36.4,76.4 < 20
		_Follow_ the path |goto Tanaan Jungle/0 38.5,74.6 < 40
		_Run on_ the dirt road |goto Tanaan Jungle/0 37.5,69.5 < 30
		_Follow_ the path |goto Tanaan Jungle/0 35.6,67.5 < 30
		_Follow_ the dirt path up |goto Tanaan Jungle/0 31.1,63.0 < 30
		_Run up_ the stairs |goto Tanaan Jungle/0 28.8,66.7 < 20
		_Continue_ up the stairs |goto Tanaan Jungle/0 29.1,68.4 < 20
		_Follow_ the stairs up |goto Tanaan Jungle/0 30.4,68.6 < 20
		kill Ceraxas##90434
		|tip You may have to wait for it to respawn.
		collect 6 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 31.4,68.0
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Run down_ the stairs |goto Tanaan Jungle/0 30.7,68.5 < 20
		_Follow_ the stairs up |goto Tanaan Jungle/0 30.3,70.2 < 20
		kill Imp-Master Valessa##90429
		|tip You may have to wait for her to respawn. She patrols this small area, so you may need to search for her.
		collect 7 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 31.6,72.8
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Follow_ the path |goto Tanaan Jungle/0 45.3,44.7 < 30
		kill Felsmith Damorka##92647
		|tip You may have to wait for her to respawn.
		collect 8 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 45.9,47.2
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		_Follow_ the path |goto Tanaan Jungle/0 47.8,44.7 < 30
		kill Grand Warlock Nethekurse##91695
		|tip You may have to wait for him to respawn. He walks in a circle around this area on this path, so you may need to search for him.
		collect 9 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 47.4,42.3
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		kill Commander Org'mok##89675
		|tip You may have to wait for him to respawn. He walks back and forth on this path, so you may need to search for him.
		collect 10 Fel-Corrupted Apexis Fragment##128346 |q Unseen Influence##39433/1 |goto Tanaan Jungle/0 50.3,45.2
		|tip These drop from any rare in Tanaan Jungle. You can also use the Group Finder to find Rares or do this quest while doing other dailies.
	step
		talk Dawn-Seeker Krisek##95424
		turnin Unseen Influence##39433 |goto Tanaan Jungle/0 60.4,46.7
	step
		You've completed the daily for today
		Click to restart the dailies run |confirm |next "order_awakened_start"
]])

ZygorGuidesViewer:RegisterInclude("H_Saberstalkers_Dailies", [[
		Complete the following guide before continuing:
		_Tanaan Jungle (100) Main Questline_
		confirm |only if not completedq(38578)
	step
	label "saberstalkers_start"
		talk Nimi Brightcastle##93396
		accept Tooth and Claw##39529 |goto Tanaan Jungle/0 59.7,45.9 |or
		|tip This quest has a chance to be available each day, but is not guaranteed to be available.
		_
		Click here if the quest is not available |confirm |or
	step
		_Go through_ the doorway |goto Tanaan Jungle/0 60.8,44.7 < 20
		kill Hulking Diretusk##89688+, Diretusk Sow##92876+, Diretusk Piglet##92875+
		collect 100 Tanaan Jungle Tooth##128438 |q Tooth and Claw##39529/1 |goto Tanaan Jungle/0 63.9,41.5
	step
		_Follow_ the path up |goto Tanaan Jungle/0 61.9,43.5 < 20
		talk Nimi Brightcastle##93396
		turnin Tooth and Claw##39529 |goto Tanaan Jungle/0 59.7,45.9
	step		
		_Follow_ the path around the Alliance town |goto Tanaan Jungle/0 55.0,56.1 < 20
		_Follow_ the path |goto Tanaan Jungle/0 54.5,62.9 < 30
		_Run on_ the dirt road |goto Tanaan Jungle/0 54.7,64.9 < 20
		_Go up_ the dirt path |goto Tanaan Jungle/0 54.0,70.5 < 20
		talk Z'tenga the Walker##92805
		accept Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
		|tip This quest can only be done once per week.
	step
		_Follow_ the path |goto Tanaan Jungle/0 54.7,76.7 < 30
		kill Blackfang Prowler##89746+, Blackfang Shaman##92481+, Blackfang Savage##89695+, Blackfang Hunter##89747+
		|tip They are all around this area. You can use the Group Finder and select Premade Groups -> Custom, then search for "Fang'rila" or "Blackfang". Being in a group will make this go much faster.
		collect 40 Blackfang Claw##124099 |q 39565 |goto Tanaan Jungle/0 55.8,78.6
	step
		talk Z'tenga the Walker##92805
		buy Minor Blackfang Challenge Totem##124093 |condition itemcount(124093) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.3,74.7
		buy Major Blackfang Challenge Totem##124094 |condition itemcount(124094) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.3,74.7
		buy Prime Blackfang Challenge Totem##124095 |condition itemcount(124095) > 0 or completedq(39565) |goto Tanaan Jungle/0 55.3,74.7
	step
		_Follow_ the path |goto Tanaan Jungle/0 54.7,75.9 < 30
		_Enter_ the Challenge Arena |goto Tanaan Jungle/0 54.8,80.9 < 20
		use Minor Blackfang Challenge Totem##124093
		kill Akrrilo##92766 |q Rumble in the Jungle##39565/1 |goto Tanaan Jungle/0 54.4,81.0
		|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
	step
		use Major Blackfang Challenge Totem##124094
		kill Rendarr##92817 |q Rumble in the Jungle##39565/2 |goto Tanaan Jungle/0 54.4,81.0
		|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
	step
		use Prime Blackfang Challenge Totem##124095
		kill Eyepiercer##92819 |q Rumble in the Jungle##39565/3 |goto Tanaan Jungle/0 54.4,81.0
		|tip Other people can help you, or you can help other people who summon him. Everyone will get credit.
	step
		_Follow_ the path |goto Tanaan Jungle/0 54.9,77.4 < 30
		talk Z'tenga the Walker##92805
		turnin Rumble in the Jungle##39565 |goto Tanaan Jungle/0 55.3,74.8
	step
		You've completed the dailies for today
		Click to restart the dailies run |confirm |next "saberstalkers_start"
]])