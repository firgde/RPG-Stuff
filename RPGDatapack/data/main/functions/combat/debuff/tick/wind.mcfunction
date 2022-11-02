#時間の減算
    scoreboard players remove @s debuffTimer 1
    execute if score @s debuffTimer matches 20.. run effect give @s[type=player] levitation 1 240
    #もしタイマー<=0なら、デバフ除去
    execute if score @s debuffTimer matches ..0 run tag @s remove debuff.wind
