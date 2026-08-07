OverwriteTableKeys(MetaUpgradeData, {
    NextBiomeEnemyShrineUpgrade = {
		InheritFrom = { "BaseMetaUpgrade", },
		Icon = "ShrineIcon_NextBiomeEnemy",
		InactiveChangeValue = 0.0,
		SimpleExtractValues =
		{
			{
				Property = "ChangeValue",
				Multiply = 100,
				NewProperty = "DisplayValue",
			},
		},
		Ranks =
		{
			{ Points = 1, ChangeValue = 0.10 },
			{ Points = 2, ChangeValue = 0.25 },
            { Points = 3, ChangeValue = 1.0 },
		},
		BiomeEnemySets =
		{
			F = EnemySets.BiomeG,
			G = EnemySets.BiomeH,
			H = EnemySets.BiomeI,
			N = EnemySets.BiomeO,
			O = EnemySets.BiomeP,
			P = EnemySets.BiomeQ,
		},
		SwapMap =
		{
			-- Erebus
			Guard = { Name = "PyreMedium", },
			Guard_Elite = { Name = "PyreMedium", },
			Brawler = { Name = "PyreLarge", ActiveCapWeight = 1.3, },
			Brawler_Elite = { Name = "PyreLarge", ActiveCapWeight = 1.3 },
			Radiator = { Name = "PyreSmall", },
			Radiator_Elite = { Name = "PyreSmall", },
			Screamer = { Name = "PyreTree", },
			Screamer_Elite = { Name = "PyreTree", },
			Mage = { Name = "PyreMonster", },
			Mage_Elite = { Name = "PyreMonster", },
			SiegeVine = { Name = "Turtle", },
			SiegeVine_Elite = { Name = "Turtle_Elite", },
			Wisp = { Name = "Guard2", },
			Wisp_Elite = { Name = "Guard2_Elite", },

			-- Oceanus
			FishmanMelee = { Name = "Mourner", RequiredSpawnPoint = "EnemyPoint", },
			FishmanMelee_Elite = { Name = "Mourner_Elite", RequiredSpawnPoint = "EnemyPoint", },
			FishmanRanged = { Name = "Lamia", RequiredSpawnPoint = "EnemyPoint", },
			FishmanRanged_Elite = { Name = "Lamia_Elite", RequiredSpawnPoint = "EnemyPoint", },
			FishSwarmerSquad = { Name = "LycanSwarmer", RequiredSpawnPoint = "EnemyPoint", },
			FishSwarmerSquad_Elite = { Name = "LycanSwarmer_Elite", RequiredSpawnPoint = "EnemyPoint", },
			Turtle = { Name = "DespairElemental", RequiredSpawnPoint = "EnemyPoint", },
			Turtle_Elite = { Name = "DespairElemental_Elite", RequiredSpawnPoint = "EnemyPoint", },
			WaterUnit = { Name = "Lovesick", RequiredSpawnPoint = "EnemyPoint", },
			WaterUnit_Elite = { Name = "Lovesick_Elite", RequiredSpawnPoint = "EnemyPoint", },
			Guard2 = { Name = "CorruptedShadeMedium", RequiredSpawnPoint = "EnemyPoint", },
			Guard2_Elite = { Name = "CorruptedShadeMedium_Elite", RequiredSpawnPoint = "EnemyPoint", },
			Radiator2 = { Name = "CorruptedShadeSmall", RequiredSpawnPoint = "EnemyPoint", },
			Radiator2_Elite = { Name = "CorruptedShadeSmall_Elite", RequiredSpawnPoint = "EnemyPoint", },

			-- Fields
			BrokenHearted = { Name = "SwarmerClockwork", },
			BrokenHearted_Elite = { Name = "SwarmerClockwork_Elite", },
			Lovesick = { Name = "TimeElemental", },
			Lovesick_Elite = { Name = "TimeElemental_Elite", },
			--Lycanthrope = { Name = "ClockworkHeavyMelee", },
			--Lycanthrope_Elite banned
			Mourner = { Name = "ClockworkHeavyMelee", },
			Mourner_Elite = { Name = "ClockworkHeavyMelee_Elite", },
			Lamia = { Name = "SatyrLancer", },
			Lamia_Elite = { Name = "SatyrLancer_Elite", },
			--Screamer2 banned
			--FogEmitter2 banned

			-- Ephyra
			Carrion = { Name = "Scimiterror", },
			Carrion_Elite = { Name = "Scimiterror_Elite", },
			Mudman = { Name = "Stickler", },
			Mudman_Elite = { Name = "Stickler_Elite", },
			Zombie = { Name = "WaterElemental", },
			Zombie_Elite = { Name = "WaterElemental_Elite", },
			ZombieSpawner = { Name = "Swab", },
			ZombieSpawner_Elite = { Name = "Swab_Elite", },
			ZombieHeavyRanged = { Name = "HarpyCutter", },
			ZombieHeavyRanged_Elite = { Name = "HarpyCutter_Elite", },
			ZombieAssassin = { Name = "Drunk", },
			ZombieAssassin_Elite = { Name = "Drunk_Elite", },

			-- Ships
			Stickler = { Name = "AutomatonBeamer" },
			Stickler_Elite = { Name = "AutomatonBeamer_Elite" },
			Scimiterror = { Name = "SatyrSapper" },
			Scimiterror_Elite = { Name = "SatyrSapper_Elite" },
			Swab = { Name = "Dragon" },
			Swab_Elite = { Name = "Dragon_Elite" },
			Drunk = { Name = "AutomatonEnforcer" },
			Drunk_Elite = { Name = "AutomatonEnforcer_Elite" },
			HarpyCutter = { Name = "HarpyDropper" },
			HarpyCutter_Elite = { Name = "HarpyDropper_Elite" },
			WaterElemental = { Name = "SentryBot" },
			WaterElemental_Elite = { Name = "SentryBot_Elite" },
			Mage2 = { Name = "SatyrLancer2" },
			Mage2_Elite = { Name = "SatyrLancer2_Elite" },

			-- Olympus
			-- SentryBot is banned
			-- AutomatonBeamer is banned
			-- AutomatonEnforcer is banned
			Dragon = { Name = "Brute" },
			Dragon_Elite = { Name = "Brute_Elite" },
			HarpyDropper = { Name = "Stalker" },
			HarpyDropper_Elite = { Name = "Stalker_Elite" },
			-- SatyrSapper is banned
			SatyrLancer2 = { Name = "Mati" },
			SatyrLancer2_Elite = { Name = "Mati_Elite" },
			SatyrCrossbow2 = { Name = "DragonBurrower" },
			SatyrCrossbow2_Elite = { Name = "DragonBurrower_Elite" },
			ZombieOlympus = { Name = "Simple" },
			ZombieOlympus_Elite = { Name = "Simple_Elite" },
		},
		FlavorText = "NextBiomeEnemyShrineUpgrade_Flavor",
	},
})