# 近接攻撃
    tag @s add hurt.melee
# 耐久を減らす
    execute as @a[limit=1] if entity @s[gamemode=!creative] unless items entity @s weapon.mainhand *[custom_data~{Unbreakable:1b}|custom_data~{weaponType:2}] run function items:durability/remove
# からの攻撃力を検出して計算式へ
    #剣の薙ぎ払い
    execute if items entity @a[limit=1] weapon.mainhand *[custom_data~{weaponType:0}] if score @a[limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/sweep
    #ハンマーの衝撃
    execute if items entity @a[limit=1] weapon.mainhand *[custom_data~{weaponType:1}] if score @a[limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/impact
    #短剣の突き
    execute if items entity @a[limit=1] weapon.mainhand *[custom_data~{weaponType:4}] if score @a[limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/stab

# ダメージ計算
    #属性を取得
    execute store result score #main_element buffer run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Type
    execute store result score #side_element buffer run data get entity @a[limit=1] equipment{offhand:{components:{"minecraft:custom_data":{offhandOnly:1b}}}}.offhand.components."minecraft:custom_data".Element.Type
    execute unless score #main_element buffer matches 0 if score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #main_element buffer
    execute if score #main_element buffer matches 0 unless score #side_element buffer matches 0 run scoreboard players operation #damage_type buffer = #side_element buffer
    #デバフ
    execute store result score #main_element buff_amount run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Debuff.Amount
    execute store result score #main_element buff_timer run data get entity @a[limit=1] SelectedItem.components."minecraft:custom_data".Element.Debuff.Timer
    execute if items entity @a[limit=1] weapon.offhand *[custom_data~{offhandOnly:1b}] store result score #side_element buff_amount run data get entity @a[limit=1] equipment.offhand.components."minecraft:custom_data".Element.Debuff.Amount
    execute if items entity @a[limit=1] weapon.offhand *[custom_data~{offhandOnly:1b}] store result score #side_element buff_timer run data get entity @a[limit=1] equipment.offhand.components."minecraft:custom_data".Element.Debuff.Timer
    #会心攻撃の処理
    execute as @a[limit=1] if score @s dealtDamage matches 150.. run function main:combat/attack/crit/
    execute as @a[limit=1] run function status:update/
    scoreboard players operation @a[limit=1] atkBuffer = @a[limit=1] atk
    scoreboard players operation @a[limit=1] atkBuffer *= @a[limit=1] dealtDamage
    scoreboard players operation @a[limit=1] atkBuffer /= #100 const
    scoreboard players operation @s damage = @a[limit=1] atkBuffer
    function main:combat/damage/calc/
    execute as @e[tag=hurt.indirect] run function main:combat/damage/calc/
# リセット
    data remove storage combat: data.Damage
    tag @a[limit=1] remove attack.crit
    scoreboard players reset @a[limit=1] dealtDamage
