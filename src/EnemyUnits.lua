local file = rom.path.combine(rom.paths.Content, 'Game/Units/Enemies.sjson')
sjson.hook(file, function(data)

	table.insert(data.Units,
	{
		Name = "PyreMedium",
		InheritFrom = "1_BaseEnemy",
		DisplayInEditor = true,
		MoveGraphic = "PyreMedium_Run",
		Speed = 200.0,
		StartGraphic = "PyreMedium_Walk",
		StopGraphic = "PyreMedium_Stop",
		Thing = 
		{
			EditorOutlineDrawBounds = false,
			Graphic = "PyreMedium_Idle",
			Tallness = 230,
			Scale = 0.65,
			SelectionHeight = 330.0,
			SelectionWidth = 260.0,
			SelectionShiftY = 60.0,
			Points =
			{
				{ X = 0, Y = 32, },
				{ X = 64, Y = 0, },
				{ X = 0, Y = -32, },
				{ X = -64, Y = 0, },
			},
		},
	})

	table.insert(data.Units,
	{
		Name = "PyreSmall",
		InheritFrom = "1_BaseEnemy",
		DisplayInEditor = true,
		MoveGraphic = "PyreSmall_Walk",
		Speed = 390.0,
		StartGraphic = "PyreSmall_Walk",
		StopGraphic = "PyreSmall_Stop",
		Thing = 
		{
			EditorOutlineDrawBounds = false,
			Graphic = "PyreSmall_Idle",
			AttachedAnim = "MedusaShadow",
			OffsetZ = 10.0,
			Tallness = 110,
			SelectionHeight = 160.0,
			SelectionWidth = 160.0,
			SelectionShiftY = 20.0,
			Points =
			{
				{ X = 0, Y = 32, },
				{ X = 64, Y = 0, },
				{ X = 0, Y = -32, },
				{ X = -64, Y = 0, },
			},
			Using =
			{
				{ Name = "PyreSmall_Banished" },
			},
		},
	})

	table.insert(data.Units,
	{
		Name = "PyreLarge",
		InheritFrom = "1_BaseEnemy",
		DisplayInEditor = true,
		MoveGraphic = "PyreLarge_Walk",
		Speed = 160.0,
		StopGraphic = "PyreLarge_Stop",
		Thing = 
		{
			EditorOutlineDrawBounds = false,
			Graphic = "PyreLarge_Idle",
			Tallness = 280.0,
			SelectionHeight = 440.0,
			SelectionWidth = 480.0,
			SelectionShiftY = 120.0,
			AttachedAnim = "MedusaShadow",
			Gravity = 18000,
			SelectionHeight = 340.0,
			SelectionWidth = 320.0,
			SelectionShiftY = 90.0,
			Points =
			{
				{ X = 44, Y = 62, },
				{ X = 132, Y = 16, },
				{ X = 132, Y = -28, },
				{ X = 44, Y = -72, },
				{ X = -44, Y = -72, },
				{ X = -132, Y = -28, },
				{ X = -132, Y = 16, },
				{ X = -44, Y = 62, },
			},
		},
	})

	table.insert(data.Units,
	{
		Name = "PyreTree",
		InheritFrom = "1_BaseEnemy",
		DisplayInEditor = true,
		--MoveGraphic = "PyreMedium_Run",
		Speed = 200.0,
		StartGraphic = "PyreTree_Walk",
		--StopGraphic = "PyreMedium_Stop",
		Thing = 
		{
			EditorOutlineDrawBounds = false,
			Graphic = "PyreTree_Idle",
			Tallness = 230,
			Scale = 0.65,
			SelectionHeight = 330.0,
			SelectionWidth = 260.0,
			SelectionShiftY = 60.0,
			Points =
			{
				{ X = 0, Y = 32, },
				{ X = 64, Y = 0, },
				{ X = 0, Y = -32, },
				{ X = -64, Y = 0, },
			},
		},
	})

	table.insert(data.Units,
	{
		Name = "PyreTreeDefender",
		InheritFrom = "1_BaseTrap",
		AutoLockable = false,
		CollideWithUnits = false,
		DefaultAngle = 0.0,
		DisplayInEditor = true,
		ImmuneToStun = true,
		Life =
		{
			HomingEligible = false,
			JumpTargetEligible = false,
			ProjectilesAlwaysPenetrate = true,
		},
		Thing =
		{
			EditorOutlineDrawBounds = false,
			Graphic = "PyreTree_DefenderIdle",
			Grip = 6000.0,
			OnTouchdownFxAnim = "DoorCloseDust",
			StopsProjectiles = false,
			Points =
			{
				{ X = 0, Y = 52, },
				{ X = 100, Y = 0, },
				{ X = 0, Y = -52, },
				{ X = -100, Y = 0, },
			},
		},
	})

return data
end)

UnitSetData.Pyre =
{
-- Short-Aggro crawler, lashes out violently if approached
	PyreMedium =
	{
		InheritFrom = { "BaseFEnemy", "BaseVulnerableEnemy" },

		ActivateFx = "EnemyPreSpawnTerrainMedium",
		ActivateFx2 = "EnemyPreSpawnStandingMedium",
		ActivateFxPreSpawn = "EnemySpawnBurstMedium",
		ActivateAnimation = "Enemy_Guard_Spawn",
		ActivateStartAlpha = 1.0,

		DeathAnimation = "PyreMedium_Banished",
		DeathFx = "EnemyDeathFxIris",

		MaxHealth = 60,

		IsAggroedSound = "/SFX/Enemy Sounds/Guard/EmoteAlerted",
		DeathSound = "/SFX/Enemy Sounds/Guard/EmoteDying",
		Material = "Bone",

		HealthBarType = "Small",

		PreferredSpawnPoint = "EnemyPointMelee",

		AIOptions =
		{
			"AggroAI",
		},
		PostAggroAI = "AttackerAI",
		AIAggroRange = 800,
		
		StunAnimations = 
		{
			Default = "Enemy_Guard_HitStun",
			Heavy = "Enemy_Guard_HitStun_Heavy",
		},

		DefaultAIData =
		{
			DeepInheritance = true,
			PreAttackSound = "/SFX/Enemy Sounds/Guard/EmoteCharging",
		},

		MoneyDropOnDeath =
		{
			Chance = 0.25,
			MinParcels = 1,
			MaxParcels = 1,
			MinValue = 1,
			MaxValue = 1,
			ValuePerDifficulty = 0.33,
			ValuePerDifficultyMaxValueVariance = 1.3,
		},

		WeaponOptions =
		{
			"PyreMediumThrow",
		},
		--"PyreMediumEvade"
		ActiveCapWeight = 0.6,

		GeneratorData =
		{
			DifficultyRating = 5,
			BlockEnemyTypes = {"Guard_Elite"}
		},

		EnemySightedVoiceLines =
		{
			RandomRemaining = true,
			UsePlayerSource = true,
			GameStateRequirements = 
			{
				-- None
			},
			SkipCooldownCheckIfNonePlayed = true,
			Cooldowns =
			{
				{ Name = "CombatBeginsLinesPlayedRecently", Time = 300 },
			},
			TriggerCooldowns = { "MelinoeAnyQuipSpeech", },
			SuccessiveChanceToPlay = 0.1,

			{ Cue = "/VO/Melinoe_1653", Text = "Whispers.", },
			{ Cue = "/VO/Melinoe_1654", Text = "Whispers!", PlayFirst = true },
			{ Cue = "/VO/Melinoe_1655", Text = "More Whispers." },
			{ Cue = "/VO/Melinoe_1656", Text = "Let's hear it, Whispers." },
		},
	},

	PyreSmall =
	{
		InheritFrom = { "BaseFEnemy", "BaseVulnerableEnemy", "LowPolyEnemy" },
		IntroEncounterName = "RadiatorIntro",

		MaxHealth = 45,

		AIAggroRange = 1250,

		PreferredSpawnPoint = "EnemyPointMelee",
		Groups = { "FlyingEnemies" },
		HealthBarOffsetY = -100,
		HealthBarType = "Small",
		Material = "Organic",

		ActivateFx = "EnemyPreSpawnTerrainSmall",
		ActivateFx2 = "EnemyPreSpawnStandingSmall",
		ActivateFxPreSpawn = "EnemySpawnBurstSmall",
		ActivateAnimation = "Enemy_Radiator_Spawn",
		ActivateStartAlpha = 1.0,
		ArmorSparkAnimation = "HitSparkArmor_Small",

		IsAggroedSound = "/SFX/Enemy Sounds/Radiator/EmoteAlerted",
		DeathSound = "/SFX/Enemy Sounds/Radiator/EmoteDying",
		DeathAnimation = "PyreSmall_Banished",
		DeathFx = "EnemyDeathFxIris",

		AIOptions =
		{
			"AggroAI",
		},
		
		StunAnimations = 
		{
			Default = "Enemy_Radiator_HitStun",
		},
		DefaultAIData =
		{
			DeepInheritance = true,
			PreAttackSound = "/SFX/Enemy Sounds/Radiator/EmoteCharging",

			ExpireProjectilesOnHitStun = true,
		},
		EndAIThreadWaitOnFreezeEnd = true,
		InterruptWeaponOnFreeze = true,

		WeaponOptions =
		{
			"PyreSmallThrow",
		},

		GeneratorData =
		{
			DifficultyRating = 7,
			BlockEnemyTypes = {"Radiator_Elite"}
		},

		ActiveCapWeight = 0.5,

		EnemySightedVoiceLines =
		{
			UsePlayerSource = true,
			RandomRemaining = true,
			GameStateRequirements = 
			{
				-- None
			},
			SkipCooldownCheckIfNonePlayed = true,
			Cooldowns =
			{
				{ Name = "CombatBeginsLinesPlayedRecently", Time = 300 },
			},
			TriggerCooldowns = { "MelinoeAnyQuipSpeech", },
			SuccessiveChanceToPlay = 0.1,

			{ Cue = "/VO/Melinoe_1439", Text = "Spindles." },
			{ Cue = "/VO/Melinoe_1440", Text = "Spindles!", PlayFirst = true },
			{ Cue = "/VO/Melinoe_1441", Text = "More Spindles." },
			{ Cue = "/VO/Melinoe_1442", Text = "Come, Spindles." },
		},
	},

	-- tough Terminator-like foe that bursts like an explosive grape
	PyreLarge =
	{
		InheritFrom = { "BaseFEnemy", "BaseVulnerableEnemy" },

		UseActivatePresentation = true,
		ActivateAnimation = "Enemy_Brawler_Spawn",
		ActivateStartAlpha = 1.0,
		ActivateFx = "EnemyPreSpawnTerrainLarge",
		ActivateFx2 = "EnemyPreSpawnStandingLarge",
		ActivateFxPreSpawn = "EnemySpawnBurstLarge",

		DeathAnimation = "PyreLarge_Banished",
		DeathFx = "EnemyDeathFxIris",

		MaxHealth = 255,
		HealthBarOffsetY = -200,
		Material = "Organic",

		IsAggroedSound = "/SFX/Enemy Sounds/Brawler/EmoteAlerted",
		DeathSound = "/SFX/Enemy Sounds/Brawler/EmoteDying",

		PreferredSpawnPoint = "EnemyPointMelee",

		AIOptions =
		{
			"AggroAI",
		},

		StunAnimations = 
		{
			Default = "Enemy_Brawler_HitStun",
			Heavy = "Enemy_Brawler_HitStunLong",
			Light = "Enemy_Brawler_HitStun2",
			BlockStun = "Enemy_Brawler_HitStunBlock",
			Lightning = "Enemy_Brawler_HitStunLightning",
		},
		DefaultAIData =
		{
			DeepInheritance = true,

			PreAttackSound = "/SFX/Enemy Sounds/Brawler/EmoteCharging",
		},

		WeaponOptions =
		{
			"PyreLargeThrow",
		},

		GeneratorData =
		{
			DifficultyRating = 18,
			BlockEnemyTypes = {"Brawler_Elite"}
		},

		EnemySightedVoiceLines =
		{
			RandomRemaining = true,
			UsePlayerSource = true,
			GameStateRequirements = 
			{
				-- None
			},
			SkipCooldownCheckIfNonePlayed = true,
			Cooldowns =
			{
				{ Name = "CombatBeginsLinesPlayedRecently", Time = 300 },
			},
			TriggerCooldowns = { "MelinoeAnyQuipSpeech", },
			SuccessiveChanceToPlay = 0.1,

			{ Cue = "/VO/Melinoe_1435", Text = "Wastrels." },
			{ Cue = "/VO/Melinoe_1436", Text = "Wastrels!", PlayFirst = true },
			{ Cue = "/VO/Melinoe_1437", Text = "More Wastrels." },
			{ Cue = "/VO/Melinoe_1438", Text = "Come, Wastrels." },
		},
	},

	PyreTree =
	{
		InheritFrom = { "BaseQEnemy", "BaseVulnerableEnemy", },
		
		ActivateAnimation = "Enemy_DragonBurrower_Spawn",
		ActivateFx = "DragonBurrowerBurrowFxActivate",
		ActivateFx2 = "nil",
		ActivateFxPreSpawn = "nil",
		ActivateTint = false,
		ActivateFadeIn = false,
		ActivateStartAlpha = 1.0,
		ActivateDuration = 0.2,
		WakeUpDelay = 0.35,
		PostActivateStop = true,
		PostActivateScreenshake = { Distance = 4, Speed = 250, FalloffSpeed = 0, Duration = 0.24, Angle = 90, DistanceThreshold = 200 },

		DeathAnimation = "PyreTree_Banished",
		--DeathSound = "/SFX/Enemy Sounds/DragonBurrower/EmoteDying",

		MaxHealth = 600,
		HealthBarOffsetY = -150,
		HealthBarType = "Medium",

		Material = "Organic",
		IsAggroedSound = "/SFX/Enemy Sounds/RangedBurrower/EmoteAlerted",
		DeathSound = "/SFX/Enemy Sounds/RangedBurrower/EmoteDying",

		DamagedFxStyles =
		{
			Default = "HitSparkEnemyDamagedMetalRapid",
			Rapid = "HitSparkEnemyDamagedMetalRapid",
		},

		StunAnimations = 
		{
			Default = "Enemy_DragonBurrower_OnHit",
			Heavy = "Enemy_DragonBurrower_OnHit_Heavy",
		},

		DefaultAIData =
		{
			DeepInheritance = true,

			MoveSuccessDistance = 1,
		},

		WeaponOptions =
		{
			"PyreTreeThrow",
			"PyreTreeBurrow",
		},

		AIOptions =
		{
			"AggroAI",
		},
		PostAggroAI = "AttackerAI",

		GeneratorData =
		{
			DifficultyRating = 50,
			BlockEnemyTypes = {"DragonBurrower_Elite"}
		},
		
		EnemySightedVoiceLines =
		{
			-- { GlobalVoiceLines = "MonstersSightedVoiceLines" },
		},
	},

	PyreTreeDefender =
	{
		InheritFrom = { "BaseTrap" },

		ActivateFuseIfNoSpawner = true,
		FuseWarningAnimation = "BlastWarningDecal",

		DefaultAIData =
		{
			DeepInheritance = true,
		},
		TriggerGroups = { "GroundEnemies", "FlyingEnemies", "HeroTeam" },

		OnDamagedFunctionNames = { "ActivateFuse" },
		OnDeathFireWeapons = { "MineBlast" },

		DissipateAnimation = "BloodMineDeactivated",
		FuseAnimation = "BloodMineActivated",
		FuseWarningProjectileName = "MineBlast",
		FlashOnFuse = true,
		FuseDuration = 1.0,
		TriggerDistance = 225,
		WakeUpDelay = 1.5,
		ExpirationDuration = 15.0,
		
		DestroyDelay = 0.5,
		AIOptions =
		{
			"MineAI",
		},
		AttackDistance = 100,

		CleanupAnimation = "Blank",
		OutgoingDamageModifiers =
		{
			{
				Name = "FriendImmunity",
				IsMultiplier = true,
				FriendMultiplier = 0,
			},
			{
				Name = "CharmedMultiplier",
				IsMultiplier = true,
				NonPlayerMultiplier = 10,
			},
		},
	},
}

OverwriteTableKeys( EnemyData, UnitSetData.Pyre )