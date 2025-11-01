local mType = Game.createMonsterType("Beholder")
local monster = {}

monster.description = "a beholder"
monster.experience = 170
monster.outfit = {
	lookType = 17,
}

monster.health = 260
monster.maxHealth = 260
monster.race = "venom"
monster.corpse = 5992
monster.speed = 150
monster.manaCost = 0
monster.maxSummons = 6

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
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summons = {
	{ name = "Skeleton", chance = 12, interval = 1000, max = 6 },
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Eye for eye!", yell = false },
	{ text = "Here's looking at you!", yell = false },
	{ text = "Let me take a look at you!", yell = false },
	{ text = "You've got the look!", yell = false },
}

monster.loot = {
	{ id = 2148, chance = 35000, maxCount = 60 }, -- gold coin
	{ id = 2397, chance = 7250 }, -- longsword
	{ id = 2394, chance = 6000 }, -- morning star
	{ id = 2512, chance = 2750 }, -- wooden shield
	{ id = 2175, chance = 5650 }, -- spellbook
	{
		id = 1987,
		chance = 90000, -- bag
		child = {
			{ id = 2509, chance = 3500 }, -- steel shield
			{ id = 2377, chance = 3800 }, -- two handed sword
			{ id = 5898, chance = 775 }, -- beholder eye
			{ id = 7620, chance = 750 }, -- mana potion
			{ id = 2181, chance = 725 }, -- terra rod
			{ id = 2518, chance = 250 }, -- beholder shield
		},
	},
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 10, attack = 5 },
	{
		name = "combat",
		type = COMBAT_ENERGYDAMAGE,
		interval = 1000,
		chance = 7,
		range = 7,
		minDamage = -15,
		maxDamage = -45,
		shootEffect = CONST_ANI_ENERGY,
	},
	{
		name = "combat",
		type = COMBAT_FIREDAMAGE,
		interval = 2000,
		chance = 7,
		range = 7,
		minDamage = -25,
		maxDamage = -45,
		shootEffect = CONST_ANI_FIRE,
	},
	{
		name = "combat",
		type = COMBAT_PHYSICALDAMAGE,
		interval = 2000,
		chance = 8,
		range = 7,
		minDamage = -30,
		maxDamage = -50,
		shootEffect = CONST_ANI_SUDDENDEATH,
		effect = CONST_ME_MORTAREA,
	},
	{
		name = "combat",
		type = COMBAT_EARTHDAMAGE,
		interval = 2000,
		chance = 8,
		range = 7,
		minDamage = -5,
		maxDamage = -45,
		shootEffect = CONST_ANI_POISON,
	},
	{
		name = "combat",
		type = COMBAT_LIFEDRAIN,
		interval = 3000,
		chance = 6,
		range = 7,
		minDamage = -35,
		maxDamage = -45,
		effect = CONST_ME_MAGIC_RED,
	},
	{
		name = "combat",
		type = COMBAT_MANADRAIN,
		interval = 1000,
		chance = 5,
		range = 7,
		minDamage = -5,
		maxDamage = -25,
		effect = CONST_ME_MAGIC_RED,
	},
}

monster.defenses = {
	defense = 10,
	armor = 15,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 20 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
