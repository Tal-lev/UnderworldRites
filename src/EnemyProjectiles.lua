local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/Enemy_BiomeG_Projectiles.sjson')
	sjson.hook(file, function(data)

    table.insert(data.Projectiles, {
        Name = "PyreAuraMedium",
        InheritFrom = "WaterUnitSpit",
        Range = 2000,
		Fuse = 4.0,
		Speed = 300,
		Damage = 8,
        UnlimitedUnitPenetration = true,
		UnlimitedObstaclePenetration = true,
		MultipleUnitCollisions = false,
        ClearCreateAnimations = true,
        Thing = {
            Graphic = "AuraCastMediumFireFx",
            Scale = 1,
			AttachedAnim = "null",
            Points =
			{
				{
					X = -120,
					Y = -50,
				},
                {
					X = -120,
					Y = 50,
				},
				{
					X = 120,
					Y = 50,
				},
				{
					X = 120,
					Y = -50,
				},
            },
        },
    })

	table.insert(data.Projectiles, {
        Name = "PyreAuraMedium_Elite",
        InheritFrom = "PyreAuraMedium",
		Damage = 10,
		Speed = 350,
    })

    table.insert(data.Projectiles, {
        Name = "PyreAuraSmall",
        InheritFrom = "PyreAuraMedium",
        Range = 3000,
		Fuse = 3.0,
		Speed = 500,
        ClearCreateAnimations = true,
        Thing = {
            Graphic = "AuraCastSmallFireFx",
            Scale = 1,
			Points =
			{
				{
					X = -100,
					Y = -20,
				},
                {
					X = -100,
					Y = 20,
				},
				{
					X = 200,
					Y = 20,
				},
				{
					X = 200,
					Y = -20,
				},
            },
        },
    })

    table.insert(data.Projectiles, {
        Name = "PyreAuraLarge",
        InheritFrom = "PyreAuraMedium",
        Range = 1500,
		Fuse = 5.0,
		Speed = 300,
        ClearCreateAnimations = true,
        Thing = {
            Graphic = "AuraCastMediumFireFx",
            Scale = 1.2,
        },
    })

    table.insert(data.Projectiles, {
        Name = "PyreAuraSphereMedium",
        InheritFrom = "1_BaseEnemyProjectileUndestroyable",
		Type = "STRAIGHT",
		MultiDetonate = true,
		ImpactFx = "MageProjectileExplosion_LightRanged",
        Range = 2000,
		TotalFuse = 4.0,
		Fuse = 0.5,
		Speed = 0,
        ImmunityDuration = 0.3,
        Acceleration = 0,
		SpinRate = 0,
        UseArmor = true,
		UseVulnerability = true,
        DieWithOwner = true,
		Damage = 11,
		BlastStartRadius = 300,
		ExpandBlastDuringDetonation = false,
		BlastSpeed = 0,
		DamageRadius = 300,
		DamageRadiusScaleY = 0.55,
        DrawDuringPause = false,
		UnpauseResetLocation = true,
		CheckObstacleImpact = false,
		UnlimitedUnitPenetration = true,
		MultipleUnitCollisions = true,
		GroupName = "FX_Terrain",
		InheritOwnerElapsedTimeMultiplier = false,
        AttachToOwner = true,
        ClearCreateAnimations = true,
        DisableRotate = true,
        Thing = {
            Graphic = "AuraSphereFx",
            Scale = 1,
			AttachedAnim = "null",
            Tallness = 20,
			UseBoundsForSortDrawArea = false,
			RotateGeometry = false,
			Points = { { X = 0, Y = 0, }, },
        },
        Effect =
		{
			Name = "HeroOnHitStun",
			Duration = 0.2,
			DisableMove = true,
			DisableRotate = true,
			DisableAttack = false,
			Active = false,
			CanAffectInvulnerable = false,
			Cancelable = true,
		},
    })

	table.insert(data.Projectiles, {
        Name = "PyreAuraSphereMedium_Elite",
        InheritFrom = "PyreAuraSphereMedium",
		Type = "STRAIGHT",
		Damage = 13,
		BlastStartRadius = 400,
		DamageRadius = 400,
    })

    table.insert(data.Projectiles, {
        Name = "PyreAuraSphereLarge",
        InheritFrom = "1_BaseEnemyProjectileUndestroyable",
		Type = "STRAIGHT",
		MultiDetonate = true,
		ImpactFx = "MageProjectileExplosion_LightRanged",
        Range = 2000,
		TotalFuse = 4.0,
		Fuse = 0.5,
		Speed = 0,
        ImmunityDuration = 0.3,
        Acceleration = 0,
		SpinRate = 0,
        UseArmor = true,
		UseVulnerability = true,
        DieWithOwner = true,
		Damage = 11,
		BlastStartRadius = 500,
		ExpandBlastDuringDetonation = false,
		BlastSpeed = 0,
		DamageRadius = 500,
		DamageRadiusScaleY = 0.55,
        DrawDuringPause = false,
		UnpauseResetLocation = true,
		CheckObstacleImpact = false,
		UnlimitedUnitPenetration = true,
		MultipleUnitCollisions = true,
		GroupName = "FX_Terrain",
		InheritOwnerElapsedTimeMultiplier = false,
        AttachToOwner = true,
        ClearCreateAnimations = true,
        DisableRotate = true,
        Thing = {
            Graphic = "AuraSphereFx",
            Scale = 1,
			AttachedAnim = "null",
            Tallness = 20,
			UseBoundsForSortDrawArea = false,
			RotateGeometry = false,
			Points = { { X = 0, Y = 0, }, },
        },
        Effect =
		{
			Name = "HeroOnHitStun",
			Duration = 0.2,
			DisableMove = true,
			DisableRotate = true,
			DisableAttack = false,
			Active = false,
			CanAffectInvulnerable = false,
			Cancelable = true,
		},
    })

	table.insert(data.Projectiles, {
        Name = "PyreAuraSphereLarge_Elite",
        InheritFrom = "PyreAuraSphereLarge",
		Type = "STRAIGHT",
		Damage = 13,
		BlastStartRadius = 600,
		DamageRadius = 600,
    })

    table.insert(data.Projectiles, {
        Name = "PyreAuraSphereSmall",
        InheritFrom = "1_BaseEnemyProjectileUndestroyable",
		Type = "STRAIGHT",
		MultiDetonate = true,
		ImpactFx = "MageProjectileExplosion_LightRanged",
        Range = 2000,
		TotalFuse = 4.0,
		Fuse = 0.5,
		Speed = 0,
        DieWithOwner = true,
        ImmunityDuration = 0.3,
        Acceleration = 0,
		SpinRate = 0,
        UseArmor = true,
		UseVulnerability = true,
		Damage = 11,
		BlastStartRadius = 200,
		ExpandBlastDuringDetonation = false,
		BlastSpeed = 0,
		DamageRadius = 200,
		DamageRadiusScaleY = 0.55,
        DrawDuringPause = false,
		UnpauseResetLocation = true,
		CheckObstacleImpact = false,
		UnlimitedUnitPenetration = true,
		MultipleUnitCollisions = true,
		GroupName = "FX_Terrain",
		InheritOwnerElapsedTimeMultiplier = false,
        AttachToOwner = true,
        ClearCreateAnimations = true,
        DisableRotate = true,
        Thing = {
            Graphic = "AuraSphereFx",
            Scale = 1,
			AttachedAnim = "null",
            Tallness = 20,
			UseBoundsForSortDrawArea = false,
			RotateGeometry = false,
			Points = { { X = 0, Y = 0, }, },
        },
        Effect =
		{
			Name = "HeroOnHitStun",
			Duration = 0.2,
			DisableMove = true,
			DisableRotate = true,
			DisableAttack = false,
			Active = false,
			CanAffectInvulnerable = false,
			Cancelable = true,
		},
    })


    table.insert(data.Projectiles,
    {
		Name = "PyreAuraTree",
		InheritFrom = "1_BaseEnemyProjectile",
		Type = "LOB",
		HideGraphicOnDetonate = false,
		--DetonateSound = "/SFX/Enemy Sounds/Turtle/TurtleProjectileBounce",
		DamageRadius = 200,
		DamageRadiusScaleY = 0.5,
		Damage = 0,
		Speed = 800,
		Range = 800,
		AutoAdjustForTarget = true,
		CheckUnitImpact = false,
		CheckObstacleImpact = false,
		UseVulnerability = false,
		SpawnOnDetonate = "null",
		SkipSpawnsIfBlocked = true,
		SkipSpawnsIfAwayFromPlayer = 1500,
		JumpSpeedMultiplier = 0.0,
		SpawnType = "UNIT",
		--DissipateFx = "ZombieSpawnerLobProjectileImpact",
		Thing =
		{
			Graphic = "null",
			AttachedAnim = "null",
			OffsetZ = 0,
			Points =
			{
				{
					X = 0,
					Y = 24,
				},
				{
					X = 24,
					Y = 0,
				},
				{
					X = 0,
					Y = -24,
				},
				{
					X = -24,
					Y = 0,
				},
            },
		}
	})

	table.insert(data.Projectiles,
    {
		Name = "PyreAuraTree_Elite",
		InheritFrom = "PyreAuraTree",
	})

	table.insert(data.Projectiles,
    {
		Name = "PyreAuraCaravanSmall",
		InheritFrom = "PyreAuraTree",
		Speed = 700,
		Range = 700,
		SpeedVariance = 350,
	})

	table.insert(data.Projectiles,
    {
		Name = "PyreAuraCaravanMedium",
		InheritFrom = "PyreAuraCaravanSmall",
	})

	table.insert(data.Projectiles,
    {
		Name = "PyreAuraCaravanLarge",
		InheritFrom = "PyreAuraCaravanSmall",
	})

	table.insert(data.Projectiles,
    {
		Name = "PyreAuraCaravanTree",
		InheritFrom = "PyreAuraCaravanSmall",
	})

	table.insert(data.Projectiles,
    {
		Name = "PyreAuraCaravanMonster",
		InheritFrom = "PyreAuraCaravanSmall",
	})


return data
end)

OverwriteTableKeys( ProjectileData, {
    PyreAuraMedium = {
        
    },
    PyreAuraTree =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreTreeDefender",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
	PyreAuraTree_Elite =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreTreeDefender_Elite",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
	PyreAuraCaravanSmall =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreSmall",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
	PyreAuraCaravanMedium =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreMedium",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
	PyreAuraCaravanLarge =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreLarge",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
	PyreAuraCaravanTree =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreTree",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
	PyreAuraCaravanMonster =
	{
		OnDeathFunctionName = _PLUGIN.guid .. "." .. "ProjectileSpawnUnitOnDeath",
		SpawnName = "PyreMonster",
		SpawnBounceOffVictim = false,
		SpawnBounceOffVictimVelocity = 0,
		SpawnBounceOffVictimUpwardVelocity = 0,
		SpawnsSkipActivatePresentation = false,
	},
})