###仮!!バランスや楽しさを考えない!!
    summon zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,ActiveEffects:[{Id:11,Amplifier:25b,Duration:20000000,ShowParticles:0b}],Team:"hostile",Tags:["HasAI","boss","spawn"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
    data modify storage mob: Data.status.baseAtk set value 23
    data modify storage mob: Data.status.baseDef set value 37
    data modify storage mob: Data.status.baseSpd set value 30
    data modify storage mob: Data.status.hp set value 1700
    data modify storage mob: Data.loot.xp set value 0
    data modify storage mob: Data.loot.DeathLootTable set value ""
    data modify storage mob: Data.id set value 2000
    data modify storage mob: Data.name set value "-BOSS-"
#ボスの処理
    function mobs:summon/boss/bossbar
#共通
    execute as @e[sort=nearest,limit=1,team=hostile,tag=spawn] run function mobs:set_data
