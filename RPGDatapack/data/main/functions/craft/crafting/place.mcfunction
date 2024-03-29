# 本体
    setblock ~ ~ ~ crafting_table
    #干渉防止のinteraction
    summon interaction ~ ~ ~ {width:1.01f,height:1.01f}
# スロット×9
    summon interaction ~-0.2 ~1 ~0.2 {width:0.2f,height:0.01f,Tags:["slot.0","crafting"]}
    summon interaction ~ ~1 ~0.2 {width:0.2f,height:0.01f,Tags:["slot.1","crafting"]}
    summon interaction ~0.2 ~1 ~0.2 {width:0.2f,height:0.01f,Tags:["slot.2","crafting"]}
    summon interaction ~-0.2 ~1 ~ {width:0.2f,height:0.01f,Tags:["slot.3","crafting"]}
    summon interaction ~ ~1 ~ {width:0.2f,height:0.01f,Tags:["slot.4","crafting"]}
    summon interaction ~0.2 ~1 ~ {width:0.2f,height:0.01f,Tags:["slot.5","crafting"]}
    summon interaction ~-0.2 ~1 ~-0.2 {width:0.2f,height:0.01f,Tags:["slot.6","crafting"]}
    summon interaction ~ ~1 ~-0.2 {width:0.2f,height:0.01f,Tags:["slot.7","crafting"]}
    summon interaction ~0.2 ~1 ~-0.2 {width:0.2f,height:0.01f,Tags:["slot.8","crafting"]}
# スロットのitem_display
    summon item_display ~-0.2 ~1 ~0.2 {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~ ~1 ~0.2 {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~0.2 ~1 ~0.2 {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~-0.2 ~1 ~ {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~ ~1 ~ {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~0.2 ~1 ~ {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~-0.2 ~1 ~-0.2 {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~ ~1 ~-0.2 {Tags:["slot"],Rotation:[90.0f,90.0f]}
    summon item_display ~0.2 ~1 ~-0.2 {Tags:["slot"],Rotation:[90.0f,90.0f]}
    execute as @e[tag=slot,distance=..2,limit=9] run data modify entity @s transformation.scale set value [0.2f,0.2f,0.5f]
