if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end


-- This don't appear to be used in any of our files.
ZygorGuidesViewer:RegisterInclude("basic_mounts",[[
	step
	label "route"
		Redirecting to Apprentice Riding |next "apprentice" |only if level>=20.0
		Redirecting to Journeyman Riding |next "journeyman" |only if level>=40.0
		Redirecting to Expert Riding/Flight Master's License |next "expert" |only if level>=60.0
		Redirecting to Cold Weather Flying |next "cold" |only if level>=68.0
		Redirecting to Artisan Riding |next "artisan" |only if level>=70.0
		Redirecting to Master Riding |next "master" |only if level>=80.0
	step
	label "apprentice"
		talk Maztha##44919
		learn Apprentice Riding##33388 |goto Orgrimmar 49.0,59.6
		|only Orc
	step
		talk Ogunaro Wolfrunner##3362
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Horn of the Black Wolf##46099 |or |goto Orgrimmar 61.6,35.6
		buy 1 Horn of the Brown Wolf##5668 |or |goto Orgrimmar 61.6,35.6
		buy 1 Horn of the Dire Wolf##5665 |or |goto Orgrimmar 61.6,35.6
		buy 1 Horn of the Timber Wolf##1132 |or |goto Orgrimmar 61.6,35.6
		|only Orc
		|next "end"
	step
		talk Velma Warnam##4773
		learn Apprentice Riding##33388 |goto Tirisfal Glades 61.8,51.8
		|only Undead
	step
		talk Zachariah Post##4731
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Black Skeletal Horse##46308 |or |goto Tirisfal Glades 61.8,51.8
		buy 1 Blue Skeletal Horse##13332 |or |goto Tirisfal Glades 61.8,51.8
		buy 1 Brown Skeletal Horse##13333 |or |goto Tirisfal Glades 61.8,51.8
		buy 1 Red Skeletal Horse##13331 |or |goto Tirisfal Glades 61.8,51.8
		|only Undead
		|next "end"
	step
		talk Kar Stormsinger##3690
		learn Apprentice Riding##33388 |goto Mulgore 47.6,58.0
		|only Tauren
	step
		talk Harb Clawhoof##3685
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 White Kodo##46100 |or |goto Mulgore 47.6,58.0
		buy 1 Gray Kodo##15277 |or |goto Mulgore 47.6,58.0
		buy 1 Brown Kodo##15290 |or |goto Mulgore 47.6,58.0
		|only Tauren 
		|next "end"
	step
		talk Xar'Ti##7953
		learn Apprentice Riding##33388 |goto Durotar 55.2,75.4
		|only Troll
	step
		talk Zjolnir##7952
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Whistle of the Emerald Raptor##8588 |or |goto Durotar 55.2,75.6
		buy 1 Whistle of the Turquoise Raptor##8591 |or |goto Durotar 55.2,75.6
		buy 1 Whistle of the Violet Raptor##8592 |or |goto Durotar 55.2,75.6
		|only Troll
		|next "end"
	step
		talk Perascamin##16280
		learn Apprentice Riding##33388 |goto Eversong Woods 61.2,54.0
		|only Blood Elf
	step
		talk Winaestra##16264
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Black Hawkstrider##29221 |or |goto Eversong Woods 61.0,54.6
		buy 1 Blue Hawkstrider##29220 |or |goto Eversong Woods 61.0,54.6
		buy 1 Purple Hawkstrider##29222 |or |goto Eversong Woods 61.0,54.6
		buy 1 Red Hawkstrider##28927 |or |goto Eversong Woods 61.0,54.6
		|only Blood Elf
		|next "end"
	step
		talk Revi Ramrod##48513
		learn Apprentice Riding##33388 |goto Orgrimmar 36.6,87.0
		|only Goblin
	step
		talk Kall Worthaton##48510
		buy 1 Goblin Trike Key##62461 |goto Orgrimmar 36.2,86.6
		|only Goblin
		|next "end"
	step
		talk Maztha##44919
		learn Apprentice Riding##33388 |goto Orgrimmar 49.0,59.6
		|only Pandaren
	step
		talk Turtlemaster Odai##66022
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Reins of the Black Dragon Turtle##91008 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Blue Dragon Turtle##91009 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Brown Dragon Turtle##91005 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Green Dragon Turtle##91004 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Purple Dragon Turtle##91006 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Red Dragon Turtle##91007 |or |goto Orgrimmar 69.8,41.0
		|only Pandaren
		|next "end"
	step
	label "journeyman"
		talk Maztha##44919
		learn Journeyman Riding##33391 |goto Orgrimmar 49.0,59.6
		|only Orc
	step
		talk Ogunaro Wolfrunner##3362
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Horn of the Swift Gray Wolf##18798 |or |goto Orgrimmar 61.6,35.6
		buy 1 Horn of the Swift Brown Wolf##18796 |or|goto Orgrimmar 61.6,35.6
		buy 1 Horn of the Swift Timber Wolf##18797 |or |goto Orgrimmar 61.6,35.6
		Click here if you wish to use the mount you purchased before. |confirm
		|only Orc
		|next "end"
	step
		talk Velma Warnam##4773
		learn Journeyman Riding##33391 |goto Tirisfal Glades 61.8,51.8
		|only Undead
	step
		talk Zachariah Post##4731
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Green Skeletal Warhorse##13334 |or |goto Tirisfal Glades 61.8,51.8
		buy 1 Ochre Skeletal Warhorse##47101 |or |goto Tirisfal Glades 61.8,51.8
		buy 1 Purple Skeletal Warhorse##18791 |or |goto Tirisfal Glades 61.8,51.8
		Click here if you wish to use the mount you purchased before. |confirm
		|only Undead
		|next "end"
	step
		talk Kar Stormsinger##3690
		learn Journeyman Riding##33391 |goto Mulgore 47.6,58.0
		|only Tauren
	step
		talk Harb Clawhoof##3685
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Great White Kodo##18794 |or |goto Mulgore 47.6,58.0
		buy 1 Great Gray Kodo##18795 |or |goto Mulgore 47.6,58.0
		buy 1 Great Brown Kodo##15290 |or |goto Mulgore 47.6,58.0
		Click here if you wish to use the mount you purchased before. |confirm
		|only Tauren
		|next "end"
	step
		talk Xar'Ti##7953
		learn Journeyman Riding##33391 |goto Durotar 55.2,75.4
		|only Troll
	step
		talk Zjolnir##7952
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Blue Raptor##18788 |or |goto Durotar 55.2,75.6
		buy 1 Swift Olive Raptor##18789 |or |goto Durotar 55.2,75.6
		buy 1 Swift Orange Raptor##18790 |or |goto Durotar 55.2,75.6
		Click here if you wish to use the mount you purchased before. |confirm
		|only Troll
		|next "end"
	step
		talk Perascamin##16280
		learn Journeyman Riding##33391 |goto Eversong Woods 61.2,54.0
		|only Blood Elf
	step
		talk Winaestra##16264
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Green Hawkstrider##29223 |or |goto Eversong Woods 61.0,54.6
		buy 1 Swift Pink Hawkstrider##28936 |or |goto Eversong Woods 61.0,54.6
		buy 1 Swift Purple Hawkstrider##29224 |or |goto Eversong Woods 61.0,54.6
		Click here if you wish to use the mount you purchased before. |confirm
		|only Blood Elf
		|next "end"
	step
		talk Revi Ramrod##48513
		learn Journeyman Riding##33391 |goto Orgrimmar 36.6,87.0
		|only Goblin
	step
		talk Kall Worthaton##48510
		|tip You can use the level 20 mount you purchased, or pick this new mount.
		buy 1 Goblin Turbo-Trike Key##62462 |goto Orgrimmar 36.2,86.6
		Click here if you wish to use the mount you purchased before. |confirm
		|only Goblin
		|next "end"
	step
		talk Maztha##44919
		learn Journeyman Riding##33391 |goto Orgrimmar 49.0,59.6
		|only Pandaren
	step
		talk Turtlemaster Odai##66022
		|tip You can use the level 20 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Reins of the Great Black Dragon Turtle##91011 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Great Blue Dragon Turtle##91013 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Great Brown Dragon Turtle##91014 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Great Green Dragon Turtle##91012 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Great Purple Dragon Turtle##91015 |or |goto Orgrimmar 69.8,41.0
		buy 1 Reins of the Great Red Dragon Turtle##91010 |or |goto Orgrimmar 69.8,41.0
		Click here if you wish to use the mount you purchased before. |confirm
		|only Pandaren
		|next "end"
	step
	label "expert"
		talk Maztha##44919
		learn Expert Riding##34090 |goto Orgrimmar 49.0,59.6
		learn Flight Master's License##90267 |goto Orgrimmar 49.0,59.6
	step
		talk Drakma##44918
		|tip You can pick which one of these mounts you would like to use for your character.
		buy 1 Blue Wind Rider##25475 |or |goto Orgrimmar 48.0,58.6
		buy 1 Green Wind Rider##25476 |or |goto Orgrimmar 48.0,58.6
		buy 1 Tawny Wind Rider##25474 |or |goto Orgrimmar 48.0,58.6
		|next "end"
	step
	label "cold"
		talk Maztha##44919
		learn Cold Weather Flying##54197 |goto Orgrimmar 49.0,59.6
		|next "end"
	step
	label "artisan"
		talk Maztha##44919
		learn Artisan Riding##34091 |goto Orgrimmar 49.0,59.6
	step
		talk Drakma##44918
		|tip You can use the level 60 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Green Wind Rider##25531 |or |goto Orgrimmar 48.0,58.6
		buy 1 Swift Purple Wind Rider##25533 |or |goto Orgrimmar 48.0,58.6
		buy 1 Swift Red Wind Rider##25477 |or |goto Orgrimmar 48.0,58.6
		buy 1 Swift Yellow Wind Rider##25532 |or |goto Orgrimmar 48.0,58.6
		|next "end"
	step
	label "master"
		talk Maztha##44919
		learn Artisan Riding##34091 |goto Orgrimmar 49.0,59.6
	step
		talk Drakma##44918
		|tip You can use the level 60 or 70 mount you purchased, or pick which one of these new mounts you would like to use for your character.
		buy 1 Swift Green Wind Rider##25531 |or |goto Orgrimmar 48.0,58.6
		buy 1 Swift Purple Wind Rider##25533 |or |goto Orgrimmar 48.0,58.6
		buy 1 Swift Red Wind Rider##25477 |or |goto Orgrimmar 48.0,58.6
		buy 1 Swift Yellow Wind Rider##25532 |or |goto Orgrimmar 48.0,58.6
		|next "end"
]])