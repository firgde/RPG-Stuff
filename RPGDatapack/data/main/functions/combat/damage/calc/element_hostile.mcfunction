# デバフを持ってくる
    execute store result score $element_mainhand buff_amount on attacker run data get entity @s HandItems[0].tag.Customnbt.Element.Debuff.Amount
    execute store result score $element_mainhand buff_timer on attacker run data get entity @s HandItems[0].tag.Customnbt.Element.Debuff.Timer
    #オフハンドも
    execute store result score $element_offhand buff_amount on attacker run data get entity @s HandItems[1].tag.Customnbt.Element.Debuff.Amount
    execute store result score $element_offhand buff_timer on attacker run data get entity @s HandItems[1].tag.Customnbt.Element.Debuff.Timer
# 合計
    execute store result storage combat: data.Damage.BuffAmount int 1 run scoreboard players operation $element_mainhand buff_amount += $element_offhand buff_amount
    execute store result storage combat: data.Damage.debuffTimer int 1 run scoreboard players operation $element_mainhand buff_timer += $element_offhand buff_timer
# 1-4で属性を特定
    execute if score $damagetype buffer matches 1 run function asset:combat/debuff/fire/apply
    execute if score $damagetype buffer matches 2 run function asset:combat/debuff/ice/apply
    execute if score $damagetype buffer matches 3 run function asset:combat/debuff/wind/apply
    execute if score $damagetype buffer matches 4 run function asset:combat/debuff/thunder/apply
# リセット
    scoreboard players reset $element_mainhand
    scoreboard players reset $element_offhand
