---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload.lua`.

--Loading the package at every room
modutil.mod.Path.Wrap("SetupMap", function(base, source, args)
	LoadPackages({ Name = "JarlUlsfark-UnderworldRites" })
	return base(source, args)
end)

modutil.once_loaded.game(function()
	import "Keepsakes.lua"
end)