# 弓を3tick以上引き絞った&発射したなら矢の初期処理
    execute if score @s bow_charge matches 3.. if score @s usedBow matches 1.. at @s run function main:combat/attack/ranged/shot

    execute if score @s prev_bow_charge = @s bow_charge run scoreboard players reset @s bow_charge
    scoreboard players operation @s prev_bow_charge = @s bow_charge
# 矢のtick処理
    execute as @e[type=arrow,tag=arrow.by_player] unless data entity @s {inGround:1b} at @s run function main:combat/attack/ranged/arrow/tick/
