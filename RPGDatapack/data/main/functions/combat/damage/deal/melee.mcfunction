# 近接攻撃
    tag @s add hurt.melee
# 耐久を減らす
    execute as @p if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Unbreakable:0b,weapon:1b}}}},gamemode=!creative] unless data entity @s SelectedItem{components:{"minecraft:custom_data":{weaponType:2}}} run function items:durability/remove
# からの攻撃力を検出して計算式へ
    #剣の薙ぎ払い
    execute if data entity @p SelectedItem{components:{"minecraft:custom_data":{weaponType:0}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/sweep
    #ハンマーの衝撃
    execute if data entity @p SelectedItem{components:{"minecraft:custom_data":{weaponType:1}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/impact
    #短剣の突き
    execute if data entity @p SelectedItem{components:{"minecraft:custom_data":{weaponType:4}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/stab

# ダメージ計算
    #属性を取得
    execute store result score #mainElement buffer run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #sideElement buffer run data get entity @p Inventory[{Slot:-106b,components:{"minecraft:custom_data":{offhandOnly:1b}}}].components."minecraft:custom_data".Element.Type
    execute unless score #mainElement buffer matches 0 if score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #mainElement buffer
    execute if score #mainElement buffer matches 0 unless score #sideElement buffer matches 0 run scoreboard players operation #damageType buffer = #sideElement buffer
    #デバフ
    execute store result score #mainElement buff_amount run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #mainElement buff_timer run data get entity @p SelectedItem.components."minecraft:custom_data".Element.Debuff.Timer
    execute store result score #sideElement buff_amount run data get entity @p Inventory[{Slot:-106b}].components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #sideElement buff_timer run data get entity @p Inventory[{Slot:-106b}].components."minecraft:custom_data".Element.Debuff.Timer
    #会心攻撃の処理
    execute as @p if score @s dealtDamage matches 150.. run function main:combat/attack/crit/
    execute as @p run function status:update/
    scoreboard players operation @p atkBuffer = @p atk
    scoreboard players operation @p atkBuffer *= @p dealtDamage
    scoreboard players operation @p atkBuffer /= #100 const
    scoreboard players operation @s damage = @p atkBuffer
    function main:combat/damage/calc/
    execute as @e[tag=hurt.indirect] run function main:combat/damage/calc/
# リセット
    data remove storage combat: data.Damage
    tag @p remove attack.crit
    scoreboard players reset @p dealtDamage
