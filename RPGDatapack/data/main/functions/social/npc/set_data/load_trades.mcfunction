# 0 -59 0 のシュルカーボックスにストレージからアイテムを入れる
    item replace block 0 -59 0 container.0 with air
# LootReferenceに応じてアイテムをシュル箱に入れる
    $say $(LootReference)
    $execute unless data storage social: data.npc.Recipes[-1].Item{LootReference:"gemstone_shard"} run function asset:item/$(LootReference)/give
# 宝石の欠片
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
