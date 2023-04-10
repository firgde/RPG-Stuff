#ストレージからスコアに代入
    execute store result score @s[tag=!boss] hp run data get storage mob: Data.status.hp
    execute store result score @s max_hp run data get storage mob: Data.status.hp
    execute store result score @s atk run data get storage mob: Data.status.baseAtk
    execute store result score @s mag run data get storage mob: Data.status.baseMag
    execute store result score @s dex run data get storage mob: Data.status.baseDex
    execute store result score @s def run data get storage mob: Data.status.baseDef
    execute store result score @s spd run data get storage mob: Data.status.baseSpd
    execute store result score @s add_pt run data get storage mob: Data.loot.xp
#何のMob?
    execute store result score @s mob_id run data get storage mob: Data.id
#loot_tableを参照
    data modify entity @s DeathLootTable set from storage mob: Data.loot.DeathLootTable
#名前を参照
    data modify entity @s ArmorItems[3].tag.display.Name set from storage mob: Data.Name
    data modify entity @s CustomNameVisible set value 0b
#attributeに関与するもの
    execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.01 run data get storage mob: Data.status.baseSpd
#演出
    execute at @s run particle poof ~ ~ ~ 0.2 0.5 0.2 0.01 15
    #ボス限定
    execute if entity @s[tag=boss] run function mobs:summon/boss/load_bossbar
#リセット
    scoreboard players reset $IDbuffer buffer
    data remove storage mob: Data
    tag @s[tag=!boss] remove spawn
