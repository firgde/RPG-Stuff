#近くにMobがいたらダメージ
    tag @e[team=hostile,dx=1] add hurt_skill
#再帰
    execute if entity @p[tag=attacker,distance=..3] positioned ^ ^ ^0.25 run function main:combat/skills/main/stab_rec
