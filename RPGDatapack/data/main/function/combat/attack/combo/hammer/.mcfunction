# 殴られたinteraction特定
    execute store result score #atkTime buffer run time query gametime
    execute at @s as @e[distance=..5,tag=atk_combo] store result score @s timestamp run data get entity @s attack.timestamp
    execute at @s as @e[tag=atk_combo,distance=..5] if score @s timestamp = #atkTime buffer run tag @s add atk_combo.target
# ハンマーの連撃に変更
    execute as @n[tag=atk_combo.target] unless entity @s[tag=atk_combo.hammer] run function main:combat/attack/combo/hammer/init
# 追加でダメージ与える
    execute as @n[tag=atk_combo.target] on vehicle run function main:combat/damage/combo
# 連撃回数減らす
    scoreboard players add @n[tag=atk_combo.target] combo_count 1
# 演出
    #1回目
    execute as @n[tag=atk_combo.target] if score @s combo_count matches 1.. on vehicle at @s run function main:combat/attack/combo/hammer/1
# リセット
    scoreboard players reset #atkTime buffer
    execute at @s run scoreboard players reset @e[tag=atk_combo,distance=..5] timestamp
    tag @e[tag=atk_combo.target] remove atk_combo.target
    advancement revoke @s only main:combat/attack/combo/hammer
