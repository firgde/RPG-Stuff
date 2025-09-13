# 演出
    playsound entity.player.attack.sweep player @a[limit=1] ~ ~ ~ 1 1.5
# ノックバック弱体化
    scoreboard players operation @s damage = @a[limit=1] atk
    scoreboard players set #kbPowerX buffer 5
    scoreboard players set #kbPowerY buffer 10
    scoreboard players set #kbPowerZ buffer 5
    execute at @a[limit=1] run function main:combat/damage/knockback
# プレイヤーが近くにいるなら連撃判定のinteraction召喚
    execute at @s if entity @a[limit=1,distance=..3] unless data entity @s Passengers[{Tags:["atk_combo"]}] run summon interaction ~ ~ ~ {Tags:["atk_combo","atk_combo.init"]}
    execute at @s run ride @n[tag=atk_combo.init,distance=..1] mount @s
    execute on passengers run function main:combat/attack/combo/dagger/init
# リセット
    scoreboard players reset #kbPowerX buffer
    scoreboard players reset #kbPowerY buffer
    scoreboard players reset #kbPowerZ buffer
