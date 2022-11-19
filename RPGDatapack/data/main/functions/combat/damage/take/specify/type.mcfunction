#ダメージの種類で分岐
    execute if entity @a[tag=hurt,advancements={main:combat/damage_taken={melee=true}}] run scoreboard players operation @a[tag=hurt] damage = @s atk
    execute if entity @a[tag=hurt,advancements={main:combat/damage_taken={projectile=true}}] run scoreboard players operation @a[tag=hurt] damage = @s dex
