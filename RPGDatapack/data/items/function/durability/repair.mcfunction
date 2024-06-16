# シュル箱にアイテムを移してデータ編集
    item replace block 0 -59 0 container.0 from entity @s contents
# custom_dataの耐久値加算
    execute store result score #durability buffer run data get entity @s item.components."minecraft:custom_data".Durability
    execute store result block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".Durability int 1 run scoreboard players operation #durability buffer += #durHeal buffer
# 差をminecraft:damageに代入
    execute store result score #max_durability buffer run data get entity @s item.components."minecraft:max_damage"
    execute store result block 0 -59 0 Items[{Slot:0b}].components."minecraft:damage" int 1 run scoreboard players operation #max_durability buffer -= #durability buffer
    #最大値を越えるならキャップ
    execute if score #max_durability buffer matches ..0 run data modify block 0 -59 0 Items[{Slot:0b}].components."minecraft:damage" set value 0
    execute store result score #max_durability buffer run data get block 0 -59 0 Items[{Slot:0b}].components."minecraft:max_damage"
    execute store result block 0 -59 0 Items[{Slot:0b}].components."minecraft:custom_data".Durability int 1 run scoreboard players operation #durability buffer < #max_durability buffer
    #UI表記も更新
    data modify storage item: Item set from block 0 -59 0 Items[{Slot:0b}]
    execute positioned 0 -59 0 run function items:get_data
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if data storage item: Item.components."minecraft:custom_data"{weaponType:2} run item modify block 0 -59 0 container.0 items:lore/magic
    execute if score #enchantcount buffer matches 1.. run function items:set_data/rec
    item modify block 0 -59 0 container.0 items:lore/info
    item replace entity @s contents from block 0 -59 0 container.0
# 修理素材を消す
    execute if score #slot_1 buffer matches 1 at @e[limit=1,sort=nearest,tag=repair_slot.1] run data remove entity @e[limit=1,sort=nearest,tag=repair_material] item
    execute if score #slot_2 buffer matches 1 at @e[limit=1,sort=nearest,tag=repair_slot.2] run data remove entity @e[limit=1,sort=nearest,tag=repair_material] item
    execute if score #slot_3 buffer matches 1 at @e[limit=1,sort=nearest,tag=repair_slot.3] run data remove entity @e[limit=1,sort=nearest,tag=repair_material] item
# 演出
    playsound block.anvil.use block @p ~ ~ ~ 1 1
# リセット
    data remove storage item: data
    data remove storage item: Item
    data modify storage item: Item.count set value 1b
    scoreboard players reset #Lore buffer
    scoreboard players reset #itemType buffer
    scoreboard players reset #heal_amount_hp buffer
    scoreboard players reset #heal_amount_mana buffer
    scoreboard players reset #element buffer
    scoreboard players reset #atkBonus buffer
    scoreboard players reset #magBonus buffer
    scoreboard players reset #dexBonus buffer
    scoreboard players reset #hpBonus buffer
    scoreboard players reset #intBonus buffer
    scoreboard players reset #defBonus buffer
    scoreboard players reset #spdBonus buffer
    scoreboard players reset #crtBonus buffer
    scoreboard players reset #lukBonus buffer
    scoreboard players reset #accBonus buffer
    scoreboard players reset #rarity buffer
    scoreboard players reset #durability buffer
    scoreboard players reset #maxDurability buffer
    scoreboard players reset #max_durability
    scoreboard players reset #enchantcount buffer
    scoreboard players reset #hasAbility buffer
    item replace block 0 -59 0 container.0 with air
