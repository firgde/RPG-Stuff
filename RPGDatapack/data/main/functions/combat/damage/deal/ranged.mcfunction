#痛い
    tag @s add hurt
#遠距離攻撃
    tag @p add attack.ranged
#ダメージ計算
    execute as @p run function status:_general/get/update
    #代入
    scoreboard players operation @p atkBuffer = @p dex
    #耐性で軽減されたダメージ(max89)の割合を攻撃力に適用
    scoreboard players operation @p atkBuffer *= @p dealtDamage
    scoreboard players operation @p atkBuffer /= $89 const
    scoreboard players operation @s damage = @p atkBuffer
#からの計算式へ
    function main:combat/damage/calc/
#リセット
    tag @p remove attack.ranged
    scoreboard players reset @p atkBuffer
    scoreboard players set @p dealtDamage 0
