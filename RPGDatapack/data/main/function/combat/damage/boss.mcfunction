# 体力をボスバーに当てはめる
    execute store result bossbar health: value run scoreboard players get @s hp
# 体力が0以下なら死亡処理
    execute if score @s hp matches ..0 run function #asset:mob/death
