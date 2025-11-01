local mType = Game.createMonsterType("Vampire")
local monster = {}

monster.description = "a vampire"
monster.experience = 305
monster.outfit = {
	lookType = 68
}

monster.health = 450
monster.maxHealth = 450
monster.race = "blood"
monster.corpse = 6006
monster.speed = 220
monster.manaCost = 0

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
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
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
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 100,
	{text = "BLOOD!", yell = true},
	{text = "Let me kiss your neck.", yell = false},
	{text = "I smell warm blood.", yell = false},
	{text = "I call you, my bats! Come!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 6111, maxCount = 20}, -- gold coin
	{id = 2144, chance = 1620}, -- black pearl
	{id = 2032, chance = 10300}, -- bowl
	{id = 2172, chance = 50}, -- bronze amulet
	{id = 2127, chance = 140}, -- emerald bangle
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2747, chance = 17500}, -- grave flower
			{id = 2396, chance = 300}, -- ice rapier
			{id = 2412, chance = 15000}, -- katana
			{id = 2649, chance = 7850}, -- leather legs
			{id = 2229, chance = 11500}, -- skull
			{id = 2383, chance = 1222}, -- spike sword
			{id = 2479, chance = 140}, -- strange helmet
			{id = 7588, chance = 150}, -- strong health potion
			{id = 2534, chance = 300} -- vampire shield
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 50, attack = 50},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, range = 1, minDamage = -55, maxDamage = -105, effect = CONST_ME_MAGIC_RED},
	{name = "speed", interval = 2000, chance = 12, radius = 6, target = false, speed = -600, duration = 60000, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 23,
	armor = 17,
	{name = "speed", interval = 1500, chance = 120, range = 7, speed = 300, duration = 30000, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 15},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = -25},
	{type = COMBAT_DEATHDAMAGE, percent = 100}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
