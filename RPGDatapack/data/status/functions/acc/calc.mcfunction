# DamageEfficiency = acc / 2 <= 75
    scoreboard players operation @s dmg_eff = @s acc
    scoreboard players operation @s dmg_eff /= #2 const
    scoreboard players operation @s dmg_eff < #75 const
# Followrate = acc <= 75
    scoreboard players operation @s follow_rate = @s acc
    scoreboard players operation @s follow_rate < #75 const
