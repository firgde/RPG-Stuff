# ストレージからスコアに代入
    execute store result score @s[tag=!boss] hp run data get storage mob: Data.status.hp
    execute store result score @s max_hp_base run data get storage mob: Data.status.hp
    execute store result score @s atk_base run data get storage mob: Data.status.baseAtk
    execute store result score @s mag_base run data get storage mob: Data.status.baseMag
    execute store result score @s dex_base run data get storage mob: Data.status.baseDex
    execute store result score @s def_base run data get storage mob: Data.status.baseDef
    execute store result score @s spd_base run data get storage mob: Data.status.baseSpd
    execute store result score @s add_pt run data get storage mob: Data.loot.xp
    execute store result score @s resistance_melee_base run data get storage mob: Data.resistance.melee 100
    execute store result score @s resistance_magic_base run data get storage mob: Data.resistance.magic 100
    execute store result score @s resistance_ranged_base run data get storage mob: Data.resistance.ranged 100
    execute store result score @s resistance_fire_base run data get storage mob: Data.resistance.fire 100
    execute store result score @s resistance_ice_base run data get storage mob: Data.resistance.ice 100
    execute store result score @s resistance_wind_base run data get storage mob: Data.resistance.wind 100
    execute store result score @s resistance_thunder_base run data get storage mob: Data.resistance.thunder 100
# ステータス設定
    function status:update/
# 何のMob?
    execute store result score @s mob_id run data get storage mob: Data.id
# loot_tableを参照
    data modify entity @s DeathLootTable set from storage mob: Data.loot.DeathLootTable
# 名前を参照
    data modify entity @s ArmorItems[3].components."minecraft:item_name" set from storage mob: Data.Name
    data modify entity @s CustomNameVisible set value 0b
# attributeに関与するもの
    execute store result entity @s attributes[{id:"minecraft:movement_speed"}].base float 0.01 run data get storage mob: Data.status.baseSpd
# 演出
    execute at @s run particle poof ~ ~ ~ 0.2 0.5 0.2 0.01 15
    #ボス限定
    execute if entity @s[tag=boss] run function mobs:summon/boss/load_bossbar
# リセット
    scoreboard players reset #IDbuffer buffer
    data remove storage mob: Data
    tag @s[tag=!boss] remove spawn
