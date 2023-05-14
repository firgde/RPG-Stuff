# 痛い
    tag @s add hurt
# 近接攻撃
    tag @p add attack.melee
# エンチャント処理
    #data modify storage combat:data.Damage set from entity @p SelectedItem.tag.Customnbt.Enchantments
    #execute if data storage combat:data.Damage[{extra:1b}] run function main:combat/attack/enchantment/specify
# 耐久を減らす
    execute as @p if entity @s[nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b,weapon:1b}}}},gamemode=!creative] run function items:durability/remove
# からの攻撃力を検出して計算式へ
    #剣の薙ぎ払い
    execute if data entity @p SelectedItem{tag:{Customnbt:{weaponType:"sword"}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/sweep
    #ハンマーの衝撃
    execute if data entity @p SelectedItem{tag:{Customnbt:{weaponType:"hammer"}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/impact
    #短剣の突き
    execute if data entity @p SelectedItem{tag:{Customnbt:{weaponType:"dagger"}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/stab

# ダメージ計算
    #会心攻撃の処理
    execute as @p if score @s dealtDamage matches 150.. run function main:combat/attack/crit/
    execute as @p run function status:_general/get/update
    scoreboard players operation @p atkBuffer = @p atk
    scoreboard players operation @p atkBuffer *= @p dealtDamage
    scoreboard players operation @p atkBuffer /= $100 const
    scoreboard players operation @s damage = @p atkBuffer
    function main:combat/damage/calc/
# リセット
    data remove storage combat: data.Damage
    tag @p remove attack.melee
    tag @p remove attack.crit
