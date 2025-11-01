local mType = Game.createMonsterType("Valkyrie")
local monster = {}

monster.description = "a valkyrie"
monster.experience = 85
monster.outfit = {
	lookType = 139,
	lookHead = 113,
	lookBody = 57,
	lookLegs = 95,
	lookFeet = 113,
}

monster.health = 190
monster.maxHealth = 190
monster.race = "blood"
monster.corpse = 6081
monster.speed = 176
monster.manaCost = 450

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
	summonable = true,
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
	{ text = "Another head for me!", yell = false },
	{ text = "Head off!", yell = false },
	{ text = "Your head will be mine!", yell = false },
	{ text = "Stand still!", yell = false },
	{ text = "One more head for me!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 20000, maxCount = 12 }, -- gold coin
	{ id = 2666, chance = 20000, maxCount = 3 }, -- meat
	{ id = 2674, chance = 10000, maxCount = 4 }, -- apple
	{ id = 2229, chance = 55500, maxCount = 2 }, -- skull
	{ id = 2379, chance = 15000 }, -- dagger
	{ id = 2458, chance = 7000 }, -- chain helmet
	{ id = 2464, chance = 8000 }, -- chain armor
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2389, chance = 10000, maxCount = 3 }, -- spear
			{ id = 3965, chance = 1000 }, -- hunting spear
			{ id = 2463, chance = 1500 }, -- plate armor
			{ id = 2125, chance = 850 }, -- crystal necklace
			{ id = 2387, chance = 800 }, -- double axe
			{ id = 2200, chance = 1000 }, -- protection amulet
			{ id = 7618, chance = 500 }, -- health potion
			{ id = 2147, chance = 200 }, -- small ruby
			{ id = 2145, chance = 200 }, -- small diamond
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 25, attack = 40 },
	{
		name = "combat",
		type = COMBAT_PHYSICALDAMAGE,
		interval = 1000,
		chance = 15,
		range = 7,
		minDamage = -5,
		maxDamage = -50,
		shootEffect = CONST_ANI_SPEAR,
	},
}

monster.defenses = {
	defense = 14,
	armor = 12,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -6 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 7 },
	{ type = COMBAT_DEATHDAMAGE, percent = -7 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
