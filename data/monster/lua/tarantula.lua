local mType = Game.createMonsterType("Tarantula")
local monster = {}

monster.description = "a tarantula"
monster.experience = 120
monster.outfit = {
	lookType = 219
}

monster.health = 225
monster.maxHealth = 225
monster.race = "venom"
monster.corpse = 6060
monster.speed = 280
monster.manaCost = 485

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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.loot = {
	{id = 2478, chance = 3250}, -- brass legs
	{id = 2148, chance = 23000, maxCount = 40}, -- gold coin
	{id = 2510, chance = 1800}, -- plate shield
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2457, chance = 1250}, -- steel helmet
			{id = 2169, chance = 200} -- time ring
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 30, attack = 45, condition = {type = CONDITION_POISON, totalDamage = 2, interval = 4000}},
	{name = "poisonfield", interval = 1000, chance = 20, range = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS}
}

monster.defenses = {
	defense = 17,
	armor = 15,
	{name = "speed", interval = 1000, chance = 13, speed = 334, duration = 5000, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -15},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = true},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
