    execute if entity @p[tag=attacker,advancements={main:combat/attack/detect={0.0=true,projectile=false}}] if entity @s[tag=0.0] run function main:combat/damage/melee
    execute if entity @p[tag=attacker,advancements={main:combat/attack/detect={0.1=true,projectile=false}}] if entity @s[tag=0.1] run function main:combat/damage/melee
    execute if entity @p[tag=attacker,advancements={main:combat/attack/detect={0.0=true,projectile=true}}] if entity @s[tag=0.0] run function main:combat/attack/ranged/
    execute if entity @p[tag=attacker,advancements={main:combat/attack/detect={0.1=true,projectile=true}}] if entity @s[tag=0.1] run function main:combat/attack/ranged/
