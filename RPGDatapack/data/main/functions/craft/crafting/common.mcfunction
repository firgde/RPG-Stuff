# アイテムｶﾓｫｫｫｫﾝ
    summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:1b,components:{custom_model_data:1}},Motion: [0d,0.2d,0d],PickupDelay:20}
# こんな棒は作った覚えがない！
    data modify entity @e[type=item,limit=1,sort=nearest] Item set from block 0 -59 0 Items[0]
# アイテム消す
    #shift入力がある場合は全て

    execute as @e[tag=slot,distance=..5] run data remove entity @s item
# リセット
    item replace block 0 -59 0 container.0 with air
    data remove storage item: Item
    data remove storage item: Item.Count
    data remove block ~ ~-1 ~ Items
