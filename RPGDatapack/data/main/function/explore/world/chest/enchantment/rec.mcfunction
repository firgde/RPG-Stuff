# 再帰回数を減らす
    scoreboard players remove #rec buffer 1
# ルートテーブル万能説
    item replace block 0 -59 0 container.1 with air
    execute positioned 0 -59 0 run loot replace block ~ ~ ~ container.1 loot main:craft/enchantments/all
    execute if items block 0 -59 0 container.1 air run scoreboard players set #rec buffer 0
# 生成されたアイテムのタグからエンチャントを特定
    execute positioned 0 -59 0 run function #asset:craft/enchantments
# エンチャント適用
    data modify block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data append from block 0 -59 0 Items[{Slot:1b}].components."minecraft:custom_data"
    execute store result score #enchantcount buffer if data block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".enchantments.data
    #元の値を取得
    execute store result score #atkBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.atk
    execute store result score #magBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.mag
    execute store result score #dexBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.dex
    execute store result score #hpBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.hp
    execute store result score #intBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.int
    execute store result score #defBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.def
    execute store result score #spdBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.spd
    execute store result score #crtBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.crt
    execute store result score #lukBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.luk
    execute store result score #accBonus buffer run data get block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.acc
    #エンチャントで増加する値を加算
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.atk int 1 run scoreboard players operation #atkBonus buffer += #atk_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.mag int 1 run scoreboard players operation #magBonus buffer += #mag_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.dex int 1 run scoreboard players operation #dexBonus buffer += #dex_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.hp int 1 run scoreboard players operation #hpBonus buffer += #hp_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.int int 1 run scoreboard players operation #intBonus buffer += #int_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.def int 1 run scoreboard players operation #defBonus buffer += #def_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.spd int 1 run scoreboard players operation #spdBonus buffer += #spd_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.crt int 1 run scoreboard players operation #crtBonus buffer += #crt_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.luk int 1 run scoreboard players operation #lukBonus buffer += #luk_bonus_enchant buffer
    execute store result block 0 -59 0 Items[{Slot:4b}].components."minecraft:custom_data".status.acc int 1 run scoreboard players operation #accBonus buffer += #acc_bonus_enchant buffer
# リセット
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
# 再帰
    execute if score #rec buffer matches 1.. run function main:explore/world/chest/enchantment/rec
