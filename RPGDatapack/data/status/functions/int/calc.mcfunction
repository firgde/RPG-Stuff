# MPratio = MP * 100 / MPmax
    scoreboard players operation @s mp_ratio = @s mp
    scoreboard players operation @s mp_ratio *= #100 const
    scoreboard players operation @s mp_ratio /= @s max_mp
## MPmax = int * 4 + 100
    scoreboard players operation #mpmax buffer = @s int
    scoreboard players operation #mpmax buffer *= #2 const
    scoreboard players add #mpmax buffer 100
    scoreboard players operation @s max_mp = #mpmax buffer
## MPregen = int * 2 + 40
    scoreboard players operation #mpregen buffer = @s int
    scoreboard players operation #mpregen buffer *= #2 const
    scoreboard players add #mpregen buffer 40
    scoreboard players operation @s mp_regen = #mpregen buffer
# MP = MPmax * MPratio / 100
    scoreboard players operation @s mp = @s max_mp
    scoreboard players operation @s mp *= @s mp_ratio
    scoreboard players operation @s mp /= #100 const
# リセット
    scoreboard players reset @s mp_ratio
    scoreboard players reset #mpmax buffer
    scoreboard players reset #mpregen buffer 
