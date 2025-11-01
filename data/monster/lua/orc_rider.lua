local mType = Game.createMonsterType("Orc Rider")
local monster = {}

monster.description = "a orc rider"
monster.experience = 110
monster.outfit = {
	lookType = 4,
}

monster.health = 180
monster.maxHealth = 180
monster.race = "blood"
monster.corpse = 6010
monster.speed = 340
monster.manaCost = 0

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
	convinceable = true,
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
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Grrrrrrr", yell = false },
	{ text = "Orc arga Huummmak!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 16000, maxCount = 10 }, -- gold coin
	{ id = 2666, chance = 18000, maxCount = 3 }, -- meat
	{ id = 2428, chance = 26250 }, -- orcish axe
	{
		id = 1988,
		chance = 20000, -- backpack
		child = {
			{ id = 2129, chance = 10500 }, -- wolf tooth chain
			{ id = 2482, chance = 11000 }, -- studded helmet
			{ id = 2050, chance = 9000 }, -- torch
			{ id = 2513, chance = 3000 }, -- battle shield
			{ id = 2483, chance = 2500 }, -- scale armor
			{ id = 2425, chance = 1000 }, -- obsidian lance
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 50, attack = 40 },
}

monster.defenses = {
	defense = 20,
	armor = 9,
	{ name = "speed", interval = 1000, chance = 7, speed = 900, duration = 6000, effect = CONST_ME_MAGIC_RED },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
