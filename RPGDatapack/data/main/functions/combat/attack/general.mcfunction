#攻撃しまーす
    tag @s add attacker
#Mob絞り込み(断じてパクッていない)
    execute as @e[team=hostile] run function main:combat/attack/specify/9
#リセット
    advancement revoke @s only main:combat/attack/dedext
    tag @s remove attacker
