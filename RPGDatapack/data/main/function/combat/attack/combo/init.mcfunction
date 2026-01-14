# 連撃データ取得
    execute store result score @s combo_dmg_reduction run data get entity @s SelectedItem.components."minecraft:custom_data".combo.damage_reduction
    execute store result score @s combo_time store result score @s max_combo_time run data get entity @s SelectedItem.components."minecraft:custom_data".combo.duration
    execute store result score @s combo_crt_max run data get entity @s SelectedItem.components."minecraft:custom_data".combo.crt_max
    execute store result score @s combo_crt_min run data get entity @s SelectedItem.components."minecraft:custom_data".combo.crt_min
    execute store result score @s max_combo_count run data get entity @s SelectedItem.components."minecraft:custom_data".combo.max_count
    scoreboard players set @s combo_count 0
