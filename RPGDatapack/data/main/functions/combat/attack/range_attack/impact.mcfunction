#演出
    playsound item.shield.block master @a[tag=attacker] ~ ~ ~ 1 0.5
    execute rotated ~ 0 run particle explosion ~ ~1 ~
#ダメージ&ノックバック再現
    tag @e[team=hostile,distance=..1.5,tag=!hurt] add hurt_skill
    scoreboard players operation @e[tag=hurt_skill] damage = @a[tag=attacker] atkBuffer
    #集中の値によってダメージ減衰する
    scoreboard players operation @e[tag=hurt_skill] damage *= @p[tag=attacker] dmg_eff
    scoreboard players operation @e[tag=hurt_skill] damage /= $100 const
    scoreboard players set $kbpowerx buffer 10
    scoreboard players set $kbpowery buffer 10
    scoreboard players set $kbpowerz buffer 10
    execute as @e[tag=hurt_skill] at @s facing entity @a[tag=attacker] feet rotated ~180 0 run function main:combat/damage/knockback
    execute as @e[tag=hurt_skill] run function main:combat/damage/deal
#リセット
    scoreboard players reset $kbpowerx buffer
    scoreboard players reset $kbpowery buffer
    scoreboard players reset $kbpowerz buffer
