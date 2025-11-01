local mType = Game.createMonsterType("Hunter")
local monster = {}

monster.description = "a hunter"
monster.experience = 150
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
}

monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 6080
monster.speed = 215
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	targetDistance = 4,
	runHealth = 10,
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
	{ text = "Guess who we're hunting, haha!", yell = false },
	{ text = "Guess who we are hunting!", yell = false },
	{ text = "Bullseye!", yell = false },
	{ text = "You'll make a nice trophy!", yell = false },
}

monster.loot = {
	{ id = 2545, chance = 12500, maxCount = 2 }, -- poison arrow
	{ id = 2544, chance = 9000, maxCount = 24 }, -- arrow
	{ id = 2675, chance = 22500, maxCount = 2 }, -- orange
	{ id = 2690, chance = 7975, maxCount = 2 }, -- roll
	{ id = 2050, chance = 20000 }, -- torch
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2465, chance = 7000 }, -- brass armor
			{ id = 2461, chance = 12500 }, -- leather helmet
			{ id = 2649, chance = 11750 }, -- leather legs
			{ id = 2456, chance = 30000 }, -- bow
			{ id = 2460, chance = 8750 }, -- brass helmet
			{ id = 2201, chance = 900 }, -- dragon necklace
			{ id = 2546, chance = 2000, maxCount = 3 }, -- burst arrow
			{ id = 7394, chance = 300 }, -- wolf trophy
			{ id = 7400, chance = 300 }, -- lion trophy
			{ id = 5875, chance = 250 }, -- sniper gloves
			{ id = 2147, chance = 100 }, -- small ruby
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 10, attack = 20 },
	{
		name = "combat",
		type = COMBAT_PHYSICALDAMAGE,
		interval = 2000,
		chance = 50,
		range = 7,
		minDamage = -50,
		maxDamage = -100,
		shootEffect = CONST_ANI_ARROW,
	},
}

monster.defenses = {
	defense = 10,
	armor = 8,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
