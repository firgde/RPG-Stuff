    execute if entity @a[tag=hurt,advancements={main:combat/damage_taken={1.0=true}}] if entity @s[distance=..50,tag=1.0] run function main:combat/damage/take/specify/0
    execute if entity @a[tag=hurt,advancements={main:combat/damage_taken={1.1=true}}] if entity @s[distance=..50,tag=1.1] run function main:combat/damage/take/specify/0
