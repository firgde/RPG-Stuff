#攻撃の種類(近接/魔術/遠距離)
    execute on attacker if entity @s[tag=attack.melee] as @e[tag=hurt] run scoreboard players operation @s damage *= @s resistance_melee
    execute on attacker if entity @s[tag=attack.magic] as @e[tag=hurt] run scoreboard players operation @s damage *= @s resistance_magic
    execute on attacker if entity @s[tag=attack.ranged] as @e[tag=hurt] run scoreboard players operation @s damage *= @s resistance_ranged
    scoreboard players operation @s damage /= $100 const
#属性
    execute if score $damagetype buffer matches 1 run scoreboard players operation @s damage *= @s resistance_fire
    execute if score $damagetype buffer matches 2 run scoreboard players operation @s damage *= @s resistance_ice
    execute if score $damagetype buffer matches 3 run scoreboard players operation @s damage *= @s resistance_wind
    execute if score $damagetype buffer matches 4 run scoreboard players operation @s damage *= @s resistance_thunder
    execute if score $damagetype buffer matches 1..4 run scoreboard players operation @s damage /= $100 const
