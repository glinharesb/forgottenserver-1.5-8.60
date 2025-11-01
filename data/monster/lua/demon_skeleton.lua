local mType = Game.createMonsterType("Demon Skeleton")
local monster = {}

monster.description = "a demon skeleton"
monster.experience = 240
monster.outfit = {
	lookType = 37,
}

monster.health = 400
monster.maxHealth = 400
monster.race = "undead"
monster.corpse = 5963
monster.speed = 230
monster.manaCost = 620

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
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
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

monster.loot = {
	{ id = 2148, chance = 18500, maxCount = 50 }, -- gold coin
	{ id = 2050, chance = 52750 }, -- torch
	{ id = 2399, chance = 3000, maxCount = 3 }, -- throwing star
	{ id = 2417, chance = 3000 }, -- battle hammer
	{ id = 2459, chance = 2650 }, -- iron helmet
	{ id = 2513, chance = 1000 }, -- battle shield
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2194, chance = 400 }, -- mysterious fetish
			{ id = 7620, chance = 900 }, -- mana potion
			{ id = 2178, chance = 250 }, -- mind stone
			{ id = 2515, chance = 50 }, -- guardian shield
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 64, attack = 50 },
	{
		name = "combat",
		type = COMBAT_LIFEDRAIN,
		interval = 2000,
		chance = 10,
		range = 1,
		minDamage = -30,
		maxDamage = -50,
	},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -25 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
