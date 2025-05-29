# 壊す
    item modify entity @s weapon.mainhand [{function:":set_custom_data",tag:{broken:1}},{function:":set_attributes",modifiers:[{attribute:"attack_damage",id:"broken_weapon",amount:-1,operation:"add_multiplied_total",slot:"mainhand"},{attribute:"block_break_speed",id:"broken_tool",amount:-1,operation:"add_multiplied_total",slot:"mainhand"}],replace:0b}]
# 音
    execute at @s run playsound entity.item.break master @s ~ ~ ~ 1 1
# パーティクル
    data modify storage temp: custom_model_data set from entity @s SelectedItem.components."minecraft:custom_model_data".floats[0]
    execute at @s run function items:durability/particle with storage temp:
# リセット
    data remove storage temp: custom_model_data
