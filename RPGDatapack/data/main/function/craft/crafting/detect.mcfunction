# クラフトします
    tag @s add not_give
# データをstorageにまるっと移動
    data modify storage craft: temp.ingredients_slots set value [{Slot:0b,id:"none"},{Slot:1b,id:"none"},{Slot:2b,id:"none"},{Slot:3b,id:"none"},{Slot:4b,id:"none"},{Slot:5b,id:"none"},{Slot:6b,id:"none"},{Slot:7b,id:"none"},{Slot:8b,id:"none"}]
    execute at @s at @n[tag=slot.0] run data modify storage craft: temp.ingredients_slots[{Slot:0b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.1] run data modify storage craft: temp.ingredients_slots[{Slot:1b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.2] run data modify storage craft: temp.ingredients_slots[{Slot:2b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.3] run data modify storage craft: temp.ingredients_slots[{Slot:3b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.4] run data modify storage craft: temp.ingredients_slots[{Slot:4b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.5] run data modify storage craft: temp.ingredients_slots[{Slot:5b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.6] run data modify storage craft: temp.ingredients_slots[{Slot:6b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.7] run data modify storage craft: temp.ingredients_slots[{Slot:7b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.8] run data modify storage craft: temp.ingredients_slots[{Slot:8b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    data modify storage craft: temp.ingredients set value [[{Slot:0b,id:"none"},{Slot:1b,id:"none"},{Slot:2b,id:"none"}],[{Slot:3b,id:"none"},{Slot:4b,id:"none"},{Slot:5b,id:"none"}],[{Slot:6b,id:"none"},{Slot:7b,id:"none"},{Slot:8b,id:"none"}]]
    execute at @s at @n[tag=slot.0] run data modify storage craft: temp.ingredients[0][{Slot:0b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.1] run data modify storage craft: temp.ingredients[0][{Slot:1b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.2] run data modify storage craft: temp.ingredients[0][{Slot:2b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.3] run data modify storage craft: temp.ingredients[1][{Slot:3b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.4] run data modify storage craft: temp.ingredients[1][{Slot:4b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.5] run data modify storage craft: temp.ingredients[1][{Slot:5b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.6] run data modify storage craft: temp.ingredients[2][{Slot:6b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.7] run data modify storage craft: temp.ingredients[2][{Slot:7b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
    execute at @s at @n[tag=slot.8] run data modify storage craft: temp.ingredients[2][{Slot:8b}].id set from entity @n[tag=slot] item.components."minecraft:custom_data".id
# 何も入っていないデータは消す
    data remove storage craft: temp.ingredients_slots[{id:"none"}]
    data remove storage craft: temp.ingredients[0][{id:"none"}]
    data remove storage craft: temp.ingredients[1][{id:"none"}]
    data remove storage craft: temp.ingredients[2][{id:"none"}]
# 配列の長さをストレージに
    execute store result storage craft: temp.length int 1 run data get storage craft: temp.ingredients_slots
# ingredientsと同じ配列をレシピに持つアイテムがあるならそれをクラフト
    function main:craft/crafting/check_recipe with storage craft: temp
# 耐久のあるアイテムは傑作を抽選(仮で50%)
    execute if items block 0 -59 0 container.0 *[max_damage] run function main:craft/crafting/masterpiece/roll
# アイテム召喚
    execute if score #success buffer matches 1 at @n[tag=slot.4,distance=..5] run function main:craft/crafting/common
# 演出
    execute if score #success buffer matches 1 run playsound ogg:block.smithing_table.smithing_table block @s ~ ~ ~ 1 1
    execute if score #success buffer matches 1 run playsound block.copper.fall block @s ~ ~ ~ 1 1.25
    execute if score #success buffer matches 1 run playsound block.tuff.break block @s ~ ~ ~ 1 1.5
# リセット
    scoreboard players reset #success buffer
    scoreboard players reset #length buffer
    tag @s remove not_give
    data remove storage craft: temp
    advancement revoke @s only main:craft/crafting/trigger
