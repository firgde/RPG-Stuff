#本体
    execute at @s run summon husk ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,ActiveEffects:[{Id:11,Amplifier:25b,Duration:20000000,ShowParticles:0b}],Team:"hostile",Tags:["spawn"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
    data modify storage mob: Data.status.baseAtk set value 10
    data modify storage mob: Data.status.baseDef set value 0
    data modify storage mob: Data.status.baseSpd set value 35
    data modify storage mob: Data.status.hp set value 150
    data modify storage mob: Data.loot.xp set value 25
    data modify storage mob: Data.loot.DeathLootTable set value "mobs:drops/dummy_husk"
#共通
    execute as @e[sort=nearest,limit=1,team=hostile,tag=spawn] run function mobs:set_data
