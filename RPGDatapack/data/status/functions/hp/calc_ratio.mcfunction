#割合を計算
    scoreboard players operation @s hp_buffer = @s hp
    scoreboard players operation @s hp_buffer *= #100 const
    execute store result score @s hp_ratio run scoreboard players operation @s hp_buffer /= @s max_hp
