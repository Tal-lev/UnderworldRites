---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.

function mod.ProjectileSpawnUnitOnDeath( projectileData, triggerArgs )
	if SessionMapState.HandlingDeath or ( triggerArgs and triggerArgs.BlockSpawns ) then
		return
	end

	local newSpawnData = EnemyData[projectileData.SpawnName]
	if newSpawnData == nil then
		DebugAssert({ Condition = false, Text = "Projectile trying to spawn non-existant enemy." })
		return
	end

	-- if new spawn would send you over Active Cap, skip it
	local newSpawnActiveCapWeight = newSpawnData.ActiveCapWeight or 1

	local encounter = CurrentRun.CurrentRoom.Encounter
	if encounter ~= nil and encounter.ActiveEnemyCap ~= nil and GetActiveEnemyCount(encounter) + newSpawnActiveCapWeight > encounter.ActiveEnemyCap then
		return
	end

	local spawnPointId = SpawnObstacle({ Name = "InvisibleTarget", LocationX = triggerArgs.LocationX, LocationY = triggerArgs.LocationY, Group = "Scripting" })
	if IsLocationBlocked({ Id = spawnPointId }) then
		Destroy({ Id = spawnPointId })
		return
	end
	local newUnit = DeepCopyTable(newSpawnData)
	newUnit.BlocksLootInteraction = false
	newUnit.AlwaysTraitor = false
	newUnit.Charmed = false
	newUnit.RequiredKill = false
	newUnit.ObjectId = SpawnUnit({ Name = projectileData.SpawnName, DestinationId = spawnPointId, Group = "Standing" })

	if projectileData.SpawnBounceOffVictim and triggerArgs.TriggeredByTable ~= nil then
		ApplyUpwardForce({ Id = newUnit.ObjectId, Speed = projectileData.SpawnBounceOffVictimUpwardVelocity or 2200, SelfApplied = true })
		ApplyForce({ Id = newUnit.ObjectId, Speed = projectileData.SpawnBounceOffVictimVelocity or 650, Angle = triggerArgs.Angle + 180, SelfApplied = true })
	end

	if projectileData.SpawnsSkipActivatePresentation then
		newUnit.UseActivatePresentation = false
	end
	
	SetupUnit( newUnit )

	Destroy({ Id = spawnPointId })
end

--Loading the package at every room
modutil.mod.Path.Wrap("SetupMap", function(base, source, args)
	LoadPackages({ Name = "JarlUlsfark-UnderworldRites" })
	LoadPackages({ Name = "JarlUlsfark-PyreAuraFxinHades2" })
	return base(source, args)
end)

MaxChaptersWithoutSquish = 8
modutil.mod.Path.Wrap("CodexScreenCreateChapters", function (base, screen)
    local numChapters = game.TableLength( game.CodexOrdering.Order )
    -- fix bad mod ;)
    screen.ChapterX = 420
    screen.ChapterSpacingX = 94
    screen.CategoryIconOffsetX = 0
    -- realign tab offsets
    local startingTabOffsetX = -175
    local startingTabOffsetXDiff = 20
    for i = 1, #screen.Tabs do
        screen.Tabs[i].X = startingTabOffsetX + startingTabOffsetXDiff * (i-1)
    end

    -- squish tabs
    local additionalOffset = 20
    if numChapters > MaxChaptersWithoutSquish then
        screen.ChapterSpacingX = screen.ChapterSpacingX * MaxChaptersWithoutSquish / numChapters
        screen.ChapterSpacingX = screen.ChapterSpacingX + additionalOffset * MaxChaptersWithoutSquish / numChapters - additionalOffset
        game.ScreenData.Codex.CategoryIconOffsetX =  (screen.ChapterSpacingX - 94)/2
    end
    return base(screen)
end)

import "config.lua"

if config.Enemies == true then
	import "Codex.lua"
	import "EnemyAnimations.lua"
	import "EnemyProjectiles.lua"
	import "EnemyWeapons.lua"
	import "EnemyUnits.lua"
	import "EnemySets.lua"
	import "Fear.lua"
end
if config.Keepsakes == true then
	import "SizeVFX.lua"
	import "ModifyGodVFX.lua"
end



modutil.once_loaded.game(function()
	if config.Keepsakes == true then
		import "Keepsakes.lua"
	end
	--if (not rom.mods['NikkelM-Zagreus_Journey']) then
	SetupRunData()
	--end
end)