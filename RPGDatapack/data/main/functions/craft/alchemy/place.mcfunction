# 本体の水入り大釜
    setblock ~ ~ ~ water_cauldron[level=3]
# 水に浮いてるアイテム&interaction
    summon interaction ~0.5 ~1 ~0.7 {width:0.25f,height:0.25f,Tags:["alchemy","alchemy.slot.0"]}
    summon interaction ~0.5 ~1 ~0.2 {width:0.25f,height:0.25f,Tags:["alchemy","alchemy.slot.1"]}
    summon item_display ~0.5 ~1 ~0.7 {Tags:["alchemy.item","alchemy.item.0"]}
    data modify entity @e[tag=alchemy.item.0,limit=1,sort=nearest] transformation.scale set value [0.25f,0.25f,0.25f]
    scoreboard players set @e[tag=alchemy.item.0,limit=1,sort=nearest] mov_direction 1
    summon item_display ~0.5 ~1 ~0.7 {Tags:["alchemy.item","alchemy.item.1"]}
    data modify entity @e[tag=alchemy.item.1,limit=1,sort=nearest] transformation.scale set value [0.25f,0.25f,0.25f]
    scoreboard players set @e[tag=alchemy.item.0,limit=1,sort=nearest] mov_direction 1
# 全体のクリック検知interaction
    summon interaction ~0.5 ~ ~0.5 {Tags:["alchemy"],width:1.01f,height:1.01f}
