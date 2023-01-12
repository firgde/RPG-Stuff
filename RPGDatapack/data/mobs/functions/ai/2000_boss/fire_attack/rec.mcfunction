#進む
    tp @s ^ ^ ^0.1
#演出
    particle campfire_cosy_smoke ~ ~ ~ 0.01 0.01 0.01 0 1
#プレイヤー探索
    tag @p[dx=0] add hurt
    execute if entity @p[tag=hurt] run scoreboard players set $damagecolor buffer 2
    execute as @p[tag=hurt] run scoreboard players set @s damage 25
    execute as @p[tag=hurt] run function main:combat/damage/deal
    execute as @p[dx=0] run function status:hp/calc_ratio
    execute as @p[dx=0] run function status:hp/update
#離れたor当たったならkill
    execute if entity @p[dx=0] run kill @s
    execute unless entity @e[tag=boss,distance=..10] run kill @s
    #ボスが近くにいるなら再起
    execute if score @e[tag=boss,distance=..10,limit=1] mob_id matches 2000 unless entity @p[dx=0] at @s rotated as @e[tag=boss,tag=this] run function mobs:ai/2000_boss/fire_attack/rec
