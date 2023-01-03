#ダメージ計算
    execute as @a[tag=attacker] run function status:_general/get/update
    #代入
    scoreboard players operation @a[tag=attacker] atkBuffer = @a[tag=attacker] dex
    #耐性で軽減されたダメージ(max89)の割合を攻撃力に適用
    scoreboard players operation @a[tag=attacker] atkBuffer *= @a[tag=attacker] dealtDamage
    scoreboard players operation @a[tag=attacker] atkBuffer /= $89 const
#共通
    function main:combat/damage/general
