local mType = Game.createMonsterType("Bear")
local monster = {}

monster.description = "a bear"
monster.experience = 23
monster.outfit = {
	lookType = 16,
}

monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 5975
monster.speed = 176
monster.manaCost = 300

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
	{ text = "grrrr", yell = false },
	{ text = "groar", yell = false },
}

monster.loot = {
	{ id = 5896, chance = 2000 }, -- bear paw
	{ id = 2671, chance = 25000, maxCount = 3 }, -- ham
	{ id = 2666, chance = 46750, maxCount = 4 }, -- meat
	{ id = 3976, chance = 3000, maxCount = 3 }, -- worm
	{ id = 5902, chance = 1700 }, -- honeycomb
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 40, attack = 10 },
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 7 },
	{ type = COMBAT_DEATHDAMAGE, percent = -4 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
