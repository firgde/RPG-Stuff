# ダメージ
    execute rotated ~ 0 positioned ^ ^ ^0.75 as @e[team=hostile,distance=..1.5] run tag @s add hurt.combo
    scoreboard players operation @e[tag=hurt.combo,distance=..3] damage = @a[limit=1] atk
    tag @e[tag=hurt.combo,distance=..5] add hurt.melee
    execute as @e[tag=hurt.combo,distance=..5] run function main:combat/damage/combo
# 音
    playsound item.shield.block player @s ~ ~ ~ 1 0.5
    playsound entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 1.5
    playsound entity.player.attack.knockback player @s ~ ~ ~ 1 1
# パーティクル
    execute positioned ^ ^ ^1.5 rotated ~ 0 run particle explosion ~ ~-0.5 ~
