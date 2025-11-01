local mType = Game.createMonsterType("Orc Berserker")
local monster = {}

monster.description = "a orc berserker"
monster.experience = 195
monster.outfit = {
	lookType = 8
}

monster.health = 210
monster.maxHealth = 210
monster.race = "blood"
monster.corpse = 5980
monster.speed = 250
monster.manaCost = 590

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
	chance = 10,
	{text = "KRAK ORRRRRRK!", yell = true}
}

monster.loot = {
	{id = 2148, chance = 26000, maxCount = 15}, -- gold coin
	{id = 2671, chance = 20000}, -- ham
	{id = 2458, chance = 13500}, -- chain helmet
	{id = 2464, chance = 12500}, -- chain armor
	{id = 2044, chance = 7000}, -- lamp
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2381, chance = 9000}, -- halberd
			{id = 2378, chance = 5500}, -- battle axe
			{id = 3965, chance = 5000, maxCount = 2} -- hunting spear
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 40, attack = 80}
}

monster.defenses = {
	defense = 12,
	armor = 15,
	{name = "speed", interval = 1000, chance = 15, speed = 290, duration = 6000, effect = CONST_ME_MAGIC_RED}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 10},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
