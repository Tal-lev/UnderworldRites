local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/Enemy_BiomeG_Projectiles.sjson')
	sjson.hook(file, function(data)

    table.insert(data.Projectiles, {
        Name = "PyreAuraMedium",
        InheritFrom = "WaterUnitSpit",
        Range = 2000,
		Fuse = 4.0,
		Speed = 250,
        ClearCreateAnimations = true,
        Thing = {
            Graphic = "AuraCastMediumFireFx",
            Scale = 1,
			AttachedAnim = "null",
            Points =
			{
				{
					X = -40,
					Y = -24,
				},
                {
					X = -40,
					Y = 24,
				},
				{
					X = 40,
					Y = 24,
				},
				{
					X = 40,
					Y = -24,
				},
            },
        },
    })

    table.insert(data.Projectiles, {
        Name = "PyreAuraSmall",
        InheritFrom = "PyreAuraMedium",
        Range = 3000,
		Fuse = 5.0,
		Speed = 600,
        ClearCreateAnimations = true,
        Thing = {
            Graphic = "AuraCastFireFx",
            Scale = 0.6,
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
            Graphic = "AuraCastFireFx",
            Scale = 1.4,
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
		CheckObstacleImpact = true,
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
})