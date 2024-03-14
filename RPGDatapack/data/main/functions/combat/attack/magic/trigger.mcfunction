# 検知ｨ！
    scoreboard players set @s usedRod 0
# クールダウンチェック
    execute if entity @s[type=player] run function main:combat/attack/magic/check_cooldown
    execute if entity @s[type=!player] run tag @s add verify_cooldown
# MP消費&チェック
    execute store result score #mana_require buffer run data get entity @s SelectedItem.tag.Customnbt.mana_require
    execute unless score @s mana < #mana_require buffer run tag @s add verify_mana
    scoreboard players operation @s[tag=verify_mana,gamemode=!creative,tag=verify_cooldown] mana -= #mana_require buffer
# 魔術の種類、属性など
    data modify storage combat: data.magic append from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] SelectedItem.tag.Customnbt.magicData
    data modify storage combat: data.magic append from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] Inventory[{Slot:-106b}].tag.Customnbt.magicData
    execute unless data entity @s Inventory[{Slot:-106b}].tag.Customnbt.magicData run data modify storage combat: data.magic append value {}
    data modify storage combat: data.magic[0].Element set from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] SelectedItem.tag.Customnbt.Element
    data modify storage combat: data.magic[1].Element set from entity @s[tag=verify_cooldown,tag=verify_mana,type=player] Inventory[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}].tag.Customnbt.Element
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
    scoreboard players reset #mainElement buffer
    scoreboard players reset #sideElement buffer
    tag @s remove verify_cooldown
    tag @s remove verify_mana
    data remove storage combat: data.magic
