#経験値加算
    scoreboard players operation @s xp_combat += @s add_pt
    execute if score @s xp_combat > @s xp_need_combat run function status:_general/combat/level_up
