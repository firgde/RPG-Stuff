#他のデバフを上書き
    execute if entity @s[tag=!debuff.fire] run scoreboard players set @s debuffTimer 0
    execute if entity @s[tag=debuff.ice] run scoreboard players operation @s atk -= @s atk_buff
    execute if entity @s[tag=debuff.thunder] run scoreboard players operation @s spd -= @s spd_buff
    tag @s remove debuff.ice
    tag @s remove debuff.thunder
    tag @s remove debuff.wind
#燃える
    data modify entity @s HasVisualFire set value 1b
    execute store result score #buff debuffTimer run data get storage damage: Damage.debuffTimer
    scoreboard players operation @s debuffTimer += #buff debuffTimer
    execute store result score @s debuffDamage run data get storage damage: Damage.debuffDamage
    tag @s add debuffed
    tag @s add debuff.fire
