# 回復タイマー加算
    scoreboard players operation @s heal_timer_mana += @s mana_regen
    execute if score @s heal_timer_mana matches 2000.. run function status:int/mana/timer/reset
