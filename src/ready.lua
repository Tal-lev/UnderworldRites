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

import "EnemyAnimations.lua"
import "EnemyProjectiles.lua"
import "EnemyWeapons.lua"
import "EnemyUnits.lua"
import "SizeVFX.lua"
import "ModifyGodVFX.lua"

modutil.once_loaded.game(function()
	import "Keepsakes.lua"

	if (not rom.mods['NikkelM-Zagreus_Journey']) then
		SetupRunData()
	end
end)