local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Zygor's Dungeon Guides\\Legion Scenarios\\Whispers of a Frightened World",{
condition_suggested="level>=110",
keywords={"Magni, Hall, Of, Communion"},
author="support@zygorguides.com",
description="This guide will walk you through completing the \"Whispers of a Frightened World\" scenario.",
},[[
step
accept Whispers of a Frightened World##46206 |goto Dalaran L/10 60.95,44.76
|tip You will accept this quest automatically.
step
click Portal to Wyrmrest Temple
Take the Dalaran portal to Wyrmrest Temple |q 46206/1 |goto Dalaran L/12 30.71,84.37
step
Enter the building |goto Sholazar Basin/0 80.56,54.45 < 20 |walk
Follow the path |goto 85.06,53.65 < 10
Meet Magni in Sholazar Basin |q 46206/2 |goto 88.43,52.99
step
Enter the building |goto 80.56,54.45 < 20 |walk
Follow the path |goto 85.06,53.65 < 10
Meet Magni in The Maker's Overlook |q 46206/3 |goto 88.43,52.99
step
click Power Conduit
Open the first conduit |q 46206/4 |count 1 |goto Sholazar Basin/0 88.05,52.76
step
click Power Conduit
Open the second conduit |q 46206/4 |count 2 |goto 88.12,53.39
step
click Power Conduit
Open the third conduit |q 46206/4 |count 3 |goto 88.49,53.61
step
click Teleportation Pad
Enter the scenario |scenariostart |goto 88.43,53.00 |q 46206
step
Find Magni |scenariogoal Find Magni##1/35795 |goto Hall of Communion/1 43.69,82.00 |q 46206
step
kill Distressing Vision##120489+, Haunting Phantasm##120484+, Unsettling Despair##121008+
Defeat #7# invaders |scenariogoal Defeat the invaders##2/36206 |goto Hall of Communion/1 52.96,81.97 |q 46206
step
Follow the path |goto Hall of Communion/1 48.94,71.87 < 20 |walk
click Damaged Construct
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the first Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 48.54,59.52 |count 1 |q 46206
step
click Damaged Construct
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the second Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 44.23,51.15 |count 2 |q 46206
step
click Damaged Construct
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the third Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 54.86,54.97 |count 3 |q 46206
step
click Damaged Construct
|tip The Disburbing Echo tentacles will occasionally cast Dark Demise, pulling you towards them.
|tip Interrupt them to stop the cast.
Activate the final Damaged Construct |scenariogoal Reactivate the defenses##3/36209 |goto 49.18,44.72 |count 4 |q 46206
step
kill Amalgam of Torment##120486+
Defeat the Amalgam of Torment |scenariogoal Amalgam of Torment defeated##4/36160 |goto Hall of Communion/1 49.20,39.83 |q 46206
step
Follow the path |goto Hall of Communion/1 48.97,20.52 < 15 |walk
Tell him: _"Let us hear what she has to say, Magni."_
Speak with Magni |scenariogoal Speak with Magni##5/35796 |goto 48.94,11.47 |q 46206
step
Hear Azeroth's warning |q 46206/5 |goto Sholazar Basin/0 88.43,53.00
|tip Wait for the dialogue to complete.
step
click Teleportation Pad |goto Hall of Communion/1 49.74,8.82 < 7 |walk
|tip Wait for the dialogue to complete.
Return to Dalaran |goto Dalaran L/10 39.65,50.54 < 10000 |c |noway |q 46206
step
talk Archmage Khadgar##90417
turnin Whispers of a Frightened World##46206 |goto Dalaran L/10 28.48,48.31
]])
