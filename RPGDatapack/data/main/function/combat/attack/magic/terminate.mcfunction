# 攻撃判定(パラメータ依存も大アリ)
    execute align xz as @e[team=hostile,dx=0] run damage @s 0.01 main:magic/generic by @a[limit=1]
# 演出
    execute facing entity @a[limit=1] eyes positioned ^ ^ ^1 run function asset:particle/magic_hit
    particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
    particle crit ~ ~ ~ 0.1 0.3 0.1 0.5 25
    playsound block.amethyst_cluster.place hostile @a[limit=1] ~ ~ ~ 1 0.75
    execute if entity @s[tag=magic.fire] run playsound entity.firework_rocket.large_blast hostile @a[limit=1] ~ ~ ~ 0.5 1
    execute if entity @s[tag=magic.wind] run playsound block.grass.break hostile @a[limit=1] ~ ~ ~ 1.5 1.2
    execute if entity @s[tag=magic.thunder] run playsound item.trident.hit hostile @a[limit=1] ~ ~ ~ 0.5 1
    execute if entity @s[tag=magic.fire,tag=magic.combine.fire] run playsound block.gravel.break hostile @a[limit=1] ~ ~ ~ 0.5 0.5
    execute if entity @s[tag=magic.fire,tag=magic.combine.fire] run playsound entity.firework_rocket.large_blast hostile @a[limit=1] ~ ~ ~ 1.5 0.5
# kill
    kill @s
