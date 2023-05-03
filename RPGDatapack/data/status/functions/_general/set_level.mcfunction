# 取り敢えず五つのジャンルの平均
    scoreboard players operation @s buffer = @s lvl_total
    scoreboard players set @s lvl_total 0
    scoreboard players operation @s lvl_total = @s lvl_combat
    scoreboard players operation @s lvl_total += @s lvl_explore
    scoreboard players operation @s lvl_total += @s lvl_craft
    scoreboard players operation @s lvl_total += @s lvl_collect
    scoreboard players operation @s lvl_total += @s lvl_social
    execute store result score @s lvl_total run scoreboard players operation @s lvl_total /= $5 const
    execute if score @s lvl_total > @s buffer run function status:_general/level_up
