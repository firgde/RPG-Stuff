# 遠距離攻撃
    tag @s add hurt.ranged
# ダメージ計算
    #属性を取得
    scoreboard players operation $mainElement buffer = @s main_element
    scoreboard players operation $sideElement buffer = @s side_element
    execute unless score $mainElement buffer matches 0 if score $sideElement buffer matches 0 run scoreboard players operation $damageType buffer = $mainElement buffer
    execute if score $mainElement buffer matches 0 unless score $sideElement buffer matches 0 run scoreboard players operation $damageType buffer = $sideElement buffer
# からの計算式へ
    function main:combat/damage/calc/
