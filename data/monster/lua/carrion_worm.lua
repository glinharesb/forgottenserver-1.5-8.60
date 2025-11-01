local mType = Game.createMonsterType("Carrion Worm")
local monster = {}

monster.description = "a carrion worm"
monster.experience = 70
monster.outfit = {
	lookType = 192,
}

monster.health = 145
monster.maxHealth = 145
monster.race = "blood"
monster.corpse = 6069
monster.speed = 200
monster.manaCost = 380

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
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
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

monster.loot = {
	{ id = 2148, chance = 20750, maxCount = 49 }, -- gold coin
	{ id = 2666, chance = 20000, maxCount = 2 }, -- meat
	{ id = 2671, chance = 18000 }, -- ham
	{ id = 3976, chance = 50000, maxCount = 5 }, -- worm
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2398, chance = 9000 }, -- mace
			{ id = 2376, chance = 5000 }, -- sword
			{ id = 2412, chance = 1000 }, -- katana
			{ id = 2530, chance = 1000 }, -- copper shield
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 20, attack = 30 },
}

monster.defenses = {
	defense = 11,
	armor = 8,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 5 },
	{ type = COMBAT_EARTHDAMAGE, percent = 5 },
	{ type = COMBAT_FIREDAMAGE, percent = -5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
