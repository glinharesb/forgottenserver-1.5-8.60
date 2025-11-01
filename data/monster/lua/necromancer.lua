local mType = Game.createMonsterType("Necromancer")
local monster = {}

monster.description = "a necromancer"
monster.experience = 580
monster.outfit = {
	lookType = 9,
}

monster.health = 580
monster.maxHealth = 580
monster.race = "blood"
monster.corpse = 6080
monster.speed = 200
monster.manaCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
	health = 0,
	damage = 0,
	random = 0,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summons = {
	{ name = "Ghoul", chance = 17, interval = 1000, max = 2 },
	{ name = "Ghost", chance = 15, interval = 1000, max = 1 },
	{ name = "Mummy", chance = 13, interval = 1000, max = 1 },
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Your corpse will be mine!", yell = false },
	{ text = "Taste the sweetness of death!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 8250, maxCount = 60 }, -- gold coin
	{ id = 2148, chance = 8250, maxCount = 30 }, -- gold coin
	{ id = 2545, chance = 4000, maxCount = 5 }, -- poison arrow
	{ id = 2406, chance = 14000 }, -- short sword
	{ id = 2483, chance = 10500 }, -- scale armor
	{ id = 2796, chance = 3000 }, -- green mushroom
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2423, chance = 1700 }, -- clerical mace
			{ id = 7589, chance = 1250 }, -- strong mana potion
			{ id = 2663, chance = 375 }, -- mystic turban
			{ id = 2436, chance = 125 }, -- skull staff
			{ id = 7456, chance = 50 }, -- noble axe
			{ id = 8901, chance = 125 }, -- spellbook of warding
			{ id = 2195, chance = 275 }, -- boots of haste
		},
	},
}

monster.attacks = {
	{
		name = "melee",
		interval = 2000,
		chance = 100,
		skill = 30,
		attack = 40,
		condition = { type = CONDITION_POISON, totalDamage = 90, interval = 4000 },
	},
	{
		name = "combat",
		type = COMBAT_LIFEDRAIN,
		interval = 1000,
		chance = 20,
		range = 1,
		minDamage = -60,
		maxDamage = -100,
		effect = CONST_ME_MAGIC_RED,
	},
	{
		name = "combat",
		type = COMBAT_EARTHDAMAGE,
		interval = 3000,
		chance = 17,
		range = 7,
		minDamage = -35,
		maxDamage = -95,
		shootEffect = CONST_ANI_POISON,
		effect = CONST_ME_POISONAREA,
	},
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{
		name = "combat",
		type = COMBAT_HEALING,
		interval = 1000,
		chance = 25,
		minDamage = 42,
		maxDamage = 68,
		effect = CONST_ME_MAGIC_BLUE,
	},
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -5 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
