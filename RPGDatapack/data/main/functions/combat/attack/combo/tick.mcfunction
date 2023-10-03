# タイマー減らす
    scoreboard players remove @s combo_time 1
# 自分が乗ってるエンティティがいないなら/kill
    execute store success score @s hasVehicle on vehicle unless data entity @s {DeathTime:0s}
    execute if score @s hasVehicle matches 1 run kill @s
# 0なら/kill
    execute if score @s combo_time matches ..0 run kill @s
