WeaponSetData =
{
	PyreMediumThrow =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraMedium",

			PreAttackDuration = 0.4,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1.667,
			PostAttackDuration = 1.7,
			BarrelLength = -480,
			AttackDistance = 800,
			FireSelfVelocity = 0,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreMedium_Idle",
			FireAnimation = "PyreMedium_Cast",
			PostAttackAnimation = "PyreMedium_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreMediumAura =
	{
		AIData =
		{
			
			Requirements =
			{
				MaxPlayerDistance = 700,
			},
			
			DeepInheritance = true,


			ProjectileName = "PyreAuraSphereMedium",

			PreAttackDuration = 0.1,
			PreAttackAnimationSpeed = 1,
			FireDuration = 2.86,
			PostAttackDuration = 0.8,
			BarrelLength = 0,
			AttackDistance = 250,
			FireSelfVelocity = 0,
			FizzleOldSpawns = true,
			MoveWithinRangeTimeout = 2,
			SkipAttackIfMoveTimeout = false,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreMedium_Idle",
			FireAnimation = "PyreMedium_AuraTurnOn",
			PostAttackAnimation = "PyreMedium_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = false,
			DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreMediumEvade =
	{
		AIData =
		{
			DeepInheritance = true,

			FireSelfVelocity = 1500,
			FireSelfVelocityAngleOffset = 60,
			ApplyEffectsOnWeaponFire =
			{
				WeaponEffectData.AttackHighGrip,
			},

			AttackDistance = 900,
			MoveWithinRange = true,
			NoProjectile = true,
			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			WaitForAngleTowardTargetTimeOut = 1.0,

			PreAttackDuration = 0.0,
			FireDuration = 0.86,
			PostAttackDuration = 0.1,

			PreAttackStop = true,
			TrackTargetDuringCharge = true,
			TrackTargetDuringFire = true,
			PostAttackStop = true,

			FireAnimation = "PyreMedium_Evade",

		},

		Requirements =
		{
			MaxConsecutiveUses = 1,
		},

		-- Sounds in Enemy_ZombieAssassin_Dash anim
	},

	PyreSmallThrow =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraSmall",

			PreAttackDuration = 0.1,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1.667,
			PostAttackDuration = 0.8,
			BarrelLength = -600,

			AttackDistance = 700,
			FireSelfVelocity = 0,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreSmall_Idle",
			FireAnimation = "PyreSmall_Cast",
			PostAttackAnimation = "PyreSmall_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreSmallAura =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraSphereSmall",

			PreAttackDuration = 0.4,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1.667,
			PostAttackDuration = 2,
			BarrelLength = 0,

			AttackDistance = 150,
			FireSelfVelocity = 0,
			MoveWithinRangeTimeout = 2.5,
			SkipAttackIfMoveTimeout = false,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreSmall_Idle",
			FireAnimation = "PyreSmall_Cast",
			PostAttackAnimation = "PyreSmall_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreLargeThrow =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraLarge",

			PreAttackDuration = 0.2,
			PreAttackAnimationSpeed = 1,
			FireDuration = 2,
			PostAttackDuration = 0.8,
			BarrelLength = -480,
			AttackDistance = 700,
			FireSelfVelocity = 0,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreLarge_Idle",
			FireAnimation = "PyreLarge_Cast",
			PostAttackAnimation = "PyreLarge_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreLargeAura =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraSphereLarge",

			PreAttackDuration = 0.2,
			PreAttackAnimationSpeed = 1,
			FireDuration = 2.73,
			PostAttackDuration = 1.27,
			BarrelLength = 0,
			AttackDistance = 400,
			FireSelfVelocity = 0,
			MoveWithinRangeTimeout = 2,
			SkipAttackIfMoveTimeout = false,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreLarge_Idle",
			FireAnimation = "PyreLarge_AuraTurnOn",
			PostAttackAnimation = "PyreLarge_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreTreeThrow =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraTree",

			PreAttackDuration = .667,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1,
			PostAttackDuration = 0.8,
			BarrelLength = -100,
			AttackDistance = 700,
			FireSelfVelocity = 0,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreTree_Cast",
			FireAnimation = "PyreTree_Casttwo",
			PostAttackAnimation = "PyreTree_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreTreeBurrow =
	{
		Requirements =
		{
			MinAttacksBetweenUse = 2,
			MinRequiredKillEnemies = 2,
			HasEffectFalse = "ChillEffect",
		},

		AIData =
		{
			DeepInheritance = true,

			NoProjectile = true,

			PreAttackDuration = 0.0,
			FireDuration = 0.34,
			PostAttackAlpha = 0,
			PostAttackDuration = 0.0,

			ClearAllEffects = true,
			ClearAllEffectsExclude = { "Charm" },
			PreTeleportClearAllEffects = true,
			TeleportClearAllEffectsExclude = { "Charm" },

			PreAttackStopAnimations = { "DragonBurrowerBurrowFxPersistent"},
			PreAttackFx = "DragonBurrowerBurrowFxOut",
			FireAnimation = "Enemy_DragonBurrower_Burrow",
			PostAttackAnimation = "Enemy_DragonBurrower_Hidden",

			PostAttackEndTeleport = true,
			TeleportMinDistance = 400,
			TeleportMaxDistance = 99999,

			AttackDistance = 9999,
			MoveWithinRange = false,

			ChainedWeapon = "PyreTreeUnburrow",

			PreAttackRemoveEnemyUI = true,
			SkipSurroundAICount = true,
		},
	},
	PyreTreeUnburrow =
	{
		AIData =
		{
			DeepInheritance = true,

			NoProjectile = true,
			MoveWithinRange = false,
			TargetSelf = true,

			PreAttackAlpha = 0,
			PreAttackDurationMin = 0.8,
			PreAttackDurationMax = 1.8,
			FireAlpha = 1,
			FireDuration = 0.42,
			PostAttackDurationMin = 0.55,
			PostAttackDurationMax = 0.65,

			PreAttackAnimation = "Enemy_DragonBurrower_Hidden",
			FireAnimation = "PyreTree_WormholeEnd",
			PostAttackAnimation = "PyreTree_Idle",

			DoNotRepeatOnAttackFail = true,
			FireCreateHealthBar = true,

			SkipSurroundAICount = true,
		},
	},

	PyreTreeDefenderAura = 
	{
		AIData =
		{	
			DeepInheritance = true,


			ProjectileName = "PyreAuraSphereSmall",

			PreAttackDuration = 0.1,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1.667,
			PostAttackDuration = 2.,
			BarrelLength = 0,
			AttackDistance = 4000,
			FireSelfVelocity = 0,
			FizzleOldSpawns = true,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreTree_DefenderIdle",
			FireAnimation = "PyreTree_DefenderIdle",
			PostAttackAnimation = "PyreTree_DefenderIdle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = false,
			DoNotRepeatOnAttackFail = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Guard/EmoteAttacking" },
			},
		},
	},

	PyreMonsterThrow =
	{
		AIData =
		{
			DeepInheritance = true,


			ProjectileName = "PyreAuraMedium",

			PreAttackDuration = 0.4,
			PreAttackAnimationSpeed = 1,
			FireDuration = 3.6667,
			PostAttackDuration = 1.7,
			BarrelLength = -480,
			AttackDistance = 800,
			FireSelfVelocity = 0,
			NumProjectiles = 9,
			ProjectileAngleInterval = 15,
			ProjectileScaleMultiplier = 0.5,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreMonster_Idle",
			FireAnimation = "PyreMonster_Cast",
			PostAttackAnimation = "PyreMonster_Idle",
			--FireFx = "EnemyAura",
			--FireFxOffset = 300,
			PreAttackFx = "EnemyChargeFxIn_Guard",
			EndPreAttackFx = true,

			ExpireProjectilesOnHitStun = true,
			--DoNotRepeatOnAttackFail = true,
		},
	},

}

OverwriteTableKeys( WeaponData, WeaponSetData )
OverwriteTableKeys( WeaponDataEnemies, WeaponSetData )
WeaponSetData = nil