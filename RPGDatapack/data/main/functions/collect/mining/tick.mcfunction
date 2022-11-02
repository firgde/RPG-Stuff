#足元にブロック、ありますか？
    execute as @e[tag=mining_spot] at @s if block ~ ~ ~ air if data entity @s {PortalCooldown:0} run function main:collect/mining/regenerate
