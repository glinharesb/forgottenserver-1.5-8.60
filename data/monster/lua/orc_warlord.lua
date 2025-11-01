local mType = Game.createMonsterType("Orc Warlord")
local monster = {}

monster.description = "a orc warlord"
monster.experience = 670
monster.outfit = {
	lookType = 2
}

monster.health = 950
monster.maxHealth = 950
monster.race = "blood"
monster.corpse = 6008
monster.speed = 290
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
	illusionable = false,
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
	{text = "Ranat Ulderek!", yell = false},
	{text = "Orc buta bana!", yell = false},
	{text = "Ikem rambo zambo!", yell = false},
	{text = "Futchi maruk buta!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 15000, maxCount = 50},
	{id = 2399, chance = 4000, maxCount = 22},
	{id = 2667, chance = 12500, maxCount = 2},
	{id = 2419, chance = 29500},
	{id = 2666, chance = 9000, maxCount = 2},
	{id = 2428, chance = 17650},
	{id = 2463, chance = 6000},
	{id = 2200, chance = 7500},
	{id = 2647, chance = 6000},
	{id = 3965, chance = 7000},
	{id = 1987, chance = 100000, child = {
		{id = 2478, chance = 9000},
		{id = 2465, chance = 9000},
		{id = 2490, chance = 6500},
		{id = 2377, chance = 5000},
		{id = 2434, chance = 1000},
		{id = 2497, chance = 750},
		{id = 2165, chance = 900},
		{id = 7618, chance = 1000},
		{id = 7395, chance = 100},
		{id = 2179, chance = 100},
		{id = 7891, chance = 100}
	}}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 90, attack = 50},
	{name = "combat", interval = 3000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -120, range = 7, shootEffect = CONST_ANI_THROWINGSTAR, target = true}
}

monster.defenses = {
	defense = 35,
	armor = 22,
	{name = "invisible", interval = 1000, chance = 4, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 20},
	{type = COMBAT_DEATHDAMAGE, percent = -5}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
