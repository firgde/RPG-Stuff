# ストレージのデータ
    data remove storage item: Item
    data modify storage item: Item.count set value 1b
# シュル箱のアイテム
    execute if entity @s[tag=!not_give] run data remove block 0 -59 0 Items
# 表示用スコア
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
