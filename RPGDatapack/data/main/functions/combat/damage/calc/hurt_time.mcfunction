## damage = damage * (10 - HurtTime) / 10
    scoreboard players set #10 buffer 10
    execute store result score @s hurt_time run scoreboard players operation #10 buffer -= @s hurt_time
    scoreboard players operation @s damage *= @s hurt_time
    scoreboard players operation @s damage /= #10 const
    scoreboard players reset #10 buffer
