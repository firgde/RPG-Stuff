# 攻撃の種類(近接/魔術/遠距離)
    execute if entity @s[tag=hurt.melee] run scoreboard players operation @s damage *= @s resistance_melee
    execute if entity @s[tag=hurt.magic] run scoreboard players operation @s damage *= @s resistance_magic
    execute if entity @s[tag=hurt.ranged] run scoreboard players operation @s damage *= @s resistance_ranged
    scoreboard players operation @s damage /= $100 const
# 属性
    execute if score $damageType buffer matches 1 run scoreboard players operation @s damage *= @s resistance_fire
    execute if score $damageType buffer matches 2 run scoreboard players operation @s damage *= @s resistance_ice
    execute if score $damageType buffer matches 3 run scoreboard players operation @s damage *= @s resistance_wind
    execute if score $damageType buffer matches 4 run scoreboard players operation @s damage *= @s resistance_thunder
    execute if score $damageType buffer matches 1..4 run scoreboard players operation @s damage /= $100 const
# 合成属性
    execute if score $damageType buffer matches 11..14 run scoreboard players operation @s damage *= @s resistance_fire
    execute if score $damageType buffer matches 21..24 run scoreboard players operation @s damage *= @s resistance_ice
    execute if score $damageType buffer matches 31..34 run scoreboard players operation @s damage *= @s resistance_wind
    execute if score $damageType buffer matches 41..44 run scoreboard players operation @s damage *= @s resistance_thunder
    execute if score $damageType buffer matches 11.. if score $sideElement buffer matches 1 run scoreboard players operation @s damage *= @s resistance_fire
    execute if score $damageType buffer matches 11.. if score $sideElement buffer matches 2 run scoreboard players operation @s damage *= @s resistance_ice
    execute if score $damageType buffer matches 11.. if score $sideElement buffer matches 3 run scoreboard players operation @s damage *= @s resistance_wind
    execute if score $damageType buffer matches 11.. if score $sideElement buffer matches 4 run scoreboard players operation @s damage *= @s resistance_thunder
    execute if score $damageType buffer matches 11.. run scoreboard players operation @s damage /= $10000 const
