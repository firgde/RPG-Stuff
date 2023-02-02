#ダメージ計算
    execute as @p[tag=attacker] run function status:_general/get/update
    #代入
    scoreboard players operation @p[tag=attacker] atkBuffer = @p[tag=attacker] dex
    #耐性で軽減されたダメージ(max89)の割合を攻撃力に適用
    scoreboard players operation @p[tag=attacker] atkBuffer *= @p[tag=attacker] dealtDamage
    scoreboard players operation @p[tag=attacker] atkBuffer /= $89 const
#共通
    function main:combat/damage/general
