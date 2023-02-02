#からの攻撃力を検出して計算式へ
    scoreboard players operation @s damage = @p[tag=attacker] atkBuffer
    #剣の薙ぎ払い
    execute if data entity @p[tag=attacker,limit=1] SelectedItem{tag:{Customnbt:{weaponType:"sword"}}} if score @p[tag=attacker,limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/sweep
    #ハンマーの衝撃
    execute if data entity @p[tag=attacker,limit=1] SelectedItem{tag:{Customnbt:{weaponType:"hammer"}}} if score @p[tag=attacker,limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/impact
    #短剣の突き
    execute if data entity @p[tag=attacker,limit=1] SelectedItem{tag:{Customnbt:{weaponType:"dagger"}}} if score @p[tag=attacker,limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/stab
    scoreboard players set @p[tag=attacker] dealtDamage 0
    function main:combat/damage/deal
#リセット
    tag @p[tag=attacker] remove attacker
    data remove storage damage: Damage
