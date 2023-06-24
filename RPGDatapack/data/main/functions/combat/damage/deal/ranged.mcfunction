# 遠距離攻撃
    tag @s add hurt.ranged
# ダメージ計算
    #属性を取得
    scoreboard players operation $mainElement buffer = @s main_element
    scoreboard players operation $sideElement buffer = @s side_element
    execute unless score $mainElement buffer matches 0 if score $sideElement buffer matches 0 run scoreboard players operation $damageType buffer = $mainElement buffer
    execute if score $mainElement buffer matches 0 unless score $sideElement buffer matches 0 run scoreboard players operation $damageType buffer = $sideElement buffer
    # execute as @p run function status:_general/get/update
    #代入
    # scoreboard players operation @p atkBuffer = @p dex
    #耐性で軽減されたダメージ(max89)の割合を攻撃力に適用
    # scoreboard players operation @p atkBuffer *= @p dealtDamage
    # scoreboard players operation @p atkBuffer /= $89 const
    # scoreboard players operation @s damage = @p atkBuffer
# からの計算式へ
    function main:combat/damage/calc/
