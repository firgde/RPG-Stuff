#エンチャント処理
    data modify storage damage: data.Damage set from entity @p SelectedItem.tag.Customnbt.Enchantments
    execute if data storage damage: data.Damage[{extra:1b}] run function main:combat/attack/enchantment/specify
#ダメージ計算
    execute as @p run function status:_general/get/update
    execute as @p if score @s dealtDamage matches 150.. run function main:combat/attack/crit
    scoreboard players operation @p atkBuffer = @p atk
    scoreboard players operation @p atkBuffer *= @p dealtDamage
    scoreboard players operation @p atkBuffer /= $100 const
#耐久を減らす
    execute as @p if entity @s[nbt={SelectedItem:{tag:{Customnbt:{Unbreakable:0b,weapon:1b}}}},gamemode=!creative] run function main:combat/durability/remove
#からの攻撃力を検出して計算式へ
    scoreboard players operation @s damage = @p atkBuffer
    #剣の薙ぎ払い
    execute if data entity @p SelectedItem{tag:{Customnbt:{weaponType:"sword"}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/sweep
    #ハンマーの衝撃
    execute if data entity @p SelectedItem{tag:{Customnbt:{weaponType:"hammer"}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/impact
    #短剣の突き
    execute if data entity @p SelectedItem{tag:{Customnbt:{weaponType:"dagger"}}} if score @p dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/stab
    function main:combat/damage/calc
#リセット
    data remove storage damage: data.Damage
