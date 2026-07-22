local maxReq = {}
local minReq = {}


maxReq = {
	PathTrue = {},
}
minReq = {
	PathTrue = {},
}

gods.CreateKeepsake({
    characterName = "Rukey",
    internalKeepsakeName = "MoveSpeedKeepsake",

    RarityLevels = {
        Common = { Multiplier = 2},
        Rare = { Multiplier = 4 },
        Epic = { Multiplier = 6},
        Heroic = { Multiplier = 8},
    },

    ExtractValues = {
        {
            Key = "ReportedChange",
            ExtractAs = "TooltipSpeed",
            Format = "PercentDelta",
        },
    },

    EquipSound = nil,

    Keepsake = {
        displayName = "Tailwind Crest",
        description = "Increase Movement Speed by {#AltUpgradeFormat}{$TooltipData.ExtractData.TooltipSpeed}% {#Prev}.",
        signoffMax = "From {#AwardMaxFormat}Rukey Greentail{#Prev}; you share a {#AwardMaxFormat}Familial Bond{#Prev}.{!Icons.ObjectiveSeparatorDark}Inspiration comes from unlikely places. Friendship comes in unlikely forms.",
    },
    -- Can't use :P in TooltipDefense because it assumes it's a +% not -%

    Icons = {
        iconPath = "JarlUlsfark-UnderworldRites\\TailwindCrestIcon",
        maxIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles_02",
        maxCornerIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles",
    },

    customGiftData = {
        customName = "NPC_Rukey_01",
        maxRequirement = maxReq,
        minRequirement = minReq,
    },

    ExtraFields = {
        PropertyChanges = {
			{
				UnitProperty = "Speed",
				BaseValue = 1.05,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ReportValues = { ReportedChange = "ChangeValue" }
			},
			{
				WeaponNames = { "WeaponSprint" },
				WeaponProperty = "SelfVelocity",
				BaseValue = 99,
				ChangeType = "Add",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "WeaponSprint" },
				WeaponProperty = "SelfVelocityCap",
				BaseValue = 44.5,
				ChangeType = "Add",
				ExcludeLinked = true,
			},						
		},
    },
})
