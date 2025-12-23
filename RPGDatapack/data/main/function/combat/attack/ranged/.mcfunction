# Mob絞り込み
    execute as @e[team=hostile,distance=..4] if data entity @s {HurtTime:10s} store success score @s has_attacker on attacker if entity @s[type=player]
    tag @e[scores={has_attacker=1..}] add hurt
    execute as @e[tag=hurt] run function main:combat/damage/deal/ranged
# リセット
    scoreboard players reset @s usedBow
    scoreboard players reset @e[scores={has_attacker=1..}] has_attacker
