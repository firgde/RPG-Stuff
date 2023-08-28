# アイテムｶﾓｫｫｫｫﾝ
    summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}},Motion: [0d,0.2d,0d],PickupDelay:20}
# こんな棒は作った覚えがない！
    data modify entity @e[type=item,limit=1,sort=nearest] Item set from block 0 -59 0 Items[0]
# アイテムにGOOD BYE NEW WORLD!
    execute as @e[tag=slot,distance=..10] run data remove entity @s item
# リセット
    item replace block 0 -59 0 container.0 with air
    data remove storage item: Item
    data remove block ~ ~-1 ~ Items
