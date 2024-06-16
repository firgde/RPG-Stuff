# 演出
    playsound entity.player.attack.sweep player @p ~ ~ ~ 1 1.5
# ノックバック弱体化
    scoreboard players operation @s damage = @p atk
    scoreboard players set #kbPowerX buffer 5
    scoreboard players set #kbPowerY buffer 10
    scoreboard players set #kbPowerZ buffer 5
    execute at @p run function main:combat/damage/knockback
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @p[distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @e[tag=atk_combo.init,limit=1,sort=nearest,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/dagger/init
# リセット
    scoreboard players reset #kbPowerX buffer
    scoreboard players reset #kbPowerY buffer
    scoreboard players reset #kbPowerZ buffer
