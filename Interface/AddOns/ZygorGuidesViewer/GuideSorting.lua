local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

-- Main menu
ZygorGuidesViewer:RegisterGuideSorting({
	"BETA",
	"Leveling",
	"Loremaster",
	"Dungeons",
	"Gear",
	"Dailies",
	"Events",
	"Reputations",
	"Gold",
	"Professions",
	"Pets & Mounts",
	"Titles",
	"Achievements",
	"Macros",
})

-- Dungeons
ZygorGuidesViewer:RegisterGuideSorting({
	"Classic Dungeons",
	"Outland Dungeons",
	"Northrend Dungeons",
	"Cataclysm Dungeons"})

-- Leveling
ZygorGuidesViewer:RegisterGuideSorting({
	"Starter Guides",
	"Classic (1-60)",
	"Eastern Kingdoms 1-60",
	"Kalimdor 1-60",
	"The Burning Crusade (60-70)",
	"Wrath of the Lich King (70-80)",
	"Cataclysm (80-85)",
	"Pandaria (85-90)",
	"Draenor (90-100)",
	"Legion (100-110)",
	"Peak of Serenity",
	"The Loremaster"})

-- Leveling alliance starters
ZygorGuidesViewer:RegisterGuideSorting({
	"Human (1-5)",
	"Dwarf (1-5)",
	"Night Elf (1-11)",
	"Gnome (1-5)",
	"Draenei (1-5)",
	"Worgen (1-13)",
	"Pandaren (1-12)",
	"Death Knight (55-58)",
	"Demon Hunter (98-100)"})

-- Leveling horde starters
ZygorGuidesViewer:RegisterGuideSorting({
	"Orc (1-5)",
	"Undead (1-5)",
	"Tauren (1-5)",
	"Troll (1-5)",
	"Blood Elf (1-5)",
	"Goblin (1-13)",
	"Death Knight (55-58)",
	"Demon Hunter (98-100)"})
