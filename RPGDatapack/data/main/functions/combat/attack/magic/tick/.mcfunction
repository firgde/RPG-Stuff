#魔法の種類で分岐
    execute if entity @s[tag=magic.attack] run function main:combat/attack/magic/tick/attack
    execute if entity @s[tag=magic.support] run function main:combat/attack/magic/tick/support
