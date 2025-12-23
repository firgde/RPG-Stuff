# ふつーの魔術攻撃
# Mob絞り込み
    execute as @e[team=hostile,distance=..50] if data entity @s {HurtTime:10s} store success score @s has_attacker on attacker if entity @s[type=player]
    tag @e[scores={has_attacker=1..}] add hurt
    execute as @e[tag=hurt] at @s run function main:combat/damage/deal/magic
# リセット
    scoreboard players reset @e[scores={has_attacker=1..}] has_attacker
    advancement revoke @s only main:combat/attack/magic_hit
