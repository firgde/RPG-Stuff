    execute if entity @a[tag=hurt,advancements={main:combat/damage_taken={0.0=true}}] if entity @s[distance=..50,tag=0.0] run function main:combat/damage/take/specify/type
    execute if entity @a[tag=hurt,advancements={main:combat/damage_taken={0.1=true}}] if entity @s[distance=..50,tag=0.1] run function main:combat/damage/take/specify/type
