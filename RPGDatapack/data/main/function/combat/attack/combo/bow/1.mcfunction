# 音
    playsound entity.arrow.shoot player @s ~ ~ ~ 1 1.2
# 矢を召喚して飛ばす
    execute anchored eyes run summon arrow ^ ^ ^0.01 {Tags:["combo_arrow","playerArrow"]}
    execute rotated as @s as @n[tag=combo_arrow] run function main:combat/attack/combo/bow/shoot
