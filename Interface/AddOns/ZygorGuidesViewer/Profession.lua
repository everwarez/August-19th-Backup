if debug then
	ZygorGuidesViewer={startups={}}
	ZygorGuidesViewer_L=function() end
	GetLocale=function() return "enUS" end
	tinsert=table.insert
	ERR_LEARN_RECIPE_S = "Learn %s"
	hooksecurefunc=function() end
end

local ZGV = ZygorGuidesViewer
if not ZGV then return end


ZGV.Professions = {}
local ZGVP = ZGV.Professions
-- this is not widely used, yet, sadly - most functions remain global.


ZGV.Professions.skills = {}

local LS=ZygorGuidesViewer_L("Skills")

ZGV.Professions.skillSpells = {
	['Alchemy']=2259,
	['Blacksmithing']=2018,
	['Inscription']=45357,
	['Jewelcrafting']=25229,
	['Leatherworking']=2108,
	['Tailoring']=3908,
	['Enchanting']=7411,
	['Engineering']=4036,

	--['Herbalism']=2366,  -- that's Herb Gathering
	['Mining']=2575,
	['Smelting']=2656,
	['Skinning']=8613,

	['Archaeology']=78670,
	['Cooking']=2550,
		['Way of the Grill']=124694,
		['Way of the Wok']=125584,
		['Way of the Pot']=125586,
		['Way of the Steamer']=125587,
		['Way of the Oven']=125588,
		['Way of the Brew']=125589,
	['First Aid']=3273,
	['Fishing']=7620,
}
local skillSpells=ZGV.Professions.skillSpells

local CookingSkills = { --Copy from skillSpells, just to make scanning them easier because we only want to scan cooking masteries at one point.
	--Feel free to remove the duplicate code if you think of a better way. ~Errc
	['Way of the Pot']=125586,
	['Way of the Grill']=124694,
	['Way of the Wok']=125584,
	['Way of the Steamer']=125587,
	['Way of the Oven']=125588,
	['Way of the Brew']=125589,
}

local CookingCategories = {  -- Legion-style, for C_TradeSkillUI.GetCategoryInfo(cat).
	['Way of the Pot']=66,
	['Way of the Grill']=64,
	['Way of the Wok']=65,
	['Way of the Steamer']=67,
	['Way of the Oven']=68,
	['Way of the Brew']=69,
}

-- sinus 2013-01-10 : this uses the "skill" numbers, found on wowhead.com/skill=171 for example. This is a backup if the above spell numbers start failing like Herbalism.
ZGV.Professions.skillIDs = {
	['Alchemy']=171,
	['Blacksmithing']=164,
	['Enchanting']=333,
	['Engineering']=202,
	['Inscription']=773,
	['Jewelcrafting']=755,
	['Leatherworking']=165,
	['Tailoring']=197,

	['Herbalism']=182,
	['Mining']=186,
	--['Smelting']=2656,
	['Skinning']=393,

	['Archaeology']=794,
	['Cooking']=185,
		--['Way of the Grill']=124694,
		--['Way of the Wok']=125584,
		--['Way of the Pot']=125586,
		--['Way of the Steamer']=125587,
		--['Way of the Oven']=125588,
		--['Way of the Brew']=125589,
	['First Aid']=129,
	['Fishing']=356,
	['Riding']=762,
}
local skillIDs=ZGV.Professions.skillIDs

ZGV.Professions.skillIDsRev = {}
for k,v in pairs(skillIDs) do ZGV.Professions.skillIDsRev[v]=k end -- reverse lookup for proffesion names

ZGV.Professions.skillLocale = {
	[129]={deDE="Erste Hilfe",esES="Primeros auxilios",frFR="Secourisme",ptBR="Primeiros Socorros",ruRU="Первая помощь"},
	[164]={deDE="Schmiedekunst",esES="Herrería",frFR="Forge",ptBR="Ferraria",ruRU="Кузнечное дело"},
	[165]={deDE="Lederverarbeitung",esES="Peletería",frFR="Travail du cuir",ptBR="Couraria",ruRU="Кожевничество"},
	[171]={deDE="Alchemie",esES="Alquimia",frFR="Alchimie",ptBR="Alquimia",ruRU="Алхимия"},
	[182]={deDE="Kräuterkunde",esES="Herboristería",frFR="Herboristerie",ptBR="Herborismo",ruRU="Травничество"},
	[185]={deDE="Kochkunst",esES="Cocina",frFR="Cuisine",ptBR="Culinária",ruRU="Кулинария"},
	[186]={deDE="Bergbau",esES="Minería",frFR="Minage",ptBR="Mineração",ruRU="Горное дело"},
	[197]={deDE="Schneiderei",esES="Sastrería",frFR="Couture",ptBR="Alfaiataria",ruRU="Портняжное дело"},
	[202]={deDE="Ingenieurskunst",esES="Ingeniería",frFR="Ingénierie",ptBR="Engenharia",ruRU="Инженерное дело"},
	[333]={deDE="Verzauberkunst",esES="Encantamiento",frFR="Enchantement",ptBR="Encantamento",ruRU="Наложение чар"},
	[356]={deDE="Angeln",esES="Pesca",frFR="Pêche",ptBR="Pesca",ruRU="Рыбная ловля"},
	[393]={deDE="Kürschnerei",esES="Desuello",frFR="Dépeçage",ptBR="Esfolamento",ruRU="Снятие шкур"},
	[755]={deDE="Juwelenschleifen",esES="Joyería",frFR="Joaillerie",ptBR="Joalheria",ruRU="Ювелирное дело"},
	[762]={deDE="Reiten",esES="Equitación",frFR="Monte",ptBR="Montaria",ruRU="Верховая езда"},
	[773]={deDE="Inschriftenkunde",esES="Inscripción",frFR="Calligraphie",ptBR="Escrivania",ruRU="Начертание"},
	[794]={deDE="Archäologie",esES="Arqueología",frFR="Archéologie",ptBR="Arqueologia",ruRU="Археология"},
} -- GETS TRIMMED.
for id,data in pairs(ZGV.Professions.skillLocale) do ZGV.Professions.skillLocale[id]=data[GetLocale()] end


ZGV.Professions.LocaleSkills={}
setmetatable(ZGV.Professions.LocaleSkills,{__index=function(t,skill) return ZGV.Professions.skillLocale[skillIDs[skill] or 0] or GetSpellInfo(skillSpells[skill]) or skill end})
ZGV.Professions.LocaleSkillsR={}
setmetatable(ZGV.Professions.LocaleSkillsR,{__index=function(t,q) return q end})

tinsert(ZGV.startups,{"Professions setup",function(self)
	self:AddEvent("PLAYER_ENTERING_WORLD","CacheSkills")
	self:AddEvent("SKILL_LINES_CHANGED","CacheSkills")
	self:AddEvent("TRADE_SKILL_UPDATE","CacheSkills")
	self:AddEvent("CHAT_MSG_SKILL","CacheSkills")
	self:AddEvent("CHAT_MSG_SYSTEM","Profession_CHAT_MSG_SYSTEM")
	self:AddEvent("NEW_RECIPE_LEARNED","Profession_NEW_RECIPE_LEARNED")
	self:AddEvent("TRADE_SKILL_SHOW","Profession_TRADE_SKILL_SHOW")

	self:AddEvent("TRADE_SKILL_LIST_UPDATE","CacheRecipes")
	self:AddEvent("TRADE_SKILL_DATA_SOURCE_CHANGED","CacheSkills")

	--self:AddEvent("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	self.Professions.skills[""]={
		active=false,
		level=0,
		max=0
	}

	ZGV:CacheSkills()

	if GetLocale()~="enUS" then
		for spell,num in pairs(skillSpells) do -- Localize spell-based skills. So far this only leaves Herbalism out, but who knows...
			ZGV.Professions.LocaleSkills[spell]=GetSpellInfo(num)
			ZGV.Professions.LocaleSkillsR[ZGV.Professions.LocaleSkills[spell]]=spell
		end
	end
end})

function ZGV:Profession_NEW_RECIPE_LEARNED(event,spell)
	for skill,skilltable in pairs(ZGV.db.char.RecipesKnown) do
		if skilltable[spell] then
			skilltable[spell].learned=true
		end
	end
end

local ERR_LEARN_RECIPE_S_fmt = ERR_LEARN_RECIPE_S:gsub("%.","%%."):gsub("%%s","(.+)")
--local TRADESKILL_LOG_FIRSTPERSON_fmt = TRADESKILL_LOG_FIRSTPERSON:gsub("%%s","(.-)")

function ZGV:Profession_CHAT_MSG_SYSTEM(event,text)
	local _,_,item = text:find(ERR_LEARN_RECIPE_S_fmt)
	if item then
		self.recentlyLearnedRecipes[item]=true
	end
end

function ZGV:Profession_TRADE_SKILL_SHOW()
	self:CacheSkills()
	if self.Delayed_PerformTradeSkill_step then
		self:PerformTradeSkillGoal(self.Delayed_PerformTradeSkill_step,self.Delayed_PerformTradeSkill_goal)
		self.Delayed_PerformTradeSkill_step=nil
		self.Delayed_PerformTradeSkill_goal=nil
	end
end

function ZGV:CacheSkills()
	if ZGVP.CS_Timer then ZGV:CancelTimer(ZGVP.CS_Timer) end
	ZGVP.CS_Timer = ZGV:ScheduleTimer(function() 
		ZGV:CacheSkills_Queued()
	end, 1)
end

function ZGV:CacheSkills_Queued()
	local current_time = debugprofilestop()
	if (current_time - (ZGV.last_cached_skills or 0)) < 1000 then return end

	ZGV.last_cached_skills = current_time	
	
	local profs={GetProfessions()}
	for i,prof in pairs(profs) do
		local name,icon,rank,maxrank,numspells,spelloffset,skillline = GetProfessionInfo(prof)

		local pro = self.Professions.skills[name]
		if not pro then
			pro={}
			self.Professions.skills[name]=pro
		end
		pro.level=rank
		pro.max=maxrank
		pro.active=true
		pro.skillID=skillline
		pro.spell=skillSpells[name]
		pro.name=name

		local function getCategory(id)
			local catdata = C_TradeSkillUI.GetCategoryInfo(id)
			if catdata and catdata.hasProgressBar and catdata.skillLineCurrentLevel>0 then
				self.Professions.skills[catdata.name] = self.Professions.skills[catdata.name] or {}
				pro = self.Professions.skills[catdata.name]
				pro.level=catdata.skillLineCurrentLevel
				pro.max=catdata.skillLineMaxLevel
				pro.active=true
				pro.TS_categoryID=catdata.categoryID
				pro.spell=skillSpells[catdata.name]
				pro.name=catdata.name
			end
			local sub={C_TradeSkillUI.GetSubCategories(id)}
			if sub then
				for i,id in ipairs(sub) do getCategory(id) end
			end
		end

		if C_TradeSkillUI.GetTradeSkillLine()==skillline then  -- check for category masteries
			for i,id in ipairs{C_TradeSkillUI.GetCategories()} do
				getCategory(id)
			end
		end
	end

	self:CacheRecipes(profs)  -- or try to, anyway. --Do Cooking masteries too
end

function ZGV:GetSkill(name)
	local skill,spell
	skill = skillIDs[name]
	if not skill then spell = skillSpells[name] end

	if ZGV.db.profile.fakeskills[name] then
		return ZGV.db.profile.fakeskills[name]
	else
		return self:FindSkill(skill,spell)
	end
end

function ZGV:FindSkill(skill,spell)
	for name,skilldata in pairs(self.Professions.skills) do
		if (skill and skilldata.skillID==skill) or (spell and skilldata.spell==spell) then return skilldata end
	end
	return self.Professions.skills[""]
end


function ZGV:CacheRecipes(profs)
	if ZGVP.CR_Timer then ZGV:CancelTimer(ZGVP.CR_Timer) end
	ZGVP.CR_Timer = ZGV:ScheduleTimer(function() 
		ZGV:CacheRecipes_Queued(profs)
	end, 3)
end

function ZGV:CacheRecipes_Queued(profs)
	if not C_TradeSkillUI.IsTradeSkillReady() then return end -- prevents missing reagents in recipes
	if C_TradeSkillUI.IsTradeSkillGuild() or C_TradeSkillUI.IsTradeSkillLinked() then return end

	local skill = C_TradeSkillUI.GetTradeSkillLine()
	if not skill then return end

	self.db.char.RecipesKnown=self.db.char.RecipesKnown or {}
	self.db.char.RecipesKnown[skill]=self.db.char.RecipesKnown[skill] or {}

	local recipes = self.db.char.RecipesKnown[skill]

	local all_recipes = C_TradeSkillUI.GetAllRecipeIDs()

	table.wipe(recipes)

	for _,recipeid in pairs(all_recipes) do
		local api_recipe = C_TradeSkillUI.GetRecipeInfo(recipeid)
		recipe = {
			--link = C_TradeSkillUI.GetRecipeLink(recipeid),
			nummade = {C_TradeSkillUI.GetRecipeNumItemsProduced(recipeid)},
			spell = recipeid,
			learned = api_recipe.learned,
			skill = skill,
			numSkillUps = api_recipe.numSkillUps,
			difficulty = api_recipe.difficulty,
			numAvailable = api_recipe.numAvailable,
			source = C_TradeSkillUI.GetRecipeSourceText(recipeid)
			}

		--[[
		recipe.productlink = C_TradeSkillUI.GetRecipeItemLink(recipeid)
		recipe.producttype,recipe.productid = recipe.productlink:match("|H(%w+):(%d+)")
		--]]
		local productlink = C_TradeSkillUI.GetRecipeItemLink(recipeid)
		recipe.producttype,recipe.productid = productlink:match("|H(%w+):(%d+)")
		recipe.productid = tonumber(recipe.productid)


		local numReagents = C_TradeSkillUI.GetRecipeNumReagents(recipeid)
		local reagents={}
		for reagentIndex = 1, numReagents do
			local _reagentName, _reagentTexture, reagentCount, _playerReagentCount = C_TradeSkillUI.GetRecipeReagentInfo(recipeid, reagentIndex)
			local reagentlink = C_TradeSkillUI.GetRecipeReagentItemLink(recipeid, reagentIndex)
			reagents[ZGV.ItemLink.GetItemID(reagentlink)]=reagentCount
		end
		recipe.reagents = reagents


		recipes[recipeid]=recipe
	end
	if ZGV.Goldguide then 
		ZGV.Goldguide:CalculateAllChores(true)
		ZGV.Goldguide:Update()
	end
end

function ZGV:PerformTradeSkillGoal(step,goal)
	if not step or not goal or type(step)~="number" or type(goal)~="number" then return end
	step = ZGV.CurrentGuide.steps[step]   if not step then return end
	goal = step.goals[goal]   if not goal then return end
	if goal.skillnum then
		-- skillup-based
		self:PerformTradeSkill(goal.spellid,goal.skillnum)
	elseif goal.targetid then
		self:PerformTradeSkill(goal.spellid,goal.count-GetItemCount(goal.targetid))
	end
end

function ZGV:PerformTradeSkill(id,count)
	if not count then count=1 end
	if count<=0 then return end

	C_TradeSkillUI.CraftRecipe(id, count)
end

--[[
function ZGV:FindTradeSkillNum(id)
	if not id then return end
	for i = 1,500 do
		local tradeName,tradeType = GetTradeSkillInfo(i)

		if tradeName and tradeType~="header" then
			local link = GetTradeSkillRecipeLink(i)
			if link then
				local spell = tonumber(strmatch(link,"|H%w+:(%d+)"))
				if spell==id then
					return i
				end
			end
		end
	end
end
--]]

function ZGVP:GetRecipe(spellid)
	local RK = ZGV.db.char.RecipesKnown
	if not RK or not next(RK) then return "no data" end
	for skillid,recipes in pairs(RK) do
		if recipes[spellid] then return recipes[spellid] end
	end
end

function ZGVP:KnowsRecipe(spellid)
	local ret = ZGVP:GetRecipe(spellid)
	return type(ret)=="table"
end
