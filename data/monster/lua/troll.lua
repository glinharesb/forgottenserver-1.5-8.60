local mType = Game.createMonsterType("Troll")
local monster = {}

monster.description = "a troll"
monster.experience = 20
monster.outfit = {
	lookType = 15,
}

monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 5960
monster.speed = 126
monster.manaCost = 290

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
	health = 0,
	damage = 0,
	random = 0,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
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
	{ text = "Grrrr", yell = false },
	{ text = "Groar", yell = false },
	{ text = "Gruntz!", yell = false },
	{ text = "Hmmm, bugs.", yell = false },
	{ text = "Hmmm, dogs.", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 26750, maxCount = 12 }, -- gold coin
	{ id = 2380, chance = 18750 }, -- hand axe
	{ id = 2643, chance = 8750 }, -- leather boots
	{ id = 2461, chance = 9750 }, -- leather helmet
	{ id = 2666, chance = 11750 }, -- meat
	{ id = 2120, chance = 8750 }, -- rope
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2389, chance = 12000 }, -- spear
			{ id = 2512, chance = 15000 }, -- wooden shield
			{ id = 2448, chance = 4500 }, -- studded club
			{ id = 2170, chance = 50 }, -- silver amulet
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 1500, chance = 100, skill = 20, attack = 16 },
}

monster.defenses = {
	defense = 8,
	armor = 6,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = -4 },
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
