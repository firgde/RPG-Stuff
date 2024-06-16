# mana_ratio = mana * 100 / max_mana
    scoreboard players operation @s mana_ratio = @s mana
    scoreboard players operation @s mana_ratio *= #100 const
    scoreboard players operation @s mana_ratio /= @s max_mana
## max_mana = int * 4 + 100
    scoreboard players operation #mana_max buffer = @s int
    scoreboard players operation #mana_max buffer *= #2 const
    scoreboard players add #mana_max buffer 100
    scoreboard players operation @s max_mana = #mana_max buffer
## mana_regen = int * 2 + 40
    scoreboard players operation #mana_regen buffer = @s int
    scoreboard players operation #mana_regen buffer *= #2 const
    scoreboard players add #mana_regen buffer 40
    scoreboard players operation @s mana_regen = #mana_regen buffer
# mana = max_mana * mana_ratio / 100
    scoreboard players operation @s mana = @s max_mana
    scoreboard players operation @s mana *= @s mana_ratio
    scoreboard players operation @s mana /= #100 const
# リセット
    scoreboard players reset @s mana_ratio
    scoreboard players reset #mana_max buffer
    scoreboard players reset #mana_regen buffer 
