# 0 0 0を基準にして+0.05の位置に_vectorを召喚
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.05 {Tags:["vector"]}
# mov:に_vectorのPosを保存
    data modify storage mov: mov set from entity @n[tag=vector] Pos
# XYZにmov:から100倍して取得
    execute store result score #xpower buffer run data get storage mov: mov[0] 10000
    execute store result score #ypower buffer run data get storage mov: mov[1] 10000
    execute store result score #zpower buffer run data get storage mov: mov[2] 10000
# それぞれにpower掛ける
    scoreboard players operation #xpower buffer *= #powerx buffer
    scoreboard players operation #ypower buffer *= #powery buffer
    scoreboard players operation #zpower buffer *= #powerz buffer
# mov:にそれぞれを戻す
    execute store result storage mov: mov[0] double -0.0001 run scoreboard players get #xpower buffer
    execute store result storage mov: mov[1] double -0.0001 run scoreboard players get #ypower buffer
    execute store result storage mov: mov[2] double -0.0001 run scoreboard players get #zpower buffer
# 対象のEntityにmov:をそのままセット
    data modify entity @s Motion set from storage mov: mov
# リセット
    scoreboard players reset #powerx buffer
    scoreboard players reset #powery buffer
    scoreboard players reset #powerz buffer
    scoreboard players reset #xpower buffer
    scoreboard players reset #ypower buffer
    scoreboard players reset #zpower buffer
    data remove storage mov: mov
    kill @e[tag=vector]
