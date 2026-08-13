local maxReq = {}
local minReq = {}


maxReq = {
	PathTrue = {},
}
minReq = {
	PathTrue = {},
}

gods.CreateKeepsake({
    characterName = "Bertrude",
    internalKeepsakeName = "HigherHealthDamage",

    RarityLevels = {
        Common = { Multiplier = 1.1},
        Rare = { Multiplier = 1.2 },
        Epic = { Multiplier = 1.3},
        Heroic = { Multiplier = 1.5},
    },

    ExtractValues = {
        {
            Key = "DamageMultiplier",
            ExtractAs = "TooltipDamage",
            Format = "PercentDelta",
        },
    },

    EquipSound = nil,

    Keepsake = {
        displayName = "Living Flame",
        description = "Deal {#AltUpgradeFormat}{$TooltipData.ExtractData.TooltipDamage}% {#Prev}more damage to enemies with lower {$Keywords.Health}.",
        signoffMax = "From {#AwardMaxFormat}Big Bertrude{#Prev}; you share an {#AwardMaxFormat}Alchemical Bond{#Prev}.{!Icons.ObjectiveSeparatorDark}Some old bog-dweller sorcery keeps this bit of bottled flame from ever flaring out.",
    },

    Icons = {
        iconPath = "JarlUlsfark-UnderworldRites\\LivingFlameIcon",
        maxIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles_02",
        maxCornerIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles",
    },

    customGiftData = {
        customName = "NPC_Bertrude_01",
        maxRequirement = maxReq,
        minRequirement = minReq,
    },

    ExtraFields = {
        DamageMultiplier = { BaseValue = 1 }
    },
})

ModUtil.Path.Wrap("Damage", function(baseFunc, victim, triggerArgs)
    if HeroHasTrait("JarlUlsfark-UnderworldRites-HigherHealthDamage") and triggerArgs and triggerArgs.AttackerTable and triggerArgs.AttackerTable.Name == "Default" and victim ~= CurrentRun.Hero and victim.Health then
		if CurrentRun.Hero.Health >= victim.Health then
			local trait = GetHeroTrait("JarlUlsfark-UnderworldRites-HigherHealthDamage")
			triggerArgs.DamageAmount = triggerArgs.DamageAmount * (trait.DamageMultiplier or 1.1) 
		end
	end
	return baseFunc(victim,triggerArgs)
end)