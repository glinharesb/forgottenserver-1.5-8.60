local mType = Game.createMonsterType("Ghoul")
local monster = {}

monster.description = "a ghoul"
monster.experience = 85
monster.outfit = {
	lookType = 18,
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5976
monster.speed = 144
monster.manaCost = 450

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
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

monster.loot = {
	{ id = 2148, chance = 34750, maxCount = 30 }, -- gold coin
	{ id = 2460, chance = 19250 }, -- brass helmet
	{ id = 5913, chance = 1000 }, -- brown piece of cloth
	{ id = 2403, chance = 15250 }, -- knife
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2168, chance = 200 }, -- life ring
			{ id = 2483, chance = 2900 }, -- scale armor
			{ id = 2229, chance = 1500, maxCount = 2 }, -- skull
			{ id = 2050, chance = 57850 }, -- torch
			{ id = 2473, chance = 5800 }, -- viking helmet
			{ id = 3976, chance = 47500, maxCount = 6 }, -- worm
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 40, attack = 28 },
	{
		name = "combat",
		type = COMBAT_LIFEDRAIN,
		interval = 1000,
		chance = 12,
		range = 1,
		minDamage = -15,
		maxDamage = -25,
	},
}

monster.defenses = {
	defense = 17,
	armor = 8,
	{
		name = "combat",
		type = COMBAT_HEALING,
		interval = 1000,
		chance = 13,
		minDamage = 9,
		maxDamage = 15,
		effect = CONST_ME_MAGIC_BLUE,
	},
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
