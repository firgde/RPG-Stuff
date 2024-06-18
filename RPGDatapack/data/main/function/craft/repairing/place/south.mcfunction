# 本体の金床
    setblock ~ ~ ~ anvil[facing=north]
    #干渉防止用のinteraction
    summon interaction ~0.5 ~ ~0.5 {width:1.05f}
# 修理対象アイテム
    summon item_display ~0.5 ~1.01 ~0.5 {Tags:["repair_item"],Rotation:[-90f,90f]}
    execute positioned ~0.5 ~1.01 ~0.5 run data modify entity @n[tag=repair_item] transformation.scale set value [0.75f,0.75f,0.75f]
    execute positioned ~0.5 ~1.01 ~0.5 run data modify entity @n[tag=repair_item] transformation.left_rotation[2] set value 0.42f
    summon interaction ~0.5 ~1.01 ~0.5 {height:0.01f,Tags:["repair_slot","repair_slot.0"]}
# 修理素材
    summon item_display ~0.5 ~1 ~0.8 {Tags:["repair_material"],Rotation:[-90f,90f]}
    execute positioned ~0.5 ~1 ~0.8 run data modify entity @n[tag=repair_material] transformation.scale set value [0.25f,0.25f,0.25f]
    execute positioned ~0.5 ~1 ~0.8 run data modify entity @n[tag=repair_material] transformation.translation set value [0.0f,0.0f,-0.04f]
    summon item_display ~0.5 ~1 ~0.5 {Tags:["repair_material"],Rotation:[-90f,90f]}
    execute positioned ~0.5 ~1 ~0.5 run data modify entity @n[tag=repair_material] transformation.scale set value [0.25f,0.25f,0.25f]
    execute positioned ~0.5 ~1 ~0.5 run data modify entity @n[tag=repair_material] transformation.translation set value [0.0f,0.0f,-0.04f]
    summon item_display ~0.5 ~1 ~0.2 {Tags:["repair_material"],Rotation:[-90f,90f]}
    execute positioned ~0.5 ~1 ~0.2 run data modify entity @n[tag=repair_material] transformation.scale set value [0.25f,0.25f,0.25f]
    execute positioned ~0.5 ~1 ~0.2 run data modify entity @n[tag=repair_material] transformation.translation set value [0.0f,0.0f,-0.04f]
    summon interaction ~0.5 ~1.04 ~0.8 {width:0.3f,height:0.01f,Tags:["repair_slot","repair_slot.1"]}
    summon interaction ~0.5 ~1.04 ~0.5 {width:0.3f,height:0.01f,Tags:["repair_slot","repair_slot.2"]}
    summon interaction ~0.5 ~1.04 ~0.2 {width:0.3f,height:0.01f,Tags:["repair_slot","repair_slot.3"]}

### (item_displayは召喚時にtransformationが適用されない。おのもや)
