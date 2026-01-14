# 演出
    playsound entity.player.attack.sweep player @a[limit=1] ~ ~ ~ 1 1.5
# ノックバック弱体化
    scoreboard players operation @s damage = @a[limit=1] atk
    scoreboard players set #kbPowerX buffer 5
    scoreboard players set #kbPowerY buffer 10
    scoreboard players set #kbPowerZ buffer 5
    execute at @a[limit=1] run function main:combat/damage/knockback
# リセット
    scoreboard players reset #kbPowerX buffer
    scoreboard players reset #kbPowerY buffer
    scoreboard players reset #kbPowerZ buffer
