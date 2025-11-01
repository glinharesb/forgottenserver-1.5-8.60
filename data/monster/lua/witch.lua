local mType = Game.createMonsterType("Witch")
local monster = {}

monster.description = "a witch"
monster.experience = 120
monster.outfit = {
	lookType = 54,
}

monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 6081
monster.speed = 180
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
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 30,
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
	{ text = "Horax pokti! Hihihihi!", yell = false },
	{ text = "Herba budinia ex!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 13000, maxCount = 10 }, -- gold coin
	{ id = 2687, chance = 15750, maxCount = 8 }, -- cookie
	{ id = 2643, chance = 67000 }, -- leather boots
	{ id = 2696, chance = 58750 }, -- cheese
	{ id = 2405, chance = 52500 }, -- sickle
	{ id = 2654, chance = 48500 }, -- cape
	{ id = 2324, chance = 29000 }, -- broom
	{ id = 2651, chance = 19500 }, -- coat
	{
		id = 1987,
		chance = 100000, -- bag
		child = {
			{ id = 2129, chance = 15500 }, -- wolf tooth chain
			{ id = 2800, chance = 10500 }, -- star herb
			{ id = 2199, chance = 1000 }, -- garlic necklace
			{ id = 2402, chance = 2000 }, -- silver dagger
			{ id = 2185, chance = 1000 }, -- necrotic rod
			{ id = 2801, chance = 300 }, -- fern
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 10, attack = 20 },
	{
		name = "combat",
		type = COMBAT_FIREDAMAGE,
		interval = 1000,
		chance = 20,
		range = 7,
		minDamage = -30,
		maxDamage = -75,
		shootEffect = CONST_ANI_FIRE,
	},
	{
		name = "firefield",
		interval = 1000,
		chance = 13,
		range = 7,
		radius = 1,
		target = true,
		shootEffect = CONST_ANI_FIRE,
	},
}

monster.defenses = {
	defense = 12,
	armor = 8,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -14 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 30 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
