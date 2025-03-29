# 検知ｨ！
    scoreboard players set @s usedRod 0
# クールダウンチェック
    execute if entity @s[type=player] run function main:combat/attack/magic/check_cooldown
    execute if entity @s[type=!player] run tag @s add verify_cooldown
# MP消費&チェック
    execute store result score #mana_require buffer run data get entity @s SelectedItem.components."minecraft:custom_data".mana_require
    execute unless score @s mana < #mana_require buffer run tag @s add verify_mana
    scoreboard players operation @s[tag=verify_mana,gamemode=!creative,tag=verify_cooldown] mana -= #mana_require buffer
# 魔術の種類、属性など
    data modify storage combat: data.magic append from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] SelectedItem.components."minecraft:custom_data".magicData
    execute if items entity @p weapon.offhand *[custom_data~{offhandOnly:1b}] run data modify storage combat: data.magic append from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] equipment.offhand.components."minecraft:custom_data".magicData
    execute unless data entity @s equipment.offhand.components."minecraft:custom_data".magicData run data modify storage combat: data.magic append value {}
    data modify storage combat: data.magic[0].Element set from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] SelectedItem.components."minecraft:custom_data".Element
    execute if items entity @p weapon.offhand *[custom_data~{offhandOnly:1b}] run data modify storage combat: data.magic[1].Element set from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] equipment.offhand.components."minecraft:custom_data".Element
# ｻﾓｫｫｫｫﾝ
    execute if entity @s[tag=verify_cooldown,tag=verify_mana] run function main:combat/attack/magic/summon/
# 残念空振りまた明日
    execute if entity @s[tag=!verify_cooldown] run tellraw @s {"translate":"combat.text.magic.no_cooldown","color": "red"}
    execute if entity @s[tag=!verify_mana] run tellraw @s {"translate":"combat.text.magic.no_mana","color": "red"}
# リセット
    scoreboard players reset #timeused buffer
    scoreboard players reset #gametime buffer
    scoreboard players reset #mana_require buffer
    scoreboard players reset #cooldown buffer
    scoreboard players reset #main_element buffer
    scoreboard players reset #side_element buffer
    tag @s remove verify_cooldown
    tag @s remove verify_mana
    data remove storage combat: data.magic
