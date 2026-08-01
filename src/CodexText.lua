local TextOrder = {
    "Id",
    "InheritFrom",
    "DisplayName",
    "Description",
	"OverwriteLocalization",
	}

local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/ScreenText.en.sjson')
sjson.hook(file, function(data)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "Codex_OtherworldsChapter",
      DisplayName = "Other Worlds",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "PyreMedium",
      DisplayName = "Nomad",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "PyreSmall",
      DisplayName = "Cur",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "PyreLarge",
      DisplayName = "Demon",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "PyreTree",
      DisplayName = "Sap",
    },
	TextOrder)
	)
return data
end)


local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/CodexText.en.sjson')
sjson.hook(file, function(data)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreMedium_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat} Common folk cast from the Commonwealth, and stripped of name, home, and title.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreMedium_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat} Common folk cast from the Commonwealth, and stripped of name, home, and title. \n\n{#CodexItalicFormat}They came from all directions, toward the Commonwealth, where at last they settled, some of them.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreLarge_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}People who survived in exile long enough to be transformed by it, in body if not in spirit.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreLarge_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}People who survived in exile long enough to be transformed by it, in body if not in spirit. \n\n{#CodexItalicFormat}'All are welcome here, save demons such as you.' --from the Sentencing of Chief-Physician Oralech",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreSmall_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Swift, dog-like creatures known for their loyalty, optimism, and appreciation for the simple things.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreSmall_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Swift, dog-like creatures known for their loyalty, optimism, and appreciation for the simple things. \n\n{#CodexItalicFormat}The alpha-chiefs would later say their kind went soft no sooner than they joined the Commonwealth.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreTree_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Tree-like creatures, known for their ingenuity, cleverness, and ambition.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreTree_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Tree-like creatures, known for their ingenuity, cleverness, and ambition. \n\n{#CodexItalicFormat}Having allied with them, the Commonwealth achieved in decades what it could not achieve in centuries.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreFlying_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Winged warriors from the mountainous offskirts of the Commonwealth, where they are feared.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreFlying_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Winged warriors from the mountainous offskirts of the Commonwealth, where they are feared. \n\n{#CodexItalicFormat}They fled to their mountain nests, awaiting the day when they would darken the skies, and retake the land.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreTrail_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Relatively intelligent amphibians, known for their chivalry, hot tempers, and reckless determination.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreTrail_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Relatively intelligent amphibians, known for their chivalry, hot tempers, and reckless determination. \n\n{#CodexItalicFormat}It was inevitable that the {$Keywords.WyrmFaction}'s teeming masses clambered onto shore, seeking glory.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreMonster_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Bog-dwelling serpentine creatures, known for their bluntness, stubbornness, and wisdom.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreMonster_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Bog-dwelling serpentine creatures, known for their bluntness, stubbornness, and wisdom. \n\n{#CodexItalicFormat}Either the Commonwealth tolerated the crones of the Bogs, or the other way around.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreImp_01",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Ravenous creatures indigenous to the DownSide, a scant few of which possess a higher intellect.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "CodexData_PyreImp_02",
      InheritFrom = "BaseCodexEntry",
      DisplayName = "{#CodexItalicFormat}Ravenous creatures indigenous to the DownSide, a scant few of which possess a higher intellect. \n\n{#CodexItalicFormat}'Stand between the imp and its appetite if you wish to be eaten.' --DownSide proverb",
    },
	TextOrder)
	)

    return data
end)