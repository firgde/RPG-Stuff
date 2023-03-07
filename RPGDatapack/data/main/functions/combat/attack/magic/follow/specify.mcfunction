#視線検知
    execute positioned ^ ^ ^10 as @e[team=hostile,distance=..10] run tag @s add target
#±15度に絞る
    execute positioned ^ ^ ^10 as @e[tag=target,distance=..10] positioned ^ ^ ^-10 rotated ~15 ~ positioned ^1000.1 ^ ^ facing entity @e[tag=magic,limit=1] eyes positioned ^ ^ ^1000.1 positioned ~-0.5 ~-0.5 ~-0.5 positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove target
    execute positioned ^ ^ ^10 as @e[tag=target,distance=..10] positioned ^ ^ ^-10 rotated ~-15 ~ positioned ^1000.1 ^ ^ facing entity @e[tag=magic,limit=1] eyes positioned ^ ^ ^1000.1 positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove target
    execute positioned ^ ^ ^10 as @e[tag=target,distance=..10] positioned ^ ^ ^-10 rotated ~ ~15 positioned ^1000.1 ^ ^ facing entity @e[tag=magic,limit=1] eyes positioned ^ ^ ^1000.1 positioned ~-0.5 ~-0.5 ~-0.5 positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove target
    execute positioned ^ ^ ^10 as @e[tag=target,distance=..10] positioned ^ ^ ^-10 rotated ~ ~-15 positioned ^1000.1 ^ ^ facing entity @e[tag=magic,limit=1] eyes positioned ^ ^ ^1000.1 positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1.6 ~ unless entity @s[distance=..1000] run tag @s remove target
#一体に絞る
    tag @e[tag=target,distance=..20,limit=1,sort=nearest] add followTarget
    tag @e[tag=target,distance=..20] remove target
