## スポナーのtick処理
    execute at @p as @e[tag=spawner,type=item_display,distance=..100] at @s run function main:explore/world/spawner/tick
## チェストのtick処理
    execute at @p as @e[tag=explore.chest,tag=!explore.chest.opened,type=marker,distance=..10] at @s run function main:explore/world/chest/tick
