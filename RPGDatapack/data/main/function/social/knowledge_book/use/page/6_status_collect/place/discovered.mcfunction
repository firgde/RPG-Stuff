# ストレージからデータ取得
    item replace block 0 -59 0 container.0 with stick
    $data modify storage item: Item set from storage book: data.collect.item[$(index)]
    data modify block 0 -59 0 Items[{Slot:0b}].components set from storage item: Item.components
    execute positioned 0 -59 0 run function items:get_data
# item_modifierを適用
    $item modify entity @s container.$(slot) [{"function":"set_name","entity":"this","target":"item_name","name":{"nbt":"data.collect.item[$(index)].components.\"minecraft:item_name\"","storage":"book:","interpret":true}},{"function":"set_custom_model_data","floats":{values:[{"type":"storage","storage":"book:","path":"data.collect.item[$(index)].components.\"minecraft:custom_model_data\".floats[0]"}],"mode": append}}]
    $item modify entity @s container.$(slot) items:lore/text
    $item modify entity @s container.$(slot) items:lore/status
    $execute if data storage item: Item.components."minecraft:custom_data"{weaponType:2} run item modify entity @s container.$(slot) items:lore/magic
    $execute if data storage item: Item.components."minecraft:custom_data"{food:1b} run item modify entity @s container.$(slot) items:lore/heal
    $item modify entity @s container.$(slot) items:lore/elements
    $item modify entity @s container.$(slot) items:lore/info
    $execute if predicate {"condition":"value_check","value":{"type":"storage","storage":"item:","path":"Item.components.\"minecraft:custom_data\".ItemType"},"range":7} run item replace entity @s container.$(slot) from block 0 -59 0 container.0
    $data modify entity @s Items[$(slot)].components."minecraft:custom_data".ui set value 1b
    $data modify entity @s Items[$(slot)].components."minecraft:custom_data".menu set value "knowledge_book"
