# 近接攻撃の場合はデバフを持ってくる
    execute if entity @s[tag=hurt.melee] store result score #mainElement buff_amount run data get entity @p SelectedItem{components:{"minecraft:custom_data":{offhandOnly:0b}}}.components."minecraft:custom_data".Element.Debuff.Amount
    execute if entity @s[tag=hurt.melee] store result score #mainElement buff_timer run data get entity @p SelectedItem{components:{"minecraft:custom_data":{offhandOnly:0b}}}.components."minecraft:custom_data".Element.Debuff.Timer
    #オフハンドも
    execute if entity @s[tag=hurt.melee] store result score #sideElement buff_amount run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Debuff.Amount
    execute if entity @s[tag=hurt.melee] store result score #sideElement buff_timer run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Debuff.Timer
# 合計
    execute store result storage combat: data.Damage.buff.amount int 1 run scoreboard players operation #mainElement buff_amount += #sideElement buff_amount
    execute store result storage combat: data.Damage.buff.time int 1 run scoreboard players operation #mainElement buff_timer += #sideElement buff_timer
# 色や判定を決める
    scoreboard players operation #damageType buffer = #mainElement buffer
    scoreboard players operation #damageType buffer *= #10 const
    scoreboard players operation #damageType buffer += #sideElement buffer
# メイン属性によって分岐
    execute if entity @s[tag=!hurt.indirect,tag=!hurt.combo] run function #asset:combat/debuff/apply
