local mType = Game.createMonsterType("Amazon")
local monster = {}

monster.description = "a amazon"
monster.experience = 60
monster.outfit = {
	lookType = 137,
	lookHead = 113,
	lookBody = 120,
	lookLegs = 114,
	lookFeet = 132
}

monster.health = 110
monster.maxHealth = 110
monster.race = "blood"
monster.corpse = 6081
monster.speed = 210
monster.manaCost = 390

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
	targetDistance = 4,
	runHealth = 10,
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
	{text = "Yeeee ha!", yell = false},
	{text = "Your head shall be mine!", yell = false}
}

monster.loot = {
	{id = 2148, chance = 23000, maxCount = 10}, -- gold coin
	{id = 2229, chance = 55500, maxCount = 2}, -- skull
	{id = 2379, chance = 81000}, -- dagger
	{id = 2467, chance = 43000}, -- leather armor
	{id = 2691, chance = 26000}, -- brown bread
	{id = 2385, chance = 22000}, -- sabre
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 2526, chance = 7000}, -- studded shield
			{id = 2050, chance = 5000}, -- torch
			{id = 2125, chance = 500}, -- crystal necklace
			{id = 2147, chance = 200} -- small ruby
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 20, attack = 30},
	{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -5, maxDamage = -40, shootEffect = CONST_ANI_THROWINGKNIFE}
}

monster.defenses = {
	defense = 11,
	armor = 11
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -8},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = -7}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
