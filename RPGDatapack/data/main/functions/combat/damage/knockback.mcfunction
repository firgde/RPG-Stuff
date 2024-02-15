# 0 0 0を基準にして+0.1の位置にkb_vectorをtp
    execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^-0.05 {Tags:["kb_vector"]}
# mov:にkb_vectorのPosを保存 ( mov: {mov:[X,Y,Z]} )
    data modify storage mov: mov set from entity @e[tag=kb_vector,limit=1] Pos
    data modify storage mov: mov[1] set value -0.032
# XYZにmov:から100倍して取得
    execute store result score #xpower buffer run data get storage mov: mov[0] 10000
    execute store result score #ypower buffer run data get storage mov: mov[1] 10000
    execute store result score #zpower buffer run data get storage mov: mov[2] 10000
# それぞれにkbpower掛ける
    scoreboard players operation #xpower buffer *= #kbPowerX buffer
    scoreboard players operation #ypower buffer *= #kbPowerY buffer
    scoreboard players operation #zpower buffer *= #kbPowerZ buffer
# mov:にそれぞれを戻す
    execute store result storage mov: mov[0] double -0.0001 run scoreboard players get #xpower buffer
    execute store result storage mov: mov[1] double -0.0001 run scoreboard players get #ypower buffer
    execute store result storage mov: mov[2] double -0.0001 run scoreboard players get #zpower buffer
# 対象のEntityにmov:をそのままセット
    data modify entity @s Motion set from storage mov: mov
# リセット
    scoreboard players reset #kbPowerX buffer
    scoreboard players reset #kbPowerY buffer
    scoreboard players reset #kbPowerZ buffer
    scoreboard players reset #xpower buffer
    scoreboard players reset #ypower buffer
    scoreboard players reset #zpower buffer
    data remove storage mov: mov
    kill @e[tag=kb_vector]
