# タイマー減算、0なら/kill
    scoreboard players remove @s particle_timer 1
    execute if score @s particle_timer matches 0 run kill @s
