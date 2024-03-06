## damage = damage ^ 2 / (damage + defense) >= 0
    scoreboard players operation @s defBuffer = @s def
    scoreboard players operation @s defBuffer += @s damage
    scoreboard players operation @s damage *= @s damage
    scoreboard players operation @s damage /= @s defBuffer
    scoreboard players operation @s damage > #0 const
