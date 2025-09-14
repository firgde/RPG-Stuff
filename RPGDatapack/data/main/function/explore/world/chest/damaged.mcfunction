# ストレージから耐久値持ってきてminecraft:damage分減算
    data modify block 0 -59 0 Items[{Slot:0b}].components."minecraft:damage" set from storage temp: loot[0].components."minecraft:damage"
    execute store result score #damage buffer run data get storage temp: loot[0].components."minecraft:damage"
    execute store result score #durability buffer run data get block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".Durability
    execute store result block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".Durability int 1 run scoreboard players operation #durability buffer -= #damage buffer
# 表示更新
    data modify storage item: Item set from block 0 -59 0 Items[{Slot:0b}]
    execute positioned 0 -59 0 run function items:get_data
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if score #enchantcount buffer matches 1.. positioned 0 -59 0 run function items:set_data/rec
    execute if data storage item: Item.components."minecraft:custom_data"{weaponType:2} run item modify block 0 -59 0 container.0 items:lore/magic
    item modify block 0 -59 0 container.0 items:lore/elements
    item modify block 0 -59 0 container.0 items:lore/info
