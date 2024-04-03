# 本体
    execute at @s run summon zombie ~ ~ ~ {Team:"hostile",PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,active_effects:[{id:"minecraft:resistance",amplifier:25b,duration:-1,show_particles:0b}],Tags:["spawn"]}
    data modify storage mob: Data.status.hp set value 2147483647
# 共通
    execute as @e[sort=nearest,limit=1,team=hostile,tag=spawn] run function mobs:set_data
