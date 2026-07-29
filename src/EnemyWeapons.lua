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
			BarrelLength = -400,
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

			PreAttackDuration = 0.667,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1.0,
			PostAttackDuration = 0.8,
			BarrelLength = -100,

			AttackDistance = 700,
			FireSelfVelocity = 0,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreSmall_Cast",
			FireAnimation = "PyreSmall_Casttwo",
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

			PreAttackDuration = 1,
			PreAttackAnimationSpeed = 1,
			FireDuration = 1,
			PostAttackDuration = 0.8,
			BarrelLength = -100,
			AttackDistance = 700,
			FireSelfVelocity = 0,

			TrackTargetDuringCharge = true,
			StopBeforeFire = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "PyreLarge_Cast",
			FireAnimation = "PyreLarge_Casttwo",
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

}

OverwriteTableKeys( WeaponData, WeaponSetData )
OverwriteTableKeys( WeaponDataEnemies, WeaponSetData )
WeaponSetData = nil