#どかーん
    #パーティクル
    particle lava ^ ^ ^2 0.01 0.01 0.01 1 25 normal
    #弾となるmarker
    execute at @s run summon marker ~ ~1 ~ {Tags:["2000_boss.fire_bullet"]}
    #再帰function
    execute as @e[tag=2000_boss.fire_bullet] at @s rotated as @e[tag=boss,tag=this] run function mobs:ai/2000_boss/fire_attack/rec
#thisはもういらない
    tag @s remove this
