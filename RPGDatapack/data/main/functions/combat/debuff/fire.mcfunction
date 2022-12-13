#他のデバフを上書き
    tag @s remove debuff.ice
    tag @s remove debuff.thunder
    tag @s remove debuff.wind
    execute if entity @s[tag=!debuff.fire] run scoreboard players set @s debuffTimer 0
#燃える
    data modify entity @s HasVisualFire set value 1b
    execute store result score #buff debuffTimer run data get storage damage: Damage.debuffTimer
    scoreboard players operation @s debuffTimer += #buff debuffTimer
    execute store result score @s debuffDamage run data get storage damage: Damage.debuffDamage
    tag @s add debuffed
    tag @s add debuff.fire
