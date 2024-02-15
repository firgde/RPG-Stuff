# MPmax = int * 4 + 100
    scoreboard players operation #mpmax buffer = @s int
    scoreboard players operation #mpmax buffer *= #2 const
    scoreboard players add #mpmax buffer 100
    scoreboard players operation @s max_mp = #mpmax buffer
# MPregen = int * 2 + 40
    scoreboard players operation #mpregen buffer = @s int
    scoreboard players operation #mpregen buffer *= #2 const
    scoreboard players add #mpregen buffer 40
    scoreboard players operation @s mp_regen = #mpregen buffer
# リセット
    scoreboard players reset #mpmax buffer
    scoreboard players reset #mpregen buffer 
