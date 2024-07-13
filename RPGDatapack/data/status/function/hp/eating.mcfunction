# 食べている手からストレージにデータを移す
    execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"custom_data":"{consumable:1b}"}}}}} run data modify storage player: eating.id set from entity @s SelectedItem.components."minecraft:custom_data".id
    execute if predicate {"condition":"all_of","terms":[{"condition":"inverted","term":{"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"custom_data":"{consumable:1b}"}}}}}},{"condition":"entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"predicates":{"custom_data":"{consumable:1b}"}}}}}]} run data modify storage player: eating.id set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".id
# リセット
    advancement revoke @s only status:eating
