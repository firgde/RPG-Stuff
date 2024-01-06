# クリックされたinteraction特定
    execute store result score $atkTime buffer run time query gametime
    execute at @s[advancements={main:combat/attack/combo/wand={left=true}}] as @e[distance=..5,tag=atk_combo] store result score @s timestamp run data get entity @s attack.timestamp
    execute at @s[advancements={main:combat/attack/combo/wand={right=true}}] as @e[distance=..5,tag=atk_combo] store result score @s timestamp run data get entity @s interaction.timestamp
    execute at @s as @e[tag=atk_combo,distance=..5] if score @s timestamp = $atkTime buffer run tag @s add atk_combo.target
# 杖の連撃に変更
    execute as @e[tag=atk_combo.target,limit=1] unless entity @s[tag=atk_combo.wand] run function main:combat/attack/combo/wand/init
# 追加でダメージ与える
    execute as @e[tag=atk_combo.target,limit=1] on vehicle run function main:combat/damage/combo
# 連撃回数減らす
    scoreboard players add @e[tag=atk_combo.target,limit=1] combo_count 1
# 演出
    #1回目
    execute as @e[tag=atk_combo.target,limit=1] if score @s combo_count matches 1.. on vehicle at @s run function main:combat/attack/combo/wand/1
# リセット
    scoreboard players reset $atkTime buffer
    execute at @s run scoreboard players reset @e[tag=atk_combo,distance=..5] timestamp
    tag @e[tag=atk_combo.target] remove atk_combo.target
    advancement revoke @s only main:combat/attack/combo/wand
