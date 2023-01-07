#ストレージからスコアに代入
    execute store result score @s[tag=!boss] hp run data get storage mob: Data.status.hp
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
#ID指定
    scoreboard players add $ID buffer 1
    scoreboard players operation $ID buffer %= $1024 const
    scoreboard players operation $IDbuffer buffer = $ID buffer
#タグ
    execute if score $IDbuffer buffer matches 512.. run tag @s add 9.1
    execute unless score $IDbuffer buffer matches 512.. run tag @s add 9.0
    execute if score $IDbuffer buffer matches 512.. run scoreboard players remove $IDbuffer buffer 512
    execute if score $IDbuffer buffer matches 256.. run tag @s add 8.1
    execute unless score $IDbuffer buffer matches 256.. run tag @s add 8.0
    execute if score $IDbuffer buffer matches 256.. run scoreboard players remove $IDbuffer buffer 256
    execute if score $IDbuffer buffer matches 128.. run tag @s add 7.1
    execute unless score $IDbuffer buffer matches 128.. run tag @s add 7.0
    execute if score $IDbuffer buffer matches 128.. run scoreboard players remove $IDbuffer buffer 128
    execute if score $IDbuffer buffer matches 64.. run tag @s add 6.1
    execute unless score $IDbuffer buffer matches 64.. run tag @s add 6.0
    execute if score $IDbuffer buffer matches 64.. run scoreboard players remove $IDbuffer buffer 64
    execute if score $IDbuffer buffer matches 32.. run tag @s add 5.1
    execute unless score $IDbuffer buffer matches 32.. run tag @s add 5.0
    execute if score $IDbuffer buffer matches 32.. run scoreboard players remove $IDbuffer buffer 32
    execute if score $IDbuffer buffer matches 16.. run tag @s add 4.1
    execute unless score $IDbuffer buffer matches 16.. run tag @s add 4.0
    execute if score $IDbuffer buffer matches 16.. run scoreboard players remove $IDbuffer buffer 16
    execute if score $IDbuffer buffer matches 8.. run tag @s add 3.1
    execute unless score $IDbuffer buffer matches 8.. run tag @s add 3.0
    execute if score $IDbuffer buffer matches 8.. run scoreboard players remove $IDbuffer buffer 8
    execute if score $IDbuffer buffer matches 4.. run tag @s add 2.1
    execute unless score $IDbuffer buffer matches 4.. run tag @s add 2.0
    execute if score $IDbuffer buffer matches 4.. run scoreboard players remove $IDbuffer buffer 4
    execute if score $IDbuffer buffer matches 2.. run tag @s add 1.1
    execute unless score $IDbuffer buffer matches 2.. run tag @s add 1.0
    execute if score $IDbuffer buffer matches 2.. run scoreboard players remove $IDbuffer buffer 2
    execute if score $IDbuffer buffer matches 1.. run tag @s add 0.1
    execute unless score $IDbuffer buffer matches 1.. run tag @s add 0.0
    execute if score $IDbuffer buffer matches 1.. run scoreboard players remove $IDbuffer buffer 1
#attributeに関与するもの
    execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base float 0.01 run data get storage mob: Data.status.baseSpd
#演出
    execute at @s run particle poof ~ ~ ~ 0.2 0.5 0.2 0.01 15
    #ボス限定
    execute if entity @s[tag=boss] run function mobs:summon/boss/load_bossbar
#リセット
    scoreboard players reset $IDbuffer buffer
    scoreboard players reset $ID buffer
    data remove storage mob: Data
    tag @s[tag=!boss] remove spawn
