local mType = Game.createMonsterType("War Wolf")
local monster = {}

monster.description = "a war wolf"
monster.experience = 55
monster.outfit = {
	lookType = 3
}

monster.health = 140
monster.maxHealth = 140
monster.race = "blood"
monster.corpse = 6009
monster.speed = 200
monster.manaCost = 0

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
	summonable = false,
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
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Grrrrrrr", yell = false},
	{text = "Yoooohhuuuu!", yell = true}
}

monster.loot = {
	{id = 2666, chance = 25000, maxCount = 4}, -- meat
	{id = 2671, chance = 20000, maxCount = 2}, -- ham
	{id = 5897, chance = 2000}, -- wolf paw
	{id = 3976, chance = 250} -- wolf trophy
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 40, attack = 20}
}

monster.defenses = {
	defense = 16,
	armor = 10
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 0},
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
