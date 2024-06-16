# MP消費量取得
    execute store result score #mana_require buffer run data get entity @s SelectedItem.components."minecraft:custom_data".Ability.mana_require
# 比較
    execute if score @s mana < #mana_require buffer run function main:combat/ability/no_mana
