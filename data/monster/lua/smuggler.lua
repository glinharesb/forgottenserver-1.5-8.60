local mType = Game.createMonsterType("Smuggler")
local monster = {}

monster.description = "a smuggler"
monster.experience = 48
monster.outfit = {
	lookType = 134,
	lookHead = 95,
	lookBody = 0,
	lookLegs = 113,
	lookFeet = 115
}

monster.health = 130
monster.maxHealth = 130
monster.race = "blood"
monster.corpse = 6080
monster.speed = 210
monster.manaCost = 390

monster.changeTarget = {
	interval = 5000,
	chance = 8
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
	runHealth = 18,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I will silence you forever!", yell = false},
	{text = "You saw something you shouldn't!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 43000, maxCount = 10}, -- gold coin
	{id = 2050, chance = 50000}, -- torch
	{id = 2666, chance = 22500, maxCount = 2}, -- meat
	{id = 2649, chance = 17650}, -- leather legs
	{id = 2403, chance = 10000}, -- knife
	{id = 2671, chance = 6000, maxCount = 2}, -- ham
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2406, chance = 8000}, -- short sword
			{id = 2461, chance = 7850}, -- leather helmet
			{id = 2404, chance = 4400}, -- combat knife
			{id = 2376, chance = 5650}, -- sword
			{id = 7397, chance = 500} -- deer trophy
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 20, attack = 40}
}

monster.defenses = {
	defense = 13,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -12},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
