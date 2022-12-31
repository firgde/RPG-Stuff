#演出
    playsound entity.player.attack.sweep master @p[tag=attacker] ~ ~ ~ 1 1
    execute rotated ~ 0 run particle sweep_attack ~ ~1 ~
#ダメージ&ノックバック再現
    execute facing entity @p[tag=attacker] eyes positioned ^1 ^ ^ run tag @e[team=hostile,distance=..0.7,tag=!hurt] add hurt_skill
    execute facing entity @p[tag=attacker] eyes positioned ^-1 ^ ^ run tag @e[team=hostile,distance=..0.7,tag=!hurt] add hurt_skill
    scoreboard players operation @e[tag=hurt_skill] damage = @p[tag=attacker] atkBuffer
    #集中の値によってダメージ減衰する
    scoreboard players operation @e[tag=hurt_skill] damage *= @p[tag=attacker] dmg_eff
    scoreboard players operation @e[tag=hurt_skill] damage /= #100 const
    scoreboard players set #kbpowerx buffer 10
    scoreboard players set #kbpowery buffer 10
    scoreboard players set #kbpowerz buffer 10
    execute as @e[tag=hurt_skill] at @p[tag=attacker] run function main:combat/damage/knockback
    execute as @e[tag=hurt_skill] run function main:combat/damage/deal
