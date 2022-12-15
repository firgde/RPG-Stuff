#攻撃の種類で分岐
    #属性で分岐
    execute if entity @s[tag=magic.generic] at @s run particle witch ~ ~ ~ 0 0 0 1 1 normal
    execute if entity @s[tag=magic.fire] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0 15 normal
    execute if entity @s[tag=magic.ice] at @s run particle dust 0.000 1.000 1.000 1 ~ ~ ~ 0 0 0 1 0 normal
    execute if entity @s[tag=magic.thunder] at @s run particle dust 1.000 0.969 0.000 1 ^ ^ ^ 0.05 0.05 0.05 0.5 3 normal
    execute if entity @s[tag=magic.thunder] at @s run particle dust 1 0.984 0.549 1 ^ ^ ^ 0.05 0.05 0.05 0.5 2 normal
    execute if entity @s[tag=magic.wind] at @s run particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0 1 normal
    #種類(範囲・遠距離)
    #execute if entity @s[tag=magic.melee]
    execute if entity @s[tag=magic.ranged] at @s run function main:combat/attack/magic/tick/ranged
