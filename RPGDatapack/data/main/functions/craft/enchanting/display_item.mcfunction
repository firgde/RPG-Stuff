# 表示用アイテムが存在しないなら召喚
    execute unless entity @e[tag=display_item,distance=..2] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Tags:["display_item"],Age:-32768}
# アイテム更新
    data modify entity @e[limit=1,sort=nearest,tag=display_item,distance=..2] Item set from block ~ ~ ~ Items[{Slot:4b}]
