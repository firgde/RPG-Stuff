# アイテムgive防止タグ
    tag @s add not_give
# 二つのアイテムのID度取得
    execute store result score #id0 buffer run data get entity @e[tag=alchemy.item.0,limit=1,sort=nearest] item.components."minecraft:custom_data".id
    execute store result score #id1 buffer run data get entity @e[tag=alchemy.item.1,limit=1,sort=nearest] item.components."minecraft:custom_data".id
# IDによってアイテム設定
    execute store result score #success buffer run function #asset:craft/recipes/alchemy
# そうでないならアイテムの種類/レア度によってアイテム生成
    execute unless score #success buffer matches 1 run function main:craft/alchemy/generic
# 成功判定
    execute if data block 0 -59 0 Items[{Slot:0b}] run scoreboard players set #success buffer 1
# アイテム本体召喚+飛ばす
    execute if score #success buffer matches 1 run function main:craft/alchemy/summon_item
# リセット
    scoreboard players reset #id0 buffer
    scoreboard players reset #id1 buffer
    scoreboard players reset #rarity buffer
    scoreboard players reset #rarity0 buffer
    scoreboard players reset #rarity1 buffer
    scoreboard players reset #element buffer
    scoreboard players reset #element0 buffer
    scoreboard players reset #element1 buffer
    scoreboard players reset #weaponType buffer
    scoreboard players reset #success buffer
    tag @s remove not_give
    data remove block 0 -59 0 Items[{Slot:0b}]
    advancement revoke @s only main:craft/alchemy/trigger
