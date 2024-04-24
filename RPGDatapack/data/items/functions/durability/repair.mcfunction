# durHealをcustom_dataの耐久値に加算
    execute store result score #durability buffer run data get entity @s item.components.custom_data.Durability
    execute store result score #maxDurability buffer run data get entity @s item.components.custom_data.MaxDurability
    scoreboard players operation #durability buffer += #durHeal buffer
    execute store result storage item: Item.components.custom_data.Durability int 1 run scoreboard players operation #durability buffer < #maxDurability buffer
    item modify entity @s contents main:update_durability
# アイテムの耐久ゲージを更新
    scoreboard players operation #durability buffer *= #100 const
    execute store result score #durRatio buffer run scoreboard players operation #durability buffer /= #maxDurability buffer
    scoreboard players set #100 buffer 100
    execute store result storage item: data.Damage int 1 run scoreboard players operation #100 buffer -= #durRatio buffer
# 代入
    data modify storage item: Item set from entity @s item
    item modify entity @s contents main:update_durability_display
    item replace block 0 -59 0 container.0 from entity @s contents
    execute positioned 0 -59 0 run function items:get_data
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if score #enchantcount buffer matches 1.. positioned 0 -59 0 run function items:set_data/rec
    item modify block 0 -59 0 container.0 items:lore/info
    item replace entity @s contents from block 0 -59 0 container.0
# 修理素材を消す
    execute as @e[tag=repair_material,distance=..3] run data remove entity @s item
# 演出
    playsound block.anvil.use block @p ~ ~ ~ 1 1
# リセット
    data remove storage item: data
    data remove storage item: Item
    data modify storage item: Item.Count set value 1b
    data remove block 0 -59 0 Items
    scoreboard players reset #100 buffer
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
    scoreboard players reset #enchantcount buffer
    scoreboard players reset #hasAbility buffer
    scoreboard players reset #durRatio buffer
