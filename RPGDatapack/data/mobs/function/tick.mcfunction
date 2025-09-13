# HurtTime減算
    scoreboard players remove @e[team=hostile,scores={hurt_time=1..},distance=..50] hurt_time 1
# AIを持ったMobの挙動
    execute as @e[tag=HasAI,distance=..50] at @s if entity @a[limit=1,distance=..50,gamemode=!creative,tag=!in_dialogue] run function #asset:mob/ai
# 落下ダメージ処理
    execute at @a[limit=1] as @e[distance=..50,type=!#main:non_mob] unless data entity @s {fall_distance:0.0d} store result score @s fall_distance run data get entity @s fall_distance
    execute at @a[limit=1] as @e[distance=..50,type=!#main:non_mob] unless entity @s[gamemode=creative] if data entity @s {OnGround:1b} if score @s fall_distance matches 3.. run function main:combat/damage/natural/fall
