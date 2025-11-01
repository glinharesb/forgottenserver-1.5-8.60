local mType = Game.createMonsterType("Wild Warrior")
local monster = {}

monster.description = "a wild warrior"
monster.experience = 55
monster.outfit = {
	lookType = 131,
	lookHead = 57,
	lookBody = 57,
	lookLegs = 57,
	lookFeet = 57
}

monster.health = 120
monster.maxHealth = 120
monster.race = "blood"
monster.corpse = 6080
monster.speed = 215
monster.manaCost = 420

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
	runHealth = 10,
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
	{text = "An enemy!", yell = false},
	{text = "Gimme your money!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 16750, maxCount = 30}, -- gold coin
	{id = 2666, chance = 20000, maxCount = 2}, -- meat
	{id = 2649, chance = 27500}, -- leather legs
	{id = 2110, chance = 2650}, -- doll
	{id = 2465, chance = 4000}, -- brass armor
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2509, chance = 2650}, -- steel shield
			{id = 2386, chance = 23750}, -- axe
			{id = 2458, chance = 2650}, -- chain helmet
			{id = 2511, chance = 17000}, -- brass shield
			{id = 2459, chance = 250}, -- iron helmet
			{id = 2391, chance = 100} -- war hammer
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 60, attack = 20}
}

monster.defenses = {
	defense = 18,
	armor = 9,
	{name = "speed", interval = 1000, chance = 6, speed = 200, duration = 2000, effect = CONST_ME_MAGIC_RED}
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
