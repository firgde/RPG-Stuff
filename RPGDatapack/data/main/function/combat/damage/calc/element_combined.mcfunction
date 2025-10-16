# 近接攻撃の場合はデバフを持ってくる
    execute if entity @s[tag=hurt.melee] store result score #main_element buff_amount run data get entity @a[limit=1] SelectedItem{components:{"minecraft:custom_data":{offhandOnly:0b}}}.components."minecraft:custom_data".Element.Debuff.Amount
    execute if entity @s[tag=hurt.melee] store result score #main_element buff_timer_element run data get entity @a[limit=1] SelectedItem{components:{"minecraft:custom_data":{offhandOnly:0b}}}.components."minecraft:custom_data".Element.Debuff.Timer
    #オフハンドも
    execute if entity @s[tag=hurt.melee] store result score #side_element buff_amount run data get entity @a[limit=1] equipment.offhand.components."minecraft:custom_data".Element.Debuff.Amount
    execute if entity @s[tag=hurt.melee] store result score #side_element buff_timer_element run data get entity @a[limit=1] equipment.offhand.components."minecraft:custom_data".Element.Debuff.Timer
# 合計
    execute store result storage combat: data.Damage.buff.amount int 1 run scoreboard players operation #main_element buff_amount += #side_element buff_amount
    execute store result storage combat: data.Damage.buff.time int 1 run scoreboard players operation #main_element buff_timer_element += #side_element buff_timer_element
# 色や判定を決める
    scoreboard players operation #damage_type buffer = #main_element buffer
    scoreboard players operation #damage_type buffer *= #10 const
    scoreboard players operation #damage_type buffer += #side_element buffer
# メイン属性によって分岐
    execute if entity @s[tag=!hurt.indirect,tag=!hurt.combo,tag=!on_buff] run function #asset:combat/debuff/apply
