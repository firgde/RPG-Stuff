#時間の減算
    scoreboard players remove @s debuffTimer 1
    #もしタイマー<=0なら、デバフ除去
    execute if score @s debuffTimer matches ..0 run tag @s remove debuff.thunder
    execute if score @s debuffTimer matches ..0 run scoreboard players operation @s spd -= @s spd_buff
    execute if score @s debuffTimer matches ..0 store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.01 run scoreboard players get @s spd
    execute if entity @s[type=player] run function status:_general/get/update
