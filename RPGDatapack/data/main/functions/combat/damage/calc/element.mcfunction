# 合計
    execute store result storage combat: data.Damage.buff.amount int 1 run scoreboard players operation $mainElement buff_amount += $sideElement buff_amount
    execute store result storage combat: data.Damage.buff.time int 1 run scoreboard players operation $mainElement buff_timer += $sideElement buff_timer
# 1-4で属性を特定
    execute if score $damageType buffer matches 1 run function asset:combat/debuff/fire/apply
    execute if score $damageType buffer matches 2 run function asset:combat/debuff/ice/apply
    execute if score $damageType buffer matches 3 run function asset:combat/debuff/wind/apply
    execute if score $damageType buffer matches 4 run function asset:combat/debuff/thunder/apply
