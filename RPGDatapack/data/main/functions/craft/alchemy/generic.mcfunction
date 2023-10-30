# アイテムの種類
    execute store result score $weaponType buffer run data get entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item.tag.Customnbt.weaponType
# 属性
    execute store result score $element0 buffer run data get entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item.tag.Customnbt.Element.Type
    execute store result score $element1 buffer run data get entity @e[tag=alchemy.item.1,limit=1,sort=nearest] item.tag.Customnbt.Element.Type
    #両方0または両方0でないなら中止
    execute unless predicate main:craft/alchemy/element run return 0
    execute store result score $element buffer run scoreboard players operation $element0 buffer += $element1 buffer
# レア度
    execute store result score $rarity0 buffer run data get entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item.tag.Customnbt.rarity
    execute store result score $rarity1 buffer run data get entity @e[tag=alchemy.item.1,limit=1,sort=nearest] item.tag.Customnbt.rarity
    execute store result score $rarity buffer run scoreboard players operation $rarity0 buffer += $rarity1 buffer
    scoreboard players operation $rarity buffer > $3 const
# IDに結合 (種類、属性、レア度の順番)
    #tellraw @s [{"text": "Type: "},{"score":{"name": "$weaponType","objective": "buffer"}}]
    #tellraw @s [{"text": "Element: "},{"score":{"name": "$element","objective": "buffer"}}]
    #tellraw @s [{"text": "Rarity: "},{"score":{"name": "$rarity","objective": "buffer"}}]
    scoreboard players operation $weaponType buffer *= $100 const
    scoreboard players operation $element buffer *= $10 const
    scoreboard players operation $weaponType buffer += $element buffer
    scoreboard players operation $weaponType buffer += $rarity buffer
    scoreboard players add $weaponType buffer 1000
    #tellraw @s [{"text": "Result: "},{"score":{"name": "$weaponType","objective": "buffer"}}]
# 武器特定
    execute if score $weaponType buffer matches 1021 run function asset:item/1021_ice_sword/give
