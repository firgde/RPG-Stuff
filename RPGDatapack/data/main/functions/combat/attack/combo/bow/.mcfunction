# 殴られたinteraction特定
    execute store result score $atkTime buffer run time query gametime
    execute at @s[advancements={main:combat/attack/combo/bow={left=true}}] as @e[distance=..5,tag=atk_combo] store result score @s timestamp run data get entity @s attack.timestamp
    execute at @s[advancements={main:combat/attack/combo/bow={right=true}}] as @e[distance=..5,tag=atk_combo] store result score @s timestamp run data get entity @s interaction.timestamp
    execute at @s as @e[tag=atk_combo,distance=..5] if score @s timestamp = $atkTime buffer run tag @s add atk_combo.target
# 弓の連撃に変更
    execute as @e[tag=atk_combo.target,limit=1] unless entity @s[tag=atk_combo.bow] run function main:combat/attack/combo/bow/init
# すでに弓なら時間延長
    execute as @e[tag=atk_combo.target,limit=1] if entity @s[tag=atk_combo.bow] unless score @s combo_count matches 2 run scoreboard players add @s combo_time 5
# 連撃回数減らす
    scoreboard players add @e[tag=atk_combo.target,limit=1] combo_count 1
# 演出
    #1回目
    execute as @e[tag=atk_combo.target,limit=1] if score @s combo_count matches 1 as @p at @s run function main:combat/attack/combo/bow/1
    #2回目
    execute as @e[tag=atk_combo.target,limit=1] if score @s combo_count matches 2 as @p at @s run function main:combat/attack/combo/bow/2
    #2回目なら連撃interaction消す
    execute as @e[tag=atk_combo.target,limit=1] if score @s combo_count matches 2.. run kill @s
# リセット
    scoreboard players reset $atkTime buffer
    execute at @s run scoreboard players reset @e[tag=atk_combo,distance=..5] timestamp
    tag @e[tag=atk_combo.target] remove atk_combo.target
    advancement revoke @s only main:combat/attack/combo/bow
