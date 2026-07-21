local maxReq = {}
local minReq = {}

--if mod.hades_Biomes then
--    maxReq = {
--        PathTrue = { "GameState", "TextLinesRecord", "AchillesGift09_A" },
--    }
--    minReq = {
--        PathTrue = { "GameState", "TextLinesRecord", "AchillesGift01" },
--    }
--end

gods.CreateKeepsake({
    characterName = "Achilles",
    internalKeepsakeName = "AttackSizeKeepsake",

    RarityLevels = {
        Common = 1,
        Rare = 1.2,
        Epic = 1.4,
        Heroic = 1.6,
    },

    ExtractValues = {
        {
            Key = "AttackSizeMultiplierKey",
            ExtractAs = "TooltipSize",
            Format = "PercentDelta",
        },
    },

    EquipSound = nil,

    Keepsake = {
        displayName = "Scribe Rock",
        description = "Increase Attack size by {#AltUpgradeFormat}{$TooltipData.ExtractData.TooltipSize}% {#Prev}.",
        signoffMax = "From {#AwardMaxFormat}Achilles{#Prev}; you share a {#AwardMaxFormat}Sonorous Bond{#Prev}.{!Icons.ObjectiveSeparatorDark}Inspiration comes from unlikely places. Friendship comes in unlikely forms.",
    },
    -- Can't use :P in TooltipDefense because it assumes it's a +% not -%

    Icons = {
        iconPath = "GUI\\Screens\\AwardMenu\\Myrmidon_Bracer",
        maxIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles_02",
        maxCornerIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles",
    },

    --customGiftData = {
    --    customName = "NPC_Achilles_01",
    --    maxRequirement = maxReq,
    --    minRequirement = minReq,
    --},

    ExtraFields = {
        PropertyChanges =
        {
            {
				WeaponName = "WeaponStaffSwing",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = {BaseValue = 1.4},
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponDagger",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = {BaseValue = 1.6},
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponAxe",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = {BaseValue = 1.2},
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponTorch",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = {BaseValue = 1.4},
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponSuit",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = {BaseValue = 0.75},
				ChangeType = "Add",
			},		
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = {BaseValue = 1.2},
				ChangeType = "Multiply",
			},		
			{
				WeaponName = "WeaponStaffSwing",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = {BaseValue = 1.4},
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponDagger",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = {BaseValue = 1.4},
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponAxe",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = {BaseValue = 1.2},
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
            {
				WeaponName = "WeaponTorch",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = {BaseValue = 1.2},
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = {BaseValue = 1.2},
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				FalseTraitName = "LobGunAspect",
				WeaponName = "WeaponLob",
				ProjectileProperty = "IgnoreObstacleImpactDuration",
				ChangeValue = 0.10,
			},		
        },
    },
})
