# 本体の水入り大釜
    setblock ~ ~ ~ water_cauldron[level=3]
# 水に浮いてるアイテム&interaction
    summon interaction ~0.5 ~0.75 ~0.7 {width:0.25f,height:0.5f,Tags:["alchemy","alchemy.slot"]}
    summon interaction ~0.5 ~0.75 ~0.3 {width:0.25f,height:0.5f,Tags:["alchemy","alchemy.slot"]}
    summon item_display ~0.5 ~1 ~0.7 {Tags:["alchemy.item","alchemy.item.0"]}
    summon item_display ~0.5 ~1 ~0.3 {Tags:["alchemy.item","alchemy.item.1"]}
    execute as @e[tag=alchemy.item,limit=2,sort=nearest] run data modify entity @s transformation.scale set value [0.25f,0.25f,0.25f]
    execute as @n[tag=alchemy.item] run scoreboard players set @s mov_direction 1
# 全体のクリック検知interaction
    summon interaction ~0.5 ~ ~0.5 {Tags:["alchemy","craft"],width:1.01f,height:1.01f}
