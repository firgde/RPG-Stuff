#からの攻撃力を検出して計算式へ
    scoreboard players operation @s damage = @a[tag=attacker] atkBuffer
    #剣の薙ぎ払い
    execute if data entity @a[tag=attacker,limit=1] SelectedItem.tag.Customnbt{weaponType:"sword"} if score @a[tag=attacker,limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/sweep
    #ハンマーの衝撃
    execute if data entity @a[tag=attacker,limit=1] SelectedItem.tag.Customnbt{weaponType:"hammer"} if score @a[tag=attacker,limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/impact
    #短剣の突き
    execute if data entity @a[tag=attacker,limit=1] SelectedItem.tag.Customnbt{weaponType:"dagger"} if score @a[tag=attacker,limit=1] dealtDamage matches 100..149 at @s run function main:combat/attack/range_attack/stab
    scoreboard players set @a[tag=attacker] dealtDamage 0
    execute as @s run function main:combat/damage/deal
#リセット
    tag @a[tag=attacker] remove attacker
    data remove storage damage: Damage
