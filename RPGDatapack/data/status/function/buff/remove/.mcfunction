# 他に紐づいたaecがいないならoriginのon_buffタグ除去
    execute as @e[type=area_effect_cloud,tag=buff] store success score @s hasOrigin on origin if entity @s[tag=context.origin]
    execute store result score #aec buffer if entity @e[type=area_effect_cloud,tag=buff,scores={hasOrigin=1}]
    execute if score #aec buffer matches 1 on origin run tag @s remove on_buff
# 消す
    tag @s add buff.expired
# リセット
    scoreboard players reset #aec buffer
    scoreboard players reset @e[scores={hasOrigin=1..},tag=buff,type=area_effect_cloud] hasOrigin
