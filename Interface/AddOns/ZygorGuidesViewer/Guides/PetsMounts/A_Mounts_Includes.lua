if UnitFactionGroup("player")~="Alliance" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end


-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("basic_mounts",[[
	step
	label "route"
		Redirecting to Apprentice Riding |next "apprentice" |only if level>=20.0 and not achieved(891)
		Redirecting to Journeyman Riding |next "journeyman" |only if level>=40.0 and not achieved(889)
		Redirecting to Expert Riding/Flight Master's License |next "expert" |only if level>=60.0 and not achieved(890)
		Redirecting to Flight License Flying |next "flightlicense" |only if level>=60.0 and not knowspell(90267)
		Redirecting to Cold Weather Flying |next "cold" |only if level>=68.0 and not knowspell(54197)
		Redirecting to Riding |next "artisan" |only if level>=70.0 and not achieved(892)
		Redirecting to Master Riding |next "master" |only if level>=80.0 and not achieved(5180)
		Redirecting to Pandaria Flying |next "pandarialicense" |only if level>=90.0 and not knowspell(115913)
		Redirecting to All Known |next "allknown" |only if knowspell(115913) and achieved(5180)
		Redirecting to Nothing Available |next "noneavail" |only if default
//APPRENTICE
	step
	label "apprentice"
		talk Darlene Stokx##43693
		learn Apprentice Riding##33388 |goto Stormwind City 77.6,67.2
		|only Human
	step
		talk Katie Stokx##43694
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Black Stallion Bridle##2411 |or |goto Stormwind City 77.0,67.8
		buy 1 Brown Stallion Bridle##5656 |or |goto Stormwind City 77.0,67.8
		buy 1 Chestnut Mare Bridle##5655 |or |goto Stormwind City 77.0,67.8
		buy 1 Pinto Bridle##2414 |or |goto Stormwind City 77.0,67.8
		|only Human
		|next "end"
	step
		talk Ultham Ironhorn##4772
		learn Apprentice Riding##33388 |goto Dun Morogh 71.2,48.4
		|only Dwarf
	step
		talk Veron Amberstill##1261
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Brown Ram##5872 |or |goto Dun Morogh 70.6,48.8
		buy 1 Gray Ram##5864 |or |goto Dun Morogh 70.6,48.8
		buy 1 White Ram##5873 |or |goto Dun Morogh 70.6,48.8
		|only Dwarf
		|next "end"
	step
		talk Jartsam##4753
		learn Apprentice Riding##33388 |goto Darnassus 42.6,33.6
		|only Night Elf
	step
		talk Lelanai##4730
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Reins of the Spotted Frostsaber##8632 |or |goto Darnassus 42.6,32.8
		buy 1 Reins of the Striped Dawnsaber##47100 |or |goto Darnassus 42.6,32.8
		buy 1 Reins of the Striped Frostsaber##8631 |or |goto Darnassus 42.6,32.8
		buy 1 Reins of the Striped Nightsaber##8629 |or |goto Darnassus 42.6,32.8
		|only Night Elf
		|next "end"
	step
		talk Binjy Featherwhistle##7954
		learn Apprentice Riding##33388 |goto Dun Morogh 56.2,46.4
		|only Gnome
	step
		talk Milli Featherwhistle##7955
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Blue Mechanostrider##8595 |or |goto Dun Morogh 56.2,46.2
		buy 1 Green Mechanostrider##13321 |or |goto Dun Morogh 56.2,46.2
		buy 1 Red Mechanostrider##8563 |or |goto Dun Morogh 56.2,46.2
		buy 1 Unpainted Mechanostrider##13322 |or |goto Dun Morogh 56.2,46.2
		|only Gnome
		|next "end"
	step
		talk Aalun##20914
		learn Apprentice Riding##33388 |goto The Exodar 81.4,52.6
		|only Draenei
	step
		talk Torallius the Pack Handler##17584
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Brown Elekk##28481 |or |goto The Exodar 81.6,52.6
		buy 1 Gray Elekk##29744 |or |goto The Exodar 81.6,52.6
		buy 1 Purple Elekk##29743 |or |goto The Exodar 81.6,52.6
		|only Draenei
		|next "end"
	step
		talk Jartsam##4753
		learn Apprentice Riding##33388 |goto Darnassus 42.6,33.6
		|only Worgen
	step
		talk Astrid Langstrump##55285
		buy 1 Mountain Horse##73838 |goto Darnassus 48.6,22.2
		|only Worgen
		|next "end"
	step
		talk Darlene Stokx##43693
		learn Apprentice Riding##33388 |goto Stormwind City 77.6,67.2
		|only Pandaren
	step
		talk Old Whitenose##65068
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Reins of the Black Dragon Turtle##87795 |or |goto 67.8,18.6
		buy 1 Reins of the Blue Dragon Turtle##87796 |or |goto 67.8,18.6
		buy 1 Reins of the Brown Dragon Turtle##87797 |or |goto 67.8,18.6
		buy 1 Reins of the Green Dragon Turtle##82765 |or |goto 67.8,18.6
		buy 1 Reins of the Purple Dragon Turtle##87799 |or |goto 67.8,18.6
		buy 1 Reins of the Red Dragon Turtle##87800 |or |goto 67.8,18.6
		|only Pandaren
		|next "end"
//JOURNEYMAN
	step
	label "journeyman"
		talk Darlene Stokx##43693
		learn Journeyman Riding##33391 |goto Stormwind City 77.6,67.2
		|only Human
	step
		talk Katie Stokx##43694
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Brown Steed##18777 |or |goto Stormwind City 77.0,67.8
		buy 1 Swift Palomino##18776 |or |goto Stormwind City 77.0,67.8
		buy 1 Swift White Steed##18778 |or |goto Stormwind City 77.0,67.8
		|only Human
		|next "end"
	step
		talk Ultham Ironhorn##4772
		learn Journeyman Riding##33391 |goto Dun Morogh 71.2,48.4
		|only Dwarf
	step
		talk Veron Amberstill##1261
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Brown Ram##18786 |or |goto Dun Morogh 70.6,48.8
		buy 1 Swift Gray Ram##18787 |or |goto Dun Morogh 70.6,48.8
		buy 1 Swift White Ram##18785 |or |goto Dun Morogh 70.6,48.8
		|only Dwarf
		|next "end"
	step
		talk Jartsam##4753
		learn Journeyman Riding##33391 |goto Darnassus 42.6,33.6
		|only Night Elf
	step
		talk Lelanai##4730
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Reins of the Swift Frostsaber##18766 |or |goto Darnassus 42.6,32.8
		buy 1 Reins of the Swift Mistsaber##18767 |or |goto Darnassus 42.6,32.8
		buy 1 Reins of the Swift Stormsaber##18902 |or |goto Darnassus 42.6,32.8
		|only Night Elf
		|next "end"
	step
		talk Binjy Featherwhistle##7954
		learn Journeyman Riding##33391 |goto Dun Morogh 56.2,46.4
		|only Gnome
	step
		talk Milli Featherwhistle##7955
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Green Mechanostrider##18772 |or |goto Dun Morogh 56.2,46.2
		buy 1 Swift White Mechanostrider##18773 |or |goto Dun Morogh 56.2,46.2
		buy 1 Swift Yellow Mechanostrider##18774 |or |goto Dun Morogh 56.2,46.2
		|only Gnome
		|next "end"
	step
		talk Aalun##20914
		learn Journeyman Riding##33391 |goto The Exodar 81.4,52.6
		|only Draenei
	step
		talk Torallius the Pack Handler##17584
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Great Blue Elekk##29745 |or |goto The Exodar 81.6,52.6
		buy 1 Great Green Elekk##29746 |or |goto The Exodar 81.6,52.6
		buy 1 Great Purple Elekk##29747 |or |goto The Exodar 81.6,52.6
		|only Draenei
		|next "end"
	step
		talk Jartsam##4753
		learn Journeyman Riding##33391 |goto Darnassus 42.6,33.6
		|only Night Elf
	step
		talk Astrid Langstrump##55285
		|tip You can use the level 20 mount you purchased, or pick this new mount.
		buy 1 Swift Mountain Horse##73839 |goto Darnassus 48.6,22.2
		|only Worgen
		|next "end"
	step
		talk Darlene Stokx##43693
		learn Journeyman Riding##33391 |goto Stormwind City 77.6,67.2
		|only Pandaren
	step
		talk Old Whitenose##65068
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Reins of the Black Dragon Turtle##87795 |or|goto 67.8,18.6
		buy 1 Reins of the Blue Dragon Turtle##87796 |or |goto 67.8,18.6
		buy 1 Reins of the Brown Dragon Turtle##87797 |or |goto 67.8,18.6
		buy 1 Reins of the Green Dragon Turtle##82765 |or |goto 67.8,18.6
		buy 1 Reins of the Purple Dragon Turtle##87799 |or |goto 67.8,18.6
		buy 1 Reins of the Red Dragon Turtle##87800 |or |goto 67.8,18.6
		|only Pandaren
		|next "end"
//EXPERT
	step
	label "expert"
		talk Bralla Cloudwing##43769
		learn Expert Riding##34090 |goto Stormwind City 70.6,73.0
	step
		talk Tannec Stonebeak##43768
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Ebon Gryphon##25471 |or |goto Stormwind City 71.4,72.2
		buy 1 Golden Gryphon##25470 |or |goto Stormwind City 71.4,72.2
		buy 1 Snowy Gryphon##25472 |or |goto Stormwind City 71.4,72.2
		|next "end"
//FLIGHT LICENSE //TODO
	step
	label "flightlicense"
		talk Bralla Cloudwing##43769
		learn Flight Master's License##90267 |goto Stormwind City 70.6,73.0
		|next "end"
//COLD WEATHER
	step
	label "cold"
		talk Bralla Cloudwing##43769
		learn Cold Weather Flying##54197 |goto Stormwind City 70.6,73.0
		|next "end"
//ARTISAN
	step
	label "artisan"
		talk Bralla Cloudwing##43769
		learn Artisan Riding##34091 |goto Stormwind City 70.6,73.0
	step
		talk Tannec Stonebeak##43768
		|tip You can use the level 60 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Blue Gryphon##25473 |or |goto Stormwind City 71.4,72.2
		buy 1 Swift Green Gryphon##25528 |or |goto Stormwind City 71.4,72.2
		buy 1 Swift Purple Gryphon##25529 |or |goto Stormwind City 71.4,72.2
		buy 1 Swift Red Gryphon##25527 |or |goto Stormwind City 71.4,72.2
		|next "end"
//MASTER
	step
	label "master"
		talk Bralla Cloudwing##43769
		learn Artisan Riding##34091 |goto Stormwind City 70.6,73.0
	step
		talk Tannec Stonebeak##43768
		|tip You can use the level 60 or 70 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Blue Gryphon##25473 |or |goto Stormwind City 71.4,72.2
		buy 1 Swift Green Gryphon##25528 |or |goto Stormwind City 71.4,72.2
		buy 1 Swift Purple Gryphon##25529 |or |goto Stormwind City 71.4,72.2
		buy 1 Swift Red Gryphon##25527 |or |goto Stormwind City 71.4,72.2
		|next "end"
//Panda LICENSE //TODO
	step
	label "pandarialicense"
		talk Cloudrunner Leng##60166
		learn Wisdom of the Four Winds##115913 |goto Shrine of Seven Stars
		|next "end"
//EXTRAS
	step
	label "allknown"
		Congratulations, you have all mount training available!
		|confirm |next "end"
	step
	label "noneavail"
		No new mount training is available at this time.
		|confirm |next "end"
	step
	label "end"
		You have reached the end of the guide
		|confirm
]])