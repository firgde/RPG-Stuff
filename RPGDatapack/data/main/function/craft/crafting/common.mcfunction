# アイテム
    summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,components:{custom_model_data:1}},Motion: [0d,0.2d,0d],PickupDelay:20}
# データを代入
    execute as @e[type=item,distance=..1] if items entity @s contents stick[custom_model_data=1] run data modify entity @s Item set from block 0 -59 0 Items[{Slot:0b}]
# アイテム消す
    execute as @e[tag=slot,distance=..5] run item modify entity @s contents {"function":"minecraft:set_count","count":-1,"add":true}
# リセット
    item replace block 0 -59 0 container.0 with air
    data remove storage item: Item
    data remove storage item: Item.count
    data remove block ~ ~-1 ~ Items
