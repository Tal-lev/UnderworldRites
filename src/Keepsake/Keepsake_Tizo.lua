local maxReq = {}
local minReq = {}


maxReq = {
	PathTrue = {},
}
minReq = {
	PathTrue = {},
}

gods.CreateKeepsake({
    characterName = "Tizo",
    internalKeepsakeName = "ConstantCast",

    RarityLevels = {
        Common = { Multiplier = 0.6},
        Rare = { Multiplier = 0.7 },
        Epic = { Multiplier = 0.8},
        Heroic = { Multiplier = 1},
    },

    ExtractValues = {
        {
            Key = "SizeScaler",
            ExtractAs = "ScaleMultiplier",
            Format = "PercentDelta",
        },
    },

    EquipSound = nil,

    Keepsake = {
        displayName = "Black Claw",
        description = "Automatically fire your {$Keywords.Cast} at your location, but the Cast size is {#AltUpgradeFormat}{$TooltipData.ExtractData.ScaleMultiplier}%{#Prev}.",
        signoffMax = "From {#AwardMaxFormat}Tizo{#Prev}; you share a {#AwardMaxFormat}Familiar Bond{#Prev}.{!Icons.ObjectiveSeparatorDark}One of three scattered remnants of a thrice-cursed demon, who roamed the Downside in a state of madness.",
    },

    Icons = {
        iconPath = "JarlUlsfark-UnderworldRites\\BlackClawIcon",
        maxIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles_02",
        maxCornerIcon = "GUI\\Screens\\AwardMenu\\KeepsakeMaxGift\\Achilles",
    },

    customGiftData = {
        customName = "NPC_Tizo_01",
        maxRequirement = maxReq,
        minRequirement = minReq,
    },

    ExtraFields = {
        SizeScaler = {BaseValue = 1},
        PropertyChanges = {
            {
				WeaponName = "WeaponCast",
                ProjectileName ="ProjectileCast",
				ProjectileProperty = "AttachToOwner",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
            {
				WeaponName = "WeaponCast",
				WeaponProperty = "AttachToOwner",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
            {
				WeaponName = "WeaponCast",
				WeaponProperty = "DefaultControl",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
        },
        SetupFunction =
        {
            Name = _PLUGIN.guid .. "." .. "SetupCastAutofire",
            Args = {}
        },

    },
})

-- Wrap WeaponCastFired to apply our multiplier after the base function processes traits
ModUtil.Path.Wrap("WeaponCastFired", function(base, owner, weaponData, args, triggerArgs)
    if HeroHasTrait("JarlUlsfark-UnderworldRites-ConstantCast") then
        if weaponData and weaponData.Name == "WeaponCast" and triggerArgs and triggerArgs.ProjectileId then
            local trait = GetHeroTrait("JarlUlsfark-UnderworldRites-ConstantCast")
            SetDamageRadiusMultiplier({ Id = triggerArgs.ProjectileId, Fraction = trait.SizeScaler, Duration = 0 })
        end
    end
    
    return base(owner, weaponData, args, triggerArgs)
end)

function mod.SetupCastAutofire( hero, args ) 
	if CurrentRun and not CurrentRun.Hero.IsDead and CurrentRun.CurrentRoom and CurrentRun.CurrentRoom.BlockCombat then
		return
	end
	thread( mod.CastAutofire, args )
end

function mod.CastAutofire( args )
	if not CurrentRun.Hero.ObjectId then
		return
	end
	local weaponName = "WeaponCast"
	local weaponData = GetWeaponData(CurrentRun.Hero, weaponName)
	local projectileName = "ProjectileCast"
    local threadName = "CastAutofire"
	if HasThread(threadName) then
		return
	end
    SessionMapState.ElapsedTimeMultiplierIgnores[threadName] = true
    local derivedValues = GetDerivedPropertyChangeValues({
		ProjectileName = projectileName,
		WeaponName = weaponName,
		Type = "Projectile",
	})

	while CurrentRun and CurrentRun.Hero and CurrentRun.Hero.ObjectId and (not CurrentRun.Hero.IsDead or (CurrentHubRoom ~= nil and CurrentHubRoom.AllowEnemyAIActive)) do
		SessionMapState.AutoCastIds = {}
		if not IsInputAllowed({}) or not AreScreensInactiveExcluding({ "TraitTrayScreen", "Codex"}) or SessionMapState.SkyEntranceInProgress or MapState.HostilePolymorph or not IsEmpty( MapState.TransformArgs ) or CurrentRun.Cleared or not HeroHasTrait("JarlUlsfark-UnderworldRites-ConstantCast") then
			if not IsEmpty(SessionMapState.AutoCastIds ) then
				ExpireProjectiles({ ProjectileIds = SessionMapState.AutoCastIds })
				ExpireProjectiles({ Names = { "ProjectileCast" }})
				SessionMapState.AutoCastIds = {}
			end
			wait( 0.1, threadName ) 
		elseif IsCombatEncounterActive(CurrentRun) or not CurrentRun.CurrentRoom.Encounter or ( CurrentRun.CurrentRoom.Encounter.DelayedStart and CurrentRun.CurrentRoom.Encounter.StartTime and not CurrentRun.CurrentRoom.Encounter.Completed ) or not IsEmpty(MapState.AggroedUnits) or (CurrentHubRoom ~= nil and CurrentHubRoom.AllowEnemyAIActive) then
			if IsEmpty(SessionMapState.AutoCastIds) then
                derivedValues = GetDerivedPropertyChangeValues({
                    ProjectileName = projectileName,
                    WeaponName = weaponName,
                    Type = "Projectile",
                })
                local projectileId = FireWeaponFromUnit({ Weapon = weaponName, Id = CurrentRun.Hero.ObjectId, DestinationId = CurrentRun.Hero.ObjectId, AutoEquip = false })
			end
			wait( 2, threadName )
		else
			wait( 0.1, threadName )
		end
	end
end