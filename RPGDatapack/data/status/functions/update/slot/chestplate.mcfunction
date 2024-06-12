# /dATa gEt
    execute store result score #atk_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.atk
    execute store result score #mag_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.mag
    execute store result score #dex_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.dex
    execute store result score #hp_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.hp
    execute store result score #int_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.int
    execute store result score #def_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.def
    execute store result score #spd_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.spd
    execute store result score #crt_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.crt
    execute store result score #luk_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.luk
    execute store result score #acc_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".status.acc
    execute store result score #resistance_melee_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.melee
    execute store result score #resistance_magic_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.magic
    execute store result score #resistance_ranged_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.ranged
    execute store result score #resistance_fire_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.fire
    execute store result score #resistance_ice_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.ice
    execute store result score #resistance_wind_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.wind
    execute store result score #resistance_thunder_equipment buffer run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".resistance.thunder
# 更新
    function status:update/add_bonus
