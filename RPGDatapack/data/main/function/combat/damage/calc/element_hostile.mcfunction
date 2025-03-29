# デバフを持ってくる
    execute store result score #main_element buff_amount on attacker run data get entity @s equipment.mainhand.components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #main_element buff_timer on attacker run data get entity @s equipment.mainhand.components."minecraft:custom_data".Element.Debuff.Timer
    #オフハンドも
    execute store result score #side_element buff_amount on attacker run data get entity @s equipment.offhand.components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #side_element buff_timer on attacker run data get entity @s equipment.offhand.components."minecraft:custom_data".Element.Debuff.Timer
# 合計
    execute store result storage combat: data.Damage.buff.amount int 1 run scoreboard players operation #main_element buff_amount += #side_element buff_amount
    execute store result storage combat: data.Damage.buff.time int 1 run scoreboard players operation #main_element buff_timer += #side_element buff_timer
# 1-4で属性を特定
    execute if entity @s[tag=!hurt.indirect,tag=!hurt.combo] run function #asset:combat/debuff/apply
# リセット
    scoreboard players reset #main_element
    scoreboard players reset #side_element
