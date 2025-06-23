# 壊す
    item modify entity @s weapon.mainhand [{function:"set_custom_data",tag:{broken:1}},{function:"set_attributes",replace:false,modifiers:[{attribute:"attack_damage",id:"broken_weapon",amount:-1,operation:"add_multiplied_total",slot:"mainhand"}]}]
# パーティクル
    data modify storage temp: custom_model_data set from entity @s SelectedItem.components."minecraft:custom_model_data".floats[0]
    execute at @s run function items:durability/particle with storage temp:
# ツールは消滅
    execute if items entity @s weapon.mainhand *[custom_data~{tool:1b}] run item replace entity @s weapon.mainhand with air
# 音
    execute at @s run playsound entity.item.break master @s ~ ~ ~ 1 1
# リセット
    data remove storage temp: custom_model_data
