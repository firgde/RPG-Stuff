#/dATa gEt
    execute store result score @s atk_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.atk
    execute store result score @s mag_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.mag
    execute store result score @s tec_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.tec
    execute store result score @s max_hp_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.hp
    execute store result score @s int_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.int
    execute store result score @s def_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.def
    execute store result score @s spd_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.spd
    execute store result score @s crt_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.crt
    execute store result score @s luk_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.luk
    execute store result score @s conc_bonus run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.status.conc
#エンチャント
    execute store result score @s atk_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.atk
    execute store result score @s mag_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.mag
    execute store result score @s tec_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.tec
    execute store result score @s max_hp_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.hp
    execute store result score @s int_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.int
    execute store result score @s def_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.def
    execute store result score @s spd_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.spd
    execute store result score @s crt_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.crt
    execute store result score @s luk_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.luk
    execute store result score @s conc_enchant run data get entity @s Inventory[{Slot:101b}].tag.Customnbt.Enchantbuff.conc
#合計
    scoreboard players operation @s atk_bonus += @s atk_enchant
    scoreboard players operation @s mag_bonus += @s mag_enchant
    scoreboard players operation @s tec_bonus += @s tec_enchant
    scoreboard players operation @s max_hp_bonus += @s max_hp_enchant
    scoreboard players operation @s int_bonus += @s int_enchant
    scoreboard players operation @s def_bonus += @s def_enchant
    scoreboard players operation @s spd_bonus += @s spd_enchant
    scoreboard players operation @s crt_bonus += @s crt_enchant
    scoreboard players operation @s luk_bonus += @s crt_enchant
    scoreboard players operation @s conc_bonus += @s conc_enchant
#更新
    execute as @s run function status:_general/get/add_bonus
