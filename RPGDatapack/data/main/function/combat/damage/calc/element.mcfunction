# 合計
    execute store result storage combat: data.Damage.buff.amount int 1 run scoreboard players operation #main_element buff_amount += #side_element buff_amount
    execute store result storage combat: data.Damage.buff.time int 1 run scoreboard players operation #main_element buff_timer_element += #side_element buff_timer_element
# 1-4で属性を特定
    execute if entity @s[tag=!hurt.indirect,tag=!hurt.combo] run function #asset:combat/debuff/apply
