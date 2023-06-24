# 近くに敵がいるならダメージ&属性を設定
    execute at @s if entity @e[team=hostile,distance=..5] run function main:combat/attack/ranged/arrow/approach
# パーティクル
    execute at @s if score @s element matches 1 run particle dust 1 0.686 0.431 1 ~ ~ ~ 0.1 0.1 0.1 0 10
    execute at @s if score @s element matches 2 run particle dust 0.431 0.933 1 1 ~ ~ ~ 0.1 0.1 0.1 0 10
    execute at @s if score @s element matches 3 run particle dust 0.525 1 0.431 1 ~ ~ ~ 0.1 0.1 0.1 0 10
    execute at @s if score @s element matches 4 run particle dust 0.992 1 0.431 1 ~ ~ ~ 0.1 0.1 0.1 0 10
