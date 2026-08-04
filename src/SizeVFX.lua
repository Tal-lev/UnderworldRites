--Axe VFX
local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Axe_VFX.sjson')
sjson.hook(file, function(data)
	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1",
		InheritFrom = "AxeSwipe1",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Zeus",
		InheritFrom = "AxeSwipe1_Zeus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Hera",
		InheritFrom = "AxeSwipe1_Hera",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Poseidon",
		InheritFrom = "AxeSwipe1_Poseidon",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Demeter",
		InheritFrom = "AxeSwipe1_Demeter",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Apollo",
		InheritFrom = "AxeSwipe1_Apollo",
		ClearCreateAnimations = true,
		Scale = 3,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Aphrodite",
		InheritFrom = "AxeSwipe1_Aphrodite",
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Hephaestus",
		InheritFrom = "AxeSwipe1_Hephaestus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Hestia",
		InheritFrom = "AxeSwipe1_Hestia",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe1Scale1_Ares",
		InheritFrom = "AxeSwipe1_Ares",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1",
		InheritFrom = "AxeSwipe2",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Zeus",
		InheritFrom = "AxeSwipe2_Zeus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Hera",
		InheritFrom = "AxeSwipe2_Hera",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Poseidon",
		InheritFrom = "AxeSwipe2_Poseidon",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Demeter",
		InheritFrom = "AxeSwipe2_Demeter",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Apollo",
		InheritFrom = "AxeSwipe2_Apollo",
		ClearCreateAnimations = true,
		Scale = 3,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Aphrodite",
		InheritFrom = "AxeSwipe2_Aphrodite",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Hephaestus",
		InheritFrom = "AxeSwipe2_Hephaestus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Hestia",
		InheritFrom = "AxeSwipe2_Hestia",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipe2Scale1_Ares",
		InheritFrom = "AxeSwipe2_Ares",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1",
		InheritFrom = "AxeSwipeUpper",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Zeus",
		InheritFrom = "AxeSwipeUpper_Zeus",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Hera",
		InheritFrom = "AxeSwipeUpper_Hera",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Poseidon",
		InheritFrom = "AxeSwipeUpper_Poseidon",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Demeter",
		InheritFrom = "AxeSwipeUpper_Demeter",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Apollo",
		InheritFrom = "AxeSwipeUpper_Apollo",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Aphrodite",
		InheritFrom = "AxeSwipeUpper_Aphrodite",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Hephaestus",
		InheritFrom = "AxeSwipeUpper_Hephaestus",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Hestia",
		InheritFrom = "AxeSwipeUpper_Hestia",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSwipeUpperScale1_Ares",
		InheritFrom = "AxeSwipeUpper_Ares",
		ClearCreateAnimations = true,
		Scale = 2,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1",
		InheritFrom = "AxeSpinDouble",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Zeus",
		InheritFrom = "AxeSpinDouble_Zeus",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Hera",
		InheritFrom = "AxeSpinDouble_Hera",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Poseidon",
		InheritFrom = "AxeSpinDouble_Poseidon",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Demeter",
		InheritFrom = "AxeSpinDouble_Demeter",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Apollo",
		InheritFrom = "AxeSpinDouble_Apollo",
		ClearCreateAnimations = true,
		Scale = 2.5,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Aphrodite",
		InheritFrom = "AxeSpinDouble_Aphrodite",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Hephaestus",
		InheritFrom = "AxeSpinDouble_Hephaestus",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Hestia",
		InheritFrom = "AxeSpinDouble_Hestia",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

	table.insert(data.Animations,
	{
		Name = "AxeSpinDoubleScale1_Ares",
		InheritFrom = "AxeSpinDouble_Ares",
		ClearCreateAnimations = true,
		Scale = 1.6,
	})

return data
end)

local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Dagger_VFX.sjson')
sjson.hook(file, function(data)
	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1",
		InheritFrom = "DaggerSwipeFast",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Zeus",
		InheritFrom = "DaggerSwipeFast_Zeus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Hera",
		InheritFrom = "DaggerSwipeFast_Hera",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Poseidon",
		InheritFrom = "DaggerSwipeFast_Poseidon",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Demeter",
		InheritFrom = "DaggerSwipeFast_Demeter",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Apollo",
		InheritFrom = "DaggerSwipeFast_Apollo",
		ClearCreateAnimations = true,
		Scale = 3.8,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Aphrodite",
		InheritFrom = "DaggerSwipeFast_Aphrodite",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Hephaestus",
		InheritFrom = "DaggerSwipeFast_Hephaestus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Hestia",
		InheritFrom = "DaggerSwipeFast_Hestia",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastScale1_Ares",
		InheritFrom = "DaggerSwipeFast_Ares",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1",
		InheritFrom = "DaggerSwipeFastFlip",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Zeus",
		InheritFrom = "DaggerSwipeFastFlip_Zeus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Hera",
		InheritFrom = "DaggerSwipeFastFlip_Hera",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Poseidon",
		InheritFrom = "DaggerSwipeFastFlip_Poseidon",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Demeter",
		InheritFrom = "DaggerSwipeFastFlip_Demeter",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Apollo",
		InheritFrom = "DaggerSwipeFastFlip_Apollo",
		ClearCreateAnimations = true,
		Scale = 3.8,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Aphrodite",
		InheritFrom = "DaggerSwipeFastFlip_Aphrodite",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Hephaestus",
		InheritFrom = "DaggerSwipeFastFlip_Hephaestus",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Hestia",
		InheritFrom = "DaggerSwipeFastFlip_Hestia",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

	table.insert(data.Animations,
	{
		Name = "DaggerSwipeFastFlipScale1_Ares",
		InheritFrom = "DaggerSwipeFastFlip_Ares",
		ClearCreateAnimations = true,
		Scale = 2.4,
	})

return data
end)