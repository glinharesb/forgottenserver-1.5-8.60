local mType = Game.createMonsterType("Tortoise")
local monster = {}

monster.description = "a tortoise"
monster.experience = 90
monster.outfit = {
	lookType = 197
}

monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 6072
monster.speed = 200
monster.manaCost = 445

monster.changeTarget = {
	interval = 5000,
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
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

monster.loot = {
	{id = 2148, chance = 30000, maxCount = 30}, -- gold coin
	{id = 2671, chance = 4000, maxCount = 2}, -- ham
	{id = 2510, chance = 4500}, -- plate shield
	{id = 2667, chance = 4000}, -- fish
	{id = 1987, chance = 100000, -- bag
		child = {
			{id = 5678, chance = 1000, maxCount = 3}, -- tortoise egg
			{id = 6131, chance = 450}, -- tortoise shield
			{id = 5899, chance = 1300}, -- turtle shell
			{id = 2417, chance = 450} -- battle hammer
		}
	}
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, skill = 40, attack = 20}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 13},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE, percent = 0},
	{type = COMBAT_DEATHDAMAGE, percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

mType:register(monster)
