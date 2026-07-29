local maxReq = {}
local minReq = {}


maxReq = {
	PathTrue = {},
}
minReq = {
	PathTrue = {},
}

gods.CreateKeepsake({
    characterName = "Jodariel",
    internalKeepsakeName = "AttackSizeKeepsake",

    RarityLevels = {
        Common = 1,
        Rare = 1.2,
        Epic = 1.4,
        Heroic = 1.6,
    },

    ExtractValues = {
        {
            Key = "ReportedAoEIncrease",
            ExtractAs = "TooltipSize",
            Format = "PercentDelta",
        },
    },

    EquipSound = nil,

    Keepsake = {
        displayName = "Scribe Rock",
        description = "Increase Attack size by {#AltUpgradeFormat}{$TooltipData.ExtractData.TooltipSize}% {#Prev}.",
        signoffMax = "From {#AwardMaxFormat}Jodariel{#Prev}; you share a {#AwardMaxFormat}Caring Bond{#Prev}.{!Icons.ObjectiveSeparatorDark}Inspiration comes from unlikely places. Friendship comes in unlikely forms.",
    },
    -- Can't use :P in TooltipDefense because it assumes it's a +% not -%

    Icons = {
        iconPath = "JarlUlsfark-UnderworldRites\\ScribeRockIcon",
        maxIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Hermes_02",
        maxCornerIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Hermes",
    },

    customGiftData = {
        customName = "NPC_Jodariel_01",
        maxRequirement = maxReq,
        minRequirement = minReq,
    },

    ExtraFields = {
        PropertyChanges = {
			-- Range/Area Properties
			-- Range/Area Properties
			{
				WeaponName = "WeaponStaffSwing",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponDagger",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.6,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponAxe",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponTorch",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponSuit",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.75,
				ChangeType = "Add",
			},		
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},		
			{
				WeaponName = "WeaponStaffSwing",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponDagger",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponAxe",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponTorch",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponLob",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				FalseTraitName = "LobGunAspect",
				WeaponName = "WeaponLob",
				ProjectileProperty = "IgnoreObstacleImpactDuration",
				ChangeValue = 0.10,
			},	
			{
				WeaponName = "WeaponStaffBall",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponDaggerThrow",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.6,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponAxeSpecial",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponTorchSpecial",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "WeaponLobSpecial",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},		
			{
				WeaponName = "WeaponStaffBall",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponDaggerThrow",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponAxeSpecialSwing",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponTorchSpecial",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponLobSpecial",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponLobSpecial",
				ProjectileName = "ProjectileThrowBlink",
				ProjectileProperty = "BlastStartRadius",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponLobSpecial",
				ProjectileName = "ProjectileThrowBlink",
				ProjectileProperty = "BlastSpeed",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			{
				WeaponName = "WeaponSuitRanged",
				WeaponProperty = "BlastRadiusMultiplier",
				ChangeValue = 1.6,
				ChangeType = "Multiply",
				ReportValues = { ReportedAoEIncrease = "ChangeValue"},
			},
			--FX Axe
			{
				WeaponName = "WeaponAxe",
				FalseTraitName = "AxeRallyAspect",
				WeaponProperty = "FireFx",
				ChangeValue = "AxeSwipe1Scale1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "WeaponAxe2",
				FalseTraitName = "AxeRallyAspect",
				WeaponProperty = "FireFx",
				ChangeValue = "AxeSwipe2Scale1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "WeaponAxeDash",
				FalseTraitName = "AxeRallyAspect",
				WeaponProperty = "FireFx",
				ChangeValue = "AxeSwipeUpperScale1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			--Fx Dagger
			{
				WeaponName = "WeaponDagger",
				FalseTraitName = { "DaggerTripleAspect", },
				WeaponProperty = "FireFx",
				ChangeValue = "DaggerSwipeFastScale1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "WeaponDagger2",
				FalseTraitName = { "DaggerTripleAspect", },
				WeaponProperty = "FireFx",
				ChangeValue = "DaggerSwipeFastFlipScale1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
    },
})




