
    execute positioned ^ ^ ^0.5 run tag @e[team=hostile,distance=..0.5] add hurt.combo
    execute rotated ~ 0 positioned ^ ^ ^1.5 run tag @e[team=hostile,distance=..1.5] add hurt.combo
    scoreboard players operation @e[tag=hurt.combo,distance=..3] damage = @a[limit=1] atk
    tag @e[tag=hurt.combo,distance=..3] add hurt.melee
    execute as @e[tag=hurt.combo,distance=..3] run function main:combat/damage/combo
