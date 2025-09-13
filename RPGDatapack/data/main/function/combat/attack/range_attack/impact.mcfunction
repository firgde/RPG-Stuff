# this
    tag @s add this
# 演出
    playsound item.shield.block player @a[limit=1] ~ ~ ~ 1 0.5
    playsound entity.player.attack.knockback player @a[limit=1] ~ ~ ~ 1 1
    execute rotated ~ 0 run particle explosion ~ ~1 ~
# ダメージ&ノックバック再現
    tag @e[team=hostile,distance=..1.5,tag=!this] add hurt.indirect
    scoreboard players operation @e[tag=hurt.indirect] damage = @a[limit=1] atk
    #集中の値によってダメージ減衰する
    scoreboard players operation @e[tag=hurt.indirect] damage *= @a[limit=1] dmg_eff
    scoreboard players operation @e[tag=hurt.indirect] damage /= #100 const
    scoreboard players set #kbPowerX buffer 10
    scoreboard players set #kbPowerY buffer 10
    scoreboard players set #kbPowerZ buffer 10
    execute as @e[tag=hurt.indirect] at @s facing entity @a[limit=1] feet rotated ~180 0 run function main:combat/damage/knockback
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @a[limit=1,distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @n[tag=atk_combo.init,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/hammer/init
# リセット
    tag @s remove this
    scoreboard players reset #kbPowerX buffer
    scoreboard players reset #kbPowerY buffer
    scoreboard players reset #kbPowerZ buffer
