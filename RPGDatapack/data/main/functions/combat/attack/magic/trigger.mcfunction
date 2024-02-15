# 検知ｨ！
    scoreboard players set @s usedRod 0
# クールダウンチェック
    execute if entity @s[type=player] run function main:combat/attack/magic/check_cooldown
    execute if entity @s[type=!player] run tag @s add verify_cooldown
# MP消費&チェック
    execute store result score #mprequire buffer run data get entity @s SelectedItem.tag.Customnbt.mpRequire
    execute unless score @s mp < #mprequire buffer run tag @s add verify_mp
    scoreboard players operation @s[tag=verify_mp,gamemode=!creative,tag=verify_cooldown] mp -= #mprequire buffer
# 魔術の種類、属性など
    data modify storage combat: data.magic append from entity @s[tag=verify_cooldown,tag=verify_mp,type=player] SelectedItem.tag.Customnbt.magicData
    data modify storage combat: data.magic append from entity @s[tag=verify_cooldown,tag=verify_mp,type=player] Inventory[{Slot:-106b}].tag.Customnbt.magicData
    execute unless data entity @s Inventory[{Slot:-106b}].tag.Customnbt.magicData run data modify storage combat: data.magic append value {}
    data modify storage combat: data.magic[0].Element set from entity @s[tag=verify_cooldown,tag=verify_mp,type=player] SelectedItem.tag.Customnbt.Element
    data modify storage combat: data.magic[1].Element set from entity @s[tag=verify_cooldown,tag=verify_mp,type=player] Inventory[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}].tag.Customnbt.Element
# ｻﾓｫｫｫｫﾝ
    execute if entity @s[tag=verify_cooldown,tag=verify_mp] run function main:combat/attack/magic/summon/
# 残念空振りまた明日
    execute if entity @s[tag=!verify_cooldown] run tellraw @s {"translate":"combat.text.magic.no_cooldown","color": "red"}
    execute if entity @s[tag=!verify_mp] run tellraw @s {"translate":"combat.text.magic.no_mp","color": "red"}
# リセット
    scoreboard players reset #timeused buffer
    scoreboard players reset #gametime buffer
    scoreboard players reset #mprequire buffer
    scoreboard players reset #cooldown buffer
    scoreboard players reset #mainElement buffer
    scoreboard players reset #sideElement buffer
    tag @s remove verify_cooldown
    tag @s remove verify_mp
    data remove storage combat: data.magic
