local ZGV = ZygorGuidesViewer
if not ZGV then return end

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"title", text=[[This Update:]]},
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},

	{"section", text=[[DUNGEONS]]},
	{"item", text=[[Added |cfffe6100Whispers of a Frightened World Scenario|r.]], guide="DUNGEONS\\Legion Scenarios\\Whispers of a Frightened World"},

	{"separator"},

	{"title", text=[[Featured Content:]]},

	{"section", text=[[LEVELING]]},
	{"item", text=[[Added |cfffe61007.2 New Content (Start Here)|r.]], guide="LEVELING\\Legion (100-110)\\7.2 New Content"},
	{"item", text=[[Added |cfffe61007.2 Order Hall Quests|r.]], guide="LEVELING\\Legion (100-110)\\7.2 Order Hall Quests"},
	{"item", text=[[Added |cfffe6100Legion Invasions|r.]], guide="LEVELING\\Legion (100-110)\\Legion Invasions"},
	{"item", text=[[Updated |cfffe6100Legionfall Campaign|r.]], guide="LEVELING\\Legion (100-110)\\Broken Shore Campaign"},
	{"item", text=[[Added |cfffe6100Balance of Power Questline|r.]], guide="LEVELING\\Legion (100-110)\\Balance of Power Questline"},
	{"item", text=[[Updated |cfffe6100Artifact Knowledge 1-40|r.]], guide="LEVELING\\Legion (100-110)\\Artifact Knowledge 1-40"},

	{"section", text=[[DUNGEONS]]},
	{"item", text=[[Added |cfffe6100Tomb of Sargeras - Chamber of the Avatar|r.]], guide="DUNGEONS\\Legion Raids\\Tomb of Sargeras - Chamber of the Avatar"},

	{"section", text=[[RAIDS]]},
	{"item", text=[[Added |cfffe6100Legion Raids|r.]], folder="DUNGEONS\\Legion Raids"},

	{"section", text=[[DAILIES]]},
	{"item", text=[[Added |cfffe6100Patch 7.2 World Quests|r.]], guide="DAILIES\\Legion\\World Quests"},

	{"section", text=[[EVENTS]]},
	{"item", text=[[Added |cfffe6100Blight Boar Concert|r.]], guide="EVENTS\\Darkmoon Faire\\\\Blight Boar Concert",faction="A"},
	{"item", text=[[Added |cfffe6100Midsummer Fire Festival Bonfires|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",faction="A"},
	{"item", text=[[Added |cfffe6100Blight Boar Concert|r.]], guide="EVENTS\\Darkmoon Faire\\Blight Boar Concert",faction="H"},
	{"item", text=[[Added |cfffe6100Midsummer Fire Festival Bonfires|r.]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",faction="H"},

	{"section", text=[[REPUTATIONS]], beta=true},
	{"item", text=[[Added |cfffe6100Armies of Legionfall Reputation (BETA)|r.]], guide="REPUTATIONS\\Legion\\Armies of Legionfall", beta=true},
	{"item", text=[[Added |cfffe6100Vol'jin's Spear|r.]], guide="REPUTATIONS\\Warlords of Draenor\\Vol'jin's Spear", faction="H"},

	{"section", text=[[PROFESSIONS]]},
	{"item", text=[[Added |cfffe6100Obliterum Forge Questline|r.]], guide="PROFESSIONS\\Legion\\Obliterum Forge Questline"},

	{"section", text=[[PETSMOUNTS]]},
	{"item", text=[[Added |cfffe6100Crimson Prime Direhorn|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Reputation Mounts\\Crimson Prime Direhorn"},
	{"item", text=[[Added |cfffe6100Golden Primal Direhorn|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Reputation Mounts\\Golden Primal Direhorn"},

	{"section", text=[[TITLES]]},
	{"item", text=[[Added |cfffe6100Cataclysmic Gladiator|r.]], guide="TITLES\\Cataclysm Titles\\Player versus Player\\Cataclysmic Gladiator"},
	{"item", text=[[Added |cfffe6100Hero of the Alliance|r.]], guide="TITLES\\Cataclysm Titles\\Player versus Player\\Hero of the Alliance",faction="A"},
	{"item", text=[[Added |cfffe6100Hero of the Horde|r.]], guide="TITLES\\Cataclysm Titles\\Player versus Player\\Hero of the Horde",faction="H"},
	{"item", text=[[Added |cfffe6100Ruthless Gladiator|r.]], guide="TITLES\\Cataclysm Titles\\Player versus Player\\Ruthless Gladiator"},
	{"item", text=[[Added |cfffe6100Vicious Gladiator|r.]], guide="TITLES\\Cataclysm Titles\\Player versus Player\\Vicious Gladiator"},
	{"item", text=[[Added |cfffe6100Darkmaster|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Darkmaster"},
	{"item", text=[[Added |cfffe6100Defender of the Wall|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Defender of the Wall"},
	{"item", text=[[Added |cfffe6100Flameweaver|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Flameweaver"},
	{"item", text=[[Added |cfffe6100Jade Protector|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Jade Protector"},
	{"item", text=[[Added |cfffe6100Mistwalker|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Mistwalker"},
	{"item", text=[[Added |cfffe6100Mogu-Slayer|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Mogu-Slayer"},
	{"item", text=[[Added |cfffe6100Purified Defender|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Purified Defender"},
	{"item", text=[[Added |cfffe6100Scarlet Commander|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Scarlet Commander"},
	{"item", text=[[Added |cfffe6100Siegebreaker|r.]], guide="TITLES\\Mists of Pandaria Titles\\Dungeons & Raids\\Siegebreaker"},
	{"item", text=[[Added |cfffe6100Grievous Gladiator|r.]], guide="TITLES\\Mists of Pandaria Titles\\Player versus Player\\Grievous Gladiator"},
	{"item", text=[[Added |cfffe6100Malevolent Gladiator|r.]], guide="TITLES\\Mists of Pandaria Titles\\Player versus Player\\Malevolent Gladiator"},
	{"item", text=[[Added |cfffe6100Prideful Gladiator|r.]], guide="TITLES\\Mists of Pandaria Titles\\Player versus Player\\Prideful Gladiator"},
	{"item", text=[[Added |cfffe6100Tyrannical Gladiator|r.]], guide="TITLES\\Mists of Pandaria Titles\\Player versus Player\\Tyrannical Gladiator"},
	{"item", text=[[Added |cfffe6100Legend of Pandaria|r.]], guide="TITLES\\Mists of Pandaria Titles\\Quests\\Legend of Pandaria"},
	{"item", text=[[Added |cfffe6100Of The Iron Vanguard|r.]], guide="TITLES\\Mists of Pandaria Titles\\Quests\\Of The Iron Vanguard",faction="A"},
	{"item", text=[[Added |cfffe6100Of the Iron Vanguard|r.]], guide="TITLES\\Mists of Pandaria Titles\\Quests\\Of the Iron Vanguard",faction="H"},
	{"item", text=[[Added |cfffe6100Stormbreaker|r.]], guide="TITLES\\Mists of Pandaria Titles\\Quests\\Stormbreaker"},
	{"item", text=[[Added |cfffe6100Of the Black Harvest|r.]], guide="TITLES\\Mists of Pandaria Titles\\Scenarios\\Of the Black Harvest"},
	{"item", text=[[Added |cfffe6100Darkspear Revolutionary|r.]], guide="TITLES\\Mists of Pandaria Titles\\World Events\\Darkspear Revolutionary",faction="H"},
	{"item", text=[[Added |cfffe6100The Hordebreaker|r.]], guide="TITLES\\Mists of Pandaria Titles\\World Events\\The Hordebreaker",faction="A"},

	{"section", text=[[ACHIEVEMENTS]]},
	{"item", text=[[Added |cfffe6100Can I Get A Helya|r.]], guide="ACHIEVEMENTS\\Appearances\\Legion\\Can I Get A Helya",faction="A"},
	{"item", text=[[Added |cfffe6100Retro Trend|r.]], guide="ACHIEVEMENTS\\Appearances\\Legion\\Retro Trend",faction="H"},

}


-- faction="Alliance" {"separator"},