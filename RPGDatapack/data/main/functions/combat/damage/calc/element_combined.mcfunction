# 近接攻撃の場合はデバフを持ってくる
    execute if entity @s[tag=hurt.melee] store result score $mainElement buff_amount run data get entity @p SelectedItem{tag:{Customnbt:{offhandOnly:0b}}}.tag.Customnbt.Element.Debuff.Amount
    execute if entity @s[tag=hurt.melee] store result score $mainElement buff_timer run data get entity @p SelectedItem{tag:{Customnbt:{offhandOnly:0b}}}.tag.Customnbt.Element.Debuff.Timer
    #オフハンドも
    execute if entity @s[tag=hurt.melee] store result score $sideElement buff_amount run data get entity @p Inventory[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}].tag.Customnbt.Element.Debuff.Amount
    execute if entity @s[tag=hurt.melee] store result score $sideElement buff_timer run data get entity @p Inventory[{Slot:-106b,tag:{Customnbt:{offhandOnly:1b}}}].tag.Customnbt.Element.Debuff.Timer
# 合計
    execute store result storage combat: data.Damage.buff.amount int 1 run scoreboard players operation $mainElement buff_amount += $sideElement buff_amount
    execute store result storage combat: data.Damage.buff.time int 1 run scoreboard players operation $mainElement buff_timer += $sideElement buff_timer
# メイン属性によって分岐
##  TODO デバフ実装
    execute if score $mainElement buffer matches 1 run function asset:combat/debuff/combine/fire/specify
    execute if score $mainElement buffer matches 2 run function asset:combat/debuff/combine/ice/specify
    execute if score $mainElement buffer matches 3 run function asset:combat/debuff/combine/wind/specify
    execute if score $mainElement buffer matches 4 run function asset:combat/debuff/combine/thunder/specify
# 色や判定を決める
    scoreboard players operation $damageType buffer = $mainElement buffer
    scoreboard players operation $damageType buffer *= $10 const
    scoreboard players operation $damageType buffer += $sideElement buffer
