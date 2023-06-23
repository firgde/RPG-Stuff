# デバフを持ってくる
    execute store result score $mainElement buff_amount run data get entity @p SelectedItem.tag.Customnbt.Element.Debuff.Amount
    execute store result score $mainElement buff_timer run data get entity @p SelectedItem.tag.Customnbt.Element.Debuff.Timer
    #オフハンドも
    execute store result score $sideElement buff_amount run data get entity @p Inventory[{Slot:-106b}].tag.Customnbt.Element.Debuff.Amount
    execute store result score $sideElement buff_timer run data get entity @p Inventory[{Slot:-106b}].tag.Customnbt.Element.Debuff.Timer
# 合計
    execute store result storage combat: data.Damage.BuffAmount int 1 run scoreboard players operation $mainElement buff_amount += $sideElement buff_amount
    execute store result storage combat: data.Damage.debuffTimer int 1 run scoreboard players operation $mainElement buff_timer += $sideElement buff_timer
# 1-4で属性を特定
    execute if score $damageType buffer matches 1 run function asset:combat/debuff/fire/apply
    execute if score $damageType buffer matches 2 run function asset:combat/debuff/ice/apply
    execute if score $damageType buffer matches 3 run function asset:combat/debuff/wind/apply
    execute if score $damageType buffer matches 4 run function asset:combat/debuff/thunder/apply
# リセット
    scoreboard players reset $mainElement
    scoreboard players reset $sideElement
