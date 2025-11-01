local mType = Game.createMonsterType("Swamp Troll")
local monster = {}

monster.description = "a swamp troll"
monster.experience = 65
monster.outfit = {
	lookType = 76
}

monster.health = 55
monster.maxHealth = 55
monster.race = "venom"
monster.corpse = 6018
monster.speed = 128
monster.manaCost = 320

monster.changeTarget = {
	interval = 5000,
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
	runHealth = 15,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrr", yell = false},
	{text = "Groar!", yell = false},
	{text = "Me strong! Me ate spinach!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 31500, maxCount = 5}, -- gold coin
	{id = 2667, chance = 63500}, -- fish
	{id = 2379, chance = 27500}, -- dagger
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2050, chance = 15750}, -- torch
			{id = 2389, chance = 14700}, -- spear
			{id = 2643, chance = 9500}, -- leather boots
			{id = 2580, chance = 150} -- fishing rod
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 10, attack = 13, condition = {type = CONDITION_POISON, totalDamage = 30, interval = 4000}}
}

monster.defenses = {
	defense = 10,
	armor = 6
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
