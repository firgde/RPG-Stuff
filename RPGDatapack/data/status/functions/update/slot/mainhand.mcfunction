# /dATa gEt
    execute store result score @s atk_bonus run data get entity @s SelectedItem.components.custom_data.status.atk
    execute store result score @s mag_bonus run data get entity @s SelectedItem.components.custom_data.status.mag
    execute store result score @s dex_bonus run data get entity @s SelectedItem.components.custom_data.status.dex
    execute store result score @s max_hp_bonus run data get entity @s SelectedItem.components.custom_data.status.hp
    execute store result score @s int_bonus run data get entity @s SelectedItem.components.custom_data.status.int
    execute store result score @s def_bonus run data get entity @s SelectedItem.components.custom_data.status.def
    execute store result score @s spd_bonus run data get entity @s SelectedItem.components.custom_data.status.spd
    execute store result score @s crt_bonus run data get entity @s SelectedItem.components.custom_data.status.crt
    execute store result score @s luk_bonus run data get entity @s SelectedItem.components.custom_data.status.luk
    execute store result score @s acc_bonus run data get entity @s SelectedItem.components.custom_data.status.acc
# 合計
    scoreboard players operation @s atk_bonus += @s atk_enchant
    scoreboard players operation @s mag_bonus += @s mag_enchant
    scoreboard players operation @s dex_bonus += @s dex_enchant
    scoreboard players operation @s max_hp_bonus += @s max_hp_enchant
    scoreboard players operation @s int_bonus += @s int_enchant
    scoreboard players operation @s def_bonus += @s def_enchant
    scoreboard players operation @s spd_bonus += @s spd_enchant
    scoreboard players operation @s crt_bonus += @s crt_enchant
    scoreboard players operation @s luk_bonus += @s crt_enchant
    scoreboard players operation @s acc_bonus += @s acc_enchant
# 更新
    function status:update/add_bonus
