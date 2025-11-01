local mType = Game.createMonsterType("Ghost")
local monster = {}

monster.description = "a ghost"
monster.experience = 120
monster.outfit = {
	lookType = 48,
}

monster.health = 150
monster.maxHealth = 150
monster.race = "undead"
monster.corpse = 5993
monster.speed = 160
monster.manaCost = 100

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Huh!", yell = false },
	{ text = "Shhhhhh", yell = false },
	{ text = "Buuuuuh", yell = false },
}

monster.loot = {
	{ id = 2642, chance = 23750 }, -- sandals
	{ id = 2394, chance = 17000 }, -- morning star
	{ id = 2404, chance = 7000 }, -- combat knife
	{ id = 2804, chance = 5000 }, -- shadow herb
	{ id = 2654, chance = 5000 }, -- cape
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 1962, chance = 3600 }, -- book
			{ id = 5909, chance = 1800 }, -- white piece of cloth
			{ id = 2532, chance = 1700 }, -- ancient shield
			{ id = 2165, chance = 500 }, -- stealth ring
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 30, attack = 40 },
	{
		name = "combat",
		type = COMBAT_LIFEDRAIN,
		interval = 1000,
		chance = 15,
		range = 1,
		minDamage = -25,
		maxDamage = -45,
	},
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 100 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
