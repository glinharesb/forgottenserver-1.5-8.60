local mType = Game.createMonsterType("Cyclops")
local monster = {}

monster.description = "a cyclops"
monster.experience = 150
monster.outfit = {
	lookType = 22,
}

monster.health = 260
monster.maxHealth = 260
monster.race = "blood"
monster.corpse = 5962
monster.speed = 200
monster.manaCost = 490

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
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
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Il lorstok human!", yell = false },
	{ text = "Toks utat.", yell = false },
	{ text = "Human, uh whil dyh!", yell = false },
	{ text = "Youh ah trak!", yell = false },
	{ text = "Let da mashing begin!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 22500, maxCount = 33 },
	{ id = 2148, chance = 22500, maxCount = 22 },
	{ id = 2671, chance = 4500, maxCount = 4 },
	{ id = 7618, chance = 250 },
	{ id = 2666, chance = 18333, maxCount = 3 },
	{ id = 2510, chance = 2500 },
	{ id = 2406, chance = 7000 },
	{
		id = 1987,
		chance = 100000,
		child = {
			{ id = 2513, chance = 2300 },
			{ id = 2129, chance = 400 },
			{ id = 2381, chance = 800 },
			{ id = 2490, chance = 250 },
			{ id = 2209, chance = 100 },
			{ id = 7398, chance = 70 },
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 60, attack = 30 },
}

monster.defenses = {
	defense = 20,
	armor = 15,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 25 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
