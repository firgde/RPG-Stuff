#雷投下(?)
    particle dust 0.969 1.000 0.000 3 ~ ~ ~ 0 5 0 1 100 normal
    particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.1 50
#ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=1] at @s positioned ~ ~0.5 ~ if entity @s[distance=..0.6] run scoreboard players set @s damage 10
    scoreboard players set $damagecolor buffer 4
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=1] at @s positioned ~ ~0.5 ~ if entity @s[distance=..0.6] run function main:combat/damage/deal
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=1] at @s positioned ~ ~0.5 ~ if entity @s[distance=..0.6] run function status:hp/calc_ratio
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,dy=1] at @s positioned ~ ~0.5 ~ if entity @s[distance=..0.6] run function status:hp/update
#Entityはもう要らない
    kill @s
