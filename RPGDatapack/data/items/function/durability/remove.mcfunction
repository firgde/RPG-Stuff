# シュル箱にアイテムを移してデータ編集
    item replace block 0 -59 0 container.0 from entity @s weapon.mainhand
# custom_dataの耐久値減算
    execute store result score #durability buffer run data get entity @s SelectedItem.components."minecraft:custom_data".Durability
    execute store result block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".Durability int 1 run scoreboard players remove #durability buffer 1
# 0以下なら壊す
    execute if score #durability buffer matches ..0 run function items:durability/break
# 差をminecraft:damageに代入
    execute store result score #max_durability buffer run data get entity @s SelectedItem.components."minecraft:max_damage"
    execute if items entity @s weapon.mainhand bow run scoreboard players set #max_durability buffer 384
    execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[max_damage=100] run scoreboard players set #max_durability buffer 100
    execute store result block 0 -59 0 Items[{Slot:0b}].components."minecraft:damage" int 1 run scoreboard players operation #max_durability buffer -= #durability buffer
    #UI表記も更新
    data modify storage item: Item set from block 0 -59 0 Items[{Slot:0b}]
    execute positioned 0 -59 0 run function items:get_data
    execute if items entity @s weapon.mainhand bow[max_damage=384] run data modify storage item: Item.components."minecraft:max_damage" set value 384
    execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[max_damage=100] run data modify storage item: Item.components."minecraft:max_damage" set value 100
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if score #enchantcount buffer matches 1.. positioned 0 -59 0 run function items:set_data/rec
    execute if data storage item: Item.components."minecraft:custom_data"{weaponType:2} run item modify block 0 -59 0 container.0 items:lore/magic
    item modify block 0 -59 0 container.0 items:lore/info
    item replace entity @s weapon.mainhand from block 0 -59 0 container.0
# リセット
    data remove storage item: data
    data remove storage item: Item
    data modify storage item: Item.count set value 1b
    scoreboard players reset #durability buffer
    scoreboard players reset #max_durability
    item replace block 0 -59 0 container.0 with air
