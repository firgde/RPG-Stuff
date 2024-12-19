# potionCount < 3の場合は手に持っている空瓶を置く
    execute if score #item_count buffer matches 0..2 if data entity @s SelectedItem.components{"minecraft:custom_data":{id:7000}} run function main:craft/brewing/place/potion
# 3 =< potionCount =< 4の場合は素材を置く
    execute if score #item_count buffer matches 3..4 if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingMaterial:1b}} if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingPowder:0b}} unless data block ~ ~ ~ Items[{Slot:3b}] run function main:craft/brewing/place/ingredient
    execute if score #item_count buffer matches 3..4 if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingMaterial:1b}} if data entity @s SelectedItem.components{"minecraft:custom_data":{brewingPowder:1b}} unless data block ~ ~ ~ Items[{Slot:4b}] run function main:craft/brewing/place/ingredient
