#本体
    execute at @s run summon zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,ActiveEffects:[{Id:11,Amplifier:25b,Duration:20000000,ShowParticles:0b}],Team:"hostile",Tags:["spawn"]}
    data modify storage mob: Data.status.baseAtk set value 15
    data modify storage mob: Data.status.baseDef set value 10
    data modify storage mob: Data.status.baseSpd set value 20
    data modify storage mob: Data.status.hp set value 100
    data modify storage mob: Data.loot.xp set value 0
#共通
    execute as @e[sort=nearest,limit=1,team=hostile,tag=spawn] run function mobs:set_data