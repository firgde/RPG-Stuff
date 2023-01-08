#本体
    execute at @s run summon zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,ActiveEffects:[{Id:11,Amplifier:25b,Duration:20000000,ShowParticles:0b}],Team:"hostile",Tags:["HasAI","spawn"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],HandItems:[{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1206},Count:1b},{}]}
    data modify storage mob: Data.status.baseMag set value 15
    data modify storage mob: Data.status.baseSpd set value 15
    data modify storage mob: Data.status.hp set value 130
    data modify storage mob: Data.loot.xp set value 0
    data modify storage mob: Data.loot.DeathLootTable set value "mobs:drops/0000_zombie"
    data modify storage mob: Data.id set value 1000
#AITimer
    scoreboard players set @e[sort=nearest,limit=1,team=hostile,tag=spawn] aiTimer 60
#共通
    execute as @e[sort=nearest,limit=1,team=hostile,tag=spawn] run function mobs:set_data
