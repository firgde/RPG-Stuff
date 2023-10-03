# 遠距離攻撃
    tag @s add hurt.ranged
# ダメージ計算
    #属性を取得
    scoreboard players operation $mainElement buffer = @s main_element
    scoreboard players operation $sideElement buffer = @s side_element
    execute unless score $mainElement buffer matches 0 if score $sideElement buffer matches 0 run scoreboard players operation $damageType buffer = $mainElement buffer
    execute if score $mainElement buffer matches 0 unless score $sideElement buffer matches 0 run scoreboard players operation $damageType buffer = $sideElement buffer
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @p[distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @e[tag=atk_combo.init,limit=1,sort=nearest,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/bow/init
# からの計算式へ
    function main:combat/damage/calc/
# リセット
    scoreboard players reset @p dealtDamage
