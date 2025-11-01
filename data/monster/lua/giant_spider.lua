local mType = Game.createMonsterType("Giant Spider")
local monster = {}

monster.description = "a giant spider"
monster.experience = 900
monster.outfit = {
	lookType = 38,
}

monster.health = 1300
monster.maxHealth = 1300
monster.race = "venom"
monster.corpse = 5977
monster.speed = 280
monster.manaCost = 0
monster.maxSummons = 2

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
	targetDistance = 1,
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
	{ name = "Poison Spider", chance = 30, interval = 1000, max = 2 },
}

monster.loot = {
	{ id = 2478, chance = 9000 }, -- brass legs
	{ id = 2148, chance = 23000, maxCount = 57 }, -- gold coin
	{ id = 2148, chance = 23000, maxCount = 28 }, -- gold coin
	{ id = 2148, chance = 23000, maxCount = 30 }, -- gold coin
	{ id = 2477, chance = 600 }, -- knight legs
	{ id = 2463, chance = 8600 }, -- plate armor
	{ id = 2545, chance = 7500, maxCount = 12 }, -- poison arrow
	{ id = 5879, chance = 2000 }, -- giant spider silk
	{ id = 2457, chance = 5300 }, -- steel helmet
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 7588, chance = 1000 }, -- strong health potion
			{ id = 2169, chance = 1375 }, -- time ring
			{ id = 2476, chance = 500 }, -- knight armor
			{ id = 7901, chance = 250 }, -- lightning headband
			{ id = 2171, chance = 400 }, -- platinum amulet
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 50, attack = 100 },
	{
		name = "combat",
		type = COMBAT_EARTHDAMAGE,
		interval = 1000,
		chance = 17,
		range = 7,
		radius = 1,
		target = true,
		shootEffect = CONST_ANI_POISON,
		effect = CONST_ME_GREEN_RINGS,
	},
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{ name = "speed", interval = 1000, chance = 6, speed = 310, duration = 20000, effect = CONST_ME_MAGIC_RED },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
