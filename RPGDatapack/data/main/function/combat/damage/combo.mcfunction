# ダメージ減衰
    scoreboard players operation @s damage *= @a[limit=1] combo_dmg_reduction
    scoreboard players operation @s damage /= #10 const
# デバフなしで属性取得
    execute store result score #main_element buffer run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #side_element buffer run data get entity @a[limit=1] equipment{offhand:{components:{"minecraft:custom_data":{offhandOnly:1b}}}}.offhand.components."minecraft:custom_data".Element.Type
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #side_element buffer
# クリティカルに関する計算
    scoreboard players operation @s damage *= @a[limit=1] combo_damage_multiplier
    scoreboard players operation @s damage /= #100 const
    execute as @a[limit=1] if score @s combo_damage_multiplier matches 101.. run tag @s add attack.crit
# ダメージ付与
    damage @s 0.01 main:combo_attack
    function main:combat/damage/calc/
# リセット
    tag @s remove hurt.combo
    scoreboard players reset @a[limit=1] dealtDamage
