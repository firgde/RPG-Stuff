#検知ｨ！
    scoreboard players set @s usedRod 0
#クールダウンチェック
    execute as @s[type=player] run function main:combat/attack/magic/check_cooldown
    execute if entity @s[type=!player] run tag @s add verify_cooldown
#MP消費&チェック
    execute store result score #mprequire buffer run data get entity @s SelectedItem.tag.Customnbt.mpRequire
    execute unless score @s mp < #mprequire buffer run tag @s add verify_mp
    scoreboard players operation @s[tag=verify_mp,gamemode=!creative,tag=verify_cooldown] mp -= #mprequire buffer
#耐久減らす
    execute if entity @s[gamemode=!creative,nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b}}}},tag=verify_cooldown,tag=verify_mp] run function main:combat/durability/remove
#種類
    data modify storage magic: Data set from entity @s[tag=verify_cooldown,tag=verify_mp,type=player] SelectedItem.tag.Customnbt.magicType
    data modify storage magic: Data.offhand set from entity @s[tag=verify_cooldown,tag=verify_mp,type=player] Inventory[{Slot:-106b}].tag.Customnbt.magicType
#ｻﾓｫｫｫｫﾝ
    execute if entity @s[tag=verify_cooldown,tag=verify_mp] run function main:combat/attack/magic/summon
#残念空振りまた明日
    execute if entity @s[tag=!verify_cooldown] run tellraw @s {"translate":"combat.text.magic.no_cooldown","color": "red"}
    execute if entity @s[tag=!verify_mp] run tellraw @s {"translate":"combat.text.magic.no_mp","color": "red"}
#リセット
    tag @s remove verify_cooldown
    tag @s remove verify_mp
    advancement revoke @s only main:combat/attack/magic/trigger
