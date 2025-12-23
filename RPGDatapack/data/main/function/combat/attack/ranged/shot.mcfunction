# 弓の耐久値減算
    execute if entity @s[gamemode=!creative] run function items:durability/remove
# リセット
    scoreboard players reset @s bow_charge
    scoreboard players reset @s usedBow
