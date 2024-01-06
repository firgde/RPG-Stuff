# this
    tag @s add this
# 演出
    playsound entity.player.attack.sweep player @p ~ ~ ~ 1 1
    execute rotated ~ 0 run particle sweep_attack ~ ~1 ~
# ダメージ&ノックバック再現
    execute facing entity @p eyes positioned ^1 ^ ^ run tag @e[team=hostile,distance=..0.7,tag=!this] add hurt.indirect
    execute facing entity @p eyes positioned ^-1 ^ ^ run tag @e[team=hostile,distance=..0.7,tag=!this] add hurt.indirect
    scoreboard players operation @e[tag=hurt.indirect] damage = @p atk
    #集中の値によってダメージ減衰する
    scoreboard players operation @e[tag=hurt.indirect] damage *= @p dmg_eff
    scoreboard players operation @e[tag=hurt.indirect] damage /= $100 const
    scoreboard players set $kbPowerX buffer 10
    scoreboard players set $kbPowerY buffer 10
    scoreboard players set $kbPowerZ buffer 10
    execute as @e[tag=hurt.indirect] at @p run function main:combat/damage/knockback
    tag @e[tag=hurt.indirect] add hurt.melee
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @p[distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @e[tag=atk_combo.init,limit=1,sort=nearest,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/sword/init
# リセット
    tag @s remove this
    scoreboard players reset $kbPowerX buffer
    scoreboard players reset $kbPowerY buffer
    scoreboard players reset $kbPowerZ buffer
