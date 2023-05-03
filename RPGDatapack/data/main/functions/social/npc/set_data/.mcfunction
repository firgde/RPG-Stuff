# 一度別の場所に移し、LootReferenceを実際のアイテムに変える
    #取引データ
    data modify storage social: data.npc.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0}
    data modify storage social: data.npc.Recipes[-1].Item set from storage social: data.npc.Trades[-1].buy
    function main:social/npc/set_data/load_loot
    data modify storage social: data.npc.Recipes[-1].buy set from storage social: data.npc.Recipes[-1].Item

    data modify storage social: data.npc.Recipes[-1].Item set from storage social: data.npc.Trades[-1].sell
    function main:social/npc/set_data/load_loot
    data modify storage social: data.npc.Recipes[-1].sell set from storage social: data.npc.Recipes[-1].Item
# データ減らす
    data remove storage social: data.npc.Trades[-1]
# リセット
    data remove storage social: data.npc.Recipes.Item
# 再帰
    execute if data storage social: data.npc.Trades[0] run function main:social/npc/set_data/
