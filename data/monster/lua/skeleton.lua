local mType = Game.createMonsterType("Skeleton")
local monster = {}

monster.description = "a skeleton"
monster.experience = 35
monster.outfit = {
	lookType = 33
}

monster.health = 50
monster.maxHealth = 50
monster.race = "undead"
monster.corpse = 5972
monster.speed = 154
monster.manaCost = 300

monster.changeTarget = {
	interval = 2000,
	chance = 0
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
	{id = 2148, chance = 24500, maxCount = 10}, -- gold coin
	{id = 2050, chance = 25000}, -- torch
	{id = 2230, chance = 49750}, -- bone
	{id = 2388, chance = 23750}, -- hatchet
	{id = 2398, chance = 19500}, -- mace
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2511, chance = 13250}, -- brass shield
			{id = 2050, chance = 25000}, -- torch
			{id = 2473, chance = 8250}, -- viking helmet
			{id = 2376, chance = 1500} -- sword
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 15, attack = 16},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 9, range = 1, minDamage = -7, maxDamage = -13}
}

monster.defenses = {
	defense = 9,
	armor = 2
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -25},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
