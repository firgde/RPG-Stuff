#割合を変更された最大体力に代入
    scoreboard players operation #hpbuffer buffer = @s max_hp
    scoreboard players operation #hpbuffer buffer *= @s hp_ratio
    execute store result score @s hp run scoreboard players operation #hpbuffer buffer /= #100 const
    
    scoreboard players operation @s hp < @s max_hp
