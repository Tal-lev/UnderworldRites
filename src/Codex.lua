import "CodexText.lua"
import "CodexVFX.lua"

-- Adding a new Category
local CodexKeyFound = "No"
for key,value in pairs(CodexOrdering.Order) do
    if value == "Otherworlds" then
        CodexKeyFound = "Yes"
    end
end
if CodexKeyFound == "No" then
    table.insert(CodexOrdering.Order, "Otherworlds")
    table.insert(game.ScreenData.Codex.Tabs, { X = -10, Y = -88, Animation = "GUI\\Screens\\Codex\\CategoryTab3", Highlight = "GUI\\Screens\\Codex\\CategoryTabHighlight3", Active = "GUI\\Screens\\Codex\\CategoryTabActiveHighlightOverlay3" })
end

-- Adding new Codex entries into the order
if CodexOrdering.Otherworlds then
    table.insert(CodexOrdering.Otherworlds, "PyreMedium")
    table.insert(CodexOrdering.Otherworlds, "PyreSmall")
    table.insert(CodexOrdering.Otherworlds, "PyreLarge")
    table.insert(CodexOrdering.Otherworlds, "PyreTree")
    table.insert(CodexOrdering.Otherworlds, "PyreTree")
    table.insert(CodexOrdering.Otherworlds, "PyreFlying")
    table.insert(CodexOrdering.Otherworlds, "PyreTrail")
    table.insert(CodexOrdering.Otherworlds, "PyreMonster")
    able.insert(CodexOrdering.Otherworlds, "PyreImp")
else
    OverwriteTableKeys(CodexOrdering, {
        Otherworlds = {
            "PyreMedium",
            "PyreSmall",
            "PyreLarge",
            "PyreTree",
            "PyreFlying",
            "PyreTrail",
            "PyreMonster",
            "PyreImp",
        },
    })
end

--Adding the Codex Data
if CodexData.Otherworlds then
    --table.insert(CodexData.Otherworlds, {})
else
    OverwriteTableKeys(CodexData, {
        Otherworlds = {
            TitleText = "Codex_OtherworldsChapter",
		    Icon = "JarlUlsfark-UnderworldRites\\Pyre_Generic_Small",
            ShowKillCount = true,
            Entries = {
                PyreMedium = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreMedium" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreMedium_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreMedium" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreMedium_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreMedium",
                },
                PyreSmall = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreSmall" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreSmall_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreSmall" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreSmall_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreSmall",
                },
                PyreLarge = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreLarge" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreLarge_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreLarge" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreLarge_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreLarge",
                },
                PyreTree = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreTree" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreTree_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreTree" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreTree_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreTree",
                },
                PyreTrail = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreTrail" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreTrail_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreTrail" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreTrail_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreTrail",
                },
                PyreFlying = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreFlying" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreFlying_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreFlying" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreFlying_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreFlying",
                },
                PyreMonster = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreMonster" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreMonster_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreMonster" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreMonster_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreMonster",
                },
                PyreImp = {
                    Entries =
                    {
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreImp" },
                                    Comparison = ">=",
                                    Value = 15,
                                },
                            },
                            Text = "CodexData_PyreImp_01",
                        },
                        {
                            UnlockGameStateRequirements =
                            {
                                {
                                    Path = { "GameState", "EnemyKills" },
								    SumOf = { "PyreImp" },
                                    Comparison = ">=",
                                    Value = 30,
                                },
                            },
                            Text = "CodexData_PyreImp_02",
                        },
                    },
                    Image = "Codex_Portrait_PyreImp",
                },
            }
        },
    })
end

-- Modifications to the tab layout of the Codex, as we need to squish them left to ensure our new tab doesn't go beyond the overlayed area
game.ScreenData.Codex.ChapterX = 405
game.ScreenData.Codex.ChapterSpacingX = 84
game.ScreenData.Codex.CategoryIconOffsetX = -2
if (not rom.mods['NikkelM-Zagreus_Journey']) then
    game.ScreenData.Codex.ChapterX = 405
    game.ScreenData.Codex.ChapterSpacingX = 84
    game.ScreenData.Codex.CategoryIconOffsetX = -2
end
