# 本体の醸造台
    setblock ~ ~ ~ brewing_stand
# 干渉防止&クリック検知用interaction
    summon interaction ~0.5 ~ ~0.5 {Tags:["brewing"]}
# ポーションみっつ
    summon item_display ~0.875 ~0.375 ~0.5 {Tags:["brewing.potion","brewing.slot.0"]}
    execute positioned ~0.875 ~0.375 ~0.5 run data modify entity @n[tag=brewing.potion] transformation.scale set value [0.5f,0.5f,0.0f]
    summon item_display ~0.215 ~0.375 ~0.215 {Tags:["brewing.potion","brewing.slot.1"],Rotation:[-135.0f,0.0f]}
    execute positioned ~0.215 ~0.375 ~0.215 run data modify entity @n[tag=brewing.potion] transformation.scale set value [0.5f,0.5f,0.0f]
    summon item_display ~0.22 ~0.375 ~0.78 {Tags:["brewing.potion","brewing.slot.2"],Rotation:[135.0f,0.0f]}
    execute positioned ~0.22 ~0.375 ~0.78 run data modify entity @n[tag=brewing.potion] transformation.scale set value [0.5f,0.5f,0.0f]
