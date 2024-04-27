# クラフトします
    tag @s add not_give
# データをstorageにまるっと移動
    data modify storage craft: data.ingredients set value [{Slot:0b,id:"none"},{Slot:1b,id:"none"},{Slot:2b,id:"none"},{Slot:3b,id:"none"},{Slot:4b,id:"none"},{Slot:5b,id:"none"},{Slot:6b,id:"none"},{Slot:7b,id:"none"},{Slot:8b,id:"none"}]
    execute at @s at @e[tag=slot.0,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:0b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.1,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:1b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.2,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:2b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.3,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:3b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.4,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:4b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.5,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:5b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.6,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:6b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.7,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:7b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
    execute at @s at @e[tag=slot.8,sort=nearest,limit=1] run data modify storage craft: data.ingredients[{Slot:8b}].id set from entity @e[limit=1,tag=slot,sort=nearest] item.components."minecraft:custom_data".id
# 何も入っていないデータは消す
    data remove storage craft: data.ingredients[{id:"none"}]
# 配列の長さをスコアに
    execute store result score #length buffer run data get storage craft: data.ingredients
# レシピ特定
    execute store result score #success buffer run function #asset:craft/recipes/crafting
# アイテム召喚
    execute if score #success buffer matches 1 at @e[tag=slot.4,distance=..5,limit=1,sort=nearest] run function main:craft/crafting/common
# 演出
    execute if score #success buffer matches 1 run playsound ogg:block.smithing_table.smithing_table block @s ~ ~ ~ 1 1
    execute if score #success buffer matches 1 run playsound block.copper.fall block @s ~ ~ ~ 1 1.25
    execute if score #success buffer matches 1 run playsound block.tuff.break block @s ~ ~ ~ 1 1.5
# リセット
    scoreboard players reset #success buffer
    scoreboard players reset #length buffer
    tag @s remove not_give
    data remove storage craft: data
    advancement revoke @s only main:craft/crafting/trigger
