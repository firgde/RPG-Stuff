#演出
    execute at @s run particle snowflake ~ ~0.75 ~ 0.0075 0.0075 0.0075 0.01 15 normal
#時間の減算
    scoreboard players remove @s debuffTimer 1
    #もしタイマー<=0なら、デバフ除去
    execute if score @s debuffTimer matches ..0 run tag @s remove debuff.ice
    execute if score @s debuffTimer matches ..0 run scoreboard players operation @s atk -= @s atk_buff
    execute if score @s debuffTimer matches ..0 store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base float 0.666666 run scoreboard players get @s atk
