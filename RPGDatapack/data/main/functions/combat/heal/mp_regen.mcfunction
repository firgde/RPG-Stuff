# 回復タイマー加算
    scoreboard players operation @s healTimerMP += @s mp_regen
    execute if score @s healTimerMP matches 2000.. run function main:combat/heal/mp_timer
