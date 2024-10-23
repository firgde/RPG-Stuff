# 表示用アイテムが存在しないなら召喚
    execute unless entity @e[tag=display_item,distance=..1] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:stick",count:1,components:{"item_model":"air"}},PickupDelay:32767,Tags:["display_item"],Age:-32768}
# アイテム更新
    data modify entity @n[tag=display_item,distance=..1] Item set from block ~ ~ ~ Items[{Slot:4b}]
