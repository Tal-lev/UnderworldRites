local file = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_Screens_VFX.sjson')
sjson.hook(file, function(data)

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreMedium",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreMedium",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreSmall",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreSmall",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreLarge",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreLarge",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreTree",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreTree",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreFlying",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreFlying",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreMonster",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreMonster",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreTrail",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreTrail",
		EndFrame = 1,
		StartFrame = 1,
	})

	table.insert(data.Animations,
	{
		Name = "Codex_Portrait_PyreImp",
		InheritFrom = "Codex_Portrait_Base_01",
		FilePath = "JarlUlsfark-UnderworldRites\\PortraitPyreImp",
		EndFrame = 1,
		StartFrame = 1,
	})

return data
end)