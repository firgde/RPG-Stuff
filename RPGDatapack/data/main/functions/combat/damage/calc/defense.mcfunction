## damage = damage/1+(def/damage) >= 0
    scoreboard players operation @s defBuffer = @s def
    scoreboard players operation @s defBuffer *= $100 const
    scoreboard players operation @s defBuffer /= @s damage
    scoreboard players add @s defBuffer 100
    scoreboard players operation @s damage *= $100 const
    scoreboard players operation @s damage /= @s defBuffer
    scoreboard players operation @s damage > $0 const
