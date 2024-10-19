# 割合に合わせてHP調整
    scoreboard players operation #hpBuffer buffer = @s max_hp
    scoreboard players operation #hpBuffer buffer *= @s hp_ratio
    execute store result score @s hp run scoreboard players operation #hpBuffer buffer /= #100 const
    scoreboard players operation @s hp < @s max_hp
