# 本体の金床
    setblock ~ ~ ~ anvil[facing=east]
    #干渉防止用のinteraction
    summon interaction ~0.5 ~ ~0.5 {width:1.05f}
# 修理対象アイテム
    summon item_display ~0.5 ~1.01 ~0.5 {Tags:["repair_item","repair_slot.summon"],Rotation:[0f,90f]}
    execute positioned ~0.5 ~1.01 ~0.5 run data modify entity @n[tag=repair_item] transformation.scale set value [0.75f,0.75f,0.75f]
    execute positioned ~0.5 ~1.01 ~0.5 run data modify entity @n[tag=repair_item] transformation.left_rotation[2] set value 0.42f
    summon interaction ~0.5 ~1.01 ~0.5 {height:0.01f,Tags:["repair_slot","repair_slot.0"]}
# 修理素材
    summon item_display ~0.8 ~1.04 ~0.5 {Tags:["repair_material","repair_slot.summon"],Rotation:[0f,90f]}
    execute positioned ~0.8 ~1.04 ~0.5 run data modify entity @n[tag=repair_material] transformation.scale set value [0.25f,0.25f,0.25f]
    execute positioned ~0.8 ~1.04 ~0.5 run data modify entity @n[tag=repair_material] transformation.translation set value [0.0f,0.0f,-0.04f]
    summon item_display ~0.5 ~1.04 ~0.5 {Tags:["repair_material","repair_slot.summon"],Rotation:[0f,90f]}
    execute positioned ~0.5 ~1.04 ~0.5 run data modify entity @n[tag=repair_material] transformation.scale set value [0.25f,0.25f,0.25f]
    execute positioned ~0.5 ~1.04 ~0.5 run data modify entity @n[tag=repair_material] transformation.translation set value [0.0f,0.0f,-0.04f]
    summon item_display ~0.2 ~1.04 ~0.5 {Tags:["repair_material","repair_slot.summon"],Rotation:[0f,90f]}
    execute positioned ~0.2 ~1.04 ~0.5 run data modify entity @n[tag=repair_material] transformation.scale set value [0.25f,0.25f,0.25f]
    execute positioned ~0.2 ~1.04 ~0.5 run data modify entity @n[tag=repair_material] transformation.translation set value [0.0f,0.0f,-0.04f]
    summon interaction ~0.8 ~1.04 ~0.5 {width:0.3f,height:0.01f,Tags:["repair_slot","repair_slot.1"]}
    summon interaction ~0.5 ~1.04 ~0.5 {width:0.3f,height:0.01f,Tags:["repair_slot","repair_slot.2"]}
    summon interaction ~0.2 ~1.04 ~0.5 {width:0.3f,height:0.01f,Tags:["repair_slot","repair_slot.3"]}
# translationをいじる
    execute as @e[tag=repair_slot.summon,tag=!repair_slot.0] run data modify entity @s transformation.translation set value [0.0f,-0.04f,0.0f]
# item_displayをinteractionに乗せる
    execute as @e[tag=repair_slot.summon] at @s run ride @s mount @n[tag=repair_slot,type=interaction,distance=..0.01]
# リセット
    tag @e[tag=repair_slot.summon] remove repair_slot.summon
