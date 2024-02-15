# 0 -59 0 のシュルカーボックスにストレージからアイテムを入れる
    item replace block 0 -59 0 container.0 with air
    # 0000-0999 無機能アイテム

    # 1000-1999 武器
    #1000-1099 剣
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1000_wooden_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1000_wooden_sword
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1001_stone_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1001_stone_sword
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1002_iron_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1002_iron_sword
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1003_golden_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1003_golden_sword
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1004_diamond_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1004_diamond_sword
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1005_netherite_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1005_netherite_sword
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1006_amethyst_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1006_amethyst_sword

    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1010_ice_sword"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1010_ice_sword

    #1100-1199 ハンマー
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1100_wooden_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1100_wooden_hammer
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1101_stone_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1101_stone_hammer
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1102_iron_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1102_iron_hammer
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1103_golden_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1103_golden_hammer
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1104_diamond_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1104_diamond_hammer
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1105_netherite_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1105_netherite_hammer
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1106_amethyst_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1106_amethyst_hammer

    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1110_bread_hammer"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1010_bread_hammer

    #1200-1299 杖
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1200_wooden_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1200_wooden_wand
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1201_stone_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1201_stone_wand
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1202_iron_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1202_iron_wand
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1203_golden_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1203_golden_wand
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1204_diamond_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1204_diamond_wand
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1205_netherite_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1205_netherite_wand
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1206_amethyst_wand"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1206_amethyst_wand

    #1300-1399 弓
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1300_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1300_bow
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1301_stone_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1301_stone_bow
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1302_iron_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1302_iron_bow
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1303_golden_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1303_golden_bow
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1304_diamond_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1304_diamond_bow
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1305_netherite_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1305_netherite_bow
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1306_amethyst_bow"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1306_amethyst_bow

    #1400-1499 短剣
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1400_wooden_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1400_wooden_dagger
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1401_stone_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1401_stone_dagger
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1402_iron_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1402_iron_dagger
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1403_golden_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1403_golden_dagger
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1404_diamond_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1404_diamond_dagger
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1405_netherite_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1405_netherite_dagger
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"1406_amethyst_dagger"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/1406_amethyst_dagger
    # 2000-2999 オフハンド装備品

    # 3000-3999 防具

    # 4000-4999 ツール類

    # 5000-5999 未定

    # 6000-6999 食料

    # 7000-7999 ポーション

    # 8000-8999 その他

    # 通貨
    #moneycountを1に
    scoreboard players set #moneycount buffer 1
    execute if data storage social: data.npc.Recipes[-1].Item{LootReference:"gemstone_shard"} run loot replace block 0 -59 0 container.0 loot asset:social/trading/gemstone_shard

# 個数設定
    data modify storage social: data.buffer.Count set from storage social: data.npc.Recipes[-1].Item.Count
# ストレージに実際のアイテムデータを入れる
    data modify storage social: data.npc.Recipes[-1].Item set from block 0 -59 0 Items[{Slot:0b}]
    data remove storage social: data.npc.Recipes[-1].Item.Slot
    data modify storage social: data.npc.Recipes[-1].Item.Count set from storage social: data.buffer.Count
# リセット
    data remove storage social: data.buffer.Count
    scoreboard players reset #moneycount buffer
