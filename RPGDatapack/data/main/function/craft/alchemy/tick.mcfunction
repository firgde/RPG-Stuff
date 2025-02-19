# 回す
    rotate @s ~-3.0 0
# 50tick毎に上下移動
    scoreboard players operation @s aiTimer %= #50 const
    execute if score @s aiTimer matches 0 run function main:craft/alchemy/move_y
    scoreboard players add @s aiTimer 1
