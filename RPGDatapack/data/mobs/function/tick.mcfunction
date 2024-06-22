# Mobスポナーのチェック
    # execute at @p as @e[tag=spawner,type=!item,distance=..15] at @s run function mobs:summon/spawner/tick
# 自然スポーンするMob
    #execute as @p at @s if biome # main:field if score @s spawnTimer matches 1.. run function mobs:summon/tick
# HurtTime減算
    scoreboard players remove @e[team=hostile,scores={hurt_time=1..},distance=..50] hurt_time 1
# AIを持ったMobの挙動
    execute as @e[tag=HasAI,distance=..50] at @s if entity @p[distance=..50,gamemode=!creative,tag=!in_dialogue] run function #asset:mob/ai
# 落下ダメージ処理
    execute at @p as @e[distance=..50,type=!#main:non_mob] unless data entity @s {FallDistance:0.0f} store result score @s fall_distance run data get entity @s FallDistance
    execute at @p as @e[distance=..50,type=!#main:non_mob] unless entity @s[gamemode=creative] if data entity @s {OnGround:1b} if score @s fall_distance matches 3.. run function main:combat/damage/natural/fall
