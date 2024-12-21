# 自分の座標にブロックがない⇒壊された
    execute if block ~ ~ ~ #air if entity @s[tag=!realm_crystal.destroyed] run function main:explore/world/realm_crystal/break with entity @s item.components."minecraft:custom_data"
