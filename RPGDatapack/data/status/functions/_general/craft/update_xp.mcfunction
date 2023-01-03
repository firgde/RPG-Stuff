#経験値加算
    scoreboard players operation @s xp_craft += @s add_pt
    scoreboard players operation @s buffer = @s lvl_craft
    scoreboard players operation @s lvl_craft = @s xp_craft
    scoreboard players operation @s lvl_craft /= $5 const
    execute if score @s lvl_craft > @s buffer run function status:_general/craft/level_up
