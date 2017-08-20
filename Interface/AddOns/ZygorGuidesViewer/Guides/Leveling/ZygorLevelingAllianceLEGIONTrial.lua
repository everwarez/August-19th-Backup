local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Starter Guides\\Demon Hunter Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Demon Hunter quests and unlocking the Havoc and Vengeance artifacts.",
condition_suggested="raceclass('DemonHunter') and level>=98",
condition_suggested_exclusive=true,
image=ZGV.DIR.."\\Guides\\Images\\Mardum",
startlevel=98.0,
},[[
step
talk Kayn Sunfury##93011
accept The Invasion Begins##40077 |goto Mardum, the Shattered Abyss C/0 22.08,55.83
step
Kill enemies around this area
Slay #15# Demons |q 40077/1 |goto 28.10,65.30
step
click Legion Banner
Change the Legion Banner |q 40077/2 |goto 28.66,62.92
step
talk Kayn Sunfury##98229
turnin The Invasion Begins##40077 |goto 28.60,63.06
accept Bonus Objective: Assault on Mardum##39279 |goto 28.60,63.06
accept Enter the Illidari: Ashtongue##40378 |goto 28.60,63.06
step
click Legion Gateway Activator
Summon the Ashtongue Forces |q 40378/1 |goto 31.57,61.89
step
Watch the dialogue
click Felsaber##101518
Accept Illidan's Gift |q 40378/2 |goto 31.53,62.37
stickystart "AssaultOnMardum"
step
Find Allari to the Southeast |q 40378/3 |goto 32.18,69.63
step
talk Allari the Souleater##94410
turnin Enter the Illidari: Ashtongue##40378 |goto 33.94,70.05
accept Set Them Free##38759 |goto 33.94,70.05
accept Eye On the Prize##39049 |goto 33.94,70.05
step
talk Sevis Brightflame##100982
accept Enter the Illidari: Coilskar##40379 |goto 33.94,69.96
step
kill Anguish Jailer##95226+
get Soulwrought Key##128227 |q 38759/1 |goto 38.29,73.76
step
click Jailer Cage##103381
Free Cyana Nightglaive |q 38759/3 |goto 39.34,71.72
step
click Jailer Cage##103381
Free Belath Dawnblade |q 38759/2 |goto 41.73,73.22
step
kill Inquisitor Baleful##93105
Slay Inquisitor Baleful & Take His Power |q 39049/1 |goto 42.64,79.34
step
talk Ashtongue Mystic##99914
Sacrifice the Soul |q 40379/1 |goto 43.44,72.69
step
click Legion Gateway Activator
Summon the Coilskar Forces |q 40379/2 |goto 43.79,72.04
step
click Jailer Cage##103381
Free Mannethrel Darkstar |q 38759/5 |goto 41.57,66.68
step
Enter the cave |goto 39.10,68.55 < 5 |walk
click Jailer Cage##103381
|tip Inside the small room.
Free Izal Whitemoon |q 38759/4 |goto 38.62,67.90
step "AssaultOnMardum"
Kill enemies around this area
click Legion Communicators
click Fel Spreaders
Assault the Legion in the Lowlands |q 39279/1 |goto 42.16,73.96
step
Follow the path |goto 40.09,67.11 < 30
talk Jace Darkweaver##93759
turnin Set Them Free##38759 |goto 38.80,60.64
turnin Eye On the Prize##39049 |goto 38.80,60.64
turnin Enter the Illidari: Coilskar##40379 |goto 38.80,60.64
accept Meeting With the Queen##39050 |goto 38.80,60.64
step
click Nether Crucible
Complete the Ritual |q 39050/1 |goto 38.75,60.52
step
talk Jace Darkweaver##93759
turnin Meeting With the Queen##39050 |goto 38.80,60.64
accept Enter the Illidari: Shivarra##38765 |goto 38.80,60.64
accept Before We're Overrun##38766 |goto 38.80,60.64
step
Follow the path up |goto 39.33,57.01 < 30
clicknpc Spire Stabilizers ##6477+
|tip They look like big green floating crystals nearby.
kill Doom Commander Beliash##93221
Slay Beliash & Take His Power |q 38766/1 |goto 35.16,39.57
step
Follow the path up |goto 37.75,40.17 < 30
talk Sevis Brightflame##99915
Tell him _"Sevis, I need to sacrifice you in order to power the final gateway."_
Tell him_"I'm certain, Sevis. I need to sacrifice you to power the gateway."_
Make the Sacrifice |q 38765/1 |goto 39.69,39.47
step
click Legion Gateway Activator
Summon the Shivarra Forces |q 38765/2 |goto 40.36,38.42
step
Follow the path |goto 45.51,47.30 < 30
talk Kayn Sunfury##93127
turnin Enter the Illidari: Shivarra##38765 |goto 60.51,44.75
turnin Before We're Overrun##38766 |goto 60.51,44.75
accept Orders for Your Captains##38813 |goto 60.51,44.75
step
talk Lady S'theno##93693
Brief Lady Lady S'theno |q 38813/2 |goto 59.24,46.13
step
talk Matron Mother Malevolence##94435
Brief Matron Mother Malevolence |q 38813/3 |goto 60.98,46.97
step
talk Battlelord Gaardoun##90247
Brief Battlelord Gaardoun |q 38813/1 |goto 62.18,46.29
step
talk Kayn Sunfury##93127
turnin Orders for Your Captains##38813 |goto 60.51,44.75
accept Give Me Sight Beyond Sight##39262 |goto 60.51,44.75
step
Follow the path up |goto 62.86,49.52 < 30
talk Jace Darkweaver##96436
Speak with Jace Darkweaver |q 39262/1 |goto 64.05,52.29
step
Use your Spectral Sight ability
|tip Look toward the cave entrance blocked by huge boulders.
Face the Cave & Use Spectral Sight |q 39262/2 |goto 63.86,53.13
step
talk Jace Darkweaver##96436
turnin Give Me Sight Beyond Sight##39262 |goto 64.05,52.29
accept Hidden No More##39495 |goto 64.05,52.29
step
Enter the cave |goto 63.59,53.98 > 1000
Follow the path up |goto Mardum, the Shattered Abyss C/1 33.75,43.35 < 20
Run up the stairs |goto 31.89,61.25 < 20
kill Fel Lord Caza##96441
Slay Caza & Take His Power |q 39495/1 |goto 60.93,62.58
step
Glide down here |goto 55.24,56.71 < 10
Follow the path up |goto 42.54,39.43 < 20
Leave the cave |goto 50.49,13.89 > 1000
talk Kayn Sunfury##93127
turnin Hidden No More##39495 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
accept Stop the Bombardment##38727 |goto Mardum, the Shattered Abyss C/0 60.51,44.76
step
talk Cyana Nightglaive##96420
accept Their Numbers Are Legion##38819 |goto 60.54,44.87
step
talk Allari the Souleater##96655
accept Into the Foul Creche##38725 |goto 60.52,44.67
stickystart "NumbersAreLegion"
step
Follow the path |goto 66.99,52.09 < 30
click Illidari Banner
Watch the dialogue
Destroy the Doom Fortress Devastator |q 38727/1 |goto 69.28,48.78
step
Run up the path |goto 70.79,50.27 < 30
Follow the path |goto 74.21,51.37 < 30
Follow the path |goto 77.74,47.63 < 30
click Illidari Banner
Watch the dialogue
Destroy the Forge of Corruption Devastator |q 38727/2 |goto 75.01,41.09
step
Follow the path up |goto 75.60,40.19 < 30
talk Kor'vas Bloodthorn##98711
turnin Into the Foul Creche##38725 |goto 73.16,33.82
accept The Imp Mother's Tome##40222 |goto 73.16,33.82
stickystop "NumbersAreLegion"
step
Enter the cave |goto 73.72,32.13 < 15
Follow the path |goto 76.26,30.05 < 20
kill Prolifica##98986
get Tome of Fel Secrets##129957 |q 40222/1 |goto 77.12,27.69
stickystart "NumbersAreLegion"
step
Follow the path |goto 76.26,30.05 < 20
Leave the cave |goto 73.72,32.13 < 20
Follow the path |goto 72.57,32.96 < 30
click Illidari Banner
Watch the dialogue
Destroy the Soul Engine Devastator |q 38727/3 |goto 66.40,30.40
step "NumbersAreLegion"
Kill enemies around this area
click Doom Fortress Stabilizers, Soul Harvesters
|tip They look like big green floating crystals.
click Demon Hunters, Ashtongue Warriors
|tip They look like bodies laying on the ground with red tear drop icons above them.
Complete the War Progress |q 38819/1 |goto 65.73,28.83
step
Follow the path |goto 62.43,34.94 < 30
Jump across the cracked bridge |goto 59.57,41.00 < 30
talk Kayn Sunfury##93127
turnin Stop the Bombardment##38727 |goto 60.51,44.75
turnin Their Numbers Are Legion##38819 |goto 60.51,44.75
step
talk Kor'vas Bloodthorn##99045
turnin The Imp Mother's Tome##40222 |goto 60.51,44.83
accept Fel Secrets##40051 |goto 60.51,44.83
step
click Tome of Fel Secrets
Choose Your Specialization:
|tip Havoc specialization is a DPS spec.
|tip Vengeance specialization is a Tank spec.
Choose Between Havoc & Vengeance |q 40051/1 |goto 60.54,44.77
step
talk Kayn Sunfury##93127
turnin Fel Secrets##40051 |goto 60.51,44.75 |oncomplete ZGV:QuestRewardConfirm()
step
talk Kayn Sunfury##93127
accept Cry Havoc and Let Slip the Illidari!##39516 |goto 60.51,44.75
|only if raceclass("DemonHunter") and selected("DEMONHUNTER_Havoc")
step
talk Kayn Sunfury##93127
accept Vengeance Will Be Mine!##39515 |goto 60.51,44.75
|only if raceclass("DemonHunter") and selected("DEMONHUNTER_Vengeance")
step
talk Cyana Nightglaive##96420
Teach Cyana |q 39516/2 |goto 60.55,44.86
|only if havequest(39516) or completedq(39516)
step
talk Kor'vas Bloodthorn##99045
Teach Kor'vas |q 39516/4 |goto 60.51,44.82
|only if havequest(39516) or completedq(39516)
step
talk Kayn Sunfury##93127
Tell him _"Kayn, I will teach you what I've learned of the demonic mysteries."_
Teach Kayn |q 39516/3 |goto 60.51,44.75
|only if havequest(39516) or completedq(39516)
step
talk Allari the Souleater##96655
Teach Allari |q 39516/1 |goto 60.52,44.66
|only if havequest(39516) or completedq(39516)
step
talk Mannethrel Darkstar##96652
Teach Mannethrel |q 39516/5 |goto 60.26,44.59
|only if havequest(39516) or completedq(39516)
step
talk Cyana Nightglaive##96420
Teach Cyana |q 39515/2 |goto 60.55,44.86
|only if havequest(39515) or completedq(39515)
step
talk Kor'vas Bloodthorn##99045
Teach Kor'vas |q 39515/4 |goto 60.51,44.82
|only if havequest(39515) or completedq(39515)
step
talk Kayn Sunfury##93127
Tell him _"Kayn, I will teach you what I've learned of the demonic mysteries."_
Teach Kayn |q 39515/3 |goto 60.51,44.75
|only if havequest(39515) or completedq(39515)
step
talk Allari the Souleater##96655
Teach Allari |q 39515/1 |goto 60.52,44.66
|only if havequest(39515) or completedq(39515)
step
talk Mannethrel Darkstar##96652
Teach Mannethrel |q 39515/5 |goto 60.26,44.59
|only if havequest(39515) or completedq(39515)
step
talk Kayn Sunfury##93127
turnin Cry Havoc and Let Slip the Illidari!##39516 |or |goto 60.51,44.75 |only if havequest(39516) or completedq(39516)
turnin Vengeance Will Be Mine!##39515 |or |goto 60.51,44.75 |only if havequest(39515) or completedq(39515)
accept On Felbat Wings##39663 |goto 60.51,44.75
step
talk Izal Whitemoon##96653
Ride to the Fel Hammer |q 39663/1 |goto 62.52,44.90
step
talk Cyana Nightglaive##97297
turnin On Felbat Wings##39663 |goto 69.93,44.23
accept The Keystone##38728 |goto 69.93,44.23
step
kill Brood Queen Tyranna##95048
get Sargerite Keystone##124672 |q 38728/1 |goto 69.87,40.53
step
Find the Way Downstairs |q 38728/2 |goto 71.02,41.76
step
Follow the path down |goto 71.12,40.49 < 20
talk Kayn Sunfury##97303
turnin The Keystone##38728 |goto 69.86,37.89
accept Return to the Black Temple##38729 |goto 69.86,37.89
step
click Sargerite Keystone
Activate the Sargerite Keystone |q 38729/1 |goto 69.85,37.80
step
click Fel Portal
turnin Return to the Black Temple##38729 |goto 69.85,37.51
step
talk Maiev Shadowsong##92718
accept Breaking Out##38672 |goto Vault of the Wardens/1 80.06,36.57
step
click Altruis's Cell##103655
Free Altruis |q 38672/1 |goto 78.59,38.29
step
click Kayn's Cell##103658
Free Kayn |q 38672/2 |goto 78.56,34.93
step
Watch the dialogue
|tip Wait until the dialogue is finished until you proceed.
|confirm |q 38672 |goto 77.93,35.59
step
click Lever##211284
turnin Breaking Out##38672 |goto 77.93,35.59
step
talk Kayn Sunfury##92980
accept Rise of the Illidari##38690 |goto 74.47,35.97
step
talk Altruis the Sufferer##92986
accept Fel Infusion##38689 |goto 74.40,37.16
stickystart "RegainFelEnergy"
stickystart "RepelLegionAttackers"
step
click Warden Cells
|tip They look like green glass cases in the walls around this area.
|tip You will only be able to click some of them.
Free #8# Imprisoned Illidari |q 38690/1 |goto 73.64,32.23
step "RegainFelEnergy"
Kill enemies around this area
Regain #100# Fel Energy |q 38689/1 |goto 69.11,36.51
step "RepelLegionAttackers"
Kill enemies around this area
click Legion Portal##54513+
Repel the Legion Attackers |q 39742/1 |goto 69.11,36.51
step
Follow the path |goto 62.62,36.54 < 30
Follow the path |goto 50.95,38.63 < 30
talk Altruis the Sufferer##92986
turnin Fel Infusion##38689 |goto 49.67,49.34
step
talk Kayn Sunfury##96665
turnin Rise of the Illidari##38690 |goto 49.18,49.44
step
talk Maiev Shadowsong##92718
|tip You will only be able to accept one of these quests.
accept Stop Gul'dan!##40253 |goto 49.46,49.75 |or
accept Stop Gul'dan!##38723 |goto 49.46,49.75 |or
step
kill Crusher##66724
kill Sledge##92990
Slay Crusher & Sledge & Take Their Power |q 40253/2 |goto 49.9,77.6 |only if havequest(40253) or completedq(40253)
Slay Crusher & Sledge & Take Their Power |q 38723/2 |goto 49.9,77.6 |only if havequest(38723) or completedq(38723)
step
talk Kayn Sunfury##96665
turnin Stop Gul'dan!##40253 |goto 50.8,72.8 |only if havequest(40253) or completedq(40253)
turnin Stop Gul'dan!##38723 |goto 50.8,72.8 |only if havequest(38723) or completedq(38723)
accept Grand Theft Felbat##39682 |goto 50.8,72.8
step
Follow the path |goto 49.90,37.30 < 20
Run up the path |goto 42.73,30.02 < 20
Continue up the path |goto 54.24,29.11 < 20
click Vampiric Felbat##96659
Ride a Vampiric Felbat to the Upper Vault |q 39682/1 |goto 48.47,20.16
step
talk Kor'vas Bloodthorn##97643
turnin Grand Theft Felbat##39682 |goto Vault of the Wardens/2 41.34,47.35
accept Frozen in Time##39685 |goto Vault of the Wardens/2 41.34,47.35
accept Beam Me Up##39684 |goto Vault of the Wardens/2 41.34,47.35
step
talk Allari the Souleater##96675
|tip You will only be able to accept one of these quests.
accept Forged in Fire##40254 |goto 41.12,47.16 |or
accept Forged in Fire##39683 |goto 41.12,47.16 |or
step
Follow the path |goto 46.75,38.72 < 20
kill Immolanth##96682
Slay Immolanth & Take His Power |q 40254/1 |goto 46.79,17.11 |only if havequest(40254) or completedq(40254)
Slay Immolanth & Take His Power |q 39683/1 |goto 46.79,17.11 |only if havequest(39683) or completedq(39683)
step
Follow the path |goto 46.77,36.25 < 20
Go through the doorway |goto 54.51,48.23 < 20
click Reflective Mirror
|tip Avoid the stuff on the ground.
Rotate the Mirror |q 39684/1 |goto 70.62,49.58
step
Follow the path |goto 54.72,48.22 < 20
Go through the doorway |goto 46.79,60.08 < 20
click Countermeasures##99240
Activate the Eastern Countermeasure |q 39685/1 |goto 50.11,78.10
step
click Countermeasures##99240
Activate the Southern Countermeasure |q 39685/2 |goto 46.85,84.26
step
click Countermeasures##99240
Activate the Western Countermeasure |q 39685/3 |goto 43.41,78.25
step
Follow the path |goto 46.78,66.77 < 20
talk Allari the Souleater##96675
turnin Frozen in Time##39685 |goto 41.12,47.17
turnin Beam Me Up##39684 |goto 41.12,47.17
turnin Forged in Fire##40254 |goto 41.12,47.17 |only if havequest(40254) or completedq(40254)
turnin Forged in Fire##39683 |goto 41.12,47.17 |only if havequest(39683) or completedq(39683)
accept All The Way Up##39686 |goto 41.12,47.17
step
Ascend to the Hall of Judgement |q 39686/1 |goto 46.73,48.24
|tip Wait for the elevator to come down, then ride it up.
step
Follow the path |goto Vault of the Wardens/3 24.39,25.22 < 20
talk Kor'vas Bloodthorn##97644
turnin All The Way Up##39686 |goto 24.43,55.82
accept A New Direction##40373 |goto 24.43,55.82
step
click Pool of Judgement
View the Pool of Judgement |q 40373/1 |goto 24.40,53.08
step
talk Kor'vas Bloodthorn##97644
|tip You must now choose who to side with, Kayn Sunfury or Altruis the Sufferer.
|tip Choose whichever you agree with, it doesn't matter.
Choose Between Kayn and Altruis |q 40373/2 |goto 24.43,55.82
step
talk Kor'vas Bloodthorn##97644
turnin A New Direction##40373 |goto 24.43,55.82
|tip You will only be able to accept one of these quests.
accept Between Us and Freedom##39688 |goto 24.43,55.82 |or
accept Between Us and Freedom##39694 |goto 24.43,55.82 |or
accept Between Us and Freedom##40255 |goto 24.43,55.82 |or
accept Between Us and Freedom##40256 |goto 24.43,55.82 |or
step
Follow the path |goto 24.44,71.72 < 20
kill Bastillax##96783
Slay Bastillax & Take His Power |q 39688/1 |goto 50.38,77.52 |only if havequest(39688) or completedq(39688)
Slay Bastillax & Take His Power |q 39694/1 |goto 50.38,77.52 |only if havequest(39694) or completedq(39694)
Slay Bastillax & Take His Power |q 40255/1 |goto 50.38,77.52 |only if havequest(40255) or completedq(40255)
Slay Bastillax & Take His Power |q 40256/1 |goto 50.38,77.52 |only if havequest(40256) or completedq(40256)
step
Follow the path up |goto 67.48,77.59 < 20
Follow the path |goto 80.18,79.97 < 10
talk Kayn Sunfury##93127
|tip Altruis the Sufferer will be here instead, if you chose to side with him earlier.
turnin Between Us and FreedomFreedom##39688 |goto 84.12,82.84 |only if havequest(39688) or completedq(39688)
turnin Between Us and FreedomFreedom##39694 |goto 84.12,82.84 |only if havequest(39694) or completedq(39694)
turnin Between Us and FreedomFreedom##40255 |goto 84.12,82.84 |only if havequest(40255) or completedq(40255)
turnin Between Us and FreedomFreedom##40256 |goto 84.12,82.84 |only if havequest(40256) or completedq(40256)
step
talk Archmage Khadgar##97978
|tip You will only be able to accept one of these quests.
accept Illidari, We Are Leaving##39690 |goto 85.98,84.32 |or
accept Illidari, We Are Leaving##39689 |goto 85.98,84.32 |or
step
talk Archmage Khadgar##97978
turnin Illidari, We Are Leaving##39690 |goto 85.98,84.32 |only if havequest(39690) or completedq(39690)
turnin Illidari, We Are Leaving##39689 |goto 85.98,84.32 |only if havequest(39689) or completedq(39689)
step
talk Archmage Khadgar##97296
accept The Call of War##39691 |goto Stormwind City/0 72.55,47.01
step
Follow the path |goto 80.64,37.87 < 20
Enter the Throne Room |q 39691/1 |goto 84.39,33.74
step
talk Jace Darkweaver##102585
turnin The Call of War##39691 |goto 84.39,33.74
accept Second Sight##44471 |goto 84.39,33.74
step
Use your Spectral Sight ability
Use Spectral Sight |q 44471/1 |goto 84.39,33.74
step
talk Jace Darkweaver##102585
turnin Second Sight##44471 |goto 84.39,33.74
accept Demons Among Them##44463 |goto 84.39,33.74
step
talk Anduin Wrynn##100429
Warn Anduin Wrynn |q 44463/1 |goto 85.87,31.60
step
Kill enemies around this area
Slay #5# Demons |q 44463/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Them##44463 |goto 85.77,31.74
accept A Weapon of the Alliance##44473 |goto 85.77,31.74
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin A Weapon of the Alliance##44473 |goto 40.26,77.69
step
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
|tip You will accept one of these quests automatically.
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Legion (100-110)\\Legion Intro & Artifacts",{
author="support@zygorguides.com",
description="This guide will walk you through completing the introductory Legion quests and unlocking your class artifacts.",
condition_suggested="not raceclass('DemonHunter') and level>=100",
image=ZGV.DIR.."\\Guides\\Images\\The_Broken_Shore",
startlevel=100.0,
},[[
step
_Checking for Boosted Character..._
|next "Boosted_Start" |only if intutorial
|next "Non_Boosted_Start" |only if not intutorial
step
label "Boosted_Start"
_On the Deck of the Airship:_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Click Here to Complete the Combat Training Scenario |confirm |or |next "Start_Combat_Training"
_Or_
Click Here to Skip the Combat Training Scenario |confirm |or |next "Non_Boosted_Start"
|only if not completedq(43806) or not completedq(40519)
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
talk General Bret Hughes##100448
Talk to General Bret Hughes |scenariostage 1 |q 43806 |future
|only if intutorial
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Charge ability on the Target Dummy
|tip It appears on your action bar.
Use Charge on the Target Dummy |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Mortal Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Mortal Strike on the Target Dummy #3# Times |scenariogoal 3/30116 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Slam ability on the Target Dummy
|tip It appears on your action bar.
Use Slam on the Target Dummy #3# Times |scenariogoal 4/30117 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Colossus Smash ability on the Target Dummy
|tip It appears on your action bar.
Use Colossus Smash on the Target Dummy |scenariostage 5 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Colossus Smash #2# Times |scenariogoal 6/30118 |q 43806 |future
Use Mortal Strike #3# Times |scenariogoal 6/30116 |q 43806 |future
Use Slam #6# Times |scenariogoal 6/30117 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Arcane Construct##101738+
Use your Victory Rush ability on Arcane Constructs
|tip It appears on your action bar.
|tip You can only use the Victory Rush ability after killing an enemy.
Kill an Arcane Construct and then Use Victory Rush on the Others #2# Times |scenariogoal 7/30119 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Whirlwind ability on Arcane Constructs
|tip It appears on your action bar.
|tip Stand in the middle of the group of Arcane Constructs.
Use Whirlwind on the Arcane Constructs |scenariogoal 8/30120 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariostage 8 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Heroic Leap ability
|tip It appears on your action bar.
|tip It doesn't matter where you leap to.
Use Heroic Leap |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Warrior")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Judgement ability on the Target Dummy
|tip It appears on your action bar.
Use Judgement on the Target Dummy #2# Times |scenariogoal 2/29793 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Blade of Justice ability on the Target Dummy
|tip It appears on your action bar.
Use Blade of Justice on the Target Dummy #2# Times |scenariogoal 3/29773 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Crusader Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Crusader Strike on the Target Dummy #3# Times |scenariogoal 4/29769 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Templar's Verdict ability on the Target Dummy
|tip It appears on your action bar.
Use Templar's Verdict on the Target Dummy #3# Times |scenariogoal 5/29770 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Judgement #2# Times |scenariogoal 6/29793 |q 43806 |future
Use Blade of Justice #2# Times |scenariogoal 6/29773 |q 43806 |future
Use Crusader Strike #2# Times |scenariogoal 6/29769 |q 43806 |future
Use Templar's Verdict #2# Times |scenariogoal 6/29770 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Divine Storm ability on Arcane Constructs
|tip It appears on your action bar.
|tip Use your other abilities on the Arcane Constructs to earn 3 Holy Power so that you can use Divine Storm.
|tip Stand in the middle of the group of Arcane Constructs.
Earn 3 Holy Power and then Use Divine Storm |scenariogoal 7/32067 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariostage 7 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Divine Shield ability
|tip It appears on your action bar.
Use Divine Shield |scenariostage 8 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Flash of Light ability
|tip It appears on your action bar.
|tip Make sure you're not targeting an NPC.
Use Flash of Light to Heal Yourself #3# Times |scenariogoal 9/29772 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Paladin")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Call Pet ability
|tip It is already on your action bar.
Use Call Pet |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Kill Command ability on the Target Dummy
|tip It appears on your action bar.
Use Kill Command to Command your Pet to Attack the Target Dummy #3# Times |scenariogoal 3/29829 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Dire Beast ability on the Target Dummy
|tip It appears on your action bar.
Use Dire Beast on the Target Dummy #2# Times |scenariogoal 4/29830 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Cobra Shot ability on the Target Dummy
|tip It appears on your action bar.
Use Cobra Shot on the Target Dummy #3# Times |scenariogoal 5/29831 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Bestial Wrath ability
|tip It appears on your action bar.
Use Bestial Wrath |scenariostage 6 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Kill Command #2# Times |scenariogoal 7/29829 |q 43806 |future
Use Dire Beast #2# Times |scenariogoal 7/29830 |q 43806 |future
Use Cobra Shot #5# Times |scenariogoal 7/29831 |q 43806 |future
Use Beastial Wrath |scenariogoal 7/29832 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Multi-Shot ability on Arcane Constructs
|tip It appears on your action bar.
Use Multi-Shot on the Arcane Constructs |scenariogoal 8/29839 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariostage 8 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Feign Death ability
|tip It appears on your action bar.
Use Feign Death |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Hunter")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Deadly Poison ability
|tip It is already on your action bar.
Use Deadly Poison |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Stealth ability
|tip It appears on your action bar.
Use Stealth |scenariostage 3 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Garrote ability on the Target Dummy
|tip It appears on your action bar.
Use Garrote on the Target Dummy |scenariostage 4 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Mutilate ability on the Target Dummy
|tip It appears on your action bar.
Use Mutilate on the Target Dummy #3# Times |scenariogoal 5/30646 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Rupture ability on the Target Dummy
|tip It appears on your action bar.
Use Rupture on the Target Dummy |scenariostage 6 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Envenom ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your other abilities on the target dummy to build combo points so that you can use Envenom.
Use Envenom on the Target Dummy |scenariostage 7 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Garrote #2# Times |scenariogoal 8/30645 |q 43806 |future
Use Mutilate #4# Times |scenariogoal 8/30646 |q 43806 |future
Use Rupture |scenariogoal 8/30647 |q 43806 |future
Use Envenom |scenariogoal 8/30648 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Vanish ability
|tip It appears on your action bar.
Use Vanish |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Rogue")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Shadow Word: Pain ability on the Target Dummy
|tip It appears on your action bar.
Cast Shadow Word: Pain on the Target Dummy |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Penance ability on the Target Dummy
|tip It appears on your action bar.
Cast Penance on the Target Dummy #2# Times |scenariogoal 3/30503 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Smite ability on the Target Dummy
|tip It appears on your action bar.
Cast Smite on the Target Dummy #3# Times |scenariogoal 4/30504 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Cast Shadow Word: Pain |scenariogoal 5/30502 |q 43806 |future
Cast Penance #2# Times |scenariogoal 5/30503 |q 43806 |future
Cast Smite #4# Times |scenariogoal 5/30504 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Psychic Scream ability
|tip It appears on your action bar.
Cast Psychic Scream to Fear the Enemies Around You |scenariostage 6 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Power Word: Shield ability
|tip It appears on your action bar.
Cast Power Word: Shield on Yourself |scenariostage 7 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Plea ability
|tip It appears on your action bar.
Cast Plea to Heal Yourself #3# Times |scenariogoal 8/30523 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Priest")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Flame Shock ability on the Target Dummy
|tip It appears on your action bar.
Cast Flame Shock on the Target Dummy |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Lava Burst ability on the Target Dummy
|tip It appears on your action bar.
Cast Lava Burst on the Target Dummy #3# Times |scenariogoal 3/29960 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Lightning Bolt ability on the Target Dummy
|tip It appears on your action bar.
Cast Lightning Bolt on the Target Dummy #3# Times |scenariogoal 4/29961 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Earth Shock ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your other abilities on the Target Dummy to generat Maelstrom, so that you can use Earth Shock.
Cast Earth Shock on the Target Dummy #2# Times |scenariogoal 5/29962 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Cast Flame Shock |scenariogoal 6/29959 |q 43806 |future
Cast Lava Burst #2# Times |scenariogoal 6/29960 |q 43806 |future
Cast Lightning Bolt #4# Times |scenariogoal 6/29961 |q 43806 |future
Cast Earth Shock #2# Times |scenariogoal 6/29962 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Hex ability on the Alliance Infantry
|tip It appears on your action bar.
Cast Hex on the Soldier |scenariostage 7 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Chain Lightning ability on the Arcane Constructs
|tip It appears on your action bar.
Cast Chain Lightning on the Arcane Constructs |scenariogoal 8/29964 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariostage 8 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Healing Surge ability
|tip It appears on your action bar.
|tip Make sure you are not targeting an NPC.
Cast Healing Surge to Heal Yourself #3# Times |scenariogoal 9/32737 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Fire Elemental ability
|tip It appears on your action bar.
Cast Fire Elemental |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 13 |q 43806 |future
|only if intutorial() and raceclass("Shaman")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Summon Water Elemental ability
|tip It is already on your action bar.
Cast Summon Water Elemental |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Frostbolt ability on the Target Dummy
|tip It appears on your action bar.
Cast Frostbolt on the Target Dummy #3# Times |scenariogoal 3/30560 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Ice Lance ability on the Target Dummy
|tip It appears on your action bar.
Cast Ice Lance on the Target Dummy #3# Times |scenariogoal 4/30561 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Ice Lance ability on the Target Dummy
|tip Use your Frostbolt ability on the Target Dummy to gain the Fingers of Frost buff.
|tip Fingers of Frost appears as a buff to your character at the top right of the screen.
|tip The icon for Fingers of Frost is a blue hand.
Cast Ice Lance with Fingers of Frost #2# Times |scenariogoal 5/30614 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Cast Frostbolt #6# Times |scenariogoal 6/30560 |q 43806 |future
Cast Ice Lance #2# Times |scenariogoal 6/30561 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Blink ability
|tip It appears on your action bar.
Cast Blink |scenariostage 7 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Frost Nova ability
|tip It appears on your action bar.
|tip Wait untilt he enemy is text to you.
Cast Frost Nova to Freeze the Enemy |scenariostage 8 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Blizzard ability on the Arcane Constructs
|tip It appears on your action bar.
Cast Blizzard on the Arcane Constructs |scenariogoal 9/30622 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Mage")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Summon Voidwalker ability
|tip It is already on your action bar.
Cast Summon Voidwalker |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Agony ability on the Target Dummy
|tip It appears on your action bar.
Cast Agony on the Target Dummy |scenariostage 3 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Corruption ability on the Target Dummy
|tip It appears on your action bar.
Cast Corruption on the Target Dummy |scenariostage 4 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Drain Life ability on the Target Dummy
|tip It appears on your action bar.
Cast Drain Life on the Target Dummy #2# Times |scenariogoal 5/29813 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Unstable Affliction ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your Agony ability on the Target Dummy to generate Soul Shards, so you can use Unstable Affliction.
Cast Unstable Affliction on the Target Dummy #3# Times |scenariogoal 6/29814 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Cast Agony |scenariogoal 7/29811 |q 43806 |future
Cast Corruption |scenariogoal 7/29812 |q 43806 |future
Cast Unstable Affliction #2# Times |scenariogoal 7/29814 |q 43806 |future
Cast Drain Life #2# Times |scenariogoal 7/29813 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Life Tap ability
|tip It appears on your action bar.
Cast Life Tap #2# Times |scenariogoal 8/29816 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Fear ability on the Alliance Infantry
|tip It appears on your action bar.
Cast Fear on the Soldier |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Summon Doomguard ability on the Target Dummy
|tip It appears on your action bar.
Cast Summon Doomguard |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 13 |q 43806 |future
|only if intutorial() and raceclass("Warlock")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Tiger Palm ability on the Target Dummy
|tip It appears on your action bar.
Use Tiger Palm on the Target Dummy #3# Times |scenariogoal 2/30392 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Rising Sun Kick ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your Tiger Palm ability to generate Chi, so you can use Rising Sun Kick.
Use Rising Sun Kick on the Target Dummy #2# Times |scenariogoal 3/30393 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Blackout Kick ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your Tiger Palm ability to generate Chi, so you can use Blackout Kick.
Use Blackout Kick on the Target Dummy #3# Times |scenariogoal 4/30395 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Fists of Fury ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your Tiger Palm ability to generate Chi, so you can use Fists of Fury.
Use Fists of Fury on the Target Dummy |scenariostage 5 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Tiger Palm #5# Times |scenariogoal 6/30392 |q 43806 |future
Use Rising Sun Kick #2# Times |scenariogoal 6/30393 |q 43806 |future
Use Blackout Kick #3# Times |scenariogoal 6/30395 |q 43806 |future
Use Fists of Fury |scenariogoal 6/30396 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Roll ability
|tip It appears on your action bar.
Use Roll #2# Times |scenariogoal 7/30397 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Effuse ability
|tip It appears on your action bar.
|tip Make sure you are not targeting an NPC.
Use Effuse to Heal Yourself #3# Times |scenariogoal 8/30409 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Monk")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Moonkin Form ability
|tip It is already on your action bar.
Cast Moonkin Form |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Moonfire ability on the Target Dummy
|tip It appears on your action bar.
Cast Moonfire on the Target Dummy |scenariogoal 3/32841 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Sunfire ability on the Target Dummy
|tip It is already on your action bar.
Cast Sunfire on the Target Dummy |scenariostage 3 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Solar Wrath ability on the Target Dummy
|tip It appears on your action bar.
Cast Solar Wrath on the Target Dummy #3# Times |scenariogoal 4/32843 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Starsurge ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your other abilties on the Target Dummy to generate Astral Power, so you can cast Starsurge.
Cast Starsurge on the Target Dummy #3# Times |scenariogoal 5/32844 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Cast Moonfire |scenariogoal 6/32841 |q 43806 |future
Cast Sunfire |scenariogoal 6/32842 |q 43806 |future
Cast Solar Wrath #6# Times |scenariogoal 6/32843 |q 43806 |future
Cast Starsurge #2# Times |scenariogoal 6/32844 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Healing Touch ability
|tip It appears on your action bar.
|tip Make sure you are not targeting an NPC.
Use Healing Touch to Heal Yourself #3# Times |scenariogoal 7/30432 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Entangling Roots ability on the Alliance Infantry
|tip It appears on your action bar.
Cast Entangling Roots |scenariostage 8 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(24858)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Cat Form ability
|tip It is already on your action bar.
Use Cat Form to Shapeshift into a Cat |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Prowl ability on the Target Dummy
|tip It is already on your action bar.
Use Prowl to Enter Stealth |scenariostage 3 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Rake ability on the Target Dummy
|tip It appears on your action bar.
Use Rake on the Target Dummy |scenariostage 4 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Shred ability on the Target Dummy
|tip It appears on your action bar.
Use Shred on the Target Dummy #3# Times |scenariogoal 5/30427 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Ferocious Bite ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your other abilities on the Target Dummy to generate Combo Points, so that you can use Ferocious Bite.
Use Ferocious Bite with Combo Points on the Target Dummy #3# Times |scenariogoal 6/30430 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Rip ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your other abilities on the Target Dummy to generate Combo Points, so that you can use Rip.
Use Rip with Combo Points on the Target Dummy |scenariostage 7 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Rake |scenariogoal 8/30428 |q 43806 |future
Use Shred #4# Times |scenariogoal 8/30427 |q 43806 |future
Use Ferocious Bite |scenariogoal 8/30430 |q 43806 |future
Use Rip |scenariogoal 8/30429 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Dash ability
|tip It appears on your action bar.
Use Dash to Move Faster in Cat Form |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Healing Touch ability
|tip It appears on your action bar.
|tip Make sure you are not targeting an NPC.
Use Healing Touch to Heal Yourself |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 13 |q 43806 |future
|only if intutorial() and raceclass("Druid") and _G.IsPlayerSpell(768)
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Raise Dead ability
|tip It is already on your action bar.
Cast Raise Dead |scenariostage 2 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Outbreak ability on the Target Dummy
|tip It appears on your action bar.
Use Outbreak on the Target Dummy |scenariostage 3 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Festering Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Festering Strike on the Target Dummy #3# Times |scenariogoal 4/30664 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Scourge Strike ability on the Target Dummy
|tip It appears on your action bar.
|tip Use Festering Strike on the Target Dummy, then use Scourge Strike on the Target Dummy.
Use Festering Strike then Scourge Strike on the Target Dummy #3# Times |scenariogoal 5/30665 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Death Coil ability on the Target Dummy
|tip It appears on your action bar.
|tip Use your other abilities to generate Runic Power, so you can use Death Coil.
Use Death Coil on the Target Dummy #3# Times |scenariogoal 6/30666 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Outbreak |scenariogoal 7/30663 |q 43806 |future
Use Festering Strike #2# Times |scenariogoal 7/30664 |q 43806 |future
Use Scourge Strike #4# Times |scenariogoal 7/30665 |q 43806 |future
Use Death Coil #4# Times |scenariogoal 7/30666 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Death Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Death Strike #2# Times |scenariogoal 8/31703 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Death Grip ability on the Alliance Infantry
|tip It appears on your action bar.
Use Death Grip |scenariostage 9 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Army of the Dead ability
|tip It appears on your action bar.
Use Army of the Dead |scenariostage 10 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariostage 11 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat the Attacking Soldiers |scenariostage 12 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship |scenariostage 13 |q 43806 |future
|only if intutorial() and raceclass("DeathKnight")
step
_On the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Snowy Gryphon##32335
|tip Up the stairs, at the top of the airship.
Take the Gryphon on the Back of the Airship and Join the Fleet |scenarioend |q 43806 |future
|only if intutorial
step
accept The Battle for Broken Shore##43806
|tip You will accept this quest automatically.
step
Travel to the Broken Shore |goto Broken Shore/0 52.97,111.90 < 50 |q 43806 |future
|next "Begin_Broken_Shore_Scenario"
step
label "Non_Boosted_Start"
click Hero's Call Board
accept The Legion Returns##40519 |goto Stormwind City/0 62.89,71.57
|only if not havequest(43806)
step
label
talk Recruiter Lee##107934
turnin The Legion Returns##40519 |goto 37.1,43.1
accept To Be Prepared##42782 |goto 37.1,43.1
|only if not havequest(43806)
step
click Keg of Armor Polish
Polish your Armor |q 42782/1 |goto 29.8,42.9
|only if not havequest(43806)
step
click Light-Infused Crystals
Empower your Weapon |q 42782/2 |goto 30.0,34.1
|only if not havequest(43806)
step
click Ribs
Eat your Last Meal |q 42782/3 |goto 29.7,29.2
|only if not havequest(43806)
step
talk Eunna Young##108750
|tip Fight her.
Warm Up with a Duel |q 42782/4 |goto 32.8,33.1
|only if not havequest(43806)
step
talk Knight Dameron##108916
turnin To Be Prepared##42782 |goto 19.0,26.5
accept The Battle for Broken Shore##42740 |goto 19.0,26.5
|only if not havequest(43806)
step
talk Captain Angelica##108920
Take the Ship to the Broken Shore |q 42740/1 |goto 19.9,29.4
|only if not havequest(43806)
step
label "Begin_Broken_Shore_Scenario"
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 42740 |only if havequest(42740) or completedq(42740)
Begin the "Battle for Broken Shore" Scenario |scenariostart |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue |only if havequest(42740) or completedq(42740)
|tip Ride the boat to shore. |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 42740 |only if havequest(42740) or completedq(42740)
Travel to the Broken Shore |scenariostage 1 |goto Broken Shore/0 49.36,71.79 |q 43806 |only if havequest(43806) or completedq(43806)
stickystart "fel_lords1"
stickystart "spires_of_woe"
step
Kill enemies around this area
|tip Follow the group.
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #33# Demons |scenariogoal 2/27653 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "fel_lords1"
Kill enemies around this area
|tip Follow the group.
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Kill #3# Fel Lords |scenariogoal 2/29377 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
label "spires_of_woe"
kill Anchoring Crystal##91704+
|tip Follow the group.
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 42740 |only if havequest(42740) or completedq(42740)
Destroy #3# Spires of Woe |scenariogoal 2/27619 |goto 48.4,70.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 42740 |only if havequest(42740) or completedq(42740)
kill Dread Commander Arganoth##90705 |goto 48.4,70.5 |scenariogoal 3/30883 |q 43806 |only if havequest(43806) or completedq(43806)
step
Run up the path |goto 49.40,66.41 < 30
Watch the dialogue
|tip Follow the group.
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 42740 |only if havequest(42740) or completedq(42740)
Find Varian |scenariostage 4 |goto 38.07,47.13 |q 43806 |only if havequest(43806) or completedq(43806)
step
kill Shielded Anchor##101667+
|tip They look like big floating green crystals.
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 42740 |only if havequest(42740) or completedq(42740)
Shatter #4# Shielded Anchors |scenariogoal 5/27940 |goto 39.0,43.7 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Kill enemies all around this area
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Demon City |scenariostage 6 |goto 44.7,47.5 |q 43806 |only if havequest(43806) or completedq(43806)
step
Watch the dialogue
|tip Follow the group.
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Get to Tirion |scenariostage 7 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Kill enemies around this area
kill Krosus##90544
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 42740 |only if havequest(42740) or completedq(42740)
Slay Krosus |scenariostage 8 |goto 55.8,32.2 |q 43806 |only if havequest(43806) or completedq(43806)
step
Follow the path up |goto 55.98,31.21 < 20
Watch the dialogue
|tip Follow the group
Kill the enemies that attack in waves
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 42740 |only if havequest(42740) or completedq(42740)
Assault the Broken Shore |q 42740/2 |goto 58.3,27.5 |only if havequest(42740) or completedq(42740)
Confront Gul'dan |scenarioend |goto 58.3,27.5 |q 43806 |only if havequest(43806) or completedq(43806)
Assault the Broken Shore |q 43806/1 |goto 58.3,27.5 |only if havequest(43806) or completedq(43806)
step
talk Genn Greymane##100395
turnin The Battle for Broken Shore##42740 |goto Stormwind City/0 20.1,34.9 |only if havequest(42740) or completedq(42740)
turnin The Battle for Broken Shore##43806 |goto Stormwind City/0 20.1,34.9 |only if havequest(43806) or completedq(43806)
accept The Fallen Lion##40517 |goto Stormwind City/0 20.1,34.9
step
click Gilnean Gryphon
Ride a Gryphon to Stormwind Keep |q 40517/1 |goto 21.3,33.7
step
talk Anduin Wrynn##100429
Watch the dialogue
Deliver Varian's Letter and Listen to King Anduin |q 40517/2 |goto 85.9,31.6
step
talk Anduin Wrynn##100429
turnin The Fallen Lion##40517 |goto 85.9,31.6
step
talk Jace Darkweaver##100675
accept Demons Among Us##40593 |goto 85.3,32.3
step
talk Jace Darkweaver##100675
Watch the dialogue
Learn what Jace Darkwhisper Knows about Demons |q 40593/1 |goto 85.3,32.3
stickystart "Kill_Infiltrators"
step
click Demon Portal
Destroy the Courtyard Legion Portal |q 40593/3 |goto 82.5,27.9
step
Follow the path |goto 83.94,30.69 < 15
Go through the doorway |goto 81.55,35.60 < 15
click Demon Portal
Destroy the Courtyard Legion Portal |q 40593/4 |goto 80.6,33.1
step
label "Kill_Infiltrators"
Kill enemies around this area
Kill #5# Infiltrators |q 40593/2 |goto 84.8,32.5
step
talk Anduin Wrynn##100973
turnin Demons Among Us##40593 |goto 85.8,31.8
accept Illidari Allies##44120 |goto 85.8,31.8
step
talk Elerion Bladedancer##101004
|tip On the balcony of the building.
turnin Illidari Allies##44120 |goto 40.3,77.7
step
talk Khadgar's Upgraded Servant##114562
|tip It appears next to you.
accept In the Blink of an Eye##44663 |goto 40.3,77.7 |or
accept In the Blink of an Eye##44184 |goto 40.3,77.7 |or
step
Enter the building |goto 80.75,37.75 < 15 |walk
Follow the path |goto 81.56,35.56 < 15 |walk
click Portal to Dalaran
Watch the dialogue
Take the Portal to Dalaran |q 44663/1 |goto 80.31,35.02 |only if havequest(44663) or completedq(44663)
Take the Portal to Dalaran |q 44184/1 |goto 80.31,35.02 |only if havequest(44184) or completedq(44184)
step
Enter the building |goto Deadwind Pass/21 52.83,51.87 < 15 |walk
talk Archmage Khadgar##113986
Witness Dalaran's Teleportation |q 44663/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44663) or completedq(44663)
Witness Dalaran's Teleportation |q 44184/2 |goto Deadwind Pass/21 49.84,48.31 |only if havequest(44184) or completedq(44184)
step
talk Emissary Auldbridge##111109
turnin In the Blink of an Eye##44663 |goto Dalaran L/10 57.57,45.75 |only if havequest(44663) or completedq(44663)
turnin In the Blink of an Eye##44184 |goto Dalaran L/10 57.57,45.75 |only if havequest(44184) or completedq(44184)
]])
