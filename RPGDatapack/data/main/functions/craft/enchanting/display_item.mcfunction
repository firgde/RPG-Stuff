#アイテムが入ってます！！
    execute unless entity @e[tag=getting_enchanted] run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:3}},PickupDelay:32767,Tags:["getting_enchanted"],Age:-32768}
#いや、君じゃない
    data remove entity @e[limit=1,tag=getting_enchanted] Item.tag.Customnbt
    data modify entity @e[limit=1,sort=nearest,tag=getting_enchanted] Item set from block ~ ~-1 ~ Items[{Slot:4b}]
#やっぱり君かも
    execute unless data block ~ ~-1 ~ Items[{Slot:4b}] run data merge entity @e[limit=1,tag=getting_enchanted] {Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:3,Enchantments:[]}},PickupDelay:32767,Tags:["getting_enchanted"],Age:-32768}
