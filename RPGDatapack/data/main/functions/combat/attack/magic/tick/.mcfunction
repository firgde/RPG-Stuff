#魔法の種類で分岐
    execute if entity @s[tag=magic.attack] run function main:combat/attack/magic/tick/attack
    execute if entity @s[tag=magic.assist] run function main:combat/attack/magic/common_assist
