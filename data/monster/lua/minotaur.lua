local mType = Game.createMonsterType("Minotaur")
local monster = {}

monster.description = "a minotaur"
monster.experience = 50
monster.outfit = {
	lookType = 25
}

monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5969
monster.speed = 170
monster.manaCost = 330

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
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Kaplar!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 17500, maxCount = 28}, -- gold coin
	{id = 2510, chance = 17750}, -- plate shield
	{id = 2649, chance = 15000}, -- leather legs
	{id = 2398, chance = 8500}, -- mace
	{id = 2376, chance = 9500}, -- sword
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2464, chance = 9200}, -- chain armor
			{id = 2666, chance = 9000}, -- meat
			{id = 2460, chance = 7250}, -- brass helmet
			{id = 2458, chance = 4500}, -- chain helmet
			{id = 2386, chance = 3950}, -- axe
			{id = 2554, chance = 2400}, -- shovel
			{id = 5878, chance = 850}, -- minotaur leather
			{id = 2172, chance = 250} -- bronze amulet
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 20, attack = 30}
}

monster.defenses = {
	defense = 11,
	armor = 11
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
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
