local mType = Game.createMonsterType("Orc Shaman")
local monster = {}

monster.description = "a orc shaman"
monster.experience = 110
monster.outfit = {
	lookType = 6
}

monster.health = 115
monster.maxHealth = 115
monster.race = "blood"
monster.corpse = 5978
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 15,
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
	{text = "Huumans stinkk!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 61000, maxCount = 5},
	{id = 2686, chance = 10000, maxCount = 2},
	{id = 2458, chance = 9500},
	{id = 2464, chance = 8000},
	{id = 1987, chance = 100000, child = {
		{id = 2389, chance = 6350},
		{id = 1958, chance = 3500},
		{id = 2188, chance = 1500},
		{id = 2401, chance = 3000}
	}}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 10, attack = 15},
	{name = "combat", interval = 1000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -20, maxDamage = -30, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
	{name = "combat", interval = 1000, chance = 8, type = COMBAT_FIREDAMAGE, minDamage = -5, maxDamage = -45, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 10,
	armor = 8,
	{name = "combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 27, maxDamage = 43, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 25},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.summons = {
	{name = "Snake", chance = 25, interval = 1000, max = 4}
}

mType:register(monster)
