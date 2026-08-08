table.insert(MetaUpgradeData.NextBiomeEnemyShrineUpgrade.Ranks, { Points = 3, ChangeValue = 1.0 })
OverwriteTableKeys(MetaUpgradeData.NextBiomeEnemyShrineUpgrade.SwapMap, {
    Guard = { Name = "PyreMedium", },
    Guard_Elite = { Name = "PyreMedium", },
    Brawler = { Name = "PyreLarge", ActiveCapWeight = 1.3, },
    Brawler_Elite = { Name = "PyreLarge", ActiveCapWeight = 1.3 },
    Radiator = { Name = "PyreSmall", },
    Radiator_Elite = { Name = "PyreSmall", },
    Screamer = { Name = "PyreTree", },
    Screamer_Elite = { Name = "PyreTree", },
    Mage = { Name = "PyreMonster", },
    Mage_Elite = { Name = "PyreMonster", },
})
