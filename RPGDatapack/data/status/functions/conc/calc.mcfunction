#DamageEfficiency = conc / 2 <= 75
    scoreboard players operation @s dmg_eff = @s conc
    scoreboard players operation @s dmg_eff /= $2 const
    scoreboard players operation @s dmg_eff < $75 const
#Followrate = conc / 4 <= 50
    scoreboard players operation @s follow_rate = @s conc
    scoreboard players operation @s follow_rate /= $4 const
    scoreboard players operation @s follow_rate < $50 const
