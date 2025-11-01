local mType = Game.createMonsterType("Black Knight")
local monster = {}

monster.description = "a black knight"
monster.experience = 1600
monster.outfit = {
	lookType = 131,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 3,
}

monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 6080
monster.speed = 450
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "MINE!", yell = true },
	{ text = "No prisoners!", yell = true },
	{ text = "NO MERCY!", yell = true },
	{ text = "By Bolg's Blood!", yell = false },
	{ text = "You're no match for me!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 16500, maxCount = 80 },
	{ id = 2148, chance = 16500, maxCount = 44 },
	{ id = 2389, chance = 12000, maxCount = 3 },
	{ id = 2691, chance = 15000, maxCount = 2 },
	{ id = 2478, chance = 17500 },
	{ id = 2120, chance = 16500 },
	{ id = 2381, chance = 14500 },
	{ id = 2463, chance = 7777 },
	{ id = 2457, chance = 7777 },
	{ id = 2377, chance = 5800 },
	{ id = 2475, chance = 6800 },
	{ id = 2417, chance = 3900 },
	{
		id = 1987,
		chance = 100000,
		child = {
			{ id = 2430, chance = 3900 },
			{ id = 2476, chance = 2000 },
			{ id = 2489, chance = 1428 },
			{ id = 2490, chance = 6666 },
			{ id = 2387, chance = 6666 },
			{ id = 2477, chance = 1000 },
			{ id = 2133, chance = 1000 },
			{ id = 2414, chance = 500 },
			{ id = 7895, chance = 375 },
			{ id = 2114, chance = 250 },
			{ id = 2195, chance = 200 },
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 90, attack = 60 },
	{
		name = "combat",
		interval = 2000,
		chance = 20,
		type = COMBAT_PHYSICALDAMAGE,
		minDamage = -65,
		maxDamage = -145,
		range = 7,
		shootEffect = CONST_ANI_SPEAR,
		target = true,
	},
	{
		name = "combat",
		interval = 3000,
		chance = 15,
		type = COMBAT_PHYSICALDAMAGE,
		minDamage = -80,
		maxDamage = -155,
		range = 7,
		radius = 3,
		effect = CONST_ME_BLACKSMOKE,
		target = false,
	},
}

monster.defenses = {
	defense = 30,
	armor = 25,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 22 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 80 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 95 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = -16 },
	{ type = COMBAT_DEATHDAMAGE, percent = 20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
