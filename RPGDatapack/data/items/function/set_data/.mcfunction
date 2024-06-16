# 置き換えるアイテムを入れる
    item replace block 0 -59 0 container.0 with air
    item replace block 0 -59 0 container.0 with stick[]
# 説明文やらidやらを先に代入
    data modify block 0 -59 0 Items[{Slot:0b}] set from storage item: Item
# item_modifierを適用
    item modify block 0 -59 0 container.0 items:lore/text
    item modify block 0 -59 0 container.0 items:lore/status
    execute if score #enchantcount buffer matches 1.. positioned 0 -59 0 run function items:set_data/rec
    execute if data storage item: Item.components."minecraft:custom_data"{weaponType:2} run item modify block 0 -59 0 container.0 items:lore/magic
    execute if data storage item: Item.components."minecraft:custom_data"{food:1b} run item modify block 0 -59 0 container.0 items:lore/heal
    item modify block 0 -59 0 container.0 items:lore/elements
    item modify block 0 -59 0 container.0 items:lore/info
# アイテムｶﾓｫｫｫｫﾝ
    item replace block 0 -59 0 container.1 with air
    loot give @s[tag=!not_give] mine 0 -59 0 mainhand
# リセット
    data remove storage item: Item
    data modify storage item: Item.count set value 1b
    execute if entity @s[tag=!not_give] run data remove block 0 -59 0 Items
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
    scoreboard players reset #atk_bonus_enchant buffer
    scoreboard players reset #mag_bonus_enchant buffer
    scoreboard players reset #dex_bonus_enchant buffer
    scoreboard players reset #hpB_bnus_enchant buffer
    scoreboard players reset #int_bonus_enchant buffer
    scoreboard players reset #def_bonus_enchant buffer
    scoreboard players reset #spd_bonus_enchant buffer
    scoreboard players reset #crt_bonus_enchant buffer
    scoreboard players reset #luk_bonus_enchant buffer
    scoreboard players reset #acc_bonus_enchant buffer
    scoreboard players reset #resistance_melee_bonus buffer
    scoreboard players reset #resistance_magic_bonus buffer
    scoreboard players reset #resistance_ranged_bonus buffer
    scoreboard players reset #resistance_fire_bonus buffer
    scoreboard players reset #resistance_ice_bonus buffer
    scoreboard players reset #resistance_wind_bonus buffer
    scoreboard players reset #resistance_thunder_bonus buffer
    scoreboard players reset #rarity buffer
    scoreboard players reset #durability buffer
    scoreboard players reset #maxDurability buffer
    scoreboard players reset #enchantcount buffer
    scoreboard players reset #hasAbility buffer
    scoreboard players reset #mana_require buffer
