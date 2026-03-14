# 0 0 0を基準にして+0.05の位置にvectorを召喚
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.05 {Tags:["vector"]}
# motion:にvectorのPosを保存
    data modify storage motion: data.motion set from entity @n[tag=vector] Pos
# XYZにmotion:から100倍して取得
    execute store result score #x buffer run data get storage motion: data.motion[0] 10000
    execute store result score #y buffer run data get storage motion: data.motion[1] 10000
    execute store result score #z buffer run data get storage motion: data.motion[2] 10000
# それぞれにvelocityかける
    scoreboard players operation #x buffer *= #velocity_x buffer
    scoreboard players operation #y buffer *= #velocity_y buffer
    scoreboard players operation #z buffer *= #velocity_z buffer
# motion:にそれぞれを戻す
    execute store result storage motion: data.motion[0] double -0.0001 run scoreboard players get #x buffer
    execute store result storage motion: data.motion[1] double -0.0001 run scoreboard players get #y buffer
    execute store result storage motion: data.motion[2] double -0.0001 run scoreboard players get #z buffer
# アイテムのMotionにmotion:をそのままセット
    data modify entity @s Motion set from storage motion: data.motion
# リセット
    scoreboard players reset #velocity_x buffer
    scoreboard players reset #velocity_y buffer
    scoreboard players reset #velocity_z buffer
    scoreboard players reset #x buffer
    scoreboard players reset #y buffer
    scoreboard players reset #z buffer
    data remove storage motion: data.motion
    kill @e[tag=vector]
