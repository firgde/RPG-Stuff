# 弓を3tick以上引き絞った&発射したなら矢の初期処理
    execute if score @s bowCharge matches 3.. if score @s usedBow matches 1.. at @s run function main:combat/attack/ranged/shot

    execute if score @s prevBowCharge = @s bowCharge run scoreboard players reset @s BowCharge
    scoreboard players operation @s prevBowCharge = @s bowCharge
# 矢のtick処理
    execute as @e[type=arrow,tag=playerArrow] unless data entity @s {inGround:1b} at @s run function main:combat/attack/ranged/arrow/tick/
# 地面に刺さった矢は消滅
    execute as @e[type=arrow] if data entity @s {inGround:1b} at @s run function main:combat/attack/ranged/arrow/kill
