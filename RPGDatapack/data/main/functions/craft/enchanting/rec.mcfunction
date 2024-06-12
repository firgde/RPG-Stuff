# 再帰回数を減らす
    scoreboard players remove #rec buffer 1
# ルートテーブル万能説
    loot replace block 0 -59 0 container.1 loot main:craft/enchantments/all
# 生成されたアイテムのタグからエンチャントを特定
    #スキルエンチャントの場合はアイテムによって特定
    execute if data block 0 -59 0 Items[{components:{"minecraft:custom_data":{EnchantData:{ability_enchantment:1b}}}}] run function main:craft/enchanting/ability/apply
    function #asset:craft/enchantments
# エンチャント適用
    data modify block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".Enchantments append from block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data".EnchantData
    execute store result score #enchantcount buffer if data block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".Enchantments
    #元の値を取得
    execute store result score #atkBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.atk
    execute store result score #magBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.mag
    execute store result score #dexBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.dex
    execute store result score #hpBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.hp
    execute store result score #intBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.int
    execute store result score #defBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.def
    execute store result score #spdBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.spd
    execute store result score #crtBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.crt
    execute store result score #lukBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.luk
    execute store result score #accBonus buffer run data get block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.acc
    #エンチャントで増加する値を加算
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.atk int 1 run scoreboard players operation #atkBonus buffer += #atk_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.mag int 1 run scoreboard players operation #magBonus buffer += #mag_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.dex int 1 run scoreboard players operation #dexBonus buffer += #dex_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.hp int 1 run scoreboard players operation #hpBonus buffer += #hp_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.int int 1 run scoreboard players operation #intBonus buffer += #int_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.def int 1 run scoreboard players operation #defBonus buffer += #def_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.spd int 1 run scoreboard players operation #spdBonus buffer += #spd_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.crt int 1 run scoreboard players operation #crtBonus buffer += #crt_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.luk int 1 run scoreboard players operation #lukBonus buffer += #luk_bonus_enchant buffer
    execute store result block ~ ~ ~ Items[{Slot:4b}].components."minecraft:custom_data".status.acc int 1 run scoreboard players operation #accBonus buffer += #acc_bonus_enchant buffer
# アイテムのlore設定
    data modify storage item: Item set from block ~ ~ ~ Items[{Slot:4b}]
    data remove storage item: Item.Slot
    item replace block 0 -59 0 container.0 from block ~ ~ ~ container.4
    execute positioned 0 -59 0 run function items:get_data
    execute positioned 0 -59 0 run function items:set_data/
    item replace block ~ ~ ~ container.4 from block 0 -59 0 container.0
# 再帰
    execute if score #rec buffer matches 1.. run function main:craft/enchanting/rec
