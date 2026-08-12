table.insert(MetaUpgradeData.NextBiomeEnemyShrineUpgrade.Ranks, { Points = 3, ChangeValue = 1.0 })
OverwriteTableKeys(MetaUpgradeData.NextBiomeEnemyShrineUpgrade.SwapMap, {
    Guard = { Name = "PyreMedium", },
    Guard_Elite = { Name = "PyreMedium_Elite", },
    Brawler = { Name = "PyreLarge", ActiveCapWeight = 1.3, },
    Brawler_Elite = { Name = "PyreLarge_Elite", ActiveCapWeight = 1.3 },
    Radiator = { Name = "PyreSmall", },
    Radiator_Elite = { Name = "PyreSmall_Elite", },
    Screamer = { Name = "PyreTrail", },
    Screamer_Elite = { Name = "PyreTree_Elite", },
    Mage = { Name = "PyreMonster", },
    Mage_Elite = { Name = "PyreMonster_Elite", },
	SiegeVine = { Name = "PyreTree", },
	SiegeVine_Elite = { Name = "PyreTree_Elite", },
})

--To add Caravan instead of Treant
OverwriteTableKeys(NamedRequirementsData, {
    NextBiomeEnemyShrineUpgradeActive =
	{
		{
			Path = { "GameState", "ShrineUpgrades", "NextBiomeEnemyShrineUpgrade" },
			Comparison = ">=",
			Value = 3,
		},
		{
			PathFalse = { "CurrentRun", "ShrineUpgradesDisabled", "NextBiomeEnemyShrineUpgrade" },
		},
	},
})


table.insert(EncounterData.MiniBossTreant.GameStateRequirements.NamedRequirementsFalse, "NextBiomeEnemyShrineUpgradeActive")
OverwriteTableKeys(EncounterData.MiniBossTreant_Shrine.GameStateRequirements, {
    NamedRequirementsFalse = {"NextBiomeEnemyShrineUpgradeActive"}
})

OverwriteTableKeys(EncounterData, {
    MiniBossCaravan =
	{
		InheritFrom = { "MinibossEncounter", "GeneratedF" },

		GameStateRequirements =
		{
			NamedRequirementsFalse = { "MinibossCountShrineUpgradeActive" },
            NamedRequirements = { "NextBiomeEnemyShrineUpgradeActive" },
		},

		PreSpawnEnemies = false,
		SpawnAggroed = true,

		MinWaves = 1,
		MaxWaves = 1,
		MinTypes = 1,
		MaxTypes = 1,
		TypeCountDepthRamp = 0,
		EnemyCountDepthRamp = 0,
		MaxEliteTypes = 2,
		ActiveEnemyCapBase = 5,
		ActiveEnemyCapMax = 5,

		SpawnIntervalMin = 0.05,
		SpawnIntervalMax = 0.05,

		EndMusicOnCombatOver = 20,

		MoneyDropCapMin = 15,
		MoneyDropCapMax = 15,
		MoneyDropCapDepthRamp = 0,

		BlockHighlightEncounter = true,
		SkipIntroEncounterCheck = true,
		NoFirstWaveStartDelay = false,

		DreamBiomeData = "nil",

		ManualWaveTemplates =
		{
			-- Wave 1
			[1] =
			{
				Spawns =
				{
					{
						Name = "PyreCaravan",
						TotalCount = 1,
						SpawnOnIds = { 40191 },
						ForceFirst = true,
					},
				},
				StartDelay = 0.7,
			},
		},

		StartGlobalVoiceLines = "MiniBossEncounterStartVoiceLines",
		CancelSpawnsOnKill = { "PyreCaravan" },
		WipeEnemiesOnKill = "PyreCaravan",
	},

    MiniBossCaravan_Shrine = {
		InheritFrom = { "MinibossEncounter", "GeneratedF" },

		GameStateRequirements =
		{
            NamedRequirements = { "NextBiomeEnemyShrineUpgradeActive", "MinibossCountShrineUpgradeActive" },
		},

		PreSpawnEnemies = false,
		SpawnAggroed = true,

		MinWaves = 1,
		MaxWaves = 1,
		MinTypes = 1,
		MaxTypes = 1,
		TypeCountDepthRamp = 0,
		EnemyCountDepthRamp = 0,
		MaxEliteTypes = 2,
		ActiveEnemyCapBase = 5,
		ActiveEnemyCapMax = 5,

		SpawnIntervalMin = 0.05,
		SpawnIntervalMax = 0.05,

		EndMusicOnCombatOver = 20,

		MoneyDropCapMin = 15,
		MoneyDropCapMax = 15,
		MoneyDropCapDepthRamp = 0,

		BlockHighlightEncounter = true,
		SkipIntroEncounterCheck = true,
		NoFirstWaveStartDelay = false,

		DreamBiomeData = "nil",

		ManualWaveTemplates =
		{
			-- Wave 1
			[1] =
			{
				Spawns =
				{
					{
						Name = "PyreCaravan",
						TotalCount = 1,
						SpawnOnIds = { 40191 },
						ForceFirst = true,
					},
                    {
						Name = "PyreTree_Elite",
						TotalCount = 1,
						SpawnOnIds = { 40192 },
						ForceFirst = true,
					},
				},
				StartDelay = 0.7,
			},
		},

		StartGlobalVoiceLines = "MiniBossEncounterStartVoiceLines",
		CancelSpawnsOnKill = { "PyreCaravan" },
		WipeEnemiesOnKill = "PyreCaravan",
	},
})


table.insert(RoomSetData.F.F_MiniBoss01.LegalEncounters, "MiniBossCaravan")
table.insert(RoomSetData.F.F_MiniBoss01.LegalEncounters, "MiniBossCaravan_Shrine")


