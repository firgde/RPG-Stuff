#攻撃しまーす
    tag @s add attacker
#表示する色
    scoreboard players set $damagecolor buffer 0
#Mob絞り込み
    execute as @e[team=hostile,distance=..50] if data entity @s {HurtTime:10s} store success score @s hasAttacker on attacker if entity @s[type=player]
    tag @e[scores={hasAttacker=1..}] add hurt
    execute as @e[tag=hurt] if entity @p[advancements={main:combat/attack/detect={melee=true}}] run function main:combat/damage/melee
    execute as @e[tag=hurt] if entity @p[advancements={main:combat/attack/detect={projectile=true}}] run function main:combat/attack/ranged/
#リセット
    advancement revoke @s only main:combat/attack/detect
    tag @s remove attacker
    scoreboard players reset @e[scores={hasAttacker=1..}] hasAttacker
