if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Aspirant",[[
	step
		talk Magister Edien Sunhollow##33542
		accept Up To The Challenge##13678 |goto Icecrown 76.3,24.3
	step
		talk Magister Edien Sunhollow##33542
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept A Blade Fit For A Champion##13673 |or |goto 76.3,24.4
		accept A Worthy Weapon##13674 |or |goto 76.3,24.4
		accept The Edge of Winter##13675 |or |goto 76.3,24.4
	step
		talk Amariel Sunsworn##33658
		accept Training in the Field##13676 |goto 76.3,24.4
	step
		talk Galathia Brightdawn##33659
		accept Learning the Reins##13677 |goto 76.2,24.4
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		click Lake Frog##33211+
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		Tell her _"I am glad to help."_
		collect Ashwood Brand##44981 |q 13673/1 |goto Grizzly Hills 61.2,50.3
	step
		click Winter Hyacinth##3231
		collect 4 Winter Hyacinth##45000 |q 13674 |goto Icecrown 69.1,76.2
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##8564 |goto Dragonblight 93.2,26.1
		collect Blade of Drak'Mar##44978 |q 13674/1
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13675 |goto Crystalsong Forest 54.5,74.9
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13675/1 |goto Howling Fjord 42.2,19.7
	step
		kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
		Kill #8# Icecrown Scourge |q 13676/1 |goto Icecrown 74.8,35.5
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13677 |goto 75.6,23.7
	step
		click Melee Target
		|tip If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks.
		Use your Thrust Ability #5# Times |q 13677/1 |goto 73.1,24.8
	step
		click Charge Target
		|tip Use Shield-Breaker ability until you notice the targets Defend is gone.
		Use your Charge Ability #2# Times |q 13677/3 |goto 72.9,25.1
	step
		click Ranged Target
		Use Shield-Breaker ability on Ranged Target to bring it's shields down
		Use Shield-Breaker ability on Ranged Target #2# Times |q 13677/2 |goto 73.3,25.0
		|tip These will only count if the target's shields are down.
	step
		talk Magister Edien Sunhollow##33542
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13673 |goto 76.3,24.4
		turnin A Worthy Weapon##13674 |goto 76.3,24.4
		turnin The Edge of Winter##13675 |goto 76.3,24.4
	step
		talk Amariel Sunsworn##33658
		turnin Training in the Field##13676 |goto 76.3,24.4
	step
		talk Galathia Brightdawn##33659
		turnin Learning the Reins##13677 |goto 76.2,24.4
	step
		Make sure you have 15 Aspirant's Seals:
		collect 15 Aspirant's Seal |q 13678/1
		|tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section. It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
	step
		talk Magister Edien Sunhollow##33542
		turnin Up To The Challenge##13678 |goto 76.3,24.4
]])

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Valiant",[[
	step
		talk Magister Edien Sunhollow##33542
		accept The Aspirant's Challenge##13680 |goto Icecrown 76.3,24.4
	step
		Equip the Horde Lance in your bags |use Horde Lance##46070
		Click to mount the Stabled Sunreaver Hawkstrider |invehicle |q 13680 |goto 71.8,20.0
	step
		talk Squire David##33447
		Tell him _"I am ready to fight!"_
		|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
		kill Argent Valiant##33448
		Use the abilities on your hotbar to defeat the Argent Valiant
		|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability. Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield. When his shield is down, use your Charge ability on him. Keep repeating this process until he is defeated.
		Defeat the Argent Valiant |q 13680/1 |goto 71.4,19.6
	step
		talk Magister Edien Sunhollow##33542
		turnin The Aspirant's Challenge##13680 |goto 76.3,24.4
		accept A Valiant Of Orgrimmar##13691 |only Orc |goto 76.3,24.4
		accept A Valiant Of Sen'jin##13693 |only Troll |goto 76.3,24.4
		accept A Valiant Of Thunder Bluff##13694 |only Tauren |goto 76.3,24.4
		accept A Valiant Of Undercity##13695 |only Scourge |goto 76.3,24.4
		accept A Valiant Of Silvermoon##13696 |only BloodElf |goto 76.3,24.4
	step
		talk Mokra the Skullcrusher##33361
		turnin A Valiant Of Orgrimmar##13691 |goto 76.5,24.6
		accept The Valiant's Charge##13697 |goto 76.5,24.6
		only Orc
	step
		talk Zul'tore##33372
		turnin A Valiant Of Sen'jin##13693 |goto 76.0,24.5
		accept The Valiant's Charge##13719 |goto 76.0,24.5
		only Troll
	step
		talk Runok Wildmane##33403
		turnin A Valiant Of Thunder Bluff##13694 |goto 76.2,24.6
		accept The Valiant's Charge##13720 |goto 76.2,24.6
		only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin A Valiant Of Undercity##13695 |goto 76.5,24.2
		accept The Valiant's Charge##13721 |goto 76.5,24.2
		only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin A Valiant Of Silvermoon##13696 |goto 76.5,23.9
		accept The Valiant's Charge##13722 |goto 76.5,23.9
		only BloodElf
	// ORC VALIANT RANK DAILY LOOP (BEGIN)
	step
		talk Mokra the Skullcrusher##33361
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept A Blade Fit For A Champion##13762 |or |goto 76.5,24.6
		accept A Worthy Weapon##13763 |or |goto 76.5,24.6
		accept The Edge Of Winter##13764 |or |goto 76.5,24.6
		only Orc
	step
		talk Akinos##33405
		accept A Valiant's Field Training##13765 |goto 76.5,24.5
		only Orc
	step
		talk Morah Worgsister##33544
		accept The Grand Melee##13767 |goto 76.4,24.6
		accept At The Enemy's Gates##13856 |goto 76.4,24.6
		only Orc
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		click Lake Frog##33211+
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13762/1 |goto Grizzly Hills 61.2,50.3
		only Orc
	step
		click Winter Hyacinth##3231
		collect 4 Winter Hyacinth##45000 |q 13763 |goto Icecrown 69.1,76.2
		only Orc
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##8564
		collect Blade of Drak'Mar##44978 |q 13763/1 |goto Dragonblight 93.2,26.1
		only Orc
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13764 |goto Crystalsong Forest 54.5,74.9
		only Orc
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13764/1 |goto Howling Fjord 42.2,19.7
		only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Campaign Warhorse |invehicle |q 13856 |goto Icecrown 48.9,71.4
		only Orc
	step
		kill 15 Boneguard Footman##33438+ |q 13856/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
		kill 10 Boneguard Scout##33550+ |q 13856/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13856/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Orc
	step
		Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856 |goto 49.1,71.4
		only Orc
	step
		kill 10 Converted Hero##32255+ |q 13765/1 |goto 44.3,54.2
		only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13767 |goto 75.5,24.0
		only Orc
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		Fight and defeat them
		|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
		collect 3 Mark of the Valiant##45127 |q 13767/1 |goto 75.3,26.0
		only Orc
	step
		talk Mokra the Skullcrusher##33361
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13762 |goto 76.5,24.6
		turnin A Worthy Weapon##13763 |goto 76.5,24.6
		turnin The Edge Of Winter##13764 |goto 76.5,24.6
		only Orc
	step
		talk Akinos##33405
		turnin A Valiant's Field Training##13765 |goto 76.5,24.5
		only Orc
	step
		talk Morah Worgsister##33544
		turnin The Grand Melee##13767 |goto 76.4,24.6
		turnin At The Enemy's Gates##13856 |goto 76.4,24.6
		only Orc
	// ORC VALIANT RANK DAILY LOOP (END)
	//
	// TROLL VALIANT RANK DAILY LOOP (BEGIN)
	step
		talk Zul'tore##33372
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept A Blade Fit For A Champion##13768 |or |goto 76.0,24.5
		accept A Worthy Weapon##13769 |or |goto 76.0,24.5
		accept The Edge Of Winter##13770 |or |goto 76.0,24.5
		only Troll
	step
		talk Shadow Hunter Mezil-kree##33540
		accept A Valiant's Field Training##13771 |goto 76.0,24.6
		only Troll
	step
		talk Gahju##33545
		accept The Grand Melee##13772 |goto 75.9,24.4
		accept At The Enemy's Gates##13857 |goto 75.9,24.4
		only Troll
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		click Lake Frog##33211+
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13768/1 |goto Grizzly Hills 61.2,50.3
		only Troll
	step
		click Winter Hyacinth##3231
		collect 4 Winter Hyacinth##45000 |q 13769 |goto Icecrown 69.1,76.2
		only Troll
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##8564
		collect Blade of Drak'Mar##44978 |q 13769/1 |goto Dragonblight 93.2,26.1
		only Troll
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13770 |goto Crystalsong Forest 54.5,74.9
		only Troll
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13770/1 |goto Howling Fjord 42.2,19.7
		only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Campaign Warhorse |invehicle |q 13857 |goto Icecrown 48.9,71.4
		only Troll
	step
		kill 15 Boneguard Footman##33438+ |q 13857/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
		kill 10 Boneguard Scout##33550+ |q 13857/2 
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13857/3 
		|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Troll
	step
		Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857 |goto 49.1,71.4
		only Troll
	step
		kill 10 Converted Hero##32255+ |q 13771/1 |goto 44.3,54.2
		only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Darkspear Raptor |invehicle |q 13772 |goto 75.6,23.8
		only Troll
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		Fight and defeat them
		|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
		collect 3 Mark of the Valiant##45127 |q 13772/1 |goto 75.3,26.0
		only Troll
	step
		talk Zul'tore##33372
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13768 |goto 76.0,24.5
		turnin A Worthy Weapon##13769 |goto 76.0,24.5
		turnin The Edge Of Winter##13770 |goto 76.0,24.5
		only Troll
	step
		talk Shadow Hunter Mezil-kree##33540
		turnin A Valiant's Field Training##13771 |goto 76.0,24.6
		only Troll
	step
		talk Gahju##33545
		turnin The Grand Melee##13772 |goto 75.9,24.4
		turnin At The Enemy's Gates##13857 |goto 75.9,24.4
		only Troll
	// TROLL VALIANT RANK DAILY LOOP (END)
	//
	// TAUREN VALIANT RANK DAILY LOOP (BEGIN)
	step
		talk Runok Wildmane##33403
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept A Blade Fit For A Champion##13773 |or |goto 76.2,24.6
		accept A Worthy Weapon##13774 |or |goto 76.2,24.6
		accept The Edge Of Winter##13775 |or |goto 76.2,24.6
		only Tauren
	step
		talk Dern Ragetotem##33539
		accept A Valiant's Field Training##13776 |goto 76.3,24.7
		only Tauren
	step
		talk Anka Clawhoof##33549
		accept The Grand Melee##13777 |goto 76.1,24.6
		accept At The Enemy's Gates##13858 |goto 76.1,24.6
		only Tauren
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		click Lake Frog##33211+
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13773/1 |goto Grizzly Hills 61.2,50.3
		only Tauren
	step
		click Winter Hyacinth##3231
		collect 4 Winter Hyacinth##45000 |q 13774 |goto Icecrown 69.1,76.2
		only Tauren
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##8564
		collect Blade of Drak'Mar##44978 |q 13774/1 |goto Dragonblight 93.2,26.1
		only Tauren
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13775 |goto Crystalsong Forest 54.5,74.9
		only Tauren
	step
		Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13775/1 |goto Howling Fjord 42.2,19.7
		only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Campaign Warhorse|invehicle |q 13858 |goto Icecrown 48.9,71.4
		only Tauren
	step
		kill 15 Boneguard Footman##33438+ |q 13858/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
		kill 10 Boneguard Scout##33550+ |q 13858/2
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13858/3
		|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Tauren
	step
		Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858 |goto 49.1,71.4
		only Tauren
	step
		kill 10 Converted Hero##32255+ |q 13776/1 |goto 44.3,54.2
		only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13777 |goto 75.5,24.3
		only Tauren
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		Fight and defeat them
		|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
		collect 3 Mark of the Valiant##45127 |q 13777/1 |goto 75.3,26.0
		only Tauren
	step
		talk Runok Wildmane##33403
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13773 |goto 76.2,24.6
		turnin A Worthy Weapon##13774 |goto 76.2,24.6
		turnin The Edge Of Winter##13775 |goto 76.2,24.6
		only Tauren
	step
		talk Dern Ragetotem##33539
		turnin A Valiant's Field Training##13776 |goto 76.3,24.7
		only Tauren
	step
		talk Anka Clawhoof##33549
		turnin The Grand Melee##13777
		turnin At The Enemy's Gates##13858 |goto 76.1,24.6
		only Tauren
	// TAUREN VALIANT RANK DAILY LOOP (END)
	//
	// SCOURGE VALIANT RANK DAILY LOOP (BEGIN)
	step
		talk Deathstalker Visceri##33373
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept A Blade Fit For A Champion##13778 |or |goto 76.5,24.2
		accept A Worthy Weapon##13779 |or |goto 76.5,24.2
		accept The Edge Of Winter##13780 |or |goto 76.5,24.2
		only Scourge
	step
		talk Sarah Chalke##33541
		accept A Valiant's Field Training##13781 |goto 76.6,24.1
		only Scourge
	step
		talk Handler Dretch##33547
		accept The Grand Melee##13782
		accept At The Enemy's Gates##13860 |goto 76.5,24.3
		only Scourge
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		click Lake Frog##33211+
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13778/1 |goto Grizzly Hills 61.2,50.3
		only Scourge
	step
		click Winter Hyacinth##3231
		collect 4 Winter Hyacinth##45000 |q 13779 |goto Icecrown 69.1,76.2
		only Scourge
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##8564
		collect Blade of Drak'Mar##44978 |q 13779/1 |goto Dragonblight 93.2,26.1
		only Scourge
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13780 |goto Crystalsong Forest 54.5,74.9
		only Scourge
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13780/1 |goto Howling Fjord 42.2,19.7
		only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Campaign Warhorse |invehicle |q 13860 |goto Icecrown 48.9,71.4
		only Scourge
	step
		kill 15 Boneguard Footman##33438+ |q 13860/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
		kill 10 Boneguard Scout##33550+ |q 13860/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13860/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Scourge
	step
		Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860 |goto 49.1,71.4
		only Scourge
	step
		kill 10 Converted Hero##32255+ |q 13781/1 |goto 44.3,54.2
		only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Forsaken Warhorse |invehicle |q 13782 |goto 75.6,23.9
		only Scourge
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		Fight and defeat them
		|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
		collect 3 Mark of the Valiant##45127 |q 13782/1 |goto 75.3,26.0
		only Scourge
	step
		talk Deathstalker Visceri##33373
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13778
		turnin A Worthy Weapon##13779
		turnin The Edge Of Winter##13780 |goto 76.5,24.2
		only Scourge
	step
		talk Sarah Chalke##33541
		turnin A Valiant's Field Training##13781 |goto 76.6,24.1
		only Scourge
	step
		talk Handler Dretch##33547
		turnin The Grand Melee##13782 |goto 76.5,24.3
		turnin At The Enemy's Gates##13860 |goto 76.5,24.3
		only Scourge
	// SCOURGE VALIANT RANK DAILY LOOP (END)
	//
	// BLOOD ELF VALIANT RANK DAILY LOOP (BEGIN)
	step
		talk Eressea Dawnsinger##33379
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		accept A Blade Fit For A Champion##13783 |or |goto 76.5,23.9
		accept A Worthy Weapon##13784 |or |goto 76.5,23.9
		accept The Edge Of Winter##13785 |or |goto 76.5,23.9
		only BloodElf
	step
		talk Kethiel Sunlance##33538
		accept A Valiant's Field Training##13786 |goto 76.4,23.8
		only BloodElf
	step
		talk Aneera Thuron##33548
		accept The Grand Melee##13787 |goto 76.5,23.9
		accept At The Enemy's Gates##13859 |goto 76.5,23.9
		only BloodElf
	step
		Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
		click Lake Frog##33211+
		Use the emote /kiss on the Lake Frogs
		Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		talk Maiden of Ashwood Lake##33220
		collect Ashwood Brand##44981 |q 13783/1 |goto Grizzly Hills 61.2,50.3
		only BloodElf
	step
		click Winter Hyacinth##3231
		collect 4 Winter Hyacinth##45000 |q 13784 |goto Icecrown 69.1,76.2
		only BloodElf
	step
		Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
		Listen to the Maiden of Drak'Mar
		click Blade of Drak'Mar##8564
		collect Blade of Drak'Mar##44978 |q 13784/1 |goto Dragonblight 93.2,26.1
		only BloodElf
	step
		kill Lord Everblaze##33289
		collect 1 Everburning Ember##45005 |q 13785 |goto Crystalsong Forest 54.5,74.9
		only BloodElf
	step
		clicknpc Maiden of Winter's Breath##33303
		Use the Everburning Ember |use Everburning Ember##45005
		collect Winter's Edge##45003 |q 13785/1 |goto Howling Fjord 42.2,19.7
		only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Campaign Warhorse |invehicle |q 13859 |goto Icecrown 48.9,71.4
		only BloodElf
	step
		kill 15 Boneguard Footman##33438+ |q 13859/1 |goto 50.1,74.8
		|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
		kill 10 Boneguard Scout##33550+ |q 13859/2 |goto 50.1,74.8
		|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		kill 3 Boneguard Lieutenant##33429+ |q 13859/3 |goto 50.1,74.8
		|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them. Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only BloodElf
	step
		Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859 |goto 49.1,71.4
		only BloodElf
	step
		kill 10 Converted Hero##32255 |q 13786/1 |goto 44.3,54.2
		only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13787 |goto 75.5,24.1
		only BloodElf
	step
		Talk to the riders on mounts of other Horde races
		Tell them _"I am ready to fight!"_
		Fight and defeat them
		|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range. Just remember to keep your shield maxed at 3 charges.
		collect 3 Mark of the Valiant##45127 |q 13787/1 |goto 75.3,26.0
		only BloodElf
	step
		talk Eressea Dawnsinger##33379
		|tip You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		turnin A Blade Fit For A Champion##13783 |goto 76.5,23.9
		turnin A Worthy Weapon##13784 |goto 76.5,23.9
		turnin The Edge Of Winter##13785 |goto 76.5,23.9
		only BloodElf
	step
		talk Kethiel Sunlance##33538
		turnin A Valiant's Field Training##13786 |goto 76.4,23.8
		only BloodElf
	step
		talk Aneera Thuron##33548
		turnin The Grand Melee##13787 |goto 76.5,23.9
		turnin At The Enemy's Gates##13859 |goto 76.5,23.9
		only BloodElf
	// BLOOF ELF VALIANT RANK DAILY LOOP (END)
	step
		Make sure you have 25 Valiant Seals:
		collect 25 Valiant's Seal |q 13697/1
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
		collect 25 Valiant's Seal |q 13719/1 
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
		collect 25 Valiant's Seal |q 13720/1 
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
		collect 25 Valiant's Seal |q 13721/1 
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
		collect 25 Valiant's Seal |q 13722/1 
		|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		turnin The Valiant's Charge##13697 |goto 76.5,24.6
		accept The Valiant's Challenge##13726 |goto 76.5,24.6
		only Orc
	step
		talk Zul'tore##33372
		turnin The Valiant's Charge##13719 |goto 76.0,24.5
		accept The Valiant's Challenge##13727 |goto 76.0,24.5
		only Troll
	step
		talk Runok Wildmane##33403
		turnin The Valiant's Charge##13720 |goto 76.2,24.6
		accept The Valiant's Challenge##13728 |goto 76.2,24.6
		only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin The Valiant's Charge##13721 |goto 76.5,24.2
		accept The Valiant's Challenge##13729 |goto 76.5,24.2
		only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin The Valiant's Charge##13722 |goto 76.5,23.9
		accept The Valiant's Challenge##13731 |goto 76.5,23.9
		only BloodElf
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Orgrimmar Wolf |invehicle |q 13726 |goto 72.2,22.5
		only Orc
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Darkspear Raptor |invehicle |q 13727 |goto 72.0,22.5
		only Troll
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Thunder Bluff Kodo |invehicle |q 13728 |goto 71.9,22.4
		only Tauren
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Forsaken Warhorse |invehicle |q 13729 |goto 72.1,22.4
		only Scourge
	step
		Equip the Horde Lance |use Horde Lance##46070
		Click to mount the Stabled Silvermoon Hawkstrider |invehicle |q 13731 |goto 72.2,22.4
		only BloodElf
	step
		talk Squire Danny##33518
		Tell him _"I am ready to fight!"_
		kill Argent Valiant##33448
		Use the abilities on your hotbar to defeat the Argent Champion
		|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability. Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again. Keep repeating this process until he is defeated.
		Defeat the Argent Valiant |q 13726/1 |goto 68.6,21.0 |only Orc
		Defeat the Argent Valiant |q 13727/1 |goto 68.6,21.0 |only Troll
		Defeat the Argent Valiant |q 13728/1 |goto 68.6,21.0 |only Tauren
		Defeat the Argent Valiant |q 13729/1 |goto 68.6,21.0 |only Scourge
		Defeat the Argent Valiant |q 13731/1 |goto 68.6,21.0 |only BloodElf
	step
		talk Mokra the Skullcrusher##33361
		turnin The Valiant's Challenge##13726 |goto 76.5,24.6
		accept A Champion Rises##13736 |goto 76.5,24.6
		only Orc
	step
		talk Zul'tore##33372
		turnin The Valiant's Challenge##13727 |goto 76.0,24.5
		accept A Champion Rises##13737 |goto 76.0,24.5
		only Troll
	step
		talk Runok Wildmane##33403
		turnin The Valiant's Challenge##13728 |goto 76.2,24.6
		accept A Champion Rises##13738 |goto 76.2,24.6
		only Tauren
	step
		talk Deathstalker Visceri##33373
		turnin The Valiant's Challenge##13729 |goto 76.5,24.2
		accept A Champion Rises##13739 |goto 76.5,24.2
		only Scourge
	step
		talk Eressea Dawnsinger##33379
		turnin The Valiant's Challenge##13731 |goto 76.5,23.9
		accept A Champion Rises##13740 |goto 76.5,23.9
		only BloodElf
	step
		talk Justicar Mariel Trueheart##33817
		turnin A Champion Rises##13736 |goto 69.7,22.9 |only Orc
		turnin A Champion Rises##13737 |goto 69.7,22.9 |only Troll
		turnin A Champion Rises##13738 |goto 69.7,22.9 |only Tauren
		turnin A Champion Rises##13739 |goto 69.7,22.9 |only Scourge
		turnin A Champion Rises##13740 |goto 69.7,22.9 |only BloodElf
		accept The Scourgebane##13795 |goto 69.7,22.9 |only DeathKnight
		accept Eadric the Pure##13794 |goto 69.7,22.9 |only if not DeathKnight
	step
		talk Crok Scourgebane##33762
		turnin The Scourgebane##13795 |goto 73.8,20.1
		only DeathKnight
	step
		talk Eadric the Pure##33759
		turnin Eadric the Pure##13794 |goto 70.0,23.4
		only if not DeathKnight
]])

ZygorGuidesViewer:RegisterInclude("H_Eastern_Plaguelands_Argent_Dawn",[[
	step
		talk Fiona##45417
		turnin Into the Woods##27683 |goto Eastern Plaguelands 9.0,66.5 |only if havequest(27683)
		accept Gidwin Goldbraids##27367|goto Eastern Plaguelands 9.0,66.5
		accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.0,66.5
	step
		talk Gidwin Goldbraids##45428
		turnin Gidwin Goldbraids##27367 |goto 4.1,36.0
		accept Just Encased##27368 |goto 4.1,36.0
	step
		Enter the tunnel |goto 4.7,35.6 < 5 |walk
		kill Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+ 
		collect 8 Crypt Bile |q 27368/1 |goto 5.1,33.4
	step
		Leave the tunnel |goto 4.7,35.6 < 5 |walk
		talk Gidwin Goldbraids##45428
		turnin Just Encased##27368 |goto Eastern Plaguelands 4.1,36.0
		accept Greasing the Wheel##27369 |goto Eastern Plaguelands 4.1,36.0
	step
		click Banshee's Bell##9889+ 
		|tip They are located right along the edge of the water.
		collect 10 Banshee's Bells |q 27369/1 |goto 3.4,38.0
	step
		talk Fiona##45417
		turnin Greasing the Wheel##27369 |goto 9.0,66.5
	step
		talk Tarenar Sunstrike##45429
		turnin Tarenar Sunstrike##27370 |goto 18.4,74.8
		accept What I Do Best##27371 |goto 18.4,74.8
	step
		kill 5 Death's Step Miscreation##45444+ |q 27371/1
	step
		Click the _Quest Complete_ box:
		turnin What I Do Best##27371 |goto 18.6,76.9
		accept A Gift For Fiona##27372 |goto 18.6,76.9
	step
		kill Plaguehound Runt##8596+
		|tip They share spawn locations with the Carrion Grubs. So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
		collect 10 Plaguehound Blood##60986 |q 27372/1 |goto 17.2,68.7
		You can find more Plague Hound Runts at the following location |goto Eastern Plaguelands 14.4,63.0
	step
		talk Fiona##45417
		turnin A Gift For Fiona##27372 |goto 9.0,66.5
		accept Onward, to Light's Hope Chapel##27373 |goto 9.0,66.5
	step
		clicknpc Captain Redpath##10937
		Choose 1 of the 3 buffs you can choose from |goto 8.8,66.6
		|tip All of the buffs only work while you're in Eastern Plaguelands. Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies. Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks. Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
		Click here to proceed |confirm 
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan |q 27373/1 |goto 8.8,66.6
	step
		talk Janice Myers##44232
		fpath Crown Guard Tower |goto 34.9,67.9
	step
		talk Urk Gagbaz##45500
		accept Zaeldarr the Outcast##27432 |goto 35.0,68.1
	step
		talk Fiona##45417
		turnin Onward, to Light's Hope Chapel##27373 |goto 34.9,69.1
	step
		talk Tarenar Sunstrike##45429
		accept Traveling Companions##27381 |goto 35.3,68.8
	step
		talk Carlin Redpath##11063
		accept Little Pamela##27383 |goto 35.6,68.9
	step
		Go to the top of the tower
		talk Argus Highbeacon##45451
		Ask him if he's interested in joining your caravan
		Find a traveling companion |q 27381/1 |goto 35.9,69.3
	step
		talk Argus Highbeacon##45451
		accept Rough Roads##27382 |goto 35.9,69.3
	step
		talk Tarenar Sunstrike##45429
		turnin Traveling Companions##27381 |goto 35.3,68.9
	step
		talk Pamela Redpath##10926
		turnin Little Pamela##27383 |goto 32.4,83.7
		accept Pamela's Doll##27384 |goto 32.4,83.7
		accept I'm Not Supposed to Tell You This##27392 |goto 32.4,83.7
	step
		You can find the doll parts in all of the buildings
		click Pamela's Doll's Right Side##4233
		collect Pamela's Doll's Right Side##12888 |q 27384 |goto 35.5,85.3
		click Pamela's Doll's Left Side##4232
		collect Pamela's Doll's Left Side##12887 |q 27384 |goto 35.5,85.3
		click Pamela's Doll's Head##4231
		collect Pamela's Doll's Head##12886 |q 27384 |goto 35.5,85.3
	step
		Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
		collect Pamela's Doll |q 27384/1
	step
		kill The Lone Hunter##45450
		collect Joseph's Hunting Blade |q 27392/1 |goto 40.3,83.8
	step
		talk Pamela Redpath##10926
		turnin Pamela's Doll##27384 |goto 32.4,83.7
		turnin I'm Not Supposed to Tell You This##27392 |goto 32.4,83.7
		accept Uncle Carlin##27385 |goto 32.4,83.7
	step
		talk Carlin Redpath##11063
		turnin Uncle Carlin##27385 |goto 35.6,68.9
		accept A Strange Historian##27386 |goto 35.6,68.9
	step
		talk Chromie##10667
		turnin A Strange Historian##27386 |goto 35.3,68.0
		accept Villains of Darrowshire##27387 |goto 35.3,68.0
		accept Heroes of Darrowshire##27388 |goto 35.3,68.0
		accept Marauders of Darrowshire##27389 |goto 35.3,68.0
	step
		talk Urk Gagbaz##45500
		accept Cenarion Tenacity##27544 |goto 35.0,68.1
	step
		talk Carlin Redpath##11063
		Ask him if he has the extended Annals of Darrowshire
		collect Extended Annals of Darrowshire |q 27388/1 |goto 35.6,68.9
	step
		click Shattered Sword of Marduk##4175
		collect Shattered Sword of Marduk##12957 |q 27387/2 |goto 39.8,72.4
	step "plaguebat"
		kill 13 Plaguebat##8600+ |q 27382/1 |goto 39.6,72.1
	step
		Go to the top of the tower
		talk Argus Highbeacon##45451
		turnin Rough Roads##27382 |goto 35.6,68.7
	step
		Enter the crypt |goto 24.2,78.5 < 5 |walk
		Go to the bottom of the crypt
		kill Zaeldarr the Outcast##12250
		collect Zaeldarr's Head |q 27432/1 |goto 23.8,77.9
	step
		click Redpath's Shield##4172
		collect Redpath's Shield##12955 |q 27388/3 |goto 22.1,68.2
	step
		Go upstairs
		click Davil's Libram##430
		collect Davil's Libram##12954 |q 27388/2 |goto 22.3,68.3
	step
		talk Urk Gagbaz##45500
		turnin Zaeldarr the Outcast##27432 |goto 35.0,68.2
	step
		talk Chromie##10667
		turnin Heroes of Darrowshire##27388 |goto 35.2,68.1
	step
		click Horgus' Skull##4173
		collect Skull of Horgus##12956 |q 27387/1 |goto 37.3,60.2
	step
		talk Rayne##16135
		turnin Cenarion Tenacity##27544 |goto 30.2,56.9
		accept Postponing the Inevitable##27420 |goto 30.2,56.9
		accept Amidst Death, Life##27421 |goto 30.2,56.9
	stickystart "plaguedisseminators"
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Western Necropolis |q 27421/2 |goto 33.7,44.4
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto 37.8,42.5
	step
		Go inside the necropolis
		Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
		Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto 37.6,48.3
	step "plaguedisseminators"
		kill Scourge Champion##8529+
		collect Fetid Skull##13157 |n
		Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
		collect 5 Resonating Skull##13155 |q 27389/1 |goto 36.4,46.0
		kill Shadowmage##8550+, Dark Adept##8546+
		collect Plague Disseminator Control Rune##61037 |n
		Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
		Destroy #3# Plague Disseminators |q 27420/1 |goto 36.4,46.0
	step
		talk Rayne##16135
		turnin Postponing the Inevitable##27420 |goto 30.2,56.9
		turnin Amidst Death, Life##27421 |goto 30.2,56.9
	step
		talk Chromie##10667
		turnin Villains of Darrowshire##27387 |goto 35.3,68.1
		turnin Marauders of Darrowshire##27389 |goto 35.3,68.1
		accept The Battle of Darrowshire##27390 |goto 35.3,68.1
	step
		Use your Relic Bundle |use Relic Bundle##15209
		Fight in the battle and follow the instructions that appear on your screen
		collect Redpath the Corrupted##10938 |goto 35.1,84.0
		Joseph Redpath will appear after the battle at the following location |goto Eastern Plaguelands 35.1,84.0
		talk Joseph Redpath##10936
		Accept Redpath's Forgiveness |q 27390/1 |goto 35.1,84.0
	step
		talk Pamela Redpath##10926
		turnin The Battle of Darrowshire##27390 |goto 32.4,83.7
		accept Hidden Treasures##27391 |goto 32.4,83.7
	step
		click Joseph's Chest##318
		turnin Hidden Treasures##27391 |goto 32.2,83.4
	step
		talk Fiona##45417
		accept The Trek Continues##27448 |goto 34.9,69.2
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride in Fiona's Caravan |q 27448/1 |goto 35.0,69.3
	step
		talk Fiona##45417
		turnin The Trek Continues##27448 |goto 52.9,53.1
		accept Boys Will Be Boys##27455 |goto 52.9,53.1
	step
		clicknpc Fiona's Caravan##45400
		Complete the Argus' Journal quest |goto 53.0,53.1 < 5
		|tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
		talk Betina Bigglezink##11035
		accept To Kill With Purpose##27451 |goto 53.2,54.6
		accept Dark Garb##27452 |goto 53.2,54.6
	step
		Go to the top of the tower
		talk Frederick Calston##45575
		accept Frederick's Fish Fancy##27450 |goto 53.8,54.0
	step
		talk Vex'tul##45574
		accept Honor and Strength##27449 |goto 52.8,51.4
	step
		kill 3 Mossflayer Rogue##45579+ |q 27449/1 |goto 52.8,51.4
	step
		talk Vex'tul##45574
		turnin Honor and Strength##27449 |goto 52.8,51.4
	stickystart "livingrots"
	step
		clicknpc Plague Puffer##45650+
		collect 8 Plague Puffer##61292 |q 27450/1 |goto 50.2,61.3
		clicknpc Infectis Incher##45655+
		collect 8 Infectis Incher##61293 |q 27450/2 |goto 50.2,61.3
		clicknpc Infectis Scuttler##45657+
		collect 8 Infectis Scuttler##61294 |q 27450/3 |goto 50.2,61.3
	step "livingrots"
		kill Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
		collect 7 Living Rot##15447 |n 
		|tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
		Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
		collect Coagulated Rot##15448 |q 27451/1 |goto 53.7,62.3
	step
		Click the _Quest Complete_ box:
		turnin To Kill With Purpose##27451 |goto 53.7,62.3
	step
		kill Dark Summoner##8551+, Vile Tutor##8548+
		collect Death Cultist Headwear##61280 |q 27452/1 |goto 55.7,61.0
		collect Death Cultist Robes##61281 |q 27452/2 |goto 55.7,61.0
	step
		Click the _Quest Complete_ box:
		turnin Dark Garb##27452 |goto 55.7,61.0
		accept Catalysm##27453 |goto 55.7,61.0
	step
		Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
		collect 8 Active Liquid Plague Agent##61285 |q 27453/1
	step
		Click the _Quest Complete_ box:
		turnin Catalysm##27453 |goto 57.6,72.6
		accept Just a Drop in the Bucket##27454 |goto 57.6,72.6
	step
		Use your Death Cultist Disguise |use Death Cultist Disguise##61283
		Wear your Death Cultist Disguise |havebuff 340019 |q 27454 |goto 61.7,75.5 --inv_helmet_152
	step
		click Mereldar Plague Cauldron##4331
		Choose to throw in an entire flask
		Disturb the Mereldar Plague Cauldron |q 27454/1 |goto 62.4,76.4
	step
		talk Betina Bigglezink##11035
		turnin Just a Drop in the Bucket##27454 |goto 53.2,54.6
	step
		Go to the top of the tower
		talk Frederick Calston##45575
		turnin Frederick's Fish Fancy##27450 |goto 53.8,54.0
	step
		talk Gidwin Goldbraids##45431
		turnin Boys Will Be Boys##27455 |goto 74.4,53.3
		accept A Boyhood Dream##27463 |goto 74.4,53.3
	step
		talk Rimblat Earthshatter##16134
		accept Gathering Some Grub(s)##27456 |goto 73.8,51.9
	step
		talk Smokey LaRue##11033
		accept Smokey and the Bandage##27458 |goto 74.9,53.5
	step
		talk Jessica Chambers##16256
		home Light's Hope Chapel |q 27459 |goto 75.6,52.4
	step
		talk Leonid Barthalomew the Revered##11036
		accept The Brotherhood of Light##27459 |goto 75.6,52.0
	step
		talk Lord Maxwell Tyrosus##11034
		turnin A Boyhood Dream##27463 |goto 75.9,52.0
		accept Argent Call: The Trial of the Crypt##27464 |goto 75.9,52.0
	step
		Enter the crypt |goto 77.2,50.8 < 5 |walk
		Go to the bottom of the crypt
		Use your Argent Scroll |use Argent Scroll##61309
		kill Argent Warden##45698+
		kill Lord Raymond George##45707
		Complete the Trial of the Crypt |q 27464/1 |goto 77.2,51.4
	step
		talk Lord Maxwell Tyrosus##11034
		turnin Argent Call: The Trial of the Crypt##27464 |goto 75.9,52.0
		accept Argent Call: The Noxious Glade##27465 |goto 75.9,52.0
	step
		talk Master Craftsman Omarion##16365
		accept Buried Blades##27467 |goto 75.7,52.0
	step
		kill Stephen Browman##46167
		collect Browman's Wrappings |q 27458/1 |goto 71.9,45.4
	step
		Run up this path |goto 72.1,41.6 < 5 |only if walking
		kill Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
		kill Skullmage##45691+, Noxious Assassin##45692+
		Kill #16# Noxious Glade Scourge |q 27465/1 |goto 77.4,37.3
		Kill #8# Noxious Glade Cultists |q 27465/2 |goto 77.4,37.3
		clicknpc Slain Scourge Trooper##45695+
		Bury #10# Blades |q 27467/1 |goto 77.4,37.3
		|tip Be careful of the patrolling elite, Garginox, in this area.
	step
		talk Master Craftsman Omarion##16365
		turnin Buried Blades##27467 |goto 75.7,52.0
	step
		talk Lord Maxwell Tyrosus##11034
		turnin Argent Call: The Noxious Glade##27465 |goto 75.9,52.0
	step
		talk Smokey LaRue##11033
		turnin Smokey and the Bandage##27458 |goto 74.9,53.5
	step
		kill Carrion Grub##8603+, Carrion Devourer##8605+
		collect 15 Slab of Carrion Worm Meat##13853 |q 27456/1 |goto 71.1,60.6
	step
		talk Archmage Angela Dosantos##16116
		turnin The Brotherhood of Light##27459 |goto 72.6,74.8
		accept Soft Landing##27460 |goto 72.6,74.8
	step
		kill Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
		Kill #10# Tyr's Hand Scarlet Crusaders |q 27460/1 |goto 73.6,74.8
	step
		click Crusader's Flare##6543
		turnin Soft Landing##27460 |goto 77.6,79.4
		accept To Take the Abbey##27461 |goto 77.6,79.4
		accept To Take the Barracks##27462 |goto 77.6,79.4
	step
		talk Crusade Commander Korfax##16112
		turnin To Take the Barracks##27462 |goto 75.3,76.2
		accept Scarlet Salvage##27614 |goto 75.3,76.2
		accept The Wrathcaster##27615 |goto 75.3,76.2
		accept The Huntsman##27616 |goto 75.3,76.2
		accept The Commander##27619 |goto 75.3,76.2
	step
		click Battered Chest##10
		collect Crimson Boar##61959 |q 27614/1 |goto 74.8,76.7
	step
		click Battered Chest##10
		collect Lihanna's Strand##61960 |q 27614/2 |goto 74.2,78.3
	step
		click Battered Chest##10
		collect Shroud of Uther##61961 |q 27614/3 |goto 75.1,79.0
	step
		click Battered Chest##10
		collect Gavinrad's Sigil##61962 |q 27614/4 |goto 75.9,77.5
	step
		Go into the basement of the fortress
		kill Mataus the Wrathcaster##46093 |q 27615/1 |goto 75.0,78.3
	step
		Go upstairs into the main room of the fortress
		kill Scarlet Commander Marjhan##46092 |q 27619/1 |goto 74.9,78.3
	step
		Go down the hall and up more stairs
		kill Huntsman Leopold##46094 |q 27616/1 |goto 74.5,77.5
	step
		talk Crusade Commander Korfax##16112
		turnin Scarlet Salvage##27614 |goto 75.3,76.2
		turnin The Wrathcaster##27615 |goto 75.3,76.2
		turnin The Huntsman##27616 |goto 75.3,76.2
		turnin The Commander##27619 |goto 75.3,76.2
		accept Argent Upheaval##27618 |goto 75.3,76.2
	step
		talk Archmage Angela Dosantos##16116
		turnin Argent Upheaval##27618 |goto 76.1,75.3
	step
		talk Crusade Commander Eligor Dawnbringer##16115
		turnin To Take the Abbey##27461 |goto 76.7,73.1
		accept Victory From Within##27612 |goto 76.7,73.1
		accept The Assassin##27613 |goto 76.7,73.1
	step
		Click the Argent Portal 
		|tip It looks like a swirling portal in a room on the north side of the building. Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
		Open the Portal within the Library Wing |q 27612/2 |goto 77.8,71.0
	step
		Click the Argent Portal 
		|tip It looks like a swirling portal in a room on the west side of the building.
		Open the Portal within the Hall of Arms |q 27612/1 |goto 78.6,72.9
	step
		Follow the big spiral stairs up to the top of the bell tower
		kill Rohan the Assassin##46095 |q 27613/1 |goto 77.6,72.7
	step
		talk Crusade Commander Eligor Dawnbringer##16115
		turnin Victory From Within##27612 |goto 76.7,73.1
		turnin The Assassin##27613 |goto 76.7,73.1
		accept Befouled No More##27617 |goto 76.7,73.1
	step
		talk Archmage Angela Dosantos##16116
		turnin Befouled No More##27617 |goto 76.1,75.3
		accept Like Rats##27620 |goto 76.1,75.3
	step
		kill Crusader Lord Valdelmar##46096 |q 27620/1 |goto 82.3,79.4
	step
		talk Leonid Barthalomew the Revered##11036
		turnin Like Rats##27620 |goto 75.6,52.0
	step
		talk Tarenar Sunstrike##45729
		accept Argent Call: Northdale##27466 |goto Eastern Plaguelands 75.8,52.4
	step
		talk Rimblat Earthshatter##16134
		turnin Gathering Some Grub(s)##27456 |goto 73.8,51.9
		accept An Opportune Alliance##27457 |goto 73.8,51.9
	step
		talk Vex'tul##45574
		accept Out of the Ziggurat##27481 |goto 61.8,41.0
	step
		talk Deacon Andaal##45736
		accept Righteous Indignation##27479 |goto 61.0,43.7
	step
		talk Gamella Cracklefizz##45735
		accept The Corpulent One##27477 |goto 61.6,43.1
	step
		talk Fiona##45417
		turnin An Opportune Alliance##27457 |goto 61.5,42.7
		turnin Argent Call: Northdale##27466 |goto 61.5,42.7
	step
		talk Tarenar Sunstrike##45729
		accept Ix'lar the Underlord##27487 |goto 61.6,43.2
	step
		kill Ix'lar the Underlord##45744 |q 27487/1 |goto 61.8,35.7
		|tip He's a big purple bug that walks around this area, so you may need to search for him.
		kill Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
		Kill #10# Ix'lar Minions |q 27487/2 |goto 61.8,35.7
	step
		kill Borelgore##11896 |q 27477/1 |goto 56.7,27.9
		|tip He's a huge yellow grub that walks along in this big trench.
	stickystart "mossflayer"
	step
		Run up the path |goto 58.9,20.4 < 5 |only if walking
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Warlord Thresh'jin##10822 
		|tip Don't worry that he's elite, you can kill him easily
		collect Body of Warlord Thresh'jin##61315 |q 27481/1 |goto 66.8,9.9
	step
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Out of the Ziggurat##27481
		accept Into the Flames##27482
	step
		Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
		Burn Warlord Thresh'jin's Body |q 27482/1 |goto 67.4,9.0
	step
		Click the Quest Complete box that displays on the right side of the screen under your minimap
		turnin Into the Flames##27482 |goto 67.4,9.0
	step "mossflayer"
		Don't walk over the dirt piles on the ground, they spawn more enemies
		kill Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+, Infected Mossflayer##12261+
		collect 30 Mossflayer Eye##61313 |q 27479/1 |goto 64.5,13.7
	step
		talk Deacon Andaal##45736
		turnin Righteous Indignation##27479 |goto 61.3,44.5
	step
		talk Gamella Cracklefizz##45735
		turnin The Corpulent One##27477 |goto 61.6,43.1
	step
		talk Fiona##45417
		turnin Ix'lar the Underlord##27487 |goto 61.5,42.7
	step
		talk Tarenar Sunstrike##45729
		accept Impatience##27488 |goto 61.6,43.2
	step
		click Open Prayer Book##254
		collect Gidwin's Prayer Book##61318 |q 27488/1 |goto 65.5,24.4
	step
		talk Tarenar Sunstrike##45729
		turnin Impatience##27488 |goto 61.6,43.2
		accept Nobody to Blame but Myself##27489 |goto 61.6,43.2
	step
		clicknpc Fiona's Caravan##45400
		Choose to go to the next destination
		Ride Fiona's Caravan to Northpass Tower |q 27489/1 |goto 61.6,42.5
	step
		talk Tarenar Sunstrike##45729
		turnin Nobody to Blame but Myself##27489 |goto 50.4,20.1
		accept Beat it Out of Them##27522 |goto 50.4,20.1
	step
		talk Kirkian Dawnshield##45826
		accept Wretched Hive of Scum and Villainy##27521 |goto 50.0,19.5
	step
		kill Scourge Siege Engineer##17878+ |goto 54.6,19.1
		Beat #6# Scourge Siege Engineers |q 27522/1 |goto 54.6,19.1
		Discover Gidwin's Location |q 27522/2 |goto 54.6,19.1
		Discover Gidwin's Captor |q 27522/3 |goto 54.6,19.1
	step
		kill Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
		Kill #9# Quel'lithien Wretched |q 27521/1 |goto 47.0,17.4
	step
		talk Corpseburner Tim##45816
		accept Duskwing, Oh How I Hate Thee...##27523 |goto 48.0,23.0
	step
		Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334 
		|tip If you get a message that there are no valid targets, wait until Duskwing spawns. He's a big gray bat that flies in the sky around this area.
		kill Duskwing##11897
		collect Patch of Duskwing's Fur##15850 |q 27523/1 |goto 46.4,33.8
	step
		talk Corpseburner Tim##45816
		turnin Duskwing, Oh How I Hate Thee...##27523 |goto 48.0,23.0
	step
		talk Fiona##45417
		turnin Beat it Out of Them##27522 |goto 50.5,20.2
		accept Blind Fury##27524 |goto 50.5,20.2
	step
		talk Argus Highbeacon##45451
		accept The Plaguewood Tower##27532 |goto 50.5,20.2
	step
		talk Kirkian Dawnshield##45826
		turnin Wretched Hive of Scum and Villainy##27521 |goto 50.0,19.5
	step
		talk Tarenar Sunstrike##45729
		turnin Blind Fury##27524 |goto 27.6,21.2
		accept Guardians of Stratholme##27525 |goto 27.6,21.2
	step
		talk Crusader Kevin Frost##45831
		accept Scourged Mass##27528 |goto 27.6,20.9
		accept Defenders of Darrowshire##27529 |goto 27.6,20.9
		accept Add 'em to the Pile##27539 |goto 27.6,20.9
	step
		kill Karthis Darkrune##45868 |q 27525/2 |goto 29.4,19.7
		collect The Baroness' Missive##61378 |n
		Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
		accept The Baroness' Missive##27551 |goto 29.4,19.7
	step
		talk Tarenar Sunstrike##45729
		turnin The Baroness' Missive##27551 |goto 27.4,21.3
		accept Gidwin's Fate Revealed##27526 |goto 27.4,21.3
	step
		Enter this building and watch the cutscene
		Find Gidwin Goldbraids |q 27526/1 |goto 29.1,26.2
	step
		talk Gidwin Goldbraids##45730
		turnin Gidwin's Fate Revealed##27526 |goto 28.4,25.9
		accept Journey's End##27527 |goto 28.4,25.9
	stickystart "plaguewood"
	step
		kill Omasum Blighthoof##45867 |q 27525/1 |goto 25.4,19.8
	step "plaguewood"
		All around Plaguewood, do the following
		kill Overstuffed Golem##45851+
		Use your Crusader's Torch on their corpses |use Crusader's Torch##61369
		Burn #8# Overstuffed Golem Corpses |q 27528/1 |goto 31.4,20.3
		kill Cursed Mage##8524+, Scourge Soldier##8523+
		collect 16 Stinking Skull##61372 |q 27539/1 |goto 31.4,20.3
		kill Cannibal Ghoul##8530+
		talk Darrowshire Spirit##11064 
		|tip They spawn after you kill Cannibal Ghouls.
		Free #8# Darrowshire Spirits |q 27529/1 |goto 31.4,20.3
	step
		talk Tarenar Sunstrike##45729
		turnin Guardians of Stratholme##27525 |goto 28.5,25.9
	step
		talk Crusader Kevin Frost##45831
		turnin Scourged Mass##27528 |goto 27.6,20.9
		turnin Defenders of Darrowshire##27529 |goto 27.6,20.9
		turnin Add 'em to the Pile##27539 |goto 27.6,20.9
		accept The Corpsebeasts##27530 |goto 27.6,20.9
	step
		Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375 
		|tip You will have to put 3 around each corpse, and you can't put them too close together.
		Destroy #3# Corpsebeasts |q 27530/1 |goto 28.3,32.3
	step
		talk Crusader Kevin Frost##45831
		turnin The Corpsebeasts##27530 |goto 27.6,20.9
	step
		talk Argent Apothecary Judkins##45828
		turnin The Plaguewood Tower##27532 |goto 17.7,28.0
		accept Counter-Plague Research##27531 |goto 17.7,28.0
		accept Just a Little Touched##27535 |goto 17.7,28.0
	step
		click Flesh Giant Foot##8077
		collect Flesh Giant Foot Scrapings |q 27531/3 |goto 25.1,34.5
	step
		click Rotberry Bush##28+
		collect 20 Rotberry##61364 |q 27531/1 |goto 23.5,22.4
		click Disembodied Arm##8373+
		collect 5 Disembodied Arm##61365 |q 27531/2 |goto 23.5,22.4
	step
		talk Argent Apothecary Judkins##45828
		turnin Counter-Plague Research##27531 |goto 17.7,28.0
	step
		talk Augustus the Touched##12384
		turnin Just a Little Touched##27535 |goto 11.3,28.6
		accept A Fate Worse Than Butchery##27533 |goto 11.3,28.6
		accept Augustus' Receipt Book##27534 |goto 11.3,28.6
	stickystart "plaguedswine"
	step
		click Augustus' Receipt Book##4872
		collect Augustus' Receipt Book##15884 |q 27534/1 |goto 14.2,26.3
	step "plaguedswine"
		kill 9 Plagued Swine##16117+ |q 27533/1 |goto 14.4,28.5
	step
		talk Augustus the Touched##12384
		turnin A Fate Worse Than Butchery##27533 |goto 11.3,28.6
		turnin Augustus' Receipt Book##27534 |goto 11.3,28.6
	step
		Use Gidwin's Hearthstone |use Gidwin's Hearthstone##61379
		Teleport to Light's Hope Chapel |goto 75.6,52.4 < 5 
		talk Fiona##45417
		turnin Journey's End##27527 |goto 73.7,52.1
	step
	label	"Annals"
		talk Lord Raymond George##49856
		|tip These are dungeon quests. If you are not high level, you will need to get a group to continue.
		accept Annals of the Silver Hand##28755 |repeatable |goto 76.1,51.0
	step
		click The Bastion Door##444
		Enter the hallway |goto Stratholme 30.5,35.8 < 10
		click Hall of the High Command Door##444
		Enter the Hallway and turn left |goto 20.1,59.5 < 10
		click Annals of the Silver Hand##8133
		collect Annals of the Silver Hand##65615 |q 28755/1 |goto Stratholme 27.5,74.7
	step
		talk Lord Raymond George##49856 |goto Eastern Plaguelands 76.2,51.0
		turnin Annals of the Silver Hand##28755 |repeatable |next "Annals" |only if rep('Argent Dawn')<=Exalted 
		|tip If you do not reset your instance then you will only be forced to clear mobs one time.
		Earn Exalted reputation with the Argent Dawn |condition rep('Argent Dawn')==Exalted |next "exalted" |only if rep('Argent Dawn')==Exalted
	step
	label exalted
		Congratulations, you are now Exalted with the Argent Dawn!
]])

ZygorGuidesViewer:RegisterInclude("H_Icecrown_Argent_Crusade_Rep",[[
	--step
	--	Routing to proper section |next "tabard" |only if completedq(13083)
	--	Routing to proper section |next |only if not completedq(13083)
	step
		talk Aedan Moran##30433
		fpath The Argent Vanguard |goto Icecrown 87.8,78.1
	step
		talk Highlord Tirion Fordring##28179
		accept Honor Above All Else##13036 |goto Icecrown 87.5,75.8
	step
		talk Crusade Commander Entari##30223
		turnin Honor Above All Else##13036 |goto 87.1,75.8
		accept Scourge Tactics##13008 |goto 87.1,75.8
	step
		talk Father Gustav##30226
		accept Curing The Incurable##13040 |goto 86.8,76.7
	step
		talk Crusader Lord Dalfors##30224
		accept Defending The Vanguard##13039 |goto 86.1,75.8
	step
		kill Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
		kill 15 Forgotten Depths Nerubian |q 13039/1 |goto 84.4,74.3
		collect 10 Forgotten Depths Venom Sac |q 13040/1 |goto 84.4,74.3
		Kill the white spider wrappings around this area
		Free #8# Webbed Crusaders |q 13008/1 |goto 84.4,74.3
	step
		talk Crusader Lord Dalfors##30224
		turnin Defending The Vanguard##13039 |goto 86.1,75.8
	step
		talk Father Gustav##30226
		turnin Curing The Incurable##13040 |goto 86.8,76.7
	step
		talk Crusade Commander Entari##30223
		turnin Scourge Tactics##13008 |goto 87.1,75.8
		accept If There Are Survivors...##13044 |goto 87.1,75.8
	step
		talk Penumbrius##30227
		turnin If There Are Survivors...##13044 |goto 87.0,79.0
		accept Into The Wild Green Yonder##13045 |goto 87.0,79.0
	step
		Click the Argent Skytalon to ride it |invehicle |c |q 13045 |goto 87.1,79.1
	step
		Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
		Once you pick up a Captured Crusader, fly to the following location |goto 86.9,76.5
		Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
		Repeat this process 2 more times
		Rescue #3# Captured Crusaders |q 13045/1 |goto 79.0,67.4
	step
		Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle |c
	step
		talk Highlord Tirion Fordring##28179
		turnin Into The Wild Green Yonder##13045 |goto 87.5,75.8
		accept A Cold Front Approaches##13070 |goto 87.5,75.8
	step
		talk Siegemaster Fezzik##30657
		turnin A Cold Front Approaches##13070 |goto 85.6,76.0
		accept The Last Line Of Defense##13086 |goto 85.6,76.0
	step
		Click the Argent Cannon to get on it |modelnpc Argent Cannon##30236 |invehicle |c |q 13086 |goto 85.3,75.9
	step
		Use the skills on your hotbar to kill scourge mobs and dragons
		kill Forgotten Depths Slayer##30593+
		Kill #100# Scourge Attackers |q 13086/1
		kill 3 Frostbrood Destroyer##30575+ |q 13086/2
	step
		Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
	step
		talk Siegemaster Fezzik##30657
		turnin The Last Line Of Defense##13086 |goto 85.6,76.0
	step
		talk Highlord Tirion Fordring##28179
		accept Once More Unto The Breach, Hero##13105 |goto 86.0,75.8 |only DeathKnight
		accept Once More Unto The Breach, Hero##13104 |goto 86.0,75.8 |only if not DeathKnight
	step
		talk The Ebon Watcher##30596
		turnin Once More Unto The Breach, Hero##13105 |goto 83.0,72.9 |only DeathKnight
		turnin Once More Unto The Breach, Hero##13104 |goto 83.0,72.9 |only if not DeathKnight
		accept The Purging Of Scourgeholme##13118 |goto 83.0,72.9
		accept The Scourgestone##13122 |goto 83.0,72.9
	step
		talk Crusade Architect Silas##30686
		accept The Stone That Started A Revolution##13130 |goto 83.0,73.1
	step
		talk Crusade Engineer Spitzpatrick##30714
		accept It Could Kill Us All##13135 |goto 83.0,73.1
	step
		talk Father Gustav##30683
		accept The Restless Dead##13110 |goto 82.9,72.8
	step
		kill 8 Reanimated Crusader##31043+ |q 13118/3 |goto 80.4,68.2
		kill 3 Forgotten Depths Underking##31039+ |q 13118/2 |goto 80.4,68.2
		collect 15 Scourgestone##43169 |q 13122/1 |goto 80.4,68.2
		Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
		Free #10# Restless Souls |q 13110/1 |goto 80.4,68.2
	step
		kill 3 Forgotten Depths High Priest##31037+ |q 13118/1 |goto 78.7,60.2
		You can find another Forgotten Depths High Priest at the following location |goto 76.2,61.0
	step
		talk Father Gustav##30683
		turnin The Restless Dead##13110 |goto 82.9,72.8
	step
		talk The Ebon Watcher##30596
		turnin The Purging Of Scourgeholme##13118 |goto 83.0,72.9
		turnin The Scourgestone##13122 |goto 83.0,72.9
		accept The Air Stands Still##13125 |goto 83.0,72.9
	step
		Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206 
		|tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
		kill Salranax the Flesh Render##30829 |q 13125/1 |goto 77.6,62.2
	step
		Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206 
		|tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
		kill High Priest Yath'amon##30831 |q 13125/3 |goto 79.7,60.9
	step
		Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206 
		|tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
		kill Underking Talonox##30830 |q 13125/2 |goto 76.6,54.1
	step
		Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown 83.0,72.6 < 5
		talk The Ebon Watcher##30596
		turnin The Air Stands Still##13125 |goto 83.0,72.9
	step
		kill Unbound Ent##30862+, Unbound Dryad##30860+
		collect 8 Crystallized Energy##43225 |q 13135/1 |goto Crystalsong Forest 59.9,57.2
		click Crystalline Heartwood##8439
		collect 10 Crystalline Heartwood##43217 |q 13130/1 |goto Crystalsong Forest 59.9,57.2
	step
		click Ancient Elven Masonry##8356
		collect 10 Ancient Elven Masonry|q 13130/2 |goto 73.8,53.0
		You can find more Ancient Elven Masonry at the following location |goto 79.6,61.3
	step
		talk Crusade Architect Silas##30686
		turnin The Stone That Started A Revolution##13130 |goto Icecrown 83.0,73.1
	step
		talk Crusade Engineer Spitzpatrick##30714
		turnin It Could Kill Us All##13135 |goto 83.0,73.1
	step
		talk Father Gustav##30683
		accept Into The Frozen Heart Of Northrend##13139 |goto 82.9,72.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Into The Frozen Heart Of Northrend##13139 |goto 86.0,75.8
		accept The Battle For Crusaders' Pinnacle##13141 |goto 86.0,75.8
	step
		Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		Watch the Battle for Crusaders' Pinnacle |q 13141/1 |goto 80.1,72.0
	step
		talk Father Gustav##30683
		turnin The Battle For Crusaders' Pinnacle##13141 |goto 82.9,72.8
		accept The Crusaders' Pinnacle##13157 |goto 82.9,72.8
	step
		talk Highlord Tirion Fordring##28179
		turnin The Crusaders' Pinnacle##13157 |goto 79.8,71.8
		accept A Tale of Valor##13068 |goto 79.8,71.8
	step
		talk Warlord Hork Strongbrow##31240
		accept Orgrim's Hammer##13224 |goto 79.5,72.7
	step
		talk Crusader Bridenbrad##30562
		turnin A Tale of Valor##13068 |goto 79.8,30.8
		accept A Hero Remains##13072 |goto 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin A Hero Remains##13072 |goto 79.8,71.8
		accept The Keeper's Favor##13073 |goto 79.8,71.8
	step
		talk Arch Druid Lilliandra##30630
		Ask her for a portal to Moonglade |goto 87.1,77.0 < 5
		Click the Moonglade Portal that appears next to you
		talk Keeper Remulos##11832
		turnin The Keeper's Favor##13073
		accept Hope Within the Emerald Nightmare##13074 |goto Moonglade 36.2,41.8
	step
		click Emerald Acorn##424
		collect 3 Emerald Acorn##44790 |q 13074/1 |goto 33.7,44.1
	step
		Right click your Fitfull Dream buff to awaken from the nightmare |nobuff Spell_Nature_Sleep |q 13074 
		|tip The Fitfull Dream buff icon looks like a closed eye.
	step
		talk Keeper Remulos##11832
		turnin Hope Within the Emerald Nightmare##13074 |goto 36.2,41.8
		accept The Boon of Remulos##13075 |goto 36.2,41.8
	step
		talk Keeper Remulos##11832
		Tell him you wish to return to Arch Druid Lilliandra |goto 36.2,41.8 < 5 |walk
		talk Crusader Bridenbrad##30562
		turnin The Boon of Remulos##13075 |goto Icecrown 79.8,30.8
		accept Time Yet Remains##13076 |goto Icecrown 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Time Yet Remains##13076 |goto 79.8,71.8
		accept The Touch of an Aspect##13077 |goto 79.8,71.8
	step
		talk Tariolstrasz##26443 
		Tell him you need to go to the top of the temple |goto Dragonblight 57.9,54.2 < 5
		talk Alexstrasza the Life-Binder##26917
		turnin The Touch of an Aspect##13077 |goto 59.8,54.7
		accept Dahlia's Tears##13078 |goto 59.8,54.7
	step
		talk Torastrasza##26949
		Tell him you want to go to the ground level of the temple |goto 59.5,53.3 < 5
		There should be a fight happening, so just wait around until the fight is over 
		|tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
		At the end of the fight, a Ruby Watcher will blow a lot of fire on the ground and the Dahlia's Tears will spawn
		click Dahlia's Tears##8329
		collect Dahlia's Tears##43084 |q 13078/1 |goto 43.2,51.7
	step
		talk Tariolstrasz##26443 
		Tell him you need to go to the top of the temple |goto 57.9,54.2 < 5
		talk Alexstrasza the Life-Binder##26917
		turnin Dahlia's Tears##13078 |goto 59.8,54.7
		accept The Boon of Alexstrasza##13079 |goto 59.8,54.7
	step
		talk Torastrasza##26949
		Tell him you want to go to the ground level of the temple |goto 59.5,53.3 < 5
		talk Crusader Bridenbrad##30562
		turnin The Boon of Alexstrasza##13079 |goto Icecrown 79.8,30.8
		accept Hope Yet Remains##13080 |goto Icecrown 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Hope Yet Remains##13080 |goto 79.8,71.8
		accept The Will of the Naaru##13081 |goto 79.8,71.8
	step
		talk A'dal##18481
		turnin The Will of the Naaru##13081 |goto Shattrath City 54,44.8
		accept The Boon of A'dal##13082 |goto Shattrath City 54,44.8
	step
		talk Crusader Bridenbrad##30562
		turnin The Boon of A'dal##13082 |goto Icecrown 79.8,30.8
	step
		click Bridenbrad's Possessions##1
		accept Light Within the Darkness##13083 |goto 79.8,30.8
	step
		talk Highlord Tirion Fordring##28179
		turnin Light Within the Darkness##13083 |goto 79.8,71.8
	step
	label "tabard"
		You should now be above honored with the Argent Crusade.
		The fastest way to continue to earn reputation with Argent Crusade is to buy a tabard and run any dungeon that gives experience.
		|confirm
	step
		talk Veteran Crusader Aliocha Segard##30431
		buy 1 Tabard of the Argent Crusade##43154 |goto Icecrown 87.5,75.6
	step
		Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
		You can run any dungeon in Northrend to gain reputation for the Argent Crusade
		Friendly with Argent Crusade |condition rep('Argent Crusade')>=Friendly
		Honored with Argent Crusade |condition rep('Argent Crusade')>=Honored
		Revered with Argent Crusade |condition rep('Argent Crusade')>=Revered
		Become Exalted with Argent Crusade |condition rep('Argent Crusade')==Exalted
	step
		'Congratulations! You are now Exalted with the Argent Crusade!
]])

ZygorGuidesViewer:RegisterInclude("H_Firelands_PreQuests",[[
	step
		Click the Warchief's Command Board 
		|tip It looks like a wooden wall with a bunch of paper notes on it.
		accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar 49.7,76.5
		You will automatically accept a quest by entering Orgrimmar
		accept A Personal Summons##28790 |goto Orgrimmar 49.7,76.5
	step
		talk Farseer Krogar##45244
		turnin A Personal Summons##28790 |goto 50.5,38.4
		accept The Eye of the Storm##28805 |goto 50.5,38.4
	step
		Click the Waters of Farseeing 
		|tip It looks like a small bowl with spinning bright blue water in it.
		Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
	step
		talk Farseer Krogar##45244
		turnin The Eye of the Storm##28805 |goto 50.5,38.4
	step
		talk Cenarion Emissary Blackhoof##15188
		Ask him to please send you to Moonglade |goto 50.5,38.4 < 5
		You will teleport to Moonglade |goto Moonglade 45.1,43.1 < 5
		talk Emissary Windsong##39865
		turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade 45.5,44.9
		accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
	step
		talk Sebelia##40843
		home Nordrassil |goto Mount Hyjal 63.1,24.1
	step
		talk Ysera##40928
		turnin As Hyjal Burns##25316 |goto 62.0,24.9
		accept Protect the World Tree##25317 |goto 62.0,24.9
	step
		talk Anren Shadowseeker##39925
		accept The Earth Rises##25460 |goto 64.0,22.6
	step
		talk Tholo Whitehoof##40278
		accept Inciting the Elements##25370 |goto 64.0,22.5
	step
		kill 8 Scalding Rock Elemental |q 25460/1 |goto 65.8,20.8
		Click Juniper Berries
		|tip They look like small green bushes with small red berries on them, at the base of trees around this area.
		collect 4 Juniper Berries##53009 |n
		Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 
		|tip They look like small blue flying dragons around this area.
		Follow the Faerie Dragons to find Twilight Inciters
		kill 4 Twilight Inciter |q 25370/1 |goto 65.8,20.8
	step
		talk Tholo Whitehoof##40278
		turnin Inciting the Elements##25370 |goto 64.0,22.5
		accept Flames from Above##25574 |goto 64.0,22.5
	step
		talk Anren Shadowseeker##39925
		turnin The Earth Rises##25460 |goto 64.0,22.6
	step
		Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
		Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
	step
		talk Tholo Whitehoof##40278
		turnin Flames from Above##25574 |goto 64.0,22.5
	step
		talk Malfurion Stormrage##15362
		turnin Protect the World Tree##25317 |goto 47.7,35.5
		accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept The Flameseer's Staff##25472 |goto 47.7,35.5
	step
		kill 4 Twilight Flamecaller |q 25319/1 |goto 47.8,29.4
		kill 10 Twilight Vanquisher |q 25319/2 |goto 47.8,29.4
		Click Charred Stagg Fragments 
		|tip They look like small white pieces on the ground around this area.
		collect 8 Charred Staff Fragment |q 25472/1 |goto 47.8,29.4
	step
		talk Malfurion Stormrage##15362
		turnin War on the Twilight's Hammer##25319
		turnin The Flameseer's Staff##25472
		accept Flamebreaker##25323 |goto 47.7,35.5
	step
		Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
		kill 30 Unbound Flame Spirit |q 25323/1 |goto 44.7,33.2
		You can find more Blazebound Revenants at the following location |goto 48.5,29.2
	step
		talk Malfurion Stormrage##15362
		turnin Flamebreaker##25323 |goto 47.7,35.5
		accept The Return of Baron Geddon##25464 |goto 47.7,35.5
	step
		Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 
		|tip He's a big fire elemental standing in the middle of this crater.
		Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!" |goto 44.1,27.0
	step
		talk Malfurion Stormrage##15362
		turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
	step
		talk Windspeaker Tamila##39869
		accept Emerald Allies##25430 |goto 47.7,35.5
	step
		talk Alysra##38917
		turnin Emerald Allies##25430 |goto 48.4,19.0
		accept The Captured Scout##25320 |goto 48.4,19.0
	step
		talk Scout Larandia##40096
		turnin The Captured Scout##25320 |goto 44.5,18.9
		accept Twilight Captivity##25321 |goto 44.5,18.9
	step
		kill Twilight Overseer##40123
		collect Twilight Overseer's Key |q 25321/1 |goto 44.4,20.7
	step
		talk Scout Larandia##40096
		turnin Twilight Captivity##25321 |goto 44.5,18.9
		accept Return to Alysra##25424 |goto 44.5,18.9
	step
		talk Alysra##38917
		turnin Return to Alysra##25424 |goto 48.4,19.0
		accept A Prisoner of Interest##25324 |goto 48.4,19.0
	step
		_Enter_ the cave |goto 52.6,17.3 < 5 
		Follow the path in the cave
		talk Captain Saynna Stormrunner##40139
		turnin A Prisoner of Interest##25324 |goto 56.8,18.8
		accept Through the Dream##25325 |goto 56.8,18.8
	step
		Deliver Arch Druid Fandral Staghelm |q 25325/1 |goto 52.6,17.3
	step
		talk Alysra##40178
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
		accept End of the Supply Line##25233 |goto 35.8,19.7
		accept In the Rear With the Gear##25234 |goto 35.8,19.7
	step
		kill 6 Twilight Hunter |q 25255/1 |goto 34.6,24.5
		kill 4 Twilight Proveditor |q 25233/1 |goto 34.6,24.5
		|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
		Click Twilight Supplies 
		|tip The Twilight Slaves are carrying them. You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
		collect 36 Twilight Supplies |q 25234/1 |goto 34.6,24.5
	step
		talk Jadi Falaryn##39427
		turnin End of the Supply Line##25233 |goto 35.8,19.7
		turnin In the Rear With the Gear##25234 |goto 35.8,19.7
	step
		talk Oomla Whitehorn##39429
		turnin Harrying the Hunters##25255 |goto 35.7,19.4
		accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
	step
		talk Takrik Ragehowl##39432
		turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
		accept Howling Mad##25270 |goto 30.1,31.7
	step
		kill Lycanthoth Vandal##39445+
		collect 6 Polluted Incense |q 25270/1 |goto 29.0,31.4
	step
		talk Takrik Ragehowl##39432
		turnin Howling Mad##25270 |goto 30.1,31.7
		accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
	step
		Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 
		|tip Inside the cave.
		kill Lycanthoth |q 25272/1 |goto 32.4,37.3
	step
		talk Spirit of Lo'Gosh##39622
		turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
	step
		talk Spirit of Lo'Gosh##39622
		accept The Shrine Reclaimed##25279 |goto 29.6,29.3
	step
		talk Takrik Ragehowl##39432
		turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
		accept Cleaning House##25277 |goto 28.4,29.9
	step
		talk Royce Duskwhisper##39435
		accept The Eye of Twilight##25300 |goto 28.3,30.0
	step
		talk Rio Duran##39434
		accept From the Mouth of Madness##25297 |goto 28.2,29.9
	step
		Click a Bitterblossom 
		|tip They look like purple flowers around this small island.
		collect Bitterblossom |q 25297/2 |goto 28.9,32.1
	step
		Click a Stonebloom 
		|tip They look like piles of brown-ish bags on the ground around this area.
		collect Stonebloom |q 25297/1 |goto 26.5,35.0
	step
		Click the Eye of Twilight 
		|tip It looks like a glowing purple ball in a metal rod with a hook on it.
		turnin The Eye of Twilight##25300 |goto 27.2,35.2
		accept Mastering Puppets##25301 |goto 27.2,35.2
	step
		Click a Darkflame Ember 
		|tip They are purple glowing coals sitting in a brazier.
		collect Darkflame Ember |q 25297/3 |goto 28.4,35.8
	step
		Click the Twilight Cauldron 
		|tip It's a metal pot with blue smoke coming out of it.
		turnin From the Mouth of Madness##25297 |goto 28.4,36.5
		accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
	step
		_Enter_ the cave |goto 26.9,36.3 < 5 
		talk Kristoff Manheim##39797
		accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8 
		|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
	step
		Click Gar'gol's Personal Treasure Chest 
		|tip It's a small metal chest sitting on a small stone mound.
		collect Rusted Skull Key |q 25328/1 |goto 26.5,38.5
	step
		Click The Twilight Apocrypha 
		|tip It's an open book layin on a wooden crate at the very back of the cave.
		turnin Mastering Puppets##25301 |goto 25.8,41.6
		accept Elementary!##25303 |goto 25.8,41.6
	stickystart "hovelbrute"
	step
		Click the Crucible of Fire 
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
	step
		Click the Crucible of Earth 
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7
	step
		Click the Crucible of Air 
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
	step
		Click the Crucible of Water 
		|tip It looks like a floating glowing hourglass.
		Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
	step
		Click The Twilight Apocrypha 
		|tip It's an open book layin on a wooden crate at the very back of the cave.
		turnin Elementary!##25303 |goto 25.8,41.6
		accept Return to Duskwhisper##25312 |goto 25.8,41.6
	step "hovelbrute"
		kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
		Slay 8 Minions of Gar'gol |q 25277/1
		talk Twilight Servitor##39644 |goto 26.7,39.2
		Administor the drought
		Free 8 Twilight Servitors |q 25298/1
	step
		talk Kristoff Manheim##39797
		turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
		accept Get Me Outta Here!##25332 |goto 27.2,40.8
	step
		Leave the cave |goto 27.1,36.0 < 10
		Escort Kristoff Out |q 25332/1
	step
		talk Royce Duskwhisper##39435
		turnin Return to Duskwhisper##25312 |goto 28.6,30.2
		turnin Get Me Outta Here!##25332 |goto 28.6,30.2
	step
		talk Takrik Ragehowl##39432
		turnin Cleaning House##25277 |goto 28.4,29.9
		accept Sweeping the Shelf##25354 |goto 28.4,29.9
		accept Lightning in a Bottle##25355 |goto 28.4,29.9
	step
		talk Rio Duran##39434
		turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
	step
		kill 8 Twilight Stormcaller |q 25354/1 |goto 29.1,40.7
		kill 5 Howling Riftdweller |q 25354/2 |goto 29.1,40.7
		Click a Lightning Channel 
		|tip They look like rods standing upright around this area, with lamps at the top of them.
		collect Charged Condenser Jar |q 25355/1 |goto 29.1,40.7
	step
		Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
		talk Spirit of Lo'Gosh##39622
		turnin Lightning in a Bottle##25355
		accept Into the Maw!##25617
	step
		_Go inside_ the portal |goto 25.8,41.5 < 5 
		talk Jordan Olafson##40834
		turnin Into the Maw!##25617 |goto 26.3,41.9
		accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
		accept Crushing the Cores##25577 |goto 26.3,41.9
	step
		talk Yargra Blackscar##40837
		accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
	step
		kill 12 Dark Iron Laborer |q 25576/1 |goto 29.6,41.8
		kill Searing Guardian##40841+
		collect 8 Smoldering Core##55123 |n
		Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 
		|tip They are small anvils sitting on the ground around this area.
		Destroy 8 Smoldering Cores |q 25577/1 |goto 29.6,41.8
		Click Twilight Arms Crates 
		|tip They look like wooden boxes sitting on the ground around this area.
		Destroy 10 Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
	step
		talk Yargra Blackscar##40837
		turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
	step
		talk Jordan Olafson##40834
		turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
		turnin Crushing the Cores##25577 |goto 26.3,41.9
		accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
	step
		kill Cindermaul |q 25599/1 |goto 30.7,41.7
		Click the Battered Stone Chest 
		|tip It spawns after you kill Cindermaul.
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
		kill Forgemaster Pyrendius |q 25600/1 |goto 31.9,46.3
	step
		talk Jordan Olafson##40834
		turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
		accept Return from the Firelands##25612 |goto 26.3,41.9
	step
		_Go inside_ the blue portal |goto 26.3,40.9 < 5
		talk Takrik Ragehowl##39432
		turnin Sweeping the Shelf##25354 |goto 28.4,29.9
		turnin Return from the Firelands##25612 |goto 28.4,29.9
	step
		talk Vision of Ysera##46987
		accept Aviana's Legacy##27874 |goto 27.0,62.7
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
		collect 8 Bileberry |q 25408/1 |goto 21.1,42.6
	step
		talk Tyrus Blackhorn##39933
		turnin Seeds of Their Demise##25408 |goto 22.3,44.9
		accept A New Master##25411 |goto 22.3,44.9
	step
		kill Twilight Inferno Lord##39974
		Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
		Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
	step
		Next to you:
		talk Subjugated Inferno Lord##40093
		turnin A New Master##25411
		accept The Name Never Spoken##25412
	stickystart "frightanimal"
	step
		Click the Southern Firestone 
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
	step
		Click the Central Firestone 
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Central Firestone |q 25412/2 |goto 11.7,41.5
	step
		Click the Northern Firestone 
		|tip It looks like a metal stand with a small flame at the top of it.
		Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
	step "frightanimal"
		kill 10 Raging Firestorm |q 25381/1
		kill 6 Twilight Inferno Lord |q 25382/1
		Click Panicked Bunnies and Terrified Squirrels 
		|tip They are small and run around this area.
		collect 10 Frightened Animal |q 25385/1 |goto 11.3,38.2
	step
		talk Laina Nightsky##39927
		turnin Fighting Fire With ... Anything##25381
		turnin Disrupting the Rituals##25382 |goto 19.0,40.9
	step
		talk Mylune##39930
		turnin Save the Wee Animals##25385
		accept Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin The Name Never Spoken##25412
		accept Black Heart of Flame##25428 |goto 22.3,44.9
	stickystart "frightanimal"
	step
		Use your Charred Branch while in the burning forest area |use Charred Branch##53464
		kill Thol'embaar##40107
		collect Black Heart of Thol'embaar |q 25428/1 |goto 14.6,42.2
	step "injuredfawn"
		Click 3 Injured Fawns 
		|tip They look like tiny deer laying on the ground around this area.
		Lead the Injured Fawns back to Mylune at [19.2,37.9]
		Escort 3 Injured Fawns Home |q 25392/1 |goto 12.5,44.6
	step
		talk Mylune##39930
		turnin Oh, Deer!##25392 |goto 19.2,37.9
	step
		talk Tyrus Blackhorn##39933
		turnin Black Heart of Flame##25428
		accept Good News... and Bad News##29066 |goto 22.3,44.9
	step
		talk Laina Nightsky##39927
		accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
	step
		talk Matoclaw##39928
		turnin Good News... and Bad News##29066 |goto 19.0,37.0
	step
		talk Keeper Taldros##39932
		turnin Last Stand at Whistling Grove##25940
		accept The Bears Up There##25462 |goto 13.7,32.8
	step
		Click the Climbing Tree 
		|tip They look like small ladders leaning aginst the trees around this area.
		Click Hyjal Bear Cubs in the tree
		Use your Climb Up ability to climb to the top of the tree
		Use your Chuck-a-bear ability to throw the cubs down 
		|tip Aim the yellow spot at the bearskin trampoline on the ground.
		Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
	step
		talk Keeper Taldros##39932
		turnin The Bears Up There##25462
		accept Smashing Through Ashes##25490 |goto 13.7,32.8
	step
		kill 8 Charbringer |q 25490/1 |goto 16.4,51.8
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Smashing Through Ashes##25490
		accept Durable Seeds##25491
		accept Fresh Bait##25493 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		accept Firebreak##25492 |goto 27.1,63.0
	step
		kill 10 Lava Surger |q 25492/1
		kill Core Hound##46910+
		collect 4 Core Hound Entrails |q 25493/1
		Click Scorched Soil 
		|tip They look like piles of dirt around this area.
		collect 10 Hyjal Seedling |q 25491/1 |goto 34.0,53.2
	step
		talk Thisalee Crow##41006
		accept The Wormwing Problem##25655
		accept Scrambling for Eggs##25656 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin Aviana's Legacy##27874
		accept An Offering for Aviana##25663 |goto 44.4,46.2
	step
		Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
		Offer the Nectar |q 25663/1
		talk Mysterious Winged Spirit##41068
		turnin An Offering for Aviana##25663
		accept A Plea From Beyond##25665 |goto 40.4,44.3
	step
		kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
		Slay 10 Wormwing Harpies |q 25655/1
		Click Stolen Hyjal Eggs 
		|tip They look like big white eggs sitting at the base of trees around this area.
		collect 8 Hyjal Egg |q 25656/1 |goto 36.9,43.4
	step
		talk Thisalee Crow##41006
		turnin The Wormwing Problem##25655
		turnin Scrambling for Eggs##25656
		accept A Bird in Hand##25731 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin A Plea From Beyond##25665
		accept A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Click the Harpy Signal Fire 
		|tip It's a brazier with red fire in it.
		Fight Marion Wormwing until she gets captured |q 25731/1
		talk Marion Wormwing##41112 |goto 38.4,44.2
		Ask her why she is stealing eggs, then tell Thisalee to kill her
		Interrogate Marion Wormwing |q 25731/2
	step
		Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 
		|tip It's a huge bird nest sitting on top of this mountain peak.
		kill Blaithe##41084 |goto 39.2,37.1
		collect Ancient Feather |q 25664/1
	step
		talk Thisalee Crow##41006
		turnin A Bird in Hand##25731 |goto 42.2,45.4
	step
		talk Choluna##41005
		turnin A Prayer and a Wing##25664 |goto 44.4,46.2
	step
		Go upstairs in the Shrine of Aviana
		talk Skylord Omnuron##40997
		accept Fact-Finding Mission##25740 |goto 43.5,45.9
	step
		ding 81
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Durable Seeds##25491
		turnin Fresh Bait##25493
		accept Hell's Shells##25507 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Firebreak##25492
		accept Prepping the Soil##25502 |goto 27.1,63.0
	step
		Click the Flameward |goto 33.0,64.6
		|tip It's a floating stone in a golden claw stand.
		Activate the Flameward |q 25502/1
		Defend the Flameward |q 25502/2
	step
		talk Thisalee Crow##41006
		turnin Fact-Finding Mission##25740
		accept Sethria's Brood##25746
		accept A Gap in Their Armor##25758 |goto 32.8,70.8
	step
		Click the Codex of Shadows 
		|tip It's an open book sitting on a wooden box.
		accept The Codex of Shadows##25763 |goto 31.3,77.1
	step
		kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
		Slay 12 Sethria's Minions |q 25746/1
		Click Twilight Armor Plates 
		|tip They look like tan pieces of metal laying on the ground around this area.
		collect 8 Twilight Armor Plate |q 25758/1 |goto 30.9,76.7
	step
		talk Thisalee Crow##41006
		turnin Sethria's Brood##25746
		turnin A Gap in Their Armor##25758
		accept Disassembly##25761
		turnin The Codex of Shadows##25763
		accept Egg Hunt##25764 |goto 32.8,70.8
	step
		Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883 
		|tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
		kill 3 Twilight Juggernaut |q 25761/1
		Click Shadow Cloak Generators 
		|tip They look like blue glowing machines around this area.
		Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
	step
		talk Thisalee Crow##41006
		turnin Disassembly##25761
		turnin Egg Hunt##25764
		accept Sethria's Demise##25776 |goto 32.8,70.8
	step
		kill Sethria##41255
		Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
		kill Sethria |q 25776/1 |goto 35.5,98.0
	step
		talk Thisalee Crow##41006
		turnin Sethria's Demise##25776
		accept Return to the Shrine##25795 |goto 32.8,70.8
	step
		Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744 
		|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
		Click Nemesis when he becomes friendly
		collect Nemesis Shell Fragment |q 25507/1 |goto 37.4,52.3
	step
		talk Choluna##41005
		turnin Return to the Shrine##25795
		accept An Ancient Reborn##25807 |goto 44.4,46.2
	step
		Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 
		|tip Aviana's Egg is in the tree tower, in a side room.
		Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
	step
		talk Aviana##41308
		turnin An Ancient Reborn##25807 |goto 44.3,48.0
	step
		talk Morthis Whisperwing##41003
		accept The Hatchery Must Burn##25810 |goto 44.1,45.9
	step
		Go inside the blue portal |goto 38.8,58.0 < 5 |noway |c
	step
		talk Farden Talonshrike##40578
		turnin The Hatchery Must Burn##25810
		accept Flight in the Firelands##25523 |goto 37.2,56.2
	step
		Click the Twilight Weapon Rack 
		|tip It's a wooden stand with some weapons leaning against it.
		collect Twilight Firelance##52716 |q 25523
	step
		Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
		Click Aviana's Guardian to ride it |invehicle |goto 37.4,56.0
		|tip They are hippogryphs.
	step
		Use your Flap ability on your hotbar repeatedly to fly to this green flag
		Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Flight in the Firelands##25523
		accept Wave One##25525 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Buzzards to joust them
		kill 10 Twilight Knight Rider |q 25525/1 |goto 36.8,54.0
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave One##25525
		accept Wave Two##25544 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Fly into Twilight Firebirds to joust them 
		|tip Be careful, don't let the burning Falling Boulders hit you.
		kill 10 Twilight Lancer |q 25544/1 |goto 36.8,54.0
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Wave Two##25544
		accept Egg Wave##25560 |goto 37.2,56.2
	step
		Use your Flap ability on your hotbar repeatedly to fly around this area
		Run over Firelands Eggs 
		|tip They look like blue eggs on the ground around this area.
		Destroy 40 Firelands Eggs |q 25560/1 |goto 33.3,56.9
		You can find more Firelands Eggs all around [35.8,53.6]
	step
		Use your Flap ability on your hotbar repeatedly to fly to this spot
		talk Farden Talonshrike##40578
		turnin Egg Wave##25560
		accept Return to Aviana##25832 |goto 37.2,56.2
	step
		Click the red arrow on your hot bar to get off the hippogryph |outvehicle |c |q 25832
	step
		Don't forget to equip your real weapon again
		|confirm
	step
		Go inside the blue glowing orb |goto 38.8,58.6 < 5 |noway |c
	step
		talk Aviana##41308
		turnin Return to Aviana##25832 |goto 44.3,48.0
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Hell's Shells##25507
		accept Tortolla Speaks##25510 |goto 27.1,62.6
	step
		talk Rayne Feathersong##40331
		turnin Prepping the Soil##25502 |goto 27.1,63.0
	step
		talk Tortolla##41504
		turnin Tortolla Speaks##25510
		accept Breaking the Bonds##25514
		accept Children of Tortolla##25519 |goto 24.7,55.7
	step
		Click the Rod of Subjugation 
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable the First Rod of Subjugation |q 25514/1 |goto 24.0,55.9
	step
		Click the Rod of Subjugation 
		|tip It's a huge metal rod with an orange spinning ball on top of it.
		Disable the Second Rod of Subjugation |q 25514/2 |goto 25.2,54.9
	step
		talk Tortolla##41504
		turnin Breaking the Bonds##25514 |goto 24.7,55.7
	step
		kill Deep Corruptor##40561+
		Save 6 Tortolla's Eggs |q 25519/1 |goto 24.8,57.1
	step
		talk Tortolla##41504
		turnin Children of Tortolla##25519
		accept An Ancient Awakens##25520 |goto 24.7,55.7
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin An Ancient Awakens##25520 |goto 27.1,62.6
	step
		talk Vision of Ysera##46998 |goto 27.0,62.7
		accept The Last Living Lorekeeper##25830
	step
		talk Nordu##41381
		turnin The Last Living Lorekeeper##25830
		accept Firefight##25842 |goto 27.4,55.5
	step
		kill 5 Fiery Tormentor |q 25842/1 |goto 26.6,53.2
	step
		talk Nordu##41381
		turnin Firefight##25842
		accept Aessina's Miracle##25372 |goto 27.4,55.5
	step
		talk Arch Druid Hamuul Runetotem##5769
		turnin Aessina's Miracle##25372 |goto 19.5,37.8
]])

ZygorGuidesViewer:RegisterInclude("Kaluak_Rep",[[
	step
		talk Etaruk##25292
		accept Reclaiming the Quarry##11612 |goto Borean Tundra 54.3,36.1
	step
		Talk to Elder Atkanok
		accept The Honored Ancestors##11605 |goto 54.7,35.8
		modelnpc Elder Atkanok##7633 
	stickystart "berhunt"
	step
		click "Elder Sagani"##7655
		Identify the Elder Sagani |q 11605/2 |goto 52.8,34
	step
		click "Elder Takret"##7655
		Identify the Elder Takret |q 11605/3 |goto 52.3,31.2
	step
		click "Elder Kesuk"##7655
		Identify the Elder Kesuk |q 11605/1 |goto 50.9,32.4
	step "berhunt"
		kill 12 Beryl Treasure Hunter##25353+ |q 11612/1 |goto 54.4,35.1
	step
		Talk to Elder Atkanok
		turnin The Honored Ancestors##11605 |goto 54.7,35.8
		accept The Lost Spirits##11607 |goto 54.7,35.8
		modelnpc Elder Atkanok##7633
	step
		talk Etaruk##25292
		turnin Reclaiming the Quarry##11612 |goto 54.3,36.1
		accept Hampering Their Escape##11617 |goto 54.3,36.1
	step
		kill Beryl Hound##25355+
		collect 6 Cores of Malice |n
		Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
		Free 3 Kaskala Craftsman spirits |q 11607/1 |goto 51.5,31.4
		Free 3 Kaskala Shaman spirits |q 11607/2 |goto 51.5,31.4
		kill Beryl Reclaimer##25449+
		collect 3 Gnomish Grenade##34772|q 11617 |goto 51.5,31.4
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the North Platform |q 11617/2 |goto 52.2,32.1
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the West Platform |q 11617/3 |goto 51,33.9
	step
		Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 
		|tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
		Destroy the East Platform |q 11617/1 |goto 52.8,34.5
	step
		Talk to Elder Atkanok
		turnin The Lost Spirits##11607 |goto 54.7,35.8
		accept Picking Up the Pieces##11609 |goto 54.7,35.8
		modelnpc Elder Atkanok##7633
	step
		talk Etaruk##25292
		turnin Hampering Their Escape##11617 |goto 54.3,36.1
		accept A Visit to the Curator##11623 |goto 54.3,36.1
	step
		click Tuskarr Ritual Object##7472+
		collect 6 Tuskarr Ritual Object |q 11609/1 |goto 53.1,33.3
	step
		kill Curator Insivius##25448 |q 11623/1 |goto 50.1,32.6
	step
		Talk to Elder Atkanok
		turnin Picking Up the Pieces##11609 |goto 54.7,35.8
		accept Leading the Ancestors Home##11610 |goto 54.7,35.8
		modelnpc Elder Atkanok##7633
	step
		talk Etaruk##25292
		turnin A Visit to the Curator##11623 |goto 54.3,36.1
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Sagani |use Tuskarr Ritual Object##34715 
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Sagani's ceremony |q 11610/2 |goto 52.8,34
		modelnpc "Elder Saganai"##7655
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Takret |use Tuskarr Ritual Object##34715 
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Takret's ceremony |q 11610/3 |goto 52.3,31.2
		modelnpc "Elder Takret"##7655
	step
		Use your Tuskarr Ritual Object while standing next to the Elder Kesuk |use Tuskarr Ritual Object##34715 
		|tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
		Complete Elder Kesuk's ceremony |q 11610/1 |goto 50.9,32.4
		modelnpc "Elder Kesuk"##7655
	step
		Talk to Elder Atkanok
		turnin Leading the Ancestors Home##11610 |goto 54.7,35.8
		modelnpc Elder Atkanok##7633
	step
		talk Waltor of Pal'ea##25476
		accept Into the Mist##11655 |goto 32.3,54.3
		accept Horn of the Ancient Mariner##11660 |goto 32.3,54.3
	step
		kill Kvaldir Mist Lord##25496, Kvaldir Mistweaver##25479+
		collect 8 Tuskarr Relic |q 11655/1 |goto 30.4,53.5
		collect Horn of the Ancient Mariner |q 11660/1 |goto 30.4,53.5
	step
		talk Gorge the Corpsegrinder##25329
		turnin Tanks a lot...##11651 |goto 32.2,54.1
		accept The Plains of Nasam##11652 |goto 32.2,54.1
	step
		talk Waltor of Pal'ea##25476
		turnin Into the Mist##11655 |goto 32.3,54.3
		accept Burn in Effigy##11656 |goto 32.3,54.3
		turnin Horn of the Ancient Mariner##11660 |goto 32.3,54.3
		accept Orabus the Helmsman##11661 |goto 32.3,54.3
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy Bor's Hammer |q 11656/3 |goto 29.8,52.6
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy The Kur Drakkar |q 11656/2 |goto 31,49
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy The Serpent's Maw |q 11656/1 |goto 31.7,48.3
	step
		Stand at the very edge of the rocks
		Use your Horn of the Ancient Mariner |use Horn of the Ancient Mariner##34844
		kill Orabus the Helmsman##32576 |q 11661/1 |goto 26.8,54.7
	step
		Stand at the front of the ship
		Use your Tuskarr Torch |use Tuskarr Torch##34830
		Destroy Bor's Anvil |q 11656/4 |goto 30.1,61.7
	step
		talk Waltor of Pal'ea##25476
		turnin Burn in Effigy##11656 |goto 32.3,54.3
		turnin Orabus the Helmsman##11661 |goto 32.3,54.3
		accept Seek Out Karuk!##11662 |goto 32.3,54.3
	step
		talk Karuk##25435
		turnin Seek Out Karuk!##11662 |goto 47.1,75.5
		accept Karuk's Oath##11613 |goto 47.1,75.5
	step
		kill 6 Skadir Raider##25522+ |q 11613/1 |goto 46.5,77.2
		kill 5 Skadir Longboatsman##25521+ |q 11613/2 |goto 46.5,77.2
	step
		Kill the Riplash Myrmidon and cheering Skadir mobs
		talk Captured Tuskarr Prisoner##25636
		accept Cruelty of the Kvaldir##12471 |goto 44.2,77.8
	step
		talk Karuk##25435
		turnin Karuk's Oath##11613 |goto 47.1,75.5
		accept Gamel the Cruel##11619 |goto 47.1,75.5
		turnin Cruelty of the Kvaldir##12471 |goto 47.1,75.5
	step
		kill Gamel the Cruel##26449 |q 11619/1 |goto 46.4,78.2
		|tip He's inside of the cave.
	step
		talk Karuk##25435
		turnin Gamel the Cruel##11619 |goto 47.1,75.5
		accept A Father's Words##11620 |goto 47.1,75.5
	step
		talk Veehja##25450
		turnin A Father's Words##11620 |goto 43.6,80.5
		accept The Trident of Naz'jan##11625 |goto 43.6,80.5
	step
		kill Ragnar Drakkarlund##26451
		collect Trident of Naz'jan|q 11625/1 |goto 54.7,89.1
		|tip It's inside of the building.
	step
		talk Veehja##25450
		turnin The Trident of Naz'jan##11625 |goto 43.6,80.5
		accept The Emissary##11626 |goto 43.6,80.5
	step
		Swim underwater to the bubbling rock at the very bottom, so you don't run out of air
		Use your Trident of Naz'jan on Leviroth |use Trident of Naz'jan##35850
		kill Leviroth##26452 |q 11626/1 |goto 52.2,88.2
	step
		talk Karuk##25435
		turnin The Emissary##11626 |goto 47.1,75.5
	step
		talk Ataika##26169
		accept Not Without a Fight!##11949 |goto 63.8,46.1
	step
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto 64,45.7
	step
		kill 12 Kvaldir Raider##25760+ |q 11949/1 |goto 65.3,47.2
		click Kaskala Supplies##644
		collect 8 Kaskala Supplies |q 11945/1 |goto 65.3,47.2
	step
		talk Ataika##26169
		turnin Not Without a Fight!##11949 |goto 63.8,46.1
		accept Muahit's Wisdom##11950 |goto 63.8,46.1
	step
		talk Utaik##26213
		turnin Preparing for the Worst##11945 |goto 64,45.7
	step
		talk Elder Muahit##26218
		turnin Muahit's Wisdom##11950 |goto 67.2,54.9
		accept Spirits Watch Over Us##11961 |goto 67.2,54.9
	step
		talk Iruk##26219
		<Search corpse for Issliruk's Totem>
		collect Issliruk's Totem |q 11961/1 |goto 67.6,50.4
	step
		talk Elder Muahit##26218
		turnin Spirits Watch Over Us##11961 |goto 67.2,54.9
		accept The Tides Turn##11968 |goto 67.2,54.9
	step
		kill Heigarr the Horrible##26266 |q 11968/1 |goto 67.6,56.6
	step
		talk Elder Muahit##26218
		turnin The Tides Turn##11968 |goto 67.2,54.8
	step
		talk Orfus of Kamagua##23804
		accept The Dead Rise!##11504 |goto Howling Fjord 40.3,60.3
	step
		Click the Mound of Debris
		|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		collect Fengir's Clue |q 11504/1 |goto 57.7,77.5
	step
		Click the Unlocked Chest
		|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		collect Rodin's Clue |q 11504/2 |goto 59.2,77
	step
		Click the Long Tail Feather
		|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		collect Isuldof's Clue |q 11504/3 |goto 59.8,79.4
	step
		Click the Cannonball
		|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		collect Windan's Clue |q 11504/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin The Dead Rise!##11504 |goto 40.3,60.3
		accept Elder Atuik and Kamagua##11507 |goto 40.3,60.3
	step
		talk Elder Atuik##24755
		turnin Elder Atuik and Kamagua##11507 |goto 25.0,57.0
		accept Grezzix Spindlesnap##11508 |goto 25.0,57.0
		accept Feeding the Survivors##11456 |goto 25.0,57.0
	step
		kill Island Shoveltusk##24681+
		collect 6 Island Shoveltusk Meat|q 11456/1 |goto 29.1,58.8
	step
		talk Elder Atuik##24755
		turnin Feeding the Survivors##11456 |goto 25.0,57.0
		accept Arming Kamagua##11457 |goto 25.0,57.0
	step
		kill Frostwing Chimaera##24673
		collect 3 Chimaera Horn|q 11457/1 |goto 26.4,62.9
	step
		talk Elder Atuik##24755
		turnin Arming Kamagua##11457 |goto 25.0,57.0
		accept Avenge Iskaal##11458 |goto 25.0,57.0
	step
		talk Grezzix Spindlesnap##24643
		turnin Grezzix Spindlesnap##11508 |goto 23.1,62.7
		accept Street "Cred"##11509 |goto 23.1,62.7
	step
		Talk to "Silvermoon" Harry##24539
		turnin Street "Cred"##11509 |goto 35.1,80.9
		accept "Scoodles"##11510 |goto 35.1,80.9
	step
		talk Handsome Terry##24537
		accept Forgotten Treasure##11434 |goto 35.6,80.2
	step
		talk Scuttle Frostprow##24784
		accept Swabbin' Soap##11469 |goto 37.8,79.6
	step
		kill "Scoodles"##24899
		collect Sin'dorei Scrying Crystal |q 11510/1 |goto 38.3,83.4
	step
		click the Eagle Figurine##6925 
		|tip It's a blue eagle statue inside this ship on the middle floor.
		collect Eagle Figurine |q 11434/2 |goto 37.8,84.6
	step
		click the Amani Vase##7495 
		|tip It looks like a grey vase at the bottom of this wrecked ship.
		collect Amani Vase |q 11434/1 |goto 37.1,85.5
	step
		kill Big Roy##24785
		collect Big Roy's Blubber |q 11469/1 |goto 31.4,77.9
	step
		talk "Silvermoon" Harry##24539
		turnin "Scoodles"##11510 |goto 35.1,80.9
		accept The Ancient Armor of the Kvaldir##11567 |goto 35.1,80.9
		accept The Frozen Heart of Isuldof##11512 |goto 35.1,80.9
		accept The Lost Shield of the Aesirites##11519 |goto 35.1,80.9
		accept The Staff of Storm's Fury##11511 |goto 35.1,80.9
	step
		talk Handsome Terry##24537
		turnin Forgotten Treasure##11434 |goto 35.6,80.2
		accept The Fragrance of Money##11455 |goto 35.6,80.2
	step
		talk Taruk##24541
		accept Gambling Debt##11464 |goto 36.3,80.5
	step
		talk Scuttle Frostprow##24784
		turnin Swabbin' Soap##11469 |goto 37.7,79.6
	step
		talk "Silvermoon" Harry##24539
		Tell him:
		Taruk sent me to collect what you owe.>
		kill "Silvermoon" Harry##24539
		After he submits to you
		<Pay up, Harry!>
		Collect "Silvermoon" Harry's Debt |q 11464/1 |goto 35.1,81.0
	step
		talk Taruk##24541
		turnin Gambling Debt##11464 |goto 36.3,80.5
		accept Jack Likes His Drink##11466 |goto 36.3,80.5
	step
		talk Olga, the Scalawag Wench##24639
		Tell her:
		<I'd like to buy Jack a drink.>
		She will walk over to Jack Adams |goto 35.3,79.6
		|confirm |q 11466
	step
		clicknpc Jack Adams##24788
		Discretely search the pirate's pockets for Taruk's payment.>
		collect Jack Adams' Debt |q 11466/1 |goto 35.5,79.4
	step
		talk Taruk##24541
		turnin Jack Likes His Drink##11466 |goto 36.3,80.5
		accept Dead Man's Debt##11467 |goto 36.3,80.5
	step
		kill Rabid Brown Bear##24633+
		collect 4 Bear Musk |q 11455/1 |goto 35.4,78.1
	step
		_Enter_ the cave |goto 33.6,75.6 < 5
		kill "Mad" Jonah Sterling##24742
		After you beat him, he will jump down |goto 33.8,78.0
		|confirm |q 11512
	step
		_Run down_ the ramp |goto 33.7,79.2 < 5 |walk
		click The Frozen Heart of Isuldof##7554
		collect The Frozen Heart of Isuldof |q 11512/1 |goto 32.3,78.7
	step
		kill 8 Crazed Northsea Slaver##24676+ |q 11458/1 |goto 33.2,63.9
		|tip Leave the cave.
	step
		talk Captain Ellis##24910
		turnin The Lost Shield of the Aesirites##11519 |goto 37.2,74.8
		accept Mutiny on the Mercy##11527 |goto 37.2,74.8
	step
		Go downstairs in the ship
		kill Mutinous Sea Dog##25026+ |n
		collect 5 Barrel of Blasting Powder|q 11527/1
	step
		Go upstairs to the ship deck
		talk Captain Ellis##24910
		turnin Mutiny on the Mercy##11527
		accept Sorlof's Booty##11529
	step
		Run to the other end of the ship deck to the big cannon
		clicknpc The Big Gun##24992
		Keep clicking The Big Gun until Sorlof is dead
		Sorlof will drop a big pile of gold on the shore
		Jump off the ship and click Sorlof's Booty
		collect Sorlof's Booty|q 11529/1
	step
		talk Captain Ellis##24910
		turnin Sorlof's Booty##11529 |goto 37.2,74.8
		accept The Shield of the Aesirites##11530 |goto 37.2,74.8
	step
		At the bottom of the ship. If you are careful, you can avoid _Abdul the Insane_
		click The Staff of Storm's Fury##1708
		collect The Staff of Storm's Fury |q 11511/1 |goto 35.3,64.8
	step
		click Dirt Mound##20
		kill Black Conrad's Ghost##24790+
		collect Black Conrad's Treasure |q 11467/1 |goto 32.7,60.2
	step
		talk Elder Atuik##24755
		turnin Avenge Iskaal##11458 |goto 25.0,57.0
	step
		talk Taruk##24541
		turnin Dead Man's Debt##11467 |goto 36.3,80.5
	step
		talk Handsome Terry##24537
		turnin The Fragrance of Money##11455 |goto 35.6,80.2
	step
		click The Ancient Armor of the Kvaldir##7624
		collect The Ancient Armor of the Kvaldir |q 11567/1 |goto 81.8,73.9
	step
		_Go up_ the lift |goto 40.3,60.3 < 5 |only if walking
		talk Orfus of Kamagua##23804
		turnin The Ancient Armor of the Kvaldir##11567
		turnin The Frozen Heart of Isuldof##11512
		turnin The Shield of the Aesirites##11530
		turnin The Staff of Storm's Fury##11511
		accept A Return to Resting##11568
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Shield of Aesirites |q 11568/1 |goto 57.6,77.4
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Staff of Storm's Fury |q 11568/2 |goto 59.2,77
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.8,79.4
	step
		Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
		Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 62,80
	step
		talk Orfus of Kamagua##23804
		turnin A Return to Resting##11568 |goto 40.3,60.3
		accept Return to Atuik##11572 |goto 40.3,60.3
	step
		_Cross_ the Ancient Lift |goto 25.0,57.0 < 5
		talk Elder Atuik##24755
		turnin Return to Atuik##11572
	step
		talk Elder Ko'nani##26194
		accept Let Nothing Go To Waste##11958 |goto Dragonblight 48,74.9
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto Dragonblight 48.3,74.3
	step
		kill Snowfall Glade Reaver##26197, Snowfall Glade Wolvar##26198, Snowfall Glade Shaman##26201, Snowfall Glade Den Mother##26199
		collect 6 Stolen Moa'ki Goods|q 11958/1 |goto 45.3,63.7
		clicknpc Snowfall Glade Pup##26200
		collect 12 Snowfall Glade Pup|q 11960/1 |goto 45.3,63.7
	step
		talk Trapper Mau'i##26228
		turnin Planning for the Future##11960 |goto 48.3,74.3
	step
		talk Elder Ko'nani##26194
		turnin Let Nothing Go To Waste##11958 |goto 48,74.9
		accept Slay Loguhn##11959 |goto 48,74.9
	step
		kill Loguhn##26196
		collect Blood of Loguhn##35688 |n
		Click the Blood of Loguhn in your bags |use Blood of Loguhn##35688
		Smear the Blood of Loguhn on yourself |q 11959/1 |goto 46.3,59.2
	step
		talk Elder Ko'nani##26194
		turnin Slay Loguhn##11959 |goto 48,74.9
	step
		talk Toalu'u the Mystic##26595
		accept Spiritual Insight##12028 |goto 49.2,75.6
	step		
		Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier |use Toalu'u's Spiritual Incense##35907
		|tip Sitting next to the entrance to the small house.
		Watch yourself fly as a wisp
		Attain Spiritual Insight concerning Indu'le Village |q 12028/1 |goto 48.9,75.8
	step
		talk Toalu'u the Mystic##26595
		turnin Spiritual Insight##12028 |goto 49.2,75.6
		accept Elder Mana'loa##12030 |goto 49.2,75.6
	step
		talk Tua'kea##26245
		accept Tua'kea's Crab Traps##12009 |goto 47.7,76.6
	step
		Click Tua'kea's Crab Traps
		|tip They look like small cages on the ground underwater around this area.
		collect 8 Tua'kea Crab Trap |q 12009/1 |goto 46.6,77.5
	step
		Click the Wrecked Crab Trap
		|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
		accept Signs of Big Watery Trouble##12011 |goto 47.7,80
	step
		talk Tua'kea##26245
		turnin Tua'kea's Crab Traps##12009 |goto 47.7,76.6
		turnin Signs of Big Watery Trouble##12011 |goto 47.7,76.6
		accept The Bait##12016 |goto 47.7,76.6
	step
		kill Kili'ua##26521
		collect The Flesh of "Two Huge Pincers" |q 12016/1 |goto 43.7,82.3
	step
		talk Tua'kea##26245
		turnin The Bait##12016 |goto 47.7,76.6
		accept Meat on the Hook##12017 |goto 47.7,76.6
	step
		Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook |use Tu'u'gwar's Bait##35838
		|tip It looks like a rope leading into the water, with a big hook on the end.
		kill Tu'u'gwar##26510 |q 12017/1 |goto 46.7,78.2
	step		
		talk Tua'kea##26245
		turnin Meat on the Hook##12017 |goto 47.7,76.6
	step
		Talk to Elder Mana'loa
		turnin Elder Mana'loa##12030 |goto 36.4,65
		accept Freedom for the Lingering##12031 |goto 36.4,65
		'|model Elder Mana'loa##7768
	step
		kill Indu'le Mystic##26336, Indu'le Warrior##26344
		Put 15 Indu'le spirits to rest |q 12031/1 |goto 37.2,65.5
	step
		Talk to Elder Mana'loa
		turnin Freedom for the Lingering##12031 |goto 36.4,65
		accept Conversing With the Depths##12032 |goto 36.4,65
		'|model Elder Mana'loa##7768
	step
		_Follow_ the path up |goto Dragonblight 34.3,79.8 < 10 |only if walking
		_Continue_ along the path |goto 34,83.4 |only if walking
		Click The Pearl of the Depths
		|tip It's a big white pearl sitting on a altar thing.
		Oacha'noa appears and tells you to jump in the water
		Jump in the water when he tells you to
		Obey Oacha'noa's compulsion |q 12032/1 |goto 34,83.4 
	step
		talk Toalu'u the Mystic##26595
		turnin Conversing With the Depths##12032 |goto 49.2,75.6
//borean//
	step
	label "daily"
		talk Utaik##26213
		accept Preparing for the Worst##11945 |goto Borean Tundra,64,45.7
	step
		click Kaskala Supplies##644
		collect 8 Kaskala Supplies |q 11945/1 |goto 65.3,47.2
	step
		talk Utaik##26213
		turnin Preparing for the Worst##11945 |goto 64,45.7
//dragon//
	step
		talk Trapper Mau'i##26228
		accept Planning for the Future##11960 |goto Dragonblight,48.3,74.3
	step
		clicknpc Snowfall Glade Pup##26200
		collect 12 Snowfall Glade Pup |q 11960/1 |goto 45.3,63.7
	step
		talk Trapper Mau'i##26228
		turnin Planning for the Future##11960 |goto 48.3,74.3
//howling//
	step
		talk Anuniaq##24810
		accept The Way to His Heart...##11472 |goto Howling Fjord 24.6,58.9
	step
		Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946
		|tip They look like swarms of fish in the water.
		kill Great Reef Shark##24637+ |n
		collect 10 Tasty Reef Fish##34127|q 11472 |goto 28.9,74.8
	step
		Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
		He will come to the spot where you're standing
		Keep doing this
		Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1 |goto 31,74.4
	step
		talk Anuniaq##24810
		turnin The Way to His Heart...##11472 |goto 24.6,58.9
	step
		You have reached the end of the dailies for today.
		To reset this section, click here. |next "daily" |confirm
		Earn Exalted reputation with the Kalu'ak |next "exalted" |condition rep("Kalu'ak")==Exalted		
]])

ZygorGuidesViewer:RegisterInclude("H_Hodir_Q",[[
	step
		talk Jeer Sparksocket##29431
		turnin Luxurious Getaway!##12853 |goto The Storm Peaks 41,86.4
		accept Clean Up##12818 |goto The Storm Peaks 41,86.4
	step
		talk Smilin' Slirk Brassknob##29904
		home K3 |goto The Storm Peaks 41.1,85.9
	step
		talk Gretchen Fizzlespark##29473 
		|tip She's inside the inn.
		accept They Took Our Men!##12843 |goto 41.1,86.1
		accept Equipment Recovery##12844 |goto 41.1,86.1
	step
		talk Ricket##29428
		accept Reclaimed Rations##12827 |goto 40.9,85.3
		accept Expression of Gratitude##12836 |goto 40.9,85.3
	step
		talk Skizzle Slickslide##29721
		fpath K3 |goto 40.8,84.5
	stickystart "gnollration"
	stickystart "charredwreck"
	step
		kill 1 Gnarlhide|q 12836/1 |goto 30.3,85.7
		|tip Standing in front of a tent.
	step "charredwreck"
		Click the Charred Wreckage
		|tip They look like various metal parts on the ground around this area.
		collect 10 Charred Wreckage|q 12818/1 |goto 39.8,86.4
	step "gnollration"
		kill Savage Hill gnolls|n
		Click Dried Gnoll Rations crates
		|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		collect 16 Dried Gnoll Rations|q 12827/1 |goto 35,83.8
	step
		talk Jeer Sparksocket##29431
		turnin Clean Up##12818 |goto 41,86.4
		accept Just Around the Corner##12819 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Reclaimed Rations##12827 |goto 40.9,85.3
		turnin Expression of Gratitude##12836 |goto 40.9,85.3
		accept Ample Inspiration##12828 |goto 40.9,85.3
	step
		Click Sparksocket's Tools
		|tip They look like a box of tools in the middle of the mine field. Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
		collect Sparksocket's Tools|q 12819/1 |goto 35.1,87.8
	step
		talk Jeer Sparksocket##29431
		turnin Just Around the Corner##12819 |goto 41,86.4
		accept Slightly Unstable##12826 |goto 41,86.4
	step
		talk Ricket##29428
		turnin Slightly Unstable##12826 |goto 40.9,85.3
		accept A Delicate Touch##12820 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Attackers |q 12820/1 |goto 43.1,81.2
		|modelnpc 29619
		|modelnpc 29618
	step
		talk Tore Rumblewrench##29430
		accept Moving In##12829 |goto 41.7,80
		accept Ore Repossession##12830 |goto 41.7,80
	step
		Click the U.D.E.D. Dispenser next to Tore Rumblewrench
		Retrieve a bomb from the dispenser
		collect 1 U.D.E.D.##40686 |q 12828 |goto 41.7,80
	step
		Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686
		|tip They walk around this area spread out.
		Click the Mammoth Meat on the ground
		collect 8 Hearty Mammoth Meat |q 12828/1 |goto 43.9,79.0
	step
		_Enter_ the cave |goto 40.4,77.8 < 10
		talk Injured Goblin Miner##29434
		accept Only Partly Forgotten##12831 |goto 41.5,74.9
	stickystart "impursaron"
	step
		kill Icetip Crawlers 
		|tip They are big purple spiders walking around this area inside the cave.
		collect 1 Icetip Venom Sac |q 12831/1 |goto 47.1,72.3
	step "impursaron"
		kill 12 Crystalweb Spiders |q 12829/1 |goto 44,75.9
		kill Snowblind Diggers
		collect 5 Impure Saronite Ore|q 12830/1 |goto 44,75.9
	step
		talk Injured Goblin Miner##29434
		turnin Only Partly Forgotten##12831 |goto 43.5,75.2
		accept Bitter Departure##12832 |goto 43.5,75.2
	step
		talk Injured Goblin Miner##29434
		Tell the miner you're ready 
		Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1 |goto 43.5,75.2
	step
		kill Sifreldar Storm Maiden##29323+
		collect 5 Cold Iron Key##40641 |n
		click Rusty Cage##7469+
		Free 5 Goblin Prisoners |q 12843/1|goto 39.8,73.3
		click K3 Equipment##335
		collect 8 K3 Equipment |q 12844/1|goto 39.8,73.3
	step
		talk Tore Rumblewrench##29430
		turnin Moving In##12829 |goto 41.7,80
		turnin Ore Repossession##12830 |goto 41.7,80
	step
		talk Ricket##29428
		turnin A Delicate Touch##12820 |goto 40.9,85.3
		turnin Ample Inspiration##12828 |goto 40.9,85.3
		turnin Bitter Departure##12832 |goto 40.9,85.3
		accept Opening the Backdoor##12821 |goto 40.9,85.3
	step
		talk Gretchen Fizzlespark##29473
		turnin They Took Our Men!##12843 |goto 41.1,86.1
		accept Leave No Goblin Behind##12846 |goto 41.1,86.1
		turnin Equipment Recovery##12844 |goto 41.1,86.1
	step
		click Transporter Power Cell##8099
		collect Transporter Power Cell |q 12821/1 |goto 45.1,82.4
	step
		Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731
		|tip It looks like a tall machine with a fan in the bottom of it.
		Activate the Garm Teleporter |q 12821/2 |goto 50.7,81.9
	step
		talk Ricket##29428
		turnin Opening the Backdoor##12821 |goto 40.9,85.3
		accept Know No Fear##12822 |goto 40.9,85.3
	step
		talk Gino##29432
		accept A Flawless Plan##12823 |goto 50.0,81.8
	step
		Go inside the cave |goto 50.5,77.8
		Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431
		|tip It's a stone altar with a bunch of melted red candles on it. Follow the path in the cave that spirals up all the way to the top of the cave to find it.
		kill Tormar Frostgut##29626 |q 12823/2
	step 
		kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
		kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
	step
		talk Gino##29432
		turnin A Flawless Plan##12823 |goto 50.0,81.8
		accept Demolitionist Extraordinaire##12824 |goto 50.0,81.8
	step
		talk Lok'lira the Crone##29481
		turnin Leave No Goblin Behind##12846 |goto 42.8,68.9
		accept The Crone's Bargain##12841 |goto 42.8,68.9
		|tip Inside the cave.
	step
		kill Overseer Syra##29518
		collect 1 Runes of the Yrkvinn |q 12841/1 |goto 44.2,68.9
	step
		talk Lok'lira the Crone##29481
		turnin The Crone's Bargain##12841 |goto 42.8,68.9
		accept Mildred the Cruel##12905 |goto 42.8,68.9
	step
		talk Mildred the Cruel##29885
		turnin Mildred the Cruel##12905 |goto 44.4,68.9
		accept Discipline##12906 |goto 44.4,68.9
	step
		Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837
		|tip They are sitting on the ground inside these side tunnels inside this mine.
		Discipline 6 Exhausted Vrykul |q 12906/1 |goto 44.8,70.3
		|modelnpc 30146
	step
		talk Mildred the Cruel##29885
		turnin Discipline##12906 |goto 44.4,68.9
		accept Examples to be Made##12907 |goto 44.4,68.9
	step
		kill 1 Garhal##30147 |q 12907/1 |goto 45.4,69.1
	step
		talk Mildred the Cruel##29885
		turnin Examples to be Made##12907 |goto 44.4,68.9
		accept A Certain Prisoner##12908 |goto 44.4,68.9
	step
		talk Lok'lira the Crone##29481
		turnin A Certain Prisoner##12908 |goto 42.8,68.9
		accept A Change of Scenery##12921 |goto 42.8,68.9
	step
		talk Lok'lira the Crone##29975
		turnin A Change of Scenery##12921 |goto 47.5,69.1
		accept Is That Your Goblin?##12969 |goto 47.5,69.1
	step
		talk Agnetta Tyrsdottar##30154
		Tell her to skip the warm up
		kill Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.2,69.8
	step
		talk Lok'lira the Crone##29975
		turnin Is That Your Goblin?##12969 |goto 47.5,69.1
		accept The Hyldsmeet##12970 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		Ask her about her proposal
		Listen to Lok'lira's proposal |q 12970/1 |goto 47.5,69.1
	step
		talk Lok'lira the Crone##29975
		turnin The Hyldsmeet##12970 |goto 47.5,69.1
		accept Taking on All Challengers##12971 |goto 47.5,69.1
	step
		talk Victorious Challenger##30012
		kill 6 Victorious Challenger##30012+ |q 12971/1 |goto 51,66.4
	step
		talk Lok'lira the Crone##29975
		turnin Taking on All Challengers##12971 |goto 47.5,69.1
		accept You'll Need a Bear##12972 |goto 47.5,69.1
	step
		talk Iva the Vengeful##29997
		accept Off With Their Black Wings##12942 |goto 48.4,72.1
		accept Yulda's Folly##12968 |goto 48.4,72.1
	step
		talk Thyra Kvinnshal##30041
		accept Aberrations##12925 |goto 48.4,72.1
	step
		talk Brijana##29592
		turnin You'll Need a Bear##12972 |goto 53.1,65.7
		accept Going Bearback##12851 |goto 53.1,65.7
	step
		Click Icefang to ride him
		|tip Standing down the hill, Icefang is a white bear.
		While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants |petaction Flaming Arrow
		Burn 7 Frostworgs |q 12851/1 |goto 53.1,65.7
		Burn 15 Frost Giants |q 12851/2 |goto 53.1,65.7
		|modelnpc 29358
		|modelnpc 29351
	step
		talk Brijana##29592
		turnin Going Bearback##12851 |goto 53.1,65.7
		accept Cold Hearted##12856 |goto 53.1,65.7
	step
		Click the Captive Proto-Drakes to ride them
		|tip The Captive Proto-Drakes are chained up flying in the sky.
		Use your Ice Shard ability on the Brunnhildar Prisoners |petaction Ice Shard
		|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		When your Proto-Drake is holding 3 Brunnhildar Prisoners, take them to this location |goto The Storm Peaks 59.9,61.2
		Repeat this process 2 more times
		Rescue 9 Brunnhildar Prisoners |q 12856/1 |goto 63.9,62.5 
		Free 3 Proto-Drakes |q 12856/2 |goto 63.9,62.5
		|modelnpc 29639
	step
		talk Brijana##29592
		turnin Cold Hearted##12856 |goto 53.1,65.7
		accept Deemed Worthy##13063 |goto 53.1,65.7
	step
		talk Astrid Bjornrittar##29839
		turnin Deemed Worthy##13063 |goto 49.7,71.8
		accept Making a Harness##12900 |goto 49.7,71.8
	step
		kill Icemane Yeti##29875+
		collect 3 Icemane Yeti Hide |q 12900/1 |goto 47.9,74.7
	step
		talk Astrid Bjornrittar##29839
		turnin Making a Harness##12900 |goto 49.7,71.8
		accept The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Slithering Darkness##12989 |goto 49.7,71.8
	stickystart "ravjorm"
	step
		clicknpc Injured Icemaw Matriarch##29563
		The bear runs back to Brunnhildar Village
		Rescue the Icemaw Matriarch |q 12983/1 |goto 54.8,60.4
	step "ravjorm"
		kill 8 Ravenous Jormungar |q 12989/1 |goto 55.8,63.9
	step
		talk Astrid Bjornrittar##29839
		turnin The Last of Her Kind##12983 |goto 49.7,71.8
		accept The Warm-Up##12996 |goto 49.7,71.8
		turnin The Slithering Darkness##12989 |goto 49.7,71.8
	step
		Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
	step
		Use the abilities on your hotbar to fight Kirgaraak
		|tip He's a big white yeti.
		Defeat Kirgaraak |q 12996/1 |goto 50.8,67.7
		|modelnpc 29352
	step
		talk Astrid Bjornrittar##29839
		turnin The Warm-Up##12996 |goto 49.7,71.8
		accept Into the Pit##12997 |goto 49.7,71.8
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle|c
	step
		Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
		Use the abilities on your hotbar to fight Hyldsmeet Warbears
		kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto 49.1,69.4
	step
		Click the red arrow to get off the bear |script VehicleExit() |outvehicle|c
	step
		talk Astrid Bjornrittar##29839
		turnin Into the Pit##12997 |goto 49.7,71.8
		accept Prepare for Glory##13061 |goto 49.7,71.8
	step
		talk Lok'lira the Crone##29975
		turnin Prepare for Glory##13061 |goto 47.5,69.1
		accept Lok'lira's Parting Gift##13062 |goto 47.5,69.1
	step
		talk Gretta the Arbiter##29796
		turnin Lok'lira's Parting Gift##13062 |goto 50.9,65.6
		accept The Drakkensryd##12886 |goto 50.9,65.6
	step
		You fly off on a drake and start flying in circles around a tower:
		Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
		kill Hyldsmeet Drakerider##29694+
		Repeat this process 9 more times
		Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
	step
		They look like light fixtures on the side of the stone columns
		Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
	step
		talk Thorim##29445
		turnin The Drakkensryd##12886 |goto 33.4,58
		accept Sibling Rivalry##13064 |goto 33.4,58
	step
		talk Thorim##29445
		Ask him what became of Sif
		Hear Thorim's History |q 13064/1 |goto 33.4,58
	step
		talk Thorim##29445
		turnin Sibling Rivalry##13064 |goto 33.4,58
		accept Mending Fences##12915 |goto 33.4,58
	step
		kill 12 Nascent Val'kyr##29570+ |q 12942/1 |goto 27.3,63.7
		kill Valkyrion Aspirant##29569+
		collect 6 Vial of Frost Oil##41612 |q 12925 |goto 27.3,63.7
	step
		Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
		|tip They look like brown spiked eggs sitting in the yellow water around this area.
		Try to get 6 at a time
		Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto 23.7,58.3
		|model 3891
	step
		kill Yulda the Stormspeaker##30046 |q 12968/1 |goto 24,61.8
		click Harpoon Crate##8217
		accept Valkyrion Must Burn##12953 |goto 24,61.8
	step
		clicknpc Valkyrion Harpoon Gun##30066
		Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area |petaction Flaming Harpoon
		Start 6 Fires |q 12953/1 |goto 26,59.8
	step
		Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
	step
		talk Ricket##29428
		turnin Demolitionist Extraordinaire##12824 |goto 40.9,85.3
		turnin Know No Fear##12822 |goto 40.9,85.3
		accept Overstock##12833 |goto 40.9,85.3
	step
		Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
		|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		kill 12 Garm Invader |q 12833/1 |goto 43.1,81.2
		|modelnpc 29619
		|modelnpc 29618
	step
		talk Ricket##29428
		turnin Overstock##12833 |goto 40.9,85.3
	step
		talk Thyra Kvinnshal##30041
		turnin Aberrations##12925 |goto 48.4,72.1
	step
		talk Iva the Vengeful##29997
		turnin Off With Their Black Wings##12942 |goto 48.4,72.1
		turnin Yulda's Folly##12968 |goto 48.4,72.1
		turnin Valkyrion Must Burn##12953 |goto 48.4,72.1
	stickystart "furspar"
	step
		click Granite Boulder##7750+
		Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
		Help the dwarves kill them
		kill 5 Stormforged Iron Giant##29375+ |q 12915/2 |goto 75.8,63
		collect Slag Covered Metal##41556 |q 12922 |future |n |goto 75.8,63
		use Slag Covered Metal##41556
		accept The Refiner's Fire##12922 |goto 75.8,63
	step "furspar"
		kill Seething Revenant##29504+
		collect 10 Furious Spark|q 12922/1 |goto 75.4,63.5
	step
		Click a Granite Boulder and get one
		|tip The Granite Boulders look like big grey rocks on the ground around this area.
		Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505
		|tip He's a huge fire giant, holding a huge smithing hammer.
		Help the dwarves kill him
		kill Fjorn##29503 |q 12915/1 |goto 77.2,62.9
	step
		click Fjorn's Anvil##7481
		turnin The Refiner's Fire##12922 |goto 77.2,62.9
		accept A Spark of Hope##12956 |goto 77.2,62.9
	step
		talk Thorim##29445
		turnin A Spark of Hope##12956 |goto 33.4,58
		turnin Mending Fences##12915 |goto 33.4,58
		accept Forging an Alliance##12924 |goto 33.4,58
	step
		talk Halvdan##32571
		fpath Dun Niffelem |goto 62.6,60.9
	step
		talk King Jokkum##30105
		accept You Can't Miss Him##12966 |goto 65.4,60.2
	step
		talk Njormeld##30099
		turnin You Can't Miss Him##12966 |goto 75.4,63.6
		accept Battling the Elements##12967 |goto 75.4,63.6
	step
		Click Snorri to accompany on him |invehicle |c |goto 75.7,63.9
		|tip Standing on the side of the road.
	step
		Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow
		|tip The Snowdrifts look like piles of snow on the ground.
		Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
		kill 10 Seething Revenant##29504+ |q 12967/1 |goto 76.7,63.4
	step
		Click the red arrow on your hotbar to leave Snorri |script VehicleExit()|outvehicle |c
	step
		talk Njormeld##30099
		turnin Battling the Elements##12967 |goto 75.4,63.6
	step
		talk Njormeld##30127
		turnin Forging an Alliance##12924 |goto 63.2,63.2
		accept A New Beginning##13009 |goto 63.2,63.2
	step
		click Fjorn's Anvil##7481
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		talk King Jokkum##30105
		accept In Memoriam##12975 |goto 65.4,60.2
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
		click  Frozen Iron Scrap##8231+
		collect 6 Frozen Iron Scrap |q 12981/1 |goto 75.3,62.8
	step
		click Horn Fragment##8222+
		collect 8 Horn Fragment |q 12975/1 |goto 72.1,49.4
		Kill mobs in the area
		collect 10 Relic of Ulduar##42780 |q 12975 |goto 72.1,49.4
	step
		talk King Jokkum##30105
		turnin In Memoriam##12975 |goto 65.4,60.2
		accept A Monument to the Fallen##12976 |goto 65.4,60.2
	step
		talk Njormeld##30127
		turnin A Monument to the Fallen##12976 |goto 63.2,63.2
	step
		click Fjorn's Anvil##7481+
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		talk Njormeld##30127
		accept Forging a Head##12985 |goto 63.2,63.2
	step
		Click Hodir's Horn
		|tip It's a huge bone war horn.
		accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
	step
		talk King Jokkum##30105
		accept Jormuttar is Soo Fat...##13011 |goto 65.4,60.2
	step
		Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
		kill Stormforged Ambusher##30208+
		collect 8 Stormforged Eye |q 12985/1 |goto 69.7,58.9
	step
		Kill Niffelem Forefathers and Restless Frostborn Ghosts
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |goal 5 Niffelem Forefather freed |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |goal 5 Restless Frostborn freed |q 12977/2 |goto 72.1,51.8
	step
		talk Njormeld##30127
		turnin Forging a Head##12985 |goto 63.2,63.2
		accept Mounting Hodir's Helm##12987 |goto 63.2,63.2
	step
		Click Hodir's Horn
		|tip It's a huge bone war horn.
		turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
	step
		Fly to the tip of this ice spike
		Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
		Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
	step
		talk Njormeld##30127
		turnin Mounting Hodir's Helm##12987 |goto 63.2,63.2
	step
		click Hodir's Helm##8221+
		accept Polishing the Helm##13006 |goto 64.2,59.2
	step
		kill Viscous Oil##30325+
		collect 5 Viscous Oil |q 13006/1 |goto 55.6,63.4
		Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
		collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 55.6,63.4
		|modelnpc 30292
	step
		Follow the path inside the cave to this spot
		Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
		kill 1 Jormuttar##30340 |q 13011/1 |goto 54.7,60.8
	step
		talk Thorim##29445
		turnin A New Beginning##13009 |goto 33.4,58
		accept Veranus##13050 |goto 33.4,58
	step
		click Small Proto-Drake Egg##7398+
		collect 5 Small Proto-Drake Egg |q 13050/1 |goto 43.7,67.4
		You can find more Small Proto-Drake Eggs at the following location |goto 45.2,66.9 
	step
		talk Thorim##29445
		turnin Veranus##13050 |goto 33.4,58
		accept Territorial Trespass##13051 |goto 33.4,58
	step
		Stand in this big nest
		Click the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
		Lure Veranus |goal Veranus Lured |q 13051/1 |goto 38.7,65.6
	step
		talk Thorim##29445
		turnin Territorial Trespass##13051 |goto 33.4,58
		accept Krolmir, Hammer of Storms##13010 |goto 33.4,58
	step
		click Hodir's Helm##8221
		turnin Polishing the Helm##13006 |goto 64.2,59.2
	step
		talk King Jokkum##30105
		turnin Jormuttar is Soo Fat...##13011 |goto 65.4,60.2
	step
		talk King Jokkum##30105
		Ask him what has become of Krolmir
		Discover Krolmir's Fate |q 13010/1 |goto 65.4,60.2
	step
		talk Thorim##30390
		turnin Krolmir, Hammer of Storms##13010 |goto 71.4,48.8
		accept The Terrace of the Makers##13057 |goto 71.4,48.8

	-- Tauren section, recovered from trunk

	step
		talk Hyeyoung Parka##29762
		fpath Camp Tunka'lo |goto 65.4,50.6
	step
		talk Xarantaur##30381
		accept The Witness and the Hero##13034 |goto 65.7,51.4
	step
		Click the First History Scroll
		|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
		Read the First History Scroll |q 13034/1 |goto 65.8,50.4
	step
		Click the Second History Scroll
		|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
		Read the Second History Scroll |q 13034/2 |goto 66.8,50.1
	step
		Click the Third History Scroll
		|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
		Read the Third History Scroll |q 13034/3 |goto 67.5,50.6
	step
		talk Xarantaur##30381
		turnin The Witness and the Hero##13034 |goto 65.7,51.4
		accept Memories of Stormhoof##13037 |goto 65.7,51.4
	step
		_Enter_ the cave |goto 62.5,41.5 < 10
		talk Chieftain Swiftspear##30395
		Ask him what he remembers of his brother |q 13037/1 |goto 61.2,39.0
	step
		talk Chieftain Swiftspear##30395
		accept Distortions in Time##13038 |goto 61.2,39.0
	step
		Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
		Close 4 Frostfloe Rifts |q 13038/1 |goto 61.7,39.8
	step
		_Leave_ the cave |goto 62.5,41.5 < 10
		talk Xarantaur##30381
		turnin Memories of Stormhoof##13037 |goto 65.7,51.4
		turnin Distortions in Time##13038 |goto 65.7,51.4
		accept Where Time Went Wrong##13048 |goto 65.7,51.4
		accept The Hero's Arms##13049 |goto 65.7,51.4
	step
		_Enter_ the cave |goto 67.0,44.9 < 10
		kill Scion of Storm##30184+
		collect 1 Stormhoof's Spear |q 13049/1 |goto 67.2,44.3
		collect 1 Stormhoof's Mail |q 13049/2 |goto 67.2,44.3
		Click Taunka Artifacts 
		|tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
		Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1 |goto 67.2,44.3
	step
		_Leave_ the cave |goto 67.0,44.9 < 10
		talk Xarantaur##30381
		turnin Where Time Went Wrong##13048 |goto 65.7,51.4
		turnin The Hero's Arms##13049 |goto 65.7,51.4
		accept Changing the Wind's Course##13058 |goto 65.7,51.4
	step
		Use The Lorehammer in your bags |use The Lorehammer##42918
		Go back in time and become Stormhoof |invehicle |q 13058 |goto 64.9,48.1
	step
		Use your Stormhoof abilities to fight and kill The North Wind 
		|tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you. Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
		When The North Wind is dazed, go to this location |goto 64.6,46.9
		Click the Horn of Elemental Fury 
		|tip It looks like a spiral white horn sitting on the ground.
		Restore the True Timeline |q 13058/1 |goto 64.5,47.5
	step
		talk Xarantaur##30381
		turnin Changing the Wind's Course##13058 |goto 65.7,51.4

	-- end of Tauren section recovered
	
	step
		talk Thorim##30295
		turnin The Terrace of the Makers##13057 |goto 56.3,51.4
		accept The Earthen Oath##13005 |goto 56.3,51.4
		accept Loken's Lackeys##13035 |goto 56.3,51.4
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		Fight mobs around this area
		kill 7 Iron Sentinel##29984+ |q 13005/1 |goto 57.3,46.7
		kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto 57.3,46.7
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Eisenfaust##30341 |q 13035/1 |goto 55.3,43.3
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.6,45.6
	step
		Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
		kill Duronn the Runewrought##30353 |q 13035/3 |goto 45,38.1
		|tip Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
	step
		talk Thorim##30295
		turnin The Earthen Oath##13005 |goto 56.3,51.4
		turnin Loken's Lackeys##13035 |goto 56.3,51.4
		accept The Reckoning##13047 |goto 56.3,51.4
	step
		talk Thorim##30399
		Tell him you are with him
		Witness the Reckoning |q 13047/1 |goto 35.9,31.5
	step
		talk King Jokkum##30105
		turnin The Reckoning##13047 |goto 65.4,60.2
	step
		talk Ricket##29428
		accept When All Else Fails##13060 |goto 40.9,85.3
	step
		talk Ricket##29428 
		Tell her you are ready to head further into Storm Peaks |goto 40.9,85.3 < 10
		You will fly to Grom'arsh Crash Site |goto 36.8,49.6 < 10
		talk Olut Alegut##30472
		turnin When All Else Fails##13060 |goto The Storm Peaks 37.0,49.6
	step
		talk Boktar Bloodfury##29651
		accept The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
	step
		talk Archaeologist Andorin##29650
		accept On Brann's Trail##12854 |goto 29.5,74.1
	step
		talk Peon Gakra##29944
		home Grom'arsh Crash-Site |goto The Storm Peaks 37.1,49.5
	step
		talk Blood Guard Lorga##30247
		accept Emergency Measures##13000 |goto The Storm Peaks 36.5,49.1
		accept The Missing Tracker##13054 |goto The Storm Peaks 36.5,49.1
	step
		click Disturbed Snow
		collect Burlap-Wrapped Note |q 12895/1 |goto The Storm Peaks 36.1,64.1
		|modeidisplay 5333
	step
		_Enter_ the cave |goto The Storm Peaks 47.0,54.9 < 10
		talk Tracker Val'zij##30469
		turnin The Missing Tracker##13054 |goto 48.5,54.3
		accept Cave Medicine##13055 |goto 48.5,54.3
	step
		click Cave Mushroom
		collect 8 Cave Mushroom |q 13055/1 |goto The Storm Peaks 49.3,52.8
		|modeldisplay 2090
	step
		kill Cavedweller Worg##30164+
		collect 6 Worg Fur |q 13000/1 |goto The Storm Peaks 48.5,47.5
		kill Infesting Jormungar##30148+
		collect Toxin Gland |q 13055/2 |goto The Storm Peaks 48.5,47.5
	step
		talk Tracker Val'zij##30469
		turnin Cave Medicine##13055 |goto The Storm Peaks 48.5,54.3
		accept There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
	step
		_Follow_ the path into the cave |goto 48.2,48.1 < 10
		kill Gimorak##30167 |q 13056/1 |goto The Storm Peaks 48.9,46.7
	step
		talk Tracker Val'zij##30469
		turnin There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
	step
		talk Boktar Bloodfury##29651
		turnin The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
		accept The Nose Knows##12909 |goto The Storm Peaks 37.3,49.7
	step
		talk Blood Guard Lorga##30247
		turnin Emergency Measures##13000 |goto The Storm Peaks 36.4,49.1
	step
		talk Khaliisi##29855
		turnin The Nose Knows##12909 |goto The Storm Peaks 40.8,51.2
		accept Sniffing Out the Perpetrator##12910 |goto The Storm Peaks 40.8,51.2
	step
		clicknpc Frostbite##29857
		Use the abilities on your hotbar to slow down the _Steamforged Pursuers_.
		Ride Frostbite until you reach the end of the scent trail. |q 12910/1 |goto The Storm Peaks 40.8,51.2
	step
		kill Tracker Thulin##29695+ |q 12910/2 |goto The Storm Peaks 48.5,60.8
		collect Brann's Communicator##40971 |n
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Sniffing Out the Perpetrator##12910
		accept Speak Orcish, Man!##12913
	step
		talk Moteha Windborn##29937
		turnin Speak Orcish, Man!##12913 |goto The Storm Peaks 37.3,49.7
		accept Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
	step
		kill Stormrider##29624+
		collect 5 Voice of the Wind |q 12917/1 |goto The Storm Peaks 27.1,42.0
	step
		talk Moteha Windborn##29937
		turnin Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
	step
		talk Boktar Bloodfury##29651
		accept Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		Ask him if he can understand you |q 12920/1
	step
		talk Boktar Bloodfury##29651
		turnin Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
		accept Pieces of the Puzzle##12926 |goto The Storm Peaks 37.3,49.7
	step
		kill Library Guardian##29724
		collect 6 Inventor's Disk Fragment##41130 |n
		Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
		collect The Inventor's Disk |q 12926/1 |goto The Storm Peaks 37.6,43.5
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Pieces of the Puzzle##12926
		accept Data Mining##12927
	step
		Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179 
		|tip They look like floating round star things.
		Gather 7 Hidden Data |q 12927/1 |goto 38.5,44.2
		|modelnpc 29746
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Data Mining##12927
		accept The Library Console##13416
	step
		click Inventor's Library Console##8177
		turnin The Library Console##13416 |goto The Storm Peaks 37.4,46.8
		accept Norgannon's Shell##12928 |goto The Storm Peaks 37.4,46.8
	step
		Click the Charged Disk in your bags |use Charged Disk##44704
		kill Archivist Mechaton##29775
		collect Norgannon's Shell |q 12928/1 |goto The Storm Peaks 37.4,46.8
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Norgannon's Shell##12928
		accept Going After the Core##13273
		accept The Earthen of Ulduar##12929
	step
		Click Prospector Soren's Maps 
		|tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
		collect Prospector Soren's Maps |q 13273/2 |goto 59.2,51.5
		|modeldisplay 222
	step
		Click Prospector Khrona's Notes 
		|tip It looks like an open book laying on a wooden box, next to a tent.
		collect Prospector Khrona's Notes |q 13273/1 |goto 59.8,52.6
		|modeldisplay 5851
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin Going After the Core##13273
		accept The Core's Keeper##13274
	step
		The entrance to the big round metal door starts here |goto 56.5,58.5 < 10
		|tip It's a big metal hole on in the side of the mountain.
	step
		kill Athan##31798+
		collect Norgannon's Core |q 13274/1 |goto The Storm Peaks 56.3,52.3
	step
		Use Brann's Communicator in your bags |use Brann's Communicator##40971
		talk Brann Bronzebeard##29579
		turnin The Core's Keeper##13274
		accept Forging the Keystone##13285
	step
		Go outside |goto 56.5,58.5 < 10
		talk Brann Bronzebeard##29579
		Tell him you're ready to make the keystone
		Help Brann create the keystone |q 13285/1 |goto The Storm Peaks 45.5,49.5
	step
		talk Boktar Bloodfury##29651
		turnin Forging the Keystone##13285 |goto 37.3,49.7
	step
		talk Breck Rockbrow##29950
		fpath Bouldercrag's Refuge |goto 30.6,36.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Earthen of Ulduar##12929 |goto 31.4,38.1
		accept Rare Earth##12930 |goto 31.4,38.1
	stickystart "enchanearth"
	step
		kill Stormforged Raider##29377+
		collect 5 Frostweave Cloth |q 12930/2 |goto 28.9,36.7
	step "enchanearth"
		Click the Enchanted Earth
		|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliff side.
		collect 7 Enchanted Earth |q 12930/1 |goto 28.3,29.4
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Rare Earth##12930 |goto 31.4,38.1
		accept Fighting Back##12931 |goto 31.4,38.1
		accept Relief for the Fallen##12937 |goto 31.4,38.1
	step
		talk Magorn##29963
		home Bouldercrag's Refuge |goto The Storm Peaks 30.9,37.3
	step
		kill Stormforged Raiders##29377+, Stormforged Reavers##29382+
		kill 10 Stormforged Attacker |q 12931/1 |goto 28.1,36.7
		Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
		Heal 8 Fallen Earthen Defenders |q 12937/1 |goto 28.1,36.7
	step
		talk Bouldercrag the Rockshaper##29801
		|tip He's inside of the building.
		turnin Fighting Back##12931 |goto 31.4,38.1
		turnin Relief for the Fallen##12937 |goto 31.4,38.1
		accept Slaves of the Stormforged##12957 |goto 31.4,38.1
		accept The Dark Ore##12964 |goto 31.4,38.1
	step
		kill 3 Stormforged Taskmaster |q 12957/2 |goto 27.5,49.7
		talk Captive Mechagnome##29384
		Attempt to free 8 Captive Mechagnomes |q 12957/1 --|goal 8 Attempt to free Captive Mechagnome
		Click Ore Carts
		|tip They look like carts with ore in them.
		collect 5 Dark Ore Sample |q 12964/1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Slaves of the Stormforged##12957 |goto 31.4,38.1
		turnin The Dark Ore##12964 |goto 31.4,38.1
		accept The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Facing the Storm##12978 |goto 31.3,38.2
	stickystart "armordark"
	step
		Right-click Loken's Fury
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Fury |q 12965/1 |goto 24,42.6
	step
		Right-click Loken's Power
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Power |q 12965/2 |goto 26.2,47.7
	step
		Right-click Loken's Favor
		|tip It looks like a glowing ball on a pedestal inside this building.
		Destroy Loken's Favor |q 12965/3 |goto 24.6,48.4
	step "armordark"
		kill Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
		kill 10 Nidavelir Stormforged |q 12978/1 |goto 25,42.9
		kill Stormforged War Golem##29380+
		collect 1 Dark Armor Plate##42203 |n
		Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
		accept Armor of Darkness##12979
	step
		kill Stormforged War Golem##29380+
		collect 4 Dark Armor Sample |q 12979/1 |goto 28.7,43.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Gifts of Loken##12965 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Facing the Storm##12978 |goto 31.3,38.2
		turnin Armor of Darkness##12979 |goto 31.3,38.2
		accept The Armor's Secrets##12980 |goto 31.3,38.2
	step
		_Enter_ Mimir's Workshop |goto 33.6,39.6 < 10
		talk Attendant Tock##30190
		Tell him you found a strange armor plate
		Investigate the Armor Plate |q 12980/1 |goto 32.0,40.7
	step
		_Leave_ Mimir's Workshop |goto 33.6,39.6
		talk Bruor Ironbane##30152
		turnin The Armor's Secrets##12980 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept Valduran the Stormborn##12984 |goto 31.4,38.1
	step
		Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
		Help fight Valduran the Stormborn
		kill Valduran the Stormborn |q 12984/1 |goto 24.4,52.1
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Valduran the Stormborn##12984 |goto 31.4,38.1
		accept Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		accept Hit Them Where it Hurts##12991 |goto 31.3,38.2
	stickystart "forgedart"
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the North Lightning Forge |q 12988/1 |goto 29.0,45.8
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the Central Lightning Forge |q 12988/2 |goto 29.5,45.9
	step
		Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 
		|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		Damage the South Lightning Forge |q 12988/3 |goto 30.2,46.1
	step "forgedart"
		kill 10 Stormforged Artificer |q 12991/1 |goto 30.0,46.3
	step
		talk Bouldercrag the Rockshaper##29801
		turnin Destroy the Forges!##12988 |goto 31.4,38.1
	step
		talk Bruor Ironbane##30152
		turnin Hit Them Where it Hurts##12991 |goto 31.3,38.2
	step
		talk Bouldercrag the Rockshaper##29801
		accept A Colossal Threat##12993 |goto 31.4,38.1
	step
		Click the Colossus Attack Specs 
		|tip It looks like a white scroll laying on a small square metal table.
		collect Click the Colossus Attack Specs |q 12993/1 |goto 28.9,44.1
	step
		Click the Colossus Defense Specs 
		|tip It looks like a white scroll laying on an anvil under a white canopy.
		collect Click the Colossus Defense Specs |q 12993/2 |goto 29.9,45.8
	step
		talk Bouldercrag the Rockshaper##29801
		turnin A Colossal Threat##12993 |goto 31.4,38.1
		accept The Heart of the Storm##12998 |goto 31.4,38.1
	step
		_Enter_ the doorway |goto 32.4,63.9 < 10
		Click the Heart of the Storm 
		|tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot. It looks like a big blue orb, sitting in a three-pronged metal stand.
		Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.2,60.9
	step
		_Pass through_ the gates |goto 32.4,63.9 < 10
		talk Bouldercrag the Rockshaper##29801
		turnin The Heart of the Storm##12998 |goto 31.4,38.1
		accept The Iron Colossus##13007 |goto 31.4,38.1
	step
		Click the Jormungar Control Orb 
		|tip It looks like a white glowing ball floating with a golden ring around it.
		Start controlling a Jormungar |invehicle |c |q 13007 |goto 27.2,35.9
	step
		In order to move as the Jormungar, use the Submerge ability on your hotbar. When you want to come back up to the surface, use the Emerge ability while submerged underground.
		kill Iron Colossus |q 13007/1 |goto 27.2,42.0
		|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
	step
		Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
	step
		talk Bouldercrag the Rockshaper##29801
		turnin The Iron Colossus##13007 |goto 31.4,38.1
]])

ZygorGuidesViewer:RegisterInclude("H_Hodir",[[
//DAILY//
	step
	label "Daily"
		click Hodir's Helm##8221
		accept Polishing the Helm##13006 |goto The Storm Peaks 64.2,59.2
	step
		talk Lorekeeper Randvir##30252
		accept Raising Hodir's Spear##13001 |goto The Storm Peaks 64.8,59.1
		only if rep ('The Sons of Hodir')>=Honored
	step
		click Fjorn's Anvil##7481
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##7352
		accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
	stickystart "viscoil"
	step
		kill Stoic Mammoth##30260+
		collect 3 Stoic Mammoth Hide |q 13001/2 |goto 59.0,61.2
		only if rep ('The Sons of Hodir')>=Honored
	step "viscoil"
		kill Viscous Oil##30325+
		collect 5 Viscous Oil |q 13006/1 |goto 55.6,63.4
	step
		_Enter_ the cave |goto 55.9,64.2 < 10
		click Everfrost Shard##8247+
		collect 3 Everfrost Shard |q 13001/1 |goto 54.7,60.8
		only if rep ('The Sons of Hodir')>=Honored
	step
		_Leave_ the cave |goto 55.9,64.2 < 10
		talk Lorekeeper Randvir##30252
		turnin Raising Hodir's Spear##13001 |goto 64.8,59.1
		|tip This quest will unlock the Thrusting Hodir's Spear daily quest.
		only if rep ('The Sons of Hodir')>=Honored
	step
		click Hodir's Helm##8221
		turnin Polishing the Helm##13006 |goto 64.2,59.2
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		click Frozen Iron Scrap##8231+
		collect 6 Frozen Iron Scrap |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+ |goto 67.0,45.1
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+|n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##7481
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##7352
		turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		Click here to reset the daily quests |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
		Become honored with The Sons of Hodir |condition rep('The Sons of Hodir')>=Honored |next "Daily2"
	step
	label "Daily2"
		talk Frostworg Denmother##30294
		accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
	step
		click Hodir's Helm##8221
		accept Polishing the Helm##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##8220
		accept Thrusting Hodir's Spear##13003 |goto 65.1,60.8
	step
		click Fjorn's Anvil##7481
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##7352
		accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
	stickystart "visouoil"
	step
		Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		Repeat this process 2 more times
		Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
	step
		Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		While fighting the Wild Wyrm, there will be 2 phases to the fight. Phase 1: 
		|tip In phase 1 of the fight, you will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		In phase 2 of the fight with the Wild Wyrm, the strategy changes: 
		|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth. Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
		Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
	step "visouoil"
		kill Viscous Oil##30325+ 
		|tip They look like slimes inside this cave.
		collect 5 Viscous Oil |q 13006/1 |goto 55.6,63.4
	step
		talk Frostworg Denmother##30294
		turnin Spy Hunter##12994 |goto 63.5,59.8
	step
		click Hodir's Helm##8221
		turnin Polishing the Helm##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##8220
		turnin Thrusting Hodir's Spear##13003 |goto 65.1,60.8
	step 
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		Click the Frozen Iron Scraps
		collect 6 Frozen Iron Scrap |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+ 
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+|n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##7481
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##7352
		turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
		Become Revered with The Sons of Hodir |condition rep('The Sons of Hodir')>=Revered |next "Daily3"
	step
	label "Daily3"
		talk Frostworg Denmother##30294
		accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
	step
		click Hodir's Helm##8221
		accept Polishing the Helm##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##8220
		accept Thrusting Hodir's Spear##13003 |goto 65.1,60.8
	step
		click Arngrim the Insatiable##8284
		accept Feeding Arngrim##13046 |goto 67.6,59.9
	step
		click Fjorn's Anvil##7481
		accept Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##7352
		accept Blowing Hodir's Horn##12977 |goto 64.1,65.1
	stickystart "cousoil"
	step
		Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		Repeat this process 2 more times
		Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
	step
		Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
	step
		Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		While fighting the Wild Wyrm, there will be 2 phases to the fight
		Phase 1: 
		|tip In phase 1 of the fight, you will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		In phase 2 of the fight with the Wild Wyrm, the strategy changes: 
		|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
		Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
	step "cousoil"
		kill Viscous Oil##30325+ 
		|tip They look like slimes inside this cave.
		collect 5 Viscous Oil |q 13006/1 |goto 55.6,63.4
	step
		talk Frostworg Denmother##30294
		turnin Spy Hunter##12994 |goto 63.5,59.8
	step
		click Hodir's Helm##8221
		turnin Polishing the Helm##13006 |goto 64.2,59.2
	step
		click Hodir's Spear##8220 
		turnin Thrusting Hodir's Spear##13003 |goto 65.1,60.8
	step
		click Arngrim the Insatiable##8284
		turnin Feeding Arngrim##13046 |goto 67.6,59.9
	step
		kill Brittle Revenant##30160+
		collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
	step
		Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 
		|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		Click the Frozen Iron Scraps
		collect 6 Frozen Iron Scrap |q 12981/1 |goto 75.3,62.8
	step
		kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
		Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
	step
		If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		kill Scion of Storm##30184+ 
		|tip They are air elementals all around inside this big cave.
		You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
		|tip You turn these in in multiples of 10.
		|confirm
	step
		click Fjorn's Anvil##7481
		turnin Hot and Cold##12981 |goto 63.2,62.9
	step
		click Hodir's Horn##7352
		turnin Blowing Hodir's Horn##12977 |goto 64.1,65.1
	step
		talk Lillehoff##32540
		accept Hodir's Tribute##13559 |goto 66.2,61.4
		|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step
		To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
		Become Exalted with The Sons of Hodir |condition rep('The Sons of Hodir')==Exalted |next "BuyMount"
]])

ZygorGuidesViewer:RegisterInclude("H_Skyguard_PreQ",[[
	step
		talk Yuula##23449
		accept Threat from Above##11096 |goto Shattrath City 64.3,42.3
	step
		kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.8,16.1
		You can find more around here at the following location |goto 24.4,8.9
	step
		talk Yuula##23449
		turnin Threat from Above##11096 |goto Shattrath City 64.3,42.3
		accept To Skettis!##11098 |goto Shattrath City 64.3,42.3
	step
		talk Sky Sergeant Doryn##23048
		turnin To Skettis!##11098 |goto Terokkar Forest 64.5,66.7
	step
		talk Skyguard Handler Deesak##23415
		accept Hungry Nether Rays##11093 |goto 63.5,65.8
	step
		talk Severin##23042
		accept World of Shadows##11004 |goto 64.0,66.9
	step
		Use your Nether Ray Cage |use Nether Ray Cage##32834 
		|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
		kill Blackwind Warp Chaser##23219+
		You can find more Warp Chasers at the following location |goto 64.5,84.4
		collect 10 Nether Ray Meal |q 11093/1 |goto 61.4,81.8
	step
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 6 Shadow Dust |q 11004/1 |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		turnin World of Shadows##11004 |goto Terokkar Forest 64.0,66.9
	step
		talk Skyguard Handler Deesak##23415
		turnin Hungry Nether Rays##11093 |goto 63.5,65.8
	step
		talk Sky Commander Adaris##23038
		accept Secrets of the Talonpriests##11005 |goto 64.1,66.9
	step
		Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446 |goto 69.7,74.7
		You will get a buff Elixir of Shadows |havebuff 136152 --Spell_Shadow_DetectInvisibility
	step
		kill Talonpriest Zellek##23068 |q 11005/3 |goto 70.1,74.5
	step
		kill Talonpriest Ishaal##23066+ |q 11005/1
		collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
		accept Ishaal's Almanac##11021 |goto 69.3,78.1
	step
		kill Talonpriest Skizzik##23067+ |q 11005/2 |goto 69.8,81.8
	step
		talk Sky Commander Adaris##23038
		turnin Secrets of the Talonpriests##11005 |goto 64.1,66.9
		turnin Ishaal's Almanac##11021 |goto 64.1,66.9
		accept An Ally in Lower City##11024 |goto 64.1,66.9
	step
		talk Rilak the Redeemed##22292
		turnin An Ally in Lower City##11024 |goto Shattrath City 52.5,21.0
		accept Countdown to Doom##11028 |goto Shattrath City 52.5,21.0
	step
		talk Nutral##18940
		turnin Countdown to Doom##11028 |goto Terokkar Forest 64.1,66.9
	step
		talk Hazzik##23306
		accept Hazzik's Bargain##11056 |goto 64.2,66.9
	step
		click Hazzik's Package##6396
		collect Hazzik's Package |q 11056/1 |goto 74.8,80.1
	step
		talk Hazzik##23306
		turnin Hazzik's Bargain##11056 |goto 64.3,66.9
		accept A Shabby Disguise##11029 |goto 64.3,66.9
	step
		Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
		Wear the Shabby Arakkoa Disguise |havebuff 133707 |goto 66.2,77.5 --INV_Misc_Birdbeck_01
	step
		talk Sahaak##23363
		buy 1 Adversarial Bloodlines##32742 |q 11029 |goto 67.0,79.7
	step
		talk Hazzik##23306
		turnin A Shabby Disguise##11029 |goto 64.3,66.9
		accept Adversarial Blood##11885 |goto 64.3,66.9
	step
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 12 Shadow Dust##32388 |q 11885 |future |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		accept More Shadow Dust##11006 |instant
		collect 2 Elixir of Shadows##32446+ |q 11885 |future |goto 64.0,66.9
	step
		This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
		|confirm always
	step
		Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
		You will get a buff Elixir of Shadows |havebuff 136152 --Spell_Shadow_DetectInvisibility
	step
		kill Time-Lost Skettis High Priest##21787+, Time-Lost Skettis Reaver##21651+, Time-Lost Skettis Worshipper##21763+
		collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest 61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		click Skull Pile##6393 
		|tip This will use 10 Time-Lost Scrolls
		<Call forth Darkscreecher Akkarai.>
		<Call forth Karrog.>
		<Call forth Gezzarak the Huntress.>
		<Call forth Vakkiz the Windrager.>
		kill Darkscreecher Akkarai##23161 |q 11885/1 |goto 69.7,74.7
		collect Akkarai's Talons##32715
		kill Karrog##23165 |q 11885/2 |goto 69.7,74.7
		collect Karrog's Spine##32717
		kill Gezzarak the Huntress##23163 |q 11885/3 |goto 69.7,74.7
		collect Gezzarak's Claws##32716
		kill Vakkiz the Windrager##23204 |q 11885/4 |goto 69.7,74.7
		collect Vakkiz's Scale##32718
		You can find more skull piles at the following locations:
		Location 1: |goto 70.1,79.5
		Location 2: |goto 73.5,80.7
		Location 3: |goto 70.2,83.3
	step
		talk Hazzik##23306
		turnin Adversarial Blood##11885 |goto 64.2,66.9
		accept Tokens of the Descendants##11074 |instant |goto 64.2,66.9
	step
		talk Sky Commander Adaris##23038
  		accept Terokk's Downfall##11073 |goto 64.1,66.9
	step
		click Skull Pile##6393 
		|tip This will use 1 Time-Lost Offering.
		<Call forth Terokk.>
		kill Terokk##21838 |goto 66.2,77.5
		|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
		Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
		|confirm always
	step
		talk Sky Commander Adaris##23038
  		turnin Terokk's Downfall##11073 |goto 64.1,66.9
]])

ZygorGuidesViewer:RegisterInclude("H_Skyguard_Daily",[[
	step
	label	"dailies"
		talk Sky Sergeant Doryn##23048
		accept Fires Over Skettis##11008 |goto Terokkar Forest,64.5,66.7
	step
		Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
		Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
		Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto 63.1,80.0
		You can find more eggs at the following locations: 
		Location 1: |goto 61.3,79.9
		Location 2: |goto 67.5,79.3
		Location 3: |goto 68.0,85.6
		Location 4: |goto 70.3,84.5
		|model 378
	step
		talk Sky Sergeant Doryn##23048
		turnin Fires Over Skettis##11008 |goto 64.5,66.7
	step
		talk Skyguard Prisoner##23383
		accept Escape from Skettis##11085 |goto 61.0,75.6
		He can also be found at the following locations:
		Location 1: |goto 68.4,74.0
		Location 2: |goto 75.0,86.5
	step
		Escort the Skyguard Prisoner to the bottom of the bridge 
		|tip Help him kill any mobs on the way down.
		Rescue the Skyguard Prisoner |q 11085/1
		|modelnpc 23383
	step
		talk Sky Sergeant Doryn##23048
		turnin Escape from Skettis##11085 |goto 64.5,66.7
	step
	label	"grind"
		kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
		collect 12 Shadow Dust##32388 |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		talk Severin##23042
		accept More Shadow Dust##11006 |instant |n
		collect 2 Elixir of Shadows##32446 |goto 64.0,66.9
	step
		Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
		You will get a buff Elixir of Shadows |havebuff 136152 --Spell_Shadow_DetectInvisibility
	step
		kill Time-Lost Skettis High Priest##21787+
		kill Time-Lost Skettis Reaver##21651+
		kill Time-Lost Skettis Worshipper##21763+
		collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
		You can find more at the following locations:
		Location 1: |goto 69.5,85.5
		Location 2: |goto 73.2,87.9
		Location 3: |goto 75.2,81.3
		Location 4: |goto 69.2,74.1
	step
		click Skull Pile##6393 
		|tip This will use 10 Time-Lost Scrolls
		<Call forth Darkscreecher Akkarai.>
		<Call forth Karrog.>
		<Call forth Gezzarak the Huntress.>
		<Call forth Vakkiz the Windrager.>
		kill Darkscreecher Akkarai##23161
		collect Akkarai's Talons##32715 |goto 69.7,74.7
		kill Karrog##23165
		collect Karrog's Spine##32717 |goto 69.7,74.7
		kill Gezzarak the Huntress##23163
		collect Gezzarak's Claws##32716 |goto 69.7,74.7
		kill Vakkiz the Windrager##23204
		collect Vakkiz's Scale##32718 |goto 69.7,74.7
		You can find more skull piles at the following locations: 
		Location 1: |goto 70.1,79.5
		Location 2: |goto 73.5,80.7
		Location 3: |goto 70.2,83.3
	step
		talk Hazzik##23306
		accept Tokens of the Descendants##11074 |instant |n
		collect Time-Lost Offering##32720 |goto Terokkar Forest,64.3,66.9
	step
		click Skull Pile##6393 
		|tip This will use 1 Time-Lost Offering.
		<Call forth Terokk.>
		kill Terokk##21838 |goto 66.2,77.5
		|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
		Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
		|confirm always
		|next "dailies" |only if rep("Sha'tari Skyguard")<=Revered
		|next |only if rep("Sha'tari Skyguard")==Exalted
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("H_Frenzyheart_PreQuests", [[
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q The Part-time Hunter##12654/1 |goto Sholazar Basin 50.5,77.3
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto Sholazar Basin 50.5,76.6
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto Sholazar Basin 55,69.1
		accept The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
	step
		Talk to Goregek the Gorilla Hunter who is following you
		accept Tormenting the Softknuckles##12530
	stickystart "hardmatriarch"
	step
		kill 8 Hardknuckle Forager##28098 |q The Ape Hunter's Slave##12529/1 |goto Sholazar Basin 57.5,73.3
	step
		kill 6 Hardknuckle Charger##28096 |q The Ape Hunter's Slave##12529/2 |goto Sholazar Basin 61.1,71.7
	step "hardmatriarch"
		Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 
		|tip Softknuckles are baby gorillas.
		A Hardknuckle Matriarch will spawn eventually
		kill Hardknuckle Matriarch |q Tormenting the Softknuckles##12530/1 |goto Sholazar Basin 66.9,73.2
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
		turnin Tormenting the Softknuckles##12530 |goto Sholazar Basin 55,69.1
		accept The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55,69.1
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto Sholazar Basin 55.5,69.7
	step
		kill 6 Sapphire Hive Wasp##28086 |q The Wasp Hunter's Apprentice##12533/1 |goto Sholazar Basin 59.6,75.8
		kill 9 Sapphire Hive Drone##28085 |q The Wasp Hunter's Apprentice##12533/2 |goto Sholazar Basin 59.6,75.8
	step
		_Enter_ the cave |goto Sholazar Basin 59.4,79.1 < 10 |walk
		kill Sapphire Hive Queen##28087
		collect Stinger of the Sapphire Queen##38477 |q The Sapphire Queen##12534/1 |goto Sholazar Basin 57.1,79.3 < 10
	step
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55.0,69.1
		turnin The Sapphire Queen##12534 |goto Sholazar Basin 55.0,69.1
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
	step
		clicknpc Chicken Escapee##28161 
		|tip They are all around the village.
		collect 12 Captured Chicken |q Flown the Coop!##12532/1
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
		accept The Underground Menace##12531 |goto Sholazar Basin 55.5,69.7
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
	step
		click Skyreach Crystal Formation##7927
		collect 8 Skyreach Crystal Cluster##38504 |q Mischief in the Making##12535/1 |goto Sholazar Basin 56.6,84.6
	step
		kill Serfex the Reaver##28083
		collect Claw of Serfex##38473 |q The Underground Menace##12531/1 |goto Sholazar Basin 49.8,85
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto Sholazar Basin 55,69.1
		turnin Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
		accept A Rough Ride##12536 |goto Sholazar Basin 55,69.1
	step
		talk Captive Crocolisk##28298
		Tell him "_Let's do this_".
		Travel to Mistwhisper Refuge |q A Rough Ride##12536/1 |goto Sholazar Basin 57.3,68.4
	step
		When you jump off the crocodile:
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	stickystart "mistgorlocs"
	step
		Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 
		|tip It's a tall rectangle stone monument.
		click Arranged Crystal Formation##7927
		Sabotage the Mistwhisper Weather Shrine |q Lightning Definitely Strikes Twice##12537/1 |goto Sholazar Basin 45.4,37.2
	step "mistgorlocs"
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Kill #12# Mistwhisper Gorlocs |q The Mist Isn't Listening##12538/1 |goto Sholazar Basin 45.5,39.8
	step
		Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
		talk Zepik the Gorloc Hunter##28216
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto Sholazar Basin 55,69.1
		accept Just Following Orders##12540 |goto Sholazar Basin 55,69.1
	step
		talk Injured Rainspeaker Oracle##28217
		Pull it to its feet
		Kill the crocodile that spawns
		Locate the Injured Rainspeaker Oracle |q Just Following Orders##12540/1 |goto Sholazar Basin 55.7,64.9
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540
		accept Fortunate Misunderstandings##12570
		Tell him "_I am ready to travel to your village now_".
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q Fortunate Misunderstandings##12570/1 |goto Sholazar Basin 55.7,64.9
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto Sholazar Basin 54.6,56.3
		accept Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		talk Lafoo##28120
		accept Gods like Shiny Things##12572
	stickystart "shinycobra"
	step
		kill Venomtip##28358 |q Make the Bad Snake Go Away##12571/2 |goto Sholazar Basin 57.5,52.4 
		|tip He walks back and forth on this small path near the waterfall.
	step "shinycobra"
		Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q Gods like Shiny Things##12572/1 |goto Sholazar Basin 52.4,53.2
		kill 10 Emperor Cobra##28011 |q Make the Bad Snake Go Away##12571/1 |goto Sholazar Basin 52.4,53.2
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
		accept Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		turnin Gods like Shiny Things##12572 |goto Sholazar Basin 54.6,56.3
	step
		talk Shaman Vekjik##28315
		Tell him "_I've brought an offering_".
		Extend the Peace Offering to Shaman Vekjik |q Making Peace##12573/1 |goto Sholazar Basin 51.3,64.6
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		accept Back So Soon?##12574 |goto Sholazar Basin 54.6,56.3
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto Sholazar Basin 42.1,38.6
		accept The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		accept Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
	stickystart "frenzyspear"
	step
		kill Warlord Tartek##28105 |q The Lost Mistwhisper Treasure##12575/1 |goto Sholazar Basin 41.3,19.8 
		|tip He comes walking up on a red dragon.
	step
		click Mistwhisper Treasure##7951 
		|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q The Lost Mistwhisper Treasure##12575/2 |goto Sholazar Basin 41.6,19.5
	step "frenzyspear"
		kill 8 Frenzyheart Spearbearer##28080 |q Forced Hand##12576/1 |goto Sholazar Basin 40.4,26.4
		kill 6 Frenzyheart Scavenger##28081 |q Forced Hand##12576/2 |goto Sholazar Basin 40.4,26.4
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		turnin Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
		accept Home Time!##12577 |goto Sholazar Basin 42.1,38.6
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto Sholazar Basin 54.6,56.3
		accept The Angry Gorloc##12578 |goto Sholazar Basin 54.6,56.3
	step
		Travel to Mosswalker Village |q The Angry Gorloc##12578/1 |goto Sholazar Basin 75.3,54.1
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step
		talk Mosswalker Victim##28113
		Rescue #6# Mosswalker Victims |q The Mosswalker Savior##12580/1 |goto Sholazar Basin 75.4,52.4
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Mosswalker Savior##12580
	step
		click Lifeblood Shard##6835 
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q Lifeblood of the Mosswalker Shrine##12579/1 |goto Sholazar Basin 68.9,54.6
	step
		You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin Lifeblood of the Mosswalker Shrine##12579 |goto Sholazar Basin 54.5,56.6
		accept A Hero's Burden##12581 |goto Sholazar Basin 54.5,56.6
	step
		During this next part you will fight a boss
		If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest and vice versa
		NOTE** _You must kill Artuis Slowly if you are high level_
		This will decrease your Reputation with the Oracles to Hated
		kill Jaloot##28667
		confirm
	step
		Enter the cave here
		_Enter_ the cave and follow the path |goto 72.2,57.3
		kill Artruis the Heartless##28659 |q  A Hero's Burden##12581/1 |goto Sholazar Basin 70.8,58.7
		click Artruis' Phylactery##4712
		|tip This will spawn after the fight.
		turnin A Hero's Burden##12581
]])

-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("H_Frenzyheart_Dailies", [[
		talk Zepik the Gorloc Hunter##28668
		accept Frenzyheart Champion##12582
		accept Return of the Lich Hunter##12692
	step
		talk Elder Harkek##28138
		turnin Return of the Lich Hunter##12692 |goto Sholazar Basin 55.4,69.6
	step
		talk Elder Harkek##28138
		accept Chicken Party!##12702
		Tell him, "_I need to find Goregek_".
		collect Goregek's Shackles##38619 |q Chicken Party!##12702 |goto Sholazar Basin 55.5,69.7
	step
		talk Rejek##29043
		You will only be able to accept 1 of these 4 daily quests per day
		accept A Hero's Headgear##12758 |or |goto Sholazar Basin 55.7,69.5
		accept Rejek: First Blood##12734 |or |goto Sholazar Basin 55.7,69.5
		accept Strength of the Tempest##12741 |or |goto Sholazar Basin 55.7,69.5
		accept The Heartblood's Strength##12732 |or |goto Sholazar Basin 55.7,69.5
	step
		talk Vekgar##29146
		You will only be able to accept 1 of these 4 daily quests per day
		accept Kartak's Rampage##12703 |or |goto Sholazar Basin 55.5,68.7
		accept Secret Strength of the Frenzyheart##12760 |or |goto Sholazar Basin 55.5,68.7
		accept Tools of War##12759 |or |goto Sholazar Basin 55.5,68.7
	step
		Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
		clicknpc Chicken Escapee##28161
		collect 12 Captured Chicken##38483 |q Chicken Party!##12702/1
		only if havequest(12702)
	step
		kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
		collect Venture Co. Explosives##39651 |condition itemcount(39651)>=1 |q 12758 |goto Sholazar Basin 33.1,47.3
	step
		kill Stormwatcher##28877+
		Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
		click Stormwatcher's Head##7795
		collect Stormwatcher's Head##39667 |q A Hero's Headgear##12758/1 |goto Sholazar Basin 26.0,35.4
		--only if havequest(12758)
	step
		kill Hardknuckle Charger##28096+
		Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
		Blood your Blade on a Hardknuckle Charger |q Rejek: First Blood##12734/2 |goto Sholazar Basin 59.7,70.9
		--only if havequest(12734)
	step
		kill Sapphire Hive Wasp##28086+
		Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
		Blood your Blade on a Sapphire Hive Wasp |q Rejek: First Blood##12734/1 |goto Sholazar Basin 59.3,75.7
		--only if havequest(12734)
	step
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
		Blood your Blade on #3# Mistwhisper Members |q Rejek: First Blood##12734/3 |goto Sholazar Basin 43.1,40.4
		--only if havequest(12734)
	step
		kill Aqueous Spirit##28862+, Storm Revenant##28858+
		collect 3 Essence of the Monsoon##39616 |condition itemcount(39616)>=3 |q 12741 |goto Sholazar Basin 26.5,35.1
		--only if havequest(12741)
	step
		Stand right up next to the tall stone altar 
		|tip You may even need to rub against, or stand next to it so that you are touching it.
		Feel the True Power of the Tempest |q Strength of the Tempest##12741/1 |goto Sholazar Basin 22.4,33.8
		--only if havequest(12741)
	step
		kill Goretalon Matriarch##29044 
		|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
		collect Matriarch's Heartblood##39573 |condition itemcount(39651)>=1 |q 12732 |goto Sholazar Basin 59.7,23.9
		--only if havequest(12732)
	step
		Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
		collect Suntouched Water##39576 |n
		Click the Suntouched Water in your bags |use Suntouched Water##39576
		collect Suntouched Heartblood |q The Heartblood's Strength##12732/1 |goto Sholazar Basin 33.8,52.1
		--only if havequest(12732)
	step
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		collect Oracle Blood##39265 |condition itemcount(39265)>=1 |q 12703 |goto Sholazar Basin 31.6,69.5
		--only if havequest(12703)
	step
		Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265 
		|tip The Altar of Kartak has a big skull on top of it, with long curved horns. There are 3 small fires at the base of the altar, also.
		Take Control of Kartak |invehicle |c |goto Sholazar Basin 23.3,83.0
		--only if havequest(12703)
	step
		Use Kartak's abilities to kill Oracle mobs around this area
		kill Sparktouched Oracle##28112+, Sparktouched Warrior##28111+
		Kill #50# Sparktouched Gorlocs |q Kartak's Rampage##12703/1 |goto Sholazar Basin 30.7,78.0
		--only if havequest(12703)
	step
		Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		Kill #30# Sparktouched Gorlocs |q Secret Strength of the Frenzyheart##12760/1 |goto Sholazar Basin 30.1,70.7
		--only if havequest(12760)
	step
		click Zepik's Trap Stash##5744
		collect Spike Bomb##39697 |condition itemcount(39697)>=1 |q 12759 |goto Sholazar Basin 24.0,83.1
		collect Ensnaring Trap##39695 |condition itemcount(39695)>=1 |q 12759 |goto Sholazar Basin 24.0,83.1
		collect Volatile Trap##39696 |condition itemcount(39696)>=1 |q 12759 |goto Sholazar Basin 24.0,83.1
		--only if havequest(12759)
	step
		Use your Spike Bomb |use Spike Bomb##39697
		Use your Ensnaring Trap |use Ensnaring Trap##39695
		Use your Volatile Trap |use Volatile Trap##39696
		Use your traps near Oracles mobs around this area
		kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		Kill #50# Sparktouched Gorlocs |q Tools of War##12759/1 |goto Sholazar Basin 28.4,76.1
		--only if havequest(12759)
	step
		talk Shaman Jakjek##28106
		turnin Kartak's Rampage##12703 |goto Sholazar Basin 23.4,83.3 |only if havequest(12703)
		turnin Secret Strength of the Frenzyheart##12760 |goto Sholazar Basin 23.4,83.3 |only if havequest(12760)
		turnin Tools of War##12759 |goto Sholazar Basin 23.4,83.3 |only if havequest(12759)
	step
		talk Elder Harkek##28138
		turnin Chicken Party!##12702 |goto Sholazar Basin 55.5,69.7 |only if havequest(12702)
	step
		talk Rejek##29043
		turnin A Hero's Headgear##12758 |goto Sholazar Basin 55.7,69.5 |only if havequest(12758)
		turnin Rejek: First Blood##12734 |goto Sholazar Basin 55.7,69.5 |only if havequest(12734)
		turnin Strength of the Tempest##12741 |goto Sholazar Basin 55.7,69.5 |only if havequest(12741)
		turnin The Heartblood's Strength##12732 |goto Sholazar Basin 55.7,69.5 |only if havequest(12732)
]])

ZygorGuidesViewer:RegisterInclude("H_Oracles_PreQuests", [[
		talk Tamara Wobblesprocket##28568
		accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		kill Pitch##28097
		collect Pitch's Remains##38703 |q The Part-time Hunter##12654/1 |goto Sholazar Basin 50.5,77.3
	step
		talk Tracker Gekgek##28095
		accept Playing Along##12528 |goto Sholazar Basin 50.5,76.6
	step
		talk High-Shaman Rakjak##28082
		turnin Playing Along##12528 |goto Sholazar Basin 55,69.1
		accept The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
	step
		Talk to Goregek the Gorilla Hunter who is following you
		accept Tormenting the Softknuckles##12530
	stickystart "hardmatriarch"
	step
		kill 8 Hardknuckle Forager##28098 |q The Ape Hunter's Slave##12529/1 |goto Sholazar Basin 57.5,73.3
	step
		kill 6 Hardknuckle Charger##28096 |q The Ape Hunter's Slave##12529/2 |goto Sholazar Basin 61.1,71.7
	step "hardmatriarch"
		Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 
		|tip Softknuckles are baby gorillas.
		A Hardknuckle Matriarch will spawn eventually
		kill Hardknuckle Matriarch |q Tormenting the Softknuckles##12530/1 |goto Sholazar Basin 66.9,73.2
	step
		talk High-Shaman Rakjak##28082
		turnin The Ape Hunter's Slave##12529 |goto Sholazar Basin 55,69.1
		turnin Tormenting the Softknuckles##12530 |goto Sholazar Basin 55,69.1
		accept The Wasp Hunter's Apprentice##12533 |goto Sholazar Basin 55,69.1
	step
		talk Elder Harkek##28138
		accept The Sapphire Queen##12534 |goto Sholazar Basin 55.5,69.7
	step
		kill 6 Sapphire Hive Wasp##28086 |q The Wasp Hunter's Apprentice##12533/1 |goto Sholazar Basin 59.6,75.8
		kill 9 Sapphire Hive Drone##28085 |q The Wasp Hunter's Apprentice##12533/2 |goto Sholazar Basin 59.6,75.8
	step
		_Enter_ the Sapphire Hive |goto Sholazar Basin 59.4,79.1 < 15
		_Follow_ the path down to here |goto Sholazar Basin 57.1,79.3 < 10
		kill Sapphire Hive Queen##28087
		collect Stinger of the Sapphire Queen##38477 |q The Sapphire Queen##12534/1 |goto 57.1,79.4
	step
		_Exit_ the hive |goto Sholazar Basin 55.0,69.1
		talk High-Shaman Rakjak##28082
		turnin The Wasp Hunter's Apprentice##12533
		turnin The Sapphire Queen##12534
	step
		talk Elder Harkek##28138
		accept Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
	step
		clicknpc Chicken Escapee##28161 
		|tip They are all around the village.
		collect 12 Captured Chicken |q Flown the Coop!##12532/1
	step
		talk Elder Harkek##28138
		turnin Flown the Coop!##12532 |goto Sholazar Basin 55.5,69.7
		accept The Underground Menace##12531 |goto Sholazar Basin 55.5,69.7
	step
		talk High-Shaman Rakjak##28082
		accept Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
	step
		click Skyreach Crystal Formation##7927
		collect 8 Skyreach Crystal Cluster##38504 |q Mischief in the Making##12535/1 |goto Sholazar Basin 56.6,84.6
	step
		kill Serfex the Reaver##28083
		collect Claw of Serfex##38473 |q The Underground Menace##12531/1 |goto Sholazar Basin 49.8,85
	step
		talk High-Shaman Rakjak##28082
		turnin The Underground Menace##12531 |goto Sholazar Basin 55,69.1
		turnin Mischief in the Making##12535 |goto Sholazar Basin 55,69.1
		accept A Rough Ride##12536 |goto Sholazar Basin 55,69.1
	step
		talk Captive Crocolisk##28298
		Tell him "_Let's do this_".
		Travel to Mistwhisper Refuge |q A Rough Ride##12536/1 |goto Sholazar Basin 57.3,68.4
	step
		When you jump off the crocodile:
		talk Zepik the Gorloc Hunter##28668
		turnin A Rough Ride##12536
		accept Lightning Definitely Strikes Twice##12537
		accept The Mist Isn't Listening##12538
	stickystart "mistgorlocs"
	step
		Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 
		|tip It's a tall rectangle stone monument.
		click Arranged Crystal Formation##7927
		Sabotage the Mistwhisper Weather Shrine |q Lightning Definitely Strikes Twice##12537/1 |goto Sholazar Basin 45.4,37.2
	step "mistgorlocs"
		kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		Kill #12# Mistwhisper Gorlocs |q The Mist Isn't Listening##12538/1 |goto Sholazar Basin 45.5,39.8
	step
		Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
		talk Zepik the Gorloc Hunter##28216
		turnin Lightning Definitely Strikes Twice##12537
		turnin The Mist Isn't Listening##12538
		accept Hoofing It##12539
	step
		talk High-Shaman Rakjak##28082
		turnin Hoofing It##12539 |goto Sholazar Basin 55,69.1
		accept Just Following Orders##12540 |goto Sholazar Basin 55,69.1
	step
		talk Injured Rainspeaker Oracle##28217
		Pull it to its feet
		Kill the crocodile that spawns
		Locate the Injured Rainspeaker Oracle |q Just Following Orders##12540/1 |goto Sholazar Basin 55.7,64.9
	step
		talk Injured Rainspeaker Oracle##28217
		turnin Just Following Orders##12540
		accept Fortunate Misunderstandings##12570
		Tell him "_I am ready to travel to your village now_".
		Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q Fortunate Misunderstandings##12570/1 |goto Sholazar Basin 55.7,64.9
	step
		talk High-Oracle Soo-say##28027
		turnin Fortunate Misunderstandings##12570 |goto Sholazar Basin 54.6,56.3
		accept Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		talk Lafoo##28120
		accept Gods like Shiny Things##12572
	stickystart "shinycobra"
	step
		kill Venomtip##28358 |q Make the Bad Snake Go Away##12571/2 |goto Sholazar Basin 57.5,52.4 
		|tip He walks back and forth on this small path near the waterfall.
	step "shinycobra"
		Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q Gods like Shiny Things##12572/1 |goto Sholazar Basin 52.4,53.2
		kill 10 Emperor Cobra##28011 |q Make the Bad Snake Go Away##12571/1 |goto Sholazar Basin 52.4,53.2
	step
		talk High-Oracle Soo-say##28027
		turnin Make the Bad Snake Go Away##12571 |goto Sholazar Basin 54.6,56.3
		accept Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		turnin Gods like Shiny Things##12572 |goto Sholazar Basin 54.6,56.3
	step
		talk Shaman Vekjik##28315
		Tell him "_I've brought an offering_".
		Extend the Peace Offering to Shaman Vekjik |q Making Peace##12573/1 |goto Sholazar Basin 51.3,64.6
	step
		talk Tamara Wobblesprocket##28568
		turnin The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
	step
		talk High-Oracle Soo-say##28027
		turnin Making Peace##12573 |goto Sholazar Basin 54.6,56.3
		accept Back So Soon?##12574 |goto Sholazar Basin 54.6,56.3
	step
		talk Mistcaller Soo-gan##28114
		turnin Back So Soon?##12574 |goto Sholazar Basin 42.1,38.6
		accept The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		accept Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
	stickystart "frenzyspear"
	step
		kill Warlord Tartek##28105 |q The Lost Mistwhisper Treasure##12575/1 |goto Sholazar Basin 41.3,19.8 
		|tip He comes walking up on a red dragon.
	step
		click Mistwhisper Treasure##7951 
		|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		collect Mistwhisper Treasure##38601 |q The Lost Mistwhisper Treasure##12575/2 |goto Sholazar Basin 41.6,19.5
	step "frenzyspear"
		kill 8 Frenzyheart Spearbearer##28080 |q Forced Hand##12576/1 |goto Sholazar Basin 40.4,26.4
		kill 6 Frenzyheart Scavenger##28081 |q Forced Hand##12576/2 |goto Sholazar Basin 40.4,26.4
	step
		talk Mistcaller Soo-gan##28114
		turnin The Lost Mistwhisper Treasure##12575 |goto Sholazar Basin 42.1,38.6
		turnin Forced Hand##12576 |goto Sholazar Basin 42.1,38.6
		accept Home Time!##12577 |goto Sholazar Basin 42.1,38.6
	step
		talk High-Oracle Soo-say##28027
		turnin Home Time!##12577 |goto Sholazar Basin 54.6,56.3
		accept The Angry Gorloc##12578 |goto Sholazar Basin 54.6,56.3
	step
		Travel to Mosswalker Village |q The Angry Gorloc##12578/1 |goto Sholazar Basin 75.3,54.1
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Angry Gorloc##12578
		accept The Mosswalker Savior##12580
		accept Lifeblood of the Mosswalker Shrine##12579
	step
		talk Mosswalker Victim##28113
		Rescue #6# Mosswalker Victims |q The Mosswalker Savior##12580/1 |goto Sholazar Basin 75.4,52.4
	step
		Use Moodle's Stress Ball if Moodle is not standing next to you |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin The Mosswalker Savior##12580
	step
		click Lifeblood Shard##6835 
		|tip They look like small red crystals on the ground around this area.
		collect 10 Lifeblood Shard##39063 |q Lifeblood of the Mosswalker Shrine##12579/1 |goto Sholazar Basin 68.9,54.6
	step
		You can also use Moodle's Stress Ball if you have it in your bags |use Moodle's Stress Ball##38624
		talk Moodle##28122
		turnin Lifeblood of the Mosswalker Shrine##12579 |goto Sholazar Basin 54.5,56.6
		accept A Hero's Burden##12581 |goto Sholazar Basin 54.5,56.6
	step
		During this next part you will fight a boss
		If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle Tribe quest and vice versa
		NOTE** _You must kill Artuis Slowly if you are high level_
		This will decrease your Reputation with the Frenzyheart Tribe to Hated
		kill Zepik the Gorloc Hunter##28668
		confirm
	step
		_Enter_ the cave and follow the path |goto 72.2,57.3 < 10
		kill Artruis the Heartless##28659 |q  A Hero's Burden##12581/1 |goto Sholazar Basin 70.8,58.7
		click Artruis' Phylactery##4712
		|tip This will spawn after the fight.
		turnin A Hero's Burden##12581
]])

ZygorGuidesViewer:RegisterInclude("H_Oracles_Dailies", [[
		talk Jaloot##28667
		accept Hand of the Oracles##12689
		accept Return of the Friendly Dryskin##12695
	step
		talk High-Oracle Soo-say##28027
		turnin Return of the Friendly Dryskin##12695 |goto Sholazar Basin 54.6,56.4
	step
		talk High-Oracle Soo-say##28027
		accept Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.6,56.4
		Tell him, "_I need to find Lafoo_".
		collect Lafoo's Bug Bag##38622 |goto Sholazar Basin 54.6,56.4
	step
		talk Oracle Soo-nee##29006
		You will only be able to accept and turn in 1 of these 4 daily quests per day
		accept A Cleansing Song##12735 |or |goto Sholazar Basin 53.3,56.5
		accept Song of Fecundity##12737 |or |goto Sholazar Basin 53.3,56.5
		accept Song of Reflection##12736 |or |goto Sholazar Basin 53.3,56.5
		accept Song of Wind and Water##12726 |or |goto Sholazar Basin 53.3,56.5
	step
		talk Oracle Soo-dow##29149
		You will only be able to accept and turn in 1 of these 3 daily quests per day
		accept Mastery of the Crystals##12761 |or |goto Sholazar Basin 54.2,53.8
		accept Power of the Great Ones##12762 |or |goto Sholazar Basin 54.2,53.8
		accept Will of the Titans##12705 |or |goto Sholazar Basin 54.2,53.8
	step
		Use Lafoo's Bug Bag if Lafoo is not standing next to you |use Lafoo's Bug Bag##38622
		Stand on top of the twinkles of light on the ground around this area
		Lafoo will dig up the treasure
		Click the random items that appear on the ground
		collect 6 Shiny Treasures##38575 |q Appeasing the Great Rain Stone##12704/1 |goto Sholazar Basin 52.4,53.2
		--only if havequest(12704)
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Atha##29033 |q A Cleansing Song##12735/1 |goto Sholazar Basin 42.7,42.8
		--only if havequest(12735)
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Ha-Khalan##29018 |q A Cleansing Song##12735/2 |goto Sholazar Basin 49.4,62.7
		--only if havequest(12735)
	step
		Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		kill Spirit of Koosu##29034 |q A Cleansing Song##12735/3 |goto Sholazar Basin 48.8,70.5
		--only if havequest(12735)
	step
		Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
		Play the Song of Fecundity #8# Times |q Song of Fecundity##12737/1 |goto Sholazar Basin 26.2,37.1
		--only if havequest(12737)
	step
		Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Glimmering Pillar |q Song of Reflection##12736/1 |goto Sholazar Basin 50.0,37.4
		--only if havequest(12736)
	step
		Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Suntouched Pillar |q Song of Reflection##12736/4 |goto Sholazar Basin 33.6,52.3
		--only if havequest(12736)
	step
		Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Mosslight Pillar |q Song of Reflection##12736/2 |goto Sholazar Basin 36.4,74.7
		--only if havequest(12736)
	step
		Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
		Contemplate at the Skyreach Pillar |q Song of Reflection##12736/3 |goto Sholazar Basin 53.3,79.4
		--only if havequest(12736)
	step
		Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
		Haiphoon has 2 forms: Water and Air 
		|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area. When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them. When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area. When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them. After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate. Keep repeating this process.
		Devour #3# Aqueous Spirits |q Song of Wind and Water##12726/1 |goto Sholazar Basin 26.2,37.1
		Devour #3# Storm Revenants |q Song of Wind and Water##12726/2 |goto Sholazar Basin 26.2,37.1
		--only if havequest(12726)
	step
		click Sparktouched Crystal Defenses##2450
		collect 1 Crystal of the Violent Storm##39694 |condition itemcount(39694)>=1 |q 12761 |goto Sholazar Basin 33.0,75.7
		collect 1 Crystal of Unstable Energy##39693 |condition itemcount(39693)>=1 |q 12761 |goto Sholazar Basin 33.0,75.7
		collect 1 Crystal of the Frozen Grip##39689 |condition itemcount(39689)>=1 |q 12761 |goto Sholazar Basin 33.0,75.7
		--only if havequest(12761)
	step
		Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
		Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
		Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
		Use your crystals near Frenzyheart mobs around this area
		Kill #50# Frenzyheart Attackers |q Mastery of the Crystals##12761/1 |goto Sholazar Basin 22.2,78.0
		--only if havequest(12761)
	step
		Use your Dormant Polished Crystal at the top of the Lifeblood Pillar next to the big red crystal |use Dormant Polished Crystal##39747
		collect Energized Polished Crystal |q Power of the Great Ones##12762/2 |goto Sholazar Basin 65.5,60.2
		--only if havequest(12762)
	step
		Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
		Kill #30# Frenzyheart Attackers |q Power of the Great Ones##12762/1 |goto Sholazar Basin 22.2,78.0
		--only if havequest(12762)
	step
		kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
		collect 1 Tainted Crystal##39266 |c |goto Sholazar Basin 22.9,76.0
		Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266 |goto Sholazar Basin 33.7,75.0<5
		Use Soo-holu's abilities to kill Frenzyheart mobs around this area
		Kill #30# Frenzyheart Attackers |q Will of the Titans##12705/1 |goto Sholazar Basin 22.2,78.0
		--only if havequest(12705)
	step
		talk Lightningcaller Soo-met##28107
		turnin Mastery of the Crystals##12761 |goto Sholazar Basin 33.5,74.8 |only if havequest(12761)
		turnin Power of the Great Ones##12762 |goto Sholazar Basin 33.5,74.8 |only if havequest(12762)
		turnin Will of the Titans##12705 |goto Sholazar Basin 33.5,74.8 |only if havequest(12705)
	step
		talk Oracle Soo-nee##29006
		turnin A Cleansing Song##12735 |goto Sholazar Basin 53.3,56.5 |only if havequest(12735)
		turnin Song of Fecundity##12737 |goto Sholazar Basin 53.3,56.5 |only if havequest(12737)
		turnin Song of Reflection##12736 |goto Sholazar Basin 53.3,56.5 |only if havequest(12736)
		turnin Song of Wind and Water##12726 |goto Sholazar Basin 53.3,56.5 |only if havequest(12726)
	step
		talk High-Oracle Soo-say##28027
		turnin Appeasing the Great Rain Stone##12704 |goto Sholazar Basin 54.6,56.4 |only if havequest(12704)
]])

-----------------------------------
----- MoP DAILIES/REPUTATIONS -----
-----------------------------------

ZygorGuidesViewer:RegisterInclude("Shado_Pan_Daily_H",[[
	step
	label shado_dailies
		Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.5,70.6
		Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto 49.0,70.5 |next "bearheart"
		Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto 49.0,71.3 |next "ling" 
		modelnpc 63614
		modelnpc 62304
		modelnpc 63009
	step
		talk Master Snowdrift##63009
		accept The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
		only if not completedq(31127)
		only if rep('Shado-Pan')>=Honored
	step
		talk Master Snowdrift##63009
		accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.4,70.6
		only if rep('Shado-Pan')>=Revered
	step
		talk Lao-Chin the Iron Belly##62978
		I'm here to challenge you! |q 31128/1 |goto 49.3,72.0
		only if havequest(31128)
	step
		talk Lao-Chin the Iron Belly##63135
		Tell him: _"All right, let's do this!"_
		Defeat Lao-Chin the Iron Belly |q 31128/2 |goto 50.6,67.8
		only if havequest(31128)
	step
		talk Master Snowdrift##63009
		turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.6,70.5
		only if havequest(31128)
	step
		talk Chao the Voice##62550
		Tell her you're here to challenge her! |q 31127/1 |goto 49.7,70.5
		only if havequest(31127)
	step
		talk Chao the Voice##63125
		Let's do this.
		Defeat Chao the Voice |q 31127/2 |goto 50.1,68.3
		only if havequest(31127)
	step
		talk Master Snowdrift##63009
		turnin The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
		only if havequest(31127)
	step
		talk Master Snowdrift##63009 
		|tip You will only be able to accept 4 of the following dailies.
		accept Assault Fire Camp Gai-Cho##31113 |goto 49.4,70.6 |or 4
		accept Assault Deadtalker's Plateau##31114 |goto 49.4,70.6 |or 4
		accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto 49.4,70.6 |or 4
		accept Spirit Dust##31116 |goto 49.4,70.6 |or 4
		accept The Deadtalker Cipher##31118 |goto 49.4,70.6 |or 4
	step
		Talk to Chao the Voice or Protector Yi and ask one of them to come with you. They will help you in combat and allow you to turnin your quests outside of this questing hub.|tip Yi patrols so you may need to search for him.
		talk Chao the Voice##62550 |goto 49.7,70.5
		talk Protector Yi##62546 |goto 49.3,71.3
		confirm
		only if not completedq(31128)
	step
		Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.|tip Yi patrols so you may need to search for him.
		talk Chao the Voice##62550 |goto 49.7,70.5
		talk Protector Yi##62546 |goto 49.3,71.3
		talk Lao-Chin the Iron Belly##62978 |goto 49.3,71.9
		confirm
		only if completedq(31128)
	step
		kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if havequest(31113)
		Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto 63.4,43.3 |only if havequest(31113)
		click Highly Explosive Yaungol Oil Barrel |only if havequest(31119)
		collect Highly Explosive Yaungol Oil##84762 |n |goto 63.4,43.3 
		|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if havequest(31119)
	step
		Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
		kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
		Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto 60.2,48.6
		If you run out of oil, you can find more around this area |goto 63.4,43.3
		only if havequest(31119)
	stickystart "spiritremains"
	step
		kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
		collect Ciphered Scroll##84759 |q 31118/1  |goto 51.1,51.8 
		only if havequest(31118)
	step "spiritremains"
		kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto 51.1,51.8 |only if havequest(31114)
		kill Deadtalker Crusher##62844 |q 31114/2 |goto 51.1,51.8 
		|tip He is elite but with your companion you should be able to defeat him. |only if havequest(31114)
		kill Defiled Spirit##62679 |only if havequest(31116)
		collect Ancient Spirit Dust##84727 |n |only if havequest(31116)
		click Defiled Yaungol Remains |only if havequest(31116)
		Return 8 Spirits to Their Remains |q 31116/1 |goto 51.1,51.8 |only if havequest(31116)
	step
		Next to you will either be Chao the Voice or Protector Yi:
		Talk to Chao the Voice |modelnpc 62550
		Talk to Protector Yi |modelnpc 62546
		turnin Assault Fire Camp Gai-Cho##31113
		turnin Assault Deadtalker's Plateau##31114
		turnin The Enemy of My Enemy... Is Still My Enemy!##31119
		turnin Spirit Dust##31116
		turnin The Deadtalker Cipher##31118
		only if not completedq(31128)
	step
		Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
		Talk to Chao the Voice |modelnpc 62550
		Talk to Protector Yi |modelnpc 62546
		Talk to Lao-Chin the Iron Belly |modelnpc 62978
		turnin Assault Fire Camp Gai-Cho##31113
		turnin Assault Deadtalker's Plateau##31114
		turnin The Enemy of My Enemy... Is Still My Enemy!##31119
		turnin Spirit Dust##31116
		turnin The Deadtalker Cipher##31118
		only if completedq(31128)
	step
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Uruk!##31117 |or
		accept Cheng Bo!##31120 |or
	step
		kill Uruk##62613 |q 31117/1 |goto 50.4,48.9
	step
		kill Cheng Bo##62554 |q 31120/1 |goto 60.7,42.1
	step
		talk Master Snowdrift##63009
		turnin Uruk!##31117 |goto 49.6,70.5 |or
		turnin Cheng Bo!##31120 |goto 49.6,70.5 |or
		next "end"
///New questgiver today?
	step
	label bearheart
		talk Ban Bearheart##62304
		accept The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
		only if not completedq(31038)
		only if rep('Shado-Pan')>=Honored
	step
		talk Ban Bearheart##62304
		accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
		only if rep('Shado-Pan')>=Revered
	step
		talk Snow Blossom##62380
		Ask her to meet in the Challenger's Ring. |q 31038/1 |goto 48.9,70.1
		only if havequest(31038)
	step
		talk Snow Blossom##62834
		I challenge you!
		Defeat Snow Blossom |q 31038/2 |goto 50.2,67.9
		only if havequest(31038)
	step	
		talk Ban Bearheart##62304
		turnin The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
		only if havequest(31038)
	step
		talk Yalia Sagewhisper##62303
		Ask her to meet you in the Challenger's Ring |q 31104/1 |goto 48.9,70.0
		only if havequest(31104)
	step
		talk Yalia Sagewhisper##62850
		I challenge you!
		Defeat Yalia Sagewhisper |q 31104/2 |goto 50.4,67.7
		only if havequest(31104)
	step
		talk Ban Bearheart##62304
		turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
		only if havequest(31104)
	step
		talk Ban Bearheart##62304
		accept Born Free##31047 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31105 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31106 |goto 49.0,70.4 |or 4
		accept The Mogu Menace##31039 |goto 49.0,70.4 |or 4
		accept Bronze Claws##31044 |goto 49.0,70.4 |or 4
		accept Illusions Of The Past##31045 |goto 49.0,70.4 |or 4
		accept Grave Consequences##31048 |goto 49.0,70.4 |or 4
		accept Dark Arts##31043 |goto 49.0,70.4 |or 4
		accept Onyx Hearts##31042 |goto 49.0,70.4 |or 4
		accept Spiteful Sprites##31040 |goto 49.0,70.4 |or 4
		accept Egg Rescue!##31041 |goto 49.0,70.4 |or 4
		accept Little Hatchlings##31046 |goto 49.0,70.4 |or 4
	step
		Talk to Snow Blossom or Fei Li and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Snow Blossom##62380 |goto 48.9,70.1
		talk Fei Li##62354 |goto 48.8,70.2
		confirm
		only if not completedq(31104)
	step
		Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Snow Blossom##62380 |goto 48.9,70.1
		talk Fei Li##62354 |goto 48.8,70.2
		talk Yalia Sagewhisper##62303 |goto 48.8,70.0
		confirm
		only if completedq(31104)
	step
		talk Moshu the Arcane##62810
		accept Through the Portal##31110 |goto 28.8,22.4
		only if not completedq(31110)
	step
		clicknpc Ball and Chain##62539 |only if havequest(31047)
		Free 6 Wild Cloudriders |q 31047/1 |goto 32.8,25.1 |only if havequest(31047)
		click Shan'ze Cage |goto 32.8,25.1 |only if havequest(31046)
		Free 20 Cloudrider Hatchlings. |q 31046/1 |goto 32.8,25.1 |only if havequest(31046)
		click Shiny Egg |only if havequest(31041)
		collect 8 Cloudrunner Egg |q 31041/1 |goto 32.8,25.1 |only if havequest(31041)
		only if havequest(31041) or havequest(31046) or havequest(31047)
	stickystart "bronzeclaw"
	stickystart "darkwoodscharmer"
	stickystart "arcanepowder"
	step
		kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto 24.4,15.2 |only if havequest(31045)
		click Shan'ze Tablet |only if havequest(31043)
		collect 8 Shan'ze Tablet |q 31043/1 |goto 24.4,15.2 |only if havequest(31043)
		click Mogu Burial Urn |only if havequest(31048)
		kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto 24.4,15.2 |only if havequest(31048)
		kill Onyx Stormclaw##62448 |only if havequest(31042)
		collect 4 Onyx Heart |q 31042/1 |goto 24.4,15.2 |only if havequest(31042)
	step "bronzeclaw"
		kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if havequest(31105) or havequest(31106) or havequest (31039)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto 28.5,18.5 |only if havequest(31105)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto 28.5,18.5 |only if havequest(31106)
		Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto 28.5,18.5 |only if havequest(31039)
		kill Bronze Quilen##62266+ |only if havequest(31044)
		collect 20 Bronze Claw##83153+ |q 31044/1 |goto 28.5,18.5 |only if havequest(31044)
	step "darkwoodscharmer"
		kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
		Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto 23.0,19.5
		only if havequest(31040)
	step "arcanepowder"
		kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
		collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
		only if havequest(31110)
	step
		Next to you will either be Fei Li or Snow Blossom
		talk Fei Li##62354
		talk Snow Blossom##62380
		turnin The Mogu Menace##31105
		turnin The Mogu Menace##31106
		turnin The Mogu Menace##31039
		turnin Bronze Claws##31044
		turnin Illusions Of The Past##31045
		turnin Grave Consequences##31048
		turnin Dark Arts##31043
		turnin Onyx Hearts##31042
		turnin Born Free##31047
		turnin Spiteful Sprites##31040
		turnin Egg Rescue!##31041
		turnin Little Hatchlings##31046
		accept When The Dead Speak##31062 |or
		accept Riding the Storm##31061 |or
		accept In Sprite Of Everything##31049 |or
		only if not completedq(31104)
	step
		Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
		talk Fei Li##62354
		talk Snow Blossom##62380
		talk Yalia Sagewhisper##62303
		turnin The Mogu Menace##31105
		turnin Bronze Claws##31044
		turnin Illusions Of The Past##31045
		turnin Grave Consequences##31048
		turnin Dark Arts##31043
		turnin Onyx Hearts##31042
		turnin Born Free##31047
		turnin Spiteful Sprites##31040
		turnin Egg Rescue!##31041
		turnin Little Hatchlings##31046
		accept When The Dead Speak##31062 |or
		accept Riding the Storm##31061 |or
		accept In Sprite Of Everything##31049 |or
		only if completedq(31104)
	step
		Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
		kill Shan'ze Cloudrunner##62584
		Free 8 Shan'ze Cloudriders |q 31061/1 |goto 30.9,12.6
		only if havequest(31061)
	step
		Click the Leave Vehicle button |outvehicle
		only if havequest(31061)
	step
		_Enter_ the tunnel |goto 20.3,15.8 < 15
		kill Darkwoods Faerie##62522 |q 31049/1 |goto 19.5,13.8
		only if havequest(31049)
	step
		_Leave_ the tunnel |goto 20.3,15.8 < 15 
		kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto 32.3,9.5 
		|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
		only if havequest(31062)
	step
		talk Moshu the Arcane##62810
		turnin Through the Portal##31110 |goto 28.8,22.4
		only if havequest(31110)
	step
		talk Ban Bearheart##62304
		turnin When The Dead Speak##31062 |goto 49.0,70.4
		turnin Riding the Storm##31061 |goto 49.0,70.4
		turnin In Sprite Of Everything##31049 |goto 49.0,70.4
		next "end"
/// New Questigver today
	step
	label ling
		talk Ling of the Six Pools##63614
		accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
		only if not completedq(31220)
		only if rep('Shado-Pan')>=Honored
	step
		talk Ling of the Six Pools##63614
		accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
		only if rep('Shado-Pan')>=Revered
	step
		talk Tenwu of the Red Smoke##63616
		Ask him to meet you in the Challenger's Ring |q 31221/1 |goto 48.9,71.2
		only if havequest(31221)
	step
		talk Tenwu of the Red Smoke##64471
		Let's see if you can back that talk up
		Defeat Temwu of the Red Smoke |q 31221/2 |goto 50.6,68.5
		only if havequest(31221)
	step
		talk Ling of the Six Pools##63614
		turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
		only if havequest(31221)
	step
		talk Hawkmaster Nurong##63618
		Ask him to meet you in the Challenger's Ring |q 31220/1 |goto 49.0,70.9
		only if havequest(31220)
	step
		talk Hawkmaster Nurong##64470
		Let's go!
		Defeat Hawkmaster Nurong |q 31220/2 |goto 50.7,68.2
		only if havequest(31220)
	step
		talk Ling of the Six Pools##63614
		turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
		only if havequest(31220)
	step
		talk Ling of the Six Pools##63614
		accept Sra'vess Wetwork##31196 |goto 49.0,71.3 |or 4
		accept The Bigger They Come...##31197 |goto 49.0,71.3 |or 4
		accept A Morale Victory##31198 |goto 49.0,71.3 |or 4
		accept Destroy the Siege Weapons!##31199 |goto 49.0,71.3 |or 4
		accept Fumigation##31200 |goto 49.0,71.3 |or 4
		accept Friends, Not Food!##31201 |goto 49.0,71.3 |or 4
	step
		Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Hawkmaster Nurong##63618 |goto 48.7,71.2
		talk Taoshi##63617 |goto 48.7,71.0
		confirm
		only if not completedq(31221)
	step
		Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		talk Hawkmaster Nurong##63618 |goto 48.7,71.2
		talk Taoshi##63617 |goto 48.7,71.0
		talk Tenwu of the Red Smoke##63616 |goto 48.9,71.2
		confirm
		only if completedq(31221)
	step
		talk Ku-Mo##65341
		accept Seeking Father##30933 |goto 48.7,71.1
		If this quest is unavailable, click here. |confirm
		only if not completedq(30933)
	stickystart "lessergreatermantid"
	step
		click Sra'thik Siege Weapon
		Small Southern Siege Weapon destroyed |q 31199/2 |goto 27.5,54.6
		only if havequest(31199)
	step
		click Sra'thik Siege Weapon
		Large Southern Siege Weapon destroyed |q 31199/1 |goto 25.8,53.8
		only if havequest(31199)
	step
		click Sra'thik Idol
		Southern Idol destroyed |q 31198/1 |goto 23.5,55.5
		only if havequest(31198)
	step
		click Sra'thik Idol
		Central Idol destroyed |q 31198/3 |goto 21.5,49.2
		only if havequest(31198)
	step
		click Sra'thik Siege Weapon
		Large Northern Siege Weapon destroyed |q 31199/3 |goto 27.2,41.2
		only if havequest(31199)
	step
		click Sra'thik Siege Weapon
		Small Northern Siege Weapon destroyed |q 31199/4 |goto 26.2,39.8
		only if havequest(31199)
	step
		click Sra'thik Idol
		Eastern Idol destroyed |q 31198/4 |goto 27.8,41.9
		only if havequest(31198)
	step		
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Egg Chamber bombed |q 31200/3 |goto 23.6,44.7
		only if havequest(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Torture Cell bombed |q 31200/4 |goto 22.0,41.6
		only if havequest(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Slaughtering Pit bombed |q 31200/5 |goto 21.2,43.2
		only if havequest(31200)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Amber Vault bombed |q 31200/1 |goto 21.0,45.9
		only if havequest(31200)
	step
		click Sra'thik Idol
		Western Idol destroyed |q 31198/2 |goto 16.2,45.8
		only if havequest(31198)
	step
		talk Shado-Pan Trainee##64459
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto 17.6,58.0
		only if havequest(31201)
	step
		talk Shado-Pan Trainee##64460
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto 17.4,57.0
		only if havequest(31201)
	step
		talk Sentinel Ku-Yao##61694
		Tell him his son has been looking for him
		Search for Sentinel Ku-Yao. |q 30933/1 |goto 17.4,57.0
		only if havequest(30933)
	step
		talk Shado-Pan Trainee##64461
		Tell them "No you're not!"
		Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto 18.0,53.5
		only if havequest(31201)
	step
		Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
		Nutriment Cell bombed |q 31200/2 |goto 23.9,47.3
		only if havequest(31200)
	step "lessergreatermantid"
		kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if havequest(31196)
		Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if havequest(31196)
		kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if havequest(31197)
		Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if havequest(31197)
	step
		Next to you is either Hawkmaster Nurong or Taoshi
		talk Taoshi##63617
		talk Hawkmaster Nurong##63618
		turnin Sra'vess Wetwork##31196
		turnin The Bigger They Come...##31197
		turnin A Morale Victory##31198
		turnin Destroy the Siege Weapons!##31199
		turnin Fumigation##31200
		turnin Friends, Not Food!##31201
		only if not completedq(31221)
	step
		Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
		Talk to Taoshi |modelnpc 63617
		Talk to Hawkmaster Nurong |modelnpc 63618
		Talk to Tenwu of the Red Smoke |modelnpc 63616
		turnin Sra'vess Wetwork##31196
		turnin The Bigger They Come...##31197
		turnin A Morale Victory##31198
		turnin Destroy the Siege Weapons!##31199
		turnin Fumigation##31200
		turnin Friends, Not Food!##31201
		only if completedq(31221)
	step
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Target of Opportunity: Sra'thik Hivelord##31204 |or
		accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
	step
		kill Sra'thik Swarmlord##63693 |q 31203/1 |goto 16.4,40.9
		only if havequest(31203)
	step
		_Enter_ the building |goto 27.1,44.1 < 15
		kill Sra'thik Hivelord##63694 |q 31204/1 |goto 24.3,44.0
		only if havequest(31204)
	step
		_Leave_ the building |goto 27.1,44.1 < 15
		talk Ku-Mo##65341
		turnin Seeking Father##30933 |goto 48.7,71.1
		only if havequest(30933)
	step
		talk Ling of the Six Pools##63614
		turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto 49.0,71.4 |or
		turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto 49.0,71.4 |or
		next "end"
/// Exalted Reputation
	step
	label end
		talk Rushi the Fox##64595 |goto 48.8,70.6
		buy 1 Grand Commendation of the Shado-Pan##93220 |n
		Use the Commendation of the Shado-Pan you just purchased |condition ZGV:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
		only if rep("Shado-Pan")>=Revered
	step
		talk Master Snowdrift##63009
		accept Mogu Incursions##31266 |goto 49.4,70.6
		only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		kill Shan'ze Spymaster##63888 |q 31266/1 |goto 48.8,58.6
		only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		talk Master Snowdrift##63009
		turnin Mogu Incursions##31266 |goto 49.4,70.6
		accept Surprise Attack!##31277 |goto 49.4,70.6
		only if rep('Shado-Pan')==Exalted and not completedq(31277)
	step
		talk Ban Bearheart##63908
		Tell him "Let's go".
		Join the battle of Niuzao Temple |q 31277/1 |goto 42.6,63.9
		only if havequest(31277)
	step
		Wait for the dialogue to end and fight off the invasion.
		kill Shan'ze Brutalizer##63933+, Hei Feng##63920
		|tip When he casts Deep Breath step behind him.
		Defeat the Mogu Invasion |q 31277/2 |goto 41.3,60.0
		only if havequest(31277)
	step
		talk Ban Bearheart##62304
		turnin Surprise Attack!##31277 |goto 49.2,71.0
		only if havequest(31277)
	step
		You have reached the end of this daily guide
		Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Marista_Hub",[[
	step
		talk Nan-Po##60441 
		fpath Marista |goto Krasarang Wilds 52.4,76.6
	step
		talk Tony Tuna##60182
		accept Particular Plumage##30667 |goto Krasarang Wilds 51.7,75.3
	step
		talk Jay Cloudfall##60173
		|tip Outside, up the stairs and to the right.
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
	stickystart "spareplank"
	step
		click Tough Kelp
		collect Tough Kelp##80804 |q 30668/2 |goto 52.3,77.9
	step "spareplank"
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
		_Go underwater_ and enter the cave |goto 46.0,79.9 < 15 |walk
		kill Nahassa##60203+ 
		|tip Nahassa will use an ability called Feverish Deathbite that will cause you to hallucinate many more crocolisks have spawned, they aren't really there so don't panic.
		Put Nahassa out of his misery |q 30691/1 |goto 46.2,83.5
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin Misery##30691
	step
		_Exit_ the cave |goto 46.0,79.9 < 15 |walk
		kill Great Grey Shark##60204+, Nayeli Hammerhead##60432+
		collect 5 Shark Fillet##80810+ |q 30671/1 |goto 46.0,79.0
	step
		talk Wise Ana Wu##60139
		turnin Wisdom Has A Price##30671 |goto 46.0,78.9
		accept Balance##30672 |goto 46.0,78.9
	stickystart "buriedtreasure"
	step
		Run over one of the piles of fish along the beach
		Click the Quest Discovered box that displays on the right side of the screen under your minimap
		accept Balance Without Violence##30674 |goto 45.1,84.9
	step "buriedtreasure"
		kill Unga Fish-Getter##60299+
		collect 1 Confusing Treasure Map##80827 |n
		Click the Confusing Treasure Map in your bags |use Confusing Treasure Map##80827
		accept Buried Hozen Treasure##30675 |goto 45.5,85.2
	step
		clicknpc Flailing Carp##60367 
		|tip You can find these all along the beach, usually in the big piles of fish
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
	step
		clicknpc Dawnchaser Captive##58608
		|tip Marking them with Shift+v makes them much easier to spot (Use v to mark enemies again).
		Rescue 8 Captives |q 30163/1 |goto 24.6,39.2
		kill 8 Korjan Reclaimer##58614+ |q 30229/1 |goto 24.6,39.2
		click Mogu Artifact
		|tip They look like large brown maces and artifacts on the ground.
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
		accept The Mantid##30175 |goto 29.1,51.1
	step
		talk Sunwalker Dezco##58607
		accept The Stoneplow Convoy##30164 |goto 16.0,39.8
	step
		clicknpc Stoneplow Envoy##58955
		|tip Marking them with Shift+v makes them much easier to spot (Use v to mark enemies again).
		Save 7 Stoneplow Envoy |q 30164/1 |goto 15.3,35.3
		kill Ik'thallik Precursor##58367+, Ik'thallik Vanguard##58368+
		Kill 10 Ik'thallik Mantid |q 30175/1 |goto 15.3,35.3
	step
		talk Sunwalker Dezco##58607
		turnin The Stoneplow Convoy##30164 |goto 16.0,39.8
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
	stickystart "ikthallik"
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
	step "ikthallik"
		kill Ik'thallik Infestor##56721+, Ik'thik Warrior##56722+
		Kill 15 Ik'thallik Infestors or Warriors |q 30622/1 |goto 13.4,54.6
		Use Ken-Ken's mask on Ik'thik Wing Commanders |use Ken-Ken's Mask##80337
		kill Manifestation of Fear##59874+
		Defeat 5 Manifestation of Fear that come out of Ik'thik Wing Commanders |q 30623/1 |goto 13.4,54.6
	step
		Click the Complete Quest box that displays on the right side of the screen under your minimap
		turnin The Mantidote##30623
	step
		talk Guard Captain Oakenshield##57198
		turnin The Swarm Begins##30622 |goto 11.6,49.5
		accept Students No More##30625 |goto 11.6,49.5
	step
		The students you are looking for can be at one of four locations fighting one of the quest mobs below. Find the students and kill the following monsters:
		|tip Once you find the students just follow them around and kill what they do.
		talk Ik'thallik Tendon-Slicer##59888 
		kill Ik'thallik Tendon-Slicer##59888 |q 30625/3 |goto Valley of the Four Winds,9.5,54.0
		talk Ik'thallik Fearmonger##59889 
		kill Ik'thallik Fearmonger##59889 |q 30625/4 |goto Valley of the Four Winds,9.5,58.2
		talk Ik'thallik Bloodrager##59887 
		kill Ik'thallik Bloodrager##59887 |q 30625/1 |goto Valley of the Four Winds,8.9,54.2
		talk Ik'thik Incubator##59890 
		kill Ik'thik Incubator##59890 |q 30625/2 |goto Valley of the Four Winds,8.9,51.0
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
		talk Miss Fanny##59857
		Tell her "Let's go." |invehicle |goto 18.0,56.7
	step
		Use your Unyielding Fist ability to defeat the Mantid Collossus. 
		|tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
		kill Mantid Colossus##56703 |q 30627/1
	step
		talk Loon Mai##56720
		turnin The Savior of Stoneplow##30627 |goto 18.0,56.3
		accept The Gratitude of Stoneplow##30628 |goto 18.0,56.3
]])

ZygorGuidesViewer:RegisterInclude("August_Celestials",[[
	step
	label startaug
		talk Sage Lotusbloom##64001
		The following quests will only be available the first time you are sent to a new area
		They are random and Sage Lotusbloom will only have one at a time
		accept Challenge At The Temple of the Red Crane##31379 |goto Vale of Eternal Blossoms 62.8,23.4 |or |next "crane" |only if not completedq(31379)
		accept Attack At The Temple of the Jade Serpent##31377 |goto Vale of Eternal Blossoms 62.8,23.4 |or |next "serpent" |only if not completedq(31377)
		accept Defense At Niuzao Temple##31383 |goto Vale of Eternal Blossoms 62.8,23.4 |or |next "ox" |only if not completedq(31383)
		accept Trial At The Temple of the White Tiger##31381 |goto Vale of Eternal Blossoms 62.8,23.4 |or |next "tiger" |only if not completedq(31381)
		If no quest is available, tell her: _"How you can I help the August Celestials today?"_ 
		Click on whichever spirit needs you today.
		Niuzao the Black Ox |confirm |next "ox"
		Yu'lon the Jade Serpent |confirm |next "serpent"
		Xuen the White Tiger |confirm |next "tiger"
		Chi-Ji the Red Crane |confirm |next "crane"
// Crane
	step
	label crane
		talk Thelonius##60506
		turnin Challenge At The Temple of the Red Crane##31379 |goto Krasarang Wilds 31.3,63.4
		only if not completedq(31379)
	step
		talk Thelonius##60506
		accept Students of Chi-Ji##30718 |goto 31.3,63.4
		accept Champion of Chi-Ji##30740 |goto 31.3,63.4 |only if achieved(7287)
	step
		talk Yan Quillpaw##60529
		accept Gifts of the Great Crane##30717 |goto 31.3,63.6
	step
		talk Kuo-Na Quillpaw##60528
		accept Chasing Hope##30716 |goto 31.3,63.6
	step
		talk Champion of Chi-Ji##60546
		Let's fight!
		Defeat a Champion of Chi-Ji |q 30740/1 |goto 34.6,82.0
		only if havequest(30740)
	step
		kill 10 Student of Chi-Ji##60601+
		Duel 10 Students of Chi-Ji |q 30718/1 |goto 31.2,73.9
		click Cerulean Gift of the Crane
		click Crimson Gift of the Crane
		click Bronze Gift of the Crane
		|tip The Gifts look like feathers laying around on the ground.
		collect 10 Gift of the Great Crane##80938+ |q 30717/1 |goto 31.2,73.9
		Find 3 Spirits of the Crane |q 30716/1 |goto 31.2,73.9
		|tip They look like stealthed birds roaming around the isle in set paths. Run into them.
	step
		talk Kuo-Na Quillpaw##60528
		turnin Chasing Hope##30716 |goto 31.3,63.6
	step
		talk Yan Quillpaw##60529
		turnin Gifts of the Great Crane##30717 |goto 31.3,63.6
	step
		talk Thelonius##60506
		turnin Students of Chi-Ji##30718 |goto 31.3,63.4
		accept Ellia Ravenmane##30725 |goto 31.3,63.4 |or
		accept Minh Do-Tan##30726 |goto 31.3,63.4 |or
		accept Ellia Ravenmane: Rematch##30727 |goto 31.3,63.4 |or
		accept Fat Long-Fat##30728 |goto 31.3,63.4 |or
		accept Julia Bates##30729 |goto 31.3,63.4 |or
		accept Dextrous Izissha##30730 |goto 31.3,63.4 |or
		accept Kuo-Na Quillpaw##30731 |goto 31.3,63.4 |or
		accept Ellia Ravenmane: Revenge##30732 |goto 31.3,63.4 |or
		accept Tukka-Tuk##30733 |goto 31.3,63.4 |or
		accept Huck Wheelbarrow##30734 |goto 31.3,63.4 |or
		accept Mindel Sunspeaker##30735 |goto 31.3,63.4 |or
		accept Yan Quillpaw##30736 |goto 31.3,63.4 |or
		accept Fat Long-Fat: Rematch##30737 |goto 31.3,63.4 |or
		accept Thelonius##30738 |goto 31.3,63.4 |or
		accept Ellia Ravenmane: Redemption##30739 |goto 31.3,63.4 |or
		only if not achieved(7287)
	step
		talk Thelonius##60506
		turnin Students of Chi-Ji##30718 |goto 31.3,63.4
		turnin Champion of Chi-Ji##30740 |goto 31.3,63.4
		only if achieved(7287)
		next "end"
	step
		talk Fat Long-Fat##60534 
		|tip He is on the very top of this building.
		Let's fight!
		Defeat Fat Long-Fat |q 30728/1 |goto 32.0,70.7
		only if havequest(30728)
	step
		talk Ellia Ravenmane##60530
		Let's fight!
		Defeat Ellia Ravenmane |q 30725/1 |goto 31.8,71.2
		only if havequest(30725)
	step
		talk Mindel Sunspeaker##60541
		Let's fight!
		Defeat Mindel Sunspeaker |q 30735/1 |goto 32.1,69.9
		only if havequest(30735)
	step
		talk Minh Do-Tan##60532
		Let's fight!
		Defeat Minh Do-Tan |q 30726/1 |goto 32.0,76.5
		only if havequest(30726)
	step
		talk Tukka-Tuk##60539
		Let's fight!
		Defeat Tukka-Tuk |q 30733/1 |goto 34.1,75.1
		only if havequest(30733)
	step
		talk Ellia Ravenmane##60545
		Let's fight!
		Defeat Ellia Ravenmane |q 30739/1 |goto 36.4,75.6
		only if havequest(30739)
	step
		talk Dextrous Izissha##60536
		Let's fight!
		Defeat Dextrous Izissha |q 30730/1 |goto 31.7,80.3
		only if havequest(30730)
	step
		talk Fat Long-Fat##60543
		Let's fight!
		Defeat Fat Long-Fat |q 30737/1 |goto 34.8,82.6
		only if havequest(30737)
	step
		talk Kuo-Na Quillpaw##60537
		Let's fight!
		Defeat Kuo-Na Quillpaw |q 30731/1 |goto 36.6,74.8
		only if havequest(30731)
	step
		talk Ellia Ravenmane##60533
		Let's fight!
		Defeat Ellia Ravenmane |q 30727/1 |goto 35.2,75.1
		only if havequest(30727)
	step
		talk Julia Bates##60535
		Let's fight!
		Defeat Julia Bates |q 30729/1 |goto 28.9,75.5
		only if havequest(30729)
	step
		talk Huck Wheelbarrow##60540
		Let's fight!
		Defeat Huck Wheelbarrow |q 30734/1 |goto 27.9,70.3
		only if havequest(30734)
	step
		talk Yan Quillpaw##60542
		Let's fight!
		Defeat Yan Quillpaw |q 30736/1 |goto 36.5,76.2
		only if havequest(30736)
	step
		talk Ellia Ravenmane##60538
		Let's fight!
		Defeat Ellia Ravenmane |q 30732/1 |goto 34.5,83.3
		only if havequest(30732)
	step
		talk Thelonius##60544
		Let's fight!
		Defeat Thelonius |q 30738/1 |goto 28.8,72.4
		only if havequest(30738)
	step
		talk Thelonius##60506
		turnin Ellia Ravenmane##30725 |goto 31.3,63.4 |or
		turnin Minh Do-Tan##30726 |goto 31.3,63.4 |or
		turnin Ellia Ravenmane: Rematch##30727 |goto 31.3,63.4 |or
		turnin Fat Long-Fat##30728 |goto 31.3,63.4 |or
		turnin Julia Bates##30729 |goto 31.3,63.4 |or
		turnin Dextrous Izissha##30730 |goto 31.3,63.4 |or
		turnin Kuo-Na Quillpaw##30731 |goto 31.3,63.4 |or
		turnin Ellia Ravenmane: Revenge##30732 |goto 31.3,63.4 |or
		turnin Tukka-Tuk##30733 |goto 31.3,63.4 |or
		turnin Huck Wheelbarrow##30734 |goto 31.3,63.4 |or
		turnin Mindel Sunspeaker##30735 |goto 31.3,63.4 |or
		turnin Yan Quillpaw##30736 |goto 31.3,63.4 |or
		turnin Fat Long-Fat: Rematch##30737 |goto 31.3,63.4 |or
		turnin Thelonius##30738 |goto 31.3,63.4 |or
		turnin Ellia Ravenmane: Redemption##30739 |goto 31.3,63.4 |or
		only if not achieved(7287)
		next "end"
////Not always here,
	step
	label serpent
		talk Elder Sage Tai-Feng##57324
		turnin Attack At The Temple of the Jade Serpent##31377 |goto The Jade Forest 53.9,61.9 |only if havequest(31377)
		accept Arrows of Fortune##30065 |goto The Jade Forest 53.9,61.9 |or
		accept Hidden Power##30066 |goto The Jade Forest 53.9,61.9 |or
		accept The Darkness Around Us##30006 |goto The Jade Forest 53.9,61.9 |or
	step
		talk Elder Sage Storm-Sing##57319
		accept Behind the Masks##30063 |goto 53.9,61.9
		accept Saving the Sutras##30064 |goto 53.9,61.9
		Click here if he has no quests today |confirm
	stickystart "deliverancientmantras"
	stickystart "shainvaders"
	step
		click Ancient Sutra
		collect 6 Ancient Sutra##77432 |q 30064/1 |goto 56.5,53.6
		only if havequest(30064)
	step "deliverancientmantras"
		kill Final Doubt##57330+, Lingering Doubt##57396+ |only if havequest(30063)
		collect 8 Mask of Doubt##77419+ |q 30063/1 |goto 55.3,57.4 |only if havequest(30063)
		click Defender's Arrow |only if havequest(30065)
		collect 10 Defender's Arrow##77452+ |q 30065/1 |goto 55.3,57.4 |only if havequest(30065)
		Use the Stack of Mantras in your bags on Yu'lon Adepts and Yu'lon Guardians |use Stack of Mantras##77475 |only if havequest(30066)
		Deliver 6 Ancient Mantras |q 30066/1 |goto 55.3,57.4 |only if havequest(30066)
		modelnpc Yu'lon Guardian##57400
		modelnpc Yu'lon Adept##57316
	step "shainvaders"
		kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
		Kill 15 Sha Invaders |q 30006/1 |goto 53.4,54.2
		only if havequest(30006)
	step
		talk Elder Sage Storm-Sing##57319
		turnin Behind the Masks##30063 |goto 53.9,61.9
		turnin Saving the Sutras##30064 |goto 53.9,61.9
	step
		talk Elder Sage Tai-Feng##57324
		turnin Arrows of Fortune##30065 |goto The Jade Forest 53.9,61.9
		turnin Hidden Power##30066 |goto The Jade Forest 53.9,61.9
		turnin The Darkness Around Us##30006 |goto The Jade Forest 53.9,61.9
		accept Flames of the Void##30068 |goto The Jade Forest 53.9,61.9
		accept The Shadow of Doubt##30067 |goto The Jade Forest 53.9,61.9
		noquest
	step
		kill Shadow of Doubt##57389 |q 30067/1 |goto 57.5,62.3
		only if havequest(30067)
	step
		clicknpc War Serpent##57871
		Ride the War Serpent |invehicle |goto 54.1,60.9
		only if havequest(30068)
	step
		Fly around the Jade Temple Grounds and extinguish Void Flames 
		|tip They look like swirling black fire.
		If you run out of water you can refill it in the river here |goto 53.9,58.0 
		|tip Look for small light-blue patches of swirling water and then fly over them.
		Douse 6 Void Flames |q 30068/1
		only if havequest(30068)
	step
		Click the Leave Vehicle button |outvehicle |goto 53.9,61.9
		only if havequest(30068)
	step
		talk Elder Sage Tai-Feng##57324
		turnin The Shadow of Doubt##30067 |goto 53.9,61.9
		turnin Flames of the Void##30068 |goto 53.9,61.9
		next "end"
/// Temple of the White Tiger. Not giving rep for August Celstials.
	step
	label tiger
		talk Xuen##60968
		turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit 67.2,55.9
		only if havequest(31381)
	step
		talk Xuen##60968
		accept Round 1: Brewmaster Chani##30879 |goto 67.2,55.9 |or
		accept Round 1: The Streetfighter##30880 |goto 67.2,55.9 |or
		accept Contending With Bullies##31517 |goto 67.2,55.9 
		|tip This quest may not be available.
		confirm
	step
		kill Shonuf##64757 |q 31517/1 |goto 71.1,55.8
		only if havequest(31517)
	step
		talk Brewmaster Chani##60996
		Challenge her. 
		|tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
		Defeat Brewmaster Chani |q 30879/1 |goto 71.0,51.8
		only if havequest(30879)
	step
		talk Lun-Chi##60994
		Challenge her
		Defeat The Streetfighter |q 30880/1 |goto 71.0,51.8
		only if havequest(30880)
	step
		talk Xuen##60968
		turnin Round 1: Brewmaster Chani##30879 |goto 70.3,51.3
		turnin Round 1: The Streetfighter##30880 |goto 70.3,51.3
		turnin Contending With Bullies##31517 |goto 70.3,51.3
		accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto 70.3,51.3 |or
		accept Round 2: Kang Bramblestaff##30882 |goto 70.3,51.3 |or
	step
		talk Kang Bramblestaff##60978
		Challenge him
		Defeat Kang Bramblestaff |q 30882/1 |goto 71.7,45.4
		only if havequest(30882)
	step
		talk Clever Ashyo##60980
		Challenge him
		|tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The Spheres are top priority and the Spouts are easily avoidable.
		Defeat Clever Ashyo |q 30881/1 |goto 71.7,45.4
		Defeat Ken-Ken |q 30881/2 |goto 71.7,45.4
		modelnpc Ken-Ken##60979
		only if havequest(30881)
	step
		talk Xuen##60968
		turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto 71.8,44.9
		turnin Round 2: Kang Bramblestaff##30882 |goto 71.8,44.9
		accept Round 3: The Wrestler##30883 |goto 71.8,44.9 |or
		accept Round 3: Master Boom Boom##30885 |goto 71.8,44.9 |or
	step
		talk Master Boom Boom##61013
		Challenge him
		|tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
		Defeat Master Boom Boom |q 30885/1 |goto 66.7,46.5
		only if havequest(30885)
	step
		talk The Wrestler##60997
		Challenge him
		|tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
		Defeat The Wrestler |q 30883/1 |goto 66.7,46.5
		only if havequest(30883)
	step
		talk Xuen##60968
		turnin Round 3: The Wrestler##30883 |goto 66.4,46.3
		turnin Round 3: Master Boom Boom##30885 |goto 66.4,46.3
		accept Round 4: The P.U.G.##30907 |goto 66.4,46.3 |or
		accept Round 4: Master Windfur##30902 |goto 66.4,46.3 |or
	step
		talk Master Windfur##61012
		Challenge him
		Defeat Master Windfur. |q 30902/1 |goto 68.8,43.8
		only if havequest(30902)
	step
		_Enter_ the building |goto 69.0,43.7 < 15
		talk Healiss##61004
		Challenge him. 
		|tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
		Defeat Hackiss |q 30907/1
		Defeat Healiss |q 30907/2
		Defeat Tankiss |q 30907/3
		modelnpc Hackiss##61007
		modelnpc Tankiss##61006
		only if havequest(30907)
	step
		talk Xuen##60968
		turnin Round 4: The P.U.G.##30907 |goto 68.5,44.6
		turnin Round 4: Master Windfur##30902 |goto 68.5,44.6
	step
		talk Lin Tenderpaw##60981
		accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
		Click here if this quest is unavailable |confirm |next "end"
	step
		For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over.
		confirm
	step
		_Enter the first_ temple here. |goto 69.6,53.0 < 15
		_Enter the second_ temple here. |goto 66.9,51.2 < 15
		Click _The Strong Brazier_ to light it.
		Light the Strong Brazier |q 31492/1 |goto 68.6,46.6
	step
		talk Lin Tenderpaw##60981
		turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
		next "end"
/// Niuzao Temple. Possible unlock hub at revered.
	step
	label ox
		talk Ogo the Elder##61580
		turnin Defense At Niuzao Temple##31383 |goto Townlong Steppes 39.3,62.3 |only if havequest(31383)
		accept The Siege Swells##30956 |goto Townlong Steppes 39.3,62.3 |or
		accept The Unending Siege##30952 |goto Townlong Steppes 39.3,62.3 |or
	step
		talk Ogo the Younger##61581
		accept The Big Guns##30959 |goto 39.3,62.3 |or
		accept A Blade is a Blade##30954 |goto 39.3,62.3 |or
	step
		talk Yak-Keeper Kyana##61585
		accept Fallen Sentinels##30953 |goto 39.2,62.1
		If this quest is unavailable today, click here. |confirm
	step
		talk Sentinel Commander Qipan##61584
		accept The Overwhelming Swarm##30957 |goto 39.4,61.9
		If this quest is unavailable today, click here. |confirm
	step
		talk High Adept Paosha##61583
		accept In Battle's Shadow##30958 |goto 38.9,62.4 |or
		accept Paying Tribute##30955 |goto 38.9,62.4 |or
	step
		The following can all be done around Niuzao Temple:
		Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |modelnpc Sra'thik War Wagon##61510 |only if havequest(30959)
		Cause 3 Sri'thik War Wagons to explode. |q 30959/1 |only if havequest(30959)
		kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if havequest(30956)
		Kill 25 Sri'thik attackers |q 30956/1 |only if havequest(30956)
		kill 4 Sra'thik Kunchong##61509+ |q 30957/1 |only if havequest(30957)
		click Loose Brick |only if havequest(30958)
		Throw 10 Loose Stones up to Niuzao Stonemasons |q 30958/1 |only if havequest(30958)
		Use your Yak's Milk Flask on Wounded Niuzao Sentinels. |use Yak's Milk Flask##82381 
		|tip Normal healing spells will also heal the Sentinels if you have them. |only if havequest(30953)
		Heal 8 Niuzao Sentinels |q 30953/1 |only if havequest(30953)
		click Niuzao Food Supply |only if havequest(30955)
		Gather 6 Food for Niuzao |q 30955/1 |only if havequest(30955)
		kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if havequest(30952)
		Kill 12 Sra'thik attackers |q 30952/1 |only if havequest(30952)
		click Sra'thik Weapon |tip After you kill a Sra'thik a weapon may drop. |only if havequest(30954)
		collect 10 Sra'thik Weapon##82353 |q 30954/1 |only if havequest(30954)
	step
		talk Ogo the Elder##61580
		turnin The Siege Swells##30956 |goto 39.3,62.3
		turnin The Unending Siege##30952 |goto 39.3,62.3
	step
		talk Ogo the Younger##61581
		turnin The Big Guns##30959 |goto 39.3,62.3
		turnin A Blade is a Blade##30954 |goto 39.3,62.3
	step
		talk Yak-Keeper Kyana##61585
		turnin Fallen Sentinels##30953 |goto 39.2,62.1
		turnin In Battle's Shadow##30958 |goto 39.2,62.1
	step
		talk Sentinel Commander Qipan##61584
		turnin The Overwhelming Swarm##30957 |goto 39.4,61.9
	step	
		talk High Adept Paosha##61583
		turnin Paying Tribute##30955 |goto 38.9,62.4
	step
	label "end"
		talk Sage Lotusbloom##64001 |goto Vale of Eternal Blossoms 62.8,23.4
		buy 1 Grand Commendation of the August Celestials##93224 |n
		Use the Commendation of the August Celestials you just purchased. |condition ZGV:GetReputation("August Celestials").hasBonus |use Grand Commendation of the August Celestials##93224
		only if rep("August Celestials")>=Revered
	step
		You have reached the end of this daily guide.
		Click here to return to the start of the dailies. |next "startaug" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Dominance_Offensive",[[
	startlevel 90
	step
		talk Sunwalker Dezco##64566
		accept Meet the Scout##32249 |goto Vale of Eternal Blossoms 62.9,28.3
	step
		talk Scout Rokla##67812
		turnin Meet the Scout##32249 |goto Krasarang Wilds 8.7,64.4
	step
		talk Garrosh Hellscream##62092
		accept The Might of the Warchief##32250 |goto Krasarang Wilds 8.7,64.4
	stickystart "alliancetroops"
	step
		talk Blood Guard Gro'tash##67927
		Find Blood Guard Gro'tash |q 32250/2 |goto Krasarang Wilds 10.7,53.2
	step
		talk Grizzle Gearslip##67926
		Find Grizzle Gearslip |q 32250/3 |goto Krasarang Wilds 15.7,57.8
	step "alliancetroops"
		kill Alliance Sentinel##67900+, Alliance Footman##+, Alliance Priest##+
		Kill 25 Alliance troops |q 32250/1 |goto Krasarang Wilds 10.0,64.1
	step
		Next to you:
		talk Garrosh Hellscream##62092
		turnin The Might of the Warchief##32250
		accept Domination Point##32108
	step
		click Signal Fire
		turnin Domination Point##32108 |goto 8.5,63.8
	step
		talk Kromthar##67785
		fpath Domination Point |goto Krasarang Wilds 9.7,52.5
	step
	label "dailies"
		talk Blood Guard Gro'tash##67880
		accept The Ruins of Ogudei##32449 |goto Krasarang Wilds 10.1,53.9 |or |next "ogudei"
		accept The Time is Now!##32450 |goto Krasarang Wilds 10.1,53.9 |or |next "lion"
		accept Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds 10.1,53.9 |or |next
		If no quests are available, click here |confirm |next "cave"
	step
		talk Brolic##67767
		accept Tear It Up##32126 |goto Krasarang Wilds 10.2,53.6
	step
		talk Shokia##56411
		accept Death on Two Legs##32123 |goto Krasarang Wilds 10.3,55.6
	step
		Fly up in the air and throw your Bilgewater Molotovs at the Skyfire Gyrocopter X2s |use The Bilgewater Molotov##92019
		Kill 6 Skyfire Gyrocopter X2s |q 32235/1 |goto Krasarang Wilds 11.8,57.6
	stickystart "shieldwalltroop"
	step
		click Alliance Supply Drop
		Destroy 8 Alliance Supply Drops |q 32126/1 |goto Krasarang Wilds 8.1,61.3
	step "shieldwalltroop"
		kill Shieldwall Marine##+, Shieldwall Stormcaller##+
		Kill 10 Alliance Troops |q 32123/1 |goto 9.9,64.2
	step
		talk Shokia##56411
		turnin Death on Two Legs##32123 |goto Krasarang Wilds 10.3,55.6
	step
		talk Brolic##67767
		turnin Tear It Up##32126 |goto Krasarang Wilds 10.3,53.1
	step
		talk Blood Guard Gro'tash##67880
		turnin Flash! Aaaaaahhhh!##32235 |goto Krasarang Wilds 10.1,53.9
		accept Another One Bites the Dust##32128 |goto Krasarang Wilds 10.1,53.9
	step
		talk Brolic##67767
		accept All Dead, All Dead##32127 |goto Krasarang Wilds 10.3,53.1
	step
		kill Captain Brent the Black##67626 |q 32127/1 |goto Krasarang Wilds 12.7,75.8
		|tip On the second floor of the ship, towards the back.
	step
		click Powder Magazine
		|tip It's on the bottom floor of the ship, next to Fireworks and Bombs.
		Destroy the Defiant ammunition |q 32128/2 |goto Krasarang Wilds 12.3,75.6
	step
		kill Captain Mulkey##67627 |q 32127/2 |goto Krasarang Wilds 15.0,76.4
		|tip On the second floor of the ship, towards the back.
	step
		click Powder Magazine |tip It's on the bottom floor of the ship, next to Fireworks and Bombs.
		Destroy the Valor's Edge ammunition |q 32128/1 |goto Krasarang Wilds 15.1,76.6
	step
		talk Blood Guard Gro'tash##67880
		turnin Another One Bites the Dust##32128 |goto Krasarang Wilds 10.1,53.9
	step
		talk Brolic##67767
		turnin All Dead, All Dead##32127 |goto Krasarang Wilds 10.3,53.1
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "cave"
		click Bounty Board
		accept Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds 12.8,56.8 |or
		accept Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds 12.8,56.8 |or
	step
		talk Rivett Clutchpop##67608
		accept Storming the Beach##32221 |goto Krasarang Wilds 13.0,56.2 |or
		accept Bilgewater Infiltrators##32214 |goto Krasarang Wilds 13.0,56.2 |or
	step
		talk Duke##67562
		accept Krasarang Steampot##32199 |goto Krasarang Wilds 13.7,55.8 |or
		accept Mystery Meatloaf##32197 |goto Krasarang Wilds 13.7,55.8 |or
	step
		talk Boss-Lady Trixel##67535
		accept Work Order: Iron##32140 |goto Krasarang Wilds 13.7,55.8 |or
		accept Work Order: Fuel##32136 |goto Krasarang Wilds 13.7,55.8 |or
		accept Work Order: Lumber##32138 |goto Krasarang Wilds 13.7,55.8 |or
	stickystart "shieldwallforces"
	step
		Use the "New" and "Improved" Infared Heat Focals in your bags |use "New" and "Improved" Infared Heat Focals##92475
		kill SI:7 Saboteur##67689+
		Kill 10 SI:7 Saboteurs |q 32214/1 |goto Krasarang Wilds 9.9,60.8
		|only if havequest(32214)
	step
		kill Polluted Viseclaw##67896+, Polluted Viseclaw Scuttler##68584+
		collect 5 Polluted Viseclaw Meat##91869 |q 32199/1 |goto Krasarang Wilds 17.7,54.7
		|only if havequest(32199)
	step
		kill Mature Terrapin##67895+, Polluted Viseclaw##67896+, Polluted Viseclaw Scuttler##68584+
		collect 7 Chunk of Mystery Meat##91874 |q 32197/1 |goto Krasarang Wilds 15.9,65.1
		|only if havequest(32197)
	step
		kill Lieutenant Ethan Jacobson##68028 |q 32223/1 |goto Krasarang Wilds 19.0,71.0
		|only if havequest(32223)
	step
		kill Chief Engineer Cogwrench##68012 |q 32222/1  |goto Krasarang Wilds 21.6,51.2
		|only if havequest(32222)
	step "shieldwallforces"
		kill Shieldwall Marine##67354+
		kill Dwarven Mortar Team Engineer##67545+
		kill Shieldwall Stormcaller##67425+
		Kill 10 Shieldwall Forces |q 32221/1 |goto Krasarang Wilds 18.8,68.2
		|only if havequest(32221)
	step
		talk Zino "The Shredder" Quickchop##67534
		turnin Work Order: Lumber##32138 |goto Krasarang Wilds 20.5,58.1
		accept Stacked!##32139 |goto Krasarang Wilds 20.5,58.1
		|only if havequest(32138) or completedq(32138)
	step
		talk Daxil "The Gem" Oregrind##67537
		turnin Work Order: Iron##32140 |goto Krasarang Wilds 22.6,62.3
		accept Power Metal##32141 |goto Krasarang Wilds 22.6,62.3
		|only if havequest(32140) or completedq(32140)
	step
		talk Grizzle Gearslip##67542
		turnin Work Order: Fuel##32136 |goto Krasarang Wilds 25.5,60.4
		accept Runnin' On Empty##32137 |goto Krasarang Wilds 25.5,60.4
		|only if havequest(32136) or completedq(32136)
	step
		talk Bixy Buzzsaw##67533
		accept Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
		|only if completedq(32138)
	step
		talk Bixy Buzzsaw##67553
		accept Precious Resource##32237 |goto Krasarang Wilds 25.3,60.4
		|only if completedq(32136)
	step
		talk Bixy Buzzsaw##67553
		accept Bug Off!##32236 |goto Krasarang Wilds 22.4,62.2
		|only if completedq(32140)
	step
		click Domination Point Lumber## |only if havequest(32139)
		collect 9 Domination Point Lumber |q 32139/1 |goto Krasarang Wilds 20.2,60.7 |only if havequest(32139)
		Use your Universal Remote on Shieldwall Mecha-Pounders to weaken them. |use Universal Remote##91902 |only if havequest(32238)
		kill 9 Shieldwall Mecha-Pounder##68011 |q 32238/1 |only if havequest(32238)
		|only if havequest(32139) or havequest(32238)
	step
		click Fauly Valve
		Tighten 8 Faulty Valves |q 32237/1 |goto Krasarang Wilds 23.5,56.4
		|only if havequest(32237)
	step
		click "Distilled" Fuel Barrel
		collect 9 "Distilled" Fuel Barrel |q 32137/1 |goto Krasarang Wilds 26.5,63.2
		|only if havequest(32137)
	step
		Use your Hand-Dandy Bug Off Sprayer on _Agitated Shale Spiders_ to spawn Shale Shards |use Hand-Dandy Bug Off Sprayer##93026 |only if havequest(32236)
		Spray 5 Agitated Shale Spiders |q 32236/1 |goto Krasarang Wilds 19.9,62.5 |only if havequest(32236)
		kill 12 Shale Shards##68653+ |q 32236/2 |goto Krasarang Wilds 19.9,62.5 |only if havequest(32236)
		Click _Energized Iron_ deposits on the sides of the cave to spawn Energized Iron Ore Chunks. |only if havequest(32141)
		click Energized Iron Ore Chunk |only if havequest(32141)
		collect 7 Energized Iron Ore Chunk |q 32141/1 |goto Krasarang Wilds 19.9,62.5 |only if havequest(32141)
		|modelnpc Agitated Shale Spider##67759 |only if havequest(32236)
		|only if havequest(32236) or havequest(32141)
	step
		talk Bixy Buzzsaw##67533
		turnin Universal Remote-Explode##32238 |goto Krasarang Wilds 20.6,58.1
		|only if havequest(32238)
	step
		talk Zino "The Shredder" Quickchop##67534
		turnin Stacked!##32139 |goto Krasarang Wilds 20.5,58.1
		|only if havequest(32139)
	step
		talk Bixy Buzzsaw##67553
		turnin Bug Off!##32236 |goto Krasarang Wilds 22.4,62.2
		|only if havequest(32236)
	step
		talk Bixy Buzzsaw##67553
		turnin Precious Resource##32237 |goto Krasarang Wilds 25.3,60.4
		|only if havequest(32237)
	step
		talk Sezik Steampot##67536
		turnin Krasarang Steampot##32199 |goto Krasarang Wilds 26.0,58.1 |only if havequest(32199)
		turnin Mystery Meatloaf##32197 |goto Krasarang Wilds 26.0,58.1 |only if havequest(32197)
		|only if havequest(32199) or havequest(32197)
	step
		talk Boss-Lady Trixel##67535
		turnin Power Metal##32141 |goto Krasarang Wilds 13.8,55.9 |only if havequest(32141)
		turnin Runnin' On Empty##32137 |goto Krasarang Wilds 13.8,55.9 |only if havequest(32137)
		|only if havequest(32137) or havequest(32141)
	step
		talk Rivett Clutchpop##67608
		turnin Storming the Beach##32221 |goto Krasarang Wilds 13.0,56.1 |only if havequest(32221)
		turnin Bilgewater Infiltrators##32214 |goto Krasarang Wilds 13.0,56.1 |only if havequest(32214)
		|only if havequest(32214) or havequest(32221)
	step
		talk Blood Guard Gro'tash##67880
		turnin Wanted: Lieutenant Ethan Jacobson##32223 |goto Krasarang Wilds 10.1,53.9 |only if havequest(32223)
		turnin Wanted: Chief Engineer Cogwrench##32222 |goto Krasarang Wilds 10.1,53.9 |only if havequest(32222)
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "lion"
		talk Shademaster Kiryn##67628
		turnin The Time is Now!##32450 |goto Krasarang Wilds 75.9,34.4
		accept Hero Killer##32135 |goto Krasarang Wilds 75.9,34.4
		accept Worker Harassment##32132 |goto Krasarang Wilds 75.9,34.4
		accept Sentry Wards##32133 |goto Krasarang Wilds 75.9,34.4
	step
		talk Zazzix "Toasty" Sparkrocket##67402
		accept Good Luck, Have Fun##32130 |goto Krasarang Wilds 75.9,34.2 |or 2
		accept We Require More Minerals!##32131 |goto Krasarang Wilds 75.9,34.2 |or 2
		accept Hard Counter##32134 |goto Krasarang Wilds 75.9,34.2 |or 2
	step
		kill Thane Stonehearth##67636 |q 32135/1 |goto Krasarang Wilds 81.8,25.4
		|only if havequest(32135)
	step
		click Town Hall Sentry Ward Location
		Place the Sentry Ward in Town Hall |q 32133/1 |goto Krasarang Wilds 86.2,25.6
		|only if havequest(32133)
	step
		click Docks Sentry Ward Location
		Place the Sentry Ward on the docks |q 32133/2 |goto Krasarang Wilds 86.1,33.1
		|only if havequest(32133)
	step
		_Enter_ the Barracks |goto Krasarang Wilds 87.1,30.9 < 15
		click Barracks Sentry Ward Location
		Place the Sentry Ward in the Barracks |q 32133/3 |goto Krasarang Wilds 87.7,32.7 < 15
		|only if havequest(32133)
	step
		kill Shieldwall Peasant##67423+
		Kill 30 Shieldwall Peasant |q 32132/1 |goto Krasarang Wilds 84.2,22.9
		|only if havequest(32132)
	step
		kill Shieldwall Engineer##67971
		click Animatable Stone
		collect 20 Animatable Stone##91823 |q 32131/1 |goto Krasarang Wilds 78.2,18.3
		|only if havequest(32131)
	stickystart "waxyalliance"
	step
		kill 8 Dwarven Mortar Team Engineer##67545+ |q 32134/1 |goto Krasarang Wilds 82.4,24.5
		kill 2 Dwarven Mortar Tube##67541+ |q 32134/2 |goto Krasarang Wilds 82.4,24.5
		|only if havequest(32134)
	step "waxyalliance"
		kill Shieldwall Footman##67304
		collect 10 Extra-Waxy Alliance Ears##92474 |q 32130/1 |goto Krasarang Wilds 81.4,25.7
		|only if havequest(32130)
	step
		talk Zazzix "Toasty" Sparkrocket##67402
		turnin Good Luck, Have Fun##32130 |goto Krasarang Wilds 75.9,34.2
		turnin We Require More Minerals!##32131 |goto Krasarang Wilds 75.9,34.2
		turnin Hard Counter##32134 |goto Krasarang Wilds 75.9,34.2
	step
		talk Shademaster Kiryn##67628
		turnin Hero Killer##32135 |goto Krasarang Wilds 75.9,34.4
		turnin Worker Harassment##32132 |goto Krasarang Wilds 75.9,34.4
		turnin Sentry Wards##32133 |goto Krasarang Wilds 75.9,34.4
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "ogudei"
		talk Belloc Brightblade##67847
		turnin The Ruins of Ogudei##32449 |goto Krasarang Wilds 76.3,34.1
		accept Taking Advantage##32118 |goto Krasarang Wilds 76.3,34.1
	step
		Click the portal to go to the Ruins of Ogudei |goto Krasarang Wilds 76.2,34.0 |only if havequest(32118)
		talk Kaelis Sunsoar##68274
		turnin Taking Advantage##32118 |goto Krasarang Wilds/3 36.1,42.1
	step
		talk Kaelis Sunsoar##68274
		accept The Spirit Trap##32342 |goto Krasarang Wilds/3 36.1,42.1
		accept It Is A Mystery##32344 |goto Krasarang Wilds/3 36.1,42.1 |or
		accept We're Not Monsters!##32345 |goto Krasarang Wilds/3 36.1,42.1 |or
		accept Legacy of Ogudei##32120 |goto Krasarang Wilds/3 36.1,42.1
		accept Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 36.1,42.1
		accept Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 36.1,42.1
	step
		_Go up_ the path |goto Krasarang Wilds/3 78.6,44.2 < 15
		Walk around this cave and pay attention to your Anamoly Reader above your actionbars. This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get. Once you have 100%, you will automatically disperse the anamoly.
		Disperse the anamoly |q 32344/1
		|only if havequest(32344)
	step
		kill Troubled Slave Spirit##68074+
		Free 14 Troubled Slave Spirits |q 32345/1 |goto Krasarang Wilds/3 70.2,52.8
		|only if havequest(32345)
	step
		kill Spiritbound Brutalizer##68073+
		kill Spiritbound Arcanist##68070+
		collect 5 Ancient Mogu Essence##92704 |q 32120/1 |goto Krasarang Wilds/2 55.5,53.7
		|only if havequest(32120)
	step
		kill Spirit Trap##68061+
		colect 3 Spirit Trap |q 32342/1 |goto Krasarang Wilds/2 74.1,29.7
		|only if havequest(32342)
	step
		kill Gen-li Twister of Words##68169
		kill Meng-do Strength of Mountains##68170
		collect Gen-Li's Essence##92736 |q 32343/1 |goto Krasarang Wilds/2 67.8,80.3
		collect Meng-do's Essence##92735 |q 32343/1 |goto Krasarang Wilds/2 67.8,80.3
	step
		Go up the stairs here. |goto Krasarang Wilds/2 56.7,38.7 < 15
		kill Shieldwall Footman##67304+, Shieldwall Rifleman##67297+, Lion's Landing Guard Captain##68310+
		Kill 12 Lion's Landing Military |q 32348/1 |goto Krasarang Wilds/1 59.3,37.3
	step
		talk Kaelis Sunsoar##68274
		turnin The Spirit Trap##32342 |goto Krasarang Wilds/3 36.2,41.2
		turnin It Is A Mystery##32344 |goto Krasarang Wilds/3 36.2,41.2
		turnin We're Not Monsters!##32345 |goto Krasarang Wilds/3 36.2,41.2
		turnin Legacy of Ogudei##32120 |goto Krasarang Wilds/3 36.2,41.2
		turnin Ogudei's Lieutenants##32343 |goto Krasarang Wilds/3 36.2,41.2
		turnin Kick 'em While They're Down##32348 |goto Krasarang Wilds/3 36.2,41.2
		|next "end" |only if default
		|next "friendly" |only if repval('Dominance Offensive','Friendly')>=950 and not completedq(32257)
		|next "friendly2" |only if repval('Dominance Offensive','Friendly')>=4900 and not completedq(32372)
		|next "honored" |only if repval('Dominance Offensive','Honored')>=3250 and not completedq(32244)
		|next "honored2" |only if repval('Dominance Offensive','Honored')>=7300 and not completedq(32384)
		|next "honored3" |only if repval ('Dominance Offensive','Honored')>=10800 and not completedq(32352)
		|next "revered" |only if repval ('Dominance Offensive','Revered')>=2400 and not completedq(32330)
		|next "revered2" |only if repval ('Dominance Offensive','Revered')>=6850 and not completedq(32368)
		|next "revered3" |only if repval ('Dominance Offensive','Revered')>=10600 and not completedq(32392)
		|next "revered4" |only if repval ('Dominance Offensive','Revered')>=14500 and not completedq(32328)
		|next "revered5" |only if repval ('Dominance Offensive','Revered')>=18500 and not completedq(32412)
		|next "exalted" |only if rep("Dominance Offensive")==Exalted
	step
	label "friendly"
		talk General Nazgrim##67939
		accept Rise Of An Empire##32256 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.4 < 15
		Tell him to take you to the Shrine of Two Moons |goto Vale of Eternal Blossoms 59.1,20.4 < 15
		talk Garrosh Hellscream##67840
		turnin Rise Of An Empire##32256 |goto Shrine of Two Moons/2 32.1,83.8
		accept Buried Secrets##32242 |goto Shrine of Two Moons/2 32.1,83.8
	step
		talk Fanlyr Silverthorn##67834
		turnin Buried Secrets##32242 |goto Vale of Eternal Blossoms 20.9,15.5
		accept Voice of the Gods##32257 |goto Vale of Eternal Blossoms 20.9,15.5
	step
		Click on the Mercurial Guardian to investigate it. |q 32257/1 |goto Vale of Eternal Blossoms 18.2,12.0
		kill Mercurial Guardian##67833
		collect Ancient Korune Tablet |q 32257/2 |goto Vale of Eternal Blossoms 18.2,12.0
	step
		talk Fanlyr Silverthorn##67834
		turnin Voice of the Gods##32257 |goto Vale of Eternal Blossoms 20.9,15.5
		|next "end"
	step
	label "friendly2"
		talk Messenger Grummle##67865
		accept Someone You Should See##32284 |goto Krasarang Wilds 10.6,53.6
	step
		talk Chen Stormstout##67866
		turnin Someone You Should See##32284 |goto Kun-Lai Summit 71.6,93.0
		accept Regeneration Takes Time##32318 |goto Kun-Lai Summit 71.6,93.0
	step
		kill Summit Sprite##68026+, Sinister Needle##68027+
		collect 10 Sturdy Needle##92499+ |q 32318/1 |goto Kun-Lai Summit 77.2,92.2
	step
		talk Chen Stormstout##67866
		turnin Regeneration Takes Time##32318 |goto Kun-Lai Summit 71.6,93.0
	step
		talk Vol'jin##68023
		accept Find Thrall!##32319 |goto Kun-Lai Summit 71.6,93.2
	step
		Use Vol'jin's Hearthstone in your bags to get to Thrall. |use Vol'jin's Hearthstone##92510 |q 32319/1
	step
		talk Thrall##68025
		turnin Find Thrall!##32319 |goto Valley of Trials 44.4,66.6
		accept The Horde Is Family##32320 |goto Valley of Trials 44.4,66.6
		Escort Thrall to the Echo Isles |q 32320/1
	step
		talk Thrall##68025
		turnin The Horde Is Family##32320 |goto Echo Isles 38.4,46.6
		accept De-Subjugation##32372 |goto Echo Isles 38.4,46.6
	stickystart "korkronover"
	step
		kill Gul'tar the Subjugator##68048 |q 32372/3 |goto Echo Isles 61.6,65.8 
		|tip He's elite, but easy to kill. You will get help from other NPCs during the battle.
	step "korkronover"
		kill 10 Kor'kron Overseer##68041 |q 32372/1 |goto Echo Isles 54.4,54.6
		kill 5 Kor'kron Subjugator##68044 |q 32372/2 |goto Echo Isles 54.4,54.6
	step
		talk Thrall##68025
		turnin De-Subjugation##32372 |goto Echo Isles 58.5,62.1
		|next "end"
	step
	label "honored"
		talk General Nazgrim##67939
		accept To Mogujia##32190 |goto Krasarang Wilds 10.4,53.7
	step
		talk Lor'themar Theron##67581
		turnin To Mogujia##32190 |goto Kun-Lai Summit 57.0,79.0
		accept Bloodlines##32192 |goto Kun-Lai Summit 57.0,79.0
	step
		talk Fanlyr Silverthorn##67603
		accept Ancient Guardians##32191 |goto Kun-Lai Summit 57.0,78.6
		accept The Korune##32244 |goto Kun-Lai Summit 57.0,78.6
	stickystart "koruneguardian"
	step
		kill Korune Spellweaver##67752
		collect Korune Codex##92072 |q 32244/1 |goto Kun-Lai Summit 58.2,71.0
	step "koruneguardian"
		kill Korune Warden##67587+
		Free 6 Blood Elves |q 32192/1 |goto 58.6,74.4
		kill 5 Korune Guardian##67574+ |q 32191/1 |goto 58.6,74.4
	step
		talk Lor'themar Theron##67581
		turnin Bloodlines##32192 |goto Kun-Lai Summit 57.0,79.0
	step
		talk Fanlyr Silverthorn##67603
		turnin Ancient Guardians##32191 |goto Kun-Lai Summit 57.0,78.6
		turnin The Korune##32244 |goto Kun-Lai Summit 57.0,78.6
		|next "end"
	step
	label "honored2"
		talk General Nazgrim##67939
		accept To the Valley!##32376 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Valley of Emperors |goto Kun-Lai Summit 53.8,49.0 < 15
	step
		talk Lor'themar Theron##68370
		turnin To the Valley!##32376 |goto Kun-Lai Summit 53.8,49.2
		accept Legacy of the Korune##32379 |goto Kun-Lai Summit 53.8,49.2
		accept Clearing a Path##32378 |goto Kun-Lai Summit 53.8,49.2
	stickystart "sealedartifact"
	step
		click Legacy of the Korune
		collect Legacy of the Korune |q 32379/2 |goto Kun-Lai Summit 56.9,47.8
	step "sealedartifact"
		kill Korune Sha-weaver##68410+, Korune Mutilator##68401+ |q 32378/1
		collect Korune Orders |q 32379/1 |goto Kun-Lai Summit 57.3,48.0
		collect Sealed Korune Artifact |q 32379/3 |goto Kun-Lai Summit 57.3,48.0
	step
		talk Lor'themar Theron##68370
		turnin Clearing a Path##32378 |goto Kun-Lai Summit 53.8,49.2
		turnin Legacy of the Korune##32379 |goto Kun-Lai Summit 53.8,49.2
		accept Trapping the Leader##32384 |goto Kun-Lai Summit 53.8,49.2
	step
		Enter the tomb here |goto Kun-Lai Summit 55.9,46.2 < 15
		kill Shan Kien##68378+
		Weaken Shan Kien |q 32384/1 |goto Kun-Lai Summit 56.7,44.2
	step
		talk Lor'themar Theron##68370
		turnin Trapping the Leader##32384 |goto Kun-Lai Summit 53.8,49.2
		|next "end"
	step
	label "honored3"
		talk General Nazgrim##67939
		accept Echoes of Thunder##32351 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Shrine of Seven Stars |goto Vale of Eternal Blossoms/0 59.1,20.3 < 15 
		|tip This is an error by Blizzard. Eventually they will fix it and it will say the Shrine of Two Moons, so don't worry about going into enemy territory.
		talk Baine Bloodhoof##68287
		turnin Echoes of Thunder##32351 |goto Shrine of Two Moons/2 68.0,44.6
		accept A Gathering Storm##32352 |goto Shrine of Two Moons/2 68.0,44.6
	step
		clicknpc Sha-Touched Grunt##68284+
		Fight the Grunts until they surrender.
		Save 6 Sha-Touched Grunts |q 32352/1 |goto Shrine of Two Moons/1 48.9,41.3
	step
		talk Garrosh Hellscream##67840
		turnin A Gathering Storm##32352 |goto Shrine of Two Moons/2 66.0,46.3
		|next "end"
	step
	label "revered"
		talk General Nazgrim##67939
		accept Get My Results!##32329 |goto Krasarang Wilds 10.4,53.8
	step
		talk Lor'themar Theron##16802
		turnin Get My Results!##32329 |goto Silvermoon City 54.0,20.4
		accept What's in the Box?##32330 |goto Silvermoon City 54.0,20.4
	step
		clicknpc Arcanis Mechanica##68430 |q 32330/1 |goto Silvermoon City 86.4,31.8
	step
		talk Archmage Aethas Sunreaver##68086 |q 32330/2 |goto Silvermoon City 92.0,37.4
		talk Grand Magister Rommath##68085 |q 32330/1 |goto Silvermoon City 92.0,37.4
	step
		Click the big glowing box in front of you
		kill Concentrated Sha##68259 |q 32330/4
	step
		talk Lor'themar Theron##68084
		turnin What's in the Box?##32330 |goto Silvermoon City 91.3,37.5
		|next "end"
	step
	label "revered2"
		talk General Nazgrim##67939
		accept The Kun-Lai Expedition##32363 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Gossh'ar Advance |goto Kun-Lai Summit 60.6,55.0 < 15
		talk Baine Bloodhoof##68287
		turnin The Kun-Lai Expedition##32363 |goto Kun-Lai Summit 60.4,55.2
		accept Ties with the Past##32448 |goto Kun-Lai Summit 60.4,55.2
	step
		Enter the cave here |goto Kun-Lai Summit 63.2,41.8 < 15
		kill Varatus the Conqueror##68907
		collect Spirit Essence of Varatus#93212 |q 32448/1 |goto Kun-Lai Summit 63.8,45.2
	step
		talk Baine Bloodhoof##68287
		turnin Ties with the Past##32448 |goto Kun-Lai Summit 60.4,55.2
		accept Memory Wine##32368 |goto Kun-Lai Summit 60.4,55.2
	step
		Drink the Memory Wine in your bags |use Memory Wine##92756 |q 32368/1
		Witness Shan Kien's Past |q 32368/2
	step
		talk Baine Bloodhoof##68287
		turnin Memory Wine##32368 |goto Kun-Lai Summit 60.4,55.2
		|next "end"
	step
	label "revered3"
		talk General Nazgrim##67939
		accept The Ruins of Korune##32391 |goto Krasarang Wilds 10.4,53.8
	step
		talk Tak-Tak##68681 |goto Krasarang Wilds 9.9,52.5 < 15
		Tell him to take you to the Ruins of Korune |goto Kun-Lai Summit 32.9,25.9 < 15
		talk Ishi##68337
		turnin The Ruins of Korune##32391 |goto Kun-Lai Summit 32.8,26.2
		accept The Divine Bell##32392 |goto Kun-Lai Summit 32.8,26.2
	step
		_Enter_ the cave here |goto Kun-Lai Summit 33.1,26.7 < 15
		When you get to this area, make sure to step on the light blue/grey tiles to avoid death. |goto Kun-Lai Summit/20 53.9,30.4 < 15
		Go down the stairs here |goto Kun-Lai Summit/20 28.9,79.8 < 15
		kill Sarannha Skyglaive##68472 |q 32392/1 |goto Kun-Lai Summit/21 59.9,25.7 
		|tip She patrols all around this area. Some searching may be required.
	step
		talk Ishi##68337
		turnin The Divine Bell##32392 |goto Kun-Lai Summit/21 61.0,24.9
		|next "end"
	step
	label "revered4"
		talk General Nazgrim##67939
		accept Insertion##32326 |goto Krasarang Wilds 10.4,53.8
	step
		talk Fanlyr Silverthorn##68077
		turnin Insertion##32326 |goto Teldrassil 40.0,50.4
		accept The Darnassus Mission##32327 |goto Teldrassil 40.0,50.4
	step
		You will get a stealth buff. This mission does not put you in a seperate phase from any other NPCs or players in this zone, so be careful!
		_Enter_ the Cenarion Enclave here |goto Darnassus 38.4,33.3 < 15
		click Divine Bell##
		Locate the Devine Bell |q 32327/2 |goto Darnassus 40.0,39.6 
		|tip You will be teleported back to Fanlyr once you tag the bell
	step
		talk Fanlyr Silverthorn##68077
		turnin The Darnassus Mission##32327 |goto Teldrassil 40.0,50.4
		accept Victorious Return##32328 |goto Teldrassil 40.0,50.4
	step
		Go to the portal at Domination Point |goto Teldrassil 40.0,50.4 < 15
		click Portal to Domination Point |goto Krasarang Wilds 10.4,53.8 < 15
		talk General Nazgrim##67939
		turnin Victorious Return##32328 |goto Krasarang Wilds 10.4,53.8
		|next "end"
	step
	label "revered5"
		talk General Nazgrim##67939
		accept The Situation in Dalaran##32402 |goto Krasarang Wilds 10.4,53.8
	step
		talk Kromthar##67785
		Tell her you need to get to Dalaran |goto 924/2 |goto Krasarang Wilds/0 9.7,52.5
	step
		talk Grand Magister Rommath##68586
		turnin The Situation in Dalaran##32402 |goto 924/2 31.6,51.3
		accept It Starts in the Sewers##32403 |goto 924/2 31.6,51.3
	step
		talk Sunreaver Citizen##68695
		Tell them it is not safe here!
		Evacuate 9 Sunreaver Citizens |q 32403/1 |goto 924/2 45.3,56.9
	step
		talk Grand Magister Rommath##68586
		turnin It Starts in the Sewers##32403 |goto 924/2 45.4,53.7
		accept Violence in the Arena##32404 |goto 924/2 45.4,53.7
	step
		kill 6 Silver Covenant Enforcer##68042+ |q 32404/1 |goto 924/2 47.2,43.4
		kill 4 Silver Covenant Spellbow##68043+ |q 32404/2 |goto 924/2 47.2,43.4
	step
		talk Grand Magister Rommath##68586
		turnin Violence in the Arena##32404 |goto 924/2 54.3,28.2
		accept Hand of the Silver Covenant##32405 |goto 924/2 54.3,28.2
	step
		kill Sorin Magehand##32405 |q 32405/1 |goto 924/2 61.4,14.0
	step
		talk Grand Magister Rommath##68586
		turnin Hand of the Silver Covenant##32405 |goto 924/2 64.0,48.0
		accept A Tactical Assault##32406 |goto 924/2 64.0,48.0
	step
		Follow Grand Magister Rommath to the center of Dalaran |goto 924/1 50.4,48.4
		You will be teleported to the Violet Hold and must fight your way back to him.
		talk Grand Magister Rommath##68586
		turnin A Tactical Assault##32406
		accept The Silver Covenant's Stronghold##32408
		accept The Kirin Tor's True Colors##32409
		accept Krasus' Landing##32410
	step
		kill Arcanist Rathaella##68049 |q 32408/1 |goto 924/1 37.2,62.0
	step
		kill Lieutenant Corwin##68047 |q 32409/1 |goto 924/1 47.4,22.2
		kill Stormwind Footman##68707+, Stormwind Cleric##68708+ |q 32409/2 |goto 924/1 47.4,22.2
	step
		clicknpc Sunreaver Dragonhawk##68728
		Free *6* Sunreaver Dragonhawks |q 32410/1 |goto 924/1 71.0,44.8
	step
		talk Grand Magister Rommath##68586
		turnin The Silver Covenant's Stronghold##32408 |goto 924/1 50.4,48.4
		turnin The Kirin Tor's True Colors##32409 |goto 924/1 50.4,48.4
		turnin Krasus' Landing##32410 |goto 924/1 50.4,48.4
		accept The Remaining Sunreavers##32411 |goto 924/1 50.4,48.4
	step
		Use your Tear of the Sin'dorei on Magister Surdiel |use Tear of the Sin'dorei##93124
		Rescue Magister Surdiel |q 32411/4 |goto 924/1 58.6,27.2
		|modelnpc Magister Suridel##68716
	step
		Use your Tear of the Sin'dorei on High Arcanist Savor |use Tear of the Sin'dorei##93124
		Rescue High Arcanist Savor |q 32411/2 |goto 924/1 60.0,15.4
		|modelnpc High Arcanist Savor##68714
	step
		Use your Tear of the Sin'dorei on Magistrix Vesara |use Tear of the Sin'dorei##93124
		Rescue Magistrix Vesara |q 32411/5 |goto 924/1 65.2,23.6
		|modelnpc Magistrix Vesara##68717
	step
		Use your Tear of the Sin'dorei on Uda the Beast |use Tear of the Sin'dorei##93124
		Rescue Uda the Beast |q 32411/1 |goto 924/1 69.8,33.6
		|modelnpc Uda the Beast##68711
	step
		Use your Tear of the Sin'dorei on Magister Hathorel |use Tear of the Sin'dorei##93124
		Rescue Magister Hathorel |q 32411/3 |goto 924/1 67.2,35.6
		|modelnpc Magister Hathorel##68715
	step
		talk Grand Magister Rommath##68586
		turnin The Remaining Sunreavers##32411 |goto 924/1 50.4,48.4
		accept One Last Grasp##32412 |goto 924/1 50.4,48.4
	step
		kill Mage-Commander Zuros##68632 |q 32412/1 |goto 924/1 30.0,48.4
	step
		Click the portal to go into the sewers. |goto 30.0,48.4 < 15
		Jump out of the sewers here. 
		|tip Don't worry, a Dragonhawk will catch you before you die.
		Escape from Dalaran |q 32412/2 |goto 924/2 9.8,87.6
	step
		talk Lor'themar Theron##16802
		turnin One Last Grasp##32412 |goto Silvermoon City 71.2,41.6
	step
		talk General Nazgrim##67939
		accept The Bell Speaks##32398 |goto Krasarang Wilds 10.4,53.8
	step
		
		talk Tak-Tak##68681 |goto Krasarang Wilds/0 9.9,52.5 < 15
		Tell him to take you to Emperor's Reach
		talk Malkorok##67844
		turnin The Bell Speaks##32398 |goto Kun-Lai Summit 55.8,34.0
		accept Breath of Darkest Shadow##32399 |goto Kun-Lai Summit 55.8,34.0
	step
		
		kill Kor'kron Juggernaut##68840
		Clear the area of all Juggernauts |goto Kun-Lai Summit 56.0,32.1 < 15
		kill Ishi##68225 |q 32399/1 |goto Kun-Lai Summit 55.8,32.0
		kill Anduin Wrynn##68224 |q 32399/2 |goto Kun-Lai Summit 55.8,32.0
	step
		talk Garrosh Hellscream##68223
		turnin Breath of Darkest Shadow##32399 |goto Kun-Lai Summit 55.8,32.0
		|next "end"
	step
	label "end"
		talk Tuskripper Grukna##69060 |goto Krasarang Wilds 10.8,53.4
		buy 1 Grand Commendation of Dominance Offensive##93232 |n
		Use the Commendation of Dominance Offensive you just purchased. |condition ZGV:GetReputation("Dominance Offensive").hasBonus |use Grand Commendation of Dominance Offensive##93232
		|only if rep("Dominance Offensive")>=Revered
	step
		This is the end of this guide.
		Click here to return to the beginning of the dailies |confirm |next "dailies"
	step
	label "exalted"
		Congratulations, you are now Exalted with the Dominance Offensive!
]])

ZygorGuidesViewer:RegisterInclude("Sturdy_Traps",[[
	startlevel 90
	step
		This guide will take you through the bonus quests for the Dominance Offensive.
		These quests do not offer any reputation, but they do offer Valor Points and the Lesser Charms of Good Fortune.
		|confirm
	step
	label "route"
		Routing to proper section |next "tokens" |only if itemcount(91838)<30
		Routing to proper section |next "menu" |only if itemcount(91838)>=30
	step
	label "tokens"
		kill Shieldwall Marine##+, Shieldwall Stormcaller##+
		collect 30 Lion's Landing Commission##91838 |goto Krasarang Wilds 9.9,64.2
	step
	label "menu"
		Click here to go purchase and accept the Sturdy Tiger Trap questline |confirm |next "tiger"
		Click here to go purchase and accept the Sturdy Crane Snare questline |confirm |next "crane"
		Click here to go purchase and accept the Sturdy Crab Crate questline |confirm |next "crab"
	step
	label "tiger"
		talk Ongrom Black Tooth##67751
		buy 1 Sturdy Tiger Trap##91855 |goto Krasarang Wilds 10.7,53.6
	step
		Click the _Sturdy Tiger Trap_ in your bags. |use Sturdy Tiger Trap##91855
		accept Beastmaster's Hunt: The Tiger##32162
	step
		kill Wasteland Yak##66549+, Wasteland Calf##66595
		collect 25 Unbruised Yak Haunch##91816 |q 32162/1 |goto Dread Wastes 51.6,67.4
	step
		click Mount of Dirt##
		turnin Beastmaster's Hunt: The Tiger##32162 |goto Krasarang Wilds 13.9,41.4
	step
		clicknpc Krasari Elder##67556
		accept Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds 13.8,41.2
	step
		talk Jorn Skyseer##67447
		turnin Beastmaster's Quarry: The Tiger##32182 |goto Krasarang Wilds 12.6,62.7
		|next "group"
	step
	label "crab"
		talk Ongrom Black Tooth##67751
		buy 1 Sturdy Crab Crate##91822 |goto Krasarang Wilds 10.7,53.6
	step
		Click the _Sturdy Crab Crate_ in your bags |use Sturdy Crab Crate##91822
		accept Beastmaster's Hunt: The Crab##32163
	step
		kill Unga Villager##60358+
		collect 30 Funky Rotten Fish |q 32163/1 |goto Krasarang Wilds 45.2,91.6
	step
		click Mount of Dirt##
		turnin Beastmaster's Hunt: The Crab##32163 |goto Krasarang Wilds 56.3,42.1
	step
		click Captured Colossal Viseclaw
		accept Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds 56.4,42.1
	step
		talk Jorn Skyseer##67447
		turnin Beastmaster's Quarry: The Crab##32183 |goto Krasarang Wilds 12.6,62.7
		|next "group"
	step
	label "crane"
		talk Ongrom Black Tooth##67751
		buy 1 Sturdy Crane Snare##91819 |goto Krasarang Wilds 10.7,53.6
	step
		Click the _Sturdy Crane Snare_ in your bags |use Sturdy Crane Snare##91819
		accept Beastmaster's Hunt: The Crane##32161
	step
		kill Child of Chi-Ji##60616+
		collect 5 Pristine Golden Crownfeather |q 32161/1 |goto Krasarang Wilds/0 34.5,71.2
	step
		kill Great Crane##59763+
		collect Pristine Jet Crownfeather##91815 |q 32161/2 |goto Krasarang Wilds/0 73.2,44.6
	step
		click Mount of Dirt##
		turnin Beastmaster's Hunt: The Crane##32161 |goto Krasarang Wilds 56.3,42.1
	step
		click Ancient Bloodcrown Crane##
		accept Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds 56.4,42.1
	step
		talk Jorn Skyseer##67447
		turnin Beastmaster's Quarry: The Crane##32181 |goto Krasarang Wilds 12.6,62.7
		|next "group"
	step
	label group
		talk Jorn Skyseer##67447 |goto Krasarang Wilds 12.6,62.7
		The dailies you have completed will determine which enemies are available to you to fight
		Click here to fight the _Ancient Bloodcrown Crane_ |confirm |next bc
		Click here to fight the _Krasari Elder_ |confirm |next ke
		Click here to fight the _Colossal Viseclaw_ |confirm |next cv
	step
	label bc
		Tell him you would like to fight the Bloodcrown Crane
		During the fight, pay attention to the songs that it uses
		Some can be interrupted while others simply need to be avoided
		kill Ancient Bloodcrown Crane##67555
		accept Ancient's Fall##32167
	step
		talk Jorn Skyseer##67447
		turnin Ancient's Fall##32167 |goto Krasarang Wilds 12.6,62.7
		|next "end"
	step
	label ke
		Tell him you would like to fight the Krasari Elder
		During the fight, you will want to stay close to it at _ALL TIMES_
		It will occassionally vanish, if you have a hunter simply put a flare out
		kill Krasari Elder##67556
		accept End of an Elder##32168
	step
		talk Jorn Skyseer##67447
		turnin End of an Elder##32168 |goto Krasarang Wilds 12.6,62.7
		|next "end"
	step
	label cv
		Tell him you would like to fight the Colossal Viseclaw
		During the fight, you will want to kite him around
		He will have a damage reduction buff that decreases while he moves
		If it reaches _0_, the buff will reset
		kill Colossal Viseclaw##67508
		accept A Colossal Victory##32169
	step
		talk Jorn Skyseer##67447
		turnin A Colossal Victory##32169 |goto Krasarang Wilds 12.6,62.7
		|next "end"
	step
	label end
		You have reached the end of the guide
		Click here to go back to the beginning of the Traps guide |next "route"
]])

ZygorGuidesViewer:RegisterInclude("H_Tillers",[[
	--	Proceeding to the Tiller's Dailies  |next "dailies" |only if completedq(31945)
	--	Proceeding to the Tiller's Prequests |next |only if not completedq(31945)
		--accept ##31945
	--	turnin ##31945
	--	confirm always
	--step
		talk Farmer Yoon##58721
		accept A Helping Hand##30252 |goto Valley of the Four Winds 52.0,48.0
	step
		click Unbudging Rock
		Clear 8 Unbudging Rocks |q 30252/1 |goto 51.8,48.8
	step
		talk Farmer Yoon##58646
		turnin A Helping Hand##30252 |goto 52.8,47.9
	step
		talk Farmer Yoon##58646
		accept Learn and Grow I: Seeds##30535 |goto 52.3,48.8
	step
		talk Merchant Greenfield##58718
		Tell him: _"I'm here to pick up seeds for Farmer Yoon."_
		Get a Packet of Green Cabbage Seeds |q 30535/1 |goto 52.9,52.2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow I: Seeds##30535 |goto 52.3,48.8
		accept Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
	step
		clicknpc Untilled Soil##59985+
		Till #2# patches of Soil |q 30254/1 |goto 52.0,48.3
		Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil |use EZ-Gro Green Cabbage Seeds##80302
		Plant seeds in #2# patches of Tilled Soil |q 30254/2 |goto 52.0,48.3
		modelnpc Tilled Soil##58563
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
		accept Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
	step
		Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		Water #2# parched Ez-Gro Green Cabbage |q 30255/1 |goto 52.0,48.3
		modelnpc Parched EZ-Gro Green Cabbage##59987
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
		accept Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		collect 2 EZ-Gro Green Cabbage |q 30256/1 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
		accept Learn and Grow V: Halfhill Market##30257 |goto 52.3,48.8
	step
		click Dark Soil
		collect Marsh Lily |q 30257/1 |goto 52.8,48.0
	step
		talk Gina Mudclaw##58706
		turnin Learn and Grow V: Halfhill Market##30257 |goto 53.1,51.8
		accept Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |q 31945 |goto 52.9,52.2
	step
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31945/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
	step
	label info
		Click here for information on Bursting Crops |next "bursting" |confirm
		Click here for information on Parched Crops |next "parched" |confirm
		Click here for information on Infested Crops |next "infested" |confirm
		Click here for information on Wiggling Crops |next "wiggling" |confirm
		Click here for information on Alluring Crops |next "alluring" |confirm
		Click here for information on Smothered Crops |next "smothered" |confirm
		Click here for information on Wild Crops |next "wild" |confirm
		Click here for information on Runty Crops |next "runty" |confirm
		Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label bursting
		Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops
		Click here if you are ready to harvest your crops |confirm
		Click here to start doing dailies |next "dailies" |confirm
	step
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		Harvest Ripe Scallions |q 31945/2 |goto 52.0,48.4
		collect 5 Scallion##74843 |q 31945/3 |goto 52.0,48.4
		next "exit"
	step
	label runty	
		clicknpc Runty Scallions##63166 |goto 52.0,48.4
		Press your Space Bar and jump
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label wiggling
		clicknpc Wiggling Scallions##63169 |goto 52.0,48.4
		kill Voracious Virmen##60039
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label infested
		click Vintage Bug Sprayer 
		collect Vintage Bug Sprayer##80513 |n
		Use your Vintage Bug Sprayer on the Infested Scallions |use Vintage Bug Sprayer##80513 |goto 52.2,48.3
		modelnpc Infested Scallions##63162
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label alluring
		clicknpc Alluring Scallions##63159
		kill Swooping Plainshawk##60072 |goto 52.2,48.3
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label wild
		clicknpc Wild Scallions##63170 
		Ride the Scallion |invehicle |c |goto 52.0,48.4
	step
		Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
		Build 50 stacks on Dominance |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label tangled
		clicknpc Tangled Scallions##63168 |goto 52.0,48.4
		Run to this area |goto 51.7,48.9
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label parched
		Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
		modelnpc Parched Scallions##63163
	step
	label smothered
		clicknpc Encroaching Weed##60185 |goto 52.0,48.4
		Ride the Weed |invehicle |c 
	step
		Spam the Pull ability on your new hotbar
		Pull the Weed |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
		modelnpc Smothered Scallions##63167
	step
	label exit
		talk Gina Mudclaw##58706
		turnin Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
	step
	label "dailies"
		Start each day out by harvesting the crops from the previous day |goto Valley of the Four Winds 51.9,48.3
		confirm
	step
		talk Farmer Yoon##58646 
		|tip He will only have 1 quest a day.
		accept The Kunzen Hunter-Chief##30336 |goto 53.0,51.8 |or
		accept Stealing is Bad... Re-Stealing is OK##30334 |goto 53.0,51.8 |or
		accept Stalling the Ravage##30335 |goto 53.0,51.8 |or
		accept The Lesser of Two Evils##30333 |goto 53.0,51.8 |or
		accept Simian Sabotage##30337 |goto 53.0,51.8 |or
		only if not completedq(32682)
	step
		talk Farmer Yoon##58646 
		|tip He will only have 2 dailies at a time.
		accept The Kunzen Hunter-Chief##30336 |goto 52.3,48.8 |or 2
		accept That Dangling Carrot##31670 |goto 52.3,48.8 |or 2
		accept Stealing is Bad... Re-Stealing is OK##30334 |goto 52.3,48.8 |or 2
		accept The Cabbage Test##31669 |goto 52.3,48.8 |or 2
		accept It's Melon Time##31942 |goto 52.3,48.8 |or 2
		accept A Pumpkin-y Perfume##31672 |goto 52.3,48.8 |or 2
		accept Stalling the Ravage##30335 |goto 52.3,48.8 |or 2
		accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto 52.3,48.8 |or 2
		accept Squash Those Foul Odors##31941 |goto 52.3,48.8 |or 2
		accept The Lesser of Two Evils##30333 |goto 52.3,48.8 |or 2
		accept The White Turnip Treatment##31675 |goto 52.3,48.8 |or 2
		accept The Pink Turnip Challenge##31674 |goto 52.3,48.8 |or 2
		accept Which Berries? Witchberries.##31943 |goto 52.3,48.8 |or 2
		accept Why Not Scallions?##31671 |goto 52.3,48.8 |or 2
		accept Simian Sabotage##30337 |goto 52.3,48.8 |or 2
		only if completedq(32682) -- used to say "not" havequest
	step
		talk Andi##64464 
		|tip He will only have 1 quest a day.
		accept A Gift For Fung##30475 |goto 52.7,50.5 |or
		accept A Gift For Chee Chee##30471 |goto 52.7,50.5 |or
		accept A Gift For Haohan##30477 |goto 52.7,50.5 |or
		accept A Gift For Jogu##30478 |goto 52.7,50.5 |or
		accept A Gift For Sho##30472 |goto 52.7,50.5 |or
		accept A Gift For Tina##30470 |goto 52.7,50.5 |or
		accept A Gift For Ella##30474 |goto 52.7,50.5 |or
		accept A Gift For Old Hillpaw##30476 |goto 52.7,50.5 |or
		accept A Gift For Fish##30473 |goto 52.7,50.5 |or
		accept A Gift For Gina##30479 |goto 52.7,50.5 |or
	step
		talk Ella##58647
		accept You Have to Burn the Ropes##30327 |goto 53.1,51.7
		_
		Click here if Ella is not in town |confirm
	step
		talk Haohan Mudclaw##57402
		accept Pest Problems##30319 |goto 53.0,51.7
		_
		Click here if Haohan is not in town |confirm
	step
		talk Tina Mudclaw##58761
		accept They Don't Even Wear Them##30323 |goto 53.1,51.7
		_
		Click here if Tina is not in town |confirm
	step
		talk Chee Chee##58709
		accept Not in Chee-Chee's Backyard##30324 |goto 53.1,52.1
		_
		Click here if Chee-Chee is not in town |confirm
	step
		talk Fish Fellreed##58705
		accept The Kunzen Legend-Chief##30326 |goto 52.8,51.8
		_
		Click here if Fish Felreed is not in town |confirm
	step
		talk Farmer Fung##57298
		accept Water, Water Everywhere##30317 |goto 52.9,51.7
		_
		Click here if Farmer Fung is not in town |confirm
	step
		talk Sho##58708
		accept Where It Counts##30325 |goto 53.1,52.1
		_
		Click here if Sho is not in town |confirm
	step	
		talk Jogu the Drunk##58710
		accept Weed War II##30321 |goto 53.6,52.5
		_
		Click here if Jogu has no available quests |confirm
	step
		talk Old Hillpaw##58707
		accept Chasing the Chicken##30318 |goto 53.0,51.8
		_
		Click here if Old Hillpaw is not in town |confirm
	step
		talk Gina Mudclaw##58706
		accept Money Matters##30322 |goto 53.2,51.8
		_
		If this quest is unavailable click here |confirm
	step
		talk Innkeeper Lei Lan##59582
		Tell her you are here on behalf of Gina Mudclaw
		Innkeeper Lei Lan's Payment |q 30322/3 |goto 55.1,50.3
		only if havequest(30322)
	step
		talk Lolo Lio##59585
		Tell him you are here on behalf of Gina Mudclaw
		Lolo Lio's Payment |q 30322/4 |goto 55.6,52.1
		only if havequest(30322)
	step
		talk Trader Jambeezi##59583
		Tell him you are here on behalf of Gina Mudclaw
		Trader Jambeezi's Payment |q 30322/2 |goto 56.1,49.6
		only if havequest(30322)
	step
		talk Spicemaster Jin Jao##59581
		Tell him you are here on behalf of Gina Mudclaw
		Spicemaster Jin Jao's Payment |q 30322/1 |goto 56.7,47.1
		only if havequest(30322)
	step
		talk Merchant Greenfield##58718
		buy 1 Juicycrunch Carrot Seeds##80590 |goto 52.9,52.1
		only if havequest(31670)
	step
		talk Merchant Greenfield##58718
		buy 1 Green Cabbage Seeds##79102 |goto 52.9,52.1
		only if havequest(31669)
	step
		talk Merchant Greenfield##58718
		buy 1 Witchberry Seeds##89326 |goto 52.9,52.1
		only if havequest(31943)
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |goto 52.9,52.1
		only if havequest(31671)
	step
		talk Merchant Greenfield##58718
		buy 1 White Turnip Seeds##80595 |goto 52.9,52.1
		only if havequest(31675)
	step
		talk Merchant Greenfield##58718
		buy 1 Pink Turnip Seeds##80594 |goto 52.9,52.1
		only if havequest(31674)
	step
		talk Merchant Greenfield##58718
		buy 1 Jade Squash Seeds##89328 |goto 52.9,52.1
		only if havequest(31941)
	step
		talk Merchant Greenfield##58718
		buy 1 Striped Melon Seeds##89329 |goto 52.9,52.1
		only if havequest(31942)
	step
		talk Merchant Greenfield##58718
		buy 1 Mogu Pumpkin Seeds##80592 |goto 52.9,52.1
		only if havequest(31672)
	step
		talk Merchant Greenfield##58718
		buy 1 Red Blossom Leek Seeds##80593 |goto 52.9,52.1
		only if havequest(31673)
	step
		talk Wing Nga##60231
		Tell her that you'd like to borrow one of Farmer Fung's kites |goto 56.5,50.4
		Ride a kite |invehicle |c
		only if havequest(30317)
	step
		Use your Water Buckest ability on the Dusty Spots below you
		|tip They are outlined by a yellow circle.
		Water 35 Dusty Spots |q 30317/1
		only if havequest(30317)
	step	
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31671/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
		only if havequest(31671)
	step
		clicknpc Untilled Soil##58562
		Use your Juicycrunch Carrot Seed on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		Plant 1 Juicycrunch Carrot Seed |q 31670/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
		only if havequest(31670)
	step
		clicknpc Untilled Soil##58562
		Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		Plant Witchberry Seeds |q 31943/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31943)
	step
		clicknpc Untilled Soil##58562
		Use your Mogu Pumpkin Seeds on the Tilled Soil |use Mogu Pumpkin Seeds##80592
		Plant Mogu Pumpkin Seeds |q 31672/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31672)
	step
		clicknpc Untilled Soil##58562
		Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328
		Plant Jade Squash Seeds |q 31941/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31941)
	step
		clicknpc Untilled Soil##58562
		Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
		Plant White Turnip Seeds |q 31675/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31675)
	step
		clicknpc Untilled Soil##58562
		Use your Pink Turnip Seeds on the Tilled Soil |use Pink Turnip Seeds##80594
		Plant Pink Turnip Seeds |q 31674/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31674)
	step
		clicknpc Untilled Soil##58562
		Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		Plant Green Cabbage Seeds |q 31669/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31669)
	step
		clicknpc Untilled Soil##58562
		Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		Plant Striped Melon Seeds |q 31942/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563+
		only if havequest(31942)
	step
		clicknpc Untilled Soil##58562
		Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
		Plant Red Blossom Leek Seeds |q 31673/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
		only if havequest(31673)
	step
		click Goldenfire Orchid##10921
		collect Goldenfire Orchid |q 30479/1 |goto 45.9,48.5
		You can also find this here |goto 41.6,42.8
		or at this location |goto 37.5,37.3
		only if havequest(30479)
	step
		talk Lost Dog##59533
		accept Lost and Lonely##30526 |goto 42.4,50.0
		only if repval('The Tillers','Revered')>=13000
	step
		talk Gai Lan##57385
		Ask him, "What Weeds?"
		Get the Weed War buff. |havebuff 134185 |goto 38.5,51.7 --INV_Misc_Herb_05
		only if havequest(30321)
	step
		clicknpc Ugly Weed##57306
		clicknpc Nasty Weed##57308
		click Weed-B-Gone Gas Bomb 
		|tip Use the new button available to you to clear a lot of weeds at once
		Pull 100 Weeds |q 30321/1
		only if havequest(30321)
	step
		clicknpc Hillpaw's Chicken##58918 
		|tip Most of these chickens are disguised animals. When you pick one up click the button that appears on your screen.
		You can deliver lost hens to the chicken coop here |goto 30.4,52.5
		collect Old Hillpaw's Prize Chicken##80223 |q 30318/1 |goto 31.3,53.2
		only if havequest(30318)
	step
		kill Monstrous Plainshawk##59641
		collect 1 Bloody Plainshawk Leg##80232 |goto 37.4,37.3
		only if havequest(30475)
	step
		talk Wika-Wika##59532
		Mook-mooks?
		Get the Pest Problems buff |havebuff 538518 |goto 39.6,45.3 --Spell_nature_insect_swarm2
		only if havequest(30319)
	step
		clicknpc Black-Nose Marmot##59530
		Stomp 25 Black-Nose Marmot |q 30319/1 |goto 39.6,45.3
		only if havequest(30319)
	step
		kill Teeku##59130, Jim-Jim##59128, Jokka-Jokka##59126, Kon-Kon##59127
		Kill the Kunzen-Hunter Chief |q 30336/1 |goto 30.2,46.0
		only if havequest(30336)
	step
		kill Skyrange Mushan##64309+
		collect 20 Tasty T-Bone |q 30526/1 |goto 29.2,38.2
		only if havequest(30526)
	stickystart "kunzenritual"
	stickystart "kunzenhozen"
	step
		click Kunzen Rope
		Burn 6 ropes |q 30327/1 |goto 32.0,32.1
		only if havequest(30327)
	step
		click Yu-Ping Soup Cauldron
		collect Yu-Ping Soup##79870 |q 30472/1 |goto 29.7,34.5
		only if havequest(30472)
	step "kunzenritual"
		kill 1 Kunzen Ritualist##59123 |q 30325/3 |goto 29.7,34.5
		click Blazing Ember##5746
		Kick 4 Blazing Ember |q 30325/2
		click Kunzen Ritual Candle##11320
		Throw 8 Kunzen Ritual Candles |q 30325/1 |goto 29.7,34.5
		only if havequest(30325)
	stickystart "kunzentribe"
	step
		kill Buk-Buk##59133+, Bimba##59135+, Yammo##59134+, Rit-Rit##59132+
		collect 1 Kunzen Legend-Book##79866 |q 30326/1 |goto 31.6,28.7
		only if havequest(30326)
	step
		click Authentic Valley Stir Fry
		collect Authentic Valley Stir Fry |q 30471/1 |goto 33.6,23.9
		only if havequest(30471)
	step
		click Yak Statuette
		collect Yak Statuette##79828 |q 30473/1 |goto 34.0,24.1
		only if havequest(30473)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen tools exploded |q 30337/2 |goto 32.7,30.6
		only if havequest(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen weapons exploded |q 30337/1 |goto 30.4,28.1
		only if havequest(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen beer exploded |q 30337/3 |goto 32.1,25.9
		only if havequest(30337)
	step
		Use the Barrel of Fireworks in your bags |use Barrel of Fireworks##79885
		Stolen grain exploded |q 30337/4 |goto 35.0,22.0
		only if havequest(30337)
	step "kunzenhozen"
		kill Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+
		Kill 12 Kunzen hozen |q 30335/1 |goto 34.2,23.5
		only if havequest(30335)
	step "kunzentribe"
		click Stolen Vegetable |only if havequest(30334)
		collect 16 Stolen Vegetable##79824 |q 30334/1 |only if havequest(30334) |goto 34.2,23.5
		kill Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+ |only if havequest(30324) or havequest(30474)
		Kill 8 Kunzen tribe members |q 30324/1 |only if havequest(30324) |goto 34.2,23.5
		collect Spicy Shrimp Dumplings##79871 |q 30474/1 |only if havequest(30474) |goto 34.2,23.5
		only if havequest(30474) or havequest(30334) or havequest(30324)
	step
		kill Enormous Cattail Grouper##59639
		collect Enormous Cattail Grouper Tooth |q 30477/1 |goto 44.1,29.1
		only if havequest(30477)
	stickystart "chrysoberylout"
	step
		Enter this warren |goto 46.9,21.1 < 10
		kill Springtail Warren-Mother##59516 |q 30333/1 |goto 48.7,18.7
		only if havequest(30333)
	step
		kill Springtail Littlewhisker##59515+, Springtail Trapper##59513+, Springtail Burrower##59514+
		collect Stolen Circlet##80138 |q 30323/1 |goto 44.7,19.6
		collect Ransacked Ring##80137 |q 30323/2 |goto 44.7,19.6
		collect Buglarized Bracelet##80139 |q 30323/3 |goto 44.7,19.6
		only if havequest(30323)
	step "chrysoberylout"
		This item could be in either warren or the patch of land seperating the two entrances
		click Chrysoberyl Outcropping##7456
		collect Uncut Chrysoberyl |q 30470/1
		only if havequest(30470)
	step
		click Freshwater Oyster
		collect Blue Freshwater Pearl## |q 30476/1 |goto 44.2,28.8
		only if havequest(30476)
	step	
		talk Lost Dog##59533
		turnin Lost and Lonely##30526 |goto 42.4,50.0
		only if havequest(30526)
	step
		click Yoon's Apples
		collect 8 Yoon's Apple##80234 |goto 52.6,47.8
		only if havequest(30478)
	step
		click Yoon's Craneberries
		collect 50 Yoon's Craneberry##80235 |goto 52.8,47.9
		only if havequest(30478)
	step
		talk Bobo Ironpaw##58717
		Tell him you've got all this fruit here
		collect Apple-Berry Hooch |q 30478/1 |goto 53.2,52.2
		only if havequest(30478)
	step
		talk Kol Ironpaw##58712
		Ask him if he could grill your plainshawk leg
		collect Grilled Plainshawk Leg##80233 |q 30475/1 |goto 53.0,51.3
		only if havequest(30475)
	step
		Leave the warren |goto 46.9,21.1 < 10 |only if havequest(30333)
		talk Farmer Yoon##58646
		turnin The Kunzen Hunter-Chief##30336 |goto 52.3,48.8
		turnin That Dangling Carrot##31670 |goto 52.3,48.8
		turnin Stealing is Bad... Re-Stealing is OK##30334 |goto 52.3,48.8
		turnin The Cabbage Test##31669 |goto 52.3,48.8
		turnin It's Melon Time##31942 |goto 52.3,48.8
		turnin A Pumpkin-y Perfume##31672 |goto 52.3,48.8
		turnin Stalling the Ravage##30335 |goto 52.3,48.8
		turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |goto 52.3,48.8
		turnin Squash Those Foul Odors##31941 |goto 52.3,48.8
		turnin The Lesser of Two Evils##30333v
		turnin The White Turnip Treatment##316 |goto 52.3,48.875
		turnin The Pink Turnip Challenge##31674 |goto 52.3,48.8
		turnin Which Berries? Witchberries.##31943 |goto 52.3,48.8
		turnin Why Not Scallions?##31671 |goto 52.3,48.8
		turnin Simian Sabotage##30337 |goto 52.3,48.8
		only if not completedq(32682)
	step
		talk Farmer Yoon##58646 
		|tip He will only have 1 quest a day.
		turnin The Kunzen Hunter-Chief##30336 |or |goto 53.0,51.8
		turnin Stealing is Bad... Re-Stealing is OK##30334 |or |goto 53.0,51.8
		turnin Stalling the Ravage##30335 |or |goto 53.0,51.8
		turnin The Lesser of Two Evils##30333 |or |goto 53.0,51.8
		turnin Simian Sabotage##30337 |or |goto 53.0,51.8
		only if not completedq(32682)
	step
		talk Farmer Fung##57298
		turnin Water, Water Everywhere##30317 |goto 52.9,51.7
		turnin A Gift For Fung##30475 |goto 52.9,51.7 |only if havequest(30475)
	step
		talk Fish Fellreed##58705
		turnin The Kunzen Legend-Chief##30326 |goto 52.8,51.8
		turnin A Gift For Fish##30473 |goto 52.8,51.8 |only if havequest(30473)
	step
		talk Ella##58647
		turnin You Have to Burn the Ropes##30327 |goto 53.0,51.7
		turnin A Gift For Ella##30474 |goto 53.0,51.7 |only if havequest(30474)
	step
		talk Sho##58708
		turnin Where It Counts##30325 |goto 53.1,52.1
		turnin A Gift For Sho##30472 |goto 53.1,52.1 |only if havequest(30472)
	step
		talk Gina Mudclaw##58706
		turnin Money Matters##30322 |goto 53.2,51.8
		turnin A Gift For Gina##30479 |goto 53.2,51.8 |only if havequest(30479)
	step
		talk Old Hillpaw##58707
		turnin Chasing the Chicken##30318 |goto 53.1,51.9
		turnin A Gift For Old Hillpaw##30476 |goto 53.1,51.9 |only if havequest(30476)
	step
		talk Tina Mudclaw##58761
		turnin A Gift For Tina##30470 |goto 53.1,51.7 |only if havequest(30470)
		turnin They Don't Even Wear Them##30323 |goto 53.1,51.7
	step
		talk Haohan Mudclaw##57402
		turnin Pest Problems##30319 |goto 53.0,51.7
		turnin A Gift For Haohan##30477 |goto 53.0,51.7 |only if havequest(30477)
	step
		talk Jogu the Drunk##58710
		turnin Weed War II##30321 |goto 53.6,52.5
		turnin A Gift For Jogu##30478 |goto 53.6,52.5 |only if havequest(30478)
	step
		talk Chee Chee##58709
		turnin Not in Chee-Chee's Backyard##30324 |goto 53.1,52.1
		turnin A Gift For Chee Chee##30471 |goto 53.1,52.1 |only if havequest(30471)
		next "honored" |only if rep('The Tillers')==Honored
		next "revered" |only if rep('The Tillers')==Revered
		next "exalted" |only if rep('The Tillers')==Exalted
		next "end" |only if rep('The Tillers')<=Friendly
	step
	label honored
		talk Farmer Yoon##58646
		accept Growing the Farm I: The Weeds##30260 |goto 52.3,48.8
		next mungmung |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
	step
		talk Gai Lan##57385
		turnin Growing the Farm I: The Weeds##30260 |goto 38.6,51.7
		accept Growing the Farm I: A Little Problem##30516 |goto 38.6,51.7
	step
		click Spideroot
		collect 6 Spideroot |q 30516/1 |goto 36.5,51.1
	step
		talk Gai Lan##57385
		turnin Growing the Farm I: A Little Problem##30516 |goto 38.6,51.7
		next "revered" |only if rep('The Tillers')>=Revered
	step
		When you arrive at Sunsong Ranch you will get a buff |goto 51.9,48.3 
		After 15 minutes your ranch will be expanded
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31936)
	step
		talk Gina Mudclaw##58706
		buy 1 "Jinyu Princess" Irrigation System##89812 |q 31936 |goto 53.2,51.8
	step
		Click the "Jinyu Princess" Irrigation System in your bags |use "Jinyu Princess" Irrigation System##89812
		accept The "Jinyu Princess" Irrigation System##31936
	step
		talk Farmer Yoon##58646
		turnin The "Jinyu Princess" Irrigation System##31936 |goto 52.3,48.8
		next mungmung |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
		next "end" |only if default
	step
	label revered
		talk Gina Mudclaw##58706
		buy 1 Grand Commendation of the Tillers##93226 |n
		Use the Commendation of the Tillers you just purchased |condition ZGV:GetReputation("The Tillers").hasBonus |use Grand Commendation of the Tillers##93226 |goto 53.2,51.8
		only if rep("The Tillers")>=Revered
	step
		talk Farmer Yoon##58646
		accept Growing the Farm II: The Broken Wagon##30523 |goto 52.3,48.8
		next "fung" |only if repval('The Tillers','Revered')>=4200
		next "mungmung" |only if completedq(31936) and not completedq(31946)
		only if completedq(30516) and rep('The Tillers')>=Revered
	step
		talk Fish Fellreed##58705
		turnin Growing the Farm II: The Broken Wagon##30523 |goto 41.7,30.0
		accept Growing the Farm II: Knock on Wood##30524 |goto 41.7,30.0
	step
		click Boat Planks
		collect 100 Waxed Plank##80136 |q 30524/1 |goto 42.8,29.1
	step
		talk Fish Fellreed##58705
		turnin Growing the Farm II: Knock on Wood##30524 |goto 41.7,30.0
	step
		When you arrive at Sunsong Ranch you will get a buff |goto 51.9,48.3
		After 15 minutes your ranch will be expanded
		|tip You cannot buy your farm upgrade until the expansion is done. 
		confirm
		only if not completedq(31937)
	step
		talk Gina Mudclaw##58706
		buy 1 "Thunder King" Pest Repellers##89813 |q 31937 |goto 53.2,51.8
	step
		Click the "Thunder King" Pest Repellers in your bags |use "Thunder King" Pest Repellers##89813
		accept "Thunder King" Pest Repellers##31937
	step
		talk Farmer Yoon##58646
		turnin "Thunder King" Pest Repellers##31937 |goto 52.3,48.8
		next "end"
	step
	label mungmung
		talk Farmer Yoon##58646
		accept Mung-Mung's Vote I: A Hozen's Problem##30258 |goto 52.3,48.8
		next "fung" |only if completedq(31946)
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote I: A Hozen's Problem##30258 |goto 44.2,34.3
		accept Mung-Mung's Vote II: Rotten to the Core##30259 |goto 44.2,34.3
	step
		click Partially Chewed Carrot
		collect 10 Partially Chewed Carrot##80116 |q 30259/1 |goto 42.7,38.2
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote II: Rotten to the Core##30259 |goto 44.2,34.3
		accept Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto 44.2,34.3
	step
		talk Merchant Greenfield##58718
		buy 2 Juicycrunch Carrot Seeds##80590 |q 31946 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		Plant 2 Juicycrunch Carrot Seeds |q 31946/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
	step
		Wait a day for the carrots to grow and then harvest them
		Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
		collect 10 Juicycrunch Carrot##74841 |q 31946/3
	step
		talk Mung-Mung##57401
		turnin Mung-Mung's Vote III: The Great Carrot Caper##31946 |goto 44.2,34.3
		next "end"
	step
	label fung
		talk Farmer Yoon##58646
		accept Farmer Fung's Vote I: Yak Attack##30517 |goto 52.3,48.8
		next |only if repval('The Tillers','Revered')>=8400
		Click here if this quest is not available yet |confirm |next end
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote I: Yak Attack##30517 |goto 48.3,33.9
		accept Farmer Fung's Vote II: On the Loose##30518 |goto 48.3,33.9
	step
		clicknpc Escaped Shagskin##59491
		Ride 5 Escaped Shagskin to |q 30518/1 |goto 51.0,36.7
		Take the Shagskin to this location|goto 50.4,34.7
	step
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote II: On the Loose##30518 |goto 48.3,33.9
		accept Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto 48.3,33.9
	step
		talk Merchant Greenfield##58718
		buy 3 Green Cabbage Seeds##79102 |q 31947 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		Plant 3 Green Cabbage Seeds |q 31947/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
	step
		Wait a day for the Green Cabbage to grow and then harvest them
		Harvest 3 Green Cabbage |q 31947/2
		collect 15 Green Cabbage##74840 |q 31947/3
	step	
		talk Farmer Fung##57298
		turnin Farmer Fung's Vote III: Crazy For Cabbage##31947 |goto 48.3,33.9
	step
	label nana
		talk Farmer Yoon##58646
		accept Nana's Vote I: Nana's Secret Recipe##30519 |goto 52.2,48.8
		next |only if repval('The Tillers','Revered')>=16800
		Click here if this quest is not available yet |confirm |next end
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote I: Nana's Secret Recipe##30519 |goto 54.7,47.0
		accept Nana's Vote II: The Sacred Springs##31948 |goto 54.7,47.0
	step	
		kill Thousand-Year Guardian##66850+
		You may have to kill the Guardian first, then collect the water
		Use the Empty Pitcher while standing under the waterfall |use Empty Pitcher##89902
		Thousand-Year Water |q 31948/1 |goto 56.7,21.7
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote II: The Sacred Springs##31948 |goto 54.7,47.0
		accept Nana's Vote III: Witchberry Julep##31949 |goto 54.7,47.0
	step
		talk Merchant Greenfield##58718
		buy 3 Witchberry Seeds##89326 |q 31949 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		Plant 3 Witchberry Seeds |q 31949/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
		only if havequest(31949)
	step
		Wait a day for the Witchberries to grow and then harvest them
		Harvest 3 Witchberries |q 31949/2
		collect 15 Witchberries##74846 |q 31949/3
	step
		talk Nana Mudclaw##64597
		turnin Nana's Vote III: Witchberry Julep##31949 |goto 54.7,47.0
	step
	label haohan
		talk Farmer Yoon##58646
		accept Haohan's Vote I: Bungalow Break-In##30521 |goto 52.2,48.8
		Click here if this quest is not available yet |confirm |next end
	step
		talk Haohan Mudclaw##57402
		turnin Haohan's Vote I: Bungalow Break-In##30521 |goto 44.6,34.1
		accept Haohan's Vote II: The Real Culprits##30522 |goto 44.6,34.1
	step
		clicknpc Muddy Tracks##52171
		Investigate 8 Suspicious Footprints. |q 30522/1 |goto 39.4,43.6 
		|tip When you click the eighth footprint a hozen will attack you.
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote II: The Real Culprits##30522 |goto 52.2,48.8
		accept Haohan's Vote III: Pure Poison##30525 |goto 52.2,48.8
	step
		_Enter_ the warren |goto 47.0,20.9 < 10
		click Cave Lily
		collect Cave Lily##80141 |q 30525/2
	step
		_Leave_ the warren |goto 47.0,20.9 < 10
		_Enter_ the warren |goto 44.0,22.2 < 10
		click Bloodbloom##2313
		collect Bloodbloom##80140 |q 30525/1
	step
		_Leave_ the warren |goto 44.0,22.2 < 5 |walk
		click Violet Lichen##2314
		collect Violet Lichen |q 30525/4 |goto 42.5,22.3
	step
		_Enter_ the warren |goto 39.4,20.4 < 10 |walk
		click Ghostcap##9844
		collect Ghostcap##80142 |q 30525/3
	step
		_Leave_ the warren |goto 39.4,20.4 < 10
		talk Farmer Yoon##58646
		turnin Haohan's Vote III: Pure Poison##30525 |goto 52.2,48.8
		accept Haohan's Vote IV: Melons For Felons##30527 |goto 52.2,48.8
	step
		talk Merchant Greenfield##58718
		buy 4 Striped Melon Seeds##89329 |q 30527 |goto 52.9,52.1
	step
		clicknpc Untilled Soil##58562
		Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		Plant 4 Striped Melon Seeds |q 30527/1 |goto 52.0,48.4
		modelnpc Tilled Soil##58563
	step
		Wait a day for the Striped Melons to grow and then harvest them
		Harvest 4 Striped Melons |q 30527/2
		collect 20 Striped Melon##74848 |q 30527/3
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote IV: Melons For Felons##30527 |goto 52.2,48.8
		accept Haohan's Vote V: Chief Yip-Yip##30528 |goto 52.2,48.8 //20000 Revered?
	step
		_Enter_ the cave here |goto 33.1,20.2 < 10 |walk
		kill Chief Yip-Yip##59567 |q 30528/1 |goto 32.4,20.6
		Use the _Throw Melon_ button on your screen when he begins casting _Charging Up_. This will cause him to stop attacking and take increased damage for a few seconds.
	step
		talk Farmer Yoon##58646
		turnin Haohan's Vote V: Chief Yip-Yip##30528 |goto 52.2,48.8
	step
		After some talking, the Offering Bowl should light up for you to click. |goto 52.0,49.0
		click Offering Bowl
		confirm
		next "end"
	step
	label exalted
		talk Farmer Yoon##58646
		accept Growing the Farm III: The Mossy Boulder##30529 |goto 52.2,48.8
		Click here if this quest is not available yet |confirm |next end
		next |only if default
	step
		talk Haohan Mudclaw##57402
		turnin Growing the Farm III: The Mossy Boulder##30529 |goto 44.6,34.1
	step
		When you arrive at Sunsong Ranch you will get a buff |goto 51.9,48.3 
		After 15 minutes your ranch will be expanded
		|tip You cannot buy your farm upgrade until the expansion is done.
		confirm
		only if not completedq(31938)
	step
		talk Gina Mudclaw##58706
		buy 1 "Earth-Slasher" Master Plow##89814 |q 31938 |goto 53.2,51.8
	step
		Click the "Earth-Slasher" Master Plow in your bags. |use "Earth-Slasher" Master Plow##89814
		accept The "Earth-Slasher" Master Plow##31938
	step
		talk Farmer Yoon##58646
		turnin The "Earth-Slasher" Master Plow##31938 |goto 52.3,48.8
	step
		talk Nana Mudclaw##64597
		accept Inherit the Earth##32682 |goto Valley of the Four Winds 54.7,47.0
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		talk Farmer Yoon##58646
		Ask him if he will join the council of the Tillers Union. |q 32682/1 |goto Valley of the Four Winds 52.2,48.8
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		talk Nana Mudclaw##64597
		turnin Inherit the Earth##32682 |goto Valley of the Four Winds 54.7,47.0 
		|tip This quest opens up the farm to you, granting you a place to rest and set your hearthstone, as well as opening up new quests known as work orders that allow you to gain reputation with other factions through farming.
		only if rep('The Tillers')==Exalted and not completedq(32682)
	step
		click Tillers Shrine##11506
		accept A Second Hand##30534 |goto 52.0,49.0
	step
		For this quest you must be _Best Friends_ with one of the 10 Tiller NPCs
		Please refer to the Reputations guides for assistance in gaining rep for an individual
		confirm
	step
		Go to your _Best Friend's_ home
		Ask them: <Friend>, how'd you like to help us run the farm? |q 30534/1
	step
		click Tillers Shrine##11506
		turnin A Second Hand##30534 |goto 52.0,49.0
	step
	label end
		The last thing to do with The Tillers each day is to plant as many crops as your farm can hold
		Each crop harvest will award reputation so do this every day
		Click here to go back to the beginning of the dailies section |next "dailies" |confirm
]])

ZygorGuidesViewer:RegisterInclude("tillers_prequests",[[
		talk Farmhand Dooka##64011
		accept The Tillers##31374 |goto Vale of Eternal Blossoms 60.2,22.9
	step
		talk Farmer Yoon##58721
		turnin The Tillers##31374 |goto Valley of the Four Winds 52.0,48.0
		accept A Helping Hand##30252 |goto Valley of the Four Winds 52.0,48.0
	step
		click Unbudging Rock
		Clear 8 Unbudging Rocks |q 30252/1 |goto 51.8,48.8
	step
		talk Farmer Yoon##58646
		turnin A Helping Hand##30252 |goto 52.8,47.9
	step
		talk Farmer Yoon##58646
		accept Learn and Grow I: Seeds##30535 |goto 52.3,48.8
	step
		talk Merchant Greenfield##58718
		Tell him you're there to pick up seeds
		Get a Packet of Green Cabbage Seeds |q 30535/1 |goto 52.9,52.2
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow I: Seeds##30535 |goto 52.3,48.8
		accept Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
	step
		clicknpc Untilled Soil##59985+
		Till 2 patches of Soil |q 30254/1 |goto 52.0,48.3
		Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil |use EZ-Gro Green Cabbage Seeds##80302
		Plant seeds in 2 patches of Tilled Soil |q 30254/2 |goto 52.0,48.3
		|modelnpc Tilled Soil##58563
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow II: Tilling and Planting##30254 |goto 52.3,48.8
		accept Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
	step 
		Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		Water 2 parched Ez-Gro Green Cabbage |q 30255/1 |goto 52.0,48.3
		|modelnpc Parched EZ-Gro Green Cabbage##59987
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow III: Tending Crops##30255 |goto 52.3,48.8
		accept Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
	step
		clicknpc Ripe EZ-Gro Green Cabbage##59833
		collect 2 EZ-Gro Green Cabbage |q 30256/1 |goto 52.0,48.3
	step
		talk Farmer Yoon##58646
		turnin Learn and Grow IV: Harvesting##30256 |goto 52.3,48.8
		accept Learn and Grow V: Halfhill Market##30257 |goto 52.3,48.8
	step
		click Dark Soil
		collect Marsh Lily |q 30257/1 |goto 52.8,48.0
	step
		talk Gina Mudclaw##58706
		turnin Learn and Grow V: Halfhill Market##30257 |goto 53.1,51.8
		accept Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
	step
		talk Merchant Greenfield##58718
		buy 1 Scallion Seeds##80591 |q 31945 |goto 52.9,52.2
	step
		clicknpc Untilled Soil##58562
		Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		Plant Scallion Seeds |q 31945/1 |goto 52.0,48.4
		|modelnpc Tilled Soil##58563
	step
	label info
		Click here for information on Bursting Crops |next "bursting" |confirm
		Click here for information on Parched Crops |next "parched" |confirm
		Click here for information on Infested Crops |next "infested" |confirm
		Click here for information on Wiggling Crops |next "wiggling" |confirm
		Click here for information on Alluring Crops |next "alluring" |confirm
		Click here for information on Smothered Crops |next "smothered" |confirm
		Click here for information on Wild Crops |next "wild" |confirm
		Click here for information on Runty Crops |next "runty" |confirm
		Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label bursting
		Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops
		Click here if you are ready to harvest your crops |confirm
	step
		clicknpc Bursting Scallions##63160
		clicknpc Ripe Scallions##63165
		Harvest Ripe Scallions |q 31945/2 |goto 52.0,48.4
		collect 5 Scallion##74843 |q 31945/3 |goto 52.0,48.4
		|next "exit"
	step
	label runty
		clicknpc Runty Scallions##63166 
		Press your Space Bar and jump |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label wiggling
		clicknpc Wiggling Scallions##63169
		kill Voracious Virmen##60039 |goto 52.0,48.4
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label infested
		click Vintage Bug Sprayer
		collect Vintage Bug Sprayer##80513 |n 
		Use your Vintage Bug Sprayer on the Infested Scallions |goto 52.2,48.3 |use Vintage Bug Sprayer##80513
		|modelnpc Infested Scallions##63162
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label alluring
		clicknpc Alluring Scallions##63159
		kill Swooping Plainshawk##60072 |goto 52.2,48.3
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label wild
		clicknpc Wild Scallions##63170 
		Ride the Scallion |invehicle |c |goto 52.0,48.4
	step
		Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability
		Build 50 stacks on Dominance |outvehicle |c
	step
		Click here to return to the information page. |next "info" |confirm
		Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label tangled
		clicknpc Tangled Scallions##63168 |goto 51.7,48.9 < 5
		confirm
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
	step
	label parched
		Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
		Click here to return to the information page |next "info" |confirm |goto 52.0,48.4
		Click here when you are have tilled your crops |next "bursting" |confirm |goto 52.0,48.4
		|modelnpc Parched Scallions##63163 
	step
	label smothered
		clicknpc Encroaching Weed##60185 |goto 52.0,48.4
		Ride the Weed |invehicle |c
	step
		Spam the Pull ability on your new hotbar
		Pull the Weed |outvehicle |c
	step
		Click here to return to the information page |next "info" |confirm
		Click here when you are have tilled your crops |next "bursting" |confirm
		|modelnpc Smothered Scallions##63167
	step
	label exit
		talk Gina Mudclaw##58706
		turnin Learn and Grow VI: Gina's Vote##31945 |goto 53.1,51.8
]])

ZygorGuidesViewer:RegisterInclude("H_Anglers",[[
	step
	label dailies
		There will only be three dailies available from the following questgivers
		It is possible for one questgiver to give you two quests in the same day, but it is unlikely
		You must have fishing in order to accept dailies from this faction
		confirm
	step
		talk Fisherman Haito##59584
		accept Shocking!##30584 |goto Krasarang Wilds 67.9,45.2 |or
		accept Jagged Abalone##30586 |goto Krasarang Wilds 67.9,45.2 |or
		_
		If these quests are unavailable today, click here |confirm
	step
		talk Fiznix##60136
		accept Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6 |or
		accept Scavenger Hunt##30698 |goto 67.5,44.6 |or
		_
		If this quest is unavailable today, click here |confirm
	step
		talk Angler Shen##59586
		accept Snapclaw##30700 |goto 67.5,43.5 |or
		accept Fishing for a Bruising##30588 |goto 67.5,43.5 |or
		_
		If these quests are unavailable today, click here |confirm
	step
		talk John "Big Hook" Marsock##60674
		accept Bright Bait##30754 |goto 68.3,43.5 |or
		accept Jumping the Shark##30753 |goto 68.3,43.5 |or
		_
		If these quests are unavailable today, click here |confirm
	step
		talk Trawler Yotimo##60135
		accept Armored Carp##30613 |goto 67.6,42.5 |or
		accept Huff & Puff##30658 |goto 67.6,42.5 |or
		_
		If these quests are unavailable today, click here |confirm
	step
		talk Elder Fisherman Rassan##60673
		accept What Lurks Below##30585 |goto 68.4,42.1 |or
		accept Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1 |or
		_
		If these quests are unavailable today, click here |confirm
	step
		talk Fo Fook##60675
		accept Piranha!##30763 |goto 67.2,41.2 |or
		accept Viseclaw Soup##30701 |goto 67.2,41.2 |or
		_
		If these quests are unavailable today, click here |confirm
	step
		clicknpc Frenzied Reef Shark##60408
		Ride the shark |invehicle |c |goto 68.4,43.1
		only if havequest(30753)
	step
		Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero
		kill Frenzied Reef Shark##60408 |q 30753/1
		only if havequest(30753)
	step
		click Jagged Abalone##261
		collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto 69.1,37.9
		only if havequest(30586)
	step
		_Enter_ the underwater cave |goto 71.3,38.5 < 20
		kill Snapclaw##60401
		collect Snapclaw's Claw##80831 |q 30700/1 |goto 73.9,38.4
		only if havequest(30700)
	step
		_Leave_ the cave |goto 71.3,38.5 < 15
		Use your fishing skill to fish up 7 Dojani Eel
		collect 7 Dojani Eel |q 30584/1 |goto 65.6,30.5
		only if havequest(30584)
	step
		kill 8 Riverblade Raider##59714+ |q 30588/1 |goto 62.4,40.9
		only if havequest(30588)
	step
		kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
		collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto 55.1,45.7
		only if havequest(30701)
	step
		click Suncrawler##11465
		collect 7 Suncrawler##81116 |q 30754/1 |goto 59.8,38.8
		only if havequest(30754)
	step
		Use your Goblin Fishing Bomb to kill Sting Rays |use Goblin Fishing Bomb##80599 
		|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
		kill Sting Ray##60278+
		collect 3 Stinger##80600+ |q 30678/1 |goto 59.3,46.3
		only if havequest(30678)
	step
		Use your fishing skill to fish up 5 Wolf Piranha |cast Fishing##7620
		collect 5 Wolf Piranha |q 30763/1 |goto 36.8,43.3
		only if havequest(30763)
	step
		Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears |cast Fishing##131474
		|tip It's a small swirling pool of water at this location.
		kill Narjon the Gulper##59689 |q 30585/1
		collect Beloved Ring##80262 |q 30585/2 |goto 34.4,31.4
		only if havequest(30585)
	step
		Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403 
		|tip The closer you are the easier it is to hit the fish.
		kill Prickly Puffer##60037
		collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto 51.4,62.2
		only if havequest(30658)
	step
		click Goblin Fishing Raft
		Ride a Goblin Fishing Raft |havebuff 534592 |goto 67.5,44.8 --Inv_boot_leather_raiddruid_k_0
		only if havequest(30698)
	step
		Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris |cast Fishing##7620
		collect 15 Shipwreck Debris |q 30698/1 |goto 64.3,50.7
		You can find more Debris around this area |goto 64.3,50.6
		only if havequest(30698)
	step
		click Pristine Crane Egg##1867
		collect Pristine Crane Egg |q 30598/1 |goto 65.2,47.5
		only if havequest(30598)
	step
		Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403 
		|tip The closer you are the easier it is to hit the fish.
		kill Armored Carp##59936+
		collect 5 Armored Carp##80437 |q 30613/1 |goto 70.1,51.2
		only if havequest(30613)
	step
		Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
		Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby
		collect Silver Goby##80310 |q 30598/2 |goto 68.2,42.7
		only if havequest(30598)
	step
		talk Elder Fisherman Rassan##60673
		turnin What Lurks Below##30585 |goto 68.4,42.1
		turnin Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1
	step
		talk Fiznix##60136
		turnin Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6
		turnin Scavenger Hunt##30698 |goto 67.5,44.6
	step	
		talk Angler Shen##59586
		turnin Snapclaw##30700 |goto 67.5,43.5
		turnin Fishing for a Bruising##30588 |goto 67.5,43.5
	step
		talk Trawler Yotimo##60135
		turnin Armored Carp##30613 |goto 67.6,42.5
		turnin Huff & Puff##30658 |goto 67.6,42.5
	step
		talk Fisherman Haito##59584
		turnin Shocking!##30584 |goto 67.9,45.2
		turnin Jagged Abalone##30586 |goto 67.9,45.2
	step
		talk John "Big Hook" Marsock##60674
		turnin Bright Bait##30754 |goto 68.3,43.5
		turnin Jumping the Shark##30753 |goto 68.3,43.5
	step
		talk Fo Fook##60675
		turnin Piranha!##30763 |goto 67.2,41.2
		turnin Viseclaw Soup##30701 |goto 67.2,41.2
	step
		talk Nat Pagle##63721
		buy 1 Grand Commendation of the Anglers##93225 |n |goto 68.4,43.4
		Use the Commendation of the Anglers you just purchased. |condition ZGV:GetReputation("The Anglers").hasBonus |use Grand Commendation of the Anglers##93225
		only if rep("The Anglers")>=Revered
	step
		You have reached the end of this guide.
		Click here to go back to the dailies. |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterInclude("H_Klaxxi",[[
	step
		This guide requires that you have completed all of the quests in the Dread Wastes
		The following questlines are required to access all of the possible dailies for the Klaxxi
		A Cry From Darkness |achieve 6540/1
		Falling to Pieces |achieve 6540/2
		Blood of Ancients |achieve 6540/3
		Mazu's Bounty |achieve 6540/4
		Please refer to Zygor's Leveling and Loremaster guides for assistance in completing these questlines |only if not achieved(6540) and not ZGV.guidesets['LevelingHMOP']
		Click here to go to Zygor's Leveling and Loremaster guides for assistance in completing these questlines |confirm |next "Zygor's Leveling Guides\\Pandaria 85-90\\Dread Wastes (89-90)" |only if not achieved(6540) and ZGV.guidesets['LevelingHMOP']
		confirm
	step
	label	klaxxi start
		talk Kil'ruk the Wind-Reaver##62538
		accept Dreadspinner Extermination##31231 |goto Dread Wastes 55.0,35.9 |or 2
		accept Nope Nope Nope##31235 |goto Dread Wastes 55.0,35.9 |or 2
		accept Culling the Swarm##31109 |goto Dread Wastes 55.0,35.9 |or 2
		accept Mistblade Destruction##31267 |or 2
		accept Eradicating the Zan'thik##31111 |goto Dread Wastes 55.0,35.9 |or 2
		accept Vess-Guard Duty##31505 |goto Dread Wastes 55.0,35.9 |or 2
		noquest
	step
		talk Korven the Prime##62180
		accept An Ancient Empire##31232 |goto 54.3,36.1 |or 2
		accept Sap Tapping##31233 |goto 54.3,36.1 |or 2
		accept Sampling the Empire's Finest##31496 |goto 54.3,36.1 |or 2
		accept The Fight Against Fear##31270 |goto 54.3,36.1 |or 2
		accept The Scale-Lord##31269 |goto 54.3,36.1 |or 2
		accept Meltdown##31507 |goto 54.3,36.1 |or 2
		noquest
	step
		talk Rik'kal the Dissector##65253
		accept Bad Genes##31271 |goto 54.3,35.9 |or 2
		accept Wing Clip##31502 |goto 54.3,35.9 |or 2
		accept Shortcut to Ruin##31503 |goto 54.3,35.9 |or 2
		accept Putting An Eye Out##31234 |goto 54.3,35.9 |or 2
		accept Specimen Request##31508 |goto 54.3,35.9 |or 2
		accept Fear Takes Root##31509 |goto 54.3,35.9 |or 2
		noquest
		only if completedq(31606)
	step
		talk Kaz'tik the Manipulator##63758
		accept Brain Food##31238 |goto 54.3,35.8 |or 2
		accept Sonic Disruption##31487 |goto 54.3,35.8 |or 2
		accept Free From Her Clutches##31494 |goto 54.3,35.8 |or 2
		accept A Little Brain Work##31268 |goto 54.3,35.8 |or 2
		accept Kunchong Treats##31024 |goto 54.3,35.8  |or 2
		accept Rampage Against the Machine##31808 |goto 54.3,35.8 |or 2
		accept Shackles of Manipulation##31506 |goto 54.3,35.8 |or 2
		noquest
	step
		talk Xaril the Poisoned Mind##62151
		accept Dark Skies##31216 |goto 54.9,36.2
		noquest
		only if completedq(31211)
	step
		talk Hisek the Swarmkeeper##63785
		accept Debugging the Terrace##31237 |goto 54.8,36.2 |or
		accept Quiet Now##31510 |goto 54.8,36.2 |or
		accept Infection##31272 |goto 54.8,36.2 |or
		accept Ordnance Disposal##31504 |goto 54.8,36.2 |or
		noquest
		only if completedq(31439)
	step
		talk Malik the Unscathed##62774
		accept The Empress' Gambit##31959 |goto 55.0,35.4
		only if rep("The Klaxxi")>=Exalted
//terrace of gurthan
	step
		talk Kil'ruk the Wind-Reaver##62538
		Tell him _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto 55.1,35.9
		only if havequest(31237) or havequest(31231)
	step
		Kill creatures until you get the buff:
		Pheremone Tracking |havebuff 132284 --Ability_Rogue_BloodyEye
		Locate and kill Eye's of the Empress
		|tip Start looking for red mist on the groud first.
		kill 6 Eye of the Empress##63783+ |q 31237/1 |goto 67.9,24.3
		only if havequest(31237)
	step
		In order to do the 'hidden' quest for this area, you must have at least one other person to help you
		confirm |future |q 31677
		only if havequest(31237) or havequest(31231)
	step
		Around this location you should be able to see a _green rune_ and a _red rune_
		One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_
		This will cause a level 90 Elite to spawn
		This daily is active for everyone in the area, so you should find some help easily
		kill Warlord Gurthan##65502
		collect Ashes of Warlord Gurthan##88715 |future |q 31677 |goto 66.2,31.8
		only if havequest(31237)
	step
		Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
		accept The Warlord's Ashes##31677
		only if havequest(31237) or havequest(31677)
	step
		talk Xaril the Poisoned Mind##62151
		Tell him _"I am ready to fly, Xaril."_ |q 31216/1 |goto 54.9,36.2
		Ride Xaril the Poisoned Mind |invehicle |only if havequest(31216)
		only if havequest(31216)
	step
		Use the _Venom Bomb_ to kill the small enemies
		Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies
		kill 200 Mantid |q 31216/2
		kill 3 Kunchong |q 31216/3
		only if havequest(31216)
	step
		Click the Return to Klaxxi'vess button on your action bar |outvehicle
		only if havequest(31216)
	step
		talk Kil'ruk the Wind-Reaver##62538
		Ask him to fly you to the Clutches of Shek'zeer |invehicle |goto 55.0,35.9
		only if havequest(31109)
	step
		Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 38.3,30.3 
		|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
		only if havequest(31109)
	step
		_Enter_ this building |goto 37.0,28.1 < 10
		click Central Feeder##12991
		Sample the Central Feeder |q 31496/1 |goto 37.4,29.3
		only if havequest(31496)
	step
		_Enter_ this building. |goto 39.3,29.3 < 10
		click Northeast Feeder##12991
		Sample the Northeast Feeder |q 31496/4 |goto 39.1,30.5
		only if havequest(31496)
	step
		kill Vess-Guard Na'kal##64890 |q 31503/1 |goto 39.3,30.9
		only if havequest(31503)
	step
		_Enter_ this building |goto 38.3,32.0 < 10 |walk
		click East Feeder##12991
		Sample the East Feeder |q 31496/2 |goto 37.9,33.1
		only if havequest(31496)
	step
		_Enter_ this building |goto 36.3,32.3 < 10 |walk
		click North Feeder##12991
		Sample the North Feeder |q 31496/3 |goto 37.0,32.8
		only if havequest(31496)
	step
		kill Shek'zeer Needler##64714+
		collect 24 Needler Wings##87401 |q 31502/1 |goto 35.2,31.3
		only if havequest(31502)
	step
		kill Greatback Mushan##62029
		collect 6 Mushan Tongue##85665 |q 31238/1 |goto 66.0,19.3
		You can find more Mushan around here |goto 56.9,23.4
		only if havequest(31238)
	step
		Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if havequest(31235)
		Destroy 20 Dreadspinner Eggs |q 31235/1 |only if havequest(31235) |goto 73.2,22.5
		kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if havequest(31231) |goto 73.2,22.5
		only if havequest(31235) or havequest(31231)
	step
		click Gurthani Tablet
		collect 8 Gurthani Tablet##85634 |q 31232/1 |goto 68.1,30.0
		only if havequest(31232)
	step
		kill Mire Beast##63731+
		collect 1 Pristine Mire Beast Eye## |q 31234/1 |goto 67.7,37.1
		only if havequest(31234)
	step
		click Amber Tap 
		|tip These are located on trees. Look for Sapfly packs to find these easier. |modelnpc Sapfly##62386
		click Amber Pot
		collect 6 Amber Sap##85664 |q 31233/1 |goto 66.6,43.8
		only if havequest(31233)
	step
		click Pheromone Mine
		Disable 8 Pheromone Mines |q 31504/1 |goto 42.0,33.7
		You can find more mines here |goto 48.1,31.4
		only if havequest(31504)
	step
		Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if havequest(31487)
		kill 4 Dread Kunchong##64717 |q 31487/1 |only if havequest(31487) |goto 44.9,35.6
		kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if havequest(31487) |goto 44.9,35.6
		click Kunchong Cage |only if havequest(31494) |goto 44.9,35.6
		Free 8 Kunchong Hatchlings |q 31494/1 |only if havequest(31494) |goto 44.9,35.6
		only if havequest(31487) or havequest(31494)
	step
		kill Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
		Kill 40 Shek'zeer Mantid |q 31109/1 |goto 44.4,43.0
		|tip It's by far fastest to kill the tiny Shek'zeer Swarmborn by the dozen.
		only if havequest(31109)
	step
		kill Karanosh##64724 |tip She wanders around this area, so you may have to search for her.
		collect Enormous Kunchong Mandibles##87878
		Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
		accept The Matriarch's Maw##31599 |goto 41.4,33.2
		only if havequest(31109)
	step
		kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto 58.6,51.1 |only if havequest(31270)
		kill Chillwater Turtle##62160+ |only if havequest(31024)
		collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto 58.6,51.1 |only if havequest(31024)
		only if havequest(31270) or havequest(31024)
	stickystart "amberencrusted"
	stickystart "infectedwildlife"
	step
		kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto 62.0,65.8
		kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto 62.0,65.8
		only if havequest(31271)
	step "amberencrusted"
		Use the Sonic Emitter in your bags on Ik'thik Amberstingers |use Sonic Emitter##85884
		kill Ik'thik Amberstinger##63728+
		collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto 61.4,70.3
		only if havequest(31268)
	step "infectedwildlife"
		kill Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+ 
		|tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
		kill 6 Infected wildlife |q 31272/1 |goto 60.7,67.7
		only if havequest(31272)
	step
		_Enter_ the tunnel here |goto 66.8,63.8 < 10 |walk
		kill Mistblade Scale-Lord##63179 |q 31269/1 |goto 66.5,66.0
		only if havequest(31269)
	step
		_Leave_ the tunnel |goto 66.8,63.8 < 10 |only if havequest(31269) |walk
		kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto 67.2,59.3
		only if havequest(31267)
	step
		talk Kil'ruk the Wind-Reaver##62538
		Ask him to fly you to Zan'vess |invehicle |goto 55.1,35.9
		only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
	step
		Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 31,70
		only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
	step
		As you complete quests in this area:
		click Dreadspore Bulbs##391
		Destroy 15 Dreadspore Bulbs |q 31509/1 |n
		confirm
		only if havequest(31509)
	step
		kill Kypari Crawler##65231+ |only if havequest(31508)
		collect 6 Kyparite Shards |q 31508/1 |goto 31.5,69.6 |only if havequest(31508)
		kill Thought-Bound Miner##64970+ |only if havequest(31506)
		collect 6 Zan'thik Shackles |q 31506/1 |goto 31.5,69.6 |only if havequest(31506)
		kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto 31.5,69.6 |only if havequest(31111)
		kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto 31.5,69.6 |only if havequest(31111)
		only if havequest(31506) or havequest(31111) or havequest(31508)
	step
		kill Kypa'rak##65229
		collect 1 Massive Kyparite Core |n
		Click the Massive Kyparite Core in your bags |use Massive Kyparite Core##87871
		accept Kypa'rak's Core##31598 |goto 33.4,61.0
		only if havequest(31111) or havequest(31508) or havequest(31506) or havequest(31111) or havequest(31510)
	step
		kill Vess-Guard Vik'az##64979+ |q 31505/1 |goto 29.1,74.7
		only if havequest(31505)
	step
		kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto 23.0,77.3
		only if havequest(31507)
	step
		All around this area
		click Dreadspore Bulbs##391
		Destroy 15 Dreadspore Bulbs |q 31509/1
		only if havequest(31509)
	step
		click Zan'thik Resonating Crystal##214455
		kill Adjunct Sek'ot##64995 |q 31510/1 |goto 24.2,86.2
		only if havequest(31510)
	step
		clicknpc Kovok##63765
		Locate Kovok |q 31808/1 |goto 50.8,41.3
		only if havequest(31808)
	step
		Use the abilities on your hotbar to complete your task.
		kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
		Kill 200 Mantid |q 31808/2
		only if havequest(31808)
	step
		talk Kil'ruk the Wind-Reaver##62538
		turnin Dreadspinner Extermination##31231 |goto 55.0,35.9
		turnin Nope Nope Nope##31235 |goto 55.0,35.9
		turnin Culling the Swarm##31109 |goto 55.0,35.9
		turnin Mistblade Destruction##31267 |goto 55.0,35.9
		turnin Eradicating the Zan'thik##31111 |goto 55.0,35.9
		turnin Vess-Guard Duty##31505 |goto 55.0,35.9
		turnin The Warlord's Ashes##31677 |goto 55.0,35.9
	step
		talk Xaril the Poisoned Mind##62151
		turnin Dark Skies##31216 |goto 54.9,36.2
	step
		talk Hisek the Swarmkeeper##63785
		turnin Debugging the Terrace##31237 |goto 54.8,36.2
		turnin Quiet Now##31510 |goto 54.8,36.2
		turnin Infection##31272 |goto 54.8,36.2
		turnin Ordnance Disposal##31504 |goto 54.8,36.2
	step
		talk Korven the Prime##62180
		turnin An Ancient Empire##31232 |goto 54.3,36.1
		turnin Sap Tapping##31233 |goto 54.3,36.1
		turnin Sampling the Empire's Finest##31496 |goto 54.3,36.1
		turnin The Fight Against Fear##31270 |goto 54.3,36.1
		turnin The Scale-Lord##31269 |goto 54.3,36.1
		turnin Meltdown##31507 |goto 54.3,36.1
	step
		talk Ambersmith Zikk##64599
		turnin Kypa'rak's Core##31598 |goto 55.0,35.4
		turnin The Matriarch's Maw##31599 |goto 55.0,35.4
		only if havequest(31598) or havequest(31599)
	step
		talk Rik'kal the Dissector##65253
		turnin Bad Genes##31271 |goto 54.3,35.9
		turnin Wing Clip##31502 |goto 54.3,35.9
		turnin Shortcut to Ruin##31503 |goto 54.3,35.9
		turnin Putting An Eye Out##31234 |goto 54.3,35.9
		turnin Specimen Request##31508 |goto 54.3,35.9
		turnin Fear Takes Root##31509 |goto 54.3,35.9
	step
		talk Kaz'tik the Manipulator##63758
		turnin Brain Food##31238 |goto 54.3,35.8
		turnin Sonic Disruption##31487 |goto 54.3,35.8
		turnin Free From Her Clutches##31494 |goto 54.3,35.8
		turnin A Little Brain Work##31268 |goto 54.3,35.8
		turnin Kunchong Treats##31024 |goto 54.3,35.8
		turnin Rampage Against the Machine##31808 |goto 54.3,35.8
		turnin Shackles of Manipulation##31506 |goto 54.3,35.8
		next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
		next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
		next end |only if default
	step
		talk Ambersmith Zikk##64599
		buy 1 Grand Commendation of the Klaxxi##92522 |n
		Use the Commendation of the Klaxxi you just purchased. |condition ZGV:GetReputation("The Klaxxi").hasBonus |use Grand Commendation of the Klaxxi##92522 |goto 55.0,35.6
		only if rep("The Klaxxi")>=Revered
	step
		talk Kil'ruk the Wind-Reaver##62538
		accept Beneath The Heart Of Fear##31018 |goto 55.1,35.9
	step
		_Enter_ this tunnel |goto 29.0,42.4 < 10 |walk
		kill Adjunct Ek'vem##62073+ |q 31018/1 |goto 30.7,40.3
	step
		kill Adjunct Ikkess##62074+ |q 31018/2 |goto 33.4,40.2
	step
		kill Adjunct Suruz##62075+ |q 31018/3 |goto 33.4,44.3
	step
		kill Adjunct Tzikzi##62076+ |q 31018/4 |goto 30.7,44.4
	step
		click Ancient Amber Chunk
		Wake Xaril the Poisoned Mind |q 31018/5 |goto 31.9,42.5
	step
		_Exit_ the tunnel here |goto 29.0,42.4 < 10 |walk
		talk Xaril the Poisoned Mind##62151
		turnin Beneath The Heart Of Fear##31018 |goto 28.6,42.1
		accept Venomous Intent##31208 |goto 28.6,42.1
		accept Dark Wings, Dark Things##31209 |goto 28.6,42.1
		accept A Shade of Dread##31210 |goto 28.6,42.1
	step
		kill Ruby Venomtail##63588+, Dread Scarab##63587+
		collect 150 Scarab Wing |q 31209/1 |goto 24.7,41.8
		collect 8 Venomous Stinger |q 31208/1 |goto 24.7,41.8
		click Dreadshade##5031
		collect 8 Dreadshade |q 31210/1 |goto 24.7,41.8
		You can find more here |goto 26.4,36.4
		As well as here |goto 26.2,30.8
	step
		talk Xaril the Poisoned Mind##62151
		turnin Venomous Intent##31208 |goto 28.6,42.1
		turnin Dark Wings, Dark Things##31209 |goto 28.6,42.1
		turnin A Shade of Dread##31210 |goto 28.6,42.1
	step
		talk Xaril the Poisoned Mind##62151
		accept The Poisoned Mind##31211 |goto 28.6,42.1
	step
		talk Xaril the Poisoned Mind##62151
		Tell him _"I am ready to fly, Xaril."_ |invehicle |q 31211 |goto 28.6,42.1
	step
		Use the _Venom Syrum_ to kill the small enemies
		Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies
		Speak to Xaril the Poisoned Mind |q 31211/1
		kill 200 Mantid |q 31211/2
		kill 3 Kunchong |q 31211/3
		kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
	step
		talk Xaril the Poisoned Mind##62151
		turnin The Poisoned Mind##31211 |goto 54.9,36.2
	step
		talk Kor'ik##64815
		accept Dropping Our Signal##31439 |goto 54.8,34.1
	step
		Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
		Awaken Hisek the Swarmkeeper |q 31439/1 |goto 56.3,58.2
	step
		talk Hisek the Swarmkeeper##64672
		turnin Dropping Our Signal##31439 |goto 56.3,58.2
		accept Corruption Runs Deep##31441 |goto 56.3,58.2
	step
		kill Kor'ik##64583+ |q 31441/1 |goto 56.2,57.6
	step
		talk Hisek the Swarmkeeper##64705
		turnin Corruption Runs Deep##31441 |goto 56.3,57.6
		accept Damage Control##31458 |goto 56.3,57.6
		accept Extracting Answers##31465 |goto 56.3,57.6
	stickystart "venomcoatdmandible"
	step
		click Kypari Ik Beacon##11971
		Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto 55.6,47.1
	step "venomcoatdmandible"
		kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto 50.5,45.8
		kill Ik'thik Swarmborn##64831+
		collect 6 Venom-Coated Mandible |q 31465/1 |goto 50.5,45.8
	step
		talk Hisek the Swarmkeeper##63785
		turnin Damage Control##31458 |goto 54.8,36.2
		turnin Extracting Answers##31465 |goto 54.8,36.2
		next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
		next end |only if default
	step
	label "exalted"
		talk Malik the Unscathed##66776
		Report to Malik the Unscathed |q 31959/1 |goto 40.4,34.4
	step
		Click the Auto complete quest box that appears below your minimap:
		turnin The Empress' Gambit##31959
		accept The Wrath of Shek'zeer##31609
	step
		While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
		confirm
		modelnpc 66789
		modelnpc 66788
		modelnpc 66790
	stickystart "mantidsubs"
	step
		kill Akkolon##66783 |q 31609/1 |goto 44.6,35.2
		|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
	step
		kill Shox'tik##66784 |q 31609/2 |goto 41.6,39.8 
		|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
	step
		kill Manifestation of Terror##66785 |q 31609/3 |goto 43.8,29.6
		|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
	step "mantidsubs"
		kill 25 Mantid Subjugates |q 31609/4 |goto 43.4,33.0
	step
		talk Kil'ruk the Wind-Reaver##62538
		turnin The Wrath of Shek'zeer##31609 |goto 55.0,35.9
		accept Shadow of the Empire##31612 |goto 55.0,35.9
	step
		Follow Kil'ruk the Wind-Rever into the chamber
		Walk with Kil'ruk |q 31612/1
	step
		Next to you:
		talk Kil'ruk the Wind-Reaver##66800
		turnin Shadow of the Empire##31612
		next end
	step
	label end
		This is the end of this guide.
		Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])

ZygorGuidesViewer:RegisterInclude("Golden_Lotus_PreQuests",[[
		talk Wanderer Chu##64521
		accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.0,94.2
	step
		talk Sunwalker Dezco##64542
		turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.7,43.0
		accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.7,43.0
	step
		Talk to Xuen |q 31395/1 |modelnpc Xuen##64528
		kill Spirit of Violence##64656
		Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.9,42.8
		kill Spirit of Anger##64684
		Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.9,42.8
		kill Spirit of Hatred##64742
		Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.9,42.8
	step
		talk Sunwalker Dezco##64542
		turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.7,43.0
		accept A Witness to History##31511 |goto Kun-Lai Summit 68.7,43.0
	step
		talk Sunwalker Dezco##64853
		Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.0,91.4
	step
		talk Madam Vee Luo##62996
		accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.3,48.9
	step
		talk Sunwalker Dezco##64853
		Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.1,91.6
	step
		talk Madam Vee Luo##62996
		turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.2,49.0
]])

ZygorGuidesViewer:RegisterInclude("Golden_Lotus",[[
	step
	label "dailies"
		talk Kun Autumnlight##58920
		accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
		accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
		noquest
	step
		talk Anji Autumnlight##58919
		accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
		accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
		noquest
	step
		talk Hai-Me Heavyhands##58962 |tip He walks around the Trainees in this area.
		accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
	step
		talk Yumi Goldenpaw##58743
		accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.6
		accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.6
		noquest
	step
		talk Kelari Featherfoot##58704
		accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
	step
		talk Kelari Featherfoot##58704
		Tell him: _Let's roll._ |q 30261/1 |goto Vale of Eternal Blossoms/0 18.1,63.5
		only if havequest(30261)
	step
		Hold down your right mouse button to help you maneuver through the course. 
		|tip Grab as many speed boosts as you can to make it go quicker.
		Complete the Serpent's Spine Roll Course. |q 30261/2
		only if havequest(30261)
	step
		talk Kelari Featherfoot##58704
		turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
		only if havequest(30261)
	step
		kill Shado-Pan Trainee##58992+
		Defeat 20 Shado-Pan Trainees. |q 30306/1 |goto Vale of Eternal Blossoms 19.7,74.2
		only if havequest(30306)
	step
		Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
		Live through the Survival Ring for 90 seconds |q 30242/1 |goto Vale of Eternal Blossoms 19.2,67.5
		only if havequest(30242)
	step
		Stay within the circle and avoid getting hit by the fireworks.
		Live through the Survival Ring for 90 seconds |q 30240/1 |goto 19.2,67.5
		only if havequest(30240)
	step
		click Setting Sun Turret |goto Vale of Eternal Blossoms 5.4,72.3
		Mount a turret. |invehicle |c |tip It's on the upper level of the tower here.
		only if havequest(30266)
	step
		kill 30 Krik'thik Swarmer##63973+ |q 30266/1
		|only if havequest(30266)
	step
		Click the Leave Vehicle button. |outvehicle
		only if havequest(30266)
	step
		clicknpc Hot Oil Cauldron##64369
		Use the abilities on your hotbar to kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.9,51.7 
		|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch.
	step
		Traverse the following rooms by only stepping on the _green_ or _red_ tiles, other tiles will harm you. The safe tile changes every day but will be one of the two. |goto Vale of Eternal Blossoms 22.4,26.9
		confirm
		only if havequest(30280) or havequest(30277)
	step
		kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/18 53.9,68.3 
		|tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
		only if havequest(30280)
	step	
		click Deactivate Final Spirit Wall
		Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/18 42.1,27.2
		only if havequest(30277)
	step
		click Ancient Guo-Lai Artifact
		collect Ancient Guo-Lai Artifact |q 30277/2 |goto 49.4,30.6
		only if havequest(30277)
	step
		talk Yumi Goldenpaw##58743
		turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.5
		turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.5
	step
		talk Hai-Me Heavyhands##58962 |tip He walks around the Trainees in this area.
		turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
	step
		talk Anji Autumnlight##58919
		turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
		turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
	step
		talk Kun Autumnlight##58920
		turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
		turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
	step
	label end
		You have reached the end of the guide for today.
		Click here to go back to the beginning of the dailies. |confirm |next "dailies"
]])

ZygorGuidesViewer:RegisterInclude("H_Cloud_Serpent_Pre",[[
-- Not available, temporarily removed
--	step
--		talk Wei Lakebreeze##64533
--		accept The Order of the Cloud Serpent##31375 |goto Vale of Eternal Blossoms 60.6,21.7
--	step
--		talk Instructor Skythorn##58228
--		turnin The Order of the Cloud Serpent##31375 |goto  57.5,45.1
--	step (removed this step tag because it was a duplicate, must be how this section is being pulled)
		talk Elder Anli##58564
		accept Wild Things##30134 |goto The Jade Forest/0 57.7,45.0
	step
		talk Instructor Tong##58225
		turnin Wild Things##30134 |goto 65.3,31.7
		accept Beating the Odds##30135 |goto 65.3,31.7
		accept Empty Nests##30136 |goto 65.3,31.7
		accept Egg Collection##30137 |goto 65.3,31.7
	stickystart "serpentegg"
	step
		Use the Silken Rope in your bags on Windward Hatchlings |use Silken Rope##78947
		Get 6 Hatchlings and bring them to this location |goto 65.8,31.2
		Return 6 Windward Hatchlings to their nests. |q 30136/1 |goto 64.4,31.1
	step "serpentegg"
		kill Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+
		Kill 8 Slitherscale saurok |q 30135/1 |goto 68.1,31.2
		click Serpent Egg
		collect 6 Serpent Egg##78959 |q 30137/1 |goto 68.1,31.2
	step
		talk Instructor Tong##58225
		turnin Beating the Odds##30135 |goto 65.3,31.7
		turnin Empty Nests##30136 |goto 65.3,31.7
		turnin Egg Collection##30137 |goto 65.3,31.7
		accept Choosing the One##30138 |goto 65.3,31.7
		turnin Choosing the One##30138 |goto 65.3,31.7
	step
		talk Instructor Tong##58225
		|tip You will only accept one of the following quests.
		accept The Rider's Journey##30139 |goto 65.3,31.7 |or
		accept The Rider's Journey##30140 |goto 65.3,31.7 |or
		accept The Rider's Journey##30141 |goto 65.3,31.7 |or
	step	
		talk Instructor Skythorn##58228 
		|tip You will only turn in one of the following quests.
		turnin The Rider's Journey##30139 |goto 57.6,45.1
		turnin The Rider's Journey##30140 |goto 57.6,45.1
		turnin The Rider's Journey##30141 |goto 57.6,45.1
		accept It's A...##30142 |goto 57.6,45.1
	step
		Watch the scene and see your egg hatch
		Egg Hatched |q 30142/1
	step	
		talk Instructor Skythorn##58228
		turnin It's A...##30142 |goto 57.6,45.1
]])

ZygorGuidesViewer:RegisterInclude("H_Cloud_Serpent",[[
	step
	label	start
		Proceeding to Order of the Cloud Serpent Dailies |condition completedq(30142) |next "dailies" |only if completedq(30142)
		Moving to the Order of the Cloud Serpent prequests. |next |condition not completedq(30142) |only if not completedq(30142)
	step
		#include "H_Cloud_Serpent_Pre"
	step
	label "dailies"
		Talk to Your Hatchling 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		accept Catch!##30151 |goto The Jade Forest 57.5,45.3 |or 2
		accept Pooped##31704 |goto The Jade Forest 57.5,45.3 |or 2
		accept Feeding Time##30156 |goto The Jade Forest 57.5,45.3 |or 2
		accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.5,45.3 |or 2
		accept Sweet as Honey##30150 |goto The Jade Forest 57.5,45.3 |or 2
		Make sure Your Hatchling offers no more quests and click here |confirm
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		only if not completedq(30143)
	step
		Talk to Your Hatchling 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		accept Catch!##30151 |goto 57.5,45.3 |or 2
		accept Pooped##31704 |goto 57.5,45.3 |or 2
		accept Pooped##31716 |goto 57.5,45.3 |or 2
		accept Feeding Time##30156 |or 2
		accept The Easiest Way To A Serpent's Heart##30154 |goto 57.5,45.3 |or 2
		accept Sweet as Honey##30150 |goto 57.5,45.3 |or 2
		Make sure Your Hatchling offers no more quests and click here. |confirm
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		only if completedq(30143)
	step
		talk Instructor Skythorn##58228
		accept Restoring the Balance##30155 |goto 57.6,45.1 |or 2
		accept Disarming the Enemy##30158 |goto 57.6,45.1 |or 2
		accept Thinning The Pack##31698 |goto 57.6,45.1 |or 2
		accept Weeping Widows##31706 |goto 57.6,45.1 |or 2
		accept A Tangled Web##31707 |goto 57.6,45.1 |or 2
		accept Monkey Mischief##31712 |goto 57.6,45.1 |or 2
		noquest
	step
		talk Jenova Longeye##58413 
		|tip NOTE: You will be able to accept Fragments of the Past at any level Archaeology, but won't be able to do the quest unless your skill in Archaeology is 525 or more.
		accept Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("First Aid")>=525
		accept A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
		accept Fragments of the Past##30147 |goto 57.5,44.7 |only if skill("Archaeology")>=525
		accept Snack Time##30146 |goto 57.5,44.7 |only if skill("Fishing")>=1
		She can also be found inside of the following building |goto The Jade Forest/0 57.3,45.7 
	step	
		talk Elder Anli##58564
		accept Slitherscale Suppression##31194 |goto 57.6,44.9 |or 2
		accept Madcap Mayhem##31703 |goto 57.6,44.9 |or 2
		accept Dark Huntress##31701 |goto 57.6,44.9 |or 2
		accept On The Prowl##31702 |goto 57.6,44.9 |or 2
		accept The Seed of Doubt##31711 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9 |or 2
		accept The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9 |or 2
		accept The Big Kah-Oona##31715 |goto 57.6,44.9 |or 2
		noquest
	step
		talk Ningna Darkwheel##58509
		accept Sprite Fright##31699 |goto 58.3,45.0 |or
		accept The Shoe Is On The Other Foot##31700 |goto 58.3,45.0 |or
		noquest
	step
		talk Suchi the Sweet##58510
		accept Preservation##30159 |goto 58.5,44.7 |or
		accept Emptier Nests##30157 |goto 58.5,44.7 |or
		noquest
	step
		talk Big Bao##58508
		accept Lingering Doubt##31709 |goto 57.5,44.0
		noquest
	step
		talk Qua-Ro Whitebrow##58511
		accept Serpent's Scale##31708 |goto 57.3,43.5
		accept Saving the Serpents##31714 |goto 57.3,43.5
		noquest
	step
		talk Instructor Windblade##58420
		accept The Sky Race##30152 |goto The Jade Forest 58.6,43.7
		noquest
	step
		talk Ace Longpaw##58506
		accept The Big Brew-haha##31713 |goto 58.0,43.7
		noquest
	step
		talk Instructor Windblade##58420
		Tell her you are ready to start the Sky Race.
		Ride your Dragon! |invehicle |goto 58.6,43.7
		only if havequest(30152)
	step
		map The Jade Forest/0
		path loop on; follow strict; dist 40
		path	60.6,39.4	59.7,31.5	61.3,25.2
		path	66.3,36.0	66.2,42.4	66.8,51.4
		path	64.0,51.0	60.4,52.9	61.8,54.5
		path	58.7,46.8	58.4,46.4	58.1,46.0
		Follow this path and collect the checked flags hanging off of the Checkpoint balloons
		As you fly, gain speed by flying through cloud rings
		Pass 10 Checkpoints |q 30152/1
		Pass underneath the Finish Line |q 30152/2
		only if havequest(30152)
	step
		talk Qua-Ro Whitebrow##58511
		Challenge him to a duel!
		Defeat Qua-Ro Whitebrow |q 31721/1 |goto 57.3,43.5
		only if havequest(31721)
	step	
		talk Ace Longpaw##58506
		Challenge him to a duel!
		Defeat Ace Longpaw |q 31717/1 |goto 58.0,43.7
		only if havequest(31717)
	step
		talk Big Bao##58508
		Challnge him to a duel!
		Defeat Big Bao |q 31718/1 |goto 57.5,44.0
		only if havequest(31718)
	step
		talk Suchi the Sweet##58510
		Challenge her to a duel!
		Defeat Suchi the Sweet |q 31720/1 |goto 58.5,44.7
		only if havequest(31720)
	stickystart "slitherharpoon"
	stickystart "saltback"
	step
		kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto 69.8,31.3
		only if havequest(31194)
	step "slitherharpoon"
		kill 8 Slitherscale saurok Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |q 30155/1 |goto 68.1,31.2 |only if havequest(30155)
		click Slitherscale Weapons |only if havequest(30158)
		collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto 68.1,31.2 |only if havequest(30158)
		click Serpent Egg |only if havequest(30159)
		collect #8# Serpent Eggs |q 30159/1 |goto 68.1,31.2 |only if havequest(30159)
	step "saltback"
		kill Saltback Turtle##58218+, Saltback Yearling##58219+
		collect 15 Saltback Meat Scrap##79028 |n
		Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
		collect 3 Saltback Meat##79027 |n
		Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1 |goto 64.6,33.3
		only if havequest(30156)
	step
		Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
		Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
		Catch the Ball #8# times |q 30151/1 |goto 57.2,45.2
		only if havequest(30151)
	step
		click Hatchling Poop##9572 
		|tip It is all around this area.
		collect 5 Tiny Bags of Poop |q 31704/1 |goto 55.1,46.5
		only if havequest(31704)
	step
		click Hatchling Poop##9572 
		|tip It is all around this area.
		collect 5 Big Bags of Poop |q 31716/1 |goto 55.1,46.5
		only if havequest(31716)
	step
		Talk to Your Hatchling 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		turnin Pooped##31704 |goto 57.5,45.4
		only if havequest(31704)
	step
		Talk to Your Hatchling 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		turnin Pooped##31716 |goto 57.5,45.4
		only if havequest(31716)
	stickystart "stolenboots"
	step
		kill Shadowfae Madcap##65613 |q 31703/1 |goto 62.7,27.4
		only if havequest(31703)
	step
		_Enter_ the cave |goto The Jade Forest/0 64.4,25.8 < 10 |walk
		kill Windward Huntress##63538 |q 31701/1 |goto 64.7,25.7
		only if havequest(31701)
	step
		kill Windward Saber##65612 |q 31702/1 |goto 63.8,22.3
		only if havequest(31702)
	step "stolenboots"
		kill Windward Tiger##63537 |only if havequest(30154)
		collect 5 Tiger Flank##85282 |q 30154/1 |goto 62.8,24.7 |only if havequest(30154)
		kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto 62.8,24.7 |only if havequest(31699)
		kill 8 Windward Alpha+, Windward Tiger##63537+ |q 31698/1 |goto 62.8,24.7 |only if havequest(31698)
		click Stolen Boots |only if havequest(31700)
		collect 14 Stolen Boots##89054 |q 31700/1 |goto 62.8,24.7 |only if havequest(31700)
	stickystart "widowspawn"
	step
		_Enter_ the cave |goto 58.0,31.7 < 10 |walk
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.7,25.7
		only if havequest(31709)
	step
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.0,31.9 
		only if havequest(31709)
	step
		_Enter_ the cave |goto 58.0,31.7 < 10 |walk
		kill Seed of Doubt |q 31711/1 |goto The Jade Forest/15 35.7,40.2
		only if havequest(31711)
	step
		Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
		Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.0,74.1
		only if havequest(31709)
	step "widowspawn"
		_Enter_ the cave |goto 58.0,31.7 < 10
		kill Widowspawn##65658 |only if havequest(31710)
		collect 100 Tiny Spider Eye's |q 31710/1 |only if havequest(31710)
		kill 7 Weeping Widow##65653+ |q 31706/1 |only if havequest(31706)
		click Serpent's Scale |only if havequest(31708)
		collect 25 Serpent's Scale##88895 |q 31708/1 |only if havequest(31708)
		kill Widow's Web##65634+ |only if havequest(31707)
		Free #5# Sri-La Villagers |q 31707/1 |only if havequest(31707)
		only if havequest(31706) or havequest(31707) or havequest(31708) or havequest(31710)
	stickystart "rescueserp"
	stickystart "oonabrew"
	stickystart "oonagoon"
	step
		_Leave_ the cave |goto The Jade Forest/15 75.8,19.0 < 10 |only if havequest(31708) or havequest(31710) or havequest(31706) or havequest(31711) or havequest(31709) or havequest(31707) |walk
		_Enter_ the Oona Kagu cave |goto The Jade Forest/0 57.7,27.7 < 10 |only if havequest(31715) |walk 
		kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.8,77.8
		only if havequest(31715)
	step "rescueserp"
		click Serpent
		collect 10 Rescued Serpent##88894 |q 31714/1 |goto 55.2,28.4
		only if havequest(31714)
	step "oonabrew"
		kill Oona Brewchugger##65624
		click Stolen Sri-La Keg
		collect 100 Sri-La Stout |q 31713/1 |goto 55.2,28.4
		modeldisplay 11025
		only if havequest(31713)
	step "oonagoon"
		kill 13 Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+ |q 31712/1 |goto 55.2,28.0
		only if havequest(31712)
	step
		Use your Silken Rope on _Windward Hatchlings_ |use Silken Rope##78947
		Bring the Windward Hatchlings to the nest at |goto 63.4,31.4
		Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest 64.5,31.1
		modelnpc 58243
		modelnpc 58220
		modelnpc 58244
		only if havequest(30157)
	step
		Use your First Aid skill to create 8 _Windwool Bandages_ or _Heavy Windwool Bandages_
		You can also ask other players to sell you some bandages
		create 8 Heavy Windwool Bandage##102698,First Aid,8 total |only if skill("First Aid")>=550 and skill("First Aid")<600
		collect 8 Windwool Bandage##72985 |only if skill("First Aid")<550
		or
		create 8 Heavy Windwool Bandage##102699,First Aid,8 total  |only if skill("First Aid")>=600
		collect 8 Heavy Windwool Bandage##72986 |only if skill("First Aid")<550
		only if havequest(30148)
	step
		Use your Windwool Bandages on Injured Hatchlings |use Windwool Bandage##72985
		Heavy Windwool Bandages work, too |use Heavy Windwool Bandage##72986
		Bandage #8# Injured Hatchlings |q 30148/1 |goto 63.9,31.1
		modelnpc Injured Hatchling##58416
		only if havequest(30148)
	step
		Use your Fishing skill to fish in the water here |cast Fishing##7620  
		|tip You will have to fish from Pools if you have low Fishing Skill.
		collect 10 Sugar Minnow##79046 |q 30146/1 |goto 57.0,43.0 |only if havequest(30146)
		collect 10 Golden Carp##74866 |only if havequest(30149)
		You can find more pools of fish here |goto The Jade Forest/0 54.8,51.5
		only if havequest(30146) or havequest(30149)
	step
		Use your Cooking skill to create 5 Fish Cakes
		create 5 Fish Cake##104297,Cooking,5 total |q 30149/1 |or
		buy 5 Fish Cake##74641 |or
		You can ask other players to sell you some, if they happen to have leftovers
		only if havequest(30149)
	step
		kill Honeykeeper##58363+
		collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest 55.1,47.2
		only if havequest(30150)
	step
		talk Ace Longpaw##58506
		turnin The Big Brew-haha##31713 |goto 58.0,43.7
		only if havequest(31713)
	step
		talk Elder Anli##58564 
		|tip You will only have a couple of these quests.
		turnin Slitherscale Suppression##31194 |goto 57.6,44.9
		turnin Dark Huntress##31701 |goto 57.6,44.9
		turnin On The Prowl##31702 |goto 57.6,44.9
		turnin Restoring the Balance##30155 |goto 57.6,44.9
		turnin Disarming the Enemy##30158 |goto 57.6,44.9
		turnin Madcap Mayhem##31703 |goto 57.6,44.9
		turnin The Easiest Way To A Serpent's Heart##30154 |goto 57.6,44.9
		turnin Sprite Fright##31699 |goto 57.6,44.9
		turnin Thinning The Pack##31698 |goto 57.6,44.9
		turnin The Shoe Is On The Other Foot##31700 |goto 57.6,44.9
		turnin Weeping Widows##31706 |goto 57.6,44.9
		turnin The Seed of Doubt##31711 |goto 57.6,44.9
		turnin A Tangled Web##31707 |goto 57.6,44.9
		turnin The Sky Race##30152 |goto 57.6,44.9
		turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9
		turnin The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9
		turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9
		turnin The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9
		turnin Preservation##30159 |goto 57.6,44.9
		turnin Lingering Doubt##31709 |goto 57.6,44.9
		turnin Emptier Nests##30157 |goto 57.6,44.9
		turnin Monkey Mischief##31712 |goto 57.6,44.9
		turnin The Big Kah-Oona##31715 |goto 57.6,44.9
		turnin Saving the Serpents##31714 |goto 57.6,44.9
	step
		Talk to Your Hatchling 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		turnin Tiny Treats##31710 |goto 57.5,45.3 |only if havequest(31710)
		turnin Sweet as Honey##30150 |goto 57.5,45.3 |only if havequest(30150)
		turnin Feeding Time##30156 |goto 57.5,45.3 |only if havequest(30156)
		turnin Pooped##31704 |goto 57.5,45.3 |only if havequest(31704)
		turnin The Easiest Way To A Serpent's Heart##30154 |only if havequest(30154)
		only if havequest(31710) or havequest(30150) or havequest(30156) or havequest(31704) or havequest(30154)
	step
		Talk to Your Hatchling |goto 57.5,45.3 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		confirm
		only if not completedq(30143)
	step
		Talk to Your Hatchling |goto 57.5,45.3 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		confirm
		only if completedq(30143)
	step
		Open your world map, find dig sites in Pandaria, then go to them 
		|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
		Use your Survey ability inside the dig site area |cast Survey##80451
		A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
		Click the Archaeology Fragments that spawn on the ground
		collect 6 Serpentrider Relic## |q 30147/1
		only if havequest(30147)
	step
		talk Jenova Longeye##58413
		turnin Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("First Aid")>=525
		turnin A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
		turnin Fragments of the Past##30147 |goto 57.5,44.7
		turnin Snack Time##30146 |goto 57.5,44.7
	step
		Talk to Your Hatchling |goto 57.5,45.4 
		|tip Your Hatchling is whichever color egg you chose in the prequests.
		modelnpc Your Hatchling##58416
		modelnpc Your Hatchling##58213
		turnin Sweet as Honey##30150
		only if havequest(30150)
	step
		talk Elder Anli##58564
		turnin Catch!##30151 |goto 57.6,44.9
		only if havequest(30151)
	step
		talk Elder Anli##58564
		accept Needle Me Not##31705 |goto 57.6,44.9
		only if completedq(30151)
	step
		Use the Golden Honey in your bags |use Golden Honey##89113
		kill Orchard Needler |q 31705/1 |goto 57.0,41.2
		only if havequest(31705)
	step
		talk Elder Anli##58564
		turnin Needle Me Not##31705 |goto 57.6,44.9
		next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
		next "revered" |only if rep("Order of the Cloud Serpent")==Revered
		next "end" |only if rep("Order of the Cloud Serpent")<=Revered
	step
	label revered
		talk San Redscale##58414
		buy 1 Grand Commendation of the Order of the Cloud Serpent##93229 |n
		Use the Commendation of the Order of the Cloud Serpent you just purchased |goto The Jade Forest 56.6,44.4 |condition ZGV:GetReputation("Order of the Cloud Serpent").hasBonus |use Grand Commendation of the Order of the Cloud Serpent##93229
		only if rep("Order of the Cloud Serpent")>=Revered
	step
		talk Elder Anli##58564
		accept They Grow Like Weeds##30143 |goto 57.6,44.9
	step
		talk Instructor Windblade##58420
		Ask Instructor Windbalde how your serpent is doing
		Speak to Instructor Windblade |q 30143/1 |goto 58.6,43.7
	step
		talk Instructor Windblade##58420
		turnin They Grow Like Weeds##30143 |goto 58.6,43.7
		accept Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if havequest(30144)
	step
		Fly your Cloud Serpent through the rings made from clouds
		Fly through #6# Cloud Rings |q 30144/1
	step
		Click the Leave Vehicle button |outvehicle |c |goto 58.6,43.7
	step
		talk Instructor Windblade##58420
		turnin Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
		accept Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if havequest(30145)
	step
		Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide
		If you move too slowly or get too far away from the guide, the course will restart
		Finish the course |q 30145/1
	step
		talk Instructor Windblade##58420
		turnin Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
		accept Flight Training: In Due Course##30187 |goto 58.6,43.7
	step
		The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
		clicknpc Golden Cloud Serpent##58429
		clicknpc Azure Cloud Serpent##58441
		clicknpc Jade Cloud Serpent##58442
		Ride your Cloud Serpent |invehicle |c
		only if havequest(30187)
	step
		map The Jade Forest/0
		path loop on; follow strict; dist 40
		path	60.6,39.4	59.7,31.5	61.3,25.2
		path	66.3,36.0	66.2,42.4	66.8,51.4
		path	64.0,51.0	60.4,52.9	61.8,54.5
		path	58.7,46.8	58.4,46.4
		Follow this path and collect the checked flags hanging off of the Checkpoint balloons
		As you fly, gain speed by flying through cloud rings
		Pass 10 Checkpoints |q 30187/1
	step
		talk Instructor Windblade##58420
		turnin Flight Training: In Due Course##30187 |goto 58.6,43.7
		next "end"
	step
	label exalted
		talk Elder Anli##58564
		accept Riding the Skies##31811 |goto 57.6,45.0
	step
		Watch the cinematic
		Join the Order of the Cloud Serpent |q 31811/1
	step
		talk Elder Anli##58564
		turnin Riding the Skies##31811 |goto 57.6,45.0
	step
		Proceeding to the next step |next end |only if default
		Proceeding to Riding the Skies Quest |next exalted |only if rep('Order of the Cloud Serpent')==Exalted
	step
	label	exalted
		talk Elder Anli##58564
		accept Riding the Skies##31810 |goto 57.7,44.9
	step
		talk Elder Anli##58564
		turnin Riding the Skies##31810 |goto 57.7,44.9
	step
	label end
		This the end of our daily guide
		Click here to go back to the beginning |confirm |next start
]])

ZygorGuidesViewer:RegisterInclude("Sunreavers_dailies",[[
	label "start"
		Proceeding to the Sunreavers Dailies |next "dailies" |only if default
		Moving to the Sunreavers prequests |next |only if not completedq(32680) and thunderstage()==1
		Moving to the First Scenario |next "scenario1" |only if thunderstage()>=2 and not completedq(32212)
		Moving to the Second Scenario |next "scenario2" |only if thunderstage()>=3 and not completedq(32276)
		Moving to the Third Scenario |next "scenario3" |only if thunderstage()>=4 and not completedq(32277)
		Moving to the Fourth Scenario |next "scenario4" |only if thunderstage()>=5 and not completedq(32278)
		Moving to the Fifth Scenario |next "post5" |only if thunderstage()==5 and not completedq(32279)
//PREQUEST
	step
	label "prequest"
		talk Sunwalker Dezco##64566
		accept Thunder Calls##32678 |goto Vale of Eternal Blossoms 62.9,28.3
	step
		talk Scout Captain Elsia##70358
		turnin Thunder Calls##32678 |goto Townlong Steppes 50.8,73.4
		accept The Storm Gathers##32680 |goto Townlong Steppes 50.8,73.4
	step
		talk Scout Captain Elsia##70358
		Tell her you're ready to go |q 32680/1	|goto Townlong Steppes 50.8,73.4
		Discover the Isle of Thunder |q 32680/2	|goto Townlong Steppes 50.8,73.4
	step
		talk Lor'themar Theron##67990
		turnin The Storm Gathers##32680 |goto Isle of Thunder 28.4,52.4
		next "start"
////SCENARIO
	step
	label "scenario1"
		talk Lor'themar Theron##67990
		accept The Assault on Zeb'tula##32212 |goto Isle of Thunder 28.4,52.3
		Enter the Scenario _Assault on Zeb'tula_ |goto 933 |noway|c
	step
		talk Lor'themar Theron##67990
		Tell him you're ready to go |q 32212/1 |goto Isle of Thunder 28.4,52.3 < 40
	step	
		clicknpc Sunreaver Bloodhawk##69487
		Ride the Sunreaver Bloodhawk |goto 933 28.5,52.3 < 40
		scenariogoal 22673
	step
		scenariogoal 22654
	step
		scenariostage 1
	step
		kill Zeb'tula Raptor##69658+, from Zeb'tula Beastcaller##69657+ |goto 933 42.7,50.5
		scenariogoal 22655
	step
		scenariostage 2
	step
		kill Zeb'tula Stoneshield##69517+ |goto 933 39.0,43.9
		kill Zandalari Barricade##69516+ |goto 933 39.0,43.9
		kill Zeb'tula Spearanger##69518+ |goto 933 39.0,43.9
		scenariogoal 22656
	step
		scenariostage 3
	step
		kill Kresh the Ripper##69474 |goto 933 38.8,38.7
		scenariogoal 22657
	step
		scenariostage 4
	step
		kill Arcanital Tula'chek##69475
		While fighting Arcanital Tula'chek, the mask puts down yellow protection fields
		Position yourself so that you are IN the yellow field, while Tula'chek is OUT of the field
		scenariogoal 22659
		scenariogoal 22660
	step
		scenariostage 5
	step
		talk Lor'themar Theron##67990
		turnin The Assault on Zeb'tula##32212 |goto Isle of Thunder 32.5,35.5
		next "start"
////SCENARIO2
	step
	label "scenario2"
		talk Lor'themar Theron##67990
		accept Tear Down This Wall!##32276 |goto Isle of Thunder 32.6,35.5
	step
		talk Lor'themar Theron##67990
		Tell him: _I'm ready to tear down the wall! [Queue for solo instance.]_ |q 32276/1 |goto Isle of Thunder 32.6,35.5
		Enter the Scenario |goto 933 |noway|c
	step	
		click Heavy Explosives
		|tip It's a pink spiky orb on the ground.
		Find the Lost Explosives |scenariogoal 22696 |goto 933 48.4,51.1
		scenariostage 1
	step
		talk Scout Captain Elsia##69565
		Tell her: _Here are the explosives, Elsia._
		Deliver the Explosives to Elsia |scenariogoal 22700 |goto 933 55.8,57.9
		scenariostage 2
	step
		click Heavy Explosives
		|tip It's a large spiky ball sitting next to a wall
		Light the fuse on the explosives to detonate them.
		Detonate the Heavy Explosives |scenariogoal 22702 |goto 933 56.2,56.2
		scenariostage 3
	step
		_Go through_ the passage |goto 54.9,51.5 < 20 |walk
		_Go up_ the stairs |goto 53.7,47.3 < 20 |walk
		Kill War-God Al'chukla |scenariogoal 23004 |goto 933 54.7,45.9
		scenariostage 4
		modelnpc 69755 
	step
		_Go through_ the portal to the Isle of Thunder |goto 54.1,46.2 < 5 |walk
		talk Lor'themar Theron##67990
		turnin Tear Down This Wall!##32276 |goto Isle of Thunder 32.6,35.5
		next "start"
////SCENARIO3
	step
	label "scenario3"	
		talk Lor'themar Theron##67990
		accept To the Skies!##32277 |goto Isle of Thunder 32.6,35.6
	step
		talk Lor'themar Theron##67990
		Tell him: _I am ready! [Queue for solo instance.]_ |q 32277/1 |goto Isle of Thunder 32.6,35.6
		Enter the To the Skies scenario! |goto 933 |noway|c
	step
		clicknpc Thunderwing##69509
		Mount Thunderwing |scenariogoal 22666 |goto 933 32.3,34.4
	step
		Approach the Mine Entrance |scenariogoal 22667 |goto 933 32.3,34.4
		scenariostage 1
	step
		Use the Jump! ability on your toolbar to fight the Zandalari Attackers 
		|tip After you defeat the first one, you will automatically jump to each other one until this stage is complete.
		kill Zandalari Beastcaller##69521+
		Defeat your Attackers! |scenariogoal 22668
		scenariostage 2
	step	
		Horaki defeated |scenariogoal 22669 |goto 933 48.7,25.5
		scenariostage 3
		modelnpc Beastmaster Horaki##69559
	step
		talk Taoshi##69810
		Tell her: _Alright. Let's go._
		Joined with Taoshi |scenariogoal 22738 |goto 933 49.3,26.0
		scenariostage 4
	step
		Wait here while Taoshi sets up the bomb
		Clear the cave-in cleared |scenariogoal 22740 |goto 933 48.8,25.6
	step
		--|goto 933/0 49.3,25.6
		_Enter_ the cave here |goto 933/1 < 10 |walk
		_Follow_ the ledge |goto 44.7,53.1 < 20 |walk
		Make Your Way to the Mine Entrance |scenariogoal 22741 |goto 933/1 32.9,57.9
		scenariostage 5
	step
		modelnpc Slavemaster Shiaxu##69923+
		Shiaxu Defeated |scenariogoal 22672 |goto 933/1 31.4,71.3
	step
		Unlock the mine door |scenariogoal 22739
		scenariostage 6
	step
		Click the portal to the Isle of Thunder  |goto 31.2,77.7 < 5
		talk Lor'themar Theron##67990
		turnin To the Skies!##32277 |goto Isle of Thunder/0 32.9,32.6
		next "start"
////SCENARIO4
	step
	label "scenario4"
		talk Taoshi##70297
		accept Decisive Action##32278 |goto Isle of Thunder/0 32.9,32.7
	step
		talk Taoshi##70297
		Tell her: _I'm with you. Let's break into that shipyard! [Queue for solo instance.]_ |goto Isle of Thunder/0 32.9,32.7
		You will queue for the solo scenario, click accept when the box pups up on your screen |goto 933 62.5,54.6 < 10
		clicknpc Thunderwing##69458
		Intercept the Zandalari Patrol |scenariogoal 22661 |goto 933/0 63.2,54.4
		scenariostage 1
	step
		Use the _Smoke Bomb_ ability on your hotbar to cloud the vision of the Zandalari patrols
		Deactivate the Sentry Totems |scenariogoal 23007
		scenariostage 2
	step
		Follow _Taoshi_ around the ship and sneak up behind the _Veteran Wingriders_ she marks for you
		When the enemies are inside your red circle, use the _Knock Out_ ability that pops up on your screen
		Neutralize the marked crew members |scenariogoal 23003
	step
		Have Taoshi trap the Siege weapons |scenariogoal 22663
		scenariostage 3
		modelnpc Veteran Wingrider##69552
	step
		Captain Halu'kal slain |scenariogoal 22664 |goto 933/0 67.2,47.3 
		|tip He's on the lower deck of the ship.
		scenariostage 4
		modelnpc Captain Halu'kal##69482 
	step
		_Go through_ the door |goto 67.3,45.6 < 15 |walk
		_Go up_ the stairs |goto 64.2,42.3 < 15 |walk
		_Continue up_ the hill |goto 61.9,43.3 < 20 |walk
		Sneak your way around the totems and guards to Hu'seng the Gatekeeper
		Locate Hu'seng the Gatekeeper |scenariogoal 22665 |goto 933/0 59.4,44.2
		scenariostage 5
	step
		Hu'seng the Gatekeeper slain |scenariogoal 22667 |goto 933/0 59.1,44.1
		modelnpc Hu'seng the Gatekeeper##69483
	step
		collect 1 Gatekeeper's Orb##94918 |scenariogoal 22810 |goto 933/0 59.1,44.1
		scenariostage 6
	step
		click Deactivated Access Generator
		Open the gate |scenariogoal 22809 |goto 933/0 58.4,42.8
		scenariostage 7
	step
		Click the Portal to Dawnseeker Promontory
		talk Lor'themar Theron##67990
		turnin Decisive Action##32278 |goto Isle of Thunder/0 32.5,35.5
		next "start"
//SCENARIO5
	step
	label post5
		talk Lor'themar Theron##67990
		accept The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.6,35.5
	step
		talk Lor'themar Theron##67990
		Tell him that you are ready to launch the asault
		Speak to Lor'themar Theron |q 32279/1 |goto Isle of Thunder/0 32.6,35.5
		Enter the scenario |goto 933|noway|c
	step
		talk Scout Captain Elsia##69620 |goto Isle of Thunder/0 56.1,39.1
		Tell her you are ready to go |scenariogoal 22742
	step
		Enter the courtyard |scenariogoal 22799 |goto Isle of Thunder/0 57.7,41.3
	step 
		kill Zandalari Stoneshield##69527 |goto 933 57.5,40.8
		|scenariogoal 22675
	step
		scenariostage 1
	step
		kill Palace Gatekeeper##69510+ |goto 933 57.9,40.8
		|scenariogoal 22685
	step
		scenariostage 2
	step
		kill Quilen Guardian##69506+, Shan'ze Electrocutioner##69525+, Zandalari Stoneshield##69865+ |goto 933 59.8,38.0
		|scenariogoal 22734
	step
		scenariostage 3
	step
		kill Shan Bu##69534 |goto 933 60.0,37.8
		|scenariogoal 22683
	step
		scenariostage 4
	step
		Follow Taran Zhu to this spot and watch the conflict |goto 933 57.9,40.9
		|confirm
		|modelnpc Taran Zhu##69501+
	step
		goto 933 56.9,40.5 |n
		Click the portal to the Isle of Thunder |goto Isle of Thunder/0 33.2,32.4 |noway |c
	step
		talk Lor'themar Theron##67990
		turnin The Fall of Shan Bu##32279 |goto Isle of Thunder/0 32.5,35.5
		|next "start"
//DAILIES
	step
	label "dailies"
		talk Lor'themar Theron##67990
		accept Za'Tual##32729 |goto Isle of Thunder 28.4,52.3
		|only if thunderstage()==1
	step
		talk Girana the Blooded##67673
		accept The Court of Bones##32728 |goto Isle of Thunder 28.4,52.4
		|only if thunderstage()==1
	step
		talk Magister Hathorel##67663
		accept Ihgaluk Crag##32730 |goto Isle of Thunder 28.6,52.4
		|only if thunderstage()==1
	step
		clicknpc Assignment Map##70567 |goto Isle of Thunder 32.5,35.3
		Click PvE at the assignment screen. |questchoice 21 54 -- PvE
		|only if thunderstage()>=2
	step
		talk Magister Hathorel##67663
		accept Ihgaluk Crag##32730 |goto Isle of Thunder 32.5,35.2
		accept A Wing to Fly On##32506 |only if thunderstage()>=2 |goto Isle of Thunder 32.5,35.2
		|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Girana the Blooded##67673
		accept The Court of Bones##32728 |or 2 |goto Isle of Thunder 32.5,35.2
		accept The Zandalari Colossus##32230 |or 2 |goto Isle of Thunder 32.5,35.2
		accept The Shuddering Moor##32228 |or 2 |only if thunderstage()>=2 |goto Isle of Thunder 32.5,35.2
		|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Lor'themar Theron##67990
		accept Za'Tual##32729 |goto Isle of Thunder 32.6,35.5
		accept Encroaching Force##32521 |goto Isle of Thunder 32.6,35.5
		|only if thunderstage()>=2  and completedq(32212)
		|noquest
	step
		talk High Arcanist Savor##67662
		accept The Sleepless Legion##32285 |or |goto Isle of Thunder 33.5,35.1
		accept Enemies Beneath the Tower##32287 |or |goto Isle of Thunder 33.5,35.1
		|noquest
		|only if thunderstage()>=2
		|next "dailies2"
////COURT OF BONES
	step
	label "dailies2"
		Routing to the next section |next "zatual" |only if thunderstage()>=2 and not havequest(32728) and not completedq(32728)
		Routing to the next section |next |only if default
	step
		talk Grand Magister Rommath##67989 
		turnin The Court of Bones##32728 |only if havequest(32728) |goto Isle of Thunder 33.1,52.7
		accept Grave Circumstances##32201 |only if havequest(32728) or completedq(32728) |goto Isle of Thunder 33.1,52.7
		accept The Call of Thunder##32225 |only if havequest(32728) or completedq(32728) |goto Isle of Thunder 33.1,52.7
		|noquest
		|only if thunderstage()==1
	step
		talk Ryshelle Brightlock##69389
		accept Stone Cold##32219 |goto Isle of Thunder 32.9,52.6
		accept Into the Crypts##32226 |goto Isle of Thunder 32.9,52.6
		accept Rise No More!##32224 |goto Isle of Thunder 32.9,52.6
		accept The Conquest of Stone##32517 |goto Isle of Thunder 32.9,52.6
		|noquest
		|only if thunderstage()==1
	step
		talk Captain Aerthas Firehawk##67983
		accept Ashes of the Enemy##32218 |or |goto Isle of Thunder 33.1,53.0
		accept Soul Surrender##32220 |or |goto Isle of Thunder 33.1,53.0
		|only if thunderstage()==1
	step
		talk Grand Magister Rommath##67989
		turnin The Court of Bones##32728 |goto Isle of Thunder 38.5,51.3
		accept Grave Circumstances##32201 |goto Isle of Thunder 38.5,51.3
		accept The Bloodletter##32495 |goto Isle of Thunder 38.5,51.3
		accept The Call of Thunder##32225 |goto Isle of Thunder 38.5,51.3
		|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Ryshelle Brightlock##69389
		accept Stone Cold##32219 |goto Isle of Thunder 38.5,51.2
		accept Rise No More!##32224 |goto Isle of Thunder 38.5,51.2
		accept Into the Crypts##32226 |goto Isle of Thunder 38.5,51.2
		accept The Conquest of Stone##32517 |goto Isle of Thunder 38.5,51.2
		|noquest
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Captain Aerthas Firehawk##67983
		accept Soul Surrender##32220 |or |goto Isle of Thunder 38.5,51.1
		accept Ashes of the Enemy##32218 |or |goto Isle of Thunder 38.5,51.1
		|noquest
		|only if thunderstage()>=2 and completedq(32212)
	stickystart "shanzemobs"
	stickystart "savescouts"
	step
		kill Kaida the Bloodletter##69250 |q 32495/1 |goto Isle of Thunder 35.0,48.2
		|only if havequest(32495)
	step
		Kill the Shan'ze Soulrippers surrounding the Ancient Stone Conqueror in this room.
		Stop the Ancient Stone Conqueror ritual |q 32517/1 |goto Isle of Thunder 35.1,64.3
		|modelnpc Shan'ze Soulripper##69903+
		|only if havequest(32517)
	step
		Kill the _Shan'ze Thundercallers_ around the Lightning Rod to stop the ritual. |q 32225/1 |goto Isle of Thunder 32.9,55.9
		|modelnpc Shan'ze Thundercaller##69264+
		|only if havequest(32225)
	step "savescouts"
		click Tormented Cage
		Save 6 Scouts |q 32220/1 |goto Isle of Thunder 36.1,51.8
		|modelnpc Sunreaver Scout##69305
		|modelnpc Silver Covenant Scout##69267
		|only if havequest(32220)
	step "shanzemobs"
		kill Shan'ze Gravekeeper##69235+, Shan'ze Thundercaller##69264+ |q 32201/1 |only if havequest(32201) 
		|tip The Thundercallers will cast Chain Lightning which places a circular spell under your character that you will need to move out of to avoid heavy damage.
		kill Risen Ancestor##69237+ |q 32224/1 |only if havequest(32224) |goto Isle of Thunder 35.5,52.3
		kill Grave Guardian##69240+ |q 32219/1 |only if havequest(32219) |goto Isle of Thunder 35.5,52.3
		Use your Blessed Torch on Mummified Remains |use Blessed Torch##93751 
		|tip They're laying in coffins scattered around this area. |q 32218/1 |only if havequest(32218)
		|modelnpc Mummified Remains##69337 |only if havequest(32218)
		|only if havequest(32219) or havequest(32218) or havequest(32201) or havequest(32224)
	step
		Enter the Hall of the Exalted here |goto Isle of Thunder 36.3,58.8 < 10
		Use the Incantation of Gura in your bags to summon Gura |use Incantation of Gura##93803
		kill Gura the Reclaimed##69241+ |q 32226/1 |goto Isle of Thunder 36.8,56.5 |subzone Hall of the Exalted
		|only if havequest(32226)
////ZA'TUAL
	step
	label "zatual"
		Routing to the next section |next "crag" |only if thunderstage()>=4 and not havequest(32729) and not completedq(32729)
		Routing to the next section |next |only if default
	step
		talk Halduron Brightwing##70520
		turnin Za'Tual##32729 |goto Isle of Thunder 36.8,64.8
		accept Surgical Death##32275 |goto Isle of Thunder 36.8,64.8
		accept Harbingers of the Loa##32252 |goto Isle of Thunder 36.8,64.8
		accept Dangers of Za'Tual##32200 |goto Isle of Thunder 36.8,64.8
		|noquest
		|only if thunderstage()>=1 and havequest(32729) or completedq(32729)
	step
		talk Elina Zaralae##69418
		accept Dark Offerings##32217 |goto Isle of Thunder 36.7,64.7
		accept Heinous Sacrifice##32215 |goto Isle of Thunder 36.7,64.7
		|noquest
		|only if thunderstage()>=1 and completedq(32729)
	step
		talk Kethiel Sunlance##67984
		accept Pterrible Ptorment##32216 |goto Isle of Thunder 36.8,64.9
		accept Preventing a Future Threat##32227 |goto Isle of Thunder 36.8,64.9
		|noquest
		|only if thunderstage()>=1 and completedq(32729)
	step
		kill Zandalari Arcweaver##69224+
		Free the Tormented Skyscreamer |q 32216/1 |goto Isle of Thunder 41.3,69.9
		|only if havequest(32216)
	step
		Run over _Hatchling Skyscreamers_ in this area to scare them.
		Scare 12 Hatchling Skyscreamers |q 32227/1 |goto Isle of Thunder/0 28.0,77.2
		|modelnpc Hatchling Skyscreamer##69128
		|only if havequest(32227)
	stickystart "zandamobs"
	stickystart "zandabeast"
	step
		kill Spiritbinder Tec'uat##69255 |only if havequest(32275)
		click Tec'uat's Altar
		Destroy Tec'uat's Altar |q 32215/2 |goto Isle of Thunder 39.8,65.3
		|only if havequest(32215)
	step
		kill Spiritbinder Pa'chek##69256 |only if havequest(32275)
		click Pa'chek's Altar
		Destroy Pa'chek's Altar |q 32215/3 |goto Isle of Thunder 38.7,78.6
		|only if havequest(32215)
	step
		kill Spiritbinder Cha'lat##69254 |only if havequest(32275)
		click Cha'lat's Altar
		Destroy Cha'lat's Altar |q 32215/1 |goto Isle of Thunder 33.9,76.2
		|only if havequest(32215)
	step
		click Zandalari Offering
		Destroy 6 Zandalari Offerings |q 32217/1 |goto Isle of Thunder 35.4,68.0
		|only if havequest(32217)
	step
		kill Zandalari Arcanital##69281+, Zandalari Speaker##69136+ |q 32252/1 |goto Isle of Thunder 36.4,70.0
		You can either wait here _(the respawn rate is high for these mobs)_, or find another at [38.9,76.4]
		|only if havequest(32252)
	step "zandabeast"
		kill Zandalari Jaguar Warrior##69171+ |q 32275/2 |goto Isle of Thunder 31.3,69.9
		kill Zandalari Beastcaller##69065+ |q 32275/1 |goto Isle of Thunder 31.3,69.9
		kill Zandalari Spiritbinder## |q 32275/3 |goto Isle of Thunder 31.3,69.9
		|only if havequest(32275)
	step "zandamobs"
		kill Zandalari Stoneshield##69223+, Zandalari Commoner##69170+, Zandalari Beastcaller##69065+, Zandalari Jaguar Warrior##69171+ |q 32200/1 |goto Isle of Thunder 31.3,69.9
		|only if havequest(32200)
////IHGALUK CRAG
	step
	label "crag"
		Routing to the next section |next "dire" |only if thunderstage()>=2 and not havequest(32730) and not completedq(32730)
		Routing to the next section |next |only if default
	step
		talk Archmage Aethas Sunreaver##67660
		turnin Ihgaluk Crag##32730 |goto Isle of Thunder 46.9,66.9
		accept The Skumblade Threat##32204 |or 2 |goto Isle of Thunder 46.9,66.9
		accept Manipulating the Saurok##32254 |or 2 |goto Isle of Thunder 46.9,66.9
		accept Subtle Encouragement##32605 |or 2 |goto Isle of Thunder 46.9,66.9
		accept De-Constructed##32255 |or 2 |goto Isle of Thunder 46.9,66.9
		|noquest
	step
		talk Sunwalker Dezco##69425
		accept The Residents of Ihgaluk##32274 |goto Isle of Thunder 46.8,66.8
		|noquest
	step
		talk Amalia Penshire##69371
		accept Just Some Light Clean-Up Work##32299 |or 2 |goto Isle of Thunder 47.0,66.7
		accept The Creeping Carpet of Ihgaluk##32489 |or 2 |goto Isle of Thunder 47.0,66.7
		accept Left to Rot##32491 |or 2 |goto Isle of Thunder 47.0,66.7
		|noquest
	step
		talk Archmage Aethas Sunreaver##67660
		accept Skin of the Saurok##32549 |goto Isle of Thunder 46.9,66.9
		|tip NOTE: This quest will give you the ability to disguise yourself as a saurok. This spell will happen automatically whenever you are outside of combat and inside Ihgaluk Crag. If you try to attack another saurok, the disguise will vanish and all saurok will be hostile to you until you are out of combat again.
		|noquest
		|only if not completedq(32507)
	step
		kill Skumblade Filthmonger##69228+, Skumblade Brute##69338+, Skumblade Scavenger##69227+ |q 32549/1 |goto Isle of Thunder 47.2,79.6
		|only if not completedq(32507) and thunderstage()==1
	step
		Click the quest complete box that appears below your minimap.
		turnin Skin of the Saurok##32549
		|only if not completedq(32507)
	stickystart "ihgaroach"
	stickystart "killskum"
	stickystart "plantmogu"
	step
		kill Fetid Meat Pile##69247+
		Fetid Meat Pile destroyed |q 32491/1 |goto Isle of Thunder 51.5,78.4
		|only if havequest(32491)
	step
		clicknpc Malfunctioning Sunreaver##69289
		Recover Malfunctioning Sunreaver |q 32255/4 |goto Isle of Thunder/0 46.6,71.9
		|only if havequest(32255)
	step
		clicknpc Magister Arlan##69293
		Speak with Magister Arlan |q 32254/1 |goto Isle of Thunder 44.6,83.3
		|only if havequest(32254)
	step
		clicknpc Disabled Sunreaver Construct##69439
		Recover Disabled Construct |q 32255/1 |goto Isle of Thunder/0 44.2,81.8
		|only if havequest(32255)
	step
		clicknpc Magistrix Vesara##69310
		Speak with Magistrix Vesara |q 32254/3 |goto Isle of Thunder 51.7,73.6
		|only if havequest(32254)
	step
		map Isle of Thunder/0
		path follow loose;loop;ants straight
		path	51.8,74.4	53.3,77.0	54.3,79.3
		path	55.1,82.2	55.1,82.2	55.3,84.2
		path	54.9,86.7	53.9,88.3	52.4,90.4
		path	50.8,90.5	49.2,89.5	49.4,85.8
		path	49.8,84.0	49.4,82.0	49.2,79.8
		path	50.1,78.4	50.4,77.1	50.6,75.8
		clicknpc Distressed Sunreaver Construct##69290
		Recover Distressed Construct |q 32255/3
		|only if havequest(32255)
	step
		clicknpc Magister Sarien##69309
		Speak with Magister Sarien |q 32254/2 |goto Isle of Thunder 51.5,85.0
		|only if havequest(32254)
	step
		clicknpc Buried Sunreaver Construct##69288
		Recover Buried Construct |q 32255/2 |goto Isle of Thunder/0 53.6,91.2
		|only if havequest(32255)
	step
		kill Quivering Filth##69251+
		Disperse 75 Filth |q 32299/1 |goto Isle of Thunder 51.5,81.0
		|only if havequest(32299)
	step
		kill 1 Skumblade Brute##69338 |q 32274/1 |goto Isle of Thunder 50.9,78.9
		|only if havequest(32274)
	step
		_Follow_ the path up |goto Isle of Thunder 50.5,76.8 < 10
		kill 1 Skumblade Saur-Priest##69229 |q 32274/2 |goto Isle of Thunder 49.8,76.1
		|only if havequest(32274)
	step
		kill 1 Skumblade Seadragon##69226+ |q 32274/3 |goto Isle of Thunder 56.3,86.4
		|only if havequest(32274)
	step "ihgaroach"
		Go around Ihgaluk running over any _Ihgaluk Roaches_ you see.
		Crush 150 Ihgaluk Roaches |q 32489/1 |goto Isle of Thunder 53.9,78.0
		|only if havequest(32489)
	step "plantmogu"
		kill Skumblade Brute##69338+, Skumblade Shortfang##69348+, Skumblade Scavenger##69227+, Skumblade Fleshripper##69210+
		Click the _Plant the spear_ ability that appears in the middle of your screen to plant the weapons on their corpses.
		Plant 9 Mogu weapons |q 32605/1 |goto Isle of Thunder 45.2,74.7
		|only if havequest(32605)
	step "killskum"
		kill Skumblade Brute##69338+, Skumblade Shortfang##69348+, Skumblade Scavenger##69227+, Skumblade Fleshripper##69210+ |q 32204/1 |goto Isle of Thunder 45.2,74.7
		|only if havequest(32204)
	step
	label "dire"
		clicknpc Wild Pterrorwing Hatchling##69428 
		|tip The hatchling roams around this circular path, some searching may be necessary.
		Catch a Wild Pterrorwing Hatchling |q 32506/1 |goto Isle of Thunder 40.8,48.3
		|only if havequest(32506)
	step
		kill Zandalari Colossus##69405 |q 32230/1  |goto Isle of Thunder/0 42.8,64.0
		|tip He patrols around this circular path, some searching may be necessary.
		|only if havequest(32230)
	step
		kill Mighty Devilsaur##69406 |q 32228/1 |goto Isle of Thunder/0 53.2,56.3
		|tip He patrols around this circular path, some searching may be necessary.
		|only if havequest(32228)
	step
		kill Animated Warrior##67473+ |q 32285/1  |goto Isle of Thunder 43.0,55.2
		|only if havequest(32285)
	step
		kill Shan'ze Bloodseeker##69431+, Shan'ze Animator##70069+ |q 32287/1 |goto Isle of Thunder/0 47.0,61.4
		|only if havequest(32287)
////TURNIN
	step
	label "turnin"
		talk Amalia Penshire##69371
		turnin The Creeping Carpet of Ihgaluk##32489 |goto Isle of Thunder 47.0,66.8
		turnin Just Some Light Clean-Up Work##32299 |goto Isle of Thunder 47.0,66.8
		turnin Left to Rot##32491 |goto Isle of Thunder 47.0,66.8
		|only if havequest(32299) or havequest(32489) or havequest(32491)
	step
		talk Archmage Aethas Sunreaver##67660
		turnin The Skumblade Threat##32204 |goto Isle of Thunder 46.9,66.9
		turnin Manipulating the Saurok##32254 |goto Isle of Thunder 46.9,66.9
		turnin Subtle Encouragement##32605 |goto Isle of Thunder 46.9,66.9
		turnin The Skumblade Threat##32204 |goto Isle of Thunder 46.9,66.9
		turnin De-Constructed##32255 |goto Isle of Thunder 46.9,66.9
		|only if havequest(32489) or havequest(32605) or havequest(32254) or havequest(32255) or havequest(32204)
	step
		talk Sunwalker Dezco##69425
		turnin The Residents of Ihgaluk##32274 |goto Isle of Thunder 46.8,66.7
		|only if havequest(32274)
	step
		talk Elina Zaralae##69418
		turnin Dark Offerings##32217 |goto Isle of Thunder 36.7,64.7
		turnin Heinous Sacrifice##32215 |goto Isle of Thunder 36.7,64.7
		|only if havequest(32217) or havequest(32215)
	step
		talk Kethiel Sunlance##67984
		turnin Pterrible Ptorment##32216 |goto Isle of Thunder 36.8,64.9
		turnin Preventing a Future Threat##32227 |goto Isle of Thunder 36.8,64.9
		|only if havequest(32216) or havequest(32227)
	step
		talk Halduron Brightwing##70520
		turnin Harbingers of the Loa##32252 |goto Isle of Thunder 36.8,64.8
		turnin Surgical Death##32275 |goto Isle of Thunder 36.8,64.8
		turnin Dangers of the Za'Tual##32200 |goto Isle of Thunder 36.8,64.8
		accept Encroaching Force##32521 |goto Isle of Thunder 36.8,64.8
		accept The Beast Pens##32523 |goto Isle of Thunder 36.8,64.8
		accept The Beating of Troll Drums##32524 |goto Isle of Thunder 36.8,64.8
		accept Among the Bones##32293 |goto Isle of Thunder 36.8,64.8
		accept Imposing Threat##32522 |goto Isle of Thunder 36.8,64.8
		|only if havequest(32252) or havequest(32275) or havequest(32200) or completedq(32252) or completedq(32275) or completedq(32200)
		|noquest
	step
		talk Ryshelle Brightlock##69389
		turnin Stone Cold##32219 |goto Isle of Thunder 38.5,51.2
		turnin Rise No More!##32224 |goto Isle of Thunder 38.5,51.2
		turnin Into the Crypts##32226 |goto Isle of Thunder 38.5,51.2
		turnin The Conquest of Stone##32517 |goto Isle of Thunder 38.5,51.2
		|only if thunderstage()>=2 and completedq(32212)
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 38.6,51.1
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |goto Isle of Thunder 38.5,51.3
		turnin The Bloodletter##32495 |goto Isle of Thunder 38.5,51.3
		turnin Soul Surrender##32220 |goto Isle of Thunder 38.5,51.3
		turnin The Call of Thunder##32225 |goto Isle of Thunder 38.5,51.3
		accept Encroaching Force##32521 |or |goto Isle of Thunder 38.5,51.3
		accept Competing Magic##32520 |or |goto Isle of Thunder 38.5,51.3
		accept Imposing Threat##32522 |or |goto Isle of Thunder 38.5,51.3
		accept The Beating of Troll Drums##32524 |or |goto Isle of Thunder 38.5,51.3
		accept The Beast Pens##32523 |or |goto Isle of Thunder 38.5,51.3
		accept Among the Bones##32293 |or |goto Isle of Thunder 38.5,51.3
		|noquest
		|only if thunderstage()>=2 and completedq(32212) and havequest(32201) or thunderstage()>=2 and completedq(32212) and completedq(32201)
	step
		talk Ryshelle Brightlock##69389
		turnin The Conquest of Stone##32517 |goto Isle of Thunder 32.9,52.6
		turnin Into the Crypts##32226 |goto Isle of Thunder 32.9,52.6
		turnin Stone Cold##32219 |goto Isle of Thunder 32.9,52.6
		turnin Rise No More!##32224 |goto Isle of Thunder 32.9,52.6
		|only if thunderstage()==1
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 33.1,53.0
		|only if thunderstage()==1
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |goto Isle of Thunder 33.0,52.8
		turnin Soul Surrender##32220 |goto Isle of Thunder 33.0,52.8
		turnin The Call of Thunder##32225 |goto Isle of Thunder 33.0,52.8
		accept Competing Magic##32561 |or |goto Isle of Thunder 33.0,52.8
		accept Imposing Threat##32562 |or |goto Isle of Thunder 33.0,52.8
		|noquest
		|only if thunderstage()==1
	step
		talk Lor'themar Theron##67990
		accept Encroaching Force##32521 |goto Isle of Thunder/0 32.6,35.5
		accept Competing Magic##32520 |goto Isle of Thunder/0 32.6,35.5
		accept Imposing Threat##32522 |goto Isle of Thunder/0 32.6,35.5
		accept The Beating of Troll Drums##32524 |goto Isle of Thunder/0 32.6,35.5
		accept The Beast Pens##32523 |goto Isle of Thunder/0 32.6,35.5
		accept Among the Bones##32293 |goto Isle of Thunder/0 32.6,35.5
		|noquest
		|only if thunderstage()>=2 and completedq(32212) and not havequest(32201) and not completedq(32201)
	step
		kill 1 Horgak the Enslaver##70176 |q 32562/1 |only if havequest(32562) |goto Isle of Thunder/0 45.7,59.5
		kill 1 Horgak the Enslaver##70176 |q 32522/1 |only if havequest(32522) |goto Isle of Thunder/0 45.7,59.5
		|only if havequest(32562) or havequest(32522)
	step
		kill Arcweaver Jor'guva##69665 |q 32561/1 |only if havequest(32561) |goto Isle of Thunder 44.2,68.7
		kill Arcweaver Jor'guva##69665 |q 32520/1 |only if havequest(32520) |goto Isle of Thunder 44.2,68.7
		|only if havequest(32561) or havequest(32520)
	step
		kill Arcweaver Jor'guva##69665+ |q 32520/1 |goto Isle of Thunder 44.2,68.7
		|only if havequest(32520)
	step
		click Orb of Translocation##7161 |goto Isle of Thunder 33.0,52.6
		Teleport to the Crimson Treader |goto Isle of Thunder 28.5,51.6 |noway |c
		|only if havequest(32561)
	step
		kill Nurkala##69663 |q 32521/1 |goto Isle of Thunder/0 45.1,35.6
		|only if havequest(32521)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.9,79.4
		|only if havequest(32293)
	step
		talk Lor'themar Theron##67990
		turnin Competing Magic##32561 |goto Isle of Thunder 28.4,52.4
		turnin Encroaching Force##32521 |goto Isle of Thunder 28.4,52.4
		turnin Imposing Threat##32562 |goto Isle of Thunder 28.4,52.4
		|only if havequest(32561) or havequest(32521) or havequest(32562)
		|only if thunderstage()==1
	step
		talk Lor'themar Theron##67990
		turnin Za'Tual##32729 |goto Isle of Thunder 32.6,35.5
		turnin Encroaching Force##32521 |goto Isle of Thunder 32.6,35.5
		turnin Competing Magic##32520 |goto Isle of Thunder 32.6,35.5
		turnin Imposing Threat##32562 |goto Isle of Thunder 32.6,35.5
		turnin Imposing Threat##32522 |goto Isle of Thunder 32.6,35.5
		|only if thunderstage()>=2  and completedq(32212) or havequest(32729) or havequest(32521) or havequest(32520) or havequest(32562)
	step
		talk Archmage Aethas Sunreaver##67660
		turnin Subtle Encouragement##32605 |goto Isle of Thunder 32.6,33.0
		accept De-Constructed##32255 |goto Isle of Thunder 32.6,33.0
		accept The Skumblade Threat##32204 |goto Isle of Thunder 32.6,33.0
		|noquest
		|only if havequest(32605) or havequest(32204) or havequest(32255)
	step
		talk Grand Magister Rommath##67989
		turnin Grave Circumstances##32201 |only if havequest(32201) |goto Isle of Thunder 33.7,33.7
		turnin The Call of Thunder##32225 |only if havequest(32225) |goto Isle of Thunder 33.7,33.7
		turnin Soul Surrender##32220 |only if havequest(32220) |goto Isle of Thunder 33.7,33.7
		|only if havequest(32201) or havequest(32225) or havequest(32220)
	step
		talk Ryshelle Brightlock##69389
		turnin Rise No More!##32224 |only if havequest(32224) |goto Isle of Thunder 33.7,33.7
		turnin The Conquest of Stone##32517 |only if havequest(32517) |goto Isle of Thunder 33.7,33.7
		turnin Stone Cold##32219 |only if havequest(32219) |goto Isle of Thunder 33.7,33.7
		|only if havequest(32224) or havequest(32517) or havequest(32219)
	step
		talk Captain Aerthas Firehawk##67983
		turnin Ashes of the Enemy##32218 |goto Isle of Thunder 33.6,33.9
		|only if havequest(32218)
	step
		talk Girana the Blooded##67673
		turnin The Zandalari Colossus##32230 |goto Isle of Thunder 32.5,35.2
		turnin The Shuddering Moor##32228 |goto Isle of Thunder 32.5,35.2
		|only if havequest(32230) or havequest(32228) or completedq(32230) or completedq(32228)
	step
		talk Magister Hathorel##67663
		turnin A Wing to Fly On##32506 |goto Isle of Thunder 32.5,35.2
		|only if havequest(32506)
	step
		talk High Arcanist Savor##67662
		turnin The Sleepless Legion##32285 |goto Isle of Thunder 33.5,35.1
		turnin Enemies Beneath the Tower##32287 |goto Isle of Thunder 33.5,35.1
		|only if havequest(32285) or havequest(32287)
	step
		talk Elina Zaralae##69418
		turnin Heinous Sacrifice##32215 |goto Isle of Thunder 32.5,35.5
		turnin Dark Offerings##32217 |goto Isle of Thunder 32.5,35.5
		|only if havequest(32215) or havequest(32217)
	step
		talk Kethiel Sunlance##67984
		turnin Preventing a Future Threat##32227 |goto Isle of Thunder/0 32.5,35.6
		|only if havequest(32227)
	step
		talk Lor'themar Theron##67990
		accept Encroaching Force##32521 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Competing Magic##32520 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Imposing Threat##32522 |or 2 |goto Isle of Thunder 32.5,35.6
		accept The Beating of Troll Drums##32524 |or 2 |goto Isle of Thunder 32.5,35.6
		accept The Beast Pens##32523 |or 2 |goto Isle of Thunder 32.5,35.6
		accept Among the Bones##32293 |goto Isle of Thunder 32.5,35.6
		|noquest
	step
		kill Arcweaver Jor'guva##69665 |q 32561/1 |only if havequest(32561) |goto Isle of Thunder 44.2,68.7
		kill Arcweaver Jor'guva##69665 |q 32520/1 |only if havequest(32520) |goto Isle of Thunder 44.2,68.7
		|only if havequest(32561) or havequest(32520)
	step
		kill Nurkala##69663 |q 32521/1 |only if havequest(32521) |goto Isle of Thunder 45.0,35.5
		|only if havequest(32521)
	step
		kill 1 Horgak the Enslaver##70176 |q 32522/1 |only if havequest(32522) |goto Isle of Thunder/0 45.7,59.5
		|only if havequest(32522)
	step
		kill Zur'chaka the Bonecrafter##69666+ |goto Isle of Thunder 54.5,45.2
		|only if havequest(32294)
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32293/1 |goto Isle of Thunder/0 41.9,79.4
		|only if havequest(32293)
	step
		talk Scout Captain Elsia##67985
		turnin Raining Bones##32294 |goto Isle of Thunder 47.2,40.7
		|only if havequest(32294)
	step
		talk Lor'themar Theron##67990
		turnin Harbingers of the Loa##32252 |goto Isle of Thunder 32.5,35.5
		turnin Dangers of Trolltonshire##32200 |goto Isle of Thunder 32.5,35.5
		turnin Among the Bones##32293 |goto Isle of Thunder 32.5,35.5
		turnin Surgical Death##32275 |goto Isle of Thunder 32.5,35.5
		|only if havequest(32252) or havequest(32200) or havequest(32293) or havequest(32275)
	step
		Routing to proper section |next "beast" |only if havequest(32523) or completedq(32523)
		Routing to proper section |next "terrace" |only if havequest(32524) or completedq(32524)
		Routing to proper section |next "end" |only if default

////CONQUEROR'S TERRACE
	step
	label "terrace"
		talk Scout Captain Elsia##67985
		turnin The Beating of Troll Drums##32524 |goto Isle of Thunder 54.0,49.8
		accept Very Disarming##32233 |goto Isle of Thunder 54.0,49.8
		accept This Just Won't Do##32206 |goto Isle of Thunder 54.0,49.8
		accept What's Inside Counts##32232 |goto Isle of Thunder 54.0,49.8
		|noquest
		|only if havequest(32524) or completedq(32524)
	step
		talk Magister Edien Sunhollow##67986
		accept Power Play##32494 |or 2 |goto Isle of Thunder/0 53.9,49.9
		accept Knowledge Is Power##32234 |or 2 |goto Isle of Thunder/0 53.9,49.9
		accept They All Fall Down##32493 |or 2 |goto Isle of Thunder/0 53.9,49.9
		|noquest
		|only if completedq(32524)
	stickystart "ritualfact"
	stickystart "loablade"
	stickystart "zandacapture"
	step
		kill Arcanital Ra'kul##69300
		collect Mask of the Dark Mystic |q 32494/2 |goto Isle of Thunder/0 56.8,46.3
		|only if completedq(32524)
	step
		kill Spiritbinder Tu'chek##69301
		collect Mask of the Spirit-Caller##93733 |q 32494/1 |goto Isle of Thunder/0 59.4,56.6
		|only if completedq(32524)
	step
		kill Guardian Tak'u##69336+ |q 32232/1 |goto Isle of Thunder/0 60.2,54.0
	step "ritualfact"
		click Ritual Artifact
		collect 6 Ritual Artifact |q 32234/1 |goto Isle of Thunder/0 57.1,50.4
		|only if completedq(32524)
	step "loablade"
		click Loa-Infused Blade
		collect 7 Loa-Infused Blade##93736 |q 32233/1 |goto Isle of Thunder/0 55.7,50.7
		|only if completedq(32524)
	step "zandacapture"
		kill Zandalari Acolyte##69295+, Zandalari Bloodguard##69294+, Zandalari Haruspex##69297+, Zandalari Soultwister##69296+ |q 32206/1
		kill Spirit-Bound Sentry##69335+
		Use your _Resonance Siphon_ on Spirit-Bound Sentries.  |use Resonance Siphon##93806
		5 Zandalari Spirits captured |q 32493/1 |goto Isle of Thunder 55.7,50.7
		|only if completedq(32524)
	step
		talk Scout Captain Elsia##67985
		turnin This Just Won't Do##32206 |goto Isle of Thunder/0 53.9,49.8
		turnin Very Disarming##32233 |goto Isle of Thunder/0 53.9,49.8
		turnin What's Inside Counts##32232 |goto Isle of Thunder/0 53.9,49.8
		|only if completedq(32524)
	step
		talk Magister Edien Sunhollow##67986
		turnin Power Play##32494 |goto Isle of Thunder/0 53.9,49.8
		turnin Knowledge Is Power##32234 |goto Isle of Thunder/0 53.9,49.8
		turnin They All Fall Down##32493 |goto Isle of Thunder/0 53.9,49.8
		accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 53.9,49.8
		accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 53.9,49.8
		|noquest
		|only if completedq(32524)
	step
		talk Scout Captain Elsia##67985
		accept Raining Bones##32294 |or |goto Isle of Thunder 54.0,49.9
		accept Encroaching Force##32565 |or |goto Isle of Thunder 54.0,49.9
		|noquest
	step
		kill Zur'chaka the Bonecrafter##69666 |q 32294/1 |goto Isle of Thunder 54.5,45.3
		|only if havequest(32294)
	step
		kill Nurkala##69663 |q 32565/1 |goto Isle of Thunder 61.9,61.6
		|only if havequest(32565)
	step
		talk Scout Captain Elsia##67985
		turnin Raining Bones##32294 |goto Isle of Thunder 53.9,49.8
		turnin Encroaching Force##32565 |goto Isle of Thunder 53.9,49.8
		|next "end" |only if thunderstage()<=3
	step
		Use your Arcane Emancipator on Scout Alaine |use Arcane Emancipator##93761
		Scout Alaine rescued |q 32209/3 |goto Isle of Thunder/1 28.0,62.2
		|modelnpc Scout Alaine##69357
		|only if havequest(32209)
	step
		Use your Arcane Emancipator on Scout Elearis |use Arcane Emancipator##93761
		Scout Elearis rescued |q 32209/1 |goto Isle of Thunder/1 44.3,54.8
		|modelnpc Scout Elearis##69357
		|only if havequest(32209)
	step
		Use your Arcane Emancipator on Scout Merior |use Arcane Emancipator##93761
		Scout Merior rescued |q 32209/2 |goto Isle of Thunder/1 54.3,35.2
		|modelnpc Scout Merior##69356
		|only if havequest(32209)
	step
		click Lightning Drill
		Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.0,69.9
		|only if havequest(32208)
	step
		click Lightning Drill
		Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.6,37.5
		|only if havequest(32208)
	step
		click Lightning Drill
		Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.2,15.4
		|only if havequest(32208)
	step
		kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.9,31.3
		|only if havequest(32209)
	step
		kill Metal Lord Mono-Han##69326+ |q 32208/4 |goto Isle of Thunder/0 54.9,31.3
		|only if havequest(32208)
	step
		Click the Quest Complete box in the upper left corner of your screen below your minimap
		turnin Save Our Scouts!##32209
		turnin Maximum Capacitor##32208
		accept Forge Ahead!##32292 |only if thunderstage()>=4
		|noquest
		|next "end" |only if thunderstage()<=4
		|only if completedq(32524) or completedq(32523)
	step
		kill Itoka##69461+ |q 32292/1 |goto Isle of Thunder/0 57.7,34.0
		|only if completedq(32524) or completedq(32523)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment |q 32292/2 |goto Isle of Thunder/0 55.4,38.4
		|only if completedq(32524) or completedq(32523)
	step
		talk Scout Captain Elsia##70551
		turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.7,42.7
		|only if completedq(32524) or completedq(32523)
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32676 |goto Isle of Thunder/0 58.6,42.7
		accept Raiding the Vault##32677 |goto Isle of Thunder/0 58.6,42.7
		|noquest
		|only if thunderstage()>=5
	step
		kill Lu-Shero##69274+
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 58.6,66.2
		|only if havequest(32677)
	step
		click Stormy Chest
		Choker of Storms |q 32677/1 |goto 33.2,28.3
		|only if havequest(32677)
	step
		collect Workshop Orders |q 32676/2 |goto Isle of Thunder/0 63.8,38.9
		|only if havequest(32676)
		|only if thunderstage()>=5
	step
		kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.7,46.3
		|only if havequest(32676)
		|only if thunderstage()>=5
	step
		talk Lor'themar Theron##67990
		turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.5,35.5
		turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.5,35.5
		turnin Competing Magic##32520 |goto Isle of Thunder/0 32.5,35.5
		|next "end"
		|only if thunderstage()>=5
////BEAST PENS
	step
	label "beast"
		talk Scout Captain Elsia##67985
		Find Scout Captain Elsia at the Beast Pens |q 32523/1 |goto Isle of Thunder/0 47.1,40.7
		turnin The Beast Pens##32523 |goto Isle of Thunder/0 47.1,40.7
	step
		talk Magister Edien Sunhollow##67986
		accept Saur Loser##32207 |goto Isle of Thunder/0 47.2,40.8
		accept Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.2,40.8
		accept Loa-saur##32283 |goto Isle of Thunder/0 47.2,40.8
		|noquest
	step
		talk Scout Captain Elsia##67985
		accept Dino Might##32298 |or |goto Isle of Thunder/0 47.1,40.7
		accept Compy Stomp##32282 |or |goto Isle of Thunder/0 47.1,40.7
		|noquest
//	step
//		kill Zandalari Fetish-Binder##69155+, Master Caller##69286+, Defiant Devilsaur##67477+ |goto Isle of Thunder 53.4,42.3
	stickystart "saurfetish"
	stickystart "trainedcompy"
	step
		kill Loa Speaker##69302 |q 32283/1 |goto 53.6,44.6
		|only if havequest(32283)
	step "saurfetish"
		click Saur Fetish##13556
		kill Zandalari Saurcaller##69154+
		kill Zandalari Fetish-Binder##69155+
		collect 5 Saur Fetish##93668 |goto Isle of Thunder/0 49.7,38.8
		|only if havequest(32298)
	step "trainedcompy"
		Use your _Saur Fetish_ on any dinosaurs near this spot |use Saur Fetish##93668 |only if havequest(32298)
		Use 5 Saur Fetishes on dinosaurs in the area |q 32298/1 |only if havequest(32298) |goto Isle of Thunder/0 49.2,40.9
		kill Trained Compy##58071+, Zandalari Fetish-Binder##69155+, Tamed Bladetalon##69180+, Zandalari Beastlord##69144+, Zandalari Fetish-Binder##69155+, Zandalari Saurcaller##69154+, Maturing Raptor##69183+
		Kill 10 Beast Pens Trolls |q 32207/1 |goto Isle of Thunder/0 49.2,40.9 |only if havequest(32207)
		You can find more around the following location |goto 49.4,38.2
		kill 5 Raptor |q 32282/1 |goto Isle of Thunder/0 49.2,40.9 |only if havequest(32282)
		You can find more raptors around the following location |goto 49.6,37.9 |only if havequest(32282)
		kill 10 Trained Compy |q 32282/2 |goto Isle of Thunder/0 49.2,40.9 |only if havequest(32282)
		|modelnpc Trained Compy##58071+
		|modelnpc Maturing Raptor##69183+
		|modelnpc Tamed Bladetalon##69180+
		|only if havequest(32207) or havequest(32298)
	step
		Kill all the _Master Callers_ surrounding the direhorn
		Disrupt the Binding Ritual |q 32297/1 |goto Isle of Thunder/0 51.8,32.9
		|modelnpc Master Caller##69286+
		|only if havequest(32297)
	step
		talk Scout Captain Elsia##67985
		turnin Dino Might##32298 |goto Isle of Thunder/0 47.2,40.6
		turnin Compy Stomp##32282 |goto Isle of Thunder/0 47.2,40.6
	step
		talk Magister Edien Sunhollow##67986
		turnin Saur Loser##32207 |goto Isle of Thunder/0 47.3,40.8
		turnin Loa-saur##32283 |goto Isle of Thunder/0 47.3,40.8
		turnin Direhorn or Devilsaur##32297 |goto Isle of Thunder/0 47.3,40.8
		accept Save Our Scouts!##32209 |or |goto Isle of Thunder/0 47.3,40.8
		accept Maximum Capacitor##32208 |or |goto Isle of Thunder/0 47.3,40.8
		|noquest
		|only if completedq(32523)
	 step
		talk Scout Captain Elsia##67985
		accept Encroaching Force##32563 |goto Isle of Thunder 47.2,40.6
		accept Zandalari on the Rise##32564 |goto Isle of Thunder 47.2,40.6
		|noquest
		|only if completedq(32523)
	step
		kill Arcweaver Jor'guva##69665 |q 32564/1 |goto Isle of Thunder 44.2,68.7
		|only if havequest(32564)
	step
		kill Nurkala##69663 |q 32563/1 |goto Isle of Thunder 45.3,35.1
		|only if havequest(32563)
	 step
		talk Scout Captain Elsia##67985
		turnin Encroaching Force##32563 |goto Isle of Thunder 47.2,40.6
		turnin Zandalari on the Rise##32564 |or |goto Isle of Thunder 47.2,40.6
	step
		Use your Arcane Emancipator on Scout Alaine |use Arcane Emancipator##93761
		Scout Alaine rescued |q 32209/3 |goto Isle of Thunder/1 28.0,62.2
		|modelnpc Scout Alaine##69357
		|only if havequest(32209)
	step
		Use your Arcane Emancipator on Scout Elearis |use Arcane Emancipator##93761
		Scout Elearis rescue |q 32209/1 |goto Isle of Thunder/1 44.3,54.8
		|modelnpc Scout Elearis##69357
		|only if havequest(32209)
	step
		Use your Arcane Emancipator on Scout Merior |use Arcane Emancipator##93761
		Scout Merior rescued |q 32209/2 |goto Isle of Thunder/1 54.3,35.2
		|modelnpc Scout Merior##69356
		|only if havequest(32209)
	step
		click Lightning Drill
		Destroy the Western Lightning Drill |q 32208/1 |goto Isle of Thunder/1 21.0,69.9
		|only if havequest(32208)
	step
		click Lightning Drill
		Destroy the Central Lightning Drill |q 32208/2 |goto Isle of Thunder/1 32.6,37.5
		|only if havequest(32208)
	step
		click Lightning Drill
		Destroy the Eastern Lightning Drill |q 32208/3 |goto Isle of Thunder/1 62.2,15.4
		|only if havequest(32208)
	step
		kill Metal Lord Mono-Han##69326 |q 32209/4 |goto Isle of Thunder/0 54.9,31.3
		|only if havequest(32209)
	step
		kill Metal Lord Mono-Han##69326 |q 32208/4 |goto Isle of Thunder/0 54.9,31.3
		|only if havequest(32208)
	step
		Click the Quest Complete box in the upper left corner of your screen below your minimap
		turnin Save Our Scouts!##32209
		turnin Maximum Capacitor##32208
		accept Forge Ahead!##32292
		|noquest
		|only if havequest(32209) or completedq(32208) or havequest(32208) or completedq(32209)
	step
		kill Itoka##69461+ |q 32292/1 |goto Isle of Thunder/0 57.7,34.0
		|only if havequest(32292)
	step
		kill Fleshcrafter Hoku##69435
		collect Mogu Codex Fragment |q 32292/2 |goto Isle of Thunder/0 55.4,38.4
		|only if havequest(32292)
	step
		talk Scout Captain Elsia##70551
		turnin Forge Ahead!##32292 |goto Isle of Thunder/0 58.7,42.7
		|only if havequest(32292)
		|next "end" |only if thunderstage()<=4
		|next |only if default |only if thunderstage()>=5
	step
		talk Taoshi##69413
		accept Extended Shore Leave##32676 |or |goto Isle of Thunder/0 58.6,42.7
		accept Raiding the Vault##32677 |or |goto Isle of Thunder/0 58.6,42.7
		|noquest
		|only if thunderstage()>=4
	step
		kill Lu-Shero##69274+
		collect Hoard-Keeper's Key##95374 |goto Isle of Thunder/2 58.6,66.2
		|only if havequest(32677)
	step
		click Stormy Chest
		Choker of Storms |q 32677/1 |goto 33.2,28.3
		|only if havequest(32677)
	step
		collect Workshop Orders |q 32676/2 |goto Isle of Thunder/0 63.8,38.9
		|only if havequest(32676)
	step
		kill Arcweaver Uzan##69272+ |q 32676/1 |goto Isle of Thunder/0 67.7,46.3
		|only if havequest(32676)
	step
		talk Lor'themar Theron##67990
		turnin Extended Shore Leave##32676 |goto Isle of Thunder/0 32.5,35.5
		turnin Raiding the Vault##32677 |goto Isle of Thunder/0 32.5,35.5
		|next "end"
	step
	label "end"
		talk Vasarin Redmorn##67672
		buy 1 Grand Commendation of the Sunreaver Onslaught##95548 |n |goto Isle of Thunder/0 33.4,32.4
		Use the Commendation of the Shado-Pan you just purchased |condition ZGV:GetReputation("Sunreaver Onslaught").hasBonus |use Grand Commendation of the Sunreaver Onslaught##95548
		|only if rep("Sunreaver Onslaught")>=Revered
	step
		You have reached the end of the dailies for today
		Click here to go back to the beginning of the guide |confirm |next "start"
]])

ZygorGuidesViewer:RegisterInclude("H_Beasts_of_Fable_D",[[
		talk Gentle San##64582
		accept Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
		accept Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
		accept Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
		accept Pandaren Spirit Tamer##32428 |goto Vale of Eternal Blossoms 60.8,23.7 |only if not completedq(32428) 
	step
		_No-No_
		This enemy is aquatic
		It is strong against undead and weak to flying attacks
		I would suggest that you use flying pets against this enemy
		No-No defeated |q 32869/2 |goto Vale of Eternal Blossoms 11.0,70.9
		|modelnpc 68559
	step
		_Lucky Yi_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Lucky Yi defeated |q 32868/2 |goto Valley of the Four Winds 40.5,43.7
		|modelnpc 68561
	step
		_Greyhoof_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Greyhoof defeated |q 32868/1 |goto Valley of the Four Winds 25.3,78.5
		|modelnpc 68560
	step
		_Skitterer Xi'a_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Xi'a defeated |q 32868/3 |goto Krasarang Wilds 36.3,37.3
		|modelnpc 68566
	step
		_Flowing Pandaren Spirit_
		This enemy uses aquatic and elemental pets
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Flowing Pandaren Spirit defeated |q 32428/4 |goto Dread Wastes 61.1,87.5
		|modelnpc 68462
		|only if havequest(32428)
	step
		talk Flowing Pandaren Spirit##68462
		accept Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.1,87.5
		|only if completedq(32428)
	step
		_Flowing Pandaren Spirit_
		This enemy uses aquatic and elemental pets
		They are strong against undead and mechanical and weak to flying and aquatic pets
		I would suggest using flying and aquatic pets against this enemy
		Flowing Pandaren Spirit defeated |q 32439/1 |goto Dread Wastes 61.1,87.5
		|modelnpc 68462
		|only if havequest(32439)
	step
		talk Flowing Pandaren Spirit##68462
		turnin Flowing Pandaren Spirit##32439 |goto Dread Wastes 61.1,87.5
		|only if havequest(32439)
	step
		_Gorespine_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Gorespine defeated |q 32869/1 |goto Dread Wastes 26.1,50.2
		|modelnpc 68558
	step
		_Ti'un the Wanderer_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Ti'un the Wanderer defeated |q 32869/3 |goto Townlong Steppes 72.3,79.8
		|modelnpc 68562
	step
		_Burning Pandaren Spirit_
		This enemy uses a dragonkin, flying and elemental pet
		They are strong against flying, beast, and mechanical pets, respectively
		They are weak against humanoid, magic, and aquatic pets, respectively
		I would suggest using a humanoid, magic, and aquatic pet against this enemy
		Burning Pandaren Spirit defeated |quest 32428/1 |goto Townlong Steppes 57.1,42.1
		|modelnpc 68463
		|only if havequest(32428)
	step
		talk Burning Pandaren Spirit##68463
		accept Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.1,42.1
		|only if completedq(32428)
	step
		_Burning Pandaren Spirit_
		This enemy uses a dragonkin, flying and elemental pet
		They are strong against flying, beast, and mechanical pets, respectively
		They are weak against humanoid, magic, and aquatic pets, respectively
		I would suggest using a humanoid, magic, and aquatic pet against this enemy
		Burning Pandaren Spirit defeated |quest 32434/1 |goto Townlong Steppes 57.1,42.1
		|modelnpc 68463
		|only if havequest(32434)
	step
		talk Burning Pandaren Spirit##68463
		turnin Burning Pandaren Spirit##32434 |goto Townlong Steppes 57.1,42.1
		|only if havequest(32434)
	step
		_Kafi_
		This enemy is a beast
		It is strong against humanoids and weak against mechanical pets
		I would suggest using a team of mechanical pets against this enemy
		Kafi defeated |q 32604/2 |goto Kun-Lai Summit 35.2,56.2
		|modelnpc 68563
	step
		_Thundering Pandaren Spirit_
		This enemy uses a beast, elemental, and magic pet
		They are strong against humanoids, mechanical, and aquatic pets, respectively
		They are weak against mechanical, aquatic, and dragonkin pets, respectively
		I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
		Thundering Pandaren Spirit defeated |q 32428/2 |goto Kun-Lai Summit 64.9,93.8
		|modelnpc 68465
		|only if havequest(32428)
	step
		talk Thundering Pandaren Spirit##68465
		accept Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.9,93.8
		|only if completedq(32428)
	step
		_Thundering Pandaren Spirit_
		This enemy uses a beast, elemental, and magic pet
		They are strong against humanoids, mechanical, and aquatic pets, respectively
		They are weak against mechanical, aquatic, and dragonkin pets, respectively
		I would suggest using a mechanical, aquatic, and dragonkin pet against this enemy
		Thundering Pandaren Spirit defeated |q 32441/1 |goto Kun-Lai Summit 64.9,93.8
		|modelnpc 68465
		|only if havequest(32441)
	step
		talk Thundering Pandaren Spirit##68465
		turnin Thundering Pandaren Spirit##32441 |goto Kun-Lai Summit 64.9,93.8
		|only if havequest(32441)
	step
		_Dos-Ryga_
		This enemy is aquatic
		It is strong against undead and weak to flying pets
		I would suggest using flying pets against this enemy
		Dos-Ryga defeated |q 32604/3 |goto Kun-Lai Summit 67.9,84.7
		|modelnpc 68564
	step
		_Whispering Pandaren Spirit_
		This enemy uses a flying, elemental, and dragonkin pet
		They are strong against beast, mechanical, and flying pets, respectively
		They are weak against magic, aquatic, and humanoid pets, respectively
		I would suggest using a magic, aquatic, and humanoid pet against this enemy
		Whispering Pandaren Spirit defeated |q 32428/3 |goto The Jade Forest 28.9,36
		|modelnpc 68464
		|only if havequest(32428)
	step
		talk Whispering Pandaren Spirit##68464
		accept Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.9,36
		|only if completedq(32428)
	step
		_Whispering Pandaren Spirit_
		This enemy uses a flying, elemental, and dragonkin pet
		They are strong against beast, mechanical, and flying pets, respectively
		They are weak against magic, aquatic, and humanoid pets, respectively
		I would suggest using a magic, aquatic, and humanoid pet against this enemy
		Whispering Pandaren Spirit defeated |q 32440/1 |goto The Jade Forest 28.9,36
		|modelnpc 68464
		|only if havequest(32440)
	step
		talk Whispering Pandaren Spirit##68464
		turnin Whispering Pandaren Spirit##32440 |goto The Jade Forest 28.9,36
		|only if havequest(32440)
	step
		_Ka'wi the Gorger_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using a team of mechanical pets against this enemy
		Ka'wi the Gorger defeated |q 32604/1 |goto The Jade Forest 48.4,71.0
		|modelnpc 68555
	step
		_Nitun_
		This enemy is a critter
		Is is strong against Elementals and weak to beast attacks
		I would suggest using beast pets against this enemy
		Nitun defeated |q 32604/4 |goto The Jade Forest 57.0,29.1
		|modelnpc 68565
	step
		talk Gentle San##64582
		turnin Beasts of Fable Book I##32604 |goto Vale of Eternal Blossoms 60.8,23.7
		turnin Beasts of Fable Book II##32868 |goto Vale of Eternal Blossoms 60.8,23.7
		turnin Beasts of Fable Book III##32869 |goto Vale of Eternal Blossoms 60.8,23.7
		turnin Pandaren Spirit Tamer##32428 |only if not completedq(32428) |goto Vale of Eternal Blossoms 60.8,23.7
]])