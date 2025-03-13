# アイテムが一致しているなら加算
    execute if items entity @p weapon.mainhand * store result storage craft:buffer data.id int 1 run data get entity @p SelectedItem.components."minecraft:custom_data".id
    execute store result storage craft:buffer data.id_1 int 1 run data get entity @n[tag=slot,type=item_display] item.components."minecraft:custom_data".id
    execute if items entity @n[tag=slot,type=item_display] contents * store success score #success buffer run data modify storage craft:buffer data.id set from storage craft:buffer data.id_1
    execute unless items entity @n[tag=slot,type=item_display] contents * run scoreboard players set #success buffer 1
# success == 0 → 一致
    execute if score #success buffer matches 0 run function main:craft/crafting/slot/add
# success == 1 → 相違
    execute if score #success buffer matches 1 run function main:craft/crafting/slot/replace
# リセット
    scoreboard players reset #success buffer
    scoreboard players reset #max_stack_size buffer
    data remove storage craft:buffer data
