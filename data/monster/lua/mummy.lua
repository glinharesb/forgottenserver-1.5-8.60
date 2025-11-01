local mType = Game.createMonsterType("Mummy")
local monster = {}

monster.description = "a mummy"
monster.experience = 150
monster.outfit = {
	lookType = 65
}

monster.health = 240
monster.maxHealth = 240
monster.race = "undead"
monster.corpse = 6004
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "I will ssswallow your sssoul!", yell = false},
	{text = "Mort ulhegh dakh visss.", yell = false},
	{text = "Flesssh to dussst!", yell = false},
	{text = "I will tassste life again!", yell = false},
	{text = "Ahkahra exura belil mort!", yell = false},
	{text = "Yohag Sssetham!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 15000, maxCount = 46}, -- gold coin
	{id = 2148, chance = 15000, maxCount = 45}, -- gold coin
	{id = 3976, chance = 50000, maxCount = 3}, -- worm
	{id = 2162, chance = 15750}, -- magic lightwand
	{id = 2406, chance = 8350}, -- short sword
	{id = 2134, chance = 5000}, -- silver brooch
	{id = 2161, chance = 4650}, -- strange talisman
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2124, chance = 2222}, -- crystal ring
			{id = 2411, chance = 1900}, -- poison dagger
			{id = 2144, chance = 1270}, -- black pearl
			{id = 2170, chance = 110}, -- silver amulet
			{id = 5914, chance = 250}, -- yellow piece of cloth
			{id = 2529, chance = 110} -- black shield
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 50, attack = 28, condition = {type = CONDITION_POISON, totalDamage = 65, interval = 4000}},
	{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 15, range = 1, minDamage = -30, maxDamage = -40},
	{name = "speed", interval = 1000, chance = 8, range = 7, speed = -600, duration = 10000, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 20,
	armor = 14
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 22},
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
